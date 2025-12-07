BOOL static __AssetLoadRequest.ResourceSharingSchedulingRequirement.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance __AssetLoadRequest.ResourceSharingSchedulingRequirement(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t __AssetLoadRequest.__allocating_init(serviceLocator:)(uint64_t a1)
{
  swift_beginAccess();
  outlined init with copy of __REAssetService(a1 + 120, v7);
  v2 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v3 + 32))(v2, v3);
  AssetRequest = REAssetManagerCreateAssetRequest();

  v5 = swift_allocObject();
  *(v5 + 16) = AssetRequest;
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t __AssetLoadRequest.__allocating_init(assetService:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = specialized __AssetLoadRequest.__allocating_init(assetService:)(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t __AssetLoadRequest.__allocating_init(assetService:shouldWaitForPeers:)(void *a1, char a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 32))(v4, v5);
  AssetRequest = REAssetManagerCreateAssetRequest();
  v7 = swift_allocObject();
  *(v7 + 16) = AssetRequest;
  if (a2)
  {
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t __AssetLoadRequest.error.getter()
{
  result = REAssetLoadRequestCopyError();
  if (result)
  {
    v1 = result;
    type metadata accessor for CFErrorRef(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, 255, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
    result = swift_allocError();
    *v2 = v1;
  }

  return result;
}

void __AssetLoadRequest.setCompletionHandler(_:)(const void *a1)
{
  v1 = _Block_copy(a1);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v4[4] = _sSbIeyBy_SbIegy_TRTA_0;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v4[3] = &block_descriptor_8;
  v3 = _Block_copy(v4);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v3);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t __AssetLoadRequest.Statistics.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

double closure #1 in __AssetLoadRequest.Statistics.forEach(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, double))
{
  REAssetTypeStatsGetTypeName();
  v3 = String.init(cString:)();
  v5 = v4;
  REAssetTypeStatsGetCumulativeLoadTime();
  v7 = v6;
  CumulativeFileSize = REAssetTypeStatsGetCumulativeFileSize();
  a2(v3, v5, CumulativeFileSize, v7);

  return result;
}

uint64_t specialized __AssetLoadRequest.__allocating_init(assetService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 32))(v9, v7);
  (*(a4 + 32))(a3, a4);
  AssetRequest = REAssetManagerCreateAssetRequest();
  v11 = swift_allocObject();
  *(v11 + 16) = AssetRequest;
  (*(v6 + 8))(v9, a3);
  return v11;
}

uint64_t specialized __AssetLoadRequest.__allocating_init(assetService:resourceSharingScheduling:)(void *a1, unsigned __int8 *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 32))(v3, v4);
  AssetRequest = REAssetManagerCreateAssetRequest();
  type metadata accessor for __AssetLoadRequest();
  v6 = swift_allocObject();
  *(v6 + 16) = AssetRequest;
  if (!REAssetLoadRequestSetLoadAndWaitForResourceSharingClients())
  {
    type metadata accessor for REError(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type REError and conformance REError, 255, type metadata accessor for REError, protocol conformance descriptor for REError);
    swift_allocError();
    v8 = v11;
    _StringGuts.grow(_:)(25);
    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E22A0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](2105390, 0xE300000000000000);
    MEMORY[0x1C68F3410](0, 0xE000000000000000);

    v9 = "scheduling settings ";

    v10 = 0xD000000000000045;
    goto LABEL_5;
  }

  if ((REAssetLoadRequestSetShouldBlockECSSendsUntilCompleted() & 1) == 0)
  {
    type metadata accessor for REError(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type REError and conformance REError, 255, type metadata accessor for REError, protocol conformance descriptor for REError);
    swift_allocError();
    v8 = v7;
    _StringGuts.grow(_:)(25);
    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E22A0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](2105390, 0xE300000000000000);
    MEMORY[0x1C68F3410](0, 0xE000000000000000);

    v9 = "sourceSharingClients)";

    v10 = 0xD000000000000042;
LABEL_5:
    MEMORY[0x1C68F3410](v10, v9 | 0x8000000000000000);

    *v8 = 0xD00000000000002DLL;
    v8[1] = 0x80000001C18E2270;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

unint64_t lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError()
{
  result = lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError;
  if (!lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RealityFileError, &type metadata for __RealityFileError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError);
  }

  return result;
}

uint64_t outlined destroy of __REAssetBundle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized __REAssetService.assetRef(named:in:)(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v30 = 0;
  URL._bridgeToObjectiveC()(v31);
  v5 = v4;
  v6 = RERealityFileCreateByOpeningFileAtURL();

  if (v6)
  {
    v7 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v7 + 120, &v26);
    v8 = v28;
    v9 = v29;
    __swift_project_boxed_opaque_existential_1(&v26, v28);
    v10 = *(v9 + 32);

    v10(v8, v9);
    String.utf8CString.getter();
    AssetDescriptorFromLabel = RERealityFileCreateAssetDescriptorFromLabel();

    __swift_destroy_boxed_opaque_existential_1(&v26);
    if (AssetDescriptorFromLabel)
    {
      REAssetRegistrationOptionsCreate();
      REAssetRegistrationOptionsSetIsMutable();
      outlined init with copy of __REAssetService(v7 + 120, &v26);
      v12 = v28;
      v13 = v29;
      __swift_project_boxed_opaque_existential_1(&v26, v28);
      (*(v13 + 32))(v12, v13);
      v14 = REAssetHandleCreateFromAssetRegistrationOptions();
      __swift_destroy_boxed_opaque_existential_1(&v26);
      type metadata accessor for __REAsset();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      RERelease();
      RERelease();

      RERelease();
    }

    else
    {
      v16 = v30;
      if (v30)
      {
        type metadata accessor for CFErrorRef(0);
        v15 = v17;
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, 255, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
        swift_allocError();
        *v18 = v16;
      }

      else
      {
        v26 = a1;
        v27 = a2;

        MEMORY[0x1C68F3410](544106784, 0xE400000000000000);
        type metadata accessor for URL();
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1C68F3410](v22);

        v23 = v26;
        v15 = v27;
        lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
        swift_allocError();
        *v24 = v23;
        *(v24 + 8) = v15;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        *(v24 + 32) = 2;
      }

      swift_willThrow();

      RERelease();
    }
  }

  else
  {
    type metadata accessor for URL();
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v20;
    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    swift_allocError();
    *v21 = v19;
    *(v21 + 8) = v15;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 2;
    swift_willThrow();
  }

  return v15;
}

uint64_t specialized __AssetLoadRequest.__allocating_init(assetService:shouldLoadOnPeers:shouldWaitForPeers:)(void *a1, char a2, char a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 32))(v6, v7);
  AssetRequest = REAssetManagerCreateAssetRequest();
  type metadata accessor for __AssetLoadRequest();
  v9 = swift_allocObject();
  *(v9 + 16) = AssetRequest;
  if ((REAssetLoadRequestSetLoadAndWaitForResourceSharingClients() & 1) == 0)
  {
    type metadata accessor for REError(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type REError and conformance REError, 255, type metadata accessor for REError, protocol conformance descriptor for REError);
    swift_allocError();
    v11 = v10;
    _StringGuts.grow(_:)(92);
    MEMORY[0x1C68F3410](0xD00000000000003FLL, 0x80000001C18E2360);
    if (a2)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (a2)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    MEMORY[0x1C68F3410](v12, v13);

    MEMORY[0x1C68F3410](0xD000000000000018, 0x80000001C18E23A0);
    if (a3)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (a3)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x1C68F3410](v14, v15);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type __REAssetIdentifier and conformance __REAssetIdentifier()
{
  result = lazy protocol witness table cache variable for type __REAssetIdentifier and conformance __REAssetIdentifier;
  if (!lazy protocol witness table cache variable for type __REAssetIdentifier and conformance __REAssetIdentifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetIdentifier, &type metadata for __REAssetIdentifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetIdentifier and conformance __REAssetIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetIdentifier and conformance __REAssetIdentifier;
  if (!lazy protocol witness table cache variable for type __REAssetIdentifier and conformance __REAssetIdentifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetIdentifier, &type metadata for __REAssetIdentifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetIdentifier and conformance __REAssetIdentifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __AssetLoadRequest.ResourceSharingSchedulingRequirement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
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

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for __AssetLoadRequest.ResourceSharingSchedulingRequirement(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
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

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for __AssetLoadRequest.ResourceSharingSchedulingRequirement(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for __AssetLoadRequest.ResourceSharingSchedulingRequirement(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __REAsset.LoadError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for __REAsset.LoadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t type metadata accessor for REError(uint64_t a1)
{
  result = type metadata singleton initialization cache for REError;
  if (!type metadata singleton initialization cache for REError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

unint64_t lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError()
{
  result = lazy protocol witness table cache variable for type __REAsset.LoadError and conformance __REAsset.LoadError;
  if (!lazy protocol witness table cache variable for type __REAsset.LoadError and conformance __REAsset.LoadError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAsset.LoadError, &type metadata for __REAsset.LoadError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAsset.LoadError and conformance __REAsset.LoadError);
  }

  return result;
}

uint64_t outlined init with copy of __REAssetBundle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of __REAssetBundle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for REError(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void specialized Collection<>.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (REEntityGetComponentCount() < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      if (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v8))
      {
        break;
      }

      ++v8;
    }

    while (v8 < REEntityGetComponentCount());
  }

  ComponentCount = REEntityGetComponentCount();
  if (ComponentCount < v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v8 > a1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (ComponentCount < a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  a4[1] = a2;
  a4[2] = a3;
  *a4 = a1;
}

uint64_t Entity.ComponentSet.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  v3 = specialized static Entity.ComponentSet.Iterator.buildSnapshot(_:)(*v1);

  *a1 = v3;
  a1[1] = v3;
  a1[2] = 0;
}

uint64_t Entity.ComponentSet.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v2 + 16);
  if (v3 == v4)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else if (v3 >= v4)
  {
    __break(1u);
  }

  else
  {
    result = outlined init with copy of __REAssetService(v2 + 40 * v3 + 32, a1);
    *(v1 + 16) = v3 + 1;
  }

  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance Entity.ComponentSet.Iterator@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v2 + 16);
  if (v3 == v4)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else if (v3 >= v4)
  {
    __break(1u);
  }

  else
  {
    result = outlined init with copy of __REAssetService(v2 + 40 * v3 + 32, a1);
    *(v1 + 16) = v3 + 1;
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance Entity.ComponentSet@<X0>(uint64_t *a1@<X8>)
{
  v3 = specialized static Entity.ComponentSet.Iterator.buildSnapshot(_:)(*v1);

  *a1 = v3;
  a1[1] = v3;
  a1[2] = 0;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Entity.ComponentSet()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t Entity.ComponentSet.startIndex.getter@<X0>(uint64_t *a1@<X8>)
{
  result = REEntityGetComponentCount();
  if (result < 1)
  {
    i = 0;
  }

  else
  {
    for (i = 0; i < result; ++i)
    {
      result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(i);
      if (result)
      {
        break;
      }

      result = REEntityGetComponentCount();
    }
  }

  *a1 = i;
  return result;
}

uint64_t Entity.ComponentSet.index(after:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    while (1)
    {
      result = REEntityGetComponentCount();
      if (v3 >= result)
      {
        break;
      }

      result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v3);
      if (result)
      {
        break;
      }

      ++v3;
    }

    *a2 = v3;
  }

  return result;
}

uint64_t Entity.ComponentSet.endIndex.getter@<X0>(uint64_t *a1@<X8>)
{
  result = REEntityGetComponentCount();
  *a1 = result;
  return result;
}

BOOL Entity.ComponentSet.isEmpty.getter()
{
  if (REEntityGetComponentCount() < 1)
  {
    v0 = 0;
  }

  else
  {
    v0 = 0;
    do
    {
      if (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v0))
      {
        break;
      }

      ++v0;
    }

    while (v0 < REEntityGetComponentCount());
  }

  return v0 == REEntityGetComponentCount();
}

uint64_t Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(uint64_t a1)
{
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v2 = v1;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 80, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  swift_dynamicCast();
  REEntityGetComponentAtIndex();
  Class = REComponentGetClass();
  swift_beginAccess();
  v4 = *(v18 + 16);
  swift_beginAccess();
  v5 = *(v4 + 24);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 80 * v6 + 48);

    v9 = v8 == 2;
  }

  else
  {
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = static SceneManager.handlesToCustomComponentTypes;
    if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 16 * v11);
      swift_endAccess();
      v14 = *(v18 + 16);
      swift_beginAccess();
      if (*(*(v14 + 16) + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v13);
        v16 = v15;

        v9 = v16 ^ 1;
      }

      else
      {

        v9 = 1;
      }
    }

    else
    {
      swift_endAccess();

      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t Entity.ComponentSet.formIndex(after:)(uint64_t result)
{
  v1 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    while (1)
    {
      result = REEntityGetComponentCount();
      if (v1 >= result)
      {
        break;
      }

      result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v1);
      if (result)
      {
        break;
      }

      ++v1;
    }

    *v2 = v1;
  }

  return result;
}

uint64_t Entity.ComponentSet.distance(from:to:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*a2 < *result)
  {
    v4 = 0;
    while (1)
    {
      v5 = __OFSUB__(v4--, 1);
      if (v5)
      {
        break;
      }

      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_20;
      }

      while (1)
      {
        result = REEntityGetComponentCount();
        if (v3 >= result)
        {
          break;
        }

        result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v3);
        if (result)
        {
          break;
        }

        ++v3;
      }

      if (v3 == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (v2 != v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = __OFADD__(v4++, 1);
      if (v5)
      {
        goto LABEL_21;
      }

      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        goto LABEL_22;
      }

      while (1)
      {
        result = REEntityGetComponentCount();
        if (v2 >= result)
        {
          break;
        }

        result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v2);
        if (result)
        {
          break;
        }

        ++v2;
      }

      if (v2 == v3)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t Entity.ComponentSet.subscript.getter@<X0>(void *a2@<X8>)
{
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v4 = v3;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 80, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  swift_dynamicCast();
  ComponentAtIndex = REEntityGetComponentAtIndex();
  Class = REComponentGetClass();
  swift_beginAccess();
  v7 = *(v27 + 16);
  swift_beginAccess();
  v8 = *(v7 + 24);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v10 & 1) == 0))
  {
    if (one-time initialization token for handlesToCustomComponentTypes != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = static SceneManager.handlesToCustomComponentTypes;
    if (*(static SceneManager.handlesToCustomComponentTypes + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v17 & 1) != 0))
    {
      v25 = *(*(v15 + 56) + 16 * v16);
      swift_endAccess();
      Object = RECustomComponentGetObject();
      if (Object)
      {
        v19 = Object;
        v20 = *(v27 + 16);
        swift_beginAccess();
        v21 = v25;
        if (!*(*(v20 + 16) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v25), v21 = v25, (v22 & 1) == 0))
        {
          v23 = *(*(&v21 + 1) + 32);
          *(a2 + 3) = v21;
          __swift_allocate_boxed_opaque_existential_1(a2);
          v23(v19);
        }
      }
    }

    else
    {
      swift_endAccess();
    }

    while (1)
    {
LABEL_15:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v11 = *(v8 + 56) + 80 * v9;
  if (*(v11 + 48) != 2)
  {
    goto LABEL_15;
  }

  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v26[0] = ComponentAtIndex;
  v14 = *(v13 + 64);
  a2[3] = v12;
  a2[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(a2);
  v14(v26, v12, v13);
}

void *Entity.ComponentSet.Indices.index(after:)@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {

    while (v3 < REEntityGetComponentCount() && (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v3) & 1) == 0)
    {
      ++v3;
    }

    *a2 = v3;
  }

  return result;
}

uint64_t Entity.ComponentSet.Indices.formIndex(after:)(uint64_t result)
{
  v1 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    while (1)
    {
      result = REEntityGetComponentCount();
      if (v1 >= result)
      {
        break;
      }

      result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v1);
      if (result)
      {
        break;
      }

      ++v1;
    }

    *v2 = v1;
  }

  return result;
}

uint64_t Entity.ComponentSet.Indices.distance(from:to:)(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  v8[0] = *a1;
  v8[1] = v4;
  v7 = v3;

  v5 = Entity.ComponentSet.distance(from:to:)(v8, &v7);

  return v5;
}

void Entity.ComponentSet.Indices.subscript.getter(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 < v2[1] || v2[2] < v4)
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2;
    a2[1] = v3;
    a2[2] = v4;
  }
}

double Entity.ComponentSet.Indices.indices.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);

  return result;
}

void protocol witness for Collection.subscript.getter in conformance Entity.ComponentSet.Indices(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 < v2[1] || v2[2] < v4)
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2;
    a2[1] = v3;
    a2[2] = v4;
  }
}

double protocol witness for Collection.indices.getter in conformance Entity.ComponentSet.Indices@<D0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);

  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance Entity.ComponentSet.Indices(void *a1)
{
  v3 = *v1;
  v5[0] = *a1;
  v5[1] = v3;
  result = Entity.ComponentSet.index(after:)(v5, &v6);
  *a1 = v6;
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance Entity.ComponentSet.Indices@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = result.n128_u64[0];
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance Entity.ComponentSet.Indices()
{
  v1 = *v0;
  v2 = v0[2];
  v6[0] = v0[1];
  v6[1] = v1;
  v5 = v2;

  v3 = Entity.ComponentSet.distance(from:to:)(v6, &v5);

  return v3;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance Entity.ComponentSet.Indices()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v0[1], v0[2]);

  return v1;
}

uint64_t Entity.ComponentSet.indices.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;

  if (REEntityGetComponentCount() < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      if (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 < REEntityGetComponentCount());
  }

  result = REEntityGetComponentCount();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = result;
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance Entity.ComponentSet@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v4[0] = -1;
  v4[1] = v2;
  return Entity.ComponentSet.index(after:)(v4, a1);
}

uint64_t protocol witness for Collection.endIndex.getter in conformance Entity.ComponentSet@<X0>(uint64_t *a1@<X8>)
{
  result = REEntityGetComponentCount();
  *a1 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance Entity.ComponentSet(void *a1, uint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  Entity.ComponentSet.subscript.getter(v3);
  return protocol witness for Collection.subscript.read in conformance PhysicsJoints;
}

uint64_t Entity.ComponentSet.Indices.index(before:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6[0] = *a1;
  v6[1] = v4;

  Entity.ComponentSet.index(before:)(v6, a2);
}

uint64_t Entity.ComponentSet.index(before:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    while (1)
    {
      result = REEntityGetComponentCount();
      if (result < 1)
      {
        i = 0;
      }

      else
      {
        for (i = 0; i < result; ++i)
        {
          result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(i);
          if (result)
          {
            break;
          }

          result = REEntityGetComponentCount();
        }
      }

      if (i >= v3)
      {
        break;
      }

      result = Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)(v3);
      if (result)
      {
        break;
      }

      --v3;
    }

    *a2 = v3;
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance Entity.ComponentSet.Indices(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, __n128))
{
  v6 = *v4;
  v8[0] = *a1;
  v8[1] = v6;

  (a4)(v8);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance Entity.ComponentSet.Indices(uint64_t *a1)
{
  v3 = *v1;
  v5[0] = *a1;
  v5[1] = v3;

  Entity.ComponentSet.index(before:)(v5, a1);
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance Entity.ComponentSet.Indices(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  v8[0] = *a1;
  v8[1] = v4;
  v7 = v3;

  v5 = Entity.ComponentSet.distance(from:to:)(v8, &v7);

  return v5;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance Entity.ComponentSet(uint64_t *a1)
{
  v2 = *v1;
  v4[0] = *a1;
  v4[1] = v2;
  return Entity.ComponentSet.index(before:)(v4, a1);
}

void *specialized static Entity.ComponentSet.Iterator.buildSnapshot(_:)(uint64_t a1)
{
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v3 = v2;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 80, v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  swift_dynamicCast();
  v4 = v51[3];
  ComponentCount = REEntityGetComponentCount();
  if (ComponentCount > 0)
  {
    v6 = ComponentCount;
    swift_beginAccess();
    v7 = 0;
    v50 = MEMORY[0x1E69E7CC0];
    v47[1] = a1;
    v48 = v6;
    while (1)
    {
      ComponentAtIndex = REEntityGetComponentAtIndex();
      Class = REComponentGetClass();
      v10 = *(v4 + 16);
      swift_beginAccess();
      v11 = *(v10 + 24);
      if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(Class), (v13 & 1) != 0))
      {
        v14 = *(v11 + 56) + 80 * v12;
        if (*(v14 + 48) == 2)
        {
          v49 = v47;
          v15 = *(v14 + 16);
          v16 = *(v14 + 24);
          v17 = *(v15 - 8);
          v18 = *(v17 + 64);
          v19 = MEMORY[0x1EEE9AC00](v12);
          v20 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
          v51[0] = ComponentAtIndex;
          (*(v16 + 64))(v51, v15, v16, v19);
          v21 = v50;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
            v21 = isUniquelyReferenced_nonNull_native;
            v52 = isUniquelyReferenced_nonNull_native;
          }

          v24 = v21[2];
          v23 = v21[3];
          if (v24 >= v23 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
            v50 = isUniquelyReferenced_nonNull_native;
            v52 = isUniquelyReferenced_nonNull_native;
          }

          else
          {
            v50 = v21;
          }

          v25 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
          v26 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v17 + 16))(v26, v20, v15, v25);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v24, v26, &v52, v15, v16);
          (*(v17 + 8))(v20, v15);
LABEL_25:
          v6 = v48;
        }
      }

      else
      {
        if (one-time initialization token for handlesToCustomComponentTypes != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v27 = static SceneManager.handlesToCustomComponentTypes;
        if (*(static SceneManager.handlesToCustomComponentTypes + 16))
        {
          v28 = specialized __RawDictionaryStorage.find<A>(_:)(Class);
          if (v29)
          {
            v30 = (*(v27 + 56) + 16 * v28);
            v31 = *v30;
            v32 = v30[1];
            swift_endAccess();
            Object = RECustomComponentGetObject();
            if (!Object)
            {
              goto LABEL_4;
            }

            v34 = Object;
            v35 = *(v4 + 16);
            v36 = swift_beginAccess();
            if (*(*(v35 + 16) + 16))
            {
              v36 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
              if (v37)
              {
                goto LABEL_4;
              }
            }

            v49 = v47;
            v38 = *(v31 - 8);
            v39 = *(v38 + 64);
            v40 = MEMORY[0x1EEE9AC00](v36);
            (*(v32 + 32))(v34, v31, v32, v40);
            v41 = v50;
            v42 = swift_isUniquelyReferenced_nonNull_native();
            v52 = v41;
            if ((v42 & 1) == 0)
            {
              v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
              v50 = v42;
              v52 = v42;
            }

            v44 = v50[2];
            v43 = v50[3];
            if (v44 >= v43 >> 1)
            {
              v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v50);
              v50 = v42;
              v52 = v42;
            }

            v45 = MEMORY[0x1EEE9AC00](v42);
            (*(v38 + 16))(v47 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v47 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v45);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v44, v47 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), &v52, v31, v32);
            (*(v38 + 8))(v47 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
            goto LABEL_25;
          }
        }

        swift_endAccess();
      }

LABEL_4:
      if (v6 == ++v7)
      {

        return v50;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t lazy protocol witness table accessor for type Entity.ComponentSet.Iterator and conformance Entity.ComponentSet.Iterator()
{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet.Iterator and conformance Entity.ComponentSet.Iterator;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet.Iterator and conformance Entity.ComponentSet.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ComponentSet.Iterator, &type metadata for Entity.ComponentSet.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet.Iterator and conformance Entity.ComponentSet.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index()
{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ComponentSet.Index, &type metadata for Entity.ComponentSet.Index, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ComponentSet.Index, &type metadata for Entity.ComponentSet.Index, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet.Index and conformance Entity.ComponentSet.Index);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices()
{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ComponentSet.Indices, &type metadata for Entity.ComponentSet.Indices, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ComponentSet.Indices, &type metadata for Entity.ComponentSet.Indices, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ComponentSet.Indices, &type metadata for Entity.ComponentSet.Indices, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet.Indices and conformance Entity.ComponentSet.Indices);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.ComponentSet and conformance Entity.ComponentSet()
{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ComponentSet, &type metadata for Entity.ComponentSet, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ComponentSet, &type metadata for Entity.ComponentSet, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet;
  if (!lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ComponentSet, &type metadata for Entity.ComponentSet, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ComponentSet and conformance Entity.ComponentSet);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<Entity.ComponentSet> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<Entity.ComponentSet> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Entity.ComponentSet> and conformance <> Slice<A>)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy10RealityKit6EntityC12ComponentSetVGMd, &_ss5SliceVy10RealityKit6EntityC12ComponentSetVGMR);
    v4[0] = lazy protocol witness table accessor for type Entity.ComponentSet and conformance Entity.ComponentSet();
    result = swift_getWitnessTable(MEMORY[0x1E69E74D8], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Entity.ComponentSet> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Entity.ComponentSet.Iterator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for Entity.ComponentSet.Iterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *specialized static EmphasizeAnimations.createEmphasizeSpinAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 148, 0, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 27, 0, MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 97, 0, MEMORY[0x1E69E7CC0]);
  }

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v1, &v3);

  return v3;
}

uint64_t HasSynchronization.synchronization.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = (*(*v1 + 112))(v6);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA015SynchronizationD0V_TtB5(v7, 0, *v4);
  outlined destroy of BodyTrackingComponent?(v7, &_s10RealityKit24SynchronizationComponentVSgMd, &_s10RealityKit24SynchronizationComponentVSgMR);
  return v3(v6, 0);
}

uint64_t HasSynchronization.synchronization.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v4);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA015SynchronizationD0V_Tt0B5(a1);
}

uint64_t key path setter for HasSynchronization.synchronization : <A>A(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6[0] = *a1;
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  outlined copy of SynchronizationComponent?(v6[0], v1, v2, v3, v4);
  return HasSynchronization.synchronization.setter(v6);
}

void (*HasSynchronization.synchronization.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  *a1 = v7;
  v7[6] = a3;
  v7[7] = v3;
  v7[5] = a2;
  HasSynchronization.synchronization.getter(v7);
  return HasSynchronization.synchronization.modify;
}

void HasSynchronization.synchronization.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v8;
  if (a2)
  {
    outlined copy of SynchronizationComponent?(v4, v5, v6, v7, v8);
    HasSynchronization.synchronization.setter(v9);
    outlined consume of SynchronizationComponent?(*v3, v3[1], v3[2], v3[3], v3[4]);
  }

  else
  {
    HasSynchronization.synchronization.setter(v9);
  }

  free(v3);
}

uint64_t outlined copy of SynchronizationComponent?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 != 2)
  {
    return outlined copy of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(a3, a4, a5);
  }

  return result;
}

uint64_t outlined consume of SynchronizationComponent?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 != 2)
  {
    return outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(a3, a4, a5);
  }

  return result;
}

uint64_t HasSynchronization.isOwner.getter()
{
  HasSynchronization.synchronization.getter(&v2);
  v0 = (v5 == 2) | v3;
  outlined consume of SynchronizationComponent?(v2, v3, v4, v5, v6);
  return v0 & 1;
}

uint64_t HasSynchronization.requestOwnership(timeout:_:)(uint64_t (*a1)(__int128 *), uint64_t a2, double a3)
{
  if (HasSynchronization.isOwner.getter())
  {
    LOBYTE(v17) = 0;
    return a1(&v17);
  }

  else
  {
    HasSynchronization.synchronization.getter(&v17);
    v7 = v19;
    if (v19 == 2)
    {
      v8 = v17;
      v9 = v18;
      v10 = v20;
      v13 = v17;
      v14 = v18;
      v15 = 2;
      v16 = v20;
      outlined copy of SynchronizationComponent?(v17, *(&v17 + 1), v18, 2, v20);
      HasSynchronization.synchronization.setter(&v13);
      return outlined consume of SynchronizationComponent?(v8, *(&v8 + 1), v9, 2, v10);
    }

    else
    {
      v11 = v18;
      v12 = v20;

      outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v11, v7, v12);
      v13 = v17;
      v14 = *&a3;
      v15 = a1;
      v16 = a2;
      return HasSynchronization.synchronization.setter(&v13);
    }
  }
}

uint64_t HasSynchronization.withUnsynchronized(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = *(*v1 + 88);
  v3(&v7);
  RENetworkComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    ComponentByClass = RENetworkComponentSetSuppressMarkDirty();
  }

  v5 = a1(ComponentByClass);
  (v3)(&v7, v5);
  RENetworkComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {

    return RENetworkComponentSetSuppressMarkDirty();
  }

  return result;
}

double SynchronizationComponent.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 7) = 0;
  *a1 = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_1C18A4F10;
  *(a1 + 32) = 0;
  return result;
}

double static SynchronizationComponent.__fromCore(_:)@<D0>(uint64_t a2@<X8>)
{
  IsAuthoritative = RENetworkComponentIsAuthoritative();
  ShouldAlwaysMigrate = RENetworkComponentShouldAlwaysMigrate();
  v5 = RENetworkComponentGuid();
  IsOwnershipLocked = RENetworkComponentIsOwnershipLocked();
  *a2 = v5;
  *(a2 + 8) = IsAuthoritative;
  *(a2 + 9) = ShouldAlwaysMigrate;
  *(a2 + 10) = IsOwnershipLocked;
  result = 0.0;
  *(a2 + 16) = xmmword_1C18A4F10;
  *(a2 + 32) = 0;
  return result;
}

uint64_t SynchronizationComponent.__toCore(_:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10FirstWhereVy_10RealityKit5SceneC9PublisherVy_AF21SynchronizationEventsO17OwnershipResponseVGGMd, &_s7Combine10PublishersO10FirstWhereVy_10RealityKit5SceneC9PublisherVy_AF21SynchronizationEventsO17OwnershipResponseVGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = *a1;
  v8 = *v1;
  v9 = *(v1 + 10);
  v11 = v1[2];
  v10 = v1[3];
  v12 = v1[4];
  RENetworkComponentSetAlwaysMigrate();
  result = RENetworkComponentIsOwnershipLocked();
  if (v9 != result)
  {
    if ((v9 & 1) == 0)
    {
      result = RENetworkComponentUnlockEntity();
      if (v10 == 1)
      {
        return result;
      }

      goto LABEL_5;
    }

    result = RENetworkComponentLockEntity();
  }

  if (v10 == 1)
  {
    return result;
  }

LABEL_5:
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v10, v12);
  result = RENetworkComponentIsAuthoritative();
  if (result)
  {
    if (v10)
    {
      LOBYTE(v26) = 0;
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v10, v12);
      v10(&v26);
      outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v11, v10, v12);
      return outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v11, v10, v12);
    }
  }

  else
  {
    IsOwnershipLocked = RENetworkComponentIsOwnershipLocked();
    result = MEMORY[0x1C68FC510](v7, IsOwnershipLocked, 0, 0, *&v11);
    if (v10)
    {
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v10, v12);
      REComponentGetEntity();
      SceneNullable = REEntityGetSceneNullable();
      if (SceneNullable)
      {
        v16 = SceneNullable;
        type metadata accessor for BoxedSubscription();
        v17 = swift_allocObject();
        *(v17 + 16) = 0u;
        v23 = v17 + 16;
        *(v17 + 32) = 0u;
        *(v17 + 48) = 0;
        v18 = RESceneGetSwiftObject();
        type metadata accessor for Scene();
        v24 = v4;
        if (v18)
        {
          swift_dynamicCastClassUnconditional();
        }

        else
        {
          swift_allocObject();
          Scene.init(coreScene:)(v16);
        }

        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentTypeAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgtAA0K0RzlFAA21SynchronizationEventsO17OwnershipResponseV_Tt0g5(&v26, &v25);

        outlined destroy of BodyTrackingComponent?(&v26, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
        *&v26 = v25;
        *(swift_allocObject() + 16) = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO17OwnershipResponseVGMd, &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO17OwnershipResponseVGMR);
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<SynchronizationEvents.OwnershipResponse> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO17OwnershipResponseVGMd, &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO17OwnershipResponseVGMR, protocol conformance descriptor for Scene.Publisher<A>);
        Publisher.first(where:)();

        v19 = swift_allocObject();
        v19[2] = v17;
        v19[3] = v10;
        v19[4] = v12;
        outlined copy of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v11, v10, v12);
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Publishers.FirstWhere<Scene.Publisher<SynchronizationEvents.OwnershipResponse>> and conformance Publishers.FirstWhere<A>, &_s7Combine10PublishersO10FirstWhereVy_10RealityKit5SceneC9PublisherVy_AF21SynchronizationEventsO17OwnershipResponseVGGMd, &_s7Combine10PublishersO10FirstWhereVy_10RealityKit5SceneC9PublisherVy_AF21SynchronizationEventsO17OwnershipResponseVGGMR, MEMORY[0x1E695BC90]);

        v20 = Publisher<>.sink(receiveValue:)();

        (*(v24 + 8))(v6, v3);
        *(&v27 + 1) = type metadata accessor for AnyCancellable();
        v28 = MEMORY[0x1E695BF08];
        outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v11, v10, v12);
        outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v11, v10, v12);
        *&v26 = v20;
        v21 = v23;
        swift_beginAccess();
        outlined assign with take of Cancellable?(&v26, v21);
        swift_endAccess();
      }

      else
      {
        outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v11, v10, v12);

        return outlined consume of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v11, v10, v12);
      }
    }
  }

  return result;
}

BOOL closure #1 in SynchronizationComponent.__toCore(_:)(uint64_t *a1, uint64_t a2)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA015SynchronizationD0V_Tt0B5(v6);
  v4 = v7 != 2 && v6[0] == a2;
  outlined consume of SynchronizationComponent?(v6[0], v6[1], v6[2], v7, v8);
  return v4;
}

uint64_t closure #2 in SynchronizationComponent.__toCore(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  swift_beginAccess();
  result = outlined init with copy of Cancellable?(a2 + 16, v7);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v7);
    LOBYTE(v7[0]) = *(a1 + 48);
    return a3(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static SynchronizationComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *a1 == *a2)
  {
    return (*(a2 + 10) ^ *(a1 + 10) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SynchronizationComponent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *a1 == *a2)
  {
    return (*(a2 + 10) ^ *(a1 + 10) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t (*SynchronizationComponent.shouldMigrateOwnershipWhenAbandoned.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 9);
  return SynchronizationComponent.shouldMigrateOwnershipWhenAbandoned.modify;
}

uint64_t SynchronizationComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v18 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v8 = *(v1 + 8);
  LOBYTE(v5) = *(v1 + 9);
  v9 = *(v1 + 10);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v21 = *v1;
  v7 = v21;
  v22 = v8;
  v23 = v5;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C1897FD0;
  *(v13 + 32) = 0x696669746E656469;
  *(v13 + 40) = 0xEA00000000007265;
  v14 = MEMORY[0x1E69E76D8];
  *(v13 + 48) = v7;
  *(v13 + 72) = v14;
  *(v13 + 80) = 0x72656E774F7369;
  *(v13 + 88) = 0xE700000000000000;
  v15 = MEMORY[0x1E69E6370];
  *(v13 + 96) = v8;
  *(v13 + 120) = v15;
  *(v13 + 128) = 0xD000000000000015;
  *(v13 + 136) = 0x80000001C18E2470;
  *(v13 + 168) = &type metadata for SynchronizationComponent.OwnershipTransferMode;
  *(v13 + 144) = v9;
  v16 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  (*(v2 + 104))(v18, *MEMORY[0x1E69E75D8], v19);
  outlined copy of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v10, v11, v12);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentTypeAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgtAA0K0RzlFAA0C6EventsO6UpdateV_Tt0g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGAF0G6EventsO0L0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGAF0G6EventsO0L0VGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  Scene.engineEventService.getter(v20);
  v11 = v21;
  if (v21)
  {
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    type metadata accessor for REEngineDoUpdateEvent(0);
    EventService.publisher<A>(for:on:)(v13, a1, v11, v13, v12);
    v11 = v19[0];
    v14 = v19[1];
    v15 = v19[2];
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v20, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
    v14 = 0;
    v15 = 0;
  }

  swift_allocObject();
  swift_weakInit();
  if (v15)
  {
    v20[0] = v11;
    v20[1] = v14;
    v20[2] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEngineDoUpdateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMR, protocol conformance descriptor for Scene.CorePublisher<A>);
    Publisher.compactMap<A>(_:)();

    v16 = *(v5 + 32);
    v16(v10, v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoUpdateEventVGAH0I6EventsO0M0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoUpdateEventVGAH0I6EventsO0M0VGGMR);
    v17 = swift_allocObject();
    result = (v16)(v17 + *(*v17 + *MEMORY[0x1E695BEE8] + 16), v10, v4);
  }

  else
  {

    v17 = 0;
  }

  *a2 = v17;
  return result;
}

uint64_t _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentTypeAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgtAA0K0RzlFAA0C6EventsO6RenderV_Tt0g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGAF0G6EventsO0L0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGAF0G6EventsO0L0VGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  Scene.engineEventService.getter(v20);
  v11 = v21;
  if (v21)
  {
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    type metadata accessor for REEngineDoRenderEvent(0);
    EventService.publisher<A>(for:on:)(v13, a1, v11, v13, v12);
    v11 = v19[0];
    v14 = v19[1];
    v15 = v19[2];
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v20, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
    v14 = 0;
    v15 = 0;
  }

  swift_allocObject();
  swift_weakInit();
  if (v15)
  {
    v20[0] = v11;
    v20[1] = v14;
    v20[2] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEngineDoRenderEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMR, protocol conformance descriptor for Scene.CorePublisher<A>);
    Publisher.compactMap<A>(_:)();

    v16 = *(v5 + 32);
    v16(v10, v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoRenderEventVGAH0I6EventsO0M0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoRenderEventVGAH0I6EventsO0M0VGGMR);
    v17 = swift_allocObject();
    result = (v16)(v17 + *(*v17 + *MEMORY[0x1E695BEE8] + 16), v10, v4);
  }

  else
  {

    v17 = 0;
  }

  *a2 = v17;
  return result;
}

uint64_t _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentTypeAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgtAA0K0RzlFAA21SynchronizationEventsO17OwnershipResponseV_Tt0g5@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGAF21SynchronizationEventsO09OwnershipK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGAF21SynchronizationEventsO09OwnershipK0VGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  Scene.eventService.getter(v19);
  v8 = v20;
  v9 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  type metadata accessor for REOwnershipResponseEvent(0);
  EventService.publisher<A>(for:on:)(v10, a1, v8, v10, v9);
  v11 = v18[0];
  v12 = v18[1];
  v13 = v18[2];
  __swift_destroy_boxed_opaque_existential_1(v19);
  v14 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log();
  v15 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v14, &dword_1C1358000, v15, "[Ownership] Received ownership response event", 45, 2, MEMORY[0x1E69E7CC0]);

  swift_allocObject();
  swift_weakInit();
  v19[0] = v11;
  v19[1] = v12;
  v19[2] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REOwnershipResponseEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMR, protocol conformance descriptor for Scene.CorePublisher<A>);
  Publisher.compactMap<A>(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So24REOwnershipResponseEventVGAH21SynchronizationEventsO09OwnershipL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So24REOwnershipResponseEventVGAH21SynchronizationEventsO09OwnershipL0VGGMR);
  v16 = swift_allocObject();
  result = (*(v5 + 32))(&v16[*(*v16 + *MEMORY[0x1E695BEE8] + 16)], v7, v4);
  *a2 = v16;
  return result;
}

unint64_t lazy protocol witness table accessor for type SynchronizationComponent.OwnershipTransferMode and conformance SynchronizationComponent.OwnershipTransferMode()
{
  result = lazy protocol witness table cache variable for type SynchronizationComponent.OwnershipTransferMode and conformance SynchronizationComponent.OwnershipTransferMode;
  if (!lazy protocol witness table cache variable for type SynchronizationComponent.OwnershipTransferMode and conformance SynchronizationComponent.OwnershipTransferMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SynchronizationComponent.OwnershipTransferMode, &type metadata for SynchronizationComponent.OwnershipTransferMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SynchronizationComponent.OwnershipTransferMode and conformance SynchronizationComponent.OwnershipTransferMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SynchronizationComponent.OwnershipTransferCompletionResult and conformance SynchronizationComponent.OwnershipTransferCompletionResult()
{
  result = lazy protocol witness table cache variable for type SynchronizationComponent.OwnershipTransferCompletionResult and conformance SynchronizationComponent.OwnershipTransferCompletionResult;
  if (!lazy protocol witness table cache variable for type SynchronizationComponent.OwnershipTransferCompletionResult and conformance SynchronizationComponent.OwnershipTransferCompletionResult)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SynchronizationComponent.OwnershipTransferCompletionResult, &type metadata for SynchronizationComponent.OwnershipTransferCompletionResult, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SynchronizationComponent.OwnershipTransferCompletionResult and conformance SynchronizationComponent.OwnershipTransferCompletionResult);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit24SynchronizationComponentV33OwnershipTransferCompletionResultOIegn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_Sd_10RealityKit24SynchronizationComponentV33OwnershipTransferCompletionResultOIegn_SgtSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for SynchronizationComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for SynchronizationComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t Atomic.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  specialized Atomic.wrappedValue.setter();
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void Atomic.load()(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = **v1;
  v5 = *(v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  partial apply for closure #1 in Atomic.load()(v3 + v5, a1);
  os_unfair_lock_unlock((v3 + v6));
}

void Atomic.store(_:)()
{
  v1 = *v0;
  v2 = **v0;
  v3 = *(v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v4));
  partial apply for closure #1 in Atomic.store(_:)(v1 + v3);
  os_unfair_lock_unlock((v1 + v4));
}

void (*Atomic.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v8 = *(a2 + 16);
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
  Atomic.load()(v11);
  return Atomic.wrappedValue.modify;
}

void Atomic.wrappedValue.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    Atomic.store(_:)();
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    Atomic.store(_:)();
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Atomic.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = specialized OSAllocatedUnfairLock.init(uncheckedState:)(a1, a2);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t specialized OSAllocatedUnfairLock.init(uncheckedState:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  type metadata accessor for ManagedBuffer();
  return static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
}

uint64_t type metadata instantiation function for Atomic(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #1 in Atomic.store(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

uint64_t partial apply for closure #1 in OSAllocatedUnfairLock.init(uncheckedState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t OrbitEntityAction.pivotEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return outlined copy of ActionEntityResolution(v2, v3, v4);
}

void OrbitEntityAction.pivotEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  outlined consume of ActionEntityResolution(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

uint64_t (*OrbitEntityAction.orientToPath.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48);
  return OrbitEntityAction.orientToPath.modify;
}

float32x4_t OrbitEntityAction.init(pivotEntity:revolutions:orbitalAxis:isOrientedToPath:isAdditive:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float32x4_t a6@<Q1>)
{
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  v7 = vmulq_f32(a6, a6);
  *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  *(a4 + 20) = a5;
  v9 = vrsqrte_f32(v8);
  v10 = vmul_f32(v9, vrsqrts_f32(v8, vmul_f32(v9, v9)));
  result = vmulq_n_f32(a6, vmul_f32(v10, vrsqrts_f32(v8, vmul_f32(v10, v10))).f32[0]);
  *(a4 + 32) = result;
  *(a4 + 48) = a2;
  *(a4 + 49) = a3;
  return result;
}

float32x4_t OrbitEntityAction.init(pivotEntity:revolutions:orbitalAxis:orientToPath:isAdditive:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float32x4_t a6@<Q1>)
{
  v6 = *(a1 + 16);
  v7 = vmulq_f32(a6, a6);
  *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  *v7.f32 = vrsqrte_f32(v8);
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32)));
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 20) = a5;
  result = vmulq_n_f32(a6, vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32))).f32[0]);
  *(a4 + 32) = result;
  *(a4 + 48) = a2;
  *(a4 + 49) = a3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance OrbitEntityAction.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746E45746F766970;
  v3 = 0x416C61746962726FLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6974696464417369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6974756C6F766572;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OrbitEntityAction.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized OrbitEntityAction.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OrbitEntityAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OrbitEntityAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrbitEntityAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation17OrbitEntityActionV10CodingKeys33_6BD17F84D2F6DA3F41FAB53224DD7C6ELLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation17OrbitEntityActionV10CodingKeys33_6BD17F84D2F6DA3F41FAB53224DD7C6ELLOGMR);
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v15 = *(v1 + 32);
  v9 = *(v1 + 48);
  v16 = *(v1 + 49);
  v17 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of ActionEntityResolution(v6, v7, v8);
  lazy protocol witness table accessor for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v21 = v6;
  *(&v21 + 1) = v7;
  v22 = v8;
  v10 = v3;
  v20 = 0;
  lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
  v11 = v18;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v11)
  {
    v12 = outlined consume of ActionEntityResolution(v21, *(&v21 + 1), v22);
    return (*(v19 + 8))(v5, v3, v12);
  }

  else
  {
    v14 = v19;
    outlined consume of ActionEntityResolution(v21, *(&v21 + 1), v22);
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v15;
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, MEMORY[0x1E69E7458]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v21) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v21) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v14 + 8))(v5, v10);
  }
}

unint64_t lazy protocol witness table accessor for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrbitEntityAction.CodingKeys, &unk_1F40F5CB8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrbitEntityAction.CodingKeys, &unk_1F40F5CB8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrbitEntityAction.CodingKeys, &unk_1F40F5CB8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrbitEntityAction.CodingKeys, &unk_1F40F5CB8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys);
  }

  return result;
}

void OrbitEntityAction.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation17OrbitEntityActionV10CodingKeys33_6BD17F84D2F6DA3F41FAB53224DD7C6ELLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation17OrbitEntityActionV10CodingKeys33_6BD17F84D2F6DA3F41FAB53224DD7C6ELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OrbitEntityAction.CodingKeys and conformance OrbitEntityAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v18 = 0;
    lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v19;
    v17 = v20;
    LOBYTE(v19) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v18 = 2;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, MEMORY[0x1E69E7468]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v19;
    LOBYTE(v19) = 3;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v19) = 4;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 &= 1u;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    v13 = v17;
    *(a2 + 16) = v17;
    *(a2 + 20) = v11;
    *(a2 + 32) = v16;
    *(a2 + 48) = v15;
    *(a2 + 49) = v12 & 1;
    outlined copy of ActionEntityResolution(v9, *(&v9 + 1), v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined consume of ActionEntityResolution(v9, *(&v9 + 1), v13);
  }
}

__n128 __swift_memcpy50_16(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for OrbitEntityAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
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

uint64_t storeEnumTagSinglePayload for OrbitEntityAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t OrbitEntityActionHandler.actionStarted(event:)(float32x4_t *a1)
{
  v2 = v1;
  v3 = a1[13];
  v122 = a1[12];
  v123 = v3;
  v4 = a1[15];
  v124 = a1[14];
  v125 = v4;
  v5 = a1[9];
  v118 = a1[8];
  v119 = v5;
  v6 = a1[11];
  v120 = a1[10];
  v121 = v6;
  v7 = a1[5];
  v114 = a1[4];
  v115 = v7;
  v8 = a1[7];
  v116 = a1[6];
  v117 = v8;
  v9 = a1[1];
  v110 = *a1;
  v111 = v9;
  v10 = a1[3];
  v112 = a1[2];
  v113 = v10;
  specialized ActionEvent.animationState.getter();
  if (!v127.i64[1])
  {
    return outlined destroy of AnimationStateProtocol?(&v126);
  }

  outlined init with take of ForceEffectBase(&v126, v107);
  v11 = v114.i64[1];
  if (!v114.i64[1])
  {
    return __swift_destroy_boxed_opaque_existential_1(v107);
  }

  if ((*(v110 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    *&v126 = 0;
    *(&v126 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(69);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v104 = &type metadata for OrbitEntityAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17OrbitEntityActionVmMd, &_s17RealityFoundation17OrbitEntityActionVmMR);
    v22 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v22);

    MEMORY[0x1C68F3410](0xD000000000000037, 0x80000001C18E2520);
    v23 = v126;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static AnimationLogger.logger);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v126 = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, *(&v23 + 1), &v126);
      _os_log_impl(&dword_1C1358000, v25, v26, "%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1C6902A30](v28, -1, -1);
      MEMORY[0x1C6902A30](v27, -1, -1);
    }

    goto LABEL_19;
  }

  v13 = Strong;
  v126 = v111;
  v127 = v112;
  v128 = v113;
  v129 = v114.i16[0];
  v100 = v111;
  v101 = v112.i8[0];

  outlined init with copy of OrbitEntityAction(&v126, &v104);
  v14 = ActionEntityResolution.resolve(from:)(v13);
  outlined consume of ActionEntityResolution(v100.i64[0], v100.i64[1], v101);
  if (!v14)
  {
    *&v104 = 0;
    *(&v104 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    v100.i64[0] = &type metadata for OrbitEntityAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17OrbitEntityActionVmMd, &_s17RealityFoundation17OrbitEntityActionVmMR);
    v29 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v29);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E2560);
    v30 = v104;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static AnimationLogger.logger);

    v25 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v104 = v34;
      *v33 = 136315138;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, *(&v30 + 1), &v104);
      _os_log_impl(&dword_1C1358000, v25, v32, "%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1C6902A30](v34, -1, -1);
      MEMORY[0x1C6902A30](v33, -1, -1);
    }

LABEL_19:

    goto LABEL_20;
  }

  *v1 = v14;
  swift_retain_n();

  v15 = specialized HasHierarchy.parent.getter();

  v98.i64[0] = v11;
  v99 = v13;
  v96 = v2;
  if (!v15)
  {
    *v35.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v14, 0);
    v97 = v35;
    v94 = v36;
    v93 = v37;

    REMakeSRTFromMatrix();
    v95 = v38;
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    goto LABEL_29;
  }

  result = specialized HasHierarchy.parent.getter();
  if (result)
  {
    v17 = result;
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v94 = static Transform.identity;
    v90 = xmmword_1EBEB2BC0;
    v91 = xmmword_1EBEB2BB0;
    *v18.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v14, v17);
    v92 = v18;
    v93 = v19;
    v97 = v20;
    specialized simd_float4x4.init(translation:rotation:scale:)(*&v90, v91, *&v94);
    REMakeSRTFromMatrix();
    v95 = v21;
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

LABEL_29:
    v40 = v108;
    v39 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v41 = *(v39 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v43 = type metadata accessor for Optional();
    v97.i64[0] = &v90;
    v44 = *(v43 - 8);
    v45 = MEMORY[0x1EEE9AC00](v43);
    v47 = &v90 - v46;
    v41(v40, v39, v45);
    v48 = *(AssociatedTypeWitness - 8);
    if ((*(v48 + 48))(v47, 1, AssociatedTypeWitness) == 1)
    {
      (*(v44 + 8))(v47, v43);
    }

    else
    {
      v102 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v100);
      (*(v48 + 32))(boxed_opaque_existential_1, v47, AssociatedTypeWitness);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pMd, &_s17RealityFoundation14AnimatableData_pMR);
      if (swift_dynamicCast())
      {
        v50 = v105;
        v51 = v106;
        v52 = v96;
        v93 = v105;
        v94 = v104;
        *(v96 + 5) = v104;
        *(v52 + 6) = v50;
        v92 = v51;
        v53 = vsubq_f32(v51, v95);
        v53.i32[3] = 0;
        v95 = v53;
        *(v52 + 7) = v53;
        v54 = specialized HasHierarchy.parent.getter();
        v55 = v128;
        if (v54)
        {
          v97 = v128;
          *v56.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(0, v54);
          *v59.i64 = simd_float4x4.transform(normal:)(v97, v56, v57, v58);
          v97 = v59;

          v55 = v97;
        }

        v60 = vmulq_f32(v95, v95);
        *&v61 = v60.f32[2] + vaddv_f32(*v60.f32);
        *v60.f32 = vrsqrte_f32(v61);
        *v60.f32 = vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32)));
        v62 = vmulq_n_f32(v95, vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32))).f32[0]);
        v63 = vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL);
        v64 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), vnegq_f32(v62)), v55, v63);
        v65 = vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL);
        v66 = vmulq_f32(v64, v64);
        *&v67 = v66.f32[1] + (v66.f32[2] + v66.f32[0]);
        *v66.f32 = vrsqrte_f32(v67);
        *v66.f32 = vmul_f32(*v66.f32, vrsqrts_f32(v67, vmul_f32(*v66.f32, *v66.f32)));
        v68 = vmulq_n_f32(v65, vmul_f32(*v66.f32, vrsqrts_f32(v67, vmul_f32(*v66.f32, *v66.f32))).f32[0]);
        v69 = vmulq_f32(v68, v68);
        if ((v69.f32[2] + vaddv_f32(*v69.f32)) <= 0.00001)
        {
          *&v104 = 0;
          *(&v104 + 1) = 0xE000000000000000;
          v97 = v55;
          _StringGuts.grow(_:)(140);
          MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
          v100.i64[0] = &type metadata for OrbitEntityAction;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17OrbitEntityActionVmMd, &_s17RealityFoundation17OrbitEntityActionVmMR);
          v81 = String.init<A>(describing:)();
          MEMORY[0x1C68F3410](v81);

          MEMORY[0x1C68F3410](0xD00000000000002FLL, 0x80000001C18E25C0);
          v100 = v97;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, MEMORY[0x1E69E7470]);
          v82 = SIMD.description.getter();
          MEMORY[0x1C68F3410](v82);

          MEMORY[0x1C68F3410](0xD00000000000004DLL, 0x80000001C18E25F0);
          v83 = v104;
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v84 = type metadata accessor for Logger();
          __swift_project_value_buffer(v84, static AnimationLogger.logger);

          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            *&v104 = v88;
            *v87 = 136315138;
            *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, *(&v83 + 1), &v104);
            _os_log_impl(&dword_1C1358000, v85, v86, "%s", v87, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v88);
            MEMORY[0x1C6902A30](v88, -1, -1);
            MEMORY[0x1C6902A30](v87, -1, -1);
          }

          v74 = v97;
        }

        else
        {
          v97 = v63;
          v98 = v62;
          v95 = v68;

          v70 = vmlaq_f32(vmulq_f32(v97, vnegq_f32(v95)), v98, vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL));
          v71 = vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL);
          v72 = vmulq_f32(v70, v70);
          *&v73 = v72.f32[1] + (v72.f32[2] + v72.f32[0]);
          *v72.f32 = vrsqrte_f32(v73);
          *v72.f32 = vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32)));
          v74 = vmulq_n_f32(v71, vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32))).f32[0]);
        }

        *(v52 + 1) = v74;
        if ((v129 & 0x100) != 0)
        {
          v89 = v93;
          *(v52 + 2) = v94;
          *(v52 + 3) = v89;
          *(v52 + 4) = v92;
        }

        return __swift_destroy_boxed_opaque_existential_1(v107);
      }
    }

    *&v104 = 0;
    *(&v104 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    strcpy(&v104, "Handler for ");
    BYTE13(v104) = 0;
    HIWORD(v104) = -5120;
    v100.i64[0] = &type metadata for OrbitEntityAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17OrbitEntityActionVmMd, &_s17RealityFoundation17OrbitEntityActionVmMR);
    v75 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v75);

    MEMORY[0x1C68F3410](0xD00000000000001ELL, 0x80000001C18E25A0);
    v76 = v104;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static AnimationLogger.logger);

    v25 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v104 = v80;
      *v79 = 136315138;
      *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, *(&v76 + 1), &v104);
      _os_log_impl(&dword_1C1358000, v25, v78, "%s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x1C6902A30](v80, -1, -1);
      MEMORY[0x1C6902A30](v79, -1, -1);
    }

LABEL_20:

    return __swift_destroy_boxed_opaque_existential_1(v107);
  }

  __break(1u);
  return result;
}

uint64_t OrbitEntityActionHandler.actionUpdated(event:)(_OWORD *a1)
{
  v2 = a1[13];
  v53 = a1[12];
  v54 = v2;
  v3 = a1[15];
  v55 = a1[14];
  v56 = v3;
  v4 = a1[9];
  v49 = a1[8];
  v50 = v4;
  v5 = a1[11];
  v51 = a1[10];
  v52 = v5;
  v6 = a1[5];
  v45 = a1[4];
  v46 = v6;
  v7 = a1[7];
  v47 = a1[6];
  v48 = v7;
  v8 = a1[1];
  v44[0] = *a1;
  v44[1] = v8;
  v9 = a1[3];
  v44[2] = a1[2];
  v44[3] = v9;
  specialized ActionEvent.animationState.getter();
  if (!*(&v33 + 1))
  {
    return outlined destroy of AnimationStateProtocol?(&v32);
  }

  outlined init with take of ForceEffectBase(&v32, v29);
  if ((v51 & 1) == 0)
  {
    v10 = *(&v50 + 1);
    v11 = fmin(fabs(*(&v50 + 1) + -1.0), *(&v50 + 1));
    v12 = v11 <= 0.0001;
    if (v11 > 0.0001 || (*(v1 + 176) & 1) != 0 || vabdd_f64(*(v1 + 184), *(&v50 + 1)) > 0.0001)
    {
      v13 = *(v1 + 144);
      v40 = *(v1 + 128);
      v41 = v13;
      v14 = *(v1 + 176);
      v42 = *(v1 + 160);
      v43 = v14;
      v15 = *(v1 + 80);
      v36 = *(v1 + 64);
      v37 = v15;
      v16 = *(v1 + 112);
      v38 = *(v1 + 96);
      v39 = v16;
      v17 = *(v1 + 16);
      v32 = *v1;
      v33 = v17;
      v18 = *(v1 + 48);
      v34 = *(v1 + 32);
      v35 = v18;
      OrbitEntityActionHandler.computeOrbitTransform(event:normalizedTime:isAdditive:)(v44, BYTE1(v45) & 1, *(&v50 + 1));
      v26 = v20;
      v27 = v19;
      v25 = v21;
      if (v12)
      {
        *(v1 + 128) = v19;
        *(v1 + 144) = v20;
        *(v1 + 160) = v21;
        *(v1 + 176) = 0;
      }

      else
      {
        *(v1 + 144) = 0u;
        *(v1 + 160) = 0u;
        *(v1 + 128) = 0u;
        *(v1 + 176) = 1;
      }
    }

    else
    {
      v27 = *(v1 + 128);
      v26 = *(v1 + 144);
      v25 = *(v1 + 160);
    }

    v23 = v30;
    v24 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v28[0] = v27;
    v28[1] = v26;
    v28[2] = v25;
    (*(v24 + 64))(v28, &type metadata for Transform, v23, v24);
    *(v1 + 184) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

void OrbitEntityActionHandler.computeOrbitTransform(event:normalizedTime:isAdditive:)(uint64_t a1, char a2, double a3)
{
  v4 = *v3;
  if (*v3)
  {
    v5 = v3;
    if (*(a1 + 72))
    {
      v8 = *(a1 + 36);
      v9 = *(a1 + 80);

      outlined init with copy of OrbitEntityActionHandler(v3, v46);
      if (!specialized HasHierarchy.parent.getter())
      {
        _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v4, 0);
        REMakeSRTFromMatrix();
        v45 = v30;
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        v13 = 1;
LABEL_26:
        v31 = -v8;
        v32 = 1.0 - a3;
        if (!v9)
        {
          v32 = a3;
          v31 = v8;
        }

        v33 = v32;
        *&v34 = vmulq_n_f32(*(v3 + 16), __sincosf_stret((v31 * (v33 * 6.2832)) * 0.5).__sinval).u64[0];
        if (v13)
        {
          if (a2)
          {
LABEL_30:
            RESRTInverse();
            *v38.i64 = specialized static Transform.* infix(_:_:)(v35, v36, v37, xmmword_1C1887620);
            v40 = *(v3 + 80);
LABEL_33:
            specialized static Transform.* infix(_:_:)(v38, v34, v39, v40);
            outlined destroy of OrbitEntityActionHandler(v3);

            return;
          }
        }

        else
        {
          v43 = v34;
          swift_once();
          v34 = v43;
          if (a2)
          {
            goto LABEL_30;
          }
        }

        v40 = *(v3 + 80);
        v38 = xmmword_1C1887620;
        v39 = v45;
        goto LABEL_33;
      }

      v10 = specialized HasHierarchy.parent.getter();
      if (v10)
      {
        v11 = v10;
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        v42 = xmmword_1EBEB2BB0;
        v44 = *&static Transform.identity;
        v41 = *&xmmword_1EBEB2BC0;
        outlined init with copy of OrbitEntityActionHandler(v3, v46);
        _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v4, v11);
        specialized simd_float4x4.init(translation:rotation:scale:)(v41, v42, v44);
        REMakeSRTFromMatrix();
        v45 = v12;
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        outlined destroy of OrbitEntityActionHandler(v3);
        v13 = one-time initialization token for identity == -1;
        goto LABEL_26;
      }

      __break(1u);
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      outlined init with copy of OrbitEntityActionHandler(v3, v46);
      _StringGuts.grow(_:)(43);

      strcpy(v46, "Handler for ");
      BYTE5(v46[1]) = 0;
      HIWORD(v46[1]) = -5120;
      v47 = &type metadata for OrbitEntityAction;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17OrbitEntityActionVmMd, &_s17RealityFoundation17OrbitEntityActionVmMR);
      v22 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v22);

      MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18E2500);
      v24 = v46[0];
      v23 = v46[1];
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static AnimationLogger.logger);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v46[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v46);
        _os_log_impl(&dword_1C1358000, v26, v27, "%s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1C6902A30](v29, -1, -1);
        MEMORY[0x1C6902A30](v28, -1, -1);
      }

      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      outlined destroy of OrbitEntityActionHandler(v5);
    }
  }

  else
  {
    _StringGuts.grow(_:)(42);

    strcpy(v46, "Handler for ");
    BYTE5(v46[1]) = 0;
    HIWORD(v46[1]) = -5120;
    v47 = &type metadata for OrbitEntityAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17OrbitEntityActionVmMd, &_s17RealityFoundation17OrbitEntityActionVmMR);
    v14 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v14);

    MEMORY[0x1C68F3410](0xD00000000000001CLL, 0x80000001C18E24E0);
    v16 = v46[0];
    v15 = v46[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static AnimationLogger.logger);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v46[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v46);
      _os_log_impl(&dword_1C1358000, v18, v19, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1C6902A30](v21, -1, -1);
      MEMORY[0x1C6902A30](v20, -1, -1);
    }

    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }
  }
}

uint64_t specialized OrbitEntityAction.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E45746F766970 && a2 == 0xEB00000000797469;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974756C6F766572 && a2 == 0xEB00000000736E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x416C61746962726FLL && a2 == 0xEB00000000736978 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C18E24C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974696464417369 && a2 == 0xEA00000000006576)
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

uint64_t lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy192_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for OrbitEntityActionHandler(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
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

uint64_t storeEnumTagSinglePayload for OrbitEntityActionHandler(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __RKEntityPlayTimelineAction.__allocating_init(targetEntity:animationLibraryComponentEntity:animationLibraryKey:animationLibraryKeyOverrideEntity:animationLibraryKeyOverrideKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 160) = 0u;
  *(v14 + 176) = 0u;
  *(v14 + 192) = 0u;
  *(v14 + 208) = 0u;
  *(v14 + 224) = 0u;
  *(v14 + 240) = 0;
  *(v14 + 112) = a2;
  *(v14 + 120) = a3;
  *(v14 + 128) = a4;
  *(v14 + 136) = a5;
  *(v14 + 144) = a6;
  *(v14 + 152) = a7;
  v15 = __RKEntityAction.init(targetEntity:)(0);
  swift_beginAccess();
  *(v15 + 16) = a1;

  swift_beginAccess();
  *(v15 + 105) = 0;

  return v15;
}

uint64_t __RKEntityPlayTimelineAction.init(targetEntity:animationLibraryComponentEntity:animationLibraryKey:animationLibraryKeyOverrideEntity:animationLibraryKeyOverrideKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 240) = 0;
  *(v7 + 208) = 0u;
  *(v7 + 224) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 112) = a2;
  *(v7 + 120) = a3;
  *(v7 + 128) = a4;
  *(v7 + 136) = a5;
  *(v7 + 144) = a6;
  *(v7 + 152) = a7;
  v9 = __RKEntityAction.init(targetEntity:)(0);
  swift_beginAccess();
  *(v9 + 16) = a1;

  swift_beginAccess();
  *(v9 + 105) = 0;

  return v9;
}

uint64_t __RKEntityPlayTimelineAction.startAnimations(targetEntity:)(uint64_t a1)
{
  v2 = v1;
  v30 = 91;
  v31 = 0xE100000000000000;
  v36 = 0;
  v37 = 0xE000000000000000;
  v35 = a1;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v3 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v3);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  if (!v1[14])
  {
    v30 = 91;
    v31 = 0xE100000000000000;
    v6 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v6, &v30);

    return 0;
  }

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation016AnimationLibraryD0V_Tt0B5(&v30);
  v4 = v30;
  if (v30 == 1)
  {
    v30 = 91;
    v31 = 0xE100000000000000;
    v5 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v5, &v30);

    return 0;
  }

  v7 = v32;
  v9 = v33;
  v8 = v34;
  v28 = v31;
  v29 = v33;
  if (!v2[17])
  {

    outlined copy of String??(v7, v9);

    v16 = v8;
LABEL_13:
    v13 = v2[15];
    v15 = v2[16];

    goto LABEL_14;
  }

  v27 = v34;
  v10 = v2[19];
  if (!v10)
  {

    outlined copy of String??(v7, v9);
    v16 = v27;

    goto LABEL_13;
  }

  v11 = v2[18];
  outlined copy of AnimationLibraryComponent?(v30, v31, v32, v33, v34);

  REKeyValueComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {

    v16 = v27;
    goto LABEL_13;
  }

  v13 = specialized String.withCString<A>(_:)(v11, v10, ComponentByClass);
  v15 = v14;

  v16 = v27;
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_14:
  v30 = v4;
  v31 = v28;
  v32 = v7;
  v33 = v29;
  v17 = v16;
  v34 = v16;
  v18 = AnimationLibraryComponent.AnimationCollection.subscript.getter(v13, v15);

  if (v18)
  {

    v19 = v17;
    outlined consume of AnimationLibraryComponent?(v4, v28, v7, v29, v17);
    REAnimationHandoffDefaultDescEx();
    v20 = v31;
    v21 = v32;
    REAnimationComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    v30 = 2;
    LODWORD(v31) = v20;
    v32 = v21;
    LOBYTE(v33) = 0;
    v22 = REAnimationComponentPlay();
    type metadata accessor for AnimationPlaybackController();
    swift_allocObject();

    v24 = AnimationPlaybackController.init(entity:identifier:withObservation:)(v23, v22, 1);
    outlined consume of AnimationLibraryComponent?(v4, v28, v7, v29, v19);

    return v24;
  }

  outlined consume of AnimationLibraryComponent?(v4, v28, v7, v29, v17);
  MEMORY[0x1EEE9AC00](v26);
  v30 = 91;
  v31 = 0xE100000000000000;
  static os_log_type_t.error.getter();
  specialized InteractionsLogger.log(_:_:)();
  outlined consume of AnimationLibraryComponent?(v4, v28, v7, v29, v17);

  return 0;
}

uint64_t implicit closure #3 in __RKEntityPlayTimelineAction.startAnimations(targetEntity:)(void *a1, uint64_t a2)
{
  _StringGuts.grow(_:)(89);
  MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18E2740);
  if (!a1[17])
  {
    goto LABEL_7;
  }

  v3 = a1[19];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = a1[18];

  REKeyValueComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {

LABEL_7:
    v6 = a1[15];
    v8 = a1[16];

    goto LABEL_8;
  }

  v6 = specialized String.withCString<A>(_:)(v4, v3, ComponentByClass);
  v8 = v7;

  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_8:
  MEMORY[0x1C68F3410](v6, v8);

  MEMORY[0x1C68F3410](0xD000000000000038, 0x80000001C18E2760);
  REEntityGetName();
  v9 = String.init(cString:)();
  MEMORY[0x1C68F3410](v9);

  return 0;
}

uint64_t __RKEntityPlayTimelineAction.stopAnimations(targetEntity:)(uint64_t a1)
{
  v5 = 0;
  v6 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v2 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v2);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  REAnimationComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    if (REAnimationComponentHasRunningAnimations())
    {
      if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v1 + 104) == 1) && *(v1 + 96) == 3)
      {
        REAnimationComponentStopAllAnimations();
        RENetworkMarkComponentDirty();
      }
    }
  }

  v5 = 91;
  v6 = 0xE100000000000000;
  v3 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v3, &v5);

  *(v1 + 160) = 0;
}

uint64_t __RKEntityPlayTimelineAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v8 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v10 = &v54 - v9;
  v62 = *(a1 + 8);
  swift_beginAccess();
  v11 = *(v2 + 16);
  v70 = 91;
  v71 = 0xE100000000000000;
  if (v11)
  {
    v66 = 0;
    v67 = 0xE000000000000000;
    v75 = v11;

    _print_unlocked<A, B>(_:_:)();
    v12 = v66;
    v13 = v67;
  }

  else
  {
    v13 = 0xE300000000000000;
    v12 = 7104878;
  }

  MEMORY[0x1C68F3410](v12, v13);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v14 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v14);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v16 = v70;
  v15 = v71;
  v17 = *(v2 + 16);
  if (!v17)
  {
    static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)();

    return 0;
  }

  swift_beginAccess();
  if (*(v2 + 104) != 1 || *(v2 + 96) != 1)
  {
    v56 = v16;
    v57 = v7;
    v58 = v5;
    v59 = v4;
    v60 = v15;

LABEL_11:
    *(v2 + 160) = __RKEntityPlayTimelineAction.startAnimations(targetEntity:)(v17);

    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v17;
    v21 = *(v2 + 32);
    v22 = *(v2 + 40);
    *(v2 + 32) = partial apply for closure #1 in __RKEntityPlayTimelineAction.perform(with:);
    *(v2 + 40) = v20;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v21, v22);

    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    *(v2 + 96) = 1;
    *(v2 + 104) = 1;
    v70 = v23;
    LOBYTE(v71) = v24;
    __RKEntityAction.state.didset(&v70);
    v55 = type metadata accessor for Entity();
    v68 = v55;
    v69 = &protocol witness table for Entity;
    v66 = v17;
    v25 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v70);
    v26 = v73;
    v27 = v74;
    __swift_project_boxed_opaque_existential_1(&v70, v73);
    type metadata accessor for REAnimationHasCompletedEvent(0);
    EventService.publisher<A>(for:on:)(v28, &v66, v26, v28, v27);
    v29 = v63;
    v30 = v64;
    v31 = v65;
    __swift_destroy_boxed_opaque_existential_1(&v70);
    *(swift_allocObject() + 16) = 0;
    v70 = v29;
    v71 = v30;
    v72 = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    v54 = protocol conformance descriptor for Scene.CorePublisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR, protocol conformance descriptor for Scene.CorePublisher<A>);
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v32 = swift_allocObject();
    (*(v8 + 32))(&v32[*(*v32 + *MEMORY[0x1E695BEE8] + 16)], v10, v61);
    v70 = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = partial apply for closure #2 in __RKEntityPlayTimelineAction.perform(with:);
    *(v33 + 24) = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackCompleted> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR, protocol conformance descriptor for Scene.Publisher<A>);
    v34 = Publisher<>.sink(receiveValue:)();

    v35 = type metadata accessor for AnyCancellable();
    v73 = v35;
    v74 = MEMORY[0x1E695BF08];

    v70 = v34;
    outlined destroy of BodyTrackingComponent?(&v66, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v70, v2 + 168);
    swift_endAccess();
    v68 = v55;
    v69 = &protocol witness table for Entity;
    v66 = v17;
    v36 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v70);
    v37 = v73;
    v38 = v74;
    __swift_project_boxed_opaque_existential_1(&v70, v73);
    type metadata accessor for REAnimationHasTerminatedEvent(0);
    EventService.publisher<A>(for:on:)(v39, &v66, v37, v39, v38);
    v40 = v63;
    v41 = v64;
    v42 = v65;
    __swift_destroy_boxed_opaque_existential_1(&v70);
    *(swift_allocObject() + 16) = 0;
    v70 = v40;
    v71 = v41;
    v72 = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR, v54);
    v43 = v57;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v44 = swift_allocObject();
    (*(v58 + 32))(&v44[*(*v44 + *MEMORY[0x1E695BEE8] + 16)], v43, v59);
    v70 = v44;
    v45 = swift_allocObject();
    *(v45 + 16) = partial apply for closure #3 in __RKEntityPlayTimelineAction.perform(with:);
    *(v45 + 24) = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackTerminated> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR, protocol conformance descriptor for Scene.Publisher<A>);
    v46 = Publisher<>.sink(receiveValue:)();
    v47 = 1;

    v73 = v35;
    v74 = MEMORY[0x1E695BF08];

    v70 = v46;
    outlined destroy of BodyTrackingComponent?(&v66, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v70, v2 + 208);
    swift_endAccess();
    v70 = v56;
    v71 = v60;
    v48 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v48, &v70);
    goto LABEL_12;
  }

  swift_beginAccess();
  if (!*(v2 + 105))
  {
    v56 = v16;
    v57 = v7;
    v58 = v5;
    v59 = v4;
    v60 = v15;

    __RKEntityPlayTimelineAction.stopAnimations(targetEntity:)(v50);
    goto LABEL_11;
  }

  if (*(v2 + 105) == 1)
  {
    v70 = v16;
    v71 = v15;

    v18 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v18, &v70);

    return 0;
  }

  v51 = *(v2 + 96);
  v52 = *(v2 + 104);
  *(v2 + 96) = 2;
  v47 = 1;
  *(v2 + 104) = 1;
  v70 = v51;
  LOBYTE(v71) = v52;

  __RKEntityAction.state.didset(&v70);
  v70 = v16;
  v71 = v15;
  v53 = static os_log_type_t.error.getter();
  specialized InteractionsLogger.log(_:_:)(v53, &v70);
LABEL_12:

  return v47;
}

uint64_t closure #1 in __RKEntityPlayTimelineAction.perform(with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    if (*(v4 + 192))
    {
      outlined init with copy of __REAssetService(v4 + 168, &v5);
      __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(&v5);
    }

    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v5, v4 + 168);
    swift_endAccess();
    swift_beginAccess();
    if (*(v4 + 232))
    {
      outlined init with copy of __REAssetService(v4 + 208, &v5);
      __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(&v5);
    }

    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v5, v4 + 208);
    swift_endAccess();
    __RKEntityPlayTimelineAction.stopAnimations(targetEntity:)(a2);
  }

  return result;
}

uint64_t closure #2 in __RKEntityPlayTimelineAction.perform(with:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 160);
    if (v5 && *(v2 + 16) == *(v5 + 16) && *(v2 + 32) == *(v5 + 32))
    {
      swift_beginAccess();
      v6 = *(v4 + 96);
      v7 = *(v4 + 104);
      *(v4 + 96) = 2;
      *(v4 + 104) = 1;
      v8 = v6;
      v9 = v7;

      __RKEntityAction.state.didset(&v8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t __RKEntityPlayTimelineAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];
  v8 = v1[17];
  v10 = v1[18];
  v9 = v1[19];
  v11 = swift_allocObject();
  *(v11 + 160) = 0u;
  *(v11 + 176) = 0u;
  *(v11 + 192) = 0u;
  *(v11 + 208) = 0u;
  *(v11 + 224) = 0u;
  *(v11 + 240) = 0;
  *(v11 + 112) = v5;
  *(v11 + 120) = v6;
  *(v11 + 128) = v7;
  *(v11 + 136) = v8;
  *(v11 + 144) = v10;
  *(v11 + 152) = v9;

  v12 = __RKEntityAction.init(targetEntity:)(0);
  swift_beginAccess();
  *(v12 + 16) = v4;

  swift_beginAccess();
  *(v12 + 105) = 0;

  a1[3] = v3;
  *a1 = v12;
  return result;
}

uint64_t __RKEntityPlayTimelineAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    v5 = v1[14];
    v6 = v1[15];
    v7 = v1[16];
    v8 = v1[17];
    v10 = v1[18];
    v9 = v1[19];
    v11 = swift_allocObject();
    *(v11 + 160) = 0u;
    *(v11 + 176) = 0u;
    *(v11 + 192) = 0u;
    *(v11 + 208) = 0u;
    *(v11 + 224) = 0u;
    *(v11 + 240) = 0;
    *(v11 + 112) = v5;
    *(v11 + 120) = v6;
    *(v11 + 128) = v7;
    *(v11 + 136) = v8;
    *(v11 + 144) = v10;
    *(v11 + 152) = v9;

    v12 = __RKEntityAction.init(targetEntity:)(0);
    swift_beginAccess();
    *(v12 + 16) = v3;

    swift_beginAccess();
    result = v12;
    *(v12 + 105) = 0;
  }

  else
  {
    __RKEntityPlayTimelineAction.copy(with:)(v14);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __RKEntityPlayTimelineAction.__ivar_destroyer()
{

  outlined destroy of BodyTrackingComponent?(v0 + 168, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return outlined destroy of BodyTrackingComponent?(v0 + 208, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
}

uint64_t __RKEntityPlayTimelineAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 168, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 208, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntityPlayTimelineAction.__deallocating_deinit()
{
  __RKEntityPlayTimelineAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined copy of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined copy of AnimationLibraryComponent?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result != 1)
  {

    outlined copy of String??(a3, a4);
  }

  return result;
}

uint64_t partial apply for closure #1 in __RKEntityPlayTimelineAction.resolvedAnimationLibraryKey.getter@<X0>(uint64_t *a2@<X8>)
{
  result = REKeyValueComponentGetStringValue();
  if (result)
  {
    result = String.init(cString:)();
  }

  else
  {
    v4 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

char *HasModel.jointNames.getter()
{
  RESkeletalPoseComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
  if (!RESkeletalPoseComponentGetSkeletonCount())
  {
    return MEMORY[0x1E69E7CC0];
  }

  JointCount = RESkeletalPoseComponentGetJointCount();
  if (!JointCount)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = JointCount;
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, JointCount & ~(JointCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = result;
    v4 = 0;
    do
    {
      RESkeletalPoseComponentGetJointName();
      v5 = String.init(cString:)();
      v8 = *(v3 + 2);
      v7 = *(v3 + 3);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v3);
        v6 = v11;
        v3 = v12;
        v5 = v10;
      }

      ++v4;
      *(v3 + 2) = v8 + 1;
      v9 = &v3[16 * v8];
      *(v9 + 4) = v5;
      *(v9 + 5) = v6;
    }

    while (v1 != v4);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t HasModel.jointTransforms.getter()
{
  RESkeletalPoseComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  if (!RESkeletalPoseComponentCanAccessPostUpdatePoses())
  {
    RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
    if (RESkeletalPoseComponentGetSkeletonCount())
    {
      result = RESkeletalPoseComponentGetJointCount();
      if (result)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          v1 = result;
          v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v2 + 16) = v1;
          RESkeletalPoseComponentGetJointTransforms();
          goto LABEL_10;
        }

        goto LABEL_13;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (!RESkeletalPoseComponentPostUpdatePoseCount())
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = RESkeletalPoseComponentPostUpdatePoseJointCount();
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v2 + 16) = v1;
    PostUpdatePoseJoints = RESkeletalPoseComponentGetPostUpdatePoseJoints();
    memcpy((v2 + 32), PostUpdatePoseJoints, 48 * v1);
LABEL_10:
    result = v2;
    *(v2 + 16) = v1;
    return result;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void HasModel.jointTransforms.setter(__n128 *a1)
{
  v1 = a1[1].n128_i64[0];
  if (!v1)
  {
    goto LABEL_16;
  }

  RESkeletalPoseComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    goto LABEL_16;
  }

  if (RESkeletalPoseComponentCanAccessPostUpdatePoses())
  {
    if (RESkeletalPoseComponentPostUpdatePoseCount() && v1 == RESkeletalPoseComponentPostUpdatePoseJointCount())
    {
      RESkeletalPoseComponentSetPostUpdatePoseJoints();
    }

    goto LABEL_16;
  }

  RESkeletalPoseComponentEnsureSkeletalPosesInitialized();
  if (!RESkeletalPoseComponentGetSkeletonCount() || ((JointCount = RESkeletalPoseComponentGetJointCount(), v1 >= JointCount) ? (v4 = JointCount) : (v4 = v1), !JointCount))
  {
LABEL_16:

    return;
  }

  if (JointCount <= v1)
  {
    RESkeletalPoseComponentSetJointTransforms();
  }

  else
  {
    v5 = 0;
    v6 = a1 + 4;
    do
    {
      v7 = v5 + 1;
      RESkeletalPoseComponentSetJointTransform();
      v6 += 3;
      v5 = v7;
    }

    while (v4 != v7);
  }

  RENetworkMarkComponentDirty();
}

void (*HasModel.jointTransforms.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(__n128 **a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = HasModel.jointTransforms.getter();
  return HasModel.jointTransforms.modify;
}

void HasModel.jointTransforms.modify(__n128 **a1, char a2)
{
  if (a2)
  {

    HasModel.jointTransforms.setter(v2);
  }

  else
  {
    HasModel.jointTransforms.setter(*a1);
  }
}

void static BlendWeight.fromCore(blendTreeCore:nodeIndex:)(uint64_t a3@<X8>)
{
  RETimelineDefinitionBlendTreeNodeGetWeight();
  v5 = v4;
  if (!RETimelineDefinitionBlendTreeNodeGetWeightPath())
  {
    goto LABEL_8;
  }

  v6 = String.init(cString:)();
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

LABEL_8:
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = v5;
    *(a3 + 24) = 0;
    return;
  }

  static InternalBindPath.targetFromPath(_:)(v6, v7, v12);

  v9 = v12[1];
  if (v13 == 1)
  {
    *a3 = v12[0];
    *(a3 + 8) = v9;
    *(a3 + 16) = v5;
    v10 = 1;
  }

  else
  {
    v11 = v13 | (v5 << 32);
    *a3 = v12[0];
    *(a3 + 8) = v9;
    *(a3 + 16) = v11;
    v10 = 2;
  }

  *(a3 + 24) = v10;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BlendTreeNodeInternal.appendToBlendTreeDefinition(blendTreeDefinition:)(Swift::OpaquePointer blendTreeDefinition)
{
  v3 = v2;
  v4 = v1;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = (*(v3 + 8))(blendTreeDefinition._rawValue, &v12, v4, v3);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

void _s17RealityFoundation21BlendTreeNodeInternalPAAE8fromCore05blenddH09nodeIndexAA0cdE0_ps13OpaquePointerV_SitFZAA0cdcE0V_Tt2g5(uint64_t a1@<X0>, uint64_t *x8_0@<X8>)
{
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v37 = v5;
  v6 = RETimelineDefinitionBlendTreeNodeCount();
  if (v6 < 0)
  {
    goto LABEL_36;
  }

  v7 = v6;
  if (!v6)
  {
LABEL_29:
    _s17RealityFoundation21BlendTreeNodeInternalPAAE8fromCore05blenddH09nodeIndex0iE7NameMapAA0cdE0_ps13OpaquePointerV_SiSDySSSiGztFZAA0cdcE0V_Tt3g5(a1, &v37, x8_0);

    return;
  }

  v8 = 0;
  while (1)
  {
    if (!RETimelineDefinitionBlendTreeNodeGetName())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0xE000000000000000);
      v25 = v5[2];
      v26 = (v24 & 1) == 0;
      v18 = __OFADD__(v25, v26);
      v27 = v25 + v26;
      if (v18)
      {
        goto LABEL_33;
      }

      v28 = v24;
      if (v5[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = v23;
          specialized _NativeDictionary.copy()();
          v23 = v34;
          if ((v28 & 1) == 0)
          {
LABEL_26:
            v5[(v23 >> 6) + 8] |= 1 << v23;
            v35 = (v5[6] + 16 * v23);
            *v35 = 0;
            v35[1] = 0xE000000000000000;
            *(v5[7] + 8 * v23) = v8;
            v36 = v5[2];
            v18 = __OFADD__(v36, 1);
            v32 = v36 + 1;
            if (v18)
            {
              goto LABEL_35;
            }

LABEL_27:
            v5[2] = v32;
            goto LABEL_5;
          }

          goto LABEL_22;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0xE000000000000000);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_37;
        }
      }

      if ((v28 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_22:
      *(v5[7] + 8 * v23) = v8;
      goto LABEL_5;
    }

    v10 = String.init(cString:)();
    v12 = v11;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
    v16 = v5[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v5[3] >= v19)
    {
      if ((v13 & 1) == 0)
      {
        v33 = v14;
        specialized _NativeDictionary.copy()();
        v14 = v33;
        if ((v20 & 1) == 0)
        {
LABEL_17:
          v5[(v14 >> 6) + 8] |= 1 << v14;
          v30 = (v5[6] + 16 * v14);
          *v30 = v10;
          v30[1] = v12;
          *(v5[7] + 8 * v14) = v8;
          v31 = v5[2];
          v18 = __OFADD__(v31, 1);
          v32 = v31 + 1;
          if (v18)
          {
            goto LABEL_34;
          }

          goto LABEL_27;
        }

        goto LABEL_4;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, v13);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v12);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_37;
      }
    }

    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_4:
    v9 = v14;

    *(v5[7] + 8 * v9) = v8;
LABEL_5:
    if (v7 == ++v8)
    {
      v37 = v5;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void _s17RealityFoundation21BlendTreeNodeInternalPAAE8fromCore05blenddH09nodeIndex0iE7NameMapAA0cdE0_ps13OpaquePointerV_SiSDySSSiGztFZAA0cdcE0V_Tt3g5(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  if (RETimelineDefinitionBlendTreeNodeGetName())
  {
    v7 = String.init(cString:)();
    specialized Dictionary._Variant.removeValue(forKey:)(v7, v8);
    v10 = v9;

    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (RETimelineDefinitionBlendTreeNodeIsClipSource())
  {
    a4[3] = &type metadata for BlendTreeSourceNode;
    a4[4] = &protocol witness table for BlendTreeSourceNode;
    v11 = swift_allocObject();
    *a4 = v11;
    BlendTreeSourceNode.init(core:nodeIndex:)(v11 + 16);
    return;
  }

  if (!RETimelineDefinitionBlendTreeNodeIsBlend())
  {
LABEL_8:
    a4[3] = &type metadata for BlendTreeInvalidNode;
    a4[4] = &protocol witness table for BlendTreeInvalidNode;
    v16 = swift_allocObject();
    *a4 = v16;
    *(v16 + 16) = 0x64696C61766E69;
    *(v16 + 24) = 0xE700000000000000;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 32) = 0;
    *(v16 + 56) = 0;
  }

  else
  {
    a4[3] = &type metadata for BlendTreeBlendNode;
    a4[4] = &protocol witness table for BlendTreeBlendNode;
    v12 = swift_allocObject();
    *a4 = v12;
    if (RETimelineDefinitionBlendTreeNodeGetName())
    {
      v13 = String.init(cString:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    IsBlendAdditive = RETimelineDefinitionBlendTreeNodeIsBlendAdditive();
    static BlendWeight.fromCore(blendTreeCore:nodeIndex:)(&v37);
    v18 = v37;
    v35 = v38;
    v34 = v39;
    v19 = RETimelineDefinitionBlendTreeConnectionCount();
    if (v19 < 0)
    {
      __break(1u);
    }

    else
    {
      v20 = v19;
      v32 = IsBlendAdditive;
      v33 = v12;
      if (v19)
      {
        v21 = 0;
        v36 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (RETimelineDefinitionBlendTreeConnectionGetTarget())
          {
            if (v13 == String.init(cString:)() && v15 == v22)
            {

LABEL_20:
              if (RETimelineDefinitionBlendTreeConnectionGetSource())
              {
                v24 = String.init(cString:)();
                v26 = *a3;
                if (*(*a3 + 16))
                {
                  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
                  v29 = v28;

                  if (v29)
                  {
                    _s17RealityFoundation21BlendTreeNodeInternalPAAE8fromCore05blenddH09nodeIndex0iE7NameMapAA0cdE0_ps13OpaquePointerV_SiSDySSSiGztFZAA0cdcE0V_Tt3g5(a1, *(*(v26 + 56) + 8 * v27), a3, &v37);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
                    }

                    v31 = v36[2];
                    v30 = v36[3];
                    if (v31 >= v30 >> 1)
                    {
                      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v36);
                    }

                    v36[2] = v31 + 1;
                    outlined init with take of ForceEffectBase(&v37, &v36[5 * v31 + 4]);
                  }
                }

                else
                {
                }
              }

              goto LABEL_14;
            }

            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v23)
            {
              goto LABEL_20;
            }
          }

LABEL_14:
          if (v20 == ++v21)
          {
            goto LABEL_29;
          }
        }
      }

      v36 = MEMORY[0x1E69E7CC0];
LABEL_29:
      *(v33 + 16) = v36;
      *(v33 + 24) = v32;
      *(v33 + 32) = v13;
      *(v33 + 40) = v15;
      *(v33 + 48) = v18;
      *(v33 + 64) = v35;
      *(v33 + 72) = v34;
    }
  }
}

uint64_t BlendTreeSourceNode.init(core:nodeIndex:)@<X0>(uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  Name = RETimelineDefinitionBlendTreeNodeGetName();
  if (Name)
  {
    Name = String.init(cString:)();
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  *(a3 + 40) = Name;
  *(a3 + 48) = v5;
  static BlendWeight.fromCore(blendTreeCore:nodeIndex:)(&v17);
  v6 = v18;
  v7 = v19;
  *(a3 + 56) = v17;
  *(a3 + 72) = v6;
  *(a3 + 80) = v7;
  result = RETimelineDefinitionCreateBlendTreeNodeSourceRef();
  if (result)
  {
    v9 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v9 + 120, &v17);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v17, v19);
    (*(v11 + 32))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
    if (TimelineAsset)
    {
      v13 = TimelineAsset;
      type metadata accessor for AnimationResource();
      v14 = swift_allocObject();
      v14[2] = v13;
      if (REAssetHandleAssetType() == 11)
      {
        REAnimationSceneAssetGetRootTimeline();
      }

      v15 = REAnimationAssetGetName();
      if (v15)
      {
        v15 = String.init(cString:)();
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      v14[3] = v15;
      v14[4] = v16;
      RERetain();
      REAssetSetSwiftObject();
      AnimationResource.definition.getter(&v17);

      outlined assign with take of AnimationDefinition?(&v17, a3);
      RERelease();
    }

    return RERelease();
  }

  return result;
}

__n128 BlendTreeSourceNode.init(source:name:weight:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *a4;
  v9 = a4[1].n128_u64[0];
  v10 = a4[1].n128_u8[8];
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0;
  outlined destroy of BodyTrackingComponent?(a5, &_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
  outlined init with take of ForceEffectBase(a1, a5);
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  result = v12;
  *(a5 + 56) = v12;
  *(a5 + 72) = v9;
  *(a5 + 80) = v10;
  return result;
}

uint64_t BlendTreeSourceNode.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void BlendTreeSourceNode.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t BlendTreeSourceNode.weight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 80);
  *(a1 + 24) = v5;
  return outlined copy of BlendWeight(v2, v3, v4, v5);
}

__n128 BlendTreeSourceNode.weight.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  outlined consume of BlendWeight(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = v5;
  *(v1 + 56) = v5;
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BlendTreeSourceNode.appendToBlendTreeDefinition(blendTreeDefinition:duplicateNameMap:)(Swift::OpaquePointer blendTreeDefinition, Swift::OpaquePointer *duplicateNameMap)
{
  v4 = v2;
  v7 = *(v2 + 40);
  v6 = *(v2 + 48);
  v35 = v7;
  v36 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
  }

  else
  {
    v7 = 0x656372756F53;
    v6 = 0xE600000000000000;
    v35 = 0x656372756F53;
    v36 = 0xE600000000000000;
  }

  rawValue = duplicateNameMap->_rawValue;
  if (*(duplicateNameMap->_rawValue + 2) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6), (v11 & 1) != 0))
  {
    v12 = *(rawValue[7] + 8 * v10);
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    v34[0] = 45;
    v34[1] = 0xE100000000000000;
    *&v30 = v12 + 1;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v14);

    MEMORY[0x1C68F3410](45, 0xE100000000000000);

    v7 = v35;
    v6 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = duplicateNameMap->_rawValue;
    v16 = v13;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = duplicateNameMap->_rawValue;
    v16 = 1;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v7, v6, isUniquelyReferenced_nonNull_native);
  duplicateNameMap->_rawValue = v34[0];
  outlined init with copy of [String : String](v4, &v30, &_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
  if (!v32)
  {

    outlined destroy of BodyTrackingComponent?(&v30, &_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v17 = 0xD000000000000031;
    *(v17 + 8) = 0x80000001C18E27C0;
    *(v17 + 16) = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  outlined init with take of ForceEffectBase(&v30, v34);
  type metadata accessor for AnimationResource();
  static AnimationResource.generate(with:)(v34);
  if (!v3)
  {

    v20 = REAssetHandleAssetType();
    if (v20 == 11)
    {
      RootTimeline = REAnimationSceneAssetGetRootTimeline();

      if (RootTimeline)
      {
LABEL_20:
        v22 = RETimelineDefinitionCreateFromTimeline();

        if (v22)
        {
          v23 = specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          outlined init with copy of __REAssetService(v23 + 120, &v30);
          v24 = v32;
          v25 = v33;
          __swift_project_boxed_opaque_existential_1(&v30, v32);
          (*(v25 + 32))(v24, v25);
          __swift_destroy_boxed_opaque_existential_1(&v30);
          if (*(v4 + 80))
          {
            v26 = *(v4 + 64);
            v27 = *(v4 + 72);
            if (*(v4 + 80) == 1)
            {
              *&v30 = *(v4 + 56);
              *(&v30 + 1) = v26;
              v31 = 1;
            }

            else
            {
              *&v30 = *(v4 + 56);
              *(&v30 + 1) = v26;
              v31 = v27;
            }

            specialized static InternalBindPath.pathFromTarget(_:_:)(&v30, 1);
          }

          String.utf8CString.getter();
          String.utf8CString.getter();
          RETimelineDefinitionBlendTreeAddTimelineSource();

          __swift_destroy_boxed_opaque_existential_1(v34);

          RERelease();
        }

        else
        {

          lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
          swift_allocError();
          *v28 = 0xD000000000000038;
          *(v28 + 8) = 0x80000001C18E2800;
          *(v28 + 16) = 0;
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_1(v34);
        }

        goto LABEL_15;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v20 == 5)
    {

      goto LABEL_20;
    }

LABEL_30:

    __break(1u);
    goto LABEL_31;
  }

  __swift_destroy_boxed_opaque_existential_1(v34);

LABEL_15:
  v18 = v7;
  v19 = v6;
LABEL_32:
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t protocol witness for BlendTreeNode.name.getter in conformance BlendTreeSourceNode()
{
  v1 = *(v0 + 40);

  return v1;
}

void protocol witness for BlendTreeNode.name.setter in conformance BlendTreeSourceNode(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t protocol witness for BlendTreeNode.weight.getter in conformance BlendTreeSourceNode@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 80);
  *(a1 + 24) = v5;
  return outlined copy of BlendWeight(v2, v3, v4, v5);
}

__n128 protocol witness for BlendTreeNode.weight.setter in conformance BlendTreeSourceNode(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  outlined consume of BlendWeight(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = v5;
  *(v1 + 56) = v5;
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return result;
}

double protocol witness for BlendTreeNodeInternal.duration.getter in conformance BlendTreeSourceNode()
{
  outlined init with copy of [String : String](v0, &v5, &_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
  if (v6)
  {
    outlined init with take of ForceEffectBase(&v5, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(v2 + 272))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v5, &_s17RealityFoundation19AnimationDefinition_pSgMd, &_s17RealityFoundation19AnimationDefinition_pSgMR);
    return 0.0;
  }

  return v3;
}

__n128 BlendTreeBlendNode.init(sources:name:weight:isAdditive:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X3>, unsigned __int8 a5@<W4>, __n128 *a6@<X8>)
{
  v6 = a4[1].n128_u64[0];
  v7 = a4[1].n128_u8[8];
  a6->n128_u64[0] = a1;
  a6->n128_u8[8] = a5;
  a6[1].n128_u64[0] = a2;
  a6[1].n128_u64[1] = a3;
  result = *a4;
  a6[2] = *a4;
  a6[3].n128_u64[0] = v6;
  a6[3].n128_u8[8] = v7;
  return result;
}

uint64_t BlendTreeBlendNode.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void BlendTreeBlendNode.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t BlendTreeBlendNode.weight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 56);
  *(a1 + 24) = v5;
  return outlined copy of BlendWeight(v2, v3, v4, v5);
}

__n128 BlendTreeBlendNode.weight.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  outlined consume of BlendWeight(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  result = v5;
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BlendTreeBlendNode.appendToBlendTreeDefinition(blendTreeDefinition:duplicateNameMap:)(Swift::OpaquePointer blendTreeDefinition, Swift::OpaquePointer *duplicateNameMap)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v8 = v2[2];
  v7 = v2[3];
  v42 = v2[4];
  v39 = v2[5];
  v9 = v2[6];
  v10 = *(v2 + 56);
  v57 = v8;
  v58 = v7;
  v11 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
  }

  else
  {
    v8 = 0x646E656C42;
    v7 = 0xE500000000000000;
    v57 = 0x646E656C42;
    v58 = 0xE500000000000000;
  }

  rawValue = duplicateNameMap->_rawValue;
  if (*(duplicateNameMap->_rawValue + 2) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7), (v14 & 1) != 0))
  {
    v47 = v5;
    v15 = duplicateNameMap;
    v16 = *(rawValue[7] + 8 * v13);
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v52 = 45;
    v53 = 0xE100000000000000;
    v51[0] = v16 + 1;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v18);

    MEMORY[0x1C68F3410](45, 0xE100000000000000);

    v8 = v57;
    v7 = v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v15->_rawValue;
    v20 = v17;
    duplicateNameMap = v15;
    v13 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v57, v58, isUniquelyReferenced_nonNull_native);
    v15->_rawValue = v52;
    v5 = v47;
  }

  else
  {
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v52 = duplicateNameMap->_rawValue;
    v13 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v8, v7, v21);
    duplicateNameMap->_rawValue = v52;
  }

  v38 = v9;
  v40 = v10;
  v41 = v6;
  v22 = *(v5 + 16);
  if (v22)
  {
    v45 = duplicateNameMap;
    v23 = 0;
    v48 = MEMORY[0x1E69E7CC0];
    v24 = v5 + 32;
    v43 = blendTreeDefinition._rawValue;
    v44 = v7;
    while (v23 < *(v5 + 16))
    {
      outlined init with copy of __REAssetService(v24, v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13BlendTreeNode_pMd, &_s17RealityFoundation13BlendTreeNode_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21BlendTreeNodeInternal_pMd, &_s17RealityFoundation21BlendTreeNodeInternal_pMR);
      if (swift_dynamicCast())
      {
        v25 = v5;
        v7 = v8;
        outlined init with take of ForceEffectBase(v49, &v52);
        v26 = v55;
        v8 = v56;
        __swift_project_boxed_opaque_existential_1(&v52, v55);
        v27 = (*(v8 + 8))(blendTreeDefinition._rawValue, v45, v26, v8);
        if (v46)
        {

          __swift_destroy_boxed_opaque_existential_1(&v52);
          goto LABEL_38;
        }

        v29 = v27;
        v30 = v28;
        v31 = v48;
        v46 = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
        }

        v33 = *(v31 + 2);
        v32 = *(v31 + 3);
        v48 = v31;
        if (v33 >= v32 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
        }

        *(v48 + 2) = v33 + 1;
        v34 = &v48[16 * v33];
        *(v34 + 4) = v29;
        *(v34 + 5) = v30;
        v13 = __swift_destroy_boxed_opaque_existential_1(&v52);
        v8 = v7;
        blendTreeDefinition._rawValue = v43;
        v7 = v44;
        v5 = v25;
      }

      else
      {
        v50 = 0;
        memset(v49, 0, sizeof(v49));
        v13 = outlined destroy of BodyTrackingComponent?(v49, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMd, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMR);
      }

      ++v23;
      v24 += 40;
      if (v22 == v23)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_24:
  if (v40)
  {
    v52 = v42;
    v53 = v39;
    if (v40 == 1)
    {
      v54 = 1;
    }

    else
    {
      v54 = v38;
    }

    specialized static InternalBindPath.pathFromTarget(_:_:)(&v52, 1);
  }

  String.utf8CString.getter();
  String.utf8CString.getter();
  if (v41)
  {
    RETimelineDefinitionBlendTreeAddAdditiveBlend();
  }

  else
  {
    RETimelineDefinitionBlendTreeAddBlend();
  }

  v35 = *(v48 + 2);
  if (v35)
  {
    v36 = v48 + 40;
    do
    {
      String.utf8CString.getter();
      String.utf8CString.getter();
      RETimelineDefinitionBlendTreeAddConnection();

      v36 += 16;
      --v35;
    }

    while (v35);
  }

LABEL_38:
  v13 = v8;
  v14 = v7;
LABEL_41:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

double BlendTreeBlendNode.duration.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = *v0 + 32;
  v3 = 0.0;
  do
  {
    outlined init with copy of __REAssetService(v2, v14);
    outlined init with copy of __REAssetService(v14, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13BlendTreeNode_pMd, &_s17RealityFoundation13BlendTreeNode_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21BlendTreeNodeInternal_pMd, &_s17RealityFoundation21BlendTreeNodeInternal_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of ForceEffectBase(v8, v11);
      v4 = v12;
      v5 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v6 = (*(v5 + 16))(v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v14);
      if (v3 <= v6)
      {
        v3 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      outlined destroy of BodyTrackingComponent?(v8, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMd, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMR);
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

void protocol witness for BlendTreeNode.name.setter in conformance BlendTreeBlendNode(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t protocol witness for BlendTreeNode.weight.getter in conformance BlendTreeBlendNode@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 56);
  *(a1 + 24) = v5;
  return outlined copy of BlendWeight(v2, v3, v4, v5);
}

__n128 protocol witness for BlendTreeNode.weight.setter in conformance BlendTreeBlendNode(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  outlined consume of BlendWeight(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  result = v5;
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t BlendTreeInvalidNode.name.getter()
{
  v1 = *v0;

  return v1;
}

void BlendTreeInvalidNode.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t BlendTreeInvalidNode.weight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 40);
  *(a1 + 24) = v5;
  return outlined copy of BlendWeight(v2, v3, v4, v5);
}

__n128 BlendTreeInvalidNode.weight.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  outlined consume of BlendWeight(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = v5;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t protocol witness for BlendTreeNode.weight.getter in conformance BlendTreeInvalidNode@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 40);
  *(a1 + 24) = v5;
  return outlined copy of BlendWeight(v2, v3, v4, v5);
}

__n128 protocol witness for BlendTreeNode.weight.setter in conformance BlendTreeInvalidNode(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  outlined consume of BlendWeight(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = v5;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t blend(_:_:name:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation13BlendTreeNode_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation13BlendTreeNode_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1897FC0;
  outlined init with copy of __REAssetService(a1, v12 + 32);
  outlined init with copy of __REAssetService(a2, v12 + 72);
  a6[3] = &type metadata for BlendTreeBlendNode;
  a6[4] = &protocol witness table for BlendTreeBlendNode;
  v13 = swift_allocObject();
  *a6 = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = a5;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 48) = 1065353216;
  *(v13 + 72) = 0;
}

uint64_t blend(sources:name:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  a5[3] = &type metadata for BlendTreeBlendNode;
  a5[4] = &protocol witness table for BlendTreeBlendNode;
  v10 = swift_allocObject();
  *a5 = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a4;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 48) = 1065353216;
  *(v10 + 72) = 0;
}

uint64_t BlendTreeAnimation.init(_:name:isAdditive:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, int a6@<W5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, float a12@<S2>, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  v29 = a5[1];
  v30 = *a5;
  v28 = *(a5 + 16);
  v23 = *a7;
  v31 = *a8;
  *(a9 + 224) = 0u;
  *(a9 + 240) = 0;
  *(a9 + 208) = 0u;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(a9 + 56) = a13;
  *(a9 + 64) = a14 & 1;
  *(a9 + 65) = 0;
  *(a9 + 72) = a15;
  *(a9 + 80) = a16 & 1;
  *(a9 + 81) = 0;
  *(a9 + 88) = a17;
  *(a9 + 96) = a18 & 1;
  *(a9 + 97) = 0;
  *(a9 + 104) = a10;
  *(a9 + 112) = 0;
  *(a9 + 120) = a11;
  *(a9 + 128) = 0;
  *(a9 + 132) = a12;
  *(a9 + 136) = 0;
  *(a9 + 137) = v23;
  *(a9 + 144) = 0;
  *(a9 + 152) = a2;
  *(a9 + 160) = a3;
  *(a9 + 168) = xmmword_1C1898800;
  *(a9 + 184) = 0;
  *(a9 + 188) = 0;
  *(a9 + 192) = 0;
  *(a9 + 194) = 0;
  *(a9 + 200) = v24;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = v30;
  *(a9 + 24) = v29;
  *(a9 + 32) = v28;
  *(a9 + 33) = v35;
  *(a9 + 35) = v36;
  *(a9 + 36) = a6;
  *(a9 + 40) = 0;
  *(a9 + 41) = v31;
  *(a9 + 42) = 0;
  *(a9 + 43) = a4;
  *(a9 + 48) = v25;
  outlined destroy of BodyTrackingComponent?(a9 + 208, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);

  return outlined init with take of ForceEffectBase(a1, a9 + 208);
}

void specialized BlendTreeAnimation.root.getter(uint64_t *a1@<X8>)
{
  outlined init with copy of [String : String](v1 + 208, &v59, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
  if (v60)
  {
    outlined init with take of ForceEffectBase(&v59, v61);
    outlined init with take of ForceEffectBase(v61, a1);
    return;
  }

  outlined destroy of BodyTrackingComponent?(&v59, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
  v3 = *(*(v1 + 48) + 16);
  if (!v3)
  {
    goto LABEL_59;
  }

  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = RETimelineDefinitionBlendTreeNodeCount();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v5;
    if (v5)
    {
      for (i = 0; v6 != i; ++i)
      {
        if (!RETimelineDefinitionBlendTreeNodeGetName())
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v61[0] = v4;
          v22 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0xE000000000000000);
          v24 = *(v4 + 16);
          v25 = (v23 & 1) == 0;
          v17 = __OFADD__(v24, v25);
          v26 = v24 + v25;
          if (v17)
          {
            goto LABEL_62;
          }

          v27 = v23;
          if (*(v4 + 24) < v26)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
            v22 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0xE000000000000000);
            if ((v27 & 1) != (v28 & 1))
            {
              goto LABEL_67;
            }

            goto LABEL_24;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_24:
            v4 = *&v61[0];
            if ((v27 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v33 = v22;
            specialized _NativeDictionary.copy()();
            v22 = v33;
            v4 = *&v61[0];
            if ((v27 & 1) == 0)
            {
LABEL_29:
              *(v4 + 8 * (v22 >> 6) + 64) |= 1 << v22;
              v34 = (*(v4 + 48) + 16 * v22);
              *v34 = 0;
              v34[1] = 0xE000000000000000;
              *(*(v4 + 56) + 8 * v22) = i;
              v35 = *(v4 + 16);
              v17 = __OFADD__(v35, 1);
              v31 = v35 + 1;
              if (v17)
              {
                goto LABEL_64;
              }

              goto LABEL_30;
            }
          }

          *(*(v4 + 56) + 8 * v22) = i;
          continue;
        }

        v9 = String.init(cString:)();
        v11 = v10;
        v12 = swift_isUniquelyReferenced_nonNull_native();
        *&v61[0] = v4;
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
        v15 = *(v4 + 16);
        v16 = (v14 & 1) == 0;
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_61;
        }

        v19 = v14;
        if (*(v4 + 24) >= v18)
        {
          if ((v12 & 1) == 0)
          {
            v32 = v13;
            specialized _NativeDictionary.copy()();
            v13 = v32;
            if ((v19 & 1) == 0)
            {
LABEL_20:
              v4 = *&v61[0];
              *(*&v61[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
              v29 = (*(v4 + 48) + 16 * v13);
              *v29 = v9;
              v29[1] = v11;
              *(*(v4 + 56) + 8 * v13) = i;
              v30 = *(v4 + 16);
              v17 = __OFADD__(v30, 1);
              v31 = v30 + 1;
              if (v17)
              {
                goto LABEL_63;
              }

LABEL_30:
              *(v4 + 16) = v31;
              continue;
            }

            goto LABEL_7;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, v12);
          v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
          if ((v19 & 1) != (v20 & 1))
          {
            goto LABEL_67;
          }
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_7:
        v8 = v13;

        v4 = *&v61[0];
        *(*(*&v61[0] + 56) + 8 * v8) = i;
      }
    }

    v36 = RETimelineDefinitionBlendTreeConnectionCount();
    if (v36 < 0)
    {
      goto LABEL_66;
    }

    v37 = v36;
    if (v36)
    {
      v38 = 0;
      do
      {
        if (RETimelineDefinitionBlendTreeConnectionGetSource())
        {
          v39 = String.init(cString:)();
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
          v43 = v42;

          if (v43)
          {
            v44 = swift_isUniquelyReferenced_nonNull_native();
            *&v61[0] = v4;
            if (!v44)
            {
              specialized _NativeDictionary.copy()();
              v4 = *&v61[0];
            }

            specialized _NativeDictionary._delete(at:)(v41, v4);
          }
        }

        ++v38;
      }

      while (v37 != v38);
    }

    v45 = 1 << *(v4 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(v4 + 64);
    if (v47)
    {
      v48 = 0;
      v49 = __clz(__rbit64(v47));
      v50 = (v47 - 1) & v47;
      v51 = (v45 + 63) >> 6;
LABEL_48:
      v54 = *(*(v4 + 56) + 8 * v49);

      if (!v50)
      {
        goto LABEL_51;
      }

      do
      {
LABEL_49:
        while (1)
        {
          v55 = __clz(__rbit64(v50));
          v50 &= v50 - 1;
          v56 = *(*(v4 + 56) + 8 * (v55 | (v48 << 6)));
          if (v56 < v54)
          {
            break;
          }

          if (!v50)
          {
            goto LABEL_51;
          }
        }

        v54 = v56;
      }

      while (v50);
LABEL_51:
      while (1)
      {
        v57 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v57 >= v51)
        {

          _s17RealityFoundation21BlendTreeNodeInternalPAAE8fromCore05blenddH09nodeIndexAA0cdE0_ps13OpaquePointerV_SitFZAA0cdcE0V_Tt2g5(v3, a1);

          return;
        }

        v50 = *(v4 + 64 + 8 * v57);
        ++v48;
        if (v50)
        {
          v48 = v57;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v52 = 0;
    v51 = (v45 + 63) >> 6;
    while (v51 - 1 != v47)
    {
      v48 = v47 + 1;
      v53 = *(v4 + 8 * v47 + 72);
      v52 -= 64;
      ++v47;
      if (v53)
      {
        v50 = (v53 - 1) & v53;
        v49 = __clz(__rbit64(v53)) - v52;
        goto LABEL_48;
      }
    }

LABEL_59:
    a1[3] = &type metadata for BlendTreeInvalidNode;
    a1[4] = &protocol witness table for BlendTreeInvalidNode;
    v58 = swift_allocObject();
    *a1 = v58;
    *(v58 + 16) = 0x64696C61766E69;
    *(v58 + 24) = 0xE700000000000000;
    *(v58 + 40) = 0;
    *(v58 + 48) = 0;
    *(v58 + 32) = 0;
    *(v58 + 56) = 0;
    return;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void BlendTreeAnimation.root.getter(uint64_t *a1@<X8>)
{
  outlined init with copy of [String : String](v1 + 208, &v59, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
  if (v60)
  {
    outlined init with take of ForceEffectBase(&v59, v61);
    outlined init with take of ForceEffectBase(v61, a1);
    return;
  }

  outlined destroy of BodyTrackingComponent?(&v59, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
  v3 = *(*(v1 + 48) + 16);
  if (!v3)
  {
    goto LABEL_59;
  }

  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = RETimelineDefinitionBlendTreeNodeCount();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v5;
    if (v5)
    {
      for (i = 0; v6 != i; ++i)
      {
        if (!RETimelineDefinitionBlendTreeNodeGetName())
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v61[0] = v4;
          v22 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0xE000000000000000);
          v24 = *(v4 + 16);
          v25 = (v23 & 1) == 0;
          v17 = __OFADD__(v24, v25);
          v26 = v24 + v25;
          if (v17)
          {
            goto LABEL_62;
          }

          v27 = v23;
          if (*(v4 + 24) < v26)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
            v22 = specialized __RawDictionaryStorage.find<A>(_:)(0, 0xE000000000000000);
            if ((v27 & 1) != (v28 & 1))
            {
              goto LABEL_67;
            }

            goto LABEL_24;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_24:
            v4 = *&v61[0];
            if ((v27 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v33 = v22;
            specialized _NativeDictionary.copy()();
            v22 = v33;
            v4 = *&v61[0];
            if ((v27 & 1) == 0)
            {
LABEL_29:
              *(v4 + 8 * (v22 >> 6) + 64) |= 1 << v22;
              v34 = (*(v4 + 48) + 16 * v22);
              *v34 = 0;
              v34[1] = 0xE000000000000000;
              *(*(v4 + 56) + 8 * v22) = i;
              v35 = *(v4 + 16);
              v17 = __OFADD__(v35, 1);
              v31 = v35 + 1;
              if (v17)
              {
                goto LABEL_64;
              }

              goto LABEL_30;
            }
          }

          *(*(v4 + 56) + 8 * v22) = i;
          continue;
        }

        v9 = String.init(cString:)();
        v11 = v10;
        v12 = swift_isUniquelyReferenced_nonNull_native();
        *&v61[0] = v4;
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
        v15 = *(v4 + 16);
        v16 = (v14 & 1) == 0;
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_61;
        }

        v19 = v14;
        if (*(v4 + 24) >= v18)
        {
          if ((v12 & 1) == 0)
          {
            v32 = v13;
            specialized _NativeDictionary.copy()();
            v13 = v32;
            if ((v19 & 1) == 0)
            {
LABEL_20:
              v4 = *&v61[0];
              *(*&v61[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
              v29 = (*(v4 + 48) + 16 * v13);
              *v29 = v9;
              v29[1] = v11;
              *(*(v4 + 56) + 8 * v13) = i;
              v30 = *(v4 + 16);
              v17 = __OFADD__(v30, 1);
              v31 = v30 + 1;
              if (v17)
              {
                goto LABEL_63;
              }

LABEL_30:
              *(v4 + 16) = v31;
              continue;
            }

            goto LABEL_7;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, v12);
          v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
          if ((v19 & 1) != (v20 & 1))
          {
            goto LABEL_67;
          }
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_7:
        v8 = v13;

        v4 = *&v61[0];
        *(*(*&v61[0] + 56) + 8 * v8) = i;
      }
    }

    v36 = RETimelineDefinitionBlendTreeConnectionCount();
    if (v36 < 0)
    {
      goto LABEL_66;
    }

    v37 = v36;
    if (v36)
    {
      v38 = 0;
      do
      {
        if (RETimelineDefinitionBlendTreeConnectionGetSource())
        {
          v39 = String.init(cString:)();
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
          v43 = v42;

          if (v43)
          {
            v44 = swift_isUniquelyReferenced_nonNull_native();
            *&v61[0] = v4;
            if (!v44)
            {
              specialized _NativeDictionary.copy()();
              v4 = *&v61[0];
            }

            specialized _NativeDictionary._delete(at:)(v41, v4);
          }
        }

        ++v38;
      }

      while (v37 != v38);
    }

    v45 = 1 << *(v4 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(v4 + 64);
    if (v47)
    {
      v48 = 0;
      v49 = __clz(__rbit64(v47));
      v50 = (v47 - 1) & v47;
      v51 = (v45 + 63) >> 6;
LABEL_48:
      v54 = *(*(v4 + 56) + 8 * v49);

      if (!v50)
      {
        goto LABEL_51;
      }

      do
      {
LABEL_49:
        while (1)
        {
          v55 = __clz(__rbit64(v50));
          v50 &= v50 - 1;
          v56 = *(*(v4 + 56) + 8 * (v55 | (v48 << 6)));
          if (v56 < v54)
          {
            break;
          }

          if (!v50)
          {
            goto LABEL_51;
          }
        }

        v54 = v56;
      }

      while (v50);
LABEL_51:
      while (1)
      {
        v57 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v57 >= v51)
        {

          _s17RealityFoundation21BlendTreeNodeInternalPAAE8fromCore05blenddH09nodeIndexAA0cdE0_ps13OpaquePointerV_SitFZAA0cdcE0V_Tt2g5(v3, a1);

          return;
        }

        v50 = *(v4 + 64 + 8 * v57);
        ++v48;
        if (v50)
        {
          v48 = v57;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v52 = 0;
    v51 = (v45 + 63) >> 6;
    while (v51 - 1 != v47)
    {
      v48 = v47 + 1;
      v53 = *(v4 + 8 * v47 + 72);
      v52 -= 64;
      ++v47;
      if (v53)
      {
        v50 = (v53 - 1) & v53;
        v49 = __clz(__rbit64(v53)) - v52;
        goto LABEL_48;
      }
    }

LABEL_59:
    a1[3] = &type metadata for BlendTreeInvalidNode;
    a1[4] = &protocol witness table for BlendTreeInvalidNode;
    v58 = swift_allocObject();
    *a1 = v58;
    *(v58 + 16) = 0x64696C61766E69;
    *(v58 + 24) = 0xE700000000000000;
    *(v58 + 40) = 0;
    *(v58 + 48) = 0;
    *(v58 + 32) = 0;
    *(v58 + 56) = 0;
    return;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t BlendTreeAnimation.root.setter(__int128 *a1)
{
  outlined destroy of BodyTrackingComponent?(v1 + 208, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);

  return outlined init with take of ForceEffectBase(a1, v1 + 208);
}

void (*BlendTreeAnimation.root.modify(uint64_t **a1))(uint64_t *a1, char a2)
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
  BlendTreeAnimation.root.getter(v3);
  return BlendTreeAnimation.root.modify;
}

void BlendTreeAnimation.root.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    outlined init with copy of __REAssetService(*a1, v2 + 40);
    outlined destroy of BodyTrackingComponent?(v3 + 208, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
    outlined init with take of ForceEffectBase((v2 + 40), v3 + 208);
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v3 + 208, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
    outlined init with take of ForceEffectBase(v2, v3 + 208);
  }

  free(v2);
}

_BYTE *BlendTreeAnimation.createResource()(uint64_t a1)
{
  v3 = v1;
  v5 = *(*(a1 - 8) + 16);
  v5(v19, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVySfGMd, &_s17RealityFoundation18BlendTreeAnimationVySfGMR);
  if (swift_dynamicCast())
  {
    v6 = &_s17RealityFoundation18BlendTreeAnimationVySfGMd;
    v7 = &_s17RealityFoundation18BlendTreeAnimationVySfGMR;
    outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVySfGMd, &_s17RealityFoundation18BlendTreeAnimationVySfGMR);
    v5(v19, v3, a1);
    swift_dynamicCast();
    v8 = BlendTreeAnimation<>.createResource()();
LABEL_10:
    v10 = v8;
    outlined destroy of BodyTrackingComponent?(v18, v6, v7);
    return v10;
  }

  v5(v19, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVySdGMd, &_s17RealityFoundation18BlendTreeAnimationVySdGMR);
  if (swift_dynamicCast())
  {
    v6 = &_s17RealityFoundation18BlendTreeAnimationVySdGMd;
    v7 = &_s17RealityFoundation18BlendTreeAnimationVySdGMR;
    outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVySdGMd, &_s17RealityFoundation18BlendTreeAnimationVySdGMR);
    v5(v19, v3, a1);
    swift_dynamicCast();
    v9 = MEMORY[0x1E6998C50];
LABEL_9:
    v8 = BlendTreeAnimation<>.createResource()(v9);
    goto LABEL_10;
  }

  v5(v19, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMR);
  if (swift_dynamicCast())
  {
    v6 = &_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMd;
    v7 = &_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMR;
    outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD2VySfGGMR);
    v5(v19, v3, a1);
    swift_dynamicCast();
    v9 = MEMORY[0x1E6998C58];
    goto LABEL_9;
  }

  v5(v19, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMR);
  if (swift_dynamicCast())
  {
    v6 = &_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMd;
    v7 = &_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMR;
    outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD3VySfGGMR);
    v5(v19, v3, a1);
    swift_dynamicCast();
    v9 = MEMORY[0x1E6998C60];
    goto LABEL_9;
  }

  v5(v19, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMR);
  if (swift_dynamicCast())
  {
    outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMR);
    v5(v19, v3, a1);
    swift_dynamicCast();
    v10 = v18;
    v12 = BlendTreeAnimation<>.createResource()(MEMORY[0x1E6998C68]);
    if (!v2)
    {
      v10 = v12;
    }

    v13 = &_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMd;
    v14 = &_s17RealityFoundation18BlendTreeAnimationVys5SIMD4VySfGGMR;
  }

  else
  {
    v5(v19, v3, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMR);
    if (swift_dynamicCast())
    {
      outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMR);
      v5(v19, v3, a1);
      swift_dynamicCast();
      v10 = v18;
      v15 = BlendTreeAnimation<>.createResource()(MEMORY[0x1E6998C70]);
      if (!v2)
      {
        v10 = v15;
      }

      v13 = &_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMd;
      v14 = &_s17RealityFoundation18BlendTreeAnimationVySo10simd_quatfaGMR;
    }

    else
    {
      v5(v19, v3, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMR);
      if (swift_dynamicCast())
      {
        outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMR);
        v5(v19, v3, a1);
        swift_dynamicCast();
        v10 = v18;
        v16 = BlendTreeAnimation<>.createResource()(MEMORY[0x1E6998C78]);
        if (!v2)
        {
          v10 = v16;
        }

        v13 = &_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMd;
        v14 = &_s17RealityFoundation18BlendTreeAnimationVy0A3Kit9TransformVGMR;
      }

      else
      {
        v5(v19, v3, a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return 0;
        }

        outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMR);
        v5(v19, v3, a1);
        swift_dynamicCast();
        v10 = v18;
        v17 = BlendTreeAnimation<>.createResource()(MEMORY[0x1E6998CB0]);
        if (!v2)
        {
          v10 = v17;
        }

        v13 = &_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMd;
        v14 = &_s17RealityFoundation18BlendTreeAnimationVyAA15JointTransformsVGMR;
      }
    }
  }

  outlined destroy of BodyTrackingComponent?(v18, v13, v14);
  return v10;
}

void *BlendTreeAnimation<>.createResource()()
{
  if (!*(v0 + 8))
  {
    if (*(v0 + 32) == 255 && *(v0 + 40) != 0 && *(v0 + 42) != 0 && *(v0 + 43) == 2)
    {
      outlined init with copy of [String : String](v0 + 208, v12, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
      v5 = v13;
      outlined destroy of BodyTrackingComponent?(v12, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
      if (!v5)
      {
        v11._rawValue = 0;
        return specialized BlendTreeAnimation.createResource(timelineDefinition:)(v11);
      }
    }

    if (*(*(v0 + 48) + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  FloatBlendTree = RETimelineDefinitionCreateFloatBlendTree();

  v7._rawValue = FloatBlendTree;
  v8 = specialized BlendTreeAnimation.createResource(timelineDefinition:)(v7);
  if (v1)
  {
    return RERelease();
  }

  v10 = v8;
  RERelease();
  return v10;
}

void *BlendTreeAnimation<>.createResource()(uint64_t (*a1)(uint64_t))
{
  if (!*(v1 + 8))
  {
    if (*(v1 + 32) == 255 && *(v1 + 40) != 0 && *(v1 + 42) != 0 && *(v1 + 43) == 2)
    {
      outlined init with copy of [String : String](v1 + 208, v15, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
      v7 = v16;
      outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation13BlendTreeNode_pSgMd, &_s17RealityFoundation13BlendTreeNode_pSgMR);
      if (!v7)
      {
        v14._rawValue = 0;
        return specialized BlendTreeAnimation.createResource(timelineDefinition:)(v14);
      }
    }

    if (*(*(v1 + 48) + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  v8 = String.utf8CString.getter();

  v9 = a1(v8 + 32);

  v10._rawValue = v9;
  v11 = specialized BlendTreeAnimation.createResource(timelineDefinition:)(v10);
  if (v2)
  {
    return RERelease();
  }

  v13 = v11;
  RERelease();
  return v13;
}

uint64_t BlendTreeAnimation.name.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else if (*(v0[6] + 16))
  {
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void key path setter for BlendTreeAnimation.name : <A>BlendTreeAnimation<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  BlendTreeAnimation.name.setter(v1, v2);
}

void BlendTreeAnimation.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void (*BlendTreeAnimation.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = BlendTreeAnimation.name.getter();
  a1[1] = v3;
  return BlendTreeAnimation.name.modify;
}

void BlendTreeAnimation.name.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {

    *v3 = v4;
    v3[1] = v2;
  }

  else
  {

    *v3 = v4;
    v3[1] = v2;
  }
}

uint64_t BlendTreeAnimation.blendLayer.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 36);
  }

  result = *(*(v0 + 48) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t BlendTreeAnimation.blendLayer.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t *(*BlendTreeAnimation.blendLayer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 40) == 1)
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 36);
  }

  *(a1 + 8) = v2;
  return BlendTreeAnimation.blendLayer.modify;
}

uint64_t *BlendTreeAnimation.blendLayer.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 36) = *(result + 2);
  *(v1 + 40) = 0;
  return result;
}

uint64_t BlendTreeAnimation.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 32);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 48) + 16);
    if (v5)
    {
      v8 = *(v1 + 16);
      v9 = a1;
      v10 = v3;
      v11 = v4;
      RETimelineDefinitionGetTargetPath();
      v12 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v12, v13, v15);

      LOBYTE(v4) = v11;
      v3 = v10;
      a1 = v9;
      v2 = v8;
      v5 = v15[0];
      v6 = v15[1];
      v7 = v16;
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;

  return outlined copy of BindTarget?(v2, v3, v4);
}

double key path getter for BlendTreeAnimation.bindTarget : <A>BlendTreeAnimation<A>@<D0>(uint64_t a1@<X8>)
{
  BlendTreeAnimation.bindTarget.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t key path setter for BlendTreeAnimation.bindTarget : <A>BlendTreeAnimation<A>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  outlined copy of BindTarget(v4[0], v1, v2);
  return BlendTreeAnimation.bindTarget.setter(v4);
}

uint64_t BlendTreeAnimation.bindTarget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t (*BlendTreeAnimation.bindTarget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  BlendTreeAnimation.bindTarget.getter(a1);
  return BlendTreeAnimation.bindTarget.modify;
}

uint64_t BlendTreeAnimation.bindTarget.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (a2)
  {
    outlined copy of BindTarget(*a1, v2, v4);
    outlined consume of BindTarget?(*(v5 + 16), *(v5 + 24), *(v5 + 32));
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    *(v5 + 32) = v4;

    return outlined consume of BindTarget(v3, v2, v4);
  }

  else
  {
    result = outlined consume of BindTarget?(*(v5 + 16), *(v5 + 24), *(v5 + 32));
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    *(v5 + 32) = v4;
  }

  return result;
}

uint64_t BlendTreeAnimation.fillMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 42))
  {
    result = *(*(v1 + 48) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 41);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*BlendTreeAnimation.fillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 42))
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 41);
  }

  *(a1 + 8) = v2;
  return BlendTreeAnimation.fillMode.modify;
}

uint64_t BlendTreeAnimation.isAdditive.getter()
{
  LODWORD(v1) = *(v0 + 43);
  if (v1 == 2)
  {
    v1 = *(*(v0 + 48) + 16);
    if (v1)
    {
      LOBYTE(v1) = RETimelineDefinitionIsAdditive();
    }
  }

  return v1 & 1;
}

uint64_t (*BlendTreeAnimation.isAdditive.modify(uint64_t a1))()
{
  *a1 = v1;
  LODWORD(v2) = *(v1 + 43);
  if (v2 == 2)
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionIsAdditive();
      a1 = v3;
    }
  }

  *(a1 + 8) = v2 & 1;
  return BlendTreeAnimation.isAdditive.modify;
}

uint64_t BlendTreeAnimation.trimStart.getter()
{
  if ((*(v0 + 65) & 1) == 0)
  {
    return *(v0 + 56);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipStart();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t BlendTreeAnimation.trimStart.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  *(v2 + 65) = 0;
  return result;
}

uint64_t (*BlendTreeAnimation.trimStart.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = BlendTreeAnimation.trimStart.getter();
  *(a1 + 8) = v3 & 1;
  return BlendTreeAnimation.trimStart.modify;
}

uint64_t BlendTreeAnimation.trimStart.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t BlendTreeAnimation.trimEnd.getter()
{
  if ((*(v0 + 81) & 1) == 0)
  {
    return *(v0 + 72);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipEnd();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t BlendTreeAnimation.trimEnd.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  *(v2 + 81) = 0;
  return result;
}

uint64_t (*BlendTreeAnimation.trimEnd.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = BlendTreeAnimation.trimEnd.getter();
  *(a1 + 8) = v3 & 1;
  return BlendTreeAnimation.trimEnd.modify;
}

uint64_t BlendTreeAnimation.trimEnd.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

uint64_t BlendTreeAnimation.trimDuration.getter()
{
  if ((*(v0 + 97) & 1) == 0)
  {
    return *(v0 + 88);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipDuration();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t BlendTreeAnimation.trimDuration.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  *(v2 + 97) = 0;
  return result;
}

uint64_t (*BlendTreeAnimation.trimDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = BlendTreeAnimation.trimDuration.getter();
  *(a1 + 8) = v3 & 1;
  return BlendTreeAnimation.trimDuration.modify;
}

uint64_t BlendTreeAnimation.trimDuration.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 88) = *result;
  *(v1 + 96) = v2;
  return result;
}

double BlendTreeAnimation.offset.getter()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  result = 0.0;
  if (*(*(v0 + 200) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

double (*BlendTreeAnimation.offset.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = BlendTreeAnimation.offset.getter();
  return BlendTreeAnimation.offset.modify;
}

double BlendTreeAnimation.offset.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  *(v1 + 104) = *a1;
  *(v1 + 112) = 0;
  return result;
}

double BlendTreeAnimation.delay.getter()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  result = 0.0;
  if (*(*(v0 + 200) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

double (*BlendTreeAnimation.delay.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = BlendTreeAnimation.delay.getter();
  return BlendTreeAnimation.delay.modify;
}

double BlendTreeAnimation.delay.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 128) = 0;
  return result;
}

float BlendTreeAnimation.speed.getter(__n128 a1)
{
  if ((*(v1 + 136) & 1) == 0)
  {
    return *(v1 + 132);
  }

  result = 1.0;
  if (*(*(v1 + 200) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

float (*BlendTreeAnimation.speed.modify(uint64_t a1, __n128 a2))(float *a1)
{
  *a1 = v2;
  *(a1 + 8) = BlendTreeAnimation.speed.getter(a2);
  return BlendTreeAnimation.speed.modify;
}

float BlendTreeAnimation.speed.modify(float *a1)
{
  v1 = *a1;
  result = a1[2];
  *(v1 + 132) = result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t BlendTreeAnimation.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v2 + 137);
  if (result == 4)
  {
    if (!*(*(v2 + 200) + 16))
    {
LABEL_6:
      result = 0;
      goto LABEL_8;
    }

    v4 = a1;
    if (RETimelineDefinitionGetTimelineType() != 2)
    {
      result = 0;
      a1 = v4;
      goto LABEL_8;
    }

    result = RETimelineDefinitionGetClipLoopBehavior();
    a1 = v4;
    if (result >= 4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_6;
    }
  }

LABEL_8:
  *a1 = result;
  return result;
}

uint64_t (*BlendTreeAnimation.repeatMode.modify(uint64_t a1, double a2))()
{
  *a1 = v2;
  BlendTreeAnimation.repeatMode.getter((a1 + 8));
  return BlendTreeAnimation.repeatMode.modify;
}

uint64_t BlendTreeAnimation.duration.getter()
{
  BlendTreeAnimation.root.getter(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13BlendTreeNode_pMd, &_s17RealityFoundation13BlendTreeNode_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21BlendTreeNodeInternal_pMd, &_s17RealityFoundation21BlendTreeNodeInternal_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(v3, v6);
    v0 = v7;
    v1 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v1 + 16))(v0, v1);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    return outlined destroy of BodyTrackingComponent?(v3, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMd, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMR);
  }
}

void *specialized BlendTreeAnimation.createResource(timelineDefinition:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (a1._rawValue)
  {
    v4 = *(v1 + 16);
    v53[0] = *v1;
    v53[1] = v4;
    v6 = *v1;
    v5 = *(v1 + 16);
    v53[2] = *(v1 + 32);
    v54 = *(v1 + 48);
    v75 = v6;
    v76 = v5;
    v77 = *(v1 + 32);
    *&v78 = *(v1 + 48);
    outlined init with copy of TimelineBaseProperties(v53, &v65);
    TimelineBaseProperties.writeProperties(_:)(a1);
    v55 = v75;
    v56 = v76;
    v57 = v77;
    *&v58 = v78;
    outlined destroy of TimelineBaseProperties(&v55);
    specialized BlendTreeAnimation.root.getter(&v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13BlendTreeNode_pMd, &_s17RealityFoundation13BlendTreeNode_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21BlendTreeNodeInternal_pMd, &_s17RealityFoundation21BlendTreeNodeInternal_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of ForceEffectBase(&v65, v52);
      v7 = __swift_project_boxed_opaque_existential_1(v52, v52[3]);
      BlendTreeNodeInternal.appendToBlendTreeDefinition(blendTreeDefinition:)(a1);
      if (!v8)
      {

        v35 = *(v2 + 168);
        v81 = *(v2 + 152);
        v82 = v35;
        v83 = *(v2 + 184);
        v84 = *(v2 + 200);
        v36 = *(v2 + 104);
        v77 = *(v2 + 88);
        v78 = v36;
        v37 = *(v2 + 136);
        v79 = *(v2 + 120);
        v80 = v37;
        v38 = *(v2 + 72);
        v75 = *(v2 + 56);
        v76 = v38;
        if (TimelineClipProperties.isClipped.getter(v75))
        {
          v39 = *(v2 + 168);
          v81 = *(v2 + 152);
          v82 = v39;
          v83 = *(v2 + 184);
          v84 = *(v2 + 200);
          v40 = *(v2 + 104);
          v77 = *(v2 + 88);
          v78 = v40;
          v41 = *(v2 + 136);
          v79 = *(v2 + 120);
          v80 = v41;
          v42 = *(v2 + 72);
          v75 = *(v2 + 56);
          v76 = v42;
          type metadata accessor for TimelineDefinition();
          v43 = swift_allocObject();
          v43[2]._rawValue = a1._rawValue;
          outlined init with copy of TimelineClipProperties(&v75, &v65);
          RERetain();

          v44 = *(v2 + 104);
          v85[2] = *(v2 + 88);
          v85[3] = v44;
          v85[4] = *(v2 + 120);
          v45 = *(v2 + 136);
          v46 = *(v2 + 72);
          v85[0] = *(v2 + 56);
          v85[1] = v46;
          v86 = v45;
          v87 = v43;
          v47 = *(v2 + 168);
          v88 = *(v2 + 152);
          v89 = v47;
          v90 = *(v2 + 184);
          v91 = *(v2 + 200);
          outlined init with copy of TimelineClipProperties(v85, &v65);
          if (v43[2]._rawValue)
          {

            closure #1 in TimelineClipProperties.createClip()(v85, &v65);

            outlined destroy of TimelineClipProperties(v85);
            v7 = v65;
          }

          else
          {
            outlined destroy of TimelineClipProperties(v85);
            v7 = 0;
          }

          v48 = *(v2 + 104);
          v67 = *(v2 + 88);
          v68 = v48;
          v69 = *(v2 + 120);
          v49 = *(v2 + 136);
          v50 = *(v2 + 72);
          v65 = *(v2 + 56);
          v66 = v50;
          *&v70 = v49;
          *(&v70 + 1) = v43;
          v51 = *(v2 + 168);
          v71 = *(v2 + 152);
          v72 = v51;
          v73 = *(v2 + 184);
          v74 = *(v2 + 200);
          outlined destroy of TimelineClipProperties(&v65);
        }

        else
        {
          type metadata accessor for TimelineDefinition();
          *(swift_allocObject() + 16) = a1;
          RERetain();
          v7 = TimelineDefinition.resource.getter();
          swift_setDeallocating();
          RERelease();
          swift_deallocClassInstance();
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    else
    {
      *&v67 = 0;
      v65 = 0u;
      v66 = 0u;
      outlined destroy of BodyTrackingComponent?(&v65, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMd, &_s17RealityFoundation21BlendTreeNodeInternal_pSgMR);
      v7 = 0x80000001C18E27A0;
      lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
      swift_allocError();
      *v25 = 0xD00000000000001DLL;
      *(v25 + 8) = 0x80000001C18E27A0;
      *(v25 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v9 = *(v1 + 168);
    v81 = *(v1 + 152);
    v82 = v9;
    v83 = *(v1 + 184);
    v84 = *(v1 + 200);
    v10 = *(v1 + 104);
    v77 = *(v1 + 88);
    v78 = v10;
    v11 = *(v1 + 136);
    v79 = *(v1 + 120);
    v80 = v11;
    v12 = *(v1 + 72);
    v75 = *(v1 + 56);
    v76 = v12;
    if (TimelineClipProperties.isClipped.getter(v75))
    {
      v13 = *(v1 + 136);
      v14 = *(v1 + 168);
      v81 = *(v1 + 152);
      v82 = v14;
      v83 = *(v1 + 184);
      v15 = *(v1 + 72);
      v16 = *(v1 + 104);
      v77 = *(v1 + 88);
      v78 = v16;
      v79 = *(v1 + 120);
      v80 = v13;
      v75 = *(v1 + 56);
      v76 = v15;
      v84 = *(v1 + 200);
      if (TimelineClipProperties.isModified.getter())
      {
        v17 = *(v1 + 168);
        v71 = *(v1 + 152);
        v72 = v17;
        v73 = *(v1 + 184);
        v74 = *(v1 + 200);
        v18 = *(v1 + 104);
        v67 = *(v1 + 88);
        v68 = v18;
        v19 = *(v1 + 136);
        v69 = *(v1 + 120);
        v70 = v19;
        v20 = *(v1 + 72);
        v65 = *(v1 + 56);
        v66 = v20;
        v21 = *(v1 + 168);
        v61 = *(v1 + 152);
        v62 = v21;
        v63 = *(v1 + 184);
        v64 = *(v1 + 200);
        v22 = *(v1 + 104);
        v57 = *(v1 + 88);
        v58 = v22;
        v23 = *(v1 + 136);
        v59 = *(v1 + 120);
        v60 = v23;
        v24 = *(v1 + 72);
        v55 = *(v1 + 56);
        v56 = v24;
        outlined init with copy of TimelineClipProperties(&v65, &v75);
        v7 = TimelineClipProperties.createClip()();
        v81 = v61;
        v82 = v62;
        v83 = v63;
        v84 = v64;
        v77 = v57;
        v78 = v58;
        v79 = v59;
        v80 = v60;
        v75 = v55;
        v76 = v56;
        outlined destroy of TimelineClipProperties(&v75);
      }

      else
      {
        return TimelineDefinition.resource.getter();
      }
    }

    else if (*(*(v1 + 48) + 16) && (v27 = specialized static __ServiceLocator.shared.getter(), swift_beginAccess(), outlined init with copy of __REAssetService(v27 + 120, &v75), v28 = *(&v76 + 1), v29 = v77, __swift_project_boxed_opaque_existential_1(&v75, *(&v76 + 1)), (*(v29 + 32))(v28, v29), __swift_destroy_boxed_opaque_existential_1(&v75), (TimelineAsset = RETimelineDefinitionCreateTimelineAsset()) != 0))
    {
      v31 = TimelineAsset;
      RETimelineDefinitionGetName();
      v32 = String.init(cString:)();
      v34 = v33;
      type metadata accessor for AnimationResource();
      v7 = swift_allocObject();
      v7[2] = v31;
      v7[3] = v32;
      v7[4] = v34;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

_BYTE *BlendTreeAnimation.generate()(uint64_t a1)
{
  result = BlendTreeAnimation.createResource()(a1);
  if (!v1 && !result)
  {
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v3 = 0xD00000000000001CLL;
    *(v3 + 8) = 0x80000001C18DE2F0;
    *(v3 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance BlendTreeAnimation<A>(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = BlendTreeAnimation.name.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = BlendTreeAnimation.blendLayer.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.fillMode.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = BlendTreeAnimation.fillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = BlendTreeAnimation.bindTarget.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = BlendTreeAnimation.trimStart.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = BlendTreeAnimation.trimEnd.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = BlendTreeAnimation.trimDuration.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = BlendTreeAnimation.offset.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = BlendTreeAnimation.delay.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.speed.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = BlendTreeAnimation.speed.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.repeatMode.modify in conformance BlendTreeAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = BlendTreeAnimation.repeatMode.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)()
{
  v1 = v0;
  v2 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v0;
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v6 = v10;
  }

  v7 = v4;
  v8 = *(*(v6 + 56) + 16 * v4);
  specialized _NativeDictionary._delete(at:)(v7, v6);
  *v1 = v6;
  return v8;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v6, v8);
  *v3 = v8;
  return v9;
}

{
  v3 = v2;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v6, v8);
  *v3 = v8;
  return v9;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v15;
    }

    v11 = (*(v10 + 56) + 80 * v8);
    v12 = v11[3];
    a3[2] = v11[2];
    a3[3] = v12;
    *(a3 + 57) = *(v11 + 57);
    v13 = v11[1];
    *a3 = *v11;
    a3[1] = v13;
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *(a3 + 57) = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = type metadata accessor for UUID();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3 & 0x101);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v13 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v13;
    }

    outlined init with take of ForceEffectBase((*(v11 + 56) + 40 * v9), a4);
    specialized _NativeDictionary._delete(at:)(v9, v11);
    *v5 = v11;
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x1C68F4BF0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = MEMORY[0x1C68F4BE0](*(a2 + 40), *v12);
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v14 = *(a2 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v16;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v28 = ~v5;
    v29 = a2 + 64;
    v27 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v7 = 24 * v6;
      v8 = v2;
      v9 = *(v2 + 48) + 24 * v6;
      v30 = *v9;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *(v9 + 17);
      v13 = *(v9 + 18);
      v14 = *(v9 + 2);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v14);
      if (v11 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v10);
      }

      v2 = v8;
      if (v12 == 2)
      {
        Hasher._combine(_:)(0);
        if (v13 == 2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v12 & 1);
        if (v13 == 2)
        {
LABEL_10:
          v15 = 0;
          goto LABEL_13;
        }
      }

      Hasher._combine(_:)(1u);
      v15 = v13 & 1;
LABEL_13:
      Hasher._combine(_:)(v15);
      Hasher._combine(_:)(v30);
      result = Hasher._finalize()();
      v16 = result & v28;
      if (v3 >= v27)
      {
        v4 = v29;
        if (v16 < v27)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v29;
        if (v16 >= v27)
        {
          goto LABEL_18;
        }
      }

      if (v3 >= v16)
      {
LABEL_18:
        v17 = *(v8 + 48);
        v18 = v17 + 24 * v3;
        v19 = (v17 + v7);
        if (24 * v3 < v7 || v18 >= v19 + 24 || v3 != v6)
        {
          v20 = *v19;
          *(v18 + 16) = *(v19 + 2);
          *v18 = v20;
        }

        v21 = *(v8 + 56);
        v22 = (v21 + 8 * v3);
        v23 = (v21 + 8 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v28;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(v2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v26;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48) + 6 * v6;
      v10 = *(v9 + 4);
      v11 = *(v9 + 5);
      v12 = *(v9 + 2);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v12);
      if (v10 == 2)
      {
        Hasher._combine(_:)(0);
        if (v11 == 2)
        {
          goto LABEL_7;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v10 & 1);
        if (v11 == 2)
        {
LABEL_7:
          v13 = 0;
          goto LABEL_10;
        }
      }

      Hasher._combine(_:)(1u);
      v13 = v11 & 1;
LABEL_10:
      Hasher._combine(_:)(v13);
      result = Hasher._finalize()();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_15;
      }

      if (v3 >= v14)
      {
LABEL_15:
        v15 = *(a2 + 48);
        v16 = v15 + 6 * v3;
        v17 = (v15 + 6 * v6);
        if (v3 != v6 || v16 >= v17 + 6)
        {
          v18 = *v17;
          *(v16 + 4) = *(v17 + 2);
          *v16 = v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 8 * v3);
        v21 = (v19 + 8 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 80 * v3);
        v16 = (v14 + 80 * v6);
        if (80 * v3 < (80 * v6) || v15 >= v16 + 80 || v3 != v6)
        {
          memmove(v15, v16, 0x50uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v29 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v30 = v4;
    do
    {
      v9 = v7;
      v10 = v2;
      v11 = (*(v2 + 48) + 40 * v6);
      v13 = *v11;
      v12 = v11[1];
      v14 = v11[2];
      v15 = v11[4];
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C50](v13);
      if (v12)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v12);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v2 = v10;
      if (v14)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v14);
        if (v15)
        {
          goto LABEL_10;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v15)
        {
LABEL_10:
          Hasher._combine(_:)(1u);

          String.hash(into:)();
          goto LABEL_13;
        }
      }

      Hasher._combine(_:)(0);
LABEL_13:
      v16 = Hasher._finalize()();

      v7 = v9;
      v17 = v16 & v9;
      if (v3 >= v29)
      {
        v4 = v30;
        if (v17 < v29)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v30;
        if (v17 >= v29)
        {
          goto LABEL_18;
        }
      }

      if (v3 >= v17)
      {
LABEL_18:
        v18 = *(v10 + 48);
        v19 = v18 + 40 * v3;
        v20 = (v18 + 40 * v6);
        if (v3 != v6 || v19 >= v20 + 40)
        {
          v21 = *v20;
          v22 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v21;
          *(v19 + 16) = v22;
        }

        v23 = *(v10 + 56);
        v24 = (v23 + 32 * v3);
        v25 = (v23 + 32 * v6);
        if (v3 != v6 || v24 >= v25 + 2)
        {
          v8 = v25[1];
          *v24 = *v25;
          v24[1] = v8;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(v2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v28;
    ++*(v2 + 36);
  }
}

{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v31 = (v12 + 1) & v11;
    v32 = a2 + 64;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = *(v14 + 56);
    v29 = (v14 - 8);
    v30 = v15;
    do
    {
      v17 = v16 * v10;
      v18 = v13;
      v19 = v14;
      v30(v7, *(a2 + 48) + v16 * v10, v4);
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v29)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v31)
      {
        if (v21 >= v31 && a1 >= v21)
        {
LABEL_15:
          v24 = v16 * a1;
          if (v16 * a1 < v17 || *(a2 + 48) + v16 * a1 >= (*(a2 + 48) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v24 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v24 < v17 || *(a2 + 56) + v24 >= (*(a2 + 56) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v14 = v19;
            v13 = v18;
          }

          else
          {
            a1 = v10;
            v25 = v24 == v17;
            v14 = v19;
            v13 = v18;
            if (!v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v31 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v8 = v32;
    }

    while (((*(v32 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

{
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = 24 * v6;
      Hasher.init(_seed:)();

      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = v14 + 24 * v3;
        v16 = (v14 + v11);
        if (24 * v3 < v11 || v15 >= v16 + 24 || v3 != v6)
        {
          v17 = *v16;
          *(v15 + 16) = *(v16 + 2);
          *v15 = v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 40 * v3;
        v20 = (v18 + 40 * v6);
        if (v3 != v6 || v19 >= v20 + 40)
        {
          v9 = *v20;
          v10 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v9;
          *(v19 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x1C68F4BF0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 16 * v3;
      if (v3 < v6 || result >= v15 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(v2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v49 = v4;
    v48 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v50 = v2;
    while (1)
    {
      v8 = *(v2 + 48) + 120 * v6;
      v9 = *(v8 + 48);
      v11 = *v8;
      v10 = *(v8 + 16);
      v55 = *(v8 + 32);
      v56 = v9;
      v53 = v11;
      v54 = v10;
      v13 = *(v8 + 80);
      v12 = *(v8 + 96);
      v14 = *(v8 + 64);
      v60 = *(v8 + 112);
      v58 = v13;
      v59 = v12;
      v57 = v14;
      Hasher.init(_seed:)();
      v15 = *(&v53 + 1);
      v16 = v54;
      Hasher._combine(_:)(WORD1(v53));
      if (v16 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v15);
      }

      v17 = BYTE2(v54);
      v51 = v3;
      if (BYTE2(v54) == 2)
      {
        v18 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v18 = v17 & 1;
      }

      Hasher._combine(_:)(v18);
      v19 = *(&v55 + 1);
      if (*(&v55 + 1))
      {
        v20 = *(&v54 + 1);
        v21 = v55;
        v22 = v56;
        v23 = v57;
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v20);
        outlined init with copy of CustomMaterial.CustomShaderParameters(&v53, v52);
        outlined copy of __MaterialResource.CoreMaterialFunction?(v20, v21, v19, v22, *(&v22 + 1), v23);
        String.hash(into:)();
        v24 = REAssetHandleCopyAssetIdentifierString();
        type metadata accessor for CFStringRef(0);
        _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
        _CFObject.hash(into:)();

        MEMORY[0x1C68F4C10](*(*(&v22 + 1) + 16));
        v25 = *(*(&v22 + 1) + 16);
        if (v25)
        {
          v26 = (*(&v22 + 1) + 32);
          do
          {
            v27 = *v26++;
            Hasher._combine(_:)(v27);
            --v25;
          }

          while (v25);
        }

        NSObject.hash(into:)();
        outlined consume of __MaterialResource.CoreMaterialFunction?(v20, v21, v19, v22, *(&v22 + 1), v23);
        v28 = *(&v58 + 1);
        if (!*(&v58 + 1))
        {
LABEL_21:
          Hasher._combine(_:)(0);
          goto LABEL_22;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        outlined init with copy of CustomMaterial.CustomShaderParameters(&v53, v52);
        v28 = *(&v58 + 1);
        if (!*(&v58 + 1))
        {
          goto LABEL_21;
        }
      }

      v29 = *(&v57 + 1);
      v30 = v58;
      v31 = v59;
      v32 = v60;
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v29);

      v32;
      String.hash(into:)();
      v33 = REAssetHandleCopyAssetIdentifierString();
      type metadata accessor for CFStringRef(0);
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
      _CFObject.hash(into:)();

      MEMORY[0x1C68F4C10](*(*(&v31 + 1) + 16));
      v34 = *(*(&v31 + 1) + 16);
      if (v34)
      {
        v35 = (*(&v31 + 1) + 32);
        do
        {
          v36 = *v35++;
          Hasher._combine(_:)(v36);
          --v34;
        }

        while (v34);
      }

      NSObject.hash(into:)();
      outlined consume of __MaterialResource.CoreMaterialFunction?(v29, v30, v28, v31, *(&v31 + 1), v32);
LABEL_22:
      v37 = Hasher._finalize()();
      result = outlined destroy of CustomMaterial.CustomShaderParameters(&v53);
      v38 = v37 & v7;
      v3 = v51;
      if (v51 >= v48)
      {
        v39 = v49;
        v2 = v50;
        if (v38 < v48)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v39 = v49;
        v2 = v50;
        if (v38 >= v48)
        {
          goto LABEL_27;
        }
      }

      if (v51 >= v38)
      {
LABEL_27:
        v40 = *(v2 + 48);
        result = v40 + 120 * v51;
        v41 = (v40 + 120 * v6);
        if (v51 != v6 || result >= v41 + 120)
        {
          result = memmove(result, v41, 0x78uLL);
        }

        v42 = *(v2 + 56);
        v43 = (v42 + 8 * v51);
        v44 = (v42 + 8 * v6);
        if (v51 != v6 || v43 >= v44 + 1)
        {
          *v43 = *v44;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v39 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v39 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_35;
      }
    }
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_35:
  v45 = *(v2 + 16);
  v46 = __OFSUB__(v45, 1);
  v47 = v45 - 1;
  if (v46)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v47;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x1C68F4BD0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 4 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for LoadTrace(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x1C68F4BF0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          result = v15 + (v3 << 7);
          v16 = (v15 + (v6 << 7));
          if (v3 << 7 != v6 << 7 || (v3 = v6, result >= v16 + 128))
          {
            result = memmove(result, v16, 0x80uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}