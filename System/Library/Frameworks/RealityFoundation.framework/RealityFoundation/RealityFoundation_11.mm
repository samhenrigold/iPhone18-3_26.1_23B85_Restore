uint64_t outlined init with copy of BodyTrackingComponent.Target(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BodyTrackingComponent.Target(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of BodyTrackingComponent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of BodyTrackingComponent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v4 = v1[3];
  v8 = v1[2];
  v9 = v4;
  v5 = v2;
  __AccessibilityComponent.__toCore(_:)(&v5);
}

{
  v1 = **(v0 + 16);
  v2 = *(v0 + 24);
  AudioGroupPlaybackComponent.__toCore(_:)(&v2, v1);
}

double _s10RealityKit20PhysicsBodyComponentVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 156) = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t *partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = *(v1 + 8);
  LOBYTE(v1) = *(v1 + 12);
  v5[0] = *(v0 + 24);
  v5[1] = v2;
  v6 = v3;
  v7 = v1;
  return HoverEffectComponent.__toCore(_:)(v5);
}

uint64_t _s17RealityFoundation21SpatialAudioComponentVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 72);
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

double _s17RealityFoundation21SpatialAudioComponentVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 105) = 0u;
  return result;
}

uint64_t _s10RealityKit20PhysicsBodyComponentVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[3];
  v9 = v1[2];
  v10 = v3;
  v11 = *(v1 + 8);
  v4 = v1[1];
  v7 = *v1;
  v8 = v4;
  v6 = v2;
  VFXComponent.__toCore(_:)(&v6);
  return result;
}

uint64_t outlined copy of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2, a3);
  }

  return result;
}

uint64_t _s17RealityFoundation34ProjectiveTransformCameraComponentVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 129);
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

void *partial apply for specialized closure #1 in Entity.ComponentSet.doSet<A>(_:newValue:returnStrongReference:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 2);
  v6 = *v1;
  v7 = v3;
  v5 = v2;
  return _proto_StereoProjectiveTransformCameraComponent_v1.__toCore(_:)(&v5);
}

RealityKit::SceneUnderstandingComponent __swiftcall SceneUnderstandingComponent.init(entityType:)(RealityKit::SceneUnderstandingComponent entityType)
{
  *v1 = **&entityType.entityType.value;
  *(v1 + 8) = 1;
  return entityType;
}

RealityKit::SceneUnderstandingComponent __swiftcall SceneUnderstandingComponent.init()()
{
  *v0 = 2;
  *(v0 + 8) = 1;
  return result;
}

uint64_t SceneUnderstandingComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  if (v3 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (*(v1 + 1))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return MEMORY[0x1EEDFE468](v2, v5, v6);
}

RealityKit::SceneUnderstandingComponent __swiftcall SceneUnderstandingComponent.init(from:)(Swift::OpaquePointer from)
{
  v2 = v1;
  SourceType = RESceneUnderstandingComponentGetSourceType();
  if (SourceType < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = SourceType;
    LOBYTE(SourceType) = RESceneUnderstandingComponentIsEntityType();
    if (SourceType)
    {
      v6 = 0;
    }

    else
    {
      SourceType = RESceneUnderstandingComponentIsEntityType();
      if (SourceType)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }

    *v2 = v6;
    *(v2 + 8) = v5 == 2;
  }

  result.internalOriginType = v4;
  result.entityType = SourceType;
  return result;
}

uint64_t SceneUnderstandingComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  v8 = *v0;
  v9 = *(v0 + 1);
  v14[0] = v8;
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1897FC0;
  *(v10 + 32) = 0x7954797469746E65;
  *(v10 + 40) = 0xEA00000000006570;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27SceneUnderstandingComponentV10EntityTypeOSgMd, &_s10RealityKit27SceneUnderstandingComponentV10EntityTypeOSgMR);
  *(v10 + 48) = v8;
  *(v10 + 72) = v11;
  *(v10 + 80) = 0x6E696769726FLL;
  *(v10 + 88) = 0xE600000000000000;
  *(v10 + 120) = &type metadata for SceneUnderstandingComponent.Origin;
  *(v10 + 96) = v9 != 0;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t lazy protocol witness table accessor for type SceneUnderstandingComponent.EntityType and conformance SceneUnderstandingComponent.EntityType()
{
  result = lazy protocol witness table cache variable for type SceneUnderstandingComponent.EntityType and conformance SceneUnderstandingComponent.EntityType;
  if (!lazy protocol witness table cache variable for type SceneUnderstandingComponent.EntityType and conformance SceneUnderstandingComponent.EntityType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneUnderstandingComponent.EntityType, &type metadata for SceneUnderstandingComponent.EntityType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneUnderstandingComponent.EntityType and conformance SceneUnderstandingComponent.EntityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneUnderstandingComponent.Origin and conformance SceneUnderstandingComponent.Origin()
{
  result = lazy protocol witness table cache variable for type SceneUnderstandingComponent.Origin and conformance SceneUnderstandingComponent.Origin;
  if (!lazy protocol witness table cache variable for type SceneUnderstandingComponent.Origin and conformance SceneUnderstandingComponent.Origin)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneUnderstandingComponent.Origin, &type metadata for SceneUnderstandingComponent.Origin, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneUnderstandingComponent.Origin and conformance SceneUnderstandingComponent.Origin);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneUnderstandingComponent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneUnderstandingComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

double static TextureResource.MipmapSelection.all.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1C189F1A0;
  return result;
}

uint64_t static TextureResource.MipmapSelection.skipLargest(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t TextureResource.PartialContents.Impl.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

void TextureResource.PartialContents.mipmaps.getter(void *a1@<X8>)
{
  RETextureAssetDataGetMipmapRange();
  v3 = v2;
  if (v4 == -1 && v2 == 0)
  {
    v3 = 0;
  }

  *a1 = v3;
  a1[1] = 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t TextureResource.PartialContents.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x1C68F4C10](*(*(*v0 + 16) + 16));
  return MEMORY[0x1C68F4C10](*(v1 + 24));
}

Swift::Int TextureResource.PartialContents.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(*(v1 + 16) + 16));
  MEMORY[0x1C68F4C10](*(v1 + 24));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextureResource.PartialContents.Impl()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(*(v1 + 16) + 16));
  MEMORY[0x1C68F4C10](*(v1 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TextureResource.PartialContents.Impl()
{
  v1 = *v0;
  MEMORY[0x1C68F4C10](*(*(*v0 + 16) + 16));
  return MEMORY[0x1C68F4C10](*(v1 + 24));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureResource.PartialContents.Impl()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(*(v1 + 16) + 16));
  MEMORY[0x1C68F4C10](*(v1 + 24));
  return Hasher._finalize()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance TextureResource.MemoryEstimate.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance TextureResource.MemoryEstimate.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x80000001C18DF0E0 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C18DF100 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextureResource.MemoryEstimate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextureResource.MemoryEstimate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextureResource.MemoryEstimate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit15TextureResourceC0D10FoundationE14MemoryEstimateV10CodingKeys33_14BD4E87735FC7DDB3A679582F35576FLLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit15TextureResourceC0D10FoundationE14MemoryEstimateV10CodingKeys33_14BD4E87735FC7DDB3A679582F35576FLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TextureResource.MemoryEstimate.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1C68F4C10](*v0);
  return MEMORY[0x1C68F4C10](v1);
}

Swift::Int TextureResource.MipmapSelection.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

uint64_t TextureResource.MemoryEstimate.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit15TextureResourceC0D10FoundationE14MemoryEstimateV10CodingKeys33_14BD4E87735FC7DDB3A679582F35576FLLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit15TextureResourceC0D10FoundationE14MemoryEstimateV10CodingKeys33_14BD4E87735FC7DDB3A679582F35576FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureResource.MipmapSelection()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

uint64_t TextureResource.sourceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  CanBeStreamed = RETextureAssetCanBeStreamed();
  result = RETextureAssetGetSourceMipmapLevelCount();
  *a1 = CanBeStreamed;
  *(a1 + 8) = result;
  return result;
}

uint64_t TextureResource.allocatedSizeBytes.getter()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v0 + 40, &v4);
  if (v5)
  {
    outlined init with take of ForceEffectBase(&v4, v6);
    v2 = v7;
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v3 + 24))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v6);
    return RETextureAssetGetTextureDataAllocatedSize();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TextureResource.memoryEstimate(for:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_slowAlloc();
  if (v3 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v6 | v3) < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 > 0xFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v7 = v5;
  *v5 = __PAIR64__(v6, v3);
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __RenderService?(v8 + 40, &v14);
  if (!v15)
  {
    goto LABEL_12;
  }

  outlined init with take of ForceEffectBase(&v14, v16);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v10 + 24))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v16[0] = 0;
  v11 = RETextureAssetMemoryEstimateForLoadingPartialContents();
  if (v16[0])
  {
    *&v14 = v16[0];
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
    Error.localizedDescription.getter();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = v12;
    a2[1] = v11;
    return MEMORY[0x1C6902A30](v7, -1, -1);
  }

  return result;
}

uint64_t TextureResource.replace(with:)(uint64_t *a1)
{
  v3 = *a1;
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v5;
  v2[7] = v4;

  return MEMORY[0x1EEE6DFA0](TextureResource.replace(with:), v5, v4);
}

uint64_t TextureResource.replace(with:)()
{
  v8 = *(v0 + 16);
  v1 = specialized static __ServiceLocator.shared.getter();
  *(v0 + 64) = v1;

  v2 = static MainActor.shared.getter();
  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = TextureResource.replace(with:);
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, v2, v5, 0x286563616C706572, 0xEE00293A68746977, partial apply for closure #1 in TextureResource.replace(with:), v3, v6);
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = TextureResource.replace(with:);
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = TextureResource.replace(with:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in TextureResource.replace(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  swift_beginAccess();
  v17 = *(a2 + 24);
  swift_unownedRetainStrong();
  v25 = *(v17 + 32);

  (*(v13 + 16))(v16, a1, v12);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v13 + 32))(v20 + v18, v16, v12);
  v21 = v27;
  *(v20 + v19) = v26;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = partial apply for closure #1 in closure #1 in TextureResource.replace(with:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_41;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v25;
  MEMORY[0x1C68F3CA0](0, v11, v8, v22);
  _Block_release(v22);

  (*(v30 + 8))(v8, v6);
  (*(v28 + 8))(v11, v29);
}

uint64_t closure #1 in closure #1 in TextureResource.replace(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (static Task<>.isCancelled.getter())
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v5 = swift_allocError();
    CancellationError.init()();
    v16[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  }

  else
  {
    v6 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    result = outlined init with copy of __RenderService?(v6 + 40, &v14);
    if (!v15)
    {
      __break(1u);
      return result;
    }

    outlined init with take of ForceEffectBase(&v14, v16);
    v8 = v17;
    v9 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = (*(v9 + 24))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v16[0] = 0;
    if (MEMORY[0x1C68FF210](v10, *(a2 + 16), *(a3 + 24), v16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
      return CheckedContinuation.resume(returning:)();
    }

    v11 = v16[0];
    if (v16[0])
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      v12 = swift_allocError();
      *v13 = v11;
    }

    else
    {
      type metadata accessor for TextureResource.LoadError(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError, protocol conformance descriptor for TextureResource.LoadError);
      v12 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    *&v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  }

  return CheckedContinuation.resume(throwing:)();
}

uint64_t TextureResource.PartialContents.init(source:mipmaps:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = *a3;
  return MEMORY[0x1EEE6DFA0](TextureResource.PartialContents.init(source:mipmaps:), 0, 0);
}

uint64_t TextureResource.PartialContents.init(source:mipmaps:)()
{
  v7 = *(v0 + 40);
  v1 = *(v0 + 32);
  v2 = RECancellationTokenSourceCreate();
  *(v0 + 56) = v2;
  *(v0 + 16) = 0;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v0 + 16;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = TextureResource.PartialContents.init(source:mipmaps:);

  return MEMORY[0x1EEE6DE18]();
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = TextureResource.PartialContents.init(source:mipmaps:);
  }

  else
  {

    v2 = TextureResource.PartialContents.init(source:mipmaps:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[3];
    v2 = v0[4];
    type metadata accessor for TextureResource.PartialContents.Impl();
    v4 = swift_allocObject();

    RERetain();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    *v3 = v4;
    RERelease();
  }

  else
  {
    lazy protocol witness table accessor for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError();
    swift_allocError();
    swift_willThrow();
  }

  RERelease();

  v5 = v0[1];

  return v5();
}

{

  RERelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in TextureResource.PartialContents.init(source:mipmaps:), 0, 0);
}

uint64_t closure #1 in TextureResource.PartialContents.init(source:mipmaps:)()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 48);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = closure #1 in TextureResource.PartialContents.init(source:mipmaps:);
  v6 = MEMORY[0x1E69E6B70];

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000015, 0x80000001C18DF140, partial apply for closure #1 in closure #1 in TextureResource.PartialContents.init(source:mipmaps:), v3, v6);
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = closure #1 in TextureResource.PartialContents.init(source:mipmaps:);
  }

  else
  {

    v2 = closure #1 in TextureResource.PartialContents.init(source:mipmaps:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  **(v0 + 24) = *(v0 + 16);
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  if ((static Task<>.isCancelled.getter() & 1) != 0 || !static __ServiceLocator.sharedEngine)
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v32 = swift_allocError();
    CancellationError.init()();
    aBlock[0] = v32;
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v36 = a2;
    v37 = a3;
    v38 = a1;
    v39 = a5;
    v40 = a4;
    v15 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    result = outlined init with copy of __RenderService?(v15 + 40, &v45);
    if (v46)
    {
      outlined init with take of ForceEffectBase(&v45, aBlock);
      v17 = v42;
      v18 = v43;
      __swift_project_boxed_opaque_existential_1(aBlock, v42);
      v19 = *(v18 + 3);

      v34 = v19(v17, v18);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      swift_beginAccess();
      outlined init with copy of __REAssetService(v15 + 120, &v45);
      v20 = v46;
      v21 = v47;
      __swift_project_boxed_opaque_existential_1(&v45, v46);
      v35 = (*(v21 + 32))(v20, v21);
      v33 = *(*(v15 + 168) + 16);
      (*(v11 + 16))(v14, v38, v10);
      v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
      v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      (*(v11 + 32))(v26 + v22, v14, v10);
      v27 = (v26 + v23);
      v28 = v37;
      *v27 = v36;
      v27[1] = v28;
      *(v26 + v24) = v34;
      v29 = v39;
      *(v26 + v25) = v40;
      *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;
      v43 = partial apply for closure #1 in closure #1 in closure #1 in TextureResource.PartialContents.init(source:mipmaps:);
      v44 = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RECancellationTokenRef) -> ();
      v42 = &block_descriptor_0;
      v30 = _Block_copy(aBlock);
      v31 = v33;

      REAssetManagerRunTaskInBackgroundLoadingGroup();

      _Block_release(v30);

      return __swift_destroy_boxed_opaque_existential_1(&v45);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((static Task<>.isCancelled.getter() & 1) != 0 || RECancellationTokenIsCancellationRequested())
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  v11 = swift_slowAlloc();
  v12.i64[0] = a4;
  v12.i64[1] = a5;
  v13 = vandq_s8(v12, vcgtzq_s64(v12));
  v14.i64[0] = 0xFFFFFFFFLL;
  v14.i64[1] = 0xFFFFFFFFLL;
  v15 = vcgtq_s64(v14, v13);
  *v11 = vmovn_s64(vornq_s8(vandq_s8(v13, v15), v15));
  if ((static Task<>.isCancelled.getter() & 1) != 0 || RECancellationTokenIsCancellationRequested())
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
  }

  else
  {
    v16 = RECancellationTokenSourceGetToken();
    TextureAssetData = RETextureAssetCreateTextureAssetData();

    if (TextureAssetData)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      return MEMORY[0x1C6902A30](v11, -1, -1);
    }

    lazy protocol witness table accessor for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError();
    swift_allocError();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  return MEMORY[0x1C6902A30](v11, -1, -1);
}

void thunk for @escaping @callee_guaranteed (@guaranteed RECancellationTokenRef) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Int TextureResource.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v0 + 16));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextureResource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v1 + 16));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureResource()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(*v0 + 16));
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.MemoryEstimate.CodingKeys, &unk_1F40EF1E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.MemoryEstimate.CodingKeys, &unk_1F40EF1E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.MemoryEstimate.CodingKeys, &unk_1F40EF1E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.MemoryEstimate.CodingKeys, &unk_1F40EF1E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MemoryEstimate.CodingKeys and conformance TextureResource.MemoryEstimate.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of __RenderService?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError()
{
  result = lazy protocol witness table cache variable for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError;
  if (!lazy protocol witness table cache variable for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.PartialContents.LoadError, &unk_1F40EF150, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError;
  if (!lazy protocol witness table cache variable for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.PartialContents.LoadError, &unk_1F40EF150, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.PartialContents.LoadError and conformance TextureResource.PartialContents.LoadError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.MipmapSelection and conformance TextureResource.MipmapSelection()
{
  result = lazy protocol witness table cache variable for type TextureResource.MipmapSelection and conformance TextureResource.MipmapSelection;
  if (!lazy protocol witness table cache variable for type TextureResource.MipmapSelection and conformance TextureResource.MipmapSelection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.MipmapSelection, &type metadata for TextureResource.MipmapSelection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MipmapSelection and conformance TextureResource.MipmapSelection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.PartialContents and conformance TextureResource.PartialContents()
{
  result = lazy protocol witness table cache variable for type TextureResource.PartialContents and conformance TextureResource.PartialContents;
  if (!lazy protocol witness table cache variable for type TextureResource.PartialContents and conformance TextureResource.PartialContents)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.PartialContents, &type metadata for TextureResource.PartialContents, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.PartialContents and conformance TextureResource.PartialContents);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.MemoryEstimate and conformance TextureResource.MemoryEstimate()
{
  result = lazy protocol witness table cache variable for type TextureResource.MemoryEstimate and conformance TextureResource.MemoryEstimate;
  if (!lazy protocol witness table cache variable for type TextureResource.MemoryEstimate and conformance TextureResource.MemoryEstimate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.MemoryEstimate, &type metadata for TextureResource.MemoryEstimate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MemoryEstimate and conformance TextureResource.MemoryEstimate);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.SourceInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureResource.SourceInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR) - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v6);
  v10 = *(v1 + v7);
  v11 = *v9;
  v12 = v9[1];
  v13 = *(v1 + v8);
  v14 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #1 in TextureResource.PartialContents.init(source:mipmaps:)(a1, v4, v1 + v5, v11, v12, v10, v13, v14);
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in TextureResource.replace(with:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in TextureResource.replace(with:)(v0 + v2, v4, v5);
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t specialized PredicateFactory.enumerate<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 8 * v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  result = (*(a1 + 16))(v4);
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    v10 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      *(v2 + 16) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    *&v10[8 * v13 + 32] = v9;
    *(v2 + 16) = v10;
    swift_endAccess();
    (*(a1 + 32))(v2, &protocol witness table for PredicateFactory);
    if (v7)
    {
      REQueryConnectEntityPredicates();
    }

    else
    {
      *(v2 + 24) = v9;
    }

    swift_beginAccess();
    specialized RangeReplaceableCollection<>.popLast()();
    return swift_endAccess();
  }

  return result;
}

uint64_t PredicateFactory.enumerate<A>(_:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v7 + 8 * v8 + 24);
  }

  else
  {
    v9 = 0;
  }

  type metadata accessor for QueryPredicate(0, a2, v5, v6);
  result = QueryPredicate.makeInternal()();
  if (result)
  {
    v11 = result;
    swift_beginAccess();
    v12 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      *(v3 + 16) = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    *&v12[8 * v15 + 32] = v11;
    *(v3 + 16) = v12;
    swift_endAccess();
    QueryPredicate.enumerate(using:)();
    if (v9)
    {
      specialized PredicateFactory.connect<A>(_:from:to:)(a2, v9, v11);
    }

    else
    {
      *(v3 + 24) = v11;
    }

    swift_beginAccess();
    specialized RangeReplaceableCollection<>.popLast()();
    return swift_endAccess();
  }

  return result;
}

uint64_t PredicateFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Query.predicate.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = v3[1];
  v13[0] = *v3;
  v13[1] = v4;
  v6 = v3[3];
  v14 = v3[2];
  v5 = v14;
  v15 = v6;
  *a2 = v13[0];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Predicate = type metadata accessor for QueryPredicate(0, AssociatedTypeWitness, v8, v9);
  return (*(*(Predicate - 8) + 16))(&v12, v13, Predicate);
}

__n128 Query.init(selector:_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for Query(0, a3, a4, a4);
  *(a5 + *(v9 + 40)) = 0;
  (*(*(a3 - 8) + 32))(a5, a1, a3);
  v10 = a5 + *(v9 + 36);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  result = *(a2 + 32);
  v13 = *(a2 + 48);
  *(v10 + 32) = result;
  *(v10 + 48) = v13;
  return result;
}

uint64_t Query.init(for:where:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a2[1];
  v33[0] = *a2;
  v33[1] = v10;
  v11 = a2[3];
  v33[2] = a2[2];
  v33[3] = v11;
  v12 = type metadata accessor for Query(0, a3, a4, a4);
  v13 = *(v12 + 40);
  *(a5 + v13) = 0;
  v14 = *(a3 - 8);
  (*(v14 + 16))(a5, a1, a3);
  v15 = (a5 + *(v12 + 36));
  v16 = a2[1];
  *v15 = *a2;
  v15[1] = v16;
  v17 = a2[3];
  v15[2] = a2[2];
  v15[3] = v17;
  type metadata accessor for PredicateFactory();
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  *(v18 + 24) = 0;
  v19 = a2[1];
  v32[0] = *a2;
  v32[1] = v19;
  v20 = a2[3];
  v32[2] = a2[2];
  v32[3] = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Predicate = type metadata accessor for QueryPredicate(0, AssociatedTypeWitness, v22, v23);
  v25 = *(Predicate - 8);
  (*(v25 + 16))(v31, v33, Predicate);
  PredicateFactory.enumerate<A>(_:)(v32, AssociatedTypeWitness);
  (*(v25 + 8))(v33, Predicate);
  if (!*(v18 + 24))
  {
    (*(v14 + 8))(a1, a3);
  }

  type metadata accessor for Entity();
  if (swift_dynamicCastMetatype())
  {
    type metadata accessor for Query.Destructor(0, a3, a4, v26);
    EntityQuery = REQueryCreateEntityQuery();
  }

  else
  {
    if (!swift_conformsToProtocol2() || !AssociatedTypeWitness)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    type metadata accessor for Query.Destructor(0, a3, a4, v29);
    EntityQuery = REQueryCreateComponentQuery();
  }

  v30 = EntityQuery;

  (*(v14 + 8))(a1, a3);
  result = swift_allocObject();
  *(result + 16) = v30;
  *(a5 + v13) = result;
  return result;
}

uint64_t Query.Destructor.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t Query.internalQuery.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  if (v2)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

void *Query.Destructor.deinit()
{
  if (*(v0 + 16))
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for Entity();
    if (swift_dynamicCastMetatype())
    {
      REEntityQueryDestroy();
    }

    else
    {
      if (swift_conformsToProtocol2())
      {
        v2 = AssociatedTypeWitness == 0;
      }

      else
      {
        v2 = 1;
      }

      if (!v2)
      {
        REComponentQueryDestroy();
      }
    }
  }

  return v0;
}

uint64_t Query.Destructor.__deallocating_deinit()
{
  Query.Destructor.deinit();

  return swift_deallocClassInstance();
}

uint64_t EntityQuery.predicate.getter@<X0>(_OWORD *a1@<X8>)
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
  return outlined init with copy of QueryPredicate<Entity>(v7, &v6);
}

uint64_t outlined init with copy of QueryPredicate<Entity>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 EntityQuery.init()@<Q0>(__n128 *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  v3 = swift_allocObject();
  *(v3 + 16) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  v7.n128_u64[0] = partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
  v7.n128_u64[1] = v2;
  v8 = partial apply for specialized closure #1 in makeCustomPredicate<A>(predicate:);
  v9 = v4;
  v10 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v11 = v3;
  v12 = 0;
  v13 = 0;
  EntityQuery.init(where:)(&v7, v14);
  v5 = v14[3];
  a1[2] = v14[2];
  a1[3] = v5;
  a1[4].n128_u64[0] = v15;
  result = v14[1];
  *a1 = v14[0];
  a1[1] = result;
  return result;
}

__n128 EntityQuery.init(where:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  type metadata accessor for PredicateFactory();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = 0;
  outlined init with copy of QueryPredicate<Entity>(v13, &v12);
  specialized PredicateFactory.enumerate<A>(_:)(v13);
  outlined destroy of QueryPredicate<Entity>(v13);
  if (*(v6 + 24))
  {
    EntityQuery = REQueryCreateEntityQuery();

    type metadata accessor for EntityQuery.Destructor();
    v8 = swift_allocObject();
    *(v8 + 16) = EntityQuery;
  }

  else
  {

    v8 = 0;
  }

  v9 = a1[1];
  *a2 = *a1;
  a2[1] = v9;
  result = a1[2];
  v11 = a1[3];
  a2[2] = result;
  a2[3] = v11;
  a2[4].n128_u64[0] = v8;
  return result;
}

uint64_t EntityQuery.Destructor.__deallocating_deinit()
{
  if (*(v0 + 16))
  {
    REEntityQueryDestroy();
  }

  return swift_deallocClassInstance();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Entity) -> (@out Bool)(uint64_t a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t specialized RangeReplaceableCollection<>.popLast()()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_4:
      v4 = v3 - 1;
      result = *(v1 + 8 * v4 + 32);
      *(v1 + 16) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in makeCustomPredicate<A>(predicate:)(char *a1)
{
  v1 = *a1;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in closure #1 in makeCustomPredicate<A>(predicate:);
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.QueryEvaluable.Value) -> (@unowned Bool);
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Entity) -> (@out Bool);
  *(v5 + 24) = v4;
  v9[4] = partial apply for thunk #1 (_:) in createEntityPredicate(_:);
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
  v9[3] = &block_descriptor_1;
  v6 = _Block_copy(v9);

  CustomEntityPredicate = REQueryCreateCustomEntityPredicate();

  _Block_release(v6);
  return CustomEntityPredicate;
}

uint64_t outlined destroy of QueryPredicate<Entity>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type QueryPredicate<Entity> and conformance QueryPredicate<A>()
{
  result = lazy protocol witness table cache variable for type QueryPredicate<Entity> and conformance QueryPredicate<A>;
  if (!lazy protocol witness table cache variable for type QueryPredicate<Entity> and conformance QueryPredicate<A>)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
    result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicate<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type QueryPredicate<Entity> and conformance QueryPredicate<A>);
  }

  return result;
}

uint64_t type metadata completion function for Query(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    v5 = result;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    result = type metadata accessor for QueryPredicate(319, AssociatedTypeWitness, v7, v8);
    if (v10 <= 0x3F)
    {
      type metadata accessor for Query.Destructor(255, v5, v4, v9);
      result = type metadata accessor for Optional();
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Query(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for Query(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = &result[v8 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
          *(v19 + 56) = 0;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit5SceneCSayAA6EntityCGSgIeggo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EntityQuery(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for EntityQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.QueryEvaluable.Value) -> (@unowned Bool)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *a1;
  result = v4(&v6);
  *a2 = result & 1;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Entity) -> (@out Bool)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t specialized PredicateFactory.connect<A>(_:from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Entity();
  if (swift_dynamicCastMetatype())
  {

    return REQueryConnectEntityPredicates();
  }

  else
  {

    return MEMORY[0x1EEDFDA60](a2, a3);
  }
}

RealityKit::__RKEntityEmphasisAnimationType_optional __swiftcall __RKEntityEmphasisAnimationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityEmphasisAnimationType.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t __RKEntityEmphasisAnimationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 7368560;
  v3 = 0x65736C7570;
  if (v1 != 6)
  {
    v3 = 1852403827;
  }

  v4 = 0x74616F6C66;
  if (v1 != 4)
  {
    v4 = 0x656C6767696ALL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x65636E756F62;
  if (v1 != 2)
  {
    v5 = 1885957222;
  }

  if (*v0)
  {
    v2 = 0x6B6E696C62;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityEmphasisAnimationType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368560;
  v5 = 0xE500000000000000;
  v6 = 0x65736C7570;
  if (v2 != 6)
  {
    v6 = 1852403827;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x74616F6C66;
  if (v2 != 4)
  {
    v8 = 0x656C6767696ALL;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x65636E756F62;
  if (v2 != 2)
  {
    v10 = 1885957222;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x6B6E696C62;
    v3 = 0xE500000000000000;
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

uint64_t __RKEntityEmphasisAction.__allocating_init(targetEntity:duration:iterations:animationStyle:emphasisAnimationType:)(float a1, float a2, uint64_t a3, char *a4, char *a5)
{
  v10 = swift_allocObject();
  v11 = *a4;
  v12 = *a5;
  *(v10 + 120) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 0;
  *(v10 + 208) = 1;
  *(v10 + 108) = a1;
  *(v10 + 112) = a2;
  *(v10 + 116) = v11;
  *(v10 + 117) = v12;
  return __RKEntityAction.init(targetEntity:)(a3);
}

uint64_t __RKEntityEmphasisAction.init(targetEntity:duration:iterations:animationStyle:emphasisAnimationType:)(__n128 a1, float a2, uint64_t a3, char *a4, char *a5)
{
  v6 = *a4;
  v7 = *a5;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0;
  *(v5 + 208) = 1;
  *(v5 + 108) = a1.n128_u32[0];
  *(v5 + 112) = a2;
  *(v5 + 116) = v6;
  *(v5 + 117) = v7;
  return __RKEntityAction.init(targetEntity:)(a3);
}

void __RKEntityEmphasisAction.perform(with:)(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v161 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v181 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v180 = &v161 - v11;
  v12 = *(a1 + 8);
  swift_beginAccess();
  v13 = *(v4 + 16);
  *&v182 = 91;
  *(&v182 + 1) = 0xE100000000000000;
  if (v13)
  {
    v188._rawValue = 0;
    v189 = 0xE000000000000000;
    v192 = v13;

    _print_unlocked<A, B>(_:_:)();
    rawValue = v188._rawValue;
    v15 = v189;
  }

  else
  {
    v15 = 0xE300000000000000;
    rawValue = 7104878;
  }

  MEMORY[0x1C68F3410](rawValue, v15);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v16 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v16);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v17 = v182;
  v18 = *(v4 + 16);
  if (!v18)
  {
    static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)();
LABEL_27:

    return;
  }

  swift_beginAccess();
  if (*(v4 + 104) == 1 && *(v4 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v4 + 105) == 1)
    {

LABEL_14:
      v182 = v17;
      static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)();

      return;
    }
  }

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_14;
  }

  v179 = v9;
  v19 = v18;
  v20 = v12;
  v178 = v10;
  v21 = v19;
  v22 = v19[2];
  RERigidBodyComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    MotionType = RERigidBodyComponentGetMotionType();
    if (MotionType != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }
  }

  else
  {
    MotionType = 0;
  }

  if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), v176 = MEMORY[0x1C68FE1F0](ServiceLocator), RETransformComponentGetComponentType(), (v25 = REEntityGetComponentByClass()) == 0))
  {

    goto LABEL_27;
  }

  v173 = MotionType;
  v26 = v25;
  RETransformComponentGetLocalPose();
  v164 = v27;
  RETransformComponentGetLocalPose();
  v165 = v28;
  v172 = v26;
  RETransformComponentGetLocalScale();
  v166 = v29;
  v30 = *(v4 + 96);
  v31 = *(v4 + 104);
  *(v4 + 96) = 1;
  *(v4 + 104) = 1;
  *&v182 = v30;
  BYTE8(v182) = v31;
  __RKEntityAction.state.didset(&v182);
  v32 = *(v4 + 117);
  REEntityComputeMeshBounds();
  v34 = *(&v33 + 2);
  v36 = *(&v35 + 2);
  v174 = v17;
  v175 = v12;
  v168 = v35;
  v167 = v33;
  if (v32 <= 3)
  {
    if (v32 > 1)
    {
      if (v32 != 2)
      {
        if (v176)
        {
          v37 = *(v4 + 108);
          if (*(v4 + 116))
          {
            if (*(v4 + 116) == 1)
            {
              v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 125, 0, MEMORY[0x1E69E7CC0]);
            }

            else
            {
              v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 183, 0, MEMORY[0x1E69E7CC0]);
            }
          }

          else
          {
            v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 63, 0, MEMORY[0x1E69E7CC0]);
          }

          __makeXfos(_:_:)(v107, &v188);

          v39 = v188._rawValue;
          if (*(v188._rawValue + 2))
          {
            RESampledAnimationDefaultParameters();
            v40 = *(v39 + 2);
            if (v40)
            {
              v108 = BYTE1(v183);
              v109 = DWORD2(v183);
              v110 = &v39[48 * v40];
              v111 = *v110;
              v163 = *(v110 - 1);
              v162 = v111;
              v161 = *(v110 + 1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 + 1, 1, v39);
              }

              v113 = *(v39 + 2);
              v112 = *(v39 + 3);
              if (v113 >= v112 >> 1)
              {
                v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v39);
              }

              *(v39 + 2) = v113 + 1;
              v114 = &v39[48 * v113];
              v115 = v162;
              *(v114 + 2) = v163;
              *(v114 + 3) = v115;
              *(v114 + 4) = v161;
              v188._rawValue = v39;
              v182 = v164;
              v183 = v165;
              v184 = v166;
              specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v167, v34, *&v168, v36, &v182, &v188);
              LOBYTE(v182) = 1;
              *(&v182 + 1) = "Transform.transform";
              LOBYTE(v183) = 1;
              BYTE1(v183) = v108 & 1;
              *(&v183 + 1) = v37 / v40;
              *(&v183 + 1) = __PAIR64__(LODWORD(v37), v109);
              SRTSampledAnimation = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
              if (SRTSampledAnimation)
              {
                v117 = SRTSampledAnimation;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
                v50 = swift_allocObject();
                *(v50 + 16) = xmmword_1C1887600;

                *(v50 + 32) = v117;
              }

              else
              {

                v50 = MEMORY[0x1E69E7CC0];
              }

              v51 = 4611;
              goto LABEL_161;
            }

            goto LABEL_172;
          }

          v50 = MEMORY[0x1E69E7CC0];
          v51 = 4611;
          goto LABEL_161;
        }

        goto LABEL_181;
      }

      if (v176)
      {
        v37 = *(v4 + 108);
        if (*(v4 + 116))
        {
          if (*(v4 + 116) == 1)
          {
            v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 140, 0, MEMORY[0x1E69E7CC0]);
          }

          else
          {
            v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 271, 0, MEMORY[0x1E69E7CC0]);
          }
        }

        else
        {
          v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 94, 0, MEMORY[0x1E69E7CC0]);
        }

        __makeXfos(_:_:)(v63, &v188);

        v39 = v188._rawValue;
        if (*(v188._rawValue + 2))
        {
          RESampledAnimationDefaultParameters();
          v40 = *(v39 + 2);
          if (v40)
          {
            v64 = BYTE1(v183);
            v65 = DWORD2(v183);
            v66 = &v39[48 * v40];
            v67 = *v66;
            v163 = *(v66 - 1);
            v162 = v67;
            v161 = *(v66 + 1);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 + 1, 1, v39);
            }

            v69 = *(v39 + 2);
            v68 = *(v39 + 3);
            if (v69 >= v68 >> 1)
            {
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v39);
            }

            *(v39 + 2) = v69 + 1;
            v70 = &v39[48 * v69];
            v71 = v162;
            *(v70 + 2) = v163;
            *(v70 + 3) = v71;
            *(v70 + 4) = v161;
            v188._rawValue = v39;
            v182 = v164;
            v183 = v165;
            v184 = v166;
            specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v167, v34, *&v168, v36, &v182, &v188);
            LOBYTE(v182) = 1;
            *(&v182 + 1) = "Transform.transform";
            LOBYTE(v183) = 1;
            BYTE1(v183) = v64 & 1;
            *(&v183 + 1) = v37 / v40;
            *(&v183 + 1) = __PAIR64__(LODWORD(v37), v65);
            v72 = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
            if (v72)
            {
              v73 = v72;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
              v50 = swift_allocObject();
              *(v50 + 16) = xmmword_1C1887600;

              *(v50 + 32) = v73;
            }

            else
            {

              v50 = MEMORY[0x1E69E7CC0];
            }

            v51 = 4610;
            goto LABEL_161;
          }

          goto LABEL_168;
        }

        v50 = MEMORY[0x1E69E7CC0];
        v51 = 4610;
        goto LABEL_161;
      }

      goto LABEL_177;
    }

    if (v32)
    {
      if (v176)
      {
        v37 = *(v4 + 108);
        if (*(v4 + 116))
        {
          if (*(v4 + 116) == 1)
          {
            v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 168, 0, MEMORY[0x1E69E7CC0]);
          }

          else
          {
            v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 226, 0, MEMORY[0x1E69E7CC0]);
          }
        }

        else
        {
          v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 133, 0, MEMORY[0x1E69E7CC0]);
        }

        __makeXfos(_:_:)(v85, &v188);

        v39 = v188._rawValue;
        if (!*(v188._rawValue + 2))
        {

          v50 = MEMORY[0x1E69E7CC0];
          v51 = 4609;
          goto LABEL_161;
        }

        RESampledAnimationDefaultParameters();
        v40 = *(v39 + 2);
        if (!v40)
        {
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        v86 = BYTE1(v183);
        v87 = DWORD2(v183);
        v88 = &v39[48 * v40];
        v89 = *v88;
        v163 = *(v88 - 1);
        v162 = v89;
        v161 = *(v88 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 + 1, 1, v39);
        }

        v91 = *(v39 + 2);
        v90 = *(v39 + 3);
        if (v91 >= v90 >> 1)
        {
          v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v39);
        }

        *(v39 + 2) = v91 + 1;
        v92 = &v39[48 * v91];
        v93 = v162;
        *(v92 + 2) = v163;
        *(v92 + 3) = v93;
        *(v92 + 4) = v161;
        v188._rawValue = v39;
        v182 = v164;
        v183 = v165;
        v184 = v166;
        specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v167, v34, *&v168, v36, &v182, &v188);
        LOBYTE(v182) = 1;
        *(&v182 + 1) = "Transform.transform";
        LOBYTE(v183) = 1;
        BYTE1(v183) = v86 & 1;
        *(&v183 + 1) = v37 / v40;
        *(&v183 + 1) = __PAIR64__(LODWORD(v37), v87);
        v94 = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
        if (v94)
        {
          v95 = v94;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_1C1887600;
          *(v50 + 32) = v95;
          v51 = 4609;
          goto LABEL_161;
        }

LABEL_183:
        __break(1u);
        return;
      }

      goto LABEL_179;
    }

    if (v176)
    {
      v37 = *(v4 + 108);
      if (*(v4 + 116))
      {
        if (*(v4 + 116) == 1)
        {
          v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 264, 0, MEMORY[0x1E69E7CC0]);
        }

        else
        {
          v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 52, 0, MEMORY[0x1E69E7CC0]);
        }
      }

      else
      {
        v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 118, 0, MEMORY[0x1E69E7CC0]);
      }

      __makeXfos(_:_:)(v38, &v188);

      v39 = v188._rawValue;
      if (*(v188._rawValue + 2))
      {
        RESampledAnimationDefaultParameters();
        v40 = *(v39 + 2);
        if (v40)
        {
          v20 = BYTE1(v183);
          v3 = v40;
          v2 = DWORD2(v183);
          v41 = &v39[48 * v40];
          v42 = *v41;
          v163 = *(v41 - 1);
          v162 = v42;
          v161 = *(v41 + 1);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_72:
            v44 = *(v39 + 2);
            v43 = *(v39 + 3);
            v45 = v37 / v3;
            if (v44 >= v43 >> 1)
            {
              v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v39);
            }

            *(v39 + 2) = v44 + 1;
            v46 = &v39[48 * v44];
            v47 = v162;
            *(v46 + 2) = v163;
            *(v46 + 3) = v47;
            *(v46 + 4) = v161;
            v188._rawValue = v39;
            v182 = v164;
            v183 = v165;
            v184 = v166;
            specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v167, v34, *&v168, v36, &v182, &v188);
            LOBYTE(v182) = 1;
            *(&v182 + 1) = "Transform.transform";
            LOBYTE(v183) = 1;
            BYTE1(v183) = v20 & 1;
            *(&v183 + 4) = __PAIR64__(v2, LODWORD(v45));
            *(&v183 + 3) = v37;
            v48 = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
            if (v48)
            {
              v49 = v48;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
              v50 = swift_allocObject();
              *(v50 + 16) = xmmword_1C1887600;

              *(v50 + 32) = v49;
            }

            else
            {

              v50 = MEMORY[0x1E69E7CC0];
            }

            v51 = 4608;
            goto LABEL_161;
          }

LABEL_174:
          v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 + 1, 1, v39);
          goto LABEL_72;
        }

        __break(1u);
        goto LABEL_167;
      }

      v50 = MEMORY[0x1E69E7CC0];
      v51 = 4608;
      goto LABEL_161;
    }

    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (v32 > 5)
  {
    if (v32 != 6)
    {
      if (v176)
      {
        v37 = *(v4 + 108);
        if (*(v4 + 116))
        {
          if (*(v4 + 116) == 1)
          {
            v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 148, 0, MEMORY[0x1E69E7CC0]);
          }

          else
          {
            v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 27, 0, MEMORY[0x1E69E7CC0]);
          }
        }

        else
        {
          v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 97, 0, MEMORY[0x1E69E7CC0]);
        }

        __makeXfos(_:_:)(v118, &v188);

        v39 = v188._rawValue;
        if (!*(v188._rawValue + 2))
        {
          goto LABEL_159;
        }

        RESampledAnimationDefaultParameters();
        v40 = *(v39 + 2);
        if (!v40)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        v119 = BYTE1(v183);
        v120 = DWORD2(v183);
        v121 = &v39[48 * v40];
        v122 = *v121;
        v163 = *(v121 - 1);
        v162 = v122;
        v161 = *(v121 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 + 1, 1, v39);
        }

        v124 = *(v39 + 2);
        v123 = *(v39 + 3);
        if (v124 >= v123 >> 1)
        {
          v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v123 > 1), v124 + 1, 1, v39);
        }

        *(v39 + 2) = v124 + 1;
        v125 = &v39[48 * v124];
        v126 = v162;
        *(v125 + 2) = v163;
        *(v125 + 3) = v126;
        *(v125 + 4) = v161;
        v188._rawValue = v39;
        v182 = v164;
        v183 = v165;
        v184 = v166;
        specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v167, v34, *&v168, v36, &v182, &v188);
        LOBYTE(v182) = 1;
        *(&v182 + 1) = "Transform.transform";
        LOBYTE(v183) = 1;
        BYTE1(v183) = v119 & 1;
        *(&v183 + 1) = v37 / v40;
        *(&v183 + 1) = __PAIR64__(LODWORD(v37), v120);
        v127 = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
        if (v127)
        {
          v128 = v127;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_1C1887600;

          *(v50 + 32) = v128;
        }

        else
        {
LABEL_159:

          v50 = MEMORY[0x1E69E7CC0];
        }

        v51 = 4615;
        goto LABEL_161;
      }

      goto LABEL_182;
    }

    if (v176)
    {
      v37 = *(v4 + 108);
      if (*(v4 + 116))
      {
        if (*(v4 + 116) == 1)
        {
          v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 107, 0, MEMORY[0x1E69E7CC0]);
        }

        else
        {
          v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 99, 0, MEMORY[0x1E69E7CC0]);
        }
      }

      else
      {
        v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 71, 0, MEMORY[0x1E69E7CC0]);
      }

      __makeXfos(_:_:)(v74, &v188);

      v39 = v188._rawValue;
      if (*(v188._rawValue + 2))
      {
        RESampledAnimationDefaultParameters();
        v40 = *(v39 + 2);
        if (v40)
        {
          v75 = BYTE1(v183);
          v76 = DWORD2(v183);
          v77 = &v39[48 * v40];
          v78 = *v77;
          v163 = *(v77 - 1);
          v162 = v78;
          v161 = *(v77 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 + 1, 1, v39);
          }

          v80 = *(v39 + 2);
          v79 = *(v39 + 3);
          if (v80 >= v79 >> 1)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v39);
          }

          *(v39 + 2) = v80 + 1;
          v81 = &v39[48 * v80];
          v82 = v162;
          *(v81 + 2) = v163;
          *(v81 + 3) = v82;
          *(v81 + 4) = v161;
          v188._rawValue = v39;
          v182 = v164;
          v183 = v165;
          v184 = v166;
          specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v167, v34, *&v168, v36, &v182, &v188);
          LOBYTE(v182) = 1;
          *(&v182 + 1) = "Transform.transform";
          LOBYTE(v183) = 1;
          BYTE1(v183) = v75 & 1;
          *(&v183 + 1) = v37 / v40;
          *(&v183 + 1) = __PAIR64__(LODWORD(v37), v76);
          v83 = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
          if (v83)
          {
            v84 = v83;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1C1887600;

            *(v50 + 32) = v84;
          }

          else
          {

            v50 = MEMORY[0x1E69E7CC0];
          }

          v51 = 4614;
          goto LABEL_161;
        }

        goto LABEL_169;
      }

      v50 = MEMORY[0x1E69E7CC0];
      v51 = 4614;
      goto LABEL_161;
    }

    goto LABEL_178;
  }

  if (v32 != 4)
  {
    if (v176)
    {
      v37 = *(v4 + 108);
      if (*(v4 + 116))
      {
        if (*(v4 + 116) == 1)
        {
          v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 203, 0, MEMORY[0x1E69E7CC0]);
        }

        else
        {
          v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 79, 0, MEMORY[0x1E69E7CC0]);
        }
      }

      else
      {
        v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 107, 0, MEMORY[0x1E69E7CC0]);
      }

      __makeXfos(_:_:)(v96, &v188);

      v39 = v188._rawValue;
      if (*(v188._rawValue + 2))
      {
        RESampledAnimationDefaultParameters();
        v40 = *(v39 + 2);
        if (v40)
        {
          v97 = BYTE1(v183);
          v98 = DWORD2(v183);
          v99 = &v39[48 * v40];
          v100 = *v99;
          v163 = *(v99 - 1);
          v162 = v100;
          v161 = *(v99 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 + 1, 1, v39);
          }

          v102 = *(v39 + 2);
          v101 = *(v39 + 3);
          if (v102 >= v101 >> 1)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v39);
          }

          *(v39 + 2) = v102 + 1;
          v103 = &v39[48 * v102];
          v104 = v162;
          *(v103 + 2) = v163;
          *(v103 + 3) = v104;
          *(v103 + 4) = v161;
          v188._rawValue = v39;
          v182 = v164;
          v183 = v165;
          v184 = v166;
          specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v167, v34, *&v168, v36, &v182, &v188);
          LOBYTE(v182) = 1;
          *(&v182 + 1) = "Transform.transform";
          LOBYTE(v183) = 1;
          BYTE1(v183) = v97 & 1;
          *(&v183 + 1) = v37 / v40;
          *(&v183 + 1) = __PAIR64__(LODWORD(v37), v98);
          v105 = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
          if (v105)
          {
            v106 = v105;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1C1887600;

            *(v50 + 32) = v106;
          }

          else
          {

            v50 = MEMORY[0x1E69E7CC0];
          }

          v51 = 4613;
          goto LABEL_161;
        }

        goto LABEL_171;
      }

      v50 = MEMORY[0x1E69E7CC0];
      v51 = 4613;
      goto LABEL_161;
    }

    goto LABEL_180;
  }

  if (!v176)
  {
    goto LABEL_176;
  }

  v37 = *(v4 + 108);
  if (*(v4 + 116))
  {
    if (*(v4 + 116) == 1)
    {
      v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 375, 0, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 404, 0, MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v188._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 318, 0, MEMORY[0x1E69E7CC0]);
  }

  __makeXfos(_:_:)(v52, &v188);

  v39 = v188._rawValue;
  if (*(v188._rawValue + 2))
  {
    RESampledAnimationDefaultParameters();
    v40 = *(v39 + 2);
    if (v40)
    {
      v53 = BYTE1(v183);
      v54 = DWORD2(v183);
      v55 = &v39[48 * v40];
      v56 = *v55;
      v163 = *(v55 - 1);
      v162 = v56;
      v161 = *(v55 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 + 1, 1, v39);
      }

      v58 = *(v39 + 2);
      v57 = *(v39 + 3);
      if (v58 >= v57 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v39);
      }

      *(v39 + 2) = v58 + 1;
      v59 = &v39[48 * v58];
      v60 = v162;
      *(v59 + 2) = v163;
      *(v59 + 3) = v60;
      *(v59 + 4) = v161;
      v188._rawValue = v39;
      v182 = v164;
      v183 = v165;
      v184 = v166;
      specialized static __RKEmphasisBaseAnimation.bakeEmphasisXfos(transform:localBoundingBox:xfos:)(*&v167, v34, *&v168, v36, &v182, &v188);
      LOBYTE(v182) = 1;
      *(&v182 + 1) = "Transform.transform";
      LOBYTE(v183) = 1;
      BYTE1(v183) = v53 & 1;
      *(&v183 + 1) = v37 / v40;
      *(&v183 + 1) = __PAIR64__(LODWORD(v37), v54);
      v61 = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
      if (v61)
      {
        v62 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1C1887600;

        *(v50 + 32) = v62;
      }

      else
      {

        v50 = MEMORY[0x1E69E7CC0];
      }

      v51 = 4612;
      goto LABEL_161;
    }

LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v50 = MEMORY[0x1E69E7CC0];
  v51 = 4612;
LABEL_161:
  v129 = specialized _arrayForceCast<A, B>(_:)(v50);

  v130 = *(v129 + 16);
  v171 = v6;
  v170 = v7;
  v169 = *(&v17 + 1);
  if (v130)
  {
    v131 = *(v129 + 32);

    if (v131)
    {
      REAnimationComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      *&v182 = 5;
      DWORD2(v182) = v51;
      *&v183 = "EMPHASIS";
      BYTE8(v183) = 0;
      *(v4 + 200) = REAnimationComponentPlay();
      *(v4 + 208) = 0;
      RERelease();
    }
  }

  else
  {
  }

  v132 = ComponentByClass == 0;
  v133 = swift_allocObject();
  swift_weakInit();
  v134 = swift_allocObject();
  *(v134 + 16) = v133;
  *(v134 + 24) = v22;
  *(v134 + 32) = v172;
  *(v134 + 40) = v173;
  *(v134 + 44) = v132;
  v135 = *(v4 + 32);
  v136 = *(v4 + 40);
  *(v4 + 32) = partial apply for specialized closure #1 in __RKEntityEmphasisAction.perform(with:);
  *(v4 + 40) = v134;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v135, v136);

  ComponentByClass = type metadata accessor for Entity();
  v190 = ComponentByClass;
  v191 = &protocol witness table for Entity;
  v188._rawValue = v21;
  v137 = swift_allocObject();
  swift_weakInit();

  Scene.eventService.getter(&v182);
  v138 = *(&v183 + 1);
  v139 = v184;
  __swift_project_boxed_opaque_existential_1(&v182, *(&v183 + 1));
  type metadata accessor for REAnimationHasCompletedEvent(0);
  EventService.publisher<A>(for:on:)(v140, &v188, v138, v140, v139);
  v141 = v185;
  v142 = v186;
  v143 = v187;
  __swift_destroy_boxed_opaque_existential_1(&v182);
  *(swift_allocObject() + 16) = 0;
  *&v182 = v141;
  *(&v182 + 1) = v142;
  *&v183 = v143;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
  v176 = protocol conformance descriptor for Scene.CorePublisher<A>;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR, protocol conformance descriptor for Scene.CorePublisher<A>);
  v144 = v180;
  Publisher.compactMap<A>(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
  v145 = swift_allocObject();
  (*(v181 + 32))(&v145[*(*v145 + *MEMORY[0x1E695BEE8] + 16)], v144, v178);
  *&v182 = v145;
  v146 = swift_allocObject();
  *(v146 + 16) = partial apply for closure #2 in __RKEntityEmphasisAction.perform(with:);
  *(v146 + 24) = v137;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackCompleted> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR, protocol conformance descriptor for Scene.Publisher<A>);
  v147 = Publisher<>.sink(receiveValue:)();

  v148 = type metadata accessor for AnyCancellable();
  *(&v183 + 1) = v148;
  *&v184 = MEMORY[0x1E695BF08];

  *&v182 = v147;
  outlined destroy of BodyTrackingComponent?(&v188, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v182, v4 + 120);
  swift_endAccess();
  v190 = ComponentByClass;
  v191 = &protocol witness table for Entity;
  v188._rawValue = v21;
  v149 = swift_allocObject();
  swift_weakInit();

  Scene.eventService.getter(&v182);
  v150 = *(&v183 + 1);
  v151 = v184;
  __swift_project_boxed_opaque_existential_1(&v182, *(&v183 + 1));
  type metadata accessor for REAnimationHasTerminatedEvent(0);
  EventService.publisher<A>(for:on:)(v152, &v188, v150, v152, v151);
  v153 = v185;
  v154 = v186;
  v155 = v187;
  __swift_destroy_boxed_opaque_existential_1(&v182);
  *(swift_allocObject() + 16) = 0;
  *&v182 = v153;
  *(&v182 + 1) = v154;
  *&v183 = v155;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR, v176);
  v156 = v179;
  Publisher.compactMap<A>(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
  v157 = swift_allocObject();
  (*(v170 + 32))(&v157[*(*v157 + *MEMORY[0x1E695BEE8] + 16)], v156, v171);
  *&v182 = v157;
  v158 = swift_allocObject();
  *(v158 + 16) = partial apply for closure #3 in __RKEntityEmphasisAction.perform(with:);
  *(v158 + 24) = v149;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackTerminated> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR, protocol conformance descriptor for Scene.Publisher<A>);
  v159 = Publisher<>.sink(receiveValue:)();

  *(&v183 + 1) = v148;
  *&v184 = MEMORY[0x1E695BF08];

  *&v182 = v159;
  outlined destroy of BodyTrackingComponent?(&v188, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v182, v4 + 160);
  swift_endAccess();
  *&v182 = v174;
  *(&v182 + 1) = v169;
  v160 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v160, &v182);
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13OpaquePointerVSgMd, &_ss13OpaquePointerVSgMR);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = a1 + 40;
    v2 = v11;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV15TransparentPassO_SitMd, &_s10RealityKit26__RKMaterialParameterBlockV15TransparentPassO_SitMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV15TransparentPassO4pass_Si13techniqueHashtMd, &_s10RealityKit26__RKMaterialParameterBlockV15TransparentPassO4pass_Si13techniqueHashtMR);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      v4 += 16;
      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for CTLineRef(0);
    if (swift_dynamicCastMetatype())
    {
      return v1;
    }

    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return v1;
    }

    v5 = 0;
    while (v5 < v4)
    {
      swift_unknownObjectRetain();
      v6 = swift_dynamicCastUnknownClass();
      swift_unknownObjectRelease();
      if (!v6)
      {
        return v2 | 1;
      }

      ++v5;
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 == v4)
      {
        return v1;
      }
    }

    __break(1u);
  }

  type metadata accessor for CTLineRef(0);

  v7 = _bridgeCocoaArray<A>(_:)();

  return v7;
}

uint64_t specialized closure #1 in __RKEntityEmphasisAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v6 + 120, &v10);
    if (*(&v11 + 1))
    {
      outlined init with copy of __REAssetService(&v10, v8);
      outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v8, v9);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v10, v6 + 120);
    swift_endAccess();
    swift_beginAccess();
    outlined init with copy of Cancellable?(v6 + 160, &v10);
    if (*(&v11 + 1))
    {
      outlined init with copy of __REAssetService(&v10, v8);
      outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v8, v9);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v10, v6 + 160);
    swift_endAccess();
    if ((*(v6 + 208) & 1) == 0)
    {
      swift_beginAccess();
      if (*(v6 + 16))
      {

        REAnimationComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REAnimationComponentGetCurrentPlaybackTime();
          if (v7 < *(v6 + 108))
          {
            RETransformComponentGetLocalSRT();
            RETransformComponentSetLocalSRT();
            RENetworkMarkComponentDirty();
          }
        }

        REAnimationComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          if (REAnimationComponentHasRunningAnimations())
          {
            if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v6 + 104) == 1) && *(v6 + 96) == 3)
            {
              REAnimationComponentStopAllAnimations();
              RENetworkMarkComponentDirty();
            }
          }
        }

        *(v6 + 200) = 0;
        *(v6 + 208) = 1;
      }
    }

    RERigidBodyComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      if ((a4 & 0x1FFFFFFFFLL) == 0)
      {
        RERigidBodyComponentSetMotionType();
        RENetworkMarkComponentDirty();
      }
    }
  }

  return result;
}

uint64_t closure #2 in __RKEntityEmphasisAction.perform(with:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if ((*(result + 208) & 1) != 0 || *(v2 + 16) != *(result + 200))
    {
    }

    else
    {
      swift_beginAccess();
      v5 = *(v4 + 96);
      v6 = *(v4 + 104);
      *(v4 + 96) = 2;
      *(v4 + 104) = 1;
      v7 = v5;
      v8 = v6;

      __RKEntityAction.state.didset(&v7);
    }
  }

  return result;
}

uint64_t __RKEntityEmphasisAction.reversed()()
{
  swift_beginAccess();
  v1 = *(v0 + 108);
  type metadata accessor for __RKEntityEmphasisAction();
  v2 = swift_allocObject();
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0;
  *(v2 + 208) = 1;
  *(v2 + 108) = v1;
  *(v2 + 112) = 1065353216;
  *(v2 + 116) = 0;

  return __RKEntityAction.init(targetEntity:)(v3);
}

uint64_t __RKEntityEmphasisAction.description.getter()
{
  BYTE8(v3) = 0;
  v1 = __RKEntityAction.description.getter();
  MEMORY[0x1C68F3410](v1);

  MEMORY[0x1C68F3410](2108704, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](8236, 0xE200000000000000);
  *&v3 = *(v0 + 117);
  _print_unlocked<A, B>(_:_:)();
  return *(&v3 + 1);
}

uint64_t __RKEntityEmphasisAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 116);
  v4 = type metadata accessor for __RKEntityEmphasisAction();
  v5 = swift_allocObject();
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0;
  *(v5 + 208) = 1;
  *(v5 + 108) = *(v1 + 108);
  *(v5 + 116) = v3;

  result = __RKEntityAction.init(targetEntity:)(v6);
  a1[3] = v4;
  *a1 = result;
  return result;
}

uint64_t __RKEntityEmphasisAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    v5 = *(v1 + 116);
    type metadata accessor for __RKEntityEmphasisAction();
    v6 = swift_allocObject();
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
    *(v6 + 200) = 0;
    *(v6 + 208) = 1;
    *(v6 + 108) = *(v1 + 108);
    *(v6 + 116) = v5;

    return __RKEntityAction.init(targetEntity:)(v7);
  }

  else
  {
    __RKEntityEmphasisAction.copy(with:)(v9);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __RKEntityEmphasisAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));
  outlined destroy of BodyTrackingComponent?(v0 + 120, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 160, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntityEmphasisAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 120, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 160, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t partial apply for specialized closure #3 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t getEnumTagSinglePayload for __RKEntityEmphasisAnimationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKEntityEmphasisAnimationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Entity.stateMachineController.getter()
{

  Component = REEntityGetComponent();

  if (Component)
  {
    type metadata accessor for StateMachineController();
    Component = swift_allocObject();
    *(Component + 16) = v0;
  }

  return Component;
}

uint64_t Scene.__sceneIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (static __RKSceneUUIDComponent.registration && (RESceneGetComponentsOfCustomType(), v2) && RECustomComponentGetObject())
  {
    UUID.init(uuid:)();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 56))(a1, v3, 1, v4);
}

uint64_t __RKSceneUUIDComponent.uuid.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuid:)();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v8 = *(v5 + 8);
    v8(a1, v4);
    return (v8)(v7, v4);
  }

  else
  {
    v10 = UUID.uuid.getter();
    v12 = v11;
    v13 = *(v5 + 8);
    v13(a1, v4);
    result = (v13)(v7, v4);
    *v2 = v10;
    v2[1] = v12;
  }

  return result;
}

uint64_t *__RKSceneUUIDComponent.Registration.init()()
{
  REStructBuilderCreate();
  String.utf8CString.getter();
  v2 = REStructBuilderInit();

  if (!v2 || (String.utf8CString.getter(), REStructBuilderAddMemberCStyleArrayDataTypeWithTag(), , (v3 = RECIntrospectionStructRegister()) == 0))
  {
    lazy protocol witness table accessor for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  *(v0 + 16) = v3;
  v4 = specialized String.withCString<A>(_:)(0x55656E6563534152, 0xEB00000000444955, v3);
  if (v1)
  {
LABEL_6:
    REStructBuilderDestroy();
    swift_deallocPartialClassInstance();
    return v0;
  }

  *(v0 + 24) = v4;
  REStructBuilderDestroy();
  return v0;
}

uint64_t closure #1 in __RKSceneUUIDComponent.Registration.init()@<X0>(uint64_t *a3@<X8>)
{
  result = RECustomComponentTypeCreate();
  if (result)
  {
    *a3 = result;
  }

  else
  {
    lazy protocol witness table accessor for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t __RKSceneUUIDComponent.Registration.deinit()
{
  RECustomComponentTypeDestroy();
  RECIntrospectionStructUnregister();
  return v0;
}

uint64_t __RKSceneUUIDComponent.Registration.__deallocating_deinit()
{
  RECustomComponentTypeDestroy();
  RECIntrospectionStructUnregister();

  return swift_deallocClassInstance();
}

double static __RKSceneUUIDComponent.registration.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static __RKSceneUUIDComponent.registration.setter(void *a1)
{
  swift_beginAccess();
  static __RKSceneUUIDComponent.registration = a1;
}

uint64_t key path setter for static __RKSceneUUIDComponent.registration : __RKSceneUUIDComponent.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static __RKSceneUUIDComponent.registration = v1;
}

uint64_t key path setter for Scene.__sceneIdentifier : Scene(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of UUID?(a1, &v6 - v3);
  return Scene.__sceneIdentifier.setter(v4);
}

uint64_t Scene.__sceneIdentifier.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  swift_beginAccess();
  if (!static __RKSceneUUIDComponent.registration)
  {
    return outlined destroy of UUID?(a1);
  }

  outlined init with copy of UUID?(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of UUID?(v5);
    if (REEntityGetCustomComponent())
    {
      REEntityRemoveComponentByClass();
    }

    return outlined destroy of UUID?(a1);
  }

  (*(v7 + 32))(v12, v5, v6);
  RESceneGetComponentsOfCustomType();
  if (v14 >= 1)
  {
    goto LABEL_13;
  }

  EntitiesArray = RESceneGetEntitiesArray();
  if (v16)
  {
    v17 = EntitiesArray;
    v18 = v16;
    v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v16, 0);
    memcpy(v19 + 4, v17, 8 * v18);
    if (v19[2])
    {
      goto LABEL_12;
    }

LABEL_11:

    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of Scene.__sceneIdentifier.setter);
    v21 = specialized AnchorEntity.__allocating_init(world:)(v20);

    specialized Scene.AnchorCollection.append(_:)(v21, v1);

    goto LABEL_12;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_11;
  }

LABEL_12:

  if (REEntityAddComponentByClass())
  {
LABEL_13:
    if (RECustomComponentGetObject())
    {
      (*(v7 + 16))(v9, v12, v6);
      __RKSceneUUIDComponent.uuid.setter(v9);
    }
  }

  outlined destroy of UUID?(a1);
  return (*(v7 + 8))(v12, v6);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*Scene.__sceneIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  swift_beginAccess();
  if (static __RKSceneUUIDComponent.registration && (RESceneGetComponentsOfCustomType(), v9) && RECustomComponentGetObject())
  {
    UUID.init(uuid:)();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(v8, v10, 1, v11);
  return Scene.__sceneIdentifier.modify;
}

void Scene.__sceneIdentifier.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of UUID?(v4, v3);
    Scene.__sceneIdentifier.setter(v3);
    outlined destroy of UUID?(v4);
  }

  else
  {
    Scene.__sceneIdentifier.setter(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

void specialized Scene.AnchorCollection.append(_:)(uint64_t a1, uint64_t a2)
{
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable || ((v4 = SceneNullable, v5 = RESceneGetSwiftObject(), type metadata accessor for Scene(), !v5) ? (swift_allocObject(), v6 = Scene.init(coreScene:)(v4)) : (v6 = swift_dynamicCastClassUnconditional()), v7 = *(v6 + 16), , , v8 = *(a2 + 16), , v7 != v8))
  {
    RESceneAddEntity();
    swift_beginAccess();
    v9 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v9[2])
      {

        v10 = RFServiceManagerGetAnchorManagementService();
        if (v10)
        {
          v11 = v10;
          RFAnchorManagementUpdateAnchoringInScene();
        }
      }
    }

    Entity.updateSceneGravityIfNeeded()();
  }
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 4)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy16_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError()
{
  result = lazy protocol witness table cache variable for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKSceneUUIDComponent.Registration.RegistrationError, &type metadata for __RKSceneUUIDComponent.Registration.RegistrationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKSceneUUIDComponent.Registration.RegistrationError, &type metadata for __RKSceneUUIDComponent.Registration.RegistrationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError);
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySdG_SaySdGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

Swift::Int NetworkCompatibilityToken.Compatibility.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for local()
{
  type metadata accessor for NetworkCompatibilityToken();
  v0 = swift_allocObject();
  result = RENetCompatibilityCreateLocalToken();
  *(v0 + 16) = result;
  static NetworkCompatibilityToken.local = v0;
  return result;
}

double static NetworkCompatibilityToken.local.getter()
{
  if (one-time initialization token for local != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t NetworkCompatibilityToken.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t NetworkCompatibilityToken.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  NetworkCompatibilityToken.init(from:)(a1);
  return v2;
}

void *NetworkCompatibilityToken.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = Data._bridgeToObjectiveC()().super.isa;
    TokenFromData = RENetCompatibilityCreateTokenFromData();

    if (TokenFromData)
    {
      outlined consume of Data._Representation(v7, v8);
      *(v1 + 16) = TokenFromData;
      __swift_destroy_boxed_opaque_existential_1(v9);
      goto LABEL_5;
    }

    lazy protocol witness table accessor for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  swift_deallocPartialClassInstance();
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69690B0], MEMORY[0x1E6969080], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6969090], MEMORY[0x1E6969080], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError()
{
  result = lazy protocol witness table cache variable for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError;
  if (!lazy protocol witness table cache variable for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NetworkCompatibilityToken.DeserializationError, &type metadata for NetworkCompatibilityToken.DeserializationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError;
  if (!lazy protocol witness table cache variable for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NetworkCompatibilityToken.DeserializationError, &type metadata for NetworkCompatibilityToken.DeserializationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError);
  }

  return result;
}

uint64_t NetworkCompatibilityToken.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  DataFromToken = RENetCompatibilityCreateDataFromToken();
  if (DataFromToken)
  {
    v2 = DataFromToken;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v3;
    __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v5, v6);
  }

  else
  {
    lazy protocol witness table accessor for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError();
    swift_allocError();
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

unint64_t lazy protocol witness table accessor for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError()
{
  result = lazy protocol witness table cache variable for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError;
  if (!lazy protocol witness table cache variable for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NetworkCompatibilityToken.SerializationError, &type metadata for NetworkCompatibilityToken.SerializationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError;
  if (!lazy protocol witness table cache variable for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NetworkCompatibilityToken.SerializationError, &type metadata for NetworkCompatibilityToken.SerializationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError);
  }

  return result;
}

uint64_t NetworkCompatibilityToken.compatibilityWith(_:)@<X0>(char *a2@<X8>)
{
  result = RENetCompatibilityCheckCompatibility();
  if (!result)
  {
    v4 = 0;
LABEL_5:
    *a2 = v4;
    return result;
  }

  if (result == 1)
  {
    v4 = 1;
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkCompatibilityToken.Compatibility and conformance NetworkCompatibilityToken.Compatibility()
{
  result = lazy protocol witness table cache variable for type NetworkCompatibilityToken.Compatibility and conformance NetworkCompatibilityToken.Compatibility;
  if (!lazy protocol witness table cache variable for type NetworkCompatibilityToken.Compatibility and conformance NetworkCompatibilityToken.Compatibility)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NetworkCompatibilityToken.Compatibility, &type metadata for NetworkCompatibilityToken.Compatibility, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkCompatibilityToken.Compatibility and conformance NetworkCompatibilityToken.Compatibility);
  }

  return result;
}

void *protocol witness for Decodable.init(from:) in conformance NetworkCompatibilityToken@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = NetworkCompatibilityToken.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

_BYTE *TextureResource.CreateOptions.init(semantic:mipmapsMode:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 1) = v3;
  *(a3 + 2) = 1280;
  *(a3 + 4) = 0;
  return result;
}

_BYTE *TextureResource.CreateOptions.init(semantic:compression:mipmapsMode:)@<X0>(_BYTE *result@<X0>, __int16 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  *(a4 + 1) = v5;
  *(a4 + 2) = v4;
  *(a4 + 4) = 0;
  return result;
}

unint64_t TextureResource.LoadError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Error = type metadata accessor for TextureResource.LoadError(0);
  MEMORY[0x1EEE9AC00](Error);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of TextureResource.LoadError(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0xD000000000000019;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0xD00000000000002DLL;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v3 + 32))(v5, v8, v2);
        v19 = 0;
        v20 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);

        v19 = 0xD000000000000020;
        v20 = 0x80000001C18DF840;
        lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1C68F3410](v10);

        MEMORY[0x1C68F3410](34, 0xE100000000000000);
        v11 = v19;
        (*(v3 + 8))(v5, v2);
        return v11;
      }

      v17 = *v8;
      v18 = v8[1];
      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v19 = 0xD000000000000012;
      v20 = 0x80000001C18DF800;
      MEMORY[0x1C68F3410](v17, v18);

      v15 = 34;
      v16 = 0xE100000000000000;
    }

    else
    {
      v13 = *v8;
      v14 = v8[1];
      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v19 = 0xD000000000000023;
      v20 = 0x80000001C18DF870;
      MEMORY[0x1C68F3410](v13, v14);

      v15 = 0x6E7562206E692022;
      v16 = 0xEB00000000656C64;
    }

    MEMORY[0x1C68F3410](v15, v16);
    return v19;
  }
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance TextureResource.CopyError()
{
  v1 = 0xD00000000000002DLL;
  v2 = 0xD000000000000043;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000002ELL;
  }

  if (*v0)
  {
    v1 = 0xD00000000000003ELL;
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

uint64_t TextureResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = BYTE4(a2);
  v19 = a2;
  OpaquePointer.set(options:)(&v19, a1);
  v21 = 0;
  RETextureImportOperationRun();
  v15 = v21;
  if (v21)
  {
    RERelease();
    swift_beginAccess();
    swift_unownedRetainStrong();
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a6;
    v16[5] = a7;
    v16[6] = a8;
    v16[7] = v15;

    v17 = partial apply for closure #1 in closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:);
  }

  else
  {
    swift_beginAccess();
    swift_unownedRetainStrong();
    v16 = swift_allocObject();
    v16[2] = a8;
    v16[3] = a1;
    *(v16 + 32) = a9 & 1;
    v16[5] = a4;
    v16[6] = a5;
    v16[7] = a6;
    v16[8] = a7;

    v17 = partial apply for closure #2 in closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:);
  }

  __Engine.asyncOnEngineQueue(_:)(v17, v16);
}

uint64_t OpaquePointer.set(options:)(char *a1, uint64_t a2)
{
  v3 = a1[4];
  RETextureImportOperationSetSemantic();
  RETextureImportOperationSetMipmapMode();
  RETextureImportOperationSetCompressionType();
  if (TextureResource.Compression.toCoreASTCOptions()())
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    RETextureImportOperationSetASTCCompressionOptions();
  }

  return MEMORY[0x1EEDFEE60](a2, v3);
}

void closure #1 in closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *, void, void), uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for TextureResource.LoadError(0);
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError, protocol conformance descriptor for TextureResource.LoadError);
  v9 = swift_allocError();
  a3(a6, 0, 0);

  a1(v9, 1);
}

uint64_t closure #2 in closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v8 = specialized static TextureResource.tryCreate(from:disableNetworkSync:)(a2, a3);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ((v12 & 0x100) != 0)
  {
    type metadata accessor for TextureResource.LoadError(0);
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError, protocol conformance descriptor for TextureResource.LoadError);
    v14 = swift_allocError();
    a6(v9, v11, v13 & 1);
    a4(v14, 1);
  }

  else
  {
    a4(v8, 0);
  }

  outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v9, v11, v13, BYTE1(v13) & 1);

  return RERelease();
}

uint64_t closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v34 = a6;
  v33 = a3;
  v14 = a5 >> 8;
  v15 = a5 >> 16;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v37 = *(v17 - 8);
  v38 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v32 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = a7;
  *(v20 + 24) = a8;

  v21 = specialized static __ServiceLocator.shared.getter();
  v22 = *(*(v21 + 168) + 16);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 25) = v14;
  *(v23 + 26) = v15;
  *(v23 + 28) = BYTE4(a5) & 1;
  *(v23 + 32) = v21;
  *(v23 + 40) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ()partial apply;
  *(v23 + 48) = v19;
  *(v23 + 56) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Error) -> (@out TextureResource.LoadError);
  v24 = v33;
  *(v23 + 64) = v20;
  *(v23 + 72) = v24;
  *(v23 + 80) = v34;
  aBlock[4] = closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)partial apply;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_458;
  v25 = _Block_copy(aBlock);
  swift_retain_n();
  v26 = v22;

  static DispatchQoS.unspecified.getter();
  v40 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v28 = v35;
  v27 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = v32;
  MEMORY[0x1C68F3CA0](0, v32, v28, v25);
  _Block_release(v25);

  (*(v39 + 8))(v28, v27);
  (*(v37 + 8))(v29, v38);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> (@out TextureResource.LoadError)(void *a1, void *a2, char a3, void (*a4)(void *))
{
  lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
  v8 = swift_allocError();
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  outlined copy of TextureResource.TextureImportOperationError(a1, a2, a3 & 1);
  a4(v8);
}

uint64_t specialized LoadRequest<A>.thenWaitForResourceSharing()(__n128 a1)
{
  v2 = v1;
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v31);
  type metadata accessor for LoadRequestDependencies();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v4 + 24) = v6;
  swift_beginAccess();
  *(v4 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE9Fulfiller33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA15TextureResourceC_GMd, &_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE9Fulfiller33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA15TextureResourceC_GMR);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  outlined init with copy of __REAssetService(v31, v28);
  v8 = v32;
  v9 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  LOBYTE(v8) = (*(v9 + 56))(v8, v9);
  v10 = v29;
  v11 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v11 + 32))(v10, v11);
  AssetRequest = REAssetManagerCreateAssetRequest();
  Request = type metadata accessor for __AssetLoadRequest();
  v13 = swift_allocObject();
  *(v13 + 16) = AssetRequest;
  if (v8)
  {
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v15 + 16) = v16;
  *(v15 + 24) = 0;
  *(v15 + 32) = -1;
  *(v14 + 16) = v15;
  v26 = v14;
  v17 = swift_allocObject();
  v17[2] = partial apply for specialized closure #1 in LoadRequest<A>.thenWaitForResourceSharing();
  v17[3] = v7;
  v17[4] = v15;
  v17[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
  swift_allocObject();

  *(v14 + 24) = Future.init(_:)();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE17CancellableHolder33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA15TextureResourceC_GMd, &_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE17CancellableHolder33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA15TextureResourceC_GMR);
  v18 = swift_allocObject();
  *(v18 + 32) = 0u;
  *(v18 + 16) = 0u;
  v28[0] = v2;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v13;
  *(v21 + 24) = v7;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<TextureResource> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR, protocol conformance descriptor for LoadRequest<A>);
  swift_retain_n();

  v22 = Publisher.sink(receiveCompletion:receiveValue:)();

  v29 = type metadata accessor for AnyCancellable();
  v28[0] = v22;
  swift_beginAccess();
  outlined assign with take of Any?(v28, v18 + 16);
  swift_endAccess();
  v29 = Request;
  v28[0] = v13;

  LoadRequestDependencies.add(_:)(v28);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v29 = v25;
  v28[0] = v2;

  LoadRequestDependencies.add(_:)(v28);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v29 = v24;
  v28[0] = v18;
  LoadRequestDependencies.add(_:)(v28);

  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v26;
}

{
  v2 = v1;
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v31);
  type metadata accessor for LoadRequestDependencies();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v4 + 24) = v6;
  swift_beginAccess();
  *(v4 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE9Fulfiller33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA19EnvironmentResourceC_GMd, &_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE9Fulfiller33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA19EnvironmentResourceC_GMR);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  outlined init with copy of __REAssetService(v31, v28);
  v8 = v32;
  v9 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  LOBYTE(v8) = (*(v9 + 56))(v8, v9);
  v10 = v29;
  v11 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v11 + 32))(v10, v11);
  AssetRequest = REAssetManagerCreateAssetRequest();
  Request = type metadata accessor for __AssetLoadRequest();
  v13 = swift_allocObject();
  *(v13 + 16) = AssetRequest;
  if (v8)
  {
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMR);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v15 + 16) = v16;
  *(v15 + 24) = 0;
  *(v15 + 32) = -1;
  *(v14 + 16) = v15;
  v26 = v14;
  v17 = swift_allocObject();
  v17[2] = partial apply for specialized closure #1 in LoadRequest<A>.thenWaitForResourceSharing();
  v17[3] = v7;
  v17[4] = v15;
  v17[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMR);
  swift_allocObject();

  *(v14 + 24) = Future.init(_:)();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE17CancellableHolder33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA19EnvironmentResourceC_GMd, &_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE17CancellableHolder33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA19EnvironmentResourceC_GMR);
  v18 = swift_allocObject();
  *(v18 + 32) = 0u;
  *(v18 + 16) = 0u;
  v28[0] = v2;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v13;
  *(v21 + 24) = v7;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<EnvironmentResource> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR, protocol conformance descriptor for LoadRequest<A>);
  swift_retain_n();

  v22 = Publisher.sink(receiveCompletion:receiveValue:)();

  v29 = type metadata accessor for AnyCancellable();
  v28[0] = v22;
  swift_beginAccess();
  outlined assign with take of Any?(v28, v18 + 16);
  swift_endAccess();
  v29 = Request;
  v28[0] = v13;

  LoadRequestDependencies.add(_:)(v28);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v29 = v25;
  v28[0] = v2;

  LoadRequestDependencies.add(_:)(v28);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v29 = v24;
  v28[0] = v18;
  LoadRequestDependencies.add(_:)(v28);

  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v26;
}

{
  v2 = v1;
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v38);
  type metadata accessor for LoadRequestDependencies();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v4 + 24) = v6;
  swift_beginAccess();
  *(v4 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE9Fulfiller33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAD19ShaderGraphMaterialV_GMd, &_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE9Fulfiller33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAD19ShaderGraphMaterialV_GMR);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  outlined init with copy of __REAssetService(v38, v35);
  v8 = v39;
  v9 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  LOBYTE(v8) = (*(v9 + 56))(v8, v9);
  v10 = v36;
  v11 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  (*(v11 + 32))(v10, v11);
  AssetRequest = REAssetManagerCreateAssetRequest();
  Request = type metadata accessor for __AssetLoadRequest();
  v13 = swift_allocObject();
  *(v13 + 16) = AssetRequest;
  if (v8)
  {
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v14 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v15 + 88) = v33[4];
  v17 = v34[0];
  *(v15 + 104) = v33[5];
  *(v15 + 120) = v17;
  *(v15 + 130) = *(v34 + 10);
  v18 = v33[1];
  *(v15 + 24) = v33[0];
  *(v15 + 40) = v18;
  v19 = v33[3];
  *(v15 + 56) = v33[2];
  *(v16 + 16) = 0;
  *(v15 + 16) = v16;
  *(v15 + 72) = v19;
  *(v14 + 16) = v15;
  v28 = v14;
  v20 = swift_allocObject();
  v20[2] = partial apply for specialized closure #1 in LoadRequest<A>.thenWaitForResourceSharing();
  v20[3] = v7;
  v20[4] = v15;
  v20[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  swift_allocObject();

  *(v14 + 24) = Future.init(_:)();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE17CancellableHolder33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAD19ShaderGraphMaterialV_GMd, &_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE17CancellableHolder33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAD19ShaderGraphMaterialV_GMR);
  v21 = swift_allocObject();
  *(v21 + 32) = 0u;
  *(v21 + 16) = 0u;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v7;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v13;
  *(v24 + 24) = v7;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR, protocol conformance descriptor for LoadRequest<A>);
  swift_retain_n();

  v25 = Publisher.sink(receiveCompletion:receiveValue:)();

  v32 = type metadata accessor for AnyCancellable();
  v31[0] = v25;
  swift_beginAccess();
  outlined assign with take of Any?(v31, v21 + 16);
  swift_endAccess();
  v32 = Request;
  v31[0] = v13;

  LoadRequestDependencies.add(_:)(v31);
  __swift_destroy_boxed_opaque_existential_1(v31);
  v32 = v29;
  v31[0] = v2;

  LoadRequestDependencies.add(_:)(v31);
  __swift_destroy_boxed_opaque_existential_1(v31);
  v32 = v27;
  v31[0] = v21;
  LoadRequestDependencies.add(_:)(v31);

  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v28;
}

uint64_t TextureResource.replaceWith(importOperation:)(uint64_t a1)
{
  v2 = v1;
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  AssetData = RETextureImportOperationCreateAssetData();
  if (AssetData)
  {
    v4 = AssetData;
    v5 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    result = outlined init with copy of [String : String](v5 + 40, &v15, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
    if (v16)
    {
      outlined init with take of ForceEffectBase(&v15, v17);
      v7 = v18;
      v8 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v9 = (*(v8 + 24))(v7, v8);
      LOBYTE(v7) = MEMORY[0x1C68FF210](v9, *(v2 + 16), v4, v20);
      __swift_destroy_boxed_opaque_existential_1(v17);
      if (v7)
      {
        *(v2 + 24) = 0;

        RETextureAssetRemoveDrawableQueue();
      }

      else
      {
        v11 = v20[0] == 0;
        if (v20[0])
        {
          v12 = v20[0];
        }

        else
        {
          v12 = 0x206563616C706552;
        }

        if (v20[0])
        {
          v13 = 0;
        }

        else
        {
          v13 = 0xEE0064656C696166;
        }

        lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
        swift_allocError();
        *v14 = v12;
        *(v14 + 8) = v13;
        *(v14 + 16) = v11;
        swift_willThrow();
      }

      return RERelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
    swift_allocError();
    strcpy(v10, "Replace failed");
    v10[15] = -18;
    v10[16] = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t TextureResource.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  return v1;
}

uint64_t TextureResource.deinit()
{
  if (*(v0 + 24))
  {
    RETextureAssetRemoveDrawableQueue();
  }

  REAssetSetSwiftObject();
  RERelease();

  return v0;
}

uint64_t TextureResource.__deallocating_deinit()
{
  if (*(v0 + 24))
  {
    RETextureAssetRemoveDrawableQueue();
  }

  REAssetSetSwiftObject();
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t TextureResource.semantic.getter@<X0>(_BYTE *a1@<X8>)
{
  result = RETextureAssetGetSemantic();
  v3 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v3) = 5;
  }

  *a1 = v3;
  return result;
}

uint64_t static TextureResource.load(named:in:textureLoader:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = 83886597;
  v6 = 0;
  return specialized static TextureResource.load(named:in:options:textureLoader:)(a1, a2, a3, &v5, a4);
}

uint64_t static TextureResource.loadAsync(named:in:textureLoader:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = [objc_opt_self() mainBundle];
  }

  v13 = a3;
  v14 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v15 = *(v14 + 24);
  swift_unownedRetainStrong();
  v16 = *(v15 + 32);

  v17 = v16;

  *v11 = v17;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v17)
  {
    outlined init with copy of __REAssetService(a4, v29);
    v20 = swift_allocObject();
    *(v20 + 16) = v28[1];
    *(v20 + 24) = a1;
    *(v20 + 32) = a2;
    *(v20 + 40) = v12;
    *(v20 + 48) = 83886597;
    *(v20 + 52) = 0;
    outlined init with take of ForceEffectBase(v29, v20 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
    v21 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
    v22 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v22 + 16) = v23;
    *(v22 + 24) = 0;
    *(v22 + 32) = -1;
    *(v21 + 16) = v22;
    v24 = swift_allocObject();
    v24[2] = partial apply for closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:);
    v24[3] = v20;
    v24[4] = v22;
    v24[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
    swift_allocObject();

    v25 = v12;

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

uint64_t static TextureResource.loadAsync(named:in:options:textureLoader:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5)
{
  v36 = a2;
  v33 = a5;
  v34 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *a4;
  v11 = a4[1];
  v12 = *(a4 + 1);
  v13 = a4[4];
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
  swift_beginAccess();
  v17 = *(v16 + 24);
  swift_unownedRetainStrong();
  v18 = *(v17 + 32);

  v19 = v18;

  *v10 = v19;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v19)
  {
    outlined init with copy of __REAssetService(v33, v37);
    v22 = swift_allocObject();
    v23 = v34;
    *(v22 + 16) = v35;
    *(v22 + 24) = v23;
    *(v22 + 32) = v36;
    *(v22 + 40) = v14;
    *(v22 + 48) = v32;
    *(v22 + 49) = v11;
    *(v22 + 50) = v12;
    *(v22 + 52) = v13;
    outlined init with take of ForceEffectBase(v37, v22 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
    v24 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
    v25 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v25 + 16) = v26;
    *(v25 + 24) = 0;
    *(v25 + 32) = -1;
    *(v24 + 16) = v25;
    v27 = swift_allocObject();
    v27[2] = closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)partial apply;
    v27[3] = v22;
    v27[4] = v25;
    v27[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
    swift_allocObject();

    v28 = v14;

    *(v24 + 24) = Future.init(_:)();
    v30 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v29);

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8)
{
  v43 = a8;
  v50 = a3;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v14 - 8);
  v49 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v46 = *(v16 - 8);
  v47 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v51 = v18;

  v19 = specialized static __ServiceLocator.shared.getter();

  v20 = specialized static TextureResource.findBundledFileExtension(named:in:)(a4, a5, a6);
  v22 = v21;
  v23 = MEMORY[0x1C68F3280](a4, a5);
  if (v22)
  {
    v24 = MEMORY[0x1C68F3280](v20, v22);
  }

  else
  {
    v24 = 0;
  }

  v25 = a7 & 0x100000000;
  swift_beginAccess();
  v26 = RETextureImportOperationCreateWithBundleResource();

  if (v26)
  {
    v27 = swift_allocObject();
    *(v27 + 16) = a4;
    *(v27 + 24) = a5;

    v28 = specialized static __ServiceLocator.shared.getter();
    v43 = *(*(v28 + 168) + 16);
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = a7;
    *(v29 + 28) = BYTE4(v25);
    *(v29 + 32) = v28;
    *(v29 + 40) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ()partial apply;
    v30 = v50;
    *(v29 + 48) = v51;
    *(v29 + 56) = partial apply for closure #1 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:);
    *(v29 + 64) = v27;
    *(v29 + 72) = v30;
    *(v29 + 80) = 0;
    aBlock[4] = closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)partial apply;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_515;
    v31 = _Block_copy(aBlock);
    swift_retain_n();
    v50 = v43;

    v32 = v44;
    static DispatchQoS.unspecified.getter();
    v52 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v33 = v45;
    v34 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v35 = v50;
    MEMORY[0x1C68F3CA0](0, v32, v33, v31);
    _Block_release(v31);

    (v48[1])(v33, v34);
    (*(v46 + 8))(v32, v47);
  }

  else
  {
    v36 = v43[4];
    v49 = v43[3];
    v48 = __swift_project_boxed_opaque_existential_1(v43, v49);
    LODWORD(aBlock[0]) = a7;
    v37 = HIDWORD(v25);
    BYTE4(aBlock[0]) = (a7 & 0x100000000uLL) >> 32;
    v38 = swift_allocObject();
    v40 = v50;
    v39 = v51;
    *(v38 + 16) = v19;
    *(v38 + 24) = v40;
    *(v38 + 32) = a7;
    *(v38 + 36) = v37;
    *(v38 + 40) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ()partial apply;
    *(v38 + 48) = v39;
    v41 = *(v36 + 16);

    v41(a4, a5, a6, aBlock, partial apply for closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:), v38, v49, v36);
  }
}

uint64_t closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(void *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a5 >> 8;
  v14 = a5 >> 16;
  swift_beginAccess();
  swift_unownedRetainStrong();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2 & 1;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  *(v15 + 41) = v13;
  *(v15 + 42) = v14;
  *(v15 + 44) = BYTE4(a5) & 1;
  *(v15 + 48) = a3;
  *(v15 + 56) = a6;
  *(v15 + 64) = a7;
  outlined copy of Result<[Entity], Error>(a1, a2 & 1, MEMORY[0x1E69E7D68]);

  __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:), v15);
}

void closure #1 in closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void), __n128 a7)
{
  if ((a2 & 1) == 0)
  {
    *v18 = a4;
    v18[4] = BYTE4(a4) & 1;
    specialized static TextureResource.createTextureAssetDataFor(texture:options:)(a1, v18, a7);
    swift_beginAccess();
    outlined init with copy of __REAssetService(a5 + 120, v18);
    v14 = v19;
    v15 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v15 + 32))(v14, v15);
    TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
    __swift_destroy_boxed_opaque_existential_1(v18);
    RERelease();
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for TextureResource();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
LABEL_8:
        RERelease();
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for TextureResource();
    v12 = swift_allocObject();
    v12[2] = TextureAssetFromData;
    v12[3] = 0;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_8;
  }

  *v18 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v11 = _getErrorEmbeddedNSError<A>(_:)();
  if (v11)
  {
    v12 = v11;
    outlined consume of Result<ModelEntity, Error>(a1, 1, MEMORY[0x1E69E7D60]);
  }

  else
  {
    v12 = swift_allocError();
    *v17 = a1;
  }

LABEL_10:
  a6(v12, a2 & 1);
  outlined consume of Result<ModelEntity, Error>(v12, a2 & 1, MEMORY[0x1E69E7D48]);
}

void *static TextureResource.load(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = 83886597;
  v6 = 0;
  return specialized static TextureResource.load(contentsOf:withName:options:)(a1, a2, a3, &v5, a4);
}

uint64_t static TextureResource.loadAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 83886597;
  v5 = 0;
  return static TextureResource.loadAsync(contentsOf:withName:options:)(a1, a2, a3, &v4);
}

uint64_t static TextureResource.loadAsync(contentsOf:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a4;
  v31 = a4[1];
  v32 = v11;
  v12 = *(a4 + 1);
  v29 = a4[4];
  v30 = v12;
  specialized static __ServiceLocator.shared.getter();

  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  swift_beginAccess();
  v16 = RETextureImportOperationCreateWithURL();

  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v17, v10, v7);
  v19 = swift_allocObject();
  *(v19 + 16) = v33;
  *(v19 + 24) = v16;
  v20 = v31;
  *(v19 + 32) = v32;
  *(v19 + 33) = v20;
  v21 = v29;
  *(v19 + 34) = v30;
  *(v19 + 36) = v21;
  *(v19 + 37) = 1;
  *(v19 + 40) = partial apply for closure #1 in static TextureResource.loadAsync(contentsOf:withName:options:);
  *(v19 + 48) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
  v23 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v23 + 16) = v24;
  *(v23 + 24) = 0;
  *(v23 + 32) = -1;
  *(v22 + 16) = v23;
  v25 = swift_allocObject();
  v25[2] = partial apply for closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:);
  v25[3] = v19;
  v25[4] = v23;
  v25[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
  swift_allocObject();

  *(v22 + 24) = Future.init(_:)();
  v27 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v26);

  return v27;
}

uint64_t closure #1 in static TextureResource.loadAsync(contentsOf:withName:options:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for TextureResource.LoadError(0);

  return swift_storeEnumTagMultiPayload();
}

void *static TextureResource.generate(from:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v7 = *a4;
  v8 = *(a4 + 1);
  v9 = *(a4 + 2);
  v10 = *(a4 + 4);
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();

  v11 = RETextureImportOperationCreateWithCGImage();
  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  v21[0] = v7;
  v21[1] = v8;
  v22 = v9;
  v23 = v10;
  OpaquePointer.set(options:)(v21, v11);
  v12 = specialized static TextureResource.tryCreate(from:disableNetworkSync:)(v11, 1);
  Error = v12;
  if ((v14 & 0x100) != 0)
  {
    outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v12, v13, v14, 1);
    Error = type metadata accessor for TextureResource.LoadError(0);
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError, protocol conformance descriptor for TextureResource.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v16 = v13;
    v17 = v14;
    if (RELinkedOnOrAfterFall2024OSVersions())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1887600;
      v19 = type metadata accessor for TextureResource();
      *(inited + 32) = Error;
      *(inited + 56) = v19;
      *(inited + 64) = &protocol witness table for TextureResource;
      outlined copy of Result<TextureResource, TextureResource.TextureImportOperationError>(Error, v16, v17, 0);
      specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
      if (v5)
      {
        outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(Error, v16, v17, 0);
      }

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));
    }
  }

  RERelease();
  return Error;
}

uint64_t static TextureResource.generateAsync(from:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, __n128 a5)
{
  v7 = *a4;
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

  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v11;
  *(v12 + 32) = v7;
  *(v12 + 33) = v8;
  *(v12 + 34) = v9;
  *(v12 + 36) = v10;
  *(v12 + 37) = 1;
  *(v12 + 40) = closure #1 in static TextureResource.generateAsyncInternal(from:named:options:);
  *(v12 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = 0;
  *(v14 + 32) = -1;
  *(v13 + 16) = v14;
  v16 = swift_allocObject();
  v16[2] = closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)partial apply;
  v16[3] = v12;
  v16[4] = v14;
  v16[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
  swift_allocObject();

  *(v13 + 24) = Future.init(_:)();
  v18 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v17);

  return v18;
}

uint64_t TextureResource.replace(withImage:options:)(uint64_t a1, int *a2, __n128 a3)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v5 = RETextureImportOperationCreateWithCGImage();
  v7 = v3;
  v8 = v4;
  OpaquePointer.set(options:)(&v7, v5);
  TextureResource.replaceWith(importOperation:)(v5);
  return RERelease();
}

uint64_t TextureResource.replaceAsync(withImage:options:)(uint64_t a1, int *a2, __n128 a3)
{
  v4 = *a2;
  v5 = *(a2 + 4);
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v6 = RETextureImportOperationCreateWithCGImage();
  v7 = specialized static __ServiceLocator.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 32) = v4;
  *(v8 + 36) = v5;
  *(v8 + 40) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = 0;
  *(v10 + 32) = -1;
  *(v9 + 16) = v10;
  v12 = swift_allocObject();
  v12[2] = partial apply for closure #1 in TextureResource.replaceAsyncInternal(using:options:);
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
  swift_allocObject();
  swift_retain_n();

  *(v9 + 24) = Future.init(_:)();
  v14 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v13);

  return v14;
}

uint64_t closure #1 in TextureResource.replaceAsyncInternal(using:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = a5 >> 8;
  v25 = a5 >> 16;
  v26 = a6;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v27 = *(v15 - 8);
  v28 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = *(*(a3 + 168) + 16);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  *(v20 + 25) = v11;
  v21 = v26;
  *(v20 + 26) = v25;
  *(v20 + 28) = BYTE4(a5) & 1;
  *(v20 + 32) = a3;
  *(v20 + 40) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ()partial apply;
  *(v20 + 48) = v18;
  *(v20 + 56) = v21;
  aBlock[4] = partial apply for closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_435;
  v22 = _Block_copy(aBlock);

  v23 = v19;

  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v17, v14, v22);
  _Block_release(v22);

  (*(v29 + 8))(v14, v12);
  (*(v27 + 8))(v17, v28);
}

uint64_t closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a2;
  v15 = BYTE4(a2);
  OpaquePointer.set(options:)(&v14, a1);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  if (RETextureImportOperationRun())
  {
    swift_beginAccess();
    swift_unownedRetainStrong();
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = a1;
    v11[4] = a4;
    v11[5] = a5;

    v12 = partial apply for closure #2 in closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:);
  }

  else
  {
    RERelease();
    swift_beginAccess();
    swift_unownedRetainStrong();
    v11 = swift_allocObject();
    v11[2] = a4;
    v11[3] = a5;
    v11[4] = v10;

    v12 = partial apply for closure #1 in closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:);
  }

  __Engine.asyncOnEngineQueue(_:)(v12, v11);
}

void closure #1 in closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:)(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = v5 == 0;
  if (v5)
  {
    v7 = *(a3 + 16);
  }

  else
  {
    v7 = 0x206563616C706552;
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xEE0064656C696166;
  }

  lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
  v9 = swift_allocError();
  *v10 = v7;
  *(v10 + 8) = v8;
  *(v10 + 16) = v6;
  a1(v9, 1);
}

uint64_t closure #2 in closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  TextureResource.replaceWith(importOperation:)(a2);
  a3(a1, 0);

  return RERelease();
}

uint64_t TextureResource.copy(to:)(void *a1)
{
  if (*(v1 + 24))
  {
    lazy protocol witness table accessor for type TextureResource.CopyError and conformance TextureResource.CopyError();
    swift_allocError();
    v3 = 3;
LABEL_8:
    *v2 = v3;
    return swift_willThrow();
  }

  v5 = [a1 width];
  RETextureAssetGetSize();
  if (v5 != v6 || (v7 = [a1 height], RETextureAssetGetSize(), v7 != v8))
  {
    lazy protocol witness table accessor for type TextureResource.CopyError and conformance TextureResource.CopyError();
    swift_allocError();
    v3 = 1;
    goto LABEL_8;
  }

  if (([a1 usage] & 2) == 0)
  {
    lazy protocol witness table accessor for type TextureResource.CopyError and conformance TextureResource.CopyError();
    swift_allocError();
    v3 = 2;
    goto LABEL_8;
  }

  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of [String : String](v10 + 40, &v14, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (!v15)
  {
    __break(1u);
    return result;
  }

  outlined init with take of ForceEffectBase(&v14, v16);
  v11 = v17;
  v12 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v12 + 24))(v11, v12);
  v13 = RETextureAssetCopyToDestination();
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  if ((v13 & 1) == 0)
  {
    lazy protocol witness table accessor for type TextureResource.CopyError and conformance TextureResource.CopyError();
    swift_allocError();
    v3 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t TextureResource_copyAsync_mainActorIsolationEscape_UNSAFE(resource:to:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v20 = *(v11 - 8);
  v21 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = specialized static __ServiceLocator.shared.getter();
  v15 = *(*(v14 + 168) + 16);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v14;
  v16[5] = a3;
  v16[6] = a4;
  aBlock[4] = partial apply for closure #1 in TextureResource_copyAsync_mainActorIsolationEscape_UNSAFE(resource:to:completionHandler:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_419;
  v17 = _Block_copy(aBlock);
  swift_retain_n();
  v18 = v15;

  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v13, v10, v17);
  _Block_release(v17);

  (*(v22 + 8))(v10, v8);
  (*(v20 + 8))(v13, v21);
}

uint64_t closure #1 in static TextureResource.builtinTexture(named:)(void *a1, uint64_t a2, uint64_t a3)
{
  String.utf8CString.getter();
  v4 = REBuiltinTextureAssetDescriptorCreate();

  if (v4 && (v5 = a1[3], v6 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v5), (*(v6 + 32))(v5, v6), v7 = REAssetHandleCreateWithAssetDescriptor(), REAssetHandleLoadNow(), (REAssetHandleIsLoaded() & 1) != 0))
  {
    type metadata accessor for TextureResource();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
    RERelease();
    return v8;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static TextureResource.__texture(from:)(uint64_t a1, __n128 a2)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v8);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v4 + 32))(v3, v4);
  v5 = REAssetManagerTextureMemoryAssetCreateWithMTLTexture();
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v5)
  {
    REAssetHandleLoadNow();
    type metadata accessor for TextureResource();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
    return v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static TextureResource.__texture(from:label:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 120, v19);
  v6 = v20;
  v7 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v7 + 32))(v6, v7);
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of [String : String](v8 + 40, &v14, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v15)
  {
    outlined init with take of ForceEffectBase(&v14, v16);
    v9 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v10 + 24))(v9, v10);
    if (a3)
    {
      String.utf8CString.getter();
    }

    v11 = REAssetManagerTextureMemoryAssetCreateWithCGImage();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v19);
    if (v11)
    {
      REAssetHandleLoadNow();
      type metadata accessor for TextureResource();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t key path setter for TextureResource.Drawable.drawableQueue : TextureResource.Drawable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

double TextureResource.Drawable.drawableQueue.getter()
{
  swift_beginAccess();

  return result;
}

id TextureResource.Drawable.texture.getter()
{
  Texture = REDrawableGetTexture();

  return Texture;
}

uint64_t TextureResource.Drawable.deinit()
{
  RERelease();

  return v0;
}

uint64_t TextureResource.Drawable.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance TextureResource.DrawableQueue.InitError()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD0000000000000A8;
  }
}

double TextureResource.DrawableQueue.Descriptor.init(pixelFormat:width:height:usage:mipmapsMode:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  result = 7.83295339e-242;
  *(a6 + 40) = xmmword_1C189FFA0;
  *(a6 + 56) = 0;
  return result;
}

uint64_t TextureResource.DrawableQueue.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TextureResource.DrawableQueue.init(_:)(a1);
  return v2;
}

uint64_t TextureResource.DrawableQueue.init(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *(v2 + 16) = *a1;
  *(v2 + 24) = v4;
  *(v2 + 32) = v6;
  *(v2 + 40) = v5;
  *(v2 + 48) = v7;
  *(v2 + 49) = *(a1 + 33);
  *(v2 + 52) = *(a1 + 36);
  *(v2 + 56) = v8;
  *(v2 + 64) = v9;
  *(v2 + 72) = v10;
  *(v2 + 88) = 1;
  *(v2 + 76) = 1065353216;
  v11 = Duration.components.getter();
  Duration.components.getter();
  v13 = v12 * 1.0e-18 + v11;
  *(v2 + 76) = v13;
  v14 = vdupq_n_s64(v3);
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1F40E3F88, v14), vceqq_s64(unk_1F40E3F98, v14)), vuzp1q_s32(vceqq_s64(xmmword_1F40E3FA8, v14), vceqq_s64(unk_1F40E3FB8, v14))))) & 1) == 0 && (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(xmmword_1F40E3FC8, v14), vceqq_s64(unk_1F40E3FD8, v14)), xmmword_1C189FFB0)) & 0xF) == 0 && qword_1F40E3FE8 != v3)
  {
    lazy protocol witness table accessor for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
LABEL_18:
    type metadata accessor for TextureResource.DrawableQueue();
    swift_deallocPartialClassInstance();
    return v2;
  }

  v17 = specialized static __ServiceLocator.shared.getter();

  result = RETextureDrawableQueueDescriptorCreate();
  if (!result)
  {
LABEL_17:
    lazy protocol witness table accessor for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();

    goto LABEL_18;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v4))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = RETextureDrawableQueueDescriptorSetWidth();
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  RETextureDrawableQueueDescriptorSetHeight();
  RETextureDrawableQueueDescriptorSetPixelFormat();
  RETextureDrawableQueueDescriptorSetTextureUsage();
  RETextureDrawableQueueDescriptorSetMipMapMode();
  swift_beginAccess();
  if (MEMORY[0x1C68FE2C0](*(v17 + 16)))
  {
    RETextureDrawableQueueDescriptorSetShareable();
    RETextureDrawableQueueDescriptorSetPresentsWithNextUpdate();
    RETextureDrawableQueueDescriptorSetResourceOptions();
  }

  swift_beginAccess();
  result = outlined init with copy of [String : String](v17 + 40, &v23, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v24)
  {
    outlined init with take of ForceEffectBase(&v23, v25);
    v19 = v26;
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v20 + 24))(v19, v20);
    v21 = RETextureDrawableQueueCreateWithDescriptor();
    __swift_destroy_boxed_opaque_existential_1(v25);
    RERelease();
    if (v21)
    {

      *(v2 + 80) = v21;
      return v2;
    }

    goto LABEL_17;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t TextureResource.DrawableQueue.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t TextureResource.DrawableQueue.nextDrawable()()
{
  swift_beginAccess();
  if (*(v0 + 88) != 1)
  {
    NextDrawable = RETextureDrawableQueueCreateNextDrawable();
    if (NextDrawable)
    {
      goto LABEL_3;
    }

LABEL_5:
    lazy protocol witness table accessor for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError();
    v2 = swift_allocError();
    swift_willThrow();
    return v2;
  }

  NextDrawable = RETextureDrawableQueueCreateNextDrawableWithTimeout();
  if (!NextDrawable)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for TextureResource.Drawable();
  v2 = swift_allocObject();
  *(v2 + 16) = NextDrawable;
  *(v2 + 24) = v0;

  return v2;
}

uint64_t TextureResource.DrawableQueue.nextDrawableWithTimeoutAndPollingInterval(timeout:pollingInterval:)()
{
  NextDrawableWithTimeoutAndPollingInterval = RETextureDrawableQueueCreateNextDrawableWithTimeoutAndPollingInterval();
  if (NextDrawableWithTimeoutAndPollingInterval)
  {
    v2 = NextDrawableWithTimeoutAndPollingInterval;
    type metadata accessor for TextureResource.Drawable();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
  }

  else
  {
    lazy protocol witness table accessor for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError();
    v3 = swift_allocError();
    swift_willThrow();
  }

  return v3;
}

uint64_t TextureResource.DrawableQueue.allowsNextDrawableTimeout.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t TextureResource.replace(withDrawables:)(uint64_t a1)
{
  *(v1 + 24) = a1;

  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 32))(v3, v4);
  RETextureAssetReplaceDrawableQueue();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::OpaquePointer_optional __swiftcall TextureResource.Compression.toCoreASTCOptions()()
{
  v1 = *v0;
  if ((v1 & 0xFE00) == 0x400)
  {
    v2 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1897FC0;
    v2 = *MEMORY[0x1E6998F38];
    if (*MEMORY[0x1E6998F38])
    {
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v5;
      v10 = v1;
      v6 = specialized static TextureResource.Compression.ASTCBlockSize.toCore(_:)(&v10);
      v7 = MEMORY[0x1E69E72F0];
      *(inited + 72) = MEMORY[0x1E69E72F0];
      *(inited + 48) = v6;
      v2 = *MEMORY[0x1E6998F40];
      if (*MEMORY[0x1E6998F40])
      {
        *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 88) = v8;
        *(inited + 120) = v7;
        *(inited + 96) = (v1 >> 8) + 1;
        v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
        swift_arrayDestroy();
        v2 = v9;
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

LABEL_9:
  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t closure #1 in TextureResource_copyAsync_mainActorIsolationEscape_UNSAFE(resource:to:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  TextureResource.copy(to:)(a2);
  swift_beginAccess();
  swift_unownedRetainStrong();
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;

  __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in closure #1 in TextureResource_copyAsync_mainActorIsolationEscape_UNSAFE(resource:to:completionHandler:), v7);
}

uint64_t TextureResource.init(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for URL();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(contentsOf:withName:), v7, v6);
}

uint64_t TextureResource.init(contentsOf:withName:)()
{
  (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
  *(v0 + 120) = 83886597;
  *(v0 + 124) = 0;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = TextureResource.init(contentsOf:withName:);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 24);

  return TextureResource.init(contentsOf:withName:options:)(v2, v4, v3, v0 + 120);
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];
  v5 = v0[14];

  return v4(v5);
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t TextureResource.init(contentsOf:withName:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = TextureResource.init(contentsOf:withName:);
  }

  else
  {
    v4[14] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = TextureResource.init(contentsOf:withName:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t TextureResource.init(contentsOf:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v7 = type metadata accessor for URL();
  *(v5 + 56) = v7;
  v8 = *(v7 - 8);
  *(v5 + 64) = v8;
  *(v5 + 72) = *(v8 + 64);
  *(v5 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v5 + 88) = swift_task_alloc();
  HIDWORD(v9) = *a4;
  LODWORD(v9) = *a4;
  *(v5 + 184) = v9 >> 16;
  *(v5 + 188) = *(a4 + 4);
  *(v5 + 96) = type metadata accessor for MainActor();
  *(v5 + 104) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 112) = v11;
  *(v5 + 120) = v10;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(contentsOf:withName:options:), v11, v10);
}

uint64_t TextureResource.init(contentsOf:withName:options:)()
{
  HIDWORD(v1) = *(v0 + 184);
  LODWORD(v1) = HIDWORD(v1);
  v25 = *(v0 + 188);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v23 = *(v0 + 40);
  v24 = *(v0 + 48);
  v7 = *(v0 + 24);
  v22 = *(v0 + 32);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  (*(v6 + 16))(v3, v7, v5);
  v9 = static MainActor.shared.getter();
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v9;
  *(v12 + 24) = v13;
  (*(v6 + 32))(v12 + v10, v3, v5);
  v14 = v12 + v11;
  *v14 = v22;
  *(v14 + 8) = v23;
  *(v14 + 16) = v1 >> 16;
  *(v14 + 20) = v25;
  *(v12 + ((v11 + 28) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v16 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit15TextureResourceC_Tt2g5Tm(0, 0, v2, &async function pointer to partial apply for closure #1 in TextureResource.init(contentsOf:withName:options:), v12, v15, type metadata accessor for TextureResource);
  *(v0 + 128) = v16;
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  v18 = type metadata accessor for TextureResource();
  *(v0 + 144) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v17 = v0;
  v17[1] = TextureResource.init(contentsOf:withName:options:);
  v20 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 16, v16, v18, v19, v20);
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = TextureResource.init(contentsOf:withName:options:);
  }

  else
  {
    v5 = TextureResource.init(contentsOf:withName:options:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v0[20] = v0[2];
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = TextureResource.init(contentsOf:withName:options:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = TextureResource.init(contentsOf:withName:options:);
  }

  else
  {
    v5 = TextureResource.init(contentsOf:withName:options:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v1 = v0[20];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];

  v5 = *(v1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  (*(v3 + 8))(v4, v2);

  v7 = v0[1];

  return v7(v6);
}

{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[3];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[3];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in TextureResource.init(contentsOf:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v8[8] = type metadata accessor for MainActor();
  v8[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[10] = v10;
  v8[11] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in TextureResource.init(contentsOf:withName:options:), v10, v9);
}

uint64_t closure #1 in TextureResource.init(contentsOf:withName:options:)()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v11 = *(v0 + 24);
  v4 = static MainActor.shared.getter();
  *(v0 + 96) = v4;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *(v5 + 16) = v11;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 44) = BYTE4(v2) & 1;
  *(v5 + 48) = v1;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = type metadata accessor for TextureResource();
  *v6 = v0;
  v6[1] = closure #1 in TextureResource.init(contentsOf:withName:options:);
  v8 = *(v0 + 16);
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v8, v4, v9, 0xD000000000000022, 0x80000001C18DFA70, partial apply for closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:), v5, v7);
}

{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = closure #1 in TextureResource.init(contentsOf:withName:options:);
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = closure #1 in TextureResource.init(contentsOf:withName:options:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a1;
  v33 = a6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  specialized static __ServiceLocator.shared.getter();

  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  swift_beginAccess();
  v19 = RETextureImportOperationCreateWithURL();

  if (a4)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  (*(v13 + 16))(v15, v32, v12);
  v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v20, v15, v12);
  v22 = specialized static __ServiceLocator.shared.getter();
  v23 = *(*(v22 + 168) + 16);
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = a5;
  *(v24 + 28) = BYTE4(a5) & 1;
  *(v24 + 32) = v22;
  *(v24 + 40) = partial apply for closure #2 in closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:);
  v32 = v21;
  *(v24 + 48) = v21;
  *(v24 + 56) = closure #1 in closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:);
  v25 = v33;
  *(v24 + 64) = 0;
  *(v24 + 72) = v25;
  *(v24 + 80) = 1;
  aBlock[4] = closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)partial apply;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_413;
  v26 = _Block_copy(aBlock);
  swift_retain_n();
  v27 = v23;

  v28 = v34;
  static DispatchQoS.unspecified.getter();
  v40 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v29 = v37;
  v30 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v28, v29, v26);
  _Block_release(v26);

  (*(v38 + 8))(v29, v30);
  (*(v35 + 8))(v28, v36);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit15TextureResourceC_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v26[0] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v26 - v13;
  outlined init with copy of [String : String](a3, v26 - v13, &_sScPSgMd, &_sScPSgMR);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    outlined destroy of BodyTrackingComponent?(v14, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      a7(a6);

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v23 = 0;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      outlined destroy of BodyTrackingComponent?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of BodyTrackingComponent?(a3, &_sScPSgMd, &_sScPSgMR);
  a7(a6);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t specialized RequestLoadable.awaitForResourceSharing()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](specialized RequestLoadable.awaitForResourceSharing(), 0, 0);
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_1C1887600;
  *(v2 + 56) = type metadata accessor for TextureResource();
  *(v2 + 64) = &protocol witness table for TextureResource;
  *(v2 + 32) = v1;

  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = specialized RequestLoadable.awaitForResourceSharing();
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)partial apply, v3, v5);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = specialized RequestLoadable.awaitForResourceSharing();
  }

  else
  {

    v2 = specialized RequestLoadable.awaitForResourceSharing();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](specialized RequestLoadable.awaitForResourceSharing(), 0, 0);
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_1C1887600;
  *(v2 + 56) = type metadata accessor for __MaterialResource();
  *(v2 + 64) = &protocol witness table for __MaterialResource;
  *(v2 + 32) = v1;

  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = specialized RequestLoadable.awaitForResourceSharing();
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)partial apply, v3, v5);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = specialized RequestLoadable.awaitForResourceSharing();
  }

  else
  {

    v2 = specialized RequestLoadable.awaitForResourceSharing();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](specialized RequestLoadable.awaitForResourceSharing(), 0, 0);
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_1C1887600;
  *(v2 + 56) = type metadata accessor for MeshResource();
  *(v2 + 64) = &protocol witness table for MeshResource;
  *(v2 + 32) = v1;

  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = specialized RequestLoadable.awaitForResourceSharing();
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)partial apply, v3, v5);
}

{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](specialized RequestLoadable.awaitForResourceSharing(), 0, 0);
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_1C1887600;
  *(v2 + 56) = type metadata accessor for ShapeResource();
  *(v2 + 64) = &protocol witness table for ShapeResource;
  *(v2 + 32) = v1;

  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = specialized RequestLoadable.awaitForResourceSharing();
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)partial apply, v3, v5);
}

{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](specialized RequestLoadable.awaitForResourceSharing(), 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = xmmword_1C1887600;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for UnlitMaterialResource;
  *(v3 + 32) = v1;

  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = specialized RequestLoadable.awaitForResourceSharing();
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)partial apply, v4, v6);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = specialized RequestLoadable.awaitForResourceSharing();
  }

  else
  {

    v2 = specialized RequestLoadable.awaitForResourceSharing();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](specialized RequestLoadable.awaitForResourceSharing(), 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = xmmword_1C1887600;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PhysicallyBasedMaterialResource;
  *(v3 + 32) = v1;

  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = specialized RequestLoadable.awaitForResourceSharing();
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, partial apply for closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:), v4, v6);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = specialized RequestLoadable.awaitForResourceSharing();
  }

  else
  {

    v2 = specialized RequestLoadable.awaitForResourceSharing();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t TextureResource.init<A>(named:in:options:textureLoader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  HIDWORD(v9) = *a4;
  LODWORD(v9) = *a4;
  *(v8 + 192) = v9 >> 16;
  *(v8 + 196) = *(a4 + 4);
  *(v8 + 80) = type metadata accessor for MainActor();
  *(v8 + 88) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 96) = v11;
  *(v8 + 104) = v10;

  return MEMORY[0x1EEE6DFA0](TextureResource.init<A>(named:in:options:textureLoader:), v11, v10);
}

uint64_t TextureResource.init<A>(named:in:options:textureLoader:)()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = [objc_opt_self() mainBundle];
    v1 = 0;
  }

  *(v0 + 112) = v1;
  *(v0 + 120) = v2;
  HIDWORD(v3) = *(v0 + 192);
  LODWORD(v3) = HIDWORD(v3);
  v4 = *(v0 + 196);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = v1;
  v16 = *(v0 + 56);
  v10 = static MainActor.shared.getter();
  *(v0 + 128) = v10;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *(v11 + 16) = v16;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *(v11 + 48) = v2;
  *(v11 + 56) = v3 >> 16;
  *(v11 + 60) = v4;
  *(v11 + 64) = v6;
  *(v11 + 72) = v5;
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  v13 = type metadata accessor for TextureResource();
  *(v0 + 152) = v13;
  *v12 = v0;
  v12[1] = TextureResource.init<A>(named:in:options:textureLoader:);
  v14 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 16, v10, v14, 0xD000000000000025, 0x80000001C18DF4A0, partial apply for closure #1 in TextureResource.init<A>(named:in:options:textureLoader:), v11, v13);
}

{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = TextureResource.init<A>(named:in:options:textureLoader:);
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = TextureResource.init<A>(named:in:options:textureLoader:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{
  v0[21] = v0[2];
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = TextureResource.init<A>(named:in:options:textureLoader:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = TextureResource.init<A>(named:in:options:textureLoader:);
  }

  else
  {
    v5 = TextureResource.init<A>(named:in:options:textureLoader:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[6];
  v4 = v0[7];

  v6 = *(v1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  (*(*(v4 - 8) + 8))(v5, v4);
  v8 = v0[1];

  return v8(v7);
}

{
  v2 = v0[14];
  v1 = v0[15];

  (*(*(v0[7] - 8) + 8))(v0[6]);
  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 112);

  (*(*(*(v0 + 56) - 8) + 8))(*(v0 + 48));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v53 = a8;
  v66 = a7;
  v52[1] = a6;
  v62 = a1;
  v63 = a5;
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
  v14 = *(v61 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v17 = v52 - v16;
  v18 = specialized static __ServiceLocator.shared.getter();

  v19 = a4;
  v20 = specialized static TextureResource.findBundledFileExtension(named:in:)(a2, a3, a4);
  v22 = v21;
  v64 = a2;
  v65 = a3;
  v23 = MEMORY[0x1C68F3280](a2, a3);
  if (v22)
  {
    v24 = MEMORY[0x1C68F3280](v20, v22);
  }

  else
  {
    v24 = 0;
  }

  v25 = v63;
  v60 = v63 & 0x100000000;
  swift_beginAccess();
  v67 = v18;
  v26 = v19;
  v27 = RETextureImportOperationCreateWithBundleResource();

  if (v27)
  {
    v53 = v25 >> 8;
    v28 = swift_allocObject();
    v29 = v65;
    *(v28 + 16) = v64;
    *(v28 + 24) = v29;
    v30 = v61;
    (*(v14 + 16))(v17, v62, v61);
    v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v32 = swift_allocObject();
    v33 = v32 + v31;
    v34 = v32;
    (*(v14 + 32))(v33, v17, v30);

    v35 = specialized static __ServiceLocator.shared.getter();
    v36 = *(*(v35 + 168) + 16);
    v37 = swift_allocObject();
    *(v37 + 16) = v27;
    *(v37 + 24) = v25;
    *(v37 + 25) = v53;
    *(v37 + 26) = WORD1(v25);
    *(v37 + 28) = BYTE4(v60);
    *(v37 + 32) = v35;
    *(v37 + 40) = partial apply for closure #2 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:);
    v64 = v34;
    *(v37 + 48) = v34;
    *(v37 + 56) = partial apply for closure #1 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:);
    v38 = v66;
    *(v37 + 64) = v28;
    *(v37 + 72) = v38;
    *(v37 + 80) = 0;
    aBlock[4] = partial apply for closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:);
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_388;
    v39 = _Block_copy(aBlock);
    swift_retain_n();
    v40 = v36;

    v41 = v55;
    static DispatchQoS.unspecified.getter();
    v68 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v42 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v43 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v41, v43, v39);
    _Block_release(v39);

    (*(v59 + 8))(v43, v42);
    (*(v56 + 8))(v41, v58);
  }

  else
  {
    v58 = v25 >> 16;
    v59 = a9;
    LODWORD(aBlock[0]) = v25;
    v44 = v61;
    v45 = HIDWORD(v60);
    BYTE4(aBlock[0]) = BYTE4(v60);
    (*(v14 + 16))(v17, v62, v61);
    v46 = (*(v14 + 80) + 29) & ~*(v14 + 80);
    v62 = v26;
    v47 = (v15 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    *(v48 + 16) = v67;
    *(v48 + 24) = v25;
    *(v48 + 26) = v58;
    *(v48 + 28) = v45;
    (*(v14 + 32))(v48 + v46, v17, v44);
    *(v48 + v47) = v66;
    v49 = v59;
    v50 = *(v59 + 16);

    v50(v64, v65, v62, aBlock, partial apply for closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:), v48, v53, v49);
  }
}

uint64_t closure #2 in closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:)(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(void *a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a2;
  v22 = a4 >> 8;
  v23 = a4 >> 16;
  v24 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  swift_beginAccess();
  v20 = *(a3 + 24);
  swift_unownedRetainStrong();
  (*(v11 + 16))(v14, a5, v10);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = v21 & 1;
  *(v16 + 24) = v21 & 1;
  *(v16 + 25) = a4;
  v18 = v23;
  *(v16 + 26) = v22;
  *(v16 + 27) = v18;
  *(v16 + 29) = BYTE4(a4) & 1;
  *(v16 + 32) = a3;
  (*(v11 + 32))(v16 + v15, v14, v10);
  *(v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  outlined copy of Result<[Entity], Error>(a1, v17, MEMORY[0x1E69E7D68]);

  __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:), v16);
}

uint64_t closure #1 in closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(id a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) == 0)
  {
    *v15 = a3;
    v15[4] = BYTE4(a3) & 1;
    v7 = swift_unknownObjectRetain();
    specialized static TextureResource.createTextureAssetDataFor(texture:options:)(v7, v15, v8);
    swift_beginAccess();
    outlined init with copy of __REAssetService(a4 + 120, v15);
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v10 + 32))(v9, v10);
    TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
    __swift_destroy_boxed_opaque_existential_1(v15);
    RERelease();
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for TextureResource();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
LABEL_8:
        RERelease();
        outlined consume of Result<ModelEntity, Error>(a1, 0, MEMORY[0x1E69E7D60]);
        *v15 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
        return CheckedContinuation.resume(returning:)();
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for TextureResource();
    v12 = swift_allocObject();
    *(v12 + 16) = TextureAssetFromData;
    *(v12 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_8;
  }

  *v15 = a1;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    outlined consume of Result<ModelEntity, Error>(a1, 1, MEMORY[0x1E69E7D60]);
  }

  else
  {
    swift_allocError();
    *v14 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD15TextureResourceCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD15TextureResourceCGGMR);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF15TextureResourceCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF15TextureResourceCG_GMR);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v5;
  v1[15] = v4;

  return MEMORY[0x1EEE6DFA0](_s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY0_, v5, v4);
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY0_()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v0[2] = v0[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<TextureResource> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR, protocol conformance descriptor for LoadRequest<A>);
  MEMORY[0x1C68F2ED0](v4, v5);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[16] = static MainActor.shared.getter();
  v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<TextureResource>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF15TextureResourceCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF15TextureResourceCG_GMR, MEMORY[0x1E695BFC8]);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TQ1_;
  v8 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v8, v6);
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TQ1_()
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

    v7 = _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY2_()
{

  v0[19] = v0[3];
  v1 = v0[14];
  v2 = v0[15];

  return MEMORY[0x1EEE6DFA0](_s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY3_, v1, v2);
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY3_()
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
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY4_()
{
  v0[4] = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();

  v1 = v0[14];
  v2 = v0[15];

  return MEMORY[0x1EEE6DFA0](_s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY5_, v1, v2);
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY5_()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t static TextureResource.generate(from:named:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x1EEE6DFA0](static TextureResource.generate(from:named:options:), v8, v7);
}

uint64_t static TextureResource.generate(from:named:options:)(__n128 a1)
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
  v14[1] = static TextureResource.generate(from:named:options:);

  return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v13);
}

uint64_t static TextureResource.generate(from:named:options:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = static TextureResource.generate(from:named:options:);
  }

  else
  {

    v4[15] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = static TextureResource.generate(from:named:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t static TextureResource.generate(from:named:options:)()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TextureResource.replace(using:options:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  HIDWORD(v4) = *a2;
  LODWORD(v4) = *a2;
  *(v3 + 104) = v4 >> 16;
  *(v3 + 108) = *(a2 + 4);
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 64) = v6;
  *(v3 + 72) = v5;

  return MEMORY[0x1EEE6DFA0](TextureResource.replace(using:options:), v6, v5);
}

uint64_t TextureResource.replace(using:options:)(__n128 a1)
{
  v2 = *(v1 + 108);
  HIDWORD(v3) = *(v1 + 104);
  LODWORD(v3) = HIDWORD(v3);
  v4 = *(v1 + 48);
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v5 = RETextureImportOperationCreateWithCGImage();
  v6 = specialized static __ServiceLocator.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v3 >> 16;
  *(v7 + 36) = v2;
  *(v7 + 40) = v4;
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
  v11[2] = closure #1 in TextureResource.replaceAsyncInternal(using:options:)partial apply;
  v11[3] = v7;
  v11[4] = v9;
  v11[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
  swift_allocObject();
  swift_retain_n();

  *(v8 + 24) = Future.init(_:)();
  v13 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v12);
  *(v1 + 80) = v13;

  v14 = swift_task_alloc();
  *(v1 + 88) = v14;
  *v14 = v1;
  v14[1] = TextureResource.replace(using:options:);

  return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v13);
}

uint64_t TextureResource.replace(using:options:)()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = TextureResource.replace(using:options:);
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = TextureResource.replace(using:options:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TextureResource.copy(to:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](TextureResource.copy(to:), v4, v3);
}

uint64_t TextureResource.copy(to:)()
{
  v7 = v0[1];
  v1 = static MainActor.shared.getter();
  v0[4].i64[0] = v1;
  v2 = swift_task_alloc();
  v0[4].i64[1] = v2;
  v2[1] = vextq_s8(v7, v7, 8uLL);
  v3 = swift_task_alloc();
  v0[5].i64[0] = v3;
  *v3 = v0;
  v3[1] = TextureResource.copy(to:);
  v4 = MEMORY[0x1E69E85E0];
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, v1, v4, 0x3A6F742879706F63, 0xE900000000000029, partial apply for closure #1 in TextureResource.copy(to:), v2, v5);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = TextureResource.copy(to:);
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = TextureResource.copy(to:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in TextureResource.copy(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  TextureResource_copyAsync_mainActorIsolationEscape_UNSAFE(resource:to:completionHandler:)(a2, a3, partial apply for closure #1 in closure #1 in TextureResource.copy(to:), v12);
}

uint64_t closure #1 in closure #1 in TextureResource.copy(to:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t static TextureResource.texture2DArray(slices:named:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  HIDWORD(v6) = *a4;
  LODWORD(v6) = *a4;
  *(v5 + 136) = v6 >> 16;
  *(v5 + 140) = *(a4 + 4);
  type metadata accessor for MainActor();
  *(v5 + 80) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 88) = v7;
  *(v5 + 96) = v8;

  return MEMORY[0x1EEE6DFA0](static TextureResource.texture2DArray(slices:named:options:), v7, v8);
}

uint64_t static TextureResource.texture2DArray(slices:named:options:)(__n128 a1)
{
  specialized static __ServiceLocator.shared.getter();
  *(v1 + 40) = 0;
  type metadata accessor for CGImageRef(0);

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_beginAccess();
  v3 = RETextureImportOperationCreateFromImageArray();

  if (v3)
  {
    if (*(v1 + 64))
    {
      String.utf8CString.getter();
      RETextureImportOperationSetAssetResourceName();
    }

    v4 = *(v1 + 140);
    HIDWORD(v5) = *(v1 + 136);
    LODWORD(v5) = HIDWORD(v5);
    v6 = *(v1 + 72);

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
    *(v1 + 104) = v13;

    v14 = swift_task_alloc();
    *(v1 + 112) = v14;
    *v14 = v1;
    v14[1] = static TextureResource.texture2DArray(slices:named:options:);

    return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v13);
  }

  else
  {

    v16 = *(v1 + 40);

    if (v16)
    {
    }

    type metadata accessor for TextureResource.LoadError(0);
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError, protocol conformance descriptor for TextureResource.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v17 = *(v1 + 8);

    return v17();
  }
}

{
  v27 = v1;
  v2 = *(v1 + 109);
  v3 = *(v1 + 104);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 106);
  v7 = *(v1 + 16);
  v25[0] = *(v1 + 107);
  v25[1] = v3;
  v26 = v2;
  v8 = specialized static TextureResource.createImportOperation(fromSlices:named:options:textureType:)(v7, v6 & 1, v4, v5, a1, v25, 3);
  if ((v10 & 0x100) != 0)
  {
    outlined consume of Result<OpaquePointer, TextureResource.TextureImportOperationError>(v8, v9, v10, 1);

    type metadata accessor for TextureResource.LoadError(0);
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError, protocol conformance descriptor for TextureResource.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v24 = *(v1 + 8);

    return v24();
  }

  else
  {
    v11 = *(v1 + 104);
    v12 = *(v1 + 107);
    v13 = *(v1 + 40);
    v14 = v8;
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    *(v15 + 32) = v12;
    *(v15 + 34) = v11;
    *(v15 + 36) = v2;
    *(v15 + 37) = 1;
    *(v15 + 40) = closure #1 in static TextureResource.generateAsyncInternal(from:named:options:);
    *(v15 + 48) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
    v16 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
    v17 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v17 + 16) = v18;
    *(v17 + 24) = 0;
    *(v17 + 32) = -1;
    *(v16 + 16) = v17;
    v19 = swift_allocObject();
    v19[2] = closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)partial apply;
    v19[3] = v15;
    v19[4] = v17;
    v19[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
    swift_allocObject();

    *(v16 + 24) = Future.init(_:)();
    v21 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v20);
    *(v1 + 72) = v21;

    v22 = swift_task_alloc();
    *(v1 + 80) = v22;
    *v22 = v1;
    v22[1] = static TextureResource.texture2DArray(slices:named:options:);

    return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v21);
  }
}

uint64_t static TextureResource.texture2DArray(slices:named:options:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[11];
    v6 = v4[12];
    v7 = static TextureResource.texture2DArray(slices:named:options:);
  }

  else
  {

    v4[16] = a1;
    v5 = v4[11];
    v6 = v4[12];
    v7 = static TextureResource.texture2DArray(slices:named:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = static TextureResource.texture2DArray(slices:named:options:);
  }

  else
  {

    v4[12] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = static TextureResource.texture2DArray(slices:named:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t static TextureResource.texture2DArray(slices:named:options:)()
{
  v1 = *(v0 + 128);

  v2 = *(v1 + 16);
  type metadata accessor for TextureResource();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  v4 = *(v0 + 8);

  return v4(v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 96);

  v2 = *(v1 + 16);
  type metadata accessor for TextureResource();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  v4 = *(v0 + 8);

  return v4(v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static TextureResource.texture2DArray(slices:named:options:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 106) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 107) = *a5;
  *(v6 + 104) = *(a5 + 2);
  *(v6 + 109) = *(a5 + 4);
  type metadata accessor for MainActor();
  *(v6 + 48) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;

  return MEMORY[0x1EEE6DFA0](static TextureResource.texture2DArray(slices:named:options:), v8, v7);
}

uint64_t static TextureResource.cube(slices:named:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  HIDWORD(v6) = *a4;
  LODWORD(v6) = *a4;
  *(v5 + 136) = v6 >> 16;
  *(v5 + 140) = *(a4 + 4);
  type metadata accessor for MainActor();
  *(v5 + 80) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 88) = v7;
  *(v5 + 96) = v8;

  return MEMORY[0x1EEE6DFA0](static TextureResource.cube(slices:named:options:), v7, v8);
}

uint64_t static TextureResource.cube(slices:named:options:)(__n128 a1)
{
  v2 = *(v1 + 48);
  specialized static __ServiceLocator.shared.getter();
  if (v2 >> 62)
  {
    if (__CocoaSet.count.getter() == 6)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 6)
  {
    goto LABEL_12;
  }

LABEL_3:
  *(v1 + 40) = 0;
  type metadata accessor for CGImageRef(0);

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_beginAccess();
  v4 = RETextureImportOperationCreateFromImageArray();

  if (v4)
  {
    if (*(v1 + 64))
    {
      String.utf8CString.getter();
      RETextureImportOperationSetAssetResourceName();
    }

    v5 = *(v1 + 140);
    HIDWORD(v6) = *(v1 + 136);
    LODWORD(v6) = HIDWORD(v6);
    v7 = *(v1 + 72);

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v4;
    *(v8 + 32) = v6 >> 16;
    *(v8 + 36) = v5;
    *(v8 + 37) = 1;
    *(v8 + 40) = closure #1 in static TextureResource.generateAsyncInternal(from:named:options:);
    *(v8 + 48) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
    v9 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
    v10 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v10 + 16) = v11;
    *(v10 + 24) = 0;
    *(v10 + 32) = -1;
    *(v9 + 16) = v10;
    v12 = swift_allocObject();
    v12[2] = closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)partial apply;
    v12[3] = v8;
    v12[4] = v10;
    v12[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
    swift_allocObject();

    *(v9 + 24) = Future.init(_:)();
    v14 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v13);
    *(v1 + 104) = v14;

    v15 = swift_task_alloc();
    *(v1 + 112) = v15;
    *v15 = v1;
    v15[1] = static TextureResource.cube(slices:named:options:);

    return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v14);
  }

  v17 = *(v1 + 40);

  if (v17)
  {
  }

LABEL_13:
  type metadata accessor for TextureResource.LoadError(0);
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError, protocol conformance descriptor for TextureResource.LoadError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v18 = *(v1 + 8);

  return v18();
}

uint64_t static TextureResource.cube(slices:named:options:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[11];
    v6 = v4[12];
    v7 = static TextureResource.cube(slices:named:options:);
  }

  else
  {

    v4[16] = a1;
    v5 = v4[11];
    v6 = v4[12];
    v7 = static TextureResource.cube(slices:named:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t static TextureResource.texture3D(slices:named:options:)(unint64_t a1, uint64_t *a2, uint64_t a3, int *a4, __n128 a5)
{
  v7 = *(a4 + 4);
  v11 = *a4;
  v12 = v7;
  v8 = specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(a1, 0, a2, a3, &v11, 7, a5);
  if (!v6)
  {
    v9 = v8[2];
    type metadata accessor for TextureResource();
    v5 = swift_allocObject();
    *(v5 + 16) = v9;
    *(v5 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  return v5;
}

uint64_t static TextureResource.texture3D(slices:named:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  HIDWORD(v6) = *a4;
  LODWORD(v6) = *a4;
  *(v5 + 136) = v6 >> 16;
  *(v5 + 140) = *(a4 + 4);
  type metadata accessor for MainActor();
  *(v5 + 80) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 88) = v7;
  *(v5 + 96) = v8;

  return MEMORY[0x1EEE6DFA0](static TextureResource.texture3D(slices:named:options:), v7, v8);
}

uint64_t static TextureResource.texture3D(slices:named:options:)(__n128 a1)
{
  specialized static __ServiceLocator.shared.getter();
  *(v1 + 40) = 0;
  type metadata accessor for CGImageRef(0);

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_beginAccess();
  v3 = RETextureImportOperationCreateFromImageArray();

  if (v3)
  {
    if (*(v1 + 64))
    {
      String.utf8CString.getter();
      RETextureImportOperationSetAssetResourceName();
    }

    v4 = *(v1 + 140);
    HIDWORD(v5) = *(v1 + 136);
    LODWORD(v5) = HIDWORD(v5);
    v6 = *(v1 + 72);

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
    *(v1 + 104) = v13;

    v14 = swift_task_alloc();
    *(v1 + 112) = v14;
    *v14 = v1;
    v14[1] = static TextureResource.cube(slices:named:options:);

    return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v13);
  }

  else
  {

    v16 = *(v1 + 40);

    if (v16)
    {
    }

    type metadata accessor for TextureResource.LoadError(0);
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError, protocol conformance descriptor for TextureResource.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v17 = *(v1 + 8);

    return v17();
  }
}

BOOL static TextureResource.Compression.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 8;
  if (v2 >> 8 != 4)
  {
    if (v4 == 5)
    {
      if ((v3 & 0xFF00) == 0x500)
      {
        return 1;
      }
    }

    else if ((v3 & 0xFE00) != 0x400)
    {
      v5 = (v3 ^ v2);
      if (v4 == v3 >> 8 && v5 == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return (v3 & 0xFF00) == 0x400;
}

uint64_t TextureResource.Compression.hash(into:)()
{
  v1 = *v0;
  if ((v1 >> 8) == 4)
  {
    v2 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v2 = v1 >> 8;
  }

  return MEMORY[0x1C68F4C10](v2);
}

Swift::Int TextureResource.Compression.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 >> 8) == 4)
  {
    v2 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v2 = v1 >> 8;
  }

  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextureResource.Compression.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 >> 8) == 4)
  {
    v2 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v2 = v1 >> 8;
  }

  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TextureResource.Compression.Kind()
{
  v1 = *v0;
  if ((v1 >> 8) == 4)
  {
    v2 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v2 = v1 >> 8;
  }

  return MEMORY[0x1C68F4C10](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureResource.Compression.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 >> 8) == 4)
  {
    v2 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v2 = v1 >> 8;
  }

  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextureResource.Compression(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 8;
  if (v2 >> 8 == 4)
  {
    return (v3 & 0xFF00) == 0x400;
  }

  if (v4 != 5)
  {
    if ((v3 & 0xFE00) != 0x400)
    {
      v5 = (v3 ^ v2);
      if (v4 == v3 >> 8 && v5 == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return (v3 & 0xFF00) == 0x500;
}

uint64_t TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(void *a1, uint64_t a2, uint64_t a3, char *a4, Swift::Int_optional a5, int *a6)
{
  v7 = a3;
  v9 = *a6;
  v10 = *(a6 + 4);
  v19 = *a4;
  v17 = v9;
  v18 = v10;
  a5.is_nil &= 1u;
  static TextureResource.createCubeWithCompletion(fromEquirectangular:named:quality:faceSize:options:)(a1, a2, a3, &v19, a5, &v17);
  if (v6)
  {
  }

  else
  {
    v12 = v11;

    v14 = *(v12(v13) + 16);
    type metadata accessor for TextureResource();
    v7 = swift_allocObject();
    *(v7 + 16) = v14;
    *(v7 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    RequestLoadable.enforceResourceSharingBeforeECSCommits()();
    if (v15)
    {
    }
  }

  return v7;
}

void static TextureResource.createCubeWithCompletion(fromEquirectangular:named:quality:faceSize:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, Swift::Int_optional skyboxCubeDimension, char *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  v9 = *(a6 + 1);
  LOWORD(v37) = 1280;
  BYTE2(v37) = v8;
  v38 = 0;
  v39 = 1;
  v45.is_nil = skyboxCubeDimension.is_nil;
  v45.value = skyboxCubeDimension.value;
  v34 = EnvironmentResource.CreateOptions.toCoreImageBasedLightCompilationOptions(skyboxCubeDimension:)(v45);
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();

  v11 = RETextureImportOperationCreateWithCGImage();
  RETextureImportOperationSetSemantic();
  RETextureImportOperationSetMipmapMode();
  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  if ((v9 & 0xFF00) == 0x400)
  {
    RETextureImportOperationSetCompressionType();
  }

  v43 = 0;
  if (!RETextureImportOperationCreateAssetData())
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x1C68F3410](0xD00000000000002FLL, 0x80000001C18DF9F0);
    v15 = MEMORY[0x1C68F4250](v11);
    MEMORY[0x1C68F3410](v15);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0xE000000000000000;
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *(v31 + 32) = 6;
    swift_willThrow();
LABEL_21:
    RERelease();

    return;
  }

  v42 = 0;
  swift_beginAccess();
  outlined init with copy of [String : String](v10 + 40, &v35, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (!v36)
  {
    __break(1u);
    return;
  }

  outlined init with take of ForceEffectBase(&v35, &v37);
  v12 = v40;
  v13 = v41;
  __swift_project_boxed_opaque_existential_1(&v37, v40);
  (*(v13 + 24))(v12, v13);
  if (v34)
  {
    v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  v16 = RECreateCubeTextureDataFromLatLong();

  __swift_destroy_boxed_opaque_existential_1(&v37);
  if (!v16)
  {
    v25 = v42;
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18DFA40);
    v26 = MEMORY[0x1C68F4250](v11);
    MEMORY[0x1C68F3410](v26);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    v27 = v38;
    if (v25)
    {
      v28 = v25;

      v27 = 0;
      v29 = 5;
    }

    else
    {
      v25 = v37;
      v29 = 6;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v32 = v25;
    *(v32 + 8) = v27;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = v29;
    swift_willThrow();
    RERelease();
    goto LABEL_21;
  }

  swift_beginAccess();
  outlined init with copy of __REAssetService(v10 + 120, &v37);
  v18 = v40;
  v17 = v41;
  __swift_project_boxed_opaque_existential_1(&v37, v40);
  (*(v17 + 32))(v18, v17);
  TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
  __swift_destroy_boxed_opaque_existential_1(&v37);
  RERelease();
  RERelease();
  RERelease();

  LOWORD(v37) = v9;
  v20 = TextureResource.Compression.toCoreASTCOptions()();
  if (!v20)
  {
    v22 = 0;
    v24 = 0;
    v21 = v33;
LABEL_18:
    v30 = swift_allocObject();
    v30[2] = TextureAssetFromData;
    v30[3] = v22;
    v30[4] = v24;
    v30[5] = v21;
    return;
  }

  v21 = v33;
  v22 = static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)(TextureAssetFromData, v20);
  v24 = v23;

  if (!v6)
  {
    goto LABEL_18;
  }
}

uint64_t TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 40) = a5;
  *(v8 + 48) = v7;
  *(v8 + 114) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 115) = *a4;
  *(v8 + 116) = *a7;
  *(v8 + 112) = *(a7 + 2);
  *(v8 + 118) = *(a7 + 4);
  type metadata accessor for MainActor();
  *(v8 + 56) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 64) = v10;
  *(v8 + 72) = v9;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:), v10, v9);
}

uint64_t TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)()
{
  v1 = 0x100000000;
  if (!*(v0 + 118))
  {
    v1 = 0;
  }

  v2 = closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 115), *(v0 + 40), *(v0 + 114) & 1, v1 | (*(v0 + 112) << 16) | (*(v0 + 117) << 8) | *(v0 + 116), *(v0 + 48));
  *(v0 + 80) = v2;

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:);

  return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v2);
}

{
  v1 = v0[13];
  v2 = v0[2];

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
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:);
  }

  else
  {

    v4[13] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v36 = a3;
  v34 = a6;
  v33 = a5;
  HIDWORD(v32) = a4;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = specialized static __ServiceLocator.shared.getter();
  v16 = *(*(v15 + 168) + 16);
  swift_beginAccess();
  v17 = *(v15 + 24);
  swift_unownedRetainStrong();
  v18 = *(v17 + 32);

  v19 = v16;
  v20 = v18;

  *v14 = v20;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v21 = v20;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v17)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = a2;
    *(v23 + 32) = v36;
    *(v23 + 40) = BYTE4(v32) & 1;
    *(v23 + 48) = v33;
    *(v23 + 56) = v34 & 1;
    *(v23 + 57) = a7;
    *(v23 + 61) = BYTE4(a7) & 1;
    *(v23 + 64) = v15;
    *(v23 + 72) = v19;
    *(v23 + 80) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
    v24 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
    v25 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v25 + 16) = v26;
    *(v25 + 24) = 0;
    *(v25 + 32) = -1;
    *(v24 + 16) = v25;
    v27 = swift_allocObject();
    v27[2] = partial apply for closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:);
    v27[3] = v23;
    v27[4] = v25;
    v27[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
    swift_allocObject();

    v28 = v19;
    v29 = a1;
    *(v24 + 24) = Future.init(_:)();
    v31 = specialized LoadRequest<A>.thenWaitForResourceSharing()(v30);

    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35 = a8;
  v34 = a7;
  v33 = a6;
  v40 = a11;
  v36 = a10;
  v37 = a12;
  v30 = a4;
  v31 = a9 >> 8;
  v32 = a9 >> 16;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v19 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v23 = swift_allocObject();
  v24 = v30;
  *(v23 + 16) = a3;
  *(v23 + 24) = v24;
  *(v23 + 32) = a5;
  *(v23 + 40) = v33 & 1;
  *(v23 + 48) = v34;
  *(v23 + 56) = v35 & 1;
  *(v23 + 57) = a9;
  LOWORD(v24) = v32;
  *(v23 + 58) = v31;
  *(v23 + 59) = v24;
  *(v23 + 61) = BYTE4(a9) & 1;
  v25 = v37;
  *(v23 + 64) = v36;
  *(v23 + 72) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
  *(v23 + 80) = v22;
  *(v23 + 88) = v25;
  aBlock[4] = partial apply for doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_359;
  v26 = _Block_copy(aBlock);

  v27 = a3;
  static DispatchQoS.unspecified.getter();
  v41 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v21, v18, v26);
  _Block_release(v26);
  (*(v39 + 8))(v18, v16);
  (*(v19 + 8))(v21, v38);
}

uint64_t doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, Swift::Int_optional a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = BYTE4(a6);
  v15 = a6;
  v17 = a4 & 1;
  a5.is_nil &= 1u;
  static TextureResource.createCubeWithCompletion(fromEquirectangular:named:quality:faceSize:options:)(a1, a2, a3, &v17, a5, &v15);
  v10 = v9;
  v12 = v11;
  swift_beginAccess();
  swift_unownedRetainStrong();
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v12;
  v13[4] = a8;
  v13[5] = a9;

  __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:), v13);
}

uint64_t closure #1 in doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(uint64_t (*a1)(void), uint64_t a2, void (*a3)(__n128))
{
  a1();

  (a3)(v4, 0);
}

uint64_t TextureResource.init(cubeFromImage:named:options:)(CGImage *a1, uint64_t *a2, uint64_t a3, char *a4)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = *(a4 + 1);
  v11 = a4[4];
  v12 = specialized static TextureResource.sliceCube(cgImage:)(a1);
  if (v4)
  {
  }

  else
  {
    v18[0] = v8;
    v18[1] = v9;
    v19 = v10;
    v20 = v11;
    v15 = *(specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(v12, 0, a2, a3, v18, 5, v13) + 2);
    type metadata accessor for TextureResource();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();

    v17 = *(v16 + 16);
    a3 = swift_allocObject();
    *(a3 + 16) = v17;
    *(a3 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  return a3;
}

uint64_t TextureResource.init(cubeFromImage:named:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 111) = *a4;
  *(v5 + 104) = *(a4 + 2);
  *(v5 + 113) = *(a4 + 4);
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(cubeFromImage:named:options:), v7, v6);
}

uint64_t TextureResource.init(cubeFromImage:named:options:)()
{
  v1 = specialized static TextureResource.sliceCube(cgImage:)(*(v0 + 16));
  *(v0 + 72) = v1;
  v2 = *(v0 + 113);
  v3 = *(v0 + 104);
  *(v0 + 106) = *(v0 + 111);
  *(v0 + 108) = v3;
  *(v0 + 110) = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = TextureResource.init(cubeFromImage:named:options:);
  v6 = *(v0 + 32);
  v7 = *(v0 + 24);

  return static TextureResource.cube(slices:named:options:)(v4, v7, v6, v0 + 106);
}

{
  v1 = v0[12];
  v2 = v0[2];

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
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t TextureResource.init(cubeFromImage:named:options:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    v5 = v4[7];
    v6 = v4[8];
    v7 = TextureResource.init(cubeFromImage:named:options:);
  }

  else
  {
    v4[12] = a1;

    v5 = v4[7];
    v6 = v4[8];
    v7 = TextureResource.init(cubeFromImage:named:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t (*static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)(uint64_t a1, uint64_t a2))()
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of [String : String](v8 + 40, &v44, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (!v45)
  {
    __break(1u);
LABEL_30:
    __break(1u);
  }

  outlined init with take of ForceEffectBase(&v44, &v40);
  v9 = v42;
  v10 = v43;
  __swift_project_boxed_opaque_existential_1(&v40, v42);
  v11 = (*(v10 + 24))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  if (!*MEMORY[0x1E6998F38])
  {
    goto LABEL_30;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
    v15 = v14;

    if (v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  result = *MEMORY[0x1E6998F40];
  if (!*MEMORY[0x1E6998F40])
  {
    __break(1u);
    return result;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a2 + 16))
  {

    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  RETextureAssetGetPixelFormat();
  v21 = RERenderManagerGetRenderDevice();
  MTLPixelFormatGetInfoForDevice();
  v22 = v41;
  swift_unknownObjectRelease();
  if ((v22 & 0x400) != 0)
  {
    return 0;
  }

  *&v44 = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  CompressedTextureAssetData = RETextureAssetCreateCompressedTextureAssetData();

  if (CompressedTextureAssetData)
  {
    v25 = RERenderManagerGetRenderDevice();
    RETextureAssetDataGetPixelFormat();
    MTLPixelFormatGetInfoForDevice();
    if (v41 & 0x400) != 0 || ([v25 supportsFamily_])
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = specialized static __ServiceLocator.shared.getter();
      (*(v5 + 16))(v7, *(*(v30 + 168) + 24) + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logger, v4);
      v31 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      v38 = v31;
      if (os_log_type_enabled(v31, v37))
      {
        v32 = swift_slowAlloc();
        v36 = v32;
        *v32 = 0;
        v33 = v38;
        _os_log_impl(&dword_1C1358000, v38, v37, "Compression not applied because ASTC pixel formats are not supported by device. Keeping track of options so later calls to Entity.write() can apply compression.", v32, 2u);
        MEMORY[0x1C6902A30](v36, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      (*(v5 + 8))(v7, v4);
    }

    v34 = swift_allocObject();
    v34[2] = v11;
    v34[3] = a1;
    v35 = v39;
    v34[4] = CompressedTextureAssetData;
    v34[5] = v35;
    return partial apply for closure #1 in static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:);
  }

  else
  {
    v26 = v44 == 0;
    if (v44)
    {
      v27 = v44;
    }

    else
    {
      v27 = 0xD00000000000001ALL;
    }

    if (v44)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0x80000001C18DF8C0;
    }

    lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
    swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = v26;
    return swift_willThrow();
  }
}