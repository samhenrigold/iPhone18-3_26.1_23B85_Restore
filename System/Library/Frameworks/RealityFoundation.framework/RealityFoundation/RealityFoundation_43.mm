uint64_t VirtualEnvironmentProbeComponent.__toCore(_:)(uint64_t *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  outlined copy of VirtualEnvironmentProbeComponent.Source(*v1, v2, v4);
  REVirtualEnvironmentProbeComponentClearResources();
  if (v4 >> 62)
  {
    if (v4 >> 62 == 1)
    {
      REVirtualEnvironmentProbeComponentAddResource();
      REVirtualEnvironmentProbeComponentSetIntensityExponent();
      REVirtualEnvironmentProbeComponentSetRelativeWeight();
      REVirtualEnvironmentProbeComponentAddResource();
      REVirtualEnvironmentProbeComponentSetIntensityExponent();
      REVirtualEnvironmentProbeComponentSetRelativeWeight();
    }
  }

  else
  {
    REVirtualEnvironmentProbeComponentAddResource();
    REVirtualEnvironmentProbeComponentSetIntensityExponent();
    REVirtualEnvironmentProbeComponentSetRelativeWeight();
    outlined consume of VirtualEnvironmentProbeComponent.Source(v3, v2, v4);
  }

  return RENetworkMarkComponentDirty();
}

unint64_t get_enum_tag_for_layout_string_17RealityFoundation32VirtualEnvironmentProbeComponentV6SourceO(void *a1)
{
  v1 = a1[2];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t getEnumTagSinglePayload for VirtualEnvironmentProbeComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 25) & 0xFFFFFF80;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for VirtualEnvironmentProbeComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (-a2 | (-a2 << 57)) & 0xF000000000000007;
      *(result + 8) = (-a2 << 25) & 0x1FFFFFF00000000;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t destructiveInjectEnumTag for VirtualEnvironmentProbeComponent.Source(uint64_t a1, uint64_t a2)
{
  if (a2 < 2)
  {
    v3 = *(a1 + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    result = vandq_s8(*a1, xmmword_1C18C0FD0);
    *a1 = result;
    *(a1 + 16) = v3;
  }

  else
  {
    *a1 = 8 * (a2 - 2);
    result.i64[0] = 0;
    *(a1 + 8) = xmmword_1C18C0FE0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t __RKEntityFadeAction.__allocating_init(targetEntity:targetOpacity:duration:)(uint64_t a1, float a2, float a3)
{
  v6 = swift_allocObject();
  *(v6 + 108) = a2;
  *(v6 + 112) = a3;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityFadeAction.init(targetEntity:targetOpacity:duration:)(uint64_t a1, float a2, float a3)
{
  *(v3 + 108) = a2;
  *(v3 + 112) = a3;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityFadeAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = type metadata accessor for __RKEntityFadeAction();
  *(swift_allocObject() + 108) = *(v1 + 108);

  result = __RKEntityAction.init(targetEntity:)(v4);
  a1[3] = v3;
  *a1 = result;
  return result;
}

uint64_t __RKEntityFadeAction.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (v5 && *(a1 + 16) == *(v5 + 16))
  {
    v5 = a2;
  }

  type metadata accessor for __RKEntityFadeAction();
  *(swift_allocObject() + 108) = *(v2 + 108);

  return __RKEntityAction.init(targetEntity:)(v5);
}

uint64_t __RKFadeSceneAction.__allocating_init(targetOpacity:duration:)(float a1, float a2)
{
  v4 = swift_allocObject();
  *(v4 + 108) = a1;
  *(v4 + 112) = a2;
  return __RKEntityAction.init(targetEntity:)(0);
}

uint64_t __RKFadeSceneAction.init(targetOpacity:duration:)(float a1, float a2)
{
  *(v2 + 108) = a1;
  *(v2 + 112) = a2;
  return __RKEntityAction.init(targetEntity:)(0);
}

uint64_t __RKEntityFadeAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *))
{
  v16 = StaticString.description.getter();
  v17 = v6;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v8 = v16;
  v7 = v17;
  swift_beginAccess();
  if (*(v4 + 104) == 1 && *(v4 + 96) == 1 && (swift_beginAccess(), *(v4 + 105) == 1) || !RESceneGetECSManagerNullable())
  {

    return 0;
  }

  else
  {
    v9 = *(v4 + 96);
    v10 = *(v4 + 104);
    v11 = 1;
    *(v4 + 96) = 1;
    *(v4 + 104) = 1;
    v14 = v9;
    LOBYTE(v15) = v10;
    __RKEntityAction.state.didset(&v14);
    v14 = v8;
    v15 = v7;
    v12 = static os_log_type_t.info.getter();
    a4(v12, &v14);
  }

  return v11;
}

uint64_t __RKFadeSceneAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for __RKFadeSceneAction();
  *(swift_allocObject() + 108) = *(v1 + 108);
  result = __RKEntityAction.init(targetEntity:)(0);
  a1[3] = v3;
  *a1 = result;
  return result;
}

uint64_t __RKEntityFadeAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t __RKEntityFadeAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));
  return swift_deallocClassInstance();
}

double Entity.metrics.getter@<D0>(void *a1@<X8>)
{
  *a1 = v1;

  return result;
}

uint64_t Entity.MetricUtilitiesBase.meshAsset.getter()
{
  REMeshComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {
    return REMeshComponentGetMesh();
  }

  return result;
}

void Entity.MetricUtilitiesBase.animationJointCounts.getter(uint64_t a1)
{
  v24 = a1;
  v2 = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = v21 - v4;
  v27 = *v1;
  v5 = Entity.MetricUtilitiesBase.skeletalAnimationNames.getter();
  v6 = MEMORY[0x1E69E6B70];
  swift_getTupleTypeMetadata2();
  v7 = static Array._allocateUninitialized(_:)();
  v8 = specialized Dictionary.init(dictionaryLiteral:)(v7, v6, v2, MEMORY[0x1E69E6B78]);

  v9 = 0;
  v27 = v8;
  v11 = v5 + 8;
  v10 = v5[8];
  v25 = v5;
  v12 = 1 << *(v5 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  v21[1] = v2 - 8;
  v22 = v2;
  if ((v13 & v10) != 0)
  {
    do
    {
      v16 = v9;
LABEL_9:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = *(v25[6] + 8 * (v17 | (v16 << 6)));

      RETimelineDefinitionCreateFromTimeline();
      SkeletalJointCount = RETimelineDefinitionGetSkeletalJointCount();
      lazy protocol witness table accessor for type Int and conformance Int();
      v19 = v22;
      v20 = v23;
      dispatch thunk of BinaryInteger.init<A>(_:)();
      (*(*(v19 - 8) + 56))(v20, 0, 1, v19);
      SkeletalJointCount = v18;
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();

      RERelease();
    }

    while (v14);
  }

  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      return;
    }

    v14 = v11[v16];
    ++v9;
    if (v14)
    {
      v9 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *Entity.MetricUtilitiesBase.skeletalAnimationNames.getter()
{
  REAnimationLibraryComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (!ComponentByClass)
  {
    return v1;
  }

  if (!REAnimationLibraryComponentGetAnimationLibraryAsset())
  {
    return v1;
  }

  REAssetGetAssetManager();
  if (!REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset())
  {
    return v1;
  }

  EntryCount = REAnimationLibraryDefinitionGetEntryCount();
  if (EntryCount < 0)
  {
    goto LABEL_35;
  }

  v3 = EntryCount;
  if (!EntryCount)
  {
LABEL_31:
    RERelease();
    return v1;
  }

  v4 = 0;
  while (1)
  {
    EntryAsset = REAnimationLibraryDefinitionGetEntryAsset();
    if (!EntryAsset)
    {
      goto LABEL_10;
    }

    v7 = EntryAsset;
    v8 = REAssetGetType();
    v9 = String.init(_:)(v8);
    if (v9._countAndFlagsBits == 0x656E696C656D6954 && v9._object == 0xE800000000000000)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    RETimelineDefinitionCreateFromTimeline();
    if (RETimelineDefinitionGetTimelineType() == 19)
    {
      break;
    }

LABEL_9:
    RERelease();
LABEL_10:
    if (v3 == ++v4)
    {
      goto LABEL_31;
    }
  }

  v12 = v3;
  RETimelineDefinitionGetName();
  v13 = String.init(cString:)();
  v15 = v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v19 = v1[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (!__OFADD__(v19, v20))
  {
    v22 = v17;
    if (v1[3] < v21)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_36;
      }

      v18 = v23;
      if ((v22 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_7:
      v5 = (v1[7] + 16 * v18);
      *v5 = v13;
      v5[1] = v15;

LABEL_8:
      v3 = v12;
      goto LABEL_9;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v22)
      {
        goto LABEL_7;
      }
    }

LABEL_27:
    v1[(v18 >> 6) + 8] |= 1 << v18;
    *(v1[6] + 8 * v18) = v7;
    v25 = (v1[7] + 16 * v18);
    *v25 = v13;
    v25[1] = v15;
    v26 = v1[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_34;
    }

    v1[2] = v28;
    goto LABEL_8;
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

void Entity.MetricUtilitiesBase.averageSkinInfluenceCount.getter()
{
  if (Entity.MetricUtilitiesBase.meshAsset.getter())
  {
    ModelCount = REMeshAssetGetModelCount();
    if (ModelCount < 0)
    {
      __break(1u);
    }

    else
    {
      v1 = ModelCount;
      if (ModelCount)
      {
        v2 = 0;
        v3 = 0.0;
        do
        {
          v4 = v2 + 1;
          REMeshAssetGetAverageInfluenceCount();
          v3 = v3 + v5;
          v2 = v4;
        }

        while (v1 != v4);
      }
    }
  }
}

uint64_t Entity.MetricUtilitiesBase.influenceCount.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v7 = v16;
  Entity.MetricUtilitiesBase.averageSkinInfluenceCount.getter();
  v9 = v8;
  v15 = v7;
  Entity.MetricUtilitiesBase.meshVertexCount.getter(a1);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    v11 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v12 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v4 + 8))(v6, v3);
    if (v11)
    {
      v10 = v12;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Float and conformance Float();
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    (*(v4 + 8))(v6, v3);
    v10 = *&v14[3];
  }

  *&v16 = v9 * v10;
  lazy protocol witness table accessor for type Float and conformance Float();
  return dispatch thunk of BinaryInteger.init<A>(_:)();
}

uint64_t Entity.MetricUtilitiesBase.meshVertexCount.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  if (Entity.MetricUtilitiesBase.meshAsset.getter())
  {
    result = REMeshAssetGetModelCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v3 = 0;
      v4 = result;
      if (!result)
      {
LABEL_7:
        lazy protocol witness table accessor for type UInt32 and conformance UInt32();
        return dispatch thunk of BinaryInteger.init<A>(_:)();
      }

      v5 = 0;
      while (1)
      {
        result = REMeshAssetGetModelVertexCount();
        v6 = __CFADD__(v3, result);
        v3 += result;
        if (v6)
        {
          break;
        }

        if (v4 == ++v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }

  return result;
}

uint64_t Entity.MetricUtilitiesBase.shapeTargetCount.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  if (Entity.MetricUtilitiesBase.meshAsset.getter())
  {
    result = REMeshAssetGetModelCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v3 = result;
      if (!result)
      {
LABEL_12:
        lazy protocol witness table accessor for type Int and conformance Int();
        return dispatch thunk of BinaryInteger.init<A>(_:)();
      }

      v4 = 0;
      v5 = 0;
      while (1)
      {
        result = REMeshAssetGetBlendShapeGroupCount();
        if (result < 0)
        {
          break;
        }

        v6 = result;
        if (result)
        {
          v7 = 0;
          v8 = v4;
          while (1)
          {
            result = REMeshAssetGetBlendShapeGroupDefinitionCount();
            v9 = __OFADD__(v8, result);
            v8 += result;
            if (v9)
            {
              break;
            }

            ++v7;
            v4 = v8;
            if (v6 == v7)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:
        if (++v5 == v3)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }

  return result;
}

uint64_t Entity.MetricUtilitiesBase.skeletalAnimationCount.getter(uint64_t a1)
{
  Entity.MetricUtilitiesBase.animationJointCounts.getter(a1);
  MEMORY[0x1C68F3170]();

  lazy protocol witness table accessor for type Int and conformance Int();
  return dispatch thunk of BinaryInteger.init<A>(_:)();
}

uint64_t Entity.MetricUtilitiesBase.skeletonJointCount.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  if (Entity.MetricUtilitiesBase.meshAsset.getter())
  {
    result = REMeshAssetGetTotalSkeletonCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v3 = 0;
      v4 = result;
      if (!result)
      {
LABEL_7:
        lazy protocol witness table accessor for type Int and conformance Int();
        return dispatch thunk of BinaryInteger.init<A>(_:)();
      }

      v5 = 0;
      while (1)
      {
        result = REMeshAssetGetSkeletonJointCount();
        v6 = __OFADD__(v3, result);
        v3 += result;
        if (v6)
        {
          break;
        }

        if (v4 == ++v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }

  return result;
}

uint64_t Entity.MetricUtilitiesBase.transformAnimationCount.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  REAnimationLibraryComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    v2 = MEMORY[0x1E69E7CD0];
    v10 = MEMORY[0x1E69E7CD0];
    if (!REAnimationLibraryComponentCreateQueryAllTransformAnimations())
    {
LABEL_9:
      v8 = *(v2 + 16);

      v9 = v8;
      lazy protocol witness table accessor for type Int and conformance Int();
      return dispatch thunk of BinaryInteger.init<A>(_:)();
    }

    result = REAnimationLibraryComponentGetTransformQueryResultCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v4 = result;
      if (result)
      {
        v5 = 0;
        do
        {
          v6 = v5 + 1;
          TransformQueryResultAnimationAsset = REAnimationLibraryComponentGetTransformQueryResultAnimationAsset();
          specialized Set._Variant.insert(_:)(&v9, TransformQueryResultAnimationAsset);
          v5 = v6;
        }

        while (v4 != v6);
        v2 = v10;
      }

      RERelease();
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }

  return result;
}

void Entity.MetricUtilitiesBase.audioAssets.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v41 - v4;
  v60 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(*(*(a1 + 24) + 24) + 16);
  v59 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = type metadata accessor for Optional();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v9 = &v41 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v41 - v14;
  v15 = swift_slowAlloc();
  *v15 = 0;
  v42 = v15;
  v16 = REAudioPlayerComponentCopySizeOfAudioPlayerComponentFromEntity();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *&v70 = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

    v17 = v70;
    if (v70)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_6:
  v18 = MEMORY[0x1E69E6158];
  v19 = v59;
  swift_getTupleTypeMetadata2();
  v20 = static Array._allocateUninitialized(_:)();
  v21 = specialized Dictionary.init(dictionaryLiteral:)(v20, v18, v19, MEMORY[0x1E69E6168]);

  v22 = 0;
  v74 = v21;
  v23 = v17 + 64;
  v24 = 1 << *(v17 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v17 + 64);
  v27 = (v24 + 63) >> 6;
  v61 = (v10 + 56);
  ++v49;
  v48 = (v10 + 32);
  v47 = (v10 + 16);
  v46 = (v60 + 16);
  v45 = (v60 + 56);
  v44 = (v60 + 8);
  v43 = (v10 + 8);
  v55 = AssociatedTypeWitness;
  v53 = v9;
  v50 = v17;
  if (!v26)
  {
    goto LABEL_13;
  }

  do
  {
    while (1)
    {
      v35 = v22;
LABEL_20:
      v38 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v39 = v38 | (v35 << 6);
      outlined init with copy of AnyHashable(*(v17 + 48) + 40 * v39, v63);
      outlined init with copy of Any(*(v17 + 56) + 32 * v39, v62);
      v65 = v63[0];
      v66 = v63[1];
      *&v67 = v64;
      outlined init with take of Any(v62, (&v67 + 8));
      v37 = v35;
LABEL_21:
      v72[0] = v67;
      v72[1] = v68;
      v73 = v69;
      v70 = v65;
      v71 = v66;
      if (!*(&v66 + 1))
      {

        MEMORY[0x1C6902A30](v42, -1, -1);
        return;
      }

      outlined init with take of Any((v72 + 8), v63);
      v65 = v70;
      v66 = v71;
      *&v67 = *&v72[0];
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_11;
      }

      v40 = v62[0];
      outlined init with copy of Any(v63, &v65);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v61)(v9, 0, 1, AssociatedTypeWitness);
      v28 = v51;
      (*v48)(v51, v9, AssociatedTypeWitness);
      v29 = *v47;
      v60 = v40;
      v29(v52, v28, AssociatedTypeWitness);
      v30 = v57;
      v31 = v59;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v32 = v58;
      (*v46)(v58, v30, v31);
      (*v45)(v32, 0, 1, v31);
      *&v65 = v60;
      *(&v65 + 1) = *(&v40 + 1);
      type metadata accessor for Dictionary();
      v17 = v50;
      Dictionary.subscript.setter();
      v33 = v30;
      AssociatedTypeWitness = v55;
      v34 = v31;
      v9 = v53;
      (*v44)(v33, v34);
      (*v43)(v28, AssociatedTypeWitness);
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(v63);
      v22 = v37;
      if (!v26)
      {
        goto LABEL_13;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v63);

    (*v61)(v9, 1, 1, AssociatedTypeWitness);
    (*v49)(v9, v54);
    v22 = v37;
  }

  while (v26);
LABEL_13:
  if (v27 <= v22 + 1)
  {
    v36 = v22 + 1;
  }

  else
  {
    v36 = v27;
  }

  v37 = v36 - 1;
  while (1)
  {
    v35 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v35 >= v27)
    {
      v26 = 0;
      v69 = 0;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      goto LABEL_21;
    }

    v26 = *(v23 + 8 * v35);
    ++v22;
    if (v26)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t Entity.MetricUtilitiesBase.audioFileCount.getter(uint64_t a1, uint64_t (*a2)(void))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  REAudioPlayerComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    a2();
    lazy protocol witness table accessor for type Int and conformance Int();
    return dispatch thunk of BinaryInteger.init<A>(_:)();
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }
}

uint64_t Entity.MetricUtilitiesBase.meshMemory.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  if (Entity.MetricUtilitiesBase.meshAsset.getter())
  {
    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v3 = SceneNullable;
      v4 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v4)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        Scene.init(coreScene:)(v3);
      }

      if (RESceneGetECSManagerNullable())
      {
        REECSManagerGetServiceLocator();
        REAssetComputeEstimatedMemorySize();
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(_:)();
      }
    }
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
}

uint64_t Entity.MetricUtilitiesBase.meshTriangleCount.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  REMeshComponentGetComponentType();
  if (!REEntityGetComponentByClass() || (MEMORY[0x1C68FBF60]() & 0x80000000) != 0)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }

  else
  {
    lazy protocol witness table accessor for type Int32 and conformance Int32();
    return dispatch thunk of BinaryInteger.init<A>(_:)();
  }
}

uint64_t specialized Entity.MetricUtilitiesBase.hasTechniqueMappedToShadowPass.getter(uint64_t a1)
{
  REMaterialParameterBlockArrayComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {
    return ComponentByClass;
  }

  v4 = specialized Entity.MetricUtilitiesBase.materialCounts.getter(v2, v3);

  v6 = 0;
  v8 = v4 + 8;
  v7 = v4[8];
  v9 = 1 << *(v4 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  if ((v10 & v7) == 0)
  {
    while (1)
    {
LABEL_6:
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v13 >= v12)
      {
        break;
      }

      v11 = v8[v13];
      ++v6;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    ComponentByClass = 0;
LABEL_21:

    return ComponentByClass;
  }

  while (1)
  {
    v13 = v6;
LABEL_9:
    v14 = swift_slowAlloc();
    *v14 = 0;
    result = REMaterialParameterBlockArrayComponentSize();
    if (result < 0)
    {
      break;
    }

    v15 = result;
    if (result)
    {
      v16 = 0;
      while (1)
      {
        if (REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex())
        {
          REMaterialAssetGetMaterialDefinition();
          if (REMaterialDefinitionAssetHasTechniqueWithHash())
          {
            break;
          }
        }

        if (v15 == ++v16)
        {
          goto LABEL_16;
        }
      }

LABEL_19:
      MEMORY[0x1C6902A30](v14, -1, -1);
      ComponentByClass = 1;
      goto LABEL_21;
    }

LABEL_16:
    if (REMaterialAssetGetValidPassTechniqueMapping())
    {
      goto LABEL_19;
    }

    v11 &= v11 - 1;
    result = MEMORY[0x1C6902A30](v14, -1, -1);
    v6 = v13;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t Entity.MetricUtilitiesBase.hasTechniqueMappedToShadowPass.getter(uint64_t a1)
{
  REMaterialParameterBlockArrayComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {
    return ComponentByClass;
  }

  v4 = specialized Entity.MetricUtilitiesBase.materialCounts.getter(v2, v3);

  v6 = 0;
  v8 = v4 + 8;
  v7 = v4[8];
  v9 = 1 << *(v4 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  if ((v10 & v7) == 0)
  {
    while (1)
    {
LABEL_6:
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v13 >= v12)
      {
        break;
      }

      v11 = v8[v13];
      ++v6;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    ComponentByClass = 0;
LABEL_21:

    return ComponentByClass;
  }

  while (1)
  {
    v13 = v6;
LABEL_9:
    v14 = swift_slowAlloc();
    *v14 = 0;
    result = REMaterialParameterBlockArrayComponentSize();
    if (result < 0)
    {
      break;
    }

    v15 = result;
    if (result)
    {
      v16 = 0;
      while (1)
      {
        if (REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex())
        {
          REMaterialAssetGetMaterialDefinition();
          if (REMaterialDefinitionAssetHasTechniqueWithHash())
          {
            break;
          }
        }

        if (v15 == ++v16)
        {
          goto LABEL_16;
        }
      }

LABEL_19:
      MEMORY[0x1C6902A30](v14, -1, -1);
      ComponentByClass = 1;
      goto LABEL_21;
    }

LABEL_16:
    if (REMaterialAssetGetValidPassTechniqueMapping())
    {
      goto LABEL_19;
    }

    v11 &= v11 - 1;
    result = MEMORY[0x1C6902A30](v14, -1, -1);
    v6 = v13;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

void *specialized Entity.MetricUtilitiesBase.materialCounts.getter(uint64_t a1, __n128 a2)
{
  REMeshComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_s5Int32VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (!ComponentByClass)
  {
    return v3;
  }

  REMeshComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    return v3;
  }

  MaterialCount = REMeshComponentGetMaterialCount();
  if (MaterialCount < 0xFFFFFFFF80000000)
  {
    goto LABEL_30;
  }

  v5 = MaterialCount;
  if (MaterialCount > 0x7FFFFFFF)
  {
LABEL_31:
    __break(1u);
  }

  else if ((MaterialCount & 0x8000000000000000) == 0)
  {
    if (MaterialCount)
    {
      v6 = 0;
      while (1)
      {
        MaterialAtIndex = REMeshComponentGetMaterialAtIndex();
        if (!MaterialAtIndex)
        {
          goto LABEL_9;
        }

        v8 = MaterialAtIndex;
        v9 = v3[2];
        if (v9)
        {
          v10 = specialized __RawDictionaryStorage.find<A>(_:)(MaterialAtIndex);
          if (v11)
          {
            LODWORD(v9) = *(v3[7] + 4 * v10);
          }

          else
          {
            LODWORD(v9) = 0;
          }
        }

        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
        v16 = v3[2];
        v17 = (v15 & 1) == 0;
        v18 = __OFADD__(v16, v17);
        v19 = v16 + v17;
        if (v18)
        {
          goto LABEL_28;
        }

        v20 = v15;
        if (v3[3] < v19)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }

        v24 = v14;
        specialized _NativeDictionary.copy()();
        v14 = v24;
        if (v20)
        {
LABEL_8:
          *(v3[7] + 4 * v14) = v12;
          goto LABEL_9;
        }

LABEL_22:
        v3[(v14 >> 6) + 8] |= 1 << v14;
        *(v3[6] + 8 * v14) = v8;
        *(v3[7] + 4 * v14) = v12;
        v22 = v3[2];
        v18 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v18)
        {
          goto LABEL_29;
        }

        v3[2] = v23;
LABEL_9:
        if (v5 == ++v6)
        {
          return v3;
        }
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_33;
      }

LABEL_21:
      if (v20)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    return v3;
  }

  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t Entity.MetricUtilitiesBase.materialCounts.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v56 = type metadata accessor for Optional();
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v72 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v54 - v7;
  v8 = *(a1 + 24);
  v66 = *(v8 + 24);
  v71 = *(v66 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v69 = &v54 - v9;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v54 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v21 = *v1;
  REMeshComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    v26 = MEMORY[0x1E69E6B70];
    swift_getTupleTypeMetadata2();
    v27 = static Array._allocateUninitialized(_:)();
    v28 = specialized Dictionary.init(dictionaryLiteral:)(v27, v26, v3, MEMORY[0x1E69E6B78]);

    return v28;
  }

  v64 = v13;
  v22 = MEMORY[0x1E69E6B70];
  swift_getTupleTypeMetadata2();
  v23 = static Array._allocateUninitialized(_:)();
  v24 = specialized Dictionary.init(dictionaryLiteral:)(v23, v22, v3, MEMORY[0x1E69E6B78]);

  v75 = v21;
  v76 = v24;
  Entity.MetricUtilitiesBase.materialAssignmentCount.getter(a1, v25);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_16;
  }

  v74 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v30 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v31 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v30)
  {
    if (v31 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v34 = v68;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v35 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v10 + 8))(v34, v3);
      if (v35)
      {
LABEL_39:
        __break(1u);
        return result;
      }

      goto LABEL_15;
    }

LABEL_10:
    lazy protocol witness table accessor for type Int and conformance Int();
    v32 = v68;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v33 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v10 + 8))(v32, v3);
    if (v33)
    {
      goto LABEL_39;
    }

    goto LABEL_16;
  }

  if (v31 < 64)
  {
LABEL_15:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_16:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v74 = 0x7FFFFFFFFFFFFFFFLL;
    v36 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v37 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v36 & 1) == 0)
    {
      break;
    }

    if (v37 < 65)
    {
      goto LABEL_25;
    }

LABEL_19:
    lazy protocol witness table accessor for type Int and conformance Int();
    v38 = v68;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v39 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v10 + 8))(v38, v3);
    if (v39)
    {
      __break(1u);
LABEL_21:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  if (v37 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_26:
  v40 = dispatch thunk of BinaryInteger._lowWord.getter();
  v62 = *(v10 + 8);
  v63 = v10 + 8;
  result = v62(v20, v3);
  if (v40 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v61 = v8;
  v41 = v72;
  if (v40)
  {
    v42 = 0;
    v57 = (v10 + 32);
    v58 = (v10 + 48);
    v55 = (v4 + 8);
    v59 = (v10 + 56);
    v43 = MEMORY[0x1E69E6B70];
    v44 = MEMORY[0x1E69E6B78];
    v60 = v40;
    do
    {
      MaterialAtIndex = REMeshComponentGetMaterialAtIndex();
      if (MaterialAtIndex)
      {
        v51 = MaterialAtIndex;
        v75 = MaterialAtIndex;
        MEMORY[0x1C68F31A0](&v75, v76, v43, v3, v44);
        v52 = *v58;
        if ((*v58)(v41, 1, v3) == 1)
        {
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v53 = v72;
          if (v52(v72, 1, v3) != 1)
          {
            (*v55)(v53, v56);
          }
        }

        else
        {
          (*v57)(v64, v41, v3);
        }

        v45 = v65;
        dispatch thunk of BinaryInteger.init<A>(_:)();
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v46 = v68;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v47 = v67;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v48 = v46;
        v49 = v62;
        v62(v48, v3);
        v49(v45, v3);
        (*v59)(v47, 0, 1, v3);
        v75 = v51;
        v43 = MEMORY[0x1E69E6B70];
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();
        v41 = v72;
        v40 = v60;
      }

      ++v42;
    }

    while (v40 != v42);
  }

  return v76;
}

uint64_t Entity.MetricUtilitiesBase.isShadowCaster.getter(uint64_t a1)
{
  RERenderOptionsComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    goto LABEL_5;
  }

  v1 = swift_slowAlloc();
  *v1 = 1;
  if (!RERenderOptionsComponentGetCastsShadowsOverride() || (*v1 & 1) != 0)
  {
    MEMORY[0x1C6902A30](v1, -1, -1);
LABEL_5:

    v3 = specialized Entity.MetricUtilitiesBase.hasTechniqueMappedToShadowPass.getter(v2);

    return v3 & 1;
  }

  MEMORY[0x1C6902A30](v1, -1, -1);
  return 0;
}

uint64_t specialized Entity.MetricUtilitiesBase.isShadowReceiver.getter(uint64_t a1)
{
  REMaterialParameterBlockArrayComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {
    return ComponentByClass;
  }

  v4 = specialized Entity.MetricUtilitiesBase.materialCounts.getter(v2, v3);

  v6 = 0;
  v7 = v4 + 8;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v4[8];
  v11 = (v8 + 63) >> 6;
  if (v10)
  {
    while (1)
    {
LABEL_9:
      v13 = swift_slowAlloc();
      *v13 = 0;
      result = REMaterialParameterBlockArrayComponentSize();
      if (result < 0)
      {
        goto LABEL_34;
      }

      v14 = result;
      if (result)
      {
        break;
      }

LABEL_16:
      if (REMaterialAssetGetValidPassTechniqueMapping() && REMaterialAssetTechniqueHasVariation())
      {
        goto LABEL_29;
      }

      result = REMaterialParameterBlockArrayComponentSize();
      if (result < 0)
      {
        goto LABEL_35;
      }

      v16 = result;
      if (result)
      {
        v17 = 0;
        while (!REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex() || (REMaterialAssetTechniqueHasVariation() & 1) == 0)
        {
          if (v16 == ++v17)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_29;
      }

LABEL_25:
      if (REMaterialAssetGetValidPassTechniqueMapping() && (REMaterialAssetTechniqueHasVariation() & 1) != 0)
      {
        goto LABEL_29;
      }

      v10 &= v10 - 1;
      result = MEMORY[0x1C6902A30](v13, -1, -1);
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v15 = 0;
    while (!REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex() || (REMaterialAssetTechniqueHasVariation() & 1) == 0)
    {
      if (v14 == ++v15)
      {
        goto LABEL_16;
      }
    }

LABEL_29:
    MEMORY[0x1C6902A30](v13, -1, -1);
    ComponentByClass = 1;
LABEL_31:

    return ComponentByClass;
  }

LABEL_5:
  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      ComponentByClass = 0;
      goto LABEL_31;
    }

    v10 = v7[v12];
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t Entity.MetricUtilitiesBase.isShadowReceiver.getter(uint64_t a1)
{
  REMaterialParameterBlockArrayComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {
    return ComponentByClass;
  }

  v4 = specialized Entity.MetricUtilitiesBase.materialCounts.getter(v2, v3);

  v6 = 0;
  v7 = v4 + 8;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v4[8];
  v11 = (v8 + 63) >> 6;
  if (v10)
  {
    while (1)
    {
LABEL_9:
      v13 = swift_slowAlloc();
      *v13 = 0;
      result = REMaterialParameterBlockArrayComponentSize();
      if (result < 0)
      {
        goto LABEL_34;
      }

      v14 = result;
      if (result)
      {
        break;
      }

LABEL_16:
      if (REMaterialAssetGetValidPassTechniqueMapping() && (REMaterialAssetTechniqueHasVariation() & 1) != 0)
      {
        goto LABEL_29;
      }

      result = REMaterialParameterBlockArrayComponentSize();
      if (result < 0)
      {
        goto LABEL_35;
      }

      v16 = result;
      if (result)
      {
        v17 = 0;
        while (!REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex() || (REMaterialAssetTechniqueHasVariation() & 1) == 0)
        {
          if (v16 == ++v17)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_29;
      }

LABEL_25:
      if (REMaterialAssetGetValidPassTechniqueMapping() && (REMaterialAssetTechniqueHasVariation() & 1) != 0)
      {
        goto LABEL_29;
      }

      v10 &= v10 - 1;
      result = MEMORY[0x1C6902A30](v13, -1, -1);
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v15 = 0;
    while (!REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex() || (REMaterialAssetTechniqueHasVariation() & 1) == 0)
    {
      if (v14 == ++v15)
      {
        goto LABEL_16;
      }
    }

LABEL_29:
    MEMORY[0x1C6902A30](v13, -1, -1);
    ComponentByClass = 1;
LABEL_31:

    return ComponentByClass;
  }

LABEL_5:
  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      ComponentByClass = 0;
      goto LABEL_31;
    }

    v10 = v7[v12];
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t Entity.MetricUtilitiesBase.shadowCasterCount.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);

  RERenderOptionsComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    v2 = swift_slowAlloc();
    *v2 = 1;
    if (RERenderOptionsComponentGetCastsShadowsOverride() && (*v2 & 1) == 0)
    {
      MEMORY[0x1C6902A30](v2, -1, -1);

      goto LABEL_7;
    }

    MEMORY[0x1C6902A30](v2, -1, -1);
  }

  specialized Entity.MetricUtilitiesBase.hasTechniqueMappedToShadowPass.getter(v3);

LABEL_7:
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
}

uint64_t Entity.MetricUtilitiesBase.shadowClusterID.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v2 = swift_slowAlloc();
  *v2 = 0;
  if (REEntityGetProjectiveShadowClusterID())
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    dispatch thunk of BinaryInteger.init<A>(_:)();
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }

  return MEMORY[0x1C6902A30](v2, -1, -1);
}

unint64_t Entity.MetricUtilitiesBase.shadowClusterIDs.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit6EntityCGMd, &_sSay10RealityKit6EntityCGMR);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v7 = static Array._adoptStorage(_:count:)();
  v9 = v8;
  v10 = *(TupleTypeMetadata2 + 48);
  Entity.MetricUtilitiesBase.shadowClusterID.getter(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1898160;
  *(v11 + 32) = v3;
  *(v9 + v10) = v11;
  type metadata accessor for Array();
  v12 = *(*(a1 + 24) + 16);

  v13 = specialized Dictionary.init(dictionaryLiteral:)(v7, v4, v5, v12);

  return v13;
}

uint64_t Entity.MetricUtilitiesBase.shadowReceiverCount.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);

  specialized Entity.MetricUtilitiesBase.isShadowReceiver.getter(v2);

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
}

uint64_t Entity.MetricUtilitiesBase.materialAssignmentCount.getter(uint64_t a1, __n128 a2)
{
  REMeshComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REMeshComponentGetMaterialCount();
  }

  lazy protocol witness table accessor for type Int and conformance Int();
  return dispatch thunk of BinaryInteger.init<A>(_:)();
}

uint64_t Entity.MetricUtilitiesBase.uniqueMaterialCount.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  Entity.MetricUtilitiesBase.materialCounts.getter(a1);
  v2 = MEMORY[0x1E69E6B70];
  v3 = MEMORY[0x1E69E6B78];
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  v5 = v4;

  MEMORY[0x1C68F3140](v5, v2, v1, v3);

  lazy protocol witness table accessor for type Int and conformance Int();
  return dispatch thunk of BinaryInteger.init<A>(_:)();
}

unint64_t Entity.MetricUtilitiesBase.rawCollisionShapeType.getter()
{
  REColliderComponentGetComponentType();
  if (REEntityGetComponentByClass() && REColliderComponentGetCollisionObject())
  {
    RECollisionObjectGetShape();
    Type = RECollisionShapeGetType();
    v1 = 0;
    v2 = Type;
  }

  else
  {
    v2 = 0;
    v1 = 1;
  }

  return v2 | (v1 << 32);
}

uint64_t Entity.MetricUtilitiesBase.TextureMetrics.assetId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Entity.MetricUtilitiesBase.TextureMetrics.resolution.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v16 - v10;
  (*(v12 + 16))(&v16 - v10, v3 + *(a3 + 40), TupleTypeMetadata2, v9);
  v13 = *(TupleTypeMetadata2 + 48);
  v14 = *(*(v7 - 8) + 32);
  v14(a1, v11, v7);
  return (v14)(a2, &v11[v13], v7);
}

void Entity.MetricUtilitiesBase.TextureMetrics.init(coreMetrics:textureIdx:)(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = REEntityTextureMetricsCopyNthTextureAssetId();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *a5 = v10;
  a5[1] = v12;
  NthTextureByteSize = REEntityTextureMetricsGetNthTextureByteSize();
  if (NthTextureByteSize < 0)
  {
    __break(1u);
  }

  else
  {
    a5[2] = NthTextureByteSize;
    REEntityTextureMetricsGetNthTextureDimensions();
    type metadata accessor for Entity.MetricUtilitiesBase.TextureMetrics(0, a3, a4, v14);
    lazy protocol witness table accessor for type Int32 and conformance Int32();
    dispatch thunk of BinaryInteger.init<A>(_:)();
    swift_getTupleTypeMetadata2();
    dispatch thunk of BinaryInteger.init<A>(_:)();
  }
}

uint64_t static Entity.MetricUtilitiesBase.TextureMetrics.== infix(_:_:)(uint64_t *a1, void *a2)
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

Swift::Int Entity.MetricUtilitiesBase.TextureMetrics.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Entity.MetricUtilitiesBase<A>.TextureMetrics()
{
  Hasher.init(_seed:)();
  Entity.MetricUtilitiesBase.TextureMetrics.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t Entity.MetricUtilitiesBase.textureMetrics.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Entity.MetricUtilitiesBase.TextureMetrics(0, v4, v5, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v13 = REEntityCopyTextureMetrics();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Entity.MetricUtilitiesBase<A>.TextureMetrics, v6);
  v15 = Set.init()();
  v23 = v15;
  result = REEntityTextureMetricsGetTexturesCount();
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v21[1] = WitnessTable;
    v22 = v13;
    v17 = 0;
    v18 = (v7 + 8);
    do
    {
      v19 = result;
      v20 = v22;
      Entity.MetricUtilitiesBase.TextureMetrics.init(coreMetrics:textureIdx:)(v20, v4, v5, v9);
      type metadata accessor for Set();
      Set.insert(_:)();
      (*v18)(v12, v6);
      result = v19;
      ++v17;
    }

    while (v19 != v17);

    return v23;
  }

  else
  {

    return v15;
  }

  return result;
}

uint64_t Entity.MetricUtilitiesBase.textureCount.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  Entity.MetricUtilitiesBase.textureMetrics.getter(a1, a2, a3, a4);
  v7 = type metadata accessor for Entity.MetricUtilitiesBase.TextureMetrics(0, v5, *(a1 + 24), v6);
  swift_getWitnessTable(protocol conformance descriptor for Entity.MetricUtilitiesBase<A>.TextureMetrics, v7);
  Set.count.getter();

  lazy protocol witness table accessor for type Int and conformance Int();
  return dispatch thunk of BinaryInteger.init<A>(_:)();
}

uint64_t Entity.MetricUtilitiesBase.textureMemorySizes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Entity.MetricUtilitiesBase.textureMetrics.getter(a1, a2, a3, a4);
  v6 = type metadata accessor for Entity.MetricUtilitiesBase.TextureMetrics(255, *(a1 + 16), *(a1 + 24), v5);
  swift_getWitnessTable(protocol conformance descriptor for Entity.MetricUtilitiesBase<A>.TextureMetrics, v6);
  v7 = type metadata accessor for Set();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs6UInt64VGMd, &_sSDySSs6UInt64VGMR);
  swift_getWitnessTable(MEMORY[0x1E69E6508], v7);
  Sequence.reduce<A>(into:_:)();

  return v9;
}

unint64_t closure #1 in Entity.MetricUtilitiesBase.textureMemorySizes.getter(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, v3, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
  return result;
}

uint64_t Entity.MetricUtilitiesBase.textureResolutions.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Entity.MetricUtilitiesBase.textureMetrics.getter(a1, a2, a3, a4);
  v5 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  Dictionary.init()();
  v7 = type metadata accessor for Entity.MetricUtilitiesBase.TextureMetrics(255, v5, *(a1 + 24), v6);
  swift_getWitnessTable(protocol conformance descriptor for Entity.MetricUtilitiesBase<A>.TextureMetrics, v7);
  v8 = type metadata accessor for Set();
  type metadata accessor for Dictionary();
  swift_getWitnessTable(MEMORY[0x1E69E6508], v8);
  Sequence.reduce<A>(into:_:)();

  return v10;
}

uint64_t closure #1 in Entity.MetricUtilitiesBase.textureResolutions.getter(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - v9;
  v12 = *a2;
  v11 = *(a2 + 1);
  v14 = *(type metadata accessor for Entity.MetricUtilitiesBase.TextureMetrics(0, a3, a4, v13) + 40);
  v15 = *(TupleTypeMetadata2 - 8);
  (*(v15 + 16))(v10, &a2[v14], TupleTypeMetadata2);
  (*(v15 + 56))(v10, 0, 1, TupleTypeMetadata2);
  v17[0] = v12;
  v17[1] = v11;
  type metadata accessor for Dictionary();

  return Dictionary.subscript.setter();
}

uint64_t Entity.MetricUtilitiesBase.videoItemCount.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  REVideoComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REVideoComponentGetVideoAsset();
    REVideoAssetGetFileAssetCount();
    lazy protocol witness table accessor for type Int and conformance Int();
    return dispatch thunk of BinaryInteger.init<A>(_:)();
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6450], MEMORY[0x1E69E6448], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6488], MEMORY[0x1E69E6448], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E76B0], MEMORY[0x1E69E7668], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E76A0], MEMORY[0x1E69E7668], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7328], MEMORY[0x1E69E72F0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7710], MEMORY[0x1E69E76D8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

uint64_t type metadata instantiation function for Entity.MetricUtilitiesBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for Entity.MetricUtilitiesBase.TextureMetrics(uint64_t a1)
{
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Entity.MetricUtilitiesBase.TextureMetrics(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6) & ~v6) + v7 + ((v6 + 24) & ~v6);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for Entity.MetricUtilitiesBase.TextureMetrics(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + ((v9 + 24) & ~v9);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_57:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
    if (v7 >= a2)
    {
      v24 = *(v6 + 56);

      v24(v20);
    }

    else
    {
      if (v10 <= 3)
      {
        v21 = ~(-1 << (8 * v10));
      }

      else
      {
        v21 = -1;
      }

      if (v10)
      {
        v22 = v21 & (~v7 + a2);
        if (v10 <= 3)
        {
          v23 = v10;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v10);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = specialized Dictionary.Keys.subscript.getter(v2, *(a1 + 36), 0, a1);

  return v4;
}

void specialized Collection.first.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  if (v4 == 1 << *(a1 + 32))
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    specialized Dictionary.Values.subscript.getter(v4, *(a1 + 36), a1, v7);
    v5 = v7[0];
    v6 = v7[1];
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t Entity.ConfigurationCatalog.Configuration.init(id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Entity.ConfigurationCatalog.Configuration.id.getter()
{
  v1 = *v0;

  return v1;
}

void Entity.ConfigurationCatalog.ConfigurationSet.init(id:configurations:defaultConfigurationId:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v10)
  {
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (v12 << 10) | (16 * v15);
    v17 = (*(a3 + 48) + v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = (*(a3 + 56) + v16);
    v21 = *v17 == *v20 && v18 == v20[1];
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      }

      v23 = *(v13 + 2);
      v22 = *(v13 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v51 = v23 + 1;
        v26 = v13;
        v27 = *(v13 + 2);
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v26);
        v24 = v51;
        v23 = v27;
        v13 = v28;
      }

      *(v13 + 2) = v24;
      v25 = &v13[16 * v23];
      *(v25 + 4) = v19;
      *(v25 + 5) = v18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  if (!*(v13 + 2))
  {

    v39 = a5;
    v40 = a4;
    if (a5)
    {
      if (!*(a3 + 16))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v41 = specialized Collection.first.getter(a3);
      if (!v42)
      {

        lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
        swift_allocError();
        *v49 = 0u;
        *(v49 + 16) = 0u;
        *(v49 + 32) = 0;
        v50 = 12;
        goto LABEL_32;
      }

      v40 = v41;
      v39 = v42;
      if (!*(a3 + 16))
      {
LABEL_31:

        lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
        swift_allocError();
        *v49 = v40;
        *(v49 + 8) = v39;
        *(v49 + 24) = 0;
        *(v49 + 32) = 0;
        *(v49 + 16) = 0;
        v50 = 10;
LABEL_32:
        *(v49 + 40) = v50;
        swift_willThrow();

        return;
      }
    }

    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v39);
    if (v44)
    {
      v45 = v43;

      v46 = (*(a3 + 56) + 16 * v45);
      v48 = *v46;
      v47 = v46[1];

      *a6 = v48;
      a6[1] = v47;
      a6[2] = a1;
      a6[3] = a2;
      a6[4] = a3;
      return;
    }

    goto LABEL_31;
  }

  v29 = *(v13 + 2);
  if (!v29)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (*(a3 + 16))
  {
    v31 = *(v13 + 4);
    v30 = *(v13 + 5);

    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v30);
    v34 = v33;

    if (v34)
    {
      v35 = (*(a3 + 56) + 16 * v32);
      v37 = *v35;
      v36 = v35[1];

      lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
      swift_allocError();
      *v38 = v29;
      *(v38 + 8) = v31;
      *(v38 + 16) = v30;
      *(v38 + 24) = v37;
      *(v38 + 32) = v36;
      *(v38 + 40) = 7;
      swift_willThrow();
      return;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t Entity.ConfigurationCatalog.ConfigurationSet.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double Entity.ConfigurationCatalog.ConfigurationSet.defaultConfiguration.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void Entity.ConfigurationCatalog.ConfigurationSet.init(id:configurations:defaultConfigurationId:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = MEMORY[0x1E69E7CC8];
  v7 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV0E0VGMd, &_sSDySS10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV0E0VGMR);
  Dictionary.reserveCapacity(_:)(v7);
  v8 = v44;
  v40 = *(a3 + 16);
  if (!v40)
  {
LABEL_19:

    Entity.ConfigurationCatalog.ConfigurationSet.init(id:configurations:defaultConfigurationId:)(a1, a2, v8, a4, a5, &v41);
    if (!v37)
    {
      v31 = v42;
      v32 = v43;
      *a6 = v41;
      *(a6 + 16) = v31;
      *(a6 + 24) = v32;
    }

    return;
  }

  v9 = 0;
  v10 = (a3 + 40);
  while (v9 < *(a3 + 16))
  {
    v12 = *(v10 - 1);
    v13 = *v10;
    v14 = v8[2];

    if (v14)
    {

      specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
      v16 = v15;

      if (v16)
      {

        lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
        swift_allocError();
        *v33 = v12;
        *(v33 + 8) = v13;
        *(v33 + 24) = 0;
        *(v33 + 32) = 0;
        *(v33 + 16) = 0;
        *(v33 + 40) = 5;
        swift_willThrow();

        return;
      }
    }

    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v41 = v8;
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
    v20 = v8[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_24;
    }

    v23 = v18;
    if (v8[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v18)
        {
          goto LABEL_3;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v23)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_26;
      }

      v19 = v24;
      if (v23)
      {
LABEL_3:

        v8 = v41;
        v11 = (*(v41 + 56) + 16 * v19);
        *v11 = v12;
        v11[1] = v13;

        goto LABEL_4;
      }
    }

    v8 = v41;
    *(v41 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v26 = (v8[6] + 16 * v19);
    *v26 = v12;
    v26[1] = v13;
    v27 = (v8[7] + 16 * v19);
    *v27 = v12;
    v27[1] = v13;

    v28 = v8[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_25;
    }

    v8[2] = v30;
LABEL_4:
    ++v9;
    v10 += 2;
    if (v40 == v9)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

double protocol witness for Identifiable.id.getter in conformance Entity.ConfigurationCatalog.ConfigurationSet@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t Entity.ConfigurationCatalog.ConfigurationSetCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *Entity.ConfigurationCatalog.ConfigurationCollectionCache.init(sourcePath:configurationSetCaches:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  if (a3 >> 62)
  {
LABEL_33:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v3;

  if (v5)
  {
    v6 = 0;
    v34 = v4 & 0xFFFFFFFFFFFFFF8;
    v35 = v4 & 0xC000000000000001;
    v3 = MEMORY[0x1E69E7CC8];
    v33 = v4;
    while (1)
    {
      if (v35)
      {
        v7 = MEMORY[0x1C68F41F0](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v6 >= *(v34 + 16))
        {
          goto LABEL_30;
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      if (v3[2])
      {
        v10 = *(v7 + 32);
        v9 = *(v7 + 40);

        specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
        v12 = v11;

        if (v12)
        {

          v30 = *(v7 + 32);
          v29 = *(v7 + 40);
          lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
          swift_allocError();
          *v31 = v30;
          *(v31 + 8) = v29;
          *(v31 + 24) = 0;
          *(v31 + 32) = 0;
          *(v31 + 16) = 0;
          *(v31 + 40) = 6;
          swift_willThrow();

          swift_deallocPartialClassInstance();
          return v32;
        }
      }

      v36 = v8;
      v13 = v5;
      v4 = *(v7 + 32);
      v14 = *(v7 + 40);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v14);
      v18 = v3[2];
      v19 = (v16 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        goto LABEL_31;
      }

      v21 = v16;
      if (v3[3] >= v20)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v16)
          {
            goto LABEL_5;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (v21)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v14);
        if ((v21 & 1) != (v23 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v17 = v22;
        if (v21)
        {
LABEL_5:

          *(v3[7] + 8 * v17) = v7;

          goto LABEL_6;
        }
      }

      v3[(v17 >> 6) + 8] |= 1 << v17;
      v24 = (v3[6] + 16 * v17);
      *v24 = v4;
      v24[1] = v14;
      *(v3[7] + 8 * v17) = v7;

      v25 = v3[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_32;
      }

      v3[2] = v27;
LABEL_6:
      ++v6;
      v5 = v13;
      v4 = v33;
      if (v36 == v13)
      {
        goto LABEL_27;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC8];
LABEL_27:

  v32[5] = v3;
  return v32;
}

uint64_t Entity.ConfigurationCatalog.ConfigurationCollectionCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *Entity.ConfigurationCatalog.ConfigurationMapCache.init(configurationCollectionCaches:)(unint64_t a1)
{
  v2 = a1;
  v1[2] = a1;
  if (a1 >> 62)
  {
LABEL_33:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v1;

  if (v3)
  {
    v4 = 0;
    v28 = v2 & 0xFFFFFFFFFFFFFF8;
    v29 = v2 & 0xC000000000000001;
    v1 = MEMORY[0x1E69E7CC8];
    v27 = v2;
    while (1)
    {
      if (v29)
      {
        v5 = MEMORY[0x1C68F41F0](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v4 >= *(v28 + 16))
        {
          goto LABEL_30;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      if (v1[2])
      {
        specialized __RawDictionaryStorage.find<A>(_:)(*(v5 + 16), *(v5 + 24));
        if (v7)
        {

          v24 = *(v5 + 16);
          v23 = *(v5 + 24);
          lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
          swift_allocError();
          *v25 = v24;
          *(v25 + 8) = v23;
          *(v25 + 24) = 0;
          *(v25 + 32) = 0;
          *(v25 + 16) = 0;
          *(v25 + 40) = 9;
          swift_willThrow();

          swift_deallocPartialClassInstance();
          return v26;
        }
      }

      v30 = v6;
      v2 = *(v5 + 16);
      v8 = *(v5 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v8);
      v12 = v1[2];
      v13 = (v10 & 1) == 0;
      v14 = v12 + v13;
      if (__OFADD__(v12, v13))
      {
        goto LABEL_31;
      }

      v15 = v10;
      if (v1[3] >= v14)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v10)
          {
            goto LABEL_5;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (v15)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v8);
        if ((v15 & 1) != (v17 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v11 = v16;
        if (v15)
        {
LABEL_5:

          *(v1[7] + 8 * v11) = v5;

          goto LABEL_6;
        }
      }

      v1[(v11 >> 6) + 8] |= 1 << v11;
      v18 = (v1[6] + 16 * v11);
      *v18 = v2;
      v18[1] = v8;
      *(v1[7] + 8 * v11) = v5;

      v19 = v1[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_32;
      }

      v1[2] = v21;
LABEL_6:
      ++v4;
      v2 = v27;
      if (v30 == v3)
      {
        goto LABEL_27;
      }
    }
  }

  v1 = MEMORY[0x1E69E7CC8];
LABEL_27:

  v26[3] = v1;
  return v26;
}

uint64_t Entity.ConfigurationCatalog.ConfigurationCombination.init(entity:configurationSpecifications:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Entity.ConfigurationCatalog.init(configurationSets:combinations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for Entity.ConfigurationCatalog.CachedEntityReader();
  swift_allocObject();
  result = Entity.ConfigurationCatalog.CachedEntityReader.init(configurationSets:combinations:)(a1, a2);
  if (!v3)
  {
    *a3 = 0;
    a3[1] = result;
    a3[2] = &protocol witness table for Entity.ConfigurationCatalog.CachedEntityReader;
  }

  return result;
}

void Entity.ConfigurationCatalog.init(configurationSets:combinations:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1;
  v37 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV0E3SetVGMd, &_sSDySS10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV0E3SetVGMR);
  Dictionary.reserveCapacity(_:)(v4);
  v34 = *(v3 + 16);
  if (!v34)
  {
LABEL_19:

    type metadata accessor for Entity.ConfigurationCatalog.CachedEntityReader();
    swift_allocObject();
    v28 = Entity.ConfigurationCatalog.CachedEntityReader.init(configurationSets:combinations:)(v37, a2);
    if (!v31)
    {
      *a3 = 0;
      a3[1] = v28;
      a3[2] = &protocol witness table for Entity.ConfigurationCatalog.CachedEntityReader;
    }

    return;
  }

  v5 = 0;
  v6 = (v3 + 64);
  v33 = v3;
  while (v5 < *(v3 + 16))
  {
    v35 = *(v6 - 4);
    v36 = *(v6 - 3);
    v9 = *(v6 - 2);
    v8 = *(v6 - 1);
    v10 = *v6;
    v11 = v37[2];

    if (v11)
    {

      specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
      v13 = v12;

      if (v13)
      {

        lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
        swift_allocError();
        *v29 = v9;
        *(v29 + 8) = v8;
        *(v29 + 24) = 0;
        *(v29 + 32) = 0;
        *(v29 + 16) = 0;
        *(v29 + 40) = 6;
        swift_willThrow();

        return;
      }
    }

    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
    v17 = v37[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_24;
    }

    v20 = v15;
    if (v37[3] >= v19)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v15)
        {
          goto LABEL_3;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v20)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_26;
      }

      v16 = v21;
      if (v20)
      {
LABEL_3:

        v7 = (v37[7] + 40 * v16);
        *v7 = v35;
        v7[1] = v36;
        v7[2] = v9;
        v7[3] = v8;
        v7[4] = v10;

        goto LABEL_4;
      }
    }

    v37[(v16 >> 6) + 8] |= 1 << v16;
    v23 = (v37[6] + 16 * v16);
    *v23 = v9;
    v23[1] = v8;
    v24 = (v37[7] + 40 * v16);
    *v24 = v35;
    v24[1] = v36;
    v24[2] = v9;
    v24[3] = v8;
    v24[4] = v10;

    v25 = v37[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_25;
    }

    v37[2] = v27;
LABEL_4:
    ++v5;
    v6 += 5;
    v3 = v33;
    if (v34 == v5)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t Entity.ConfigurationCatalog.write(to:)(uint64_t a1)
{
  v4 = *v1;
  *(v2 + 40) = type metadata accessor for MainActor();
  v7 = *(v1 + 1);
  *(v2 + 48) = static MainActor.shared.getter();
  *(v2 + 16) = v4;
  *(v2 + 24) = v7;
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = Entity.ConfigurationCatalog.write(to:);

  return specialized Entity.ConfigurationCatalog.write(to:options:)(a1);
}

uint64_t Entity.ConfigurationCatalog.write(to:)()
{
  *(*v1 + 64) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = Entity.ConfigurationCatalog.write(to:);
  }

  else
  {
    v4 = Entity.ConfigurationCatalog.write(to:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Entity.ConfigurationCatalog.write(to:options:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return specialized Entity.ConfigurationCatalog.write(to:options:)(a1);
}

uint64_t Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:)()
{
  outlined init with copy of [String : String](*(v0 + 136), v0 + 16, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  if (*(v0 + 16) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v0 + 16, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  }

  else
  {
    v1 = *(v0 + 32);
    outlined destroy of Entity.ConfigurationCatalog.LoadOptions(v0 + 16);
    if (v1 == 1)
    {
      type metadata accessor for MainActor();
      *(v0 + 168) = static MainActor.shared.getter();
      v2 = dispatch thunk of Actor.unownedExecutor.getter();
      v4 = v3;
      v5 = Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:);
      goto LABEL_6;
    }
  }

  type metadata accessor for MainActor();
  *(v0 + 176) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v4 = v6;
  v5 = Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:);
LABEL_6:

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

{

  type metadata accessor for AnchorEntity();
  v10 = v0[19];
  v1 = swift_allocObject();
  v2 = Entity.init()(v1);
  v0[23] = v2;
  v9 = (*(v10 + 24) + **(v10 + 24));
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:);
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];

  return v9(v2, v7, v5, v6, v4);
}

{

  type metadata accessor for Entity();
  v10 = v0[19];
  v1 = swift_allocObject();
  v2 = Entity.init()(v1);
  v0[23] = v2;
  v9 = (*(v10 + 24) + **(v10 + 24));
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:);
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];

  return v9(v2, v7, v5, v6, v4);
}

{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:), 0, 0);
  }

  else
  {
    v3 = v2[1];
    v4 = v2[23];

    return v3(v4);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t key path getter for Entity.ConfigurationCatalog.LoadOptions.preImportCallback : Entity.ConfigurationCatalog.LoadOptions@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@error @owned Error);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3, v4);
}

uint64_t key path setter for Entity.ConfigurationCatalog.LoadOptions.preImportCallback : Entity.ConfigurationCatalog.LoadOptions(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject) -> (@out (), @error @owned Error);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v7, v8);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t Entity.ConfigurationCatalog.LoadOptions.preImportCallback.getter()
{
  v1 = *v0;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*v0, v0[1]);
  return v1;
}

uint64_t Entity.ConfigurationCatalog.LoadOptions.preImportCallback.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

double Entity.ConfigurationCatalog.LoadOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return result;
}

uint64_t static Entity.ConfigurationCatalog.resolveRealityFileURL(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  type metadata accessor for RealityFileLoadInformationResolver();
  static RealityFileLoadInformationResolver.resolve(url:)(a1, v9);
  outlined init with take of RealityFileLoadInformation?(v9, v6);
  Information = type metadata accessor for RealityFileLoadInformation(0);
  if ((*(*(Information - 8) + 48))(v6, 1, Information) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v6, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
    v11 = type metadata accessor for URL();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a2, v6, v13);
    outlined destroy of RealityFileLoadInformation(v6);
    return (*(v14 + 56))(a2, 0, 1, v13);
  }
}

uint64_t Entity.ConfigurationCatalog.init(realityFileUrl:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v4 = type metadata accessor for URL();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.init(realityFileUrl:options:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.init(realityFileUrl:options:)()
{
  v1 = v0[18];
  (*(v0[20] + 16))(v0[21], v0[17], v0[19]);
  outlined init with copy of [String : String](v1, (v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  type metadata accessor for Entity.ConfigurationCatalog.RealityFileConfigurationReader(0);
  swift_allocObject();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = Entity.ConfigurationCatalog.init(realityFileUrl:options:);
  v3 = v0[21];

  return Entity.ConfigurationCatalog.RealityFileConfigurationReader.init(contentsOf:options:)(v3, (v0 + 2));
}

{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  outlined destroy of BodyTrackingComponent?(v0[18], &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  (*(v2 + 8))(v4, v3);
  *v5 = 0;
  v5[1] = v1;
  v5[2] = &protocol witness table for Entity.ConfigurationCatalog.RealityFileConfigurationReader;

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[17];
  outlined destroy of BodyTrackingComponent?(v0[18], &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t Entity.ConfigurationCatalog.init(realityFileUrl:options:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = Entity.ConfigurationCatalog.init(realityFileUrl:options:);
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = Entity.ConfigurationCatalog.init(realityFileUrl:options:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:)()
{
  v1 = v0[18];
  v2 = v0[17];
  outlined init with copy of [String : String](v0[19], (v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  type metadata accessor for Entity.ConfigurationCatalog.USDConfigurationReader();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v3 = v2;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:);
  v5 = v0[17];

  return Entity.ConfigurationCatalog.USDConfigurationReader.init(importSession:importSessionSwiftObject:options:)(v5, v1, (v0 + 2));
}

{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  swift_unknownObjectRelease();

  outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  *v5 = v2;
  v5[1] = v1;
  v5[2] = &protocol witness table for Entity.ConfigurationCatalog.USDConfigurationReader;
  v6 = v0[1];

  return v6();
}

{
  v1 = v0[19];
  v2 = v0[17];
  swift_unknownObjectRelease();

  outlined destroy of BodyTrackingComponent?(v1, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  v3 = v0[1];

  return v3();
}

uint64_t Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    swift_unknownObjectRelease();
    v5 = Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:);
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = Entity.ConfigurationCatalog.init(importSession:importSessionSwiftObject:options:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void *Entity.ConfigurationCatalog.configurationSets.getter()
{
  v1 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 16))(ObjectType, v1);
  v4 = (*(v1 + 8))(ObjectType, v1);
  v6 = *(v3 + 24);
  if (!*(v6 + 16))
  {

    return MEMORY[0x1E69E7CC8];
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  v9 = v8;

  if ((v9 & 1) == 0)
  {

    return MEMORY[0x1E69E7CC8];
  }

  v10 = *(*(v6 + 56) + 8 * v7);
  v43 = MEMORY[0x1E69E7CC8];
  v11 = *(*(v10 + 40) + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV0E3SetVGMd, &_sSDySS10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV0E3SetVGMR);
  Dictionary.reserveCapacity(_:)(v11);
  v12 = *(v10 + 32);
  if (v12 >> 62)
  {
LABEL_33:
    v13 = __CocoaSet.count.getter();
    if (v13)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_34:

    return v43;
  }

LABEL_5:
  v40 = v12 & 0xC000000000000001;
  v14 = v43;
  v37 = v12 & 0xFFFFFFFFFFFFFF8;

  v15 = 0;
  v38 = v13;
  v39 = v12;
  while (1)
  {
    if (v40)
    {
      v17 = MEMORY[0x1C68F41F0](v15, v12);
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v15 >= *(v37 + 16))
      {
        goto LABEL_32;
      }

      v17 = *(v12 + 8 * v15 + 32);

      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    v41 = v18;
    v20 = v17[4];
    v19 = v17[5];
    v21 = v17[3];
    v42 = v17[2];
    v22 = v17[6];
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v19);
    v25 = v43[2];
    v26 = (v24 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_30;
    }

    v28 = v24;
    if (v43[3] < v27)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v24)
      {
        goto LABEL_6;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v28)
      {
LABEL_6:

        v16 = (v43[7] + 40 * v12);
        *v16 = v42;
        v16[1] = v21;
        v16[2] = v20;
        v16[3] = v19;
        v16[4] = v22;

        goto LABEL_7;
      }
    }

LABEL_21:
    v43[(v12 >> 6) + 8] |= 1 << v12;
    v31 = (v43[6] + 16 * v12);
    *v31 = v20;
    v31[1] = v19;
    v32 = (v43[7] + 40 * v12);
    *v32 = v42;
    v32[1] = v21;
    v32[2] = v20;
    v32[3] = v19;
    v32[4] = v22;

    v33 = v43[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_31;
    }

    v43[2] = v35;
LABEL_7:
    ++v15;
    v12 = v39;
    if (v41 == v38)
    {

      return v14;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v19);
  if ((v28 & 1) == (v30 & 1))
  {
    v12 = v29;
    if (v28)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  *(v3 + 168) = *v2;
  *(v3 + 176) = *(v2 + 8);
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:)()
{
  outlined init with copy of [String : String](*(v0 + 160), v0 + 16, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  if (*(v0 + 16) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v0 + 16, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  }

  else
  {
    v1 = *(v0 + 32);
    outlined destroy of Entity.ConfigurationCatalog.LoadOptions(v0 + 16);
    if (v1 == 1)
    {
      type metadata accessor for MainActor();
      *(v0 + 192) = static MainActor.shared.getter();
      v2 = dispatch thunk of Actor.unownedExecutor.getter();
      v4 = v3;
      v5 = Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:);
      goto LABEL_6;
    }
  }

  type metadata accessor for MainActor();
  *(v0 + 200) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v4 = v6;
  v5 = Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:);
LABEL_6:

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

{

  type metadata accessor for AnchorEntity();
  v1 = *(v0 + 168);
  v2 = swift_allocObject();
  v8 = *(v0 + 176);
  v3 = Entity.init()(v2);
  *(v0 + 208) = v3;
  *(v0 + 128) = v1;
  *(v0 + 136) = v8;
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);

  return Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:)(v3, v5, v6);
}

{

  type metadata accessor for Entity();
  v1 = *(v0 + 168);
  v2 = swift_allocObject();
  v8 = *(v0 + 176);
  v3 = Entity.init()(v2);
  *(v0 + 208) = v3;
  *(v0 + 128) = v1;
  *(v0 + 136) = v8;
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);

  return Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:)(v3, v5, v6);
}

{
  v2 = *v1;
  v2[28] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:), 0, 0);
  }

  else
  {
    v3 = v2[1];
    v4 = v2[26];

    return v3(v4);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 216) = a2;
  *(v4 + 224) = a3;
  *(v4 + 208) = a1;
  *(v4 + 232) = *(v3 + 8);
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:)()
{
  v1 = *(v0 + 240);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 16))(ObjectType, v1);
  *(v0 + 248) = v3;
  v4 = (*(v1 + 8))(ObjectType, v1);
  v6 = v4;
  v7 = v5;
  v8 = *(v3 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    *(v0 + 256) = v11;
    v12 = *(v11 + 32);

    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVyS2S_GTt0g5(v13);
    v14 = MEMORY[0x1E69E7CC8];
    *(v0 + 184) = v15;
    *(v0 + 192) = v14;
    if (v12 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = *(v0 + 216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    Dictionary.reserveCapacity(_:)(v16);
    v18 = *(v0 + 192);

    v19 = specialized Sequence.reduce<A>(into:_:)(v18, v12, v17);

    v20 = *(v0 + 184);
    *(v0 + 264) = v20;
    if (*(v20 + 16))
    {

      *(v0 + 200) = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
      lazy protocol witness table accessor for type Set<String> and conformance Set<A>();
      lazy protocol witness table accessor for type String and conformance String();
      v21 = Sequence<>.joined(separator:)();
      v23 = v22;

      lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
      swift_allocError();
      *v24 = v21;
      *(v24 + 8) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      *(v24 + 16) = 0;
      *(v24 + 40) = 2;
      swift_willThrow();

LABEL_9:
      v26 = *(v0 + 8);

      return v26();
    }

    v39 = *(v0 + 240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMd, &_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 32) = v6;
    v34 = inited + 32;
    *(inited + 40) = v7;
    *(inited + 48) = v19;
    v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDyS2SGTt0g5Tf4g_n(inited);
    *(v0 + 272) = v35;
    swift_setDeallocating();
    outlined destroy of BodyTrackingComponent?(v34, &_sSS_SDyS2SGtMd, &_sSS_SDyS2SGtMR);
    v37 = (*(v39 + 24) + **(v39 + 24));
    v36 = swift_task_alloc();
    *(v0 + 280) = v36;
    *v36 = v0;
    v36[1] = Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:);
    v29 = *(v0 + 240);
    v32 = *(v0 + 224);
    v30 = *(v0 + 208);
    v31 = v35;
  }

  else
  {
    if (*(*(v0 + 216) + 16))
    {
      lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
      swift_allocError();
      *v25 = v6;
      *(v25 + 8) = v7;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
      *(v25 + 16) = 0;
      *(v25 + 40) = 0;
      swift_willThrow();

      goto LABEL_9;
    }

    v38 = *(v0 + 240);

    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0;
    v37 = (*(v38 + 24) + **(v38 + 24));
    v28 = swift_task_alloc();
    *(v0 + 296) = v28;
    *v28 = v0;
    v28[1] = Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:);
    v29 = *(v0 + 240);
    v30 = *(v0 + 208);
    v31 = 0;
    v32 = v0 + 16;
  }

  return v37(v30, v31, v32, ObjectType, v29);
}

{
  *(*v1 + 288) = v0;

  if (v0)
  {

    v2 = Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v2 = Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v2 = Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  outlined destroy of BodyTrackingComponent?(v0 + 16, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of BodyTrackingComponent?(v0 + 16, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t Entity.ConfigurationCatalog.ConfigurableEntityError.errorDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  switch(*(v0 + 40))
  {
    case 1:
      v22 = 0;
      _StringGuts.grow(_:)(67);
      v10 = "ration set names: '";
      v11 = 45;
      goto LABEL_11;
    case 2:
      v22 = 0;
      _StringGuts.grow(_:)(55);
      v10 = "any configurations.";
      v11 = 33;
      goto LABEL_11;
    case 3:
      v22 = 0;
      _StringGuts.grow(_:)(60);
      MEMORY[0x1C68F3410](0xD000000000000017, 0x80000001C18EAAE0);
      MEMORY[0x1C68F3410](v2, v1);
      v13 = "The configuration set '";
      v8 = 0xD000000000000023;
      goto LABEL_17;
    case 4:
      v22 = 0;
      _StringGuts.grow(_:)(58);
      v10 = "' was used more than once.";
      v11 = 36;
LABEL_11:
      MEMORY[0x1C68F3410](v11 | 0xD000000000000012, v10 | 0x8000000000000000);
      goto LABEL_12;
    case 5:
      v22 = 0;
      _StringGuts.grow(_:)(52);
      v19 = " with more than one Entity: ";
      v20 = 0xD000000000000018;
      goto LABEL_15;
    case 6:
      v22 = 0;
      _StringGuts.grow(_:)(56);
      v19 = "passed configuration set are '";
      v20 = 0xD00000000000001CLL;
LABEL_15:
      MEMORY[0x1C68F3410](v20, v19 | 0x8000000000000000);
      MEMORY[0x1C68F3410](v2, v1);
      v13 = "t match those keys, including '";
      v8 = 0xD00000000000001ALL;
      goto LABEL_17;
    case 7:
      v22 = 0;
      _StringGuts.grow(_:)(105);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v14);

      v15 = "', which maps to '";
      v16 = 0xD00000000000004FLL;
      goto LABEL_19;
    case 8:
      v22 = 0;
      _StringGuts.grow(_:)(109);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v21);

      v15 = "' is used multiple times.";
      v16 = 0xD000000000000053;
LABEL_19:
      MEMORY[0x1C68F3410](v16, v15 | 0x8000000000000000);
      MEMORY[0x1C68F3410](v1, v4);
      MEMORY[0x1C68F3410](0xD000000000000012, 0x80000001C18EAA10);
      v17 = v3;
      v18 = v5;
      goto LABEL_20;
    case 9:
      _StringGuts.grow(_:)(44);

      v22 = 0xD000000000000011;
      MEMORY[0x1C68F3410](v2, v1);
      v13 = "The source path '";
      v8 = 0xD000000000000019;
      goto LABEL_17;
    case 0xA:
      v22 = 0;
      _StringGuts.grow(_:)(79);
      MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18EA910);
      MEMORY[0x1C68F3410](v2, v1);
      v13 = "gurationId value '";
      v8 = 0xD00000000000002BLL;
LABEL_17:
      v9 = v13 | 0x8000000000000000;
      goto LABEL_21;
    case 0xB:
      v22 = 0;
      _StringGuts.grow(_:)(129);
      MEMORY[0x1C68F3410](0xD00000000000002FLL, 0x80000001C18EA840);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v6);

      MEMORY[0x1C68F3410](0xD00000000000004DLL, 0x80000001C18EA870);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v7);

      v8 = 46;
      v9 = 0xE100000000000000;
      goto LABEL_21;
    case 0xC:
      return 0xD000000000000042;
    default:
      _StringGuts.grow(_:)(49);

      v22 = 0xD00000000000002DLL;
LABEL_12:
      v17 = v2;
      v18 = v1;
LABEL_20:
      MEMORY[0x1C68F3410](v17, v18);
      v8 = 11815;
      v9 = 0xE200000000000000;
LABEL_21:
      MEMORY[0x1C68F3410](v8, v9);
      return v22;
  }
}

uint64_t Entity.init(from:configurations:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = v2;
  *(v3 + 168) = *a1;
  *(v3 + 176) = *(a1 + 8);
  type metadata accessor for MainActor();
  *(v3 + 192) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 200) = v5;
  *(v3 + 208) = v4;

  return MEMORY[0x1EEE6DFA0](Entity.init(from:configurations:), v5, v4);
}

uint64_t Entity.init(from:configurations:)()
{
  *(v0 + 128) = *(v0 + 168);
  *(v0 + 136) = *(v0 + 176);
  *(v0 + 16) = 1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = Entity.init(from:configurations:);
  v2 = *(v0 + 152);

  return Entity.init(from:configurations:loadOptions:)((v0 + 128), v2, v0 + 16);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 232);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Entity.init(from:configurations:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = Entity.init(from:configurations:);
  }

  else
  {
    v4[29] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = Entity.init(from:configurations:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t Entity.init(from:configurations:loadOptions:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  v5 = *a1;
  *(v4 + 56) = v3;
  *(v4 + 64) = v5;
  *(v4 + 72) = *(a1 + 1);
  type metadata accessor for MainActor();
  *(v4 + 88) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 96) = v7;
  *(v4 + 104) = v6;

  return MEMORY[0x1EEE6DFA0](Entity.init(from:configurations:loadOptions:), v7, v6);
}

uint64_t Entity.init(from:configurations:loadOptions:)()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v8 = *(v0 + 72);
  v3 = (*(*(v0 + 56) + 232))();
  *(v0 + 16) = v1;
  *(v0 + 112) = v3;
  *(v0 + 24) = v8;
  if (v2)
  {
    v4 = *(v0 + 40);
  }

  else
  {
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *(v0 + 120) = v4;
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = Entity.init(from:configurations:loadOptions:);
  v6 = *(v0 + 48);

  return Entity.ConfigurationCatalog.loadEntity(into:withConfigurations:loadOptions:)(v3, v4, v6);
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = Entity.init(from:configurations:loadOptions:);
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = Entity.init(from:configurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{
  v1 = v0[6];

  outlined destroy of BodyTrackingComponent?(v1, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  v2 = v0[1];
  v3 = v0[14];

  return v2(v3);
}

{
  v1 = *(v0 + 48);

  outlined destroy of BodyTrackingComponent?(v1, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t static Entity.load(from:configurations:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 56) = *a1;
  *(v3 + 64) = *(a1 + 8);
  type metadata accessor for MainActor();
  *(v3 + 80) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 88) = v5;
  *(v3 + 96) = v4;

  return MEMORY[0x1EEE6DFA0](static Entity.load(from:configurations:loadOptions:), v5, v4);
}

uint64_t static Entity.load(from:configurations:loadOptions:)()
{
  *(v0 + 16) = *(v0 + 56);
  v1 = *(v0 + 40);
  *(v0 + 24) = *(v0 + 64);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *(v0 + 104) = v2;

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = static Entity.load(from:configurations:loadOptions:);
  v4 = *(v0 + 48);

  return Entity.ConfigurationCatalog.loadEntity(withConfigurations:loadOptions:)(v2, v4);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Entity.load(from:configurations:loadOptions:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[11];
    v6 = v4[12];
    v7 = static Entity.load(from:configurations:loadOptions:);
  }

  else
  {

    v4[16] = a1;
    v5 = v4[11];
    v6 = v4[12];
    v7 = static Entity.load(from:configurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t static Entity.ConfigurationCatalog.== infix(_:_:)()
{
  v0 = Entity.ConfigurationCatalog.configurationSets.getter();
  v1 = Entity.ConfigurationCatalog.configurationSets.getter();
  v2 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F3SetVTt1g5(v0, v1);

  return v2 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Entity.ConfigurationCatalog()
{
  v0 = Entity.ConfigurationCatalog.configurationSets.getter();
  v1 = Entity.ConfigurationCatalog.configurationSets.getter();
  v2 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F3SetVTt1g5(v0, v1);

  return v2 & 1;
}

uint64_t static Entity.ConfigurationCatalog.ConfigurationSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Entity.ConfigurationCatalog.ConfigurationSet(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void specialized Dictionary.Values.subscript.getter(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a1 < 0 || 1 << *(a3 + 32) <= a1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (a1 >> 6) + 64) >> a1) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = (*(a3 + 56) + 16 * a1);
    v5 = v4[1];
    *a4 = *v4;
    a4[1] = v5;

    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t specialized Dictionary.Keys.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v26 = v3 & 0xC000000000000001;
      v27 = a3;
      v24 = v3;
      v25 = v3 & 0xFFFFFFFFFFFFFF8;
      v23 = v5;
      while (v26)
      {
        v13 = MEMORY[0x1C68F41F0](v6, v3);
        v12 = v27;
        v14 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }

LABEL_9:
        v16 = *(v13 + 32);
        v15 = *(v13 + 40);
        v17 = *(v12 + 16);

        if (v17 && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15), (v19 & 1) != 0))
        {
          v7 = (*(v12 + 56) + 16 * v18);
          v8 = v7 + 1;
        }

        else
        {
          v7 = (v13 + 16);
          v8 = (v13 + 24);
        }

        v9 = *v7;
        v10 = *v8;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v10, v16, v15, isUniquelyReferenced_nonNull_native);

        specialized Set._Variant.remove(_:)(v16, v15);

        ++v6;
        v3 = v24;
        if (v14 == v23)
        {
          return a1;
        }
      }

      v12 = v27;
      if (v6 >= *(v25 + 16))
      {
        goto LABEL_15;
      }

      v13 = *(v3 + 8 * v6 + 32);

      v14 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_9;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v20 = a3;
      v21 = __CocoaSet.count.getter();
      a3 = v20;
      v5 = v21;
    }

    while (v21);
  }

  return a1;
}

uint64_t specialized Entity.ConfigurationCatalog.write(to:options:)(uint64_t a1)
{
  *(v2 + 912) = a1;
  *(v2 + 920) = *(v1 + 8);
  *(v2 + 936) = type metadata accessor for MainActor();
  *(v2 + 944) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 952) = v4;
  *(v2 + 960) = v3;

  return MEMORY[0x1EEE6DFA0](specialized Entity.ConfigurationCatalog.write(to:options:), v4, v3);
}

{
  v3 = *v2;
  v3[134] = a1;
  v3[135] = v1;

  if (v1)
  {

    outlined destroy of BodyTrackingComponent?((v3 + 69), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);

    v4 = v3[120];
    v5 = v3[119];
    v6 = specialized Entity.ConfigurationCatalog.write(to:options:);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?((v3 + 69), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);

    v4 = v3[120];
    v5 = v3[119];
    v6 = specialized Entity.ConfigurationCatalog.write(to:options:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

void specialized Entity.ConfigurationCatalog.write(to:options:)()
{
  v1 = *(v0 + 928);
  ObjectType = swift_getObjectType();
  *(v0 + 968) = ObjectType;
  v3 = (*(v1 + 8))();
  v5 = v4;
  *(v0 + 976) = v3;
  *(v0 + 984) = v4;
  v6 = *((*(v1 + 16))(ObjectType, v1) + 24);

  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v5), (v8 & 1) == 0))
  {

    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
    swift_allocError();
    *v18 = v3;
    *(v18 + 8) = v5;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 16) = 0;
    *(v18 + 40) = 0;
    swift_willThrow();
    v19 = *(v0 + 8);

    v19();
    return;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  *(v0 + 992) = v9;

  v10 = *(v9 + 32);
  *(v0 + 1000) = v10;
  *(v0 + 864) = MEMORY[0x1E69E7CC0];
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    while (v11 >= 1)
    {

      v12 = 0;
      v13 = 1;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1C68F41F0](v12, v10);
        }

        else
        {
          v14 = *(v10 + 8 * v12 + 32);
        }

        v15 = *(v14 + 48);

        v16 = *(v15 + 16);

        v17 = v13 * v16;
        if ((v13 * v16) >> 64 != (v13 * v16) >> 63)
        {
          break;
        }

        ++v12;
        v13 *= v16;
        if (v11 == v12)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      v11 = __CocoaSet.count.getter();
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
    return;
  }

LABEL_18:

  v17 = 1;
LABEL_19:
  specialized Array.reserveCapacity(_:)();
  *(v0 + 872) = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  Set.reserveCapacity(_:)(v17);
  *(v0 + 880) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  Dictionary.reserveCapacity(_:)(v17);
  if (v10 >> 62)
  {
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 1008) = v20;
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v77 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
      goto LABEL_91;
    }

    v22 = 0;
    v23 = v77;
    v24 = v10 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        MEMORY[0x1C68F41F0](v22, v10);
        swift_unknownObjectRelease();
      }

      v26 = *(v77 + 16);
      v25 = *(v77 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      }

      ++v22;
      *(v77 + 16) = v26 + 1;
      *(v77 + 8 * v26 + 32) = 0;
    }

    while (v20 != v22);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v27 = 0;
    do
    {
      if (v24)
      {
        MEMORY[0x1C68F41F0](v27, v10);
        swift_unknownObjectRelease();
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      v30 = v21;
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v30 = v21;
      }

      ++v27;
      *(v30 + 2) = v29 + 1;
      v31 = &v30[16 * v29];
      *(v31 + 4) = 0;
      *(v31 + 5) = 0xE000000000000000;
      v21 = v30;
    }

    while (v20 != v27);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_89:
    v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
  }

  *(v0 + 1016) = v23;
  *(v0 + 1024) = 0;
  v32 = *(v0 + 1008);
  if (!v32)
  {
    v62 = 1;
    v34 = MEMORY[0x1E69E7CC8];
    goto LABEL_74;
  }

  v33 = 0;
  v76 = (v0 + 888);
  v34 = MEMORY[0x1E69E7CC8];
  v71 = 1;
  v70 = v0;
  while (2)
  {
    v35 = 16 * v33;
    v36 = v33 + 4;
    while (1)
    {
      v23 = (v36 - 4);
      if (v36 - 4 >= v32)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (__OFADD__(v23, 1))
      {
        goto LABEL_81;
      }

      v37 = *(v0 + 1000);
      if ((v37 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1C68F41F0](v36 - 4);
      }

      else
      {
        if (v23 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_88;
        }
      }

      v39 = *(v0 + 1016);
      if (v23 >= *(v39 + 16))
      {
        goto LABEL_82;
      }

      v40 = *(v39 + 8 * v36);
      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

      v41 = v38[7];
      if (v40 >= *(v41 + 16))
      {
        goto LABEL_84;
      }

      v74 = v35;
      v75 = v21;
      v72 = v36 - 3;
      v73 = v38;
      v42 = v41 + 16 * v40;
      v44 = *(v42 + 32);
      v43 = *(v42 + 40);
      v21 = v38[4];
      v45 = v38[5];
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v76 = v34;
      v0 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v45);
      v48 = v34[2];
      v49 = (v47 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_85;
      }

      v51 = v47;
      if (v34[3] >= v50)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, isUniquelyReferenced_nonNull_native);
        v52 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v45);
        if ((v51 & 1) != (v53 & 1))
        {

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v0 = v52;
      }

      v34 = *v76;
      if (v51)
      {
        v54 = (v34[7] + 16 * v0);
        *v54 = v44;
        v54[1] = v43;
      }

      else
      {
        v34[(v0 >> 6) + 8] |= 1 << v0;
        v55 = (v34[6] + 16 * v0);
        *v55 = v21;
        v55[1] = v45;
        v56 = (v34[7] + 16 * v0);
        *v56 = v44;
        v56[1] = v43;
        v57 = v34[2];
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_87;
        }

        v34[2] = v59;
      }

      v21 = v75;
      v0 = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v75);
      }

      if (v23 >= *(v21 + 2))
      {
        goto LABEL_86;
      }

      v60 = &v21[v74];
      *(v60 + 4) = v44;
      *(v60 + 5) = v43;

      if ((v71 & 1) != 0 && (v73[2] != v44 || v73[3] != v43))
      {
        break;
      }

LABEL_43:
      v32 = *(v70 + 1008);
      v35 = v74 + 16;
      ++v36;
      if (v72 == v32)
      {
        v62 = v71;
        goto LABEL_74;
      }
    }

    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v61)
    {
      goto LABEL_43;
    }

    v71 = 0;
    v62 = 0;
    v32 = *(v70 + 1008);
    v33 = v36 - 3;
    if (v72 != v32)
    {
      continue;
    }

    break;
  }

LABEL_74:
  *(v0 + 1048) = v34;
  *(v0 + 1040) = v21;
  *(v0 + 162) = v62 & 1;
  *(v0 + 1032) = v34;
  v63 = *(v0 + 984);
  v64 = *(v0 + 976);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMd, &_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMR);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1C1887600;
  *(v65 + 32) = v64;
  *(v65 + 40) = v63;
  *(v65 + 48) = v34;

  v66 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDyS2SGTt0g5Tf4g_n(v65);
  *(v0 + 1056) = v66;
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(v65 + 32, &_sSS_SDyS2SGtMd, &_sSS_SDyS2SGtMR);
  swift_deallocClassInstance();
  *(v0 + 552) = 1;
  *(v0 + 560) = 0u;
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0u;
  *(v0 + 656) = 0;
  v67 = swift_task_alloc();
  *(v0 + 1064) = v67;
  *v67 = v0;
  v67[1] = specialized Entity.ConfigurationCatalog.write(to:options:);
  v68 = *(v0 + 968);
  v69 = *(v0 + 928);

  Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:)(v66, v0 + 552, v68, v69);
}

uint64_t specialized Entity.ConfigurationCatalog.write(to:options:)()
{
  v1 = (v0 + 872);
  v116 = v0 + 728;
  v119 = (v0 + 888);
  REEntityGetName();
  v2 = String.init(cString:)();
  v4 = v3;
  v5 = *(v0 + 1024);
  while (1)
  {
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = *v1;
    if (!*(*v1 + 16))
    {
      break;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    v8 = Hasher._finalize()();
    v9 = -1 << *(v7 + 32);
    v10 = v8 & ~v9;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      break;
    }

    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == v2 && v12[1] == v4;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_15:
    *(v0 + 832) = 0x5F656E656353;
    *(v0 + 840) = 0xE600000000000000;
    *(v0 + 896) = v5;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v14);

    v15 = __OFADD__(v5++, 1);
    if (v15)
    {
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v2 = *(v0 + 832);
    v4 = *(v0 + 840);
  }

LABEL_17:
  v16 = *(v0 + 162);
  swift_bridgeObjectRetain_n();
  specialized Set._Variant.insert(_:)((v0 + 848), v2, v4);

  Entity.name.setter(v2, v4);
  v19 = *(v0 + 864);
  v20 = v19 >> 62;
  if ((v16 & 1) == 0)
  {
    if (v20)
    {
      v21 = __CocoaSet.count.getter();
      goto LABEL_116;
    }

    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_22;
  }

  v21 = 0;
  if (!v20)
  {
LABEL_22:
    v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22 >= v21)
    {
      goto LABEL_23;
    }

LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v22, v17, v18);
  }

LABEL_116:
  v22 = __CocoaSet.count.getter();
  if (v22 < v21)
  {
    goto LABEL_117;
  }

LABEL_23:
  if (v21 < 0)
  {
    goto LABEL_113;
  }

  v23 = *(v0 + 1072);
  v24 = *(v0 + 1040);
  v25 = *(v0 + 1016);

  specialized Array.replaceSubrange<A>(_:with:)(v21, v21, v23);

  v26 = *(v0 + 880);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v2, v4, isUniquelyReferenced_nonNull_native);

  v1 = v26;
  *(v0 + 1088) = v26;
  *(v0 + 880) = v26;
  v28 = *(v25 + 16);
  if (!v28)
  {
LABEL_36:

    v38 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v38 + 120, v116);
    v39 = *(v0 + 864);
    *(v0 + 904) = MEMORY[0x1E69E7CC8];
    v40 = swift_task_alloc();
    *(v40 + 16) = v116;
    *(v40 + 24) = v0 + 904;
    v41 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static __REAssetBundle.__init(elements:assetService:), v40, v39);

    v42 = *(v0 + 904);
    outlined init with copy of __REAssetService(v116, v0 + 768);
    __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v41, (v0 + 768), v42, 0, (v0 + 664));
    *(v0 + 1176) = 0;
    *(v0 + 161) = 1;
    if (one-time initialization token for defaultRealityFileVersionForWritePublicAPI == -1)
    {
LABEL_37:
      v43 = *(v0 + 1008);
      v44 = static __REAssetBundle.defaultRealityFileVersionForWritePublicAPI;
      *(v0 + 1096) = static __REAssetBundle.defaultRealityFileVersionForWritePublicAPI;
      *(v0 + 1184) = 0;
      if (v43)
      {
        v117 = v44;
        v45 = MEMORY[0x1E69E7CC0];
        v120 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
        v46 = 0;
        v47 = v120;
        do
        {
          v48 = *(v0 + 1000);
          if ((v48 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x1C68F41F0](v46);
          }

          else
          {
            v49 = *(v48 + 8 * v46 + 32);
          }

          v51 = *(v49 + 32);
          v50 = *(v49 + 40);

          v53 = *(v120 + 16);
          v52 = *(v120 + 24);
          if (v53 >= v52 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
          }

          v54 = *(v0 + 1008);
          ++v46;
          *(v120 + 16) = v53 + 1;
          v55 = v120 + 16 * v53;
          *(v55 + 32) = v51;
          *(v55 + 40) = v50;
        }

        while (v46 != v54);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 1008), 0);
        v56 = 0;
        v57 = v45;
        do
        {
          v58 = *(v0 + 1000);
          if ((v58 & 0xC000000000000001) != 0)
          {
            v59 = MEMORY[0x1C68F41F0](v56);
          }

          else
          {
            v59 = *(v58 + 8 * v56 + 32);
          }

          v60 = *(v59 + 16);
          v61 = *(v59 + 24);

          v63 = *(v57 + 16);
          v62 = *(v57 + 24);
          if (v63 >= v62 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
          }

          v64 = *(v0 + 1008);
          ++v56;
          *(v57 + 16) = v63 + 1;
          v65 = v57 + 16 * v63;
          *(v65 + 32) = v60;
          *(v65 + 40) = v61;
        }

        while (v56 != v64);

        v44 = v117;
      }

      else
      {

        v47 = MEMORY[0x1E69E7CC0];
        v57 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 1112) = v57;
      *(v0 + 1104) = v47;
      *(v0 + 168) = 1;
      *(v0 + 169) = *(v0 + 139);
      *(v0 + 172) = *(v0 + 142);
      *(v0 + 176) = 1;
      *(v0 + 184) = *(v0 + 1176);
      *(v0 + 185) = *(v0 + 146);
      *(v0 + 188) = *(v0 + 149);
      *(v0 + 192) = 0;
      *(v0 + 200) = 1;
      *(v0 + 202) = 0;
      *(v0 + 203) = *(v0 + 161);
      *(v0 + 208) = xmmword_1C18B7B50;
      *(v0 + 224) = 0;
      *(v0 + 236) = 0;
      *(v0 + 232) = 0;
      *(v0 + 237) = *(v0 + 158);
      *(v0 + 239) = *(v0 + 160);
      *(v0 + 240) = v44;
      *(v0 + 248) = *(v0 + 1184);
      *(v0 + 249) = 1;
      *(v0 + 251) = *(v0 + 153);
      *(v0 + 255) = *(v0 + 157);
      *(v0 + 256) = v47;
      *(v0 + 264) = v57;
      *(v0 + 272) = v1;
      *(v0 + 280) = 0;
      *(v0 + 288) = 1;
      *(v0 + 290) = 3;
      outlined init with copy of __REAssetBundle.ExportOptions(v0 + 168, v0 + 296);
      *(v0 + 1120) = static MainActor.shared.getter();
      v101 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v102;
      *(v0 + 1128) = v101;
      *(v0 + 1136) = v102;
      v22 = specialized Entity.ConfigurationCatalog.write(to:options:);
      v17 = v101;

      return MEMORY[0x1EEE6DFA0](v22, v17, v18);
    }

LABEL_114:
    swift_once();
    goto LABEL_37;
  }

  v29 = v28 + 3;
  while (1)
  {
    v30 = v29 - 3;
    v31 = *(v0 + 1016);
    if ((v29 - 3) > *(v31 + 16))
    {
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v32 = *(v31 + 8 * v29);
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_100;
    }

    v34 = *(v0 + 1000);
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x1C68F41F0](v29 - 4);
    }

    else
    {
      if (v30 > *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_101;
      }

      v35 = *(v34 + 8 * v29);
    }

    v36 = *(v35 + 48);

    v37 = *(v36 + 16);

    if (v33 < v37)
    {
      break;
    }

    if (v30 > *(*(v0 + 1016) + 16))
    {
      goto LABEL_102;
    }

    *(v31 + 8 * v29--) = 0;
    if (v29 == 3)
    {
      goto LABEL_36;
    }
  }

  v66 = *(v0 + 1016);

  if (v30 > *(v66 + 16))
  {
    goto LABEL_118;
  }

  *(v31 + 8 * v29) = v33;
  v67 = *(v0 + 1048);
  v68 = *(v0 + 1040);
  v69 = *(v0 + 1032);
  *(v0 + 1024) = v5;
  v70 = *(v0 + 1008);
  if (v70)
  {
    v71 = 0;
    v111 = 1;
LABEL_56:
    v72 = 16 * v71;
    v73 = v71 + 4;
    while (1)
    {
      v74 = v73 - 4;
      if (v73 - 4 >= v70)
      {
        goto LABEL_103;
      }

      if (__OFADD__(v74, 1))
      {
        goto LABEL_104;
      }

      v75 = *(v0 + 1000);
      if ((v75 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x1C68F41F0](v73 - 4);
      }

      else
      {
        if (v74 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_112;
        }
      }

      v77 = *(v0 + 1016);
      if (v74 >= *(v77 + 16))
      {
        goto LABEL_105;
      }

      v78 = *(v77 + 8 * v73);
      if ((v78 & 0x8000000000000000) != 0)
      {
        goto LABEL_106;
      }

      v79 = v76[7];
      if (v78 >= *(v79 + 16))
      {
        goto LABEL_107;
      }

      v112 = v73;
      v113 = v73 - 3;
      v115 = v72;
      v118 = v68;
      v80 = v79 + 16 * v78;
      v81 = *(v80 + 32);
      v1 = *(v80 + 40);
      v83 = v76[4];
      v82 = v76[5];
      v114 = v76;
      swift_bridgeObjectRetain_n();

      v84 = swift_isUniquelyReferenced_nonNull_native();
      *v119 = v69;
      v86 = specialized __RawDictionaryStorage.find<A>(_:)(v83, v82);
      v87 = v69[2];
      v88 = (v85 & 1) == 0;
      v89 = v87 + v88;
      if (__OFADD__(v87, v88))
      {
        goto LABEL_108;
      }

      v90 = v85;
      if (v69[3] >= v89)
      {
        if ((v84 & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v89, v84);
        v91 = specialized __RawDictionaryStorage.find<A>(_:)(v83, v82);
        if ((v90 & 1) != (v92 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v86 = v91;
      }

      v69 = *v119;
      if (v90)
      {
        v93 = (v69[7] + 16 * v86);
        *v93 = v81;
        v93[1] = v1;
      }

      else
      {
        v69[(v86 >> 6) + 8] |= 1 << v86;
        v94 = (v69[6] + 16 * v86);
        *v94 = v83;
        v94[1] = v82;
        v95 = (v69[7] + 16 * v86);
        *v95 = v81;
        v95[1] = v1;
        v96 = v69[2];
        v15 = __OFADD__(v96, 1);
        v97 = v96 + 1;
        if (v15)
        {
          goto LABEL_111;
        }

        v69[2] = v97;
      }

      v68 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = specialized _ArrayBuffer._consumeAndCreateNew()(v118);
      }

      if (v74 >= *(v68 + 2))
      {
        goto LABEL_109;
      }

      v98 = &v68[v115];
      *(v98 + 4) = v81;
      *(v98 + 5) = v1;

      if ((v111 & 1) == 0 || v114[2] == v81 && v114[3] == v1)
      {
      }

      else
      {
        v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v99 & 1) == 0)
        {
          v111 = 0;
          v100 = 0;
          v70 = *(v0 + 1008);
          v67 = v69;
          v71 = v113;
          if (v113 != v70)
          {
            goto LABEL_56;
          }

          goto LABEL_93;
        }
      }

      v70 = *(v0 + 1008);
      v72 = v115 + 16;
      v73 = v112 + 1;
      if (v113 == v70)
      {
        v100 = v111;
        v67 = v69;
        goto LABEL_93;
      }
    }
  }

  v100 = 1;
LABEL_93:
  *(v0 + 1048) = v67;
  *(v0 + 1040) = v68;
  *(v0 + 162) = v100 & 1;
  *(v0 + 1032) = v69;
  v103 = *(v0 + 984);
  v104 = *(v0 + 976);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMd, &_ss23_ContiguousArrayStorageCySS_SDyS2SGtGMR);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1C1887600;
  *(v105 + 32) = v104;
  *(v105 + 40) = v103;
  *(v105 + 48) = v67;

  v106 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDyS2SGTt0g5Tf4g_n(v105);
  *(v0 + 1056) = v106;
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(v105 + 32, &_sSS_SDyS2SGtMd, &_sSS_SDyS2SGtMR);
  swift_deallocClassInstance();
  *(v0 + 552) = 1;
  *(v0 + 560) = 0u;
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0u;
  *(v0 + 656) = 0;
  v107 = swift_task_alloc();
  *(v0 + 1064) = v107;
  *v107 = v0;
  v107[1] = specialized Entity.ConfigurationCatalog.write(to:options:);
  v108 = *(v0 + 968);
  v109 = *(v0 + 928);

  return Entity.ConfigurationCatalog.FormatReader.loadEntity(withConfigurations:loadOptions:)(v106, v0 + 552, v108, v109);
}

{
  v2 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v3 = *(v2 + 1136);
    v4 = *(v2 + 1128);
    v5 = specialized Entity.ConfigurationCatalog.write(to:options:);
  }

  else
  {

    v3 = *(v2 + 1136);
    v4 = *(v2 + 1128);
    v5 = specialized Entity.ConfigurationCatalog.write(to:options:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{

  outlined destroy of __REAssetBundle.ExportOptions(v0 + 168);
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);

  return MEMORY[0x1EEE6DFA0](specialized Entity.ConfigurationCatalog.write(to:options:), v2, v1);
}

{
  v5 = *(v0 + 1104);
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1088);

  outlined destroy of __REAssetBundle(v0 + 664);
  __swift_destroy_boxed_opaque_existential_1((v0 + 728));
  *(v0 + 16) = 1;
  *(v0 + 17) = *(v0 + 139);
  *(v0 + 20) = *(v0 + 142);
  *(v0 + 24) = 1;
  *(v0 + 32) = *(v0 + 1176);
  *(v0 + 33) = *(v0 + 146);
  *(v0 + 36) = *(v0 + 149);
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 50) = 0;
  *(v0 + 51) = *(v0 + 161);
  *(v0 + 56) = xmmword_1C18B7B50;
  *(v0 + 72) = 0;
  *(v0 + 84) = 0;
  *(v0 + 80) = 0;
  *(v0 + 85) = *(v0 + 158);
  *(v0 + 87) = *(v0 + 160);
  *(v0 + 88) = v1;
  *(v0 + 96) = *(v0 + 1184);
  *(v0 + 97) = 1;
  *(v0 + 99) = *(v0 + 153);
  *(v0 + 103) = *(v0 + 157);
  *(v0 + 104) = v5;
  *(v0 + 120) = v2;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 138) = 3;
  outlined destroy of __REAssetBundle.ExportOptions(v0 + 16);

  v3 = *(v0 + 8);

  return v3();
}

{

  outlined destroy of __REAssetBundle.ExportOptions(v0 + 168);
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);

  return MEMORY[0x1EEE6DFA0](specialized Entity.ConfigurationCatalog.write(to:options:), v2, v1);
}

{
  v5 = *(v0 + 1104);
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1088);

  outlined destroy of __REAssetBundle(v0 + 664);
  __swift_destroy_boxed_opaque_existential_1((v0 + 728));
  *(v0 + 424) = 1;
  *(v0 + 425) = *(v0 + 139);
  *(v0 + 428) = *(v0 + 142);
  *(v0 + 432) = 1;
  *(v0 + 440) = *(v0 + 1176);
  *(v0 + 441) = *(v0 + 146);
  *(v0 + 444) = *(v0 + 149);
  *(v0 + 448) = 0;
  *(v0 + 456) = 1;
  *(v0 + 458) = 0;
  *(v0 + 459) = *(v0 + 161);
  *(v0 + 464) = xmmword_1C18B7B50;
  *(v0 + 480) = 0;
  *(v0 + 492) = 0;
  *(v0 + 488) = 0;
  *(v0 + 493) = *(v0 + 158);
  *(v0 + 495) = *(v0 + 160);
  *(v0 + 496) = v1;
  *(v0 + 504) = *(v0 + 1184);
  *(v0 + 505) = 1;
  *(v0 + 507) = *(v0 + 153);
  *(v0 + 511) = *(v0 + 157);
  *(v0 + 512) = v5;
  *(v0 + 528) = v2;
  *(v0 + 536) = 0;
  *(v0 + 544) = 1;
  *(v0 + 546) = 3;
  outlined destroy of __REAssetBundle.ExportOptions(v0 + 424);

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized Entity.ConfigurationCatalog.write(to:options:)(__n128 a1)
{
  v2 = v1[114];
  v3 = static MainActor.shared.getter();
  v1[143] = v3;
  v4 = swift_task_alloc();
  v1[144] = v4;
  v4[2] = v1 + 83;
  v4[3] = v2;
  v4[4] = v1 + 21;
  v5 = swift_task_alloc();
  v1[145] = v5;
  *v5 = v1;
  v5[1] = specialized Entity.ConfigurationCatalog.write(to:options:);
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v3, v6, 0xD000000000000016, 0x80000001C18EABE0, partial apply for closure #1 in static Entity.WriteHelper.write(bundle:to:with:), v4, v7);
}

uint64_t outlined assign with take of Entity.__LoadOptions?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of RealityFileLoadInformation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RealityFileLoadInformation(uint64_t a1)
{
  Information = type metadata accessor for RealityFileLoadInformation(0);
  (*(*(Information - 8) + 8))(a1, Information);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_yXls5Error_pIeggzo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10RealityKit6EntityC13__LoadOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
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

uint64_t getEnumTagSinglePayload for Entity.ConfigurationCatalog.LoadOptions(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for Entity.ConfigurationCatalog.LoadOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV012ConfigurableC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 0xFu) <= 0xB)
  {
    return *(a1 + 40) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t getEnumTagSinglePayload for Entity.ConfigurationCatalog.ConfigurableEntityError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 41))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 40);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Entity.ConfigurationCatalog.ConfigurableEntityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Entity.ConfigurationCatalog.ConfigurableEntityError(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 12;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject) -> (@out (), @error @owned Error)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t lazy protocol witness table accessor for type Set<String> and conformance Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<String> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String> and conformance Set<A>)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E6508], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Set<String> and conformance Set<A>);
  }

  return result;
}

void static TextureResource.Contents.Slice.slice(data:bytesPerRow:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(a2);
LABEL_12:
    *a4 = a1;
    a4[1] = a2;
    a4[2] = 0;
    a4[3] = v9;
    a4[4] = a3;
    a4[5] = 0;
    return;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v9 = HIDWORD(a1) - a1;
LABEL_10:
    outlined copy of Data._Representation(a1, a2);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t static TextureResource.Contents.Slice.slice(unsafeBuffer:offset:size:bytesPerRow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = 0x2000000000000000;
  a5[2] = a2;
  a5[3] = a3;
  a5[4] = a4;
  a5[5] = 0;
  return swift_unknownObjectRetain();
}

uint64_t TextureResource.init(dimensions:format:contents:)(_OWORD *a1, uint64_t a2, uint64_t *a3)
{
  *(v3 + 16) = *a1;
  *(v3 + 104) = *a2;
  *(v3 + 105) = *(a2 + 16);
  *(v3 + 106) = *(a2 + 17);
  v4 = *(a2 + 8);
  *(v3 + 107) = *(a2 + 18);
  v5 = *a3;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  type metadata accessor for MainActor();
  *(v3 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 56) = v7;
  *(v3 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(dimensions:format:contents:), v7, v6);
}

uint64_t TextureResource.init(dimensions:format:contents:)()
{
  v17 = v0;
  v1 = *(v0 + 107);
  v2 = *(v0 + 106);
  v3 = *(v0 + 105);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 104);
  v10 = *(v0 + 16);
  v11[0] = v6;
  v12 = v4;
  v13 = v3;
  v14 = v2;
  v15 = v1;
  v16 = v5;
  v7 = specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(&v10, 0, 2, v11, &v16);
  *(v0 + 72) = v7;

  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = TextureResource.init(dimensions:format:contents:);

  return specialized static TextureResource.createAssetAsync(_:)(v7);
}

{
  v1 = *(v0 + 96);

  type metadata accessor for TextureResource();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  RERelease();
  v3 = *(v0 + 8);

  return v3(v2);
}

{

  RERelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  v18 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 115);
  v4 = *(v0 + 114);
  v5 = *(v0 + 113);
  v6 = *(v0 + 112);
  v7 = *(v0 + 32);
  v11 = *(v0 + 16);
  v12[0] = v6;
  v13 = v1;
  v14 = v5;
  v15 = v4;
  v16 = v3;
  v17 = v2;
  v8 = specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(&v11, v7, 3, v12, &v17);
  *(v0 + 80) = v8;

  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = TextureResource.init(dimensions:format:contents:);

  return specialized static TextureResource.createAssetAsync(_:)(v8);
}

{
  v17 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 99);
  v4 = *(v0 + 98);
  v5 = *(v0 + 97);
  v6 = *(v0 + 96);
  v10[0] = *(v0 + 16);
  v10[1] = v10[0];
  v11[0] = v6;
  v12 = v1;
  v13 = v5;
  v14 = v4;
  v15 = v3;
  v16 = v2;
  v7 = specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(v10, 6, 5, v11, &v16);
  *(v0 + 64) = v7;

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = TextureResource.init(dimensions:format:contents:);

  return specialized static TextureResource.createAssetAsync(_:)(v7);
}

{
  v1 = *(v0 + 88);

  type metadata accessor for TextureResource();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  RERelease();
  v3 = *(v0 + 8);

  return v3(v2);
}

{

  RERelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  v18 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 115);
  v4 = *(v0 + 114);
  v5 = *(v0 + 113);
  v6 = *(v0 + 112);
  v7 = *(v0 + 32);
  v11 = *(v0 + 16);
  v12[0] = v6;
  v13 = v1;
  v14 = v5;
  v15 = v4;
  v16 = v3;
  v17 = v2;
  v8 = specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(&v11, v7, 7, v12, &v17);
  *(v0 + 80) = v8;

  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = TextureResource.init(dimensions:format:contents:);

  return specialized static TextureResource.createAssetAsync(_:)(v8);
}

{
  v1 = *(v0 + 104);

  type metadata accessor for TextureResource();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  RERelease();
  RERelease();
  v3 = *(v0 + 8);

  return v3(v2);
}

{

  RERelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t TextureResource.init(dimensions:format:contents:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = TextureResource.init(dimensions:format:contents:);
  }

  else
  {
    v4[12] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = TextureResource.init(dimensions:format:contents:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = TextureResource.init(dimensions:format:contents:);
  }

  else
  {
    v4[13] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = TextureResource.init(dimensions:format:contents:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = TextureResource.init(dimensions:format:contents:);
  }

  else
  {
    v4[11] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = TextureResource.init(dimensions:format:contents:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = TextureResource.init(dimensions:format:contents:);
  }

  else
  {
    v4[13] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = TextureResource.init(dimensions:format:contents:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t TextureResource.init(dimensions:format:contents:)(__int128 *a1, char *a2, uint64_t *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = a2[16];
  v7 = a2[17];
  v8 = a2[18];
  v9 = *a3;
  v16 = *a1;
  LOBYTE(v17[0]) = v4;
  v17[1] = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v15 = v9;
  specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(&v16, 0, 2, v17, &v15);

  if (v3)
  {
    return v9;
  }

  v17[0] = 0;
  result = RETextureBuilderCreateAssetSync();
  if (result)
  {
    v11 = result;
    type metadata accessor for TextureResource();
    v9 = swift_allocObject();
    *(v9 + 16) = v11;
    *(v9 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    v17[0] = v9;
    RequestLoadable.enforceResourceSharingBeforeECSCommits()();
    RERelease();
    RERelease();
    if (v12)
    {
    }

    return v9;
  }

  v13 = v17[0];
  if (v17[0])
  {
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v14 = v13;
    swift_willThrow();
    RERelease();
    return v9;
  }

  __break(1u);
  return result;
}

{
  return TextureResource.init(dimensions:format:contents:)(a1, a2, a3, 3);
}

{
  return TextureResource.init(dimensions:format:contents:)(a1, a2, a3, 7);
}

void closure #1 in static TextureResource.createAssetAsync(_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = aBlock - v6;
  (*(v4 + 16))(aBlock - v6, a1, v3, v5);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v7, v3);
  aBlock[4] = partial apply for closure #1 in closure #1 in static TextureResource.createAssetAsync(_:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
  aBlock[3] = &block_descriptor_34;
  v10 = _Block_copy(aBlock);

  RETextureBuilderCreateAssetAsync();
  _Block_release(v10);
}

uint64_t closure #1 in closure #1 in static TextureResource.createAssetAsync(_:)(uint64_t a1, void *a2)
{
  if (a1)
  {
    RERetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else if (a2)
  {
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v4 = a2;
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t TextureResource.init(dimensions:format:contents:)(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = *a1;
  v4 = *(a1 + 16);
  *(v3 + 112) = *a2;
  v5 = *(a2 + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 113) = *(a2 + 16);
  *(v3 + 114) = *(a2 + 17);
  *(v3 + 115) = *(a2 + 18);
  *(v3 + 48) = *a3;
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 64) = v7;
  *(v3 + 72) = v6;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(dimensions:format:contents:), v7, v6);
}

{
  *(v3 + 16) = *a1;
  v4 = *(a1 + 16);
  *(v3 + 112) = *a2;
  v5 = *(a2 + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 113) = *(a2 + 16);
  *(v3 + 114) = *(a2 + 17);
  *(v3 + 115) = *(a2 + 18);
  *(v3 + 48) = *a3;
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 64) = v7;
  *(v3 + 72) = v6;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(dimensions:format:contents:), v7, v6);
}

uint64_t TextureResource.init(dimensions:format:contents:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  *(v3 + 96) = *a2;
  v5 = *(a2 + 8);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 97) = *(a2 + 16);
  *(v3 + 98) = *(a2 + 17);
  *(v3 + 99) = *(a2 + 18);
  *(v3 + 32) = *a3;
  type metadata accessor for MainActor();
  *(v3 + 40) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 48) = v7;
  *(v3 + 56) = v6;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(dimensions:format:contents:), v7, v6);
}

uint64_t TextureResource.init(dimensions:format:contents:)(uint64_t *a1, char *a2, uint64_t *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = a2[16];
  v7 = a2[17];
  v8 = a2[18];
  v9 = *a3;
  v16[0] = *a1;
  v16[1] = v16[0];
  LOBYTE(v17[0]) = v4;
  v17[1] = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v15 = v9;
  specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(v16, 6, 5, v17, &v15);

  if (v3)
  {
    return v9;
  }

  v17[0] = 0;
  result = RETextureBuilderCreateAssetSync();
  if (result)
  {
    v11 = result;
    type metadata accessor for TextureResource();
    v9 = swift_allocObject();
    *(v9 + 16) = v11;
    *(v9 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    v17[0] = v9;
    RequestLoadable.enforceResourceSharingBeforeECSCommits()();
    RERelease();
    RERelease();
    if (v12)
    {
    }

    return v9;
  }

  v13 = v17[0];
  if (v17[0])
  {
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v14 = v13;
    swift_willThrow();
    RERelease();
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t TextureResource.init(dimensions:format:contents:)(__int128 *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = a2[16];
  v9 = a2[17];
  v10 = a2[18];
  v11 = *a3;
  v18 = *a1;
  LOBYTE(v19[0]) = v6;
  v19[1] = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v17 = v11;
  specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(&v18, v5, a4, v19, &v17);

  if (v4)
  {
    return v11;
  }

  v19[0] = 0;
  result = RETextureBuilderCreateAssetSync();
  if (result)
  {
    v13 = result;
    type metadata accessor for TextureResource();
    v11 = swift_allocObject();
    *(v11 + 16) = v13;
    *(v11 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    v19[0] = v11;
    RequestLoadable.enforceResourceSharingBeforeECSCommits()();
    RERelease();
    RERelease();
    if (v14)
    {
    }

    return v11;
  }

  v15 = v19[0];
  if (v19[0])
  {
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v16 = v15;
    swift_willThrow();
    RERelease();
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t static TextureResource.Dimensions2D.dimensions(width:height:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static TextureResource.Dimensions3D.dimensions(width:height:depth:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void static TextureResource.Format.color(_:pixelFormat:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 2;
  *(a2 + 8) = a1;
  *(a2 + 16) = 1;
  *(a2 + 18) = 2;
}

char *static TextureResource.Format.normal(_:pixelFormat:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  *a3 = 4;
  *(a3 + 8) = a2;
  *(a3 + 16) = 256;
  *(a3 + 18) = v3;
  return result;
}

uint64_t static TextureResource.Format.raw(pixelFormat:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 16) = 256;
  *(a2 + 18) = 2;
  return result;
}

void static TextureResource.Contents.MipmapLevel.mip(data:bytesPerRow:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1887600;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_12;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
LABEL_12:
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    *(v8 + 48) = 0;
    *(v8 + 56) = v10;
    *(v8 + 64) = a3;
    *(v8 + 72) = 0;
    *a4 = v8;
    return;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v10 = HIDWORD(a1) - a1;
LABEL_10:
    outlined copy of Data._Representation(a1, a2);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t static TextureResource.Contents.MipmapLevel.mip(buffer:offset:size:bytesPerRow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1887600;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0x2000000000000000;
  *(v10 + 48) = a2;
  *(v10 + 56) = a3;
  *(v10 + 64) = a4;
  *(v10 + 72) = 0;
  *a5 = v10;

  return swift_unknownObjectRetain();
}

double static TextureResource.Contents.MipmapLevel.mip(slices:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

void static TextureResource.Contents.MipmapLevel.mip(data:bytesPerRow:bytesPerImage:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1887600;
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v12 = 0;
      goto LABEL_12;
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(a2);
LABEL_12:
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    *(v10 + 48) = 0;
    *(v10 + 56) = v12;
    *(v10 + 64) = a3;
    *(v10 + 72) = a4;
    *a5 = v10;
    return;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v12 = HIDWORD(a1) - a1;
LABEL_10:
    outlined copy of Data._Representation(a1, a2);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t static TextureResource.Contents.MipmapLevel.mip(unsafeBuffer:offset:size:bytesPerRow:bytesPerImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15TextureResourceC0D10FoundationE8ContentsV5SliceVGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1887600;
  *(v12 + 32) = a1;
  *(v12 + 40) = 0x2000000000000000;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;
  *(v12 + 64) = a4;
  *(v12 + 72) = a5;
  *a6 = v12;

  return swift_unknownObjectRetain();
}

id closure #2 in static TextureResource.createTextureBuilder(descriptor:format:contents:dimensions:depth:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a5 < -64)
  {
    v15 = 1;
    v16 = 1;
    v17 = 1;
    goto LABEL_17;
  }

  if (a5 > 64)
  {
    goto LABEL_4;
  }

  if (a5 < 0)
  {
    if (a5 != -64)
    {
      v17 = a3 << -a5;
      if (v17 > 1)
      {
LABEL_9:
        if (a5 < 0)
        {
          if (a5 == -64)
          {
            v15 = 1;
            v16 = 1;
            goto LABEL_17;
          }

          if (a4 << -a5 <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = a4 << -a5;
          }

          v18 = a6 << -a5;
        }

        else
        {
          if (a4 >> a5 <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = a4 >> a5;
          }

          v18 = a6 >> a5;
        }

        goto LABEL_14;
      }
    }

LABEL_8:
    v17 = 1;
    goto LABEL_9;
  }

  if (a5 != 64)
  {
    v17 = a3 >> a5;
    if (a3 >> a5 > 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v18 = a6 >> 63;
  v17 = 1;
  v16 = 1;
LABEL_14:
  if (v18 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v18;
  }

LABEL_17:
  MTLSizeMake_0(v17, v16, v15, &v28);
  v25 = v28;
  v19 = v29;
  v20 = *(a9 + 32);
  v21 = *(a9 + 40);
  MTLOriginMake(&v28);
  v22 = v29;
  v23 = v28;
  v28 = v25;
  v29 = v19;
  v26 = v23;
  v27 = v22;
  return [a1 copyFromBuffer:a7 sourceOffset:a8 sourceBytesPerRow:v20 sourceBytesPerImage:v21 sourceSize:&v28 toTexture:a2 destinationSlice:a10 destinationLevel:a5 destinationOrigin:&v26];
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed MTLBlitCommandEncoder, @guaranteed MTLTexture) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5(a2, a3);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t TextureResource.Dimensions2D.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1C68F4C10](*v0);
  return MEMORY[0x1C68F4C10](v1);
}

Swift::Int TextureResource.Dimensions2D.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

Swift::Int TextureResource.DimensionsCube.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t TextureResource.Dimensions2DArray.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1C68F4C10](*v0);
  MEMORY[0x1C68F4C10](v1);
  return MEMORY[0x1C68F4C10](v2);
}

Swift::Int TextureResource.Dimensions2DArray.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  MEMORY[0x1C68F4C10](v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureResource.Dimensions2DArray()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  MEMORY[0x1C68F4C10](v3);
  return Hasher._finalize()();
}

void TextureResource.Format.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[18];
  MEMORY[0x1C68F4C10](*v0);
  MEMORY[0x1C68F4C10](v1);
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v2);
  if (v4 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v4 & 1);
  }
}

Swift::Int TextureResource.Format.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[18];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v3);
  if (v5 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v5 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureResource.Format()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[18];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  MEMORY[0x1C68F4C10](v2);
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v3);
  if (v5 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v5 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int TextureResource.Format.ColorSpace.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

Swift::Int TextureResource.Format.NormalEncoding.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t specialized static TextureResource.Format.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v2 = a1[18];
  v3 = a2[17];
  v4 = a2[18];
  if ((a1[17] & 1) == 0)
  {
    if (a1[16] != a2[16])
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }

LABEL_9:
    if (v2 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4 == 2 || ((v4 ^ v2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (a2[17])
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t specialized static TextureResource.createTextureBuilder(descriptor:format:contents:dimensions:depth:)(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = a2[17];
  v6 = *a3;
  v59 = a4[1];
  v60 = *a4;
  v73 = 0;
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v7 = RETextureBuilderCreateWithDescriptor();
  if (!v7)
  {
    lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError();
    swift_allocError();
    *v55 = 0xD000000000000029;
    *(v55 + 8) = 0x80000001C18EACA0;
    *(v55 + 16) = 1;
    swift_willThrow();
    return v7;
  }

  RETextureBuilderSetSemantic();
  if ((v5 & 1) == 0)
  {
    RETextureBuilderSetColorGamut();
  }

  v64[3] = 0;
  v64[4] = 0;
  v64[2] = v6;

  specialized EnumeratedSequence.Iterator.next()(&aBlock);
  v8 = v68;
  if (!v68)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_52;
  }

  v9 = 0;
  v10 = 0;
  v58 = aBlock;
  v57 = v7;
  while (2)
  {
    v11 = 0;
    v62 = v8;
    v63 = *(v8 + 16);
    v12 = v8 + 40;
    while (v63 != v11)
    {
      if (v11 >= *(v8 + 16))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
      }

      v13 = *(v12 - 8);
      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      *&v74[8] = *v12;
      *&v74[24] = v15;
      *v74 = v13;
      *&v74[40] = v14;
      v16 = v74[14];
      if ((*&v74[8] & 0x2000000000000000) != 0)
      {
        outlined copy of TextureResource.CopySourceBuffer(v13, *&v74[8]);
        outlined init with copy of TextureResource.Contents.Slice(v74, &aBlock);
        goto LABEL_43;
      }

      v17 = *&v74[8] >> 62;
      if ((*&v74[8] >> 62) > 1)
      {
        if (v17 != 2)
        {
          memset(v64, 0, 14);
          outlined copy of TextureResource.CopySourceBuffer(v13, *&v74[8]);
          v44 = specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          outlined init with copy of __RenderService?(v44 + 40, &v65);
          if (!v66)
          {
            goto LABEL_64;
          }

          outlined init with take of ForceEffectBase(&v65, &aBlock);
          v45 = v70;
          v46 = v71;
          __swift_project_boxed_opaque_existential_1(&aBlock, v70);
          v22 = [(*(v46 + 1))(v45 v46)];
          if (!v22)
          {
            goto LABEL_63;
          }

          goto LABEL_41;
        }

        v23 = *(v13 + 16);
        v24 = *(v13 + 24);
        outlined copy of TextureResource.CopySourceBuffer(v13, *&v74[8]);
        outlined init with copy of TextureResource.Contents.Slice(v74, &aBlock);
        v25 = __DataStorage._bytes.getter();
        if (v25)
        {
          v26 = __DataStorage._offset.getter();
          if (__OFSUB__(v23, v26))
          {
            goto LABEL_59;
          }

          v25 += v23 - v26;
        }

        v27 = __OFSUB__(v24, v23);
        v28 = v24 - v23;
        if (v27)
        {
          goto LABEL_58;
        }

        v29 = MEMORY[0x1C68F2040]();
        if (v29 >= v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = v29;
        }

        v31 = specialized static __ServiceLocator.shared.getter();
        swift_beginAccess();
        outlined init with copy of __RenderService?(v31 + 40, &v65);
        if (!v66)
        {
          goto LABEL_70;
        }

        outlined init with take of ForceEffectBase(&v65, &aBlock);
        v32 = v70;
        v33 = v71;
        __swift_project_boxed_opaque_existential_1(&aBlock, v70);
        v34 = (*(v33 + 1))(v32, v33);
        if (!v25)
        {
          goto LABEL_69;
        }

        v35 = [v34 newBufferWithBytes:v25 length:v30 options:0];
        if (!v35)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (!v17)
        {
          v64[0] = v13;
          LODWORD(v64[1]) = *&v74[8];
          WORD2(v64[1]) = *&v74[12];
          outlined copy of TextureResource.CopySourceBuffer(v13, *&v74[8]);
          v18 = specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          outlined init with copy of __RenderService?(v18 + 40, &v65);
          if (!v66)
          {
            goto LABEL_61;
          }

          v19 = v16;
          outlined init with take of ForceEffectBase(&v65, &aBlock);
          v21 = v70;
          v20 = v71;
          __swift_project_boxed_opaque_existential_1(&aBlock, v70);
          v22 = [(*(v20 + 1))(v21 v20)];
          if (!v22)
          {
            goto LABEL_62;
          }

LABEL_41:
          v13 = v22;
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          outlined destroy of TextureResource.Contents.Slice(v74);
          goto LABEL_42;
        }

        if (v13 >> 32 < v13)
        {
          goto LABEL_57;
        }

        outlined copy of TextureResource.CopySourceBuffer(v13, *&v74[8]);
        outlined init with copy of TextureResource.Contents.Slice(v74, &aBlock);
        v36 = __DataStorage._bytes.getter();
        if (v36)
        {
          v37 = __DataStorage._offset.getter();
          if (__OFSUB__(v13, v37))
          {
            goto LABEL_60;
          }

          v36 += v13 - v37;
        }

        v38 = MEMORY[0x1C68F2040]();
        if (v38 >= (v13 >> 32) - v13)
        {
          v39 = (v13 >> 32) - v13;
        }

        else
        {
          v39 = v38;
        }

        v40 = specialized static __ServiceLocator.shared.getter();
        swift_beginAccess();
        outlined init with copy of __RenderService?(v40 + 40, &v65);
        if (!v66)
        {
          goto LABEL_67;
        }

        outlined init with take of ForceEffectBase(&v65, &aBlock);
        v41 = v70;
        v42 = v71;
        __swift_project_boxed_opaque_existential_1(&aBlock, v70);
        v43 = (*(v42 + 1))(v41, v42);
        if (!v36)
        {
          goto LABEL_66;
        }

        v35 = [v43 newBufferWithBytes:v36 length:v39 options:0];
        if (!v35)
        {
          goto LABEL_65;
        }
      }

      v13 = v35;
      outlined destroy of TextureResource.Contents.Slice(v74);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_42:
      v7 = v57;
LABEL_43:
      v47 = *&v74[16];
      if (__OFADD__(*&v74[16], *&v74[24]))
      {
        goto LABEL_55;
      }

      v48 = *&v74[16] + *&v74[24];
      if ([v13 length] < v48)
      {

        lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError();
        swift_allocError();
        *v54 = xmmword_1C1898EF0;
        *(v54 + 16) = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
        outlined destroy of TextureResource.Contents.Slice(v74);
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v10, v9);
        return v7;
      }

      v49 = swift_allocObject();
      *(v49 + 16) = v60;
      *(v49 + 24) = v59;
      *(v49 + 32) = v58;
      *(v49 + 40) = a5;
      *(v49 + 48) = v13;
      *(v49 + 56) = v47;
      v50 = *&v74[16];
      *(v49 + 64) = *v74;
      *(v49 + 80) = v50;
      *(v49 + 96) = *&v74[32];
      *(v49 + 112) = v11;
      outlined init with copy of TextureResource.Contents.Slice(v74, &aBlock);
      swift_unknownObjectRetain();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v10, v9);
      v51 = swift_allocObject();
      v10 = partial apply for closure #2 in static TextureResource.createTextureBuilder(descriptor:format:contents:dimensions:depth:);
      *(v51 + 16) = partial apply for closure #2 in static TextureResource.createTextureBuilder(descriptor:format:contents:dimensions:depth:);
      *(v51 + 24) = v49;
      v71 = partial apply for thunk for @callee_guaranteed (@guaranteed MTLBlitCommandEncoder, @guaranteed MTLTexture) -> ();
      v72 = v51;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v69 = thunk for @escaping @callee_guaranteed (@guaranteed MTLBlitCommandEncoder, @guaranteed MTLTexture) -> ();
      v70 = &block_descriptor_75;
      v52 = _Block_copy(&aBlock);

      RETextureBuilderEncodeBlitCommands();
      swift_unknownObjectRelease();
      outlined destroy of TextureResource.Contents.Slice(v74);
      _Block_release(v52);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      v12 += 48;
      ++v11;
      v9 = v49;
      v8 = v62;
      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_56;
      }
    }

    specialized EnumeratedSequence.Iterator.next()(&aBlock);
    v8 = v68;
    v58 = aBlock;
    if (v68)
    {
      continue;
    }

    break;
  }

LABEL_52:

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v10, v9);
  return v7;
}

id specialized static TextureResource.makeTextureBuilder(dimensions:depthOrSliceCount:textureType:format:contents:)(uint64_t *a1, id a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v38 = a1[1];
  v8 = *(a4 + 8);
  v36 = *(a4 + 16);
  v37 = *a4;
  v35 = *(a4 + 17);
  v9 = *(a4 + 18);
  v10 = *a5;
  v11 = [objc_allocWithZone(MEMORY[0x1E69741C0]) init];
  if (a3 > 4)
  {
    if (a3 != 5)
    {
      goto LABEL_12;
    }

    v12 = [objc_opt_self() textureCubeDescriptorWithPixelFormat:v8 size:v7 mipmapped:1];

    v13 = *(v10 + 16);
    v14 = (v10 + 32);
    while (v13)
    {
      v15 = *v14++;
      --v13;
      if (*(v15 + 16) != 6)
      {
        lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError();
        swift_allocError();
        *v16 = xmmword_1C1887610;
        *(v16 + 16) = 2;
        v11 = v12;
        goto LABEL_37;
      }
    }

    goto LABEL_4;
  }

  if (a3 == 2)
  {
    v12 = [objc_opt_self() texture2DDescriptorWithPixelFormat:v8 width:v7 height:v38 mipmapped:1];

LABEL_4:
    v11 = v12;
    goto LABEL_22;
  }

  if (a3 != 3)
  {
    do
    {
      LODWORD(v34) = 0;
      v33 = 843;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_12:
      ;
    }

    while (a3 != 7);
  }

  [v11 setPixelFormat_];
  if (a3 == 7)
  {
    [v11 setDepth_];
    v17 = *(v10 + 16);
    if (v17)
    {
      v18 = 0;
      do
      {
        v19 = *(v10 + 32 + 8 * v18++);
        v20 = (v19 + 72);
        v21 = *(v19 + 16) + 1;
        while (--v21)
        {
          v22 = *v20;
          v20 += 6;
          if (!v22)
          {
            lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError();
            swift_allocError();
            v31 = xmmword_1C1898F00;
            goto LABEL_36;
          }
        }
      }

      while (v18 != v17);
    }
  }

  else
  {
    [v11 setArrayLength_];
    v26 = *(v10 + 16);
    v27 = (v10 + 32);
    while (v26)
    {
      v28 = *v27++;
      --v26;
      if (*(v28 + 16) != a2)
      {
        lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError();
        swift_allocError();
        v31 = xmmword_1C1887610;
LABEL_36:
        *v30 = v31;
        *(v30 + 16) = 2;
        goto LABEL_37;
      }
    }
  }

  [v11 setTextureType_];
  [v11 setWidth_];
  [v11 setHeight_];
LABEL_22:
  [v11 setUsage_];
  [v11 setStorageMode_];
  if (v9)
  {
    v23 = 17040133;
  }

  else
  {
    v23 = 84148994;
  }

  [v11 setSwizzle_];
  v24 = *(v10 + 16);
  [v11 setMipmapLevelCount_];
  if (v24 && [v11 mipmapLevelCount] >= v24)
  {
    v40[0] = v37;
    v41 = v8;
    v42 = v36;
    v43 = v35;
    v44 = v9;
    v45 = v10;
    if (a3 == 7)
    {
      v29 = a2;
    }

    else
    {
      v29 = 0;
    }

    v39[0] = v7;
    v39[1] = v38;
    a2 = specialized static TextureResource.createTextureBuilder(descriptor:format:contents:dimensions:depth:)(v11, v40, &v45, v39, v29);
  }

  else
  {
    lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 2;
LABEL_37:
    swift_willThrow();
  }

  return a2;
}

uint64_t specialized static TextureResource.createAssetAsync(_:)(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](specialized static TextureResource.createAssetAsync(_:), v3, v2);
}

uint64_t specialized static TextureResource.createAssetAsync(_:)(__n128 a1)
{
  v2 = v1[3];
  v3 = static MainActor.shared.getter();
  v1[8] = v3;
  v4 = swift_task_alloc();
  v1[9] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v1;
  v5[1] = specialized static TextureResource.createAssetAsync(_:);
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E6B70];

  return MEMORY[0x1EEE6DE38](v1 + 2, v3, v6, 0xD000000000000014, 0x80000001C18EAC00, partial apply for closure #1 in static TextureResource.createAssetAsync(_:), v4, v7);
}

uint64_t specialized static TextureResource.createAssetAsync(_:)()
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
    v5 = specialized static TextureResource.createAssetAsync(_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t lazy protocol witness table accessor for type TextureResource.Dimensions2D and conformance TextureResource.Dimensions2D()
{
  result = lazy protocol witness table cache variable for type TextureResource.Dimensions2D and conformance TextureResource.Dimensions2D;
  if (!lazy protocol witness table cache variable for type TextureResource.Dimensions2D and conformance TextureResource.Dimensions2D)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.Dimensions2D, &type metadata for TextureResource.Dimensions2D, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Dimensions2D and conformance TextureResource.Dimensions2D);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Dimensions2DArray and conformance TextureResource.Dimensions2DArray()
{
  result = lazy protocol witness table cache variable for type TextureResource.Dimensions2DArray and conformance TextureResource.Dimensions2DArray;
  if (!lazy protocol witness table cache variable for type TextureResource.Dimensions2DArray and conformance TextureResource.Dimensions2DArray)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.Dimensions2DArray, &type metadata for TextureResource.Dimensions2DArray, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Dimensions2DArray and conformance TextureResource.Dimensions2DArray);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.DimensionsCube and conformance TextureResource.DimensionsCube()
{
  result = lazy protocol witness table cache variable for type TextureResource.DimensionsCube and conformance TextureResource.DimensionsCube;
  if (!lazy protocol witness table cache variable for type TextureResource.DimensionsCube and conformance TextureResource.DimensionsCube)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.DimensionsCube, &type metadata for TextureResource.DimensionsCube, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.DimensionsCube and conformance TextureResource.DimensionsCube);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Dimensions3D and conformance TextureResource.Dimensions3D()
{
  result = lazy protocol witness table cache variable for type TextureResource.Dimensions3D and conformance TextureResource.Dimensions3D;
  if (!lazy protocol witness table cache variable for type TextureResource.Dimensions3D and conformance TextureResource.Dimensions3D)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.Dimensions3D, &type metadata for TextureResource.Dimensions3D, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Dimensions3D and conformance TextureResource.Dimensions3D);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Format and conformance TextureResource.Format()
{
  result = lazy protocol witness table cache variable for type TextureResource.Format and conformance TextureResource.Format;
  if (!lazy protocol witness table cache variable for type TextureResource.Format and conformance TextureResource.Format)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.Format, &type metadata for TextureResource.Format, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Format and conformance TextureResource.Format);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Format.ColorSpace and conformance TextureResource.Format.ColorSpace()
{
  result = lazy protocol witness table cache variable for type TextureResource.Format.ColorSpace and conformance TextureResource.Format.ColorSpace;
  if (!lazy protocol witness table cache variable for type TextureResource.Format.ColorSpace and conformance TextureResource.Format.ColorSpace)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.Format.ColorSpace, &type metadata for TextureResource.Format.ColorSpace, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Format.ColorSpace and conformance TextureResource.Format.ColorSpace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Format.NormalEncoding and conformance TextureResource.Format.NormalEncoding()
{
  result = lazy protocol witness table cache variable for type TextureResource.Format.NormalEncoding and conformance TextureResource.Format.NormalEncoding;
  if (!lazy protocol witness table cache variable for type TextureResource.Format.NormalEncoding and conformance TextureResource.Format.NormalEncoding)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.Format.NormalEncoding, &type metadata for TextureResource.Format.NormalEncoding, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Format.NormalEncoding and conformance TextureResource.Format.NormalEncoding);
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.Format(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 19))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 18);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 18);
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

uint64_t storeEnumTagSinglePayload for TextureResource.Format(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 18) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.Contents.Slice(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 48))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TextureResource.Contents.Slice(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.CopySourceBuffer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TextureResource.CopySourceBuffer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static TextureResource.createAssetAsync(_:)(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);

  return closure #1 in closure #1 in static TextureResource.createAssetAsync(_:)(a1, a2);
}

double block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.CreateError and conformance TextureResource.CreateError()
{
  result = lazy protocol witness table cache variable for type TextureResource.CreateError and conformance TextureResource.CreateError;
  if (!lazy protocol witness table cache variable for type TextureResource.CreateError and conformance TextureResource.CreateError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextureResource.CreateError, &unk_1F4113700, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.CreateError and conformance TextureResource.CreateError);
  }

  return result;
}

void outlined copy of TextureResource.CopySourceBuffer(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    outlined copy of Data._Representation(a1, a2);
  }
}

uint64_t outlined consume of TextureResource.CopySourceBuffer(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
    return outlined consume of Data._Representation(result, a2);
  }
}

uint64_t MTLSizeMake_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void MTLOriginMake(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit15TextureResourceC0A10FoundationE11CreateError33_6C4A7680AB16ECE0EF01D181EFD6A911LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

RealityFoundation::ChannelAudioComponent __swiftcall ChannelAudioComponent.init(gain:)(Swift::Double gain)
{
  *v1 = gain;
  *(v1 + 8) = gain;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  result.gain = gain;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ChannelAudioComponent.CodingKeys()
{
  v1 = 1852399975;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x6E6964614673695FLL;
  }

  if (*v0)
  {
    v1 = 0x477465677261745FLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ChannelAudioComponent.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ChannelAudioComponent.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ChannelAudioComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ChannelAudioComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void (*Entity.channelAudio.modify(uint64_t *a1))(uint64_t **a1)
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
  *(v3 + 32) = v1;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation012ChannelAudioD0V_Tt0B5(v3);
  return Entity.channelAudio.modify;
}

void Entity.channelAudio.modify(uint64_t **a1)
{
  v1 = *a1;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012ChannelAudioD0V_TtB5Tf4ndn_n(**a1, v1[1], v1[2], *(v1 + 24), (*a1)[4]);

  free(v1);
}

double static ChannelAudioComponent.__fromCore(_:)@<D0>(uint64_t a2@<X8>)
{
  REChannelAudioComponentGetDecibelGain();
  result = v3;
  *a2 = result;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t ChannelAudioComponent.__toCore(_:)(void *a1)
{
  v2 = *(v1 + 24);
  REChannelAudioComponentSetDecibelGain();
  if (v2 == 1)
  {
    REChannelAudioComponentFadeComponentDecibelGain();
  }

  return RENetworkMarkComponentDirty();
}

double protocol witness for static Component.__fromCore(_:) in conformance ChannelAudioComponent@<D0>(uint64_t a2@<X8>)
{
  REChannelAudioComponentGetDecibelGain();
  result = v3;
  *a2 = result;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance ChannelAudioComponent(void *a1)
{
  v2 = *(v1 + 24);
  REChannelAudioComponentSetDecibelGain();
  if (v2 == 1)
  {
    REChannelAudioComponentFadeComponentDecibelGain();
  }

  return RENetworkMarkComponentDirty();
}

uint64_t ChannelAudioComponent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation21ChannelAudioComponentV10CodingKeys33_12D7BA63F997EEE28B76C705144A2E90LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation21ChannelAudioComponentV10CodingKeys33_12D7BA63F997EEE28B76C705144A2E90LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void ChannelAudioComponent.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1C68F4C50](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1C68F4C50](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1C68F4C50](*&v6);
  Hasher._combine(_:)(v4);
}

Swift::Int ChannelAudioComponent.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x1C68F4C50](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1C68F4C50](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1C68F4C50](*&v7);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t ChannelAudioComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation21ChannelAudioComponentV10CodingKeys33_12D7BA63F997EEE28B76C705144A2E90LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation21ChannelAudioComponentV10CodingKeys33_12D7BA63F997EEE28B76C705144A2E90LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v17[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v17[13] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    v17[12] = 3;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ChannelAudioComponent()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x1C68F4C50](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1C68F4C50](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1C68F4C50](*&v7);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

Swift::Void __swiftcall ChannelAudioComponent._proto_fadeComponentGain(to:duration:)(Swift::Double to, Swift::Double duration)
{
  *v2 = to;
  *(v2 + 8) = to;
  *(v2 + 16) = duration;
  *(v2 + 24) = 1;
}

uint64_t specialized static ChannelAudioComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return (*(a2 + 24) ^ *(a1 + 24) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChannelAudioComponent.CodingKeys, &unk_1F4113888, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChannelAudioComponent.CodingKeys, &unk_1F4113888, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChannelAudioComponent.CodingKeys, &unk_1F4113888, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChannelAudioComponent.CodingKeys, &unk_1F4113888, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ChannelAudioComponent.CodingKeys and conformance ChannelAudioComponent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ChannelAudioComponent and conformance ChannelAudioComponent()
{
  result = lazy protocol witness table cache variable for type ChannelAudioComponent and conformance ChannelAudioComponent;
  if (!lazy protocol witness table cache variable for type ChannelAudioComponent and conformance ChannelAudioComponent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChannelAudioComponent, &type metadata for ChannelAudioComponent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ChannelAudioComponent and conformance ChannelAudioComponent);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChannelAudioComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ChannelAudioComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized ChannelAudioComponent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399975 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x477465677261745FLL && a2 == 0xEB000000006E6961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C18E6C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6964614673695FLL && a2 == 0xED00006E69614767)
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

void static ActionEntityResolution.sourceEntity.getter(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t ActionEntityResolution.resolve(from:)(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 8);
    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v5 = SceneNullable;
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

      v7 = Scene.findEntity(named:)(v2, v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = *v1;

    v7 = Entity.subscript.getter(&v9);
  }

  return v7;
}

uint64_t ActionEntityResolution.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v5 == 1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      v9 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v7 = v10;
      v8 = 1;
      goto LABEL_11;
    }

    if (!v5)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      static InternalBindPath.entityPathFromPath(_:)(&v11);

      v7 = 0;
      v8 = 0;
      v9 = v11;
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(v12);
      *a2 = v9;
      *(a2 + 8) = v7;
      *(a2 + 16) = v8;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    lazy protocol witness table accessor for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ActionEntityResolution.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  if (v4)
  {
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (!v2)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    }
  }

  else
  {
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (!v2)
    {
      v6[0] = v3;
      v6[1] = 0;
      v7 = 2;
      specialized static InternalBindPath.pathFromTarget(_:_:)(v6, 1);
      __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t specialized static ActionEntityResolution.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      if (v3 == v6 && v2 == v5)
      {
        v9 = 1;
        outlined copy of ActionEntityResolution(*a1, v2, 1);
        outlined copy of ActionEntityResolution(v3, v2, 1);
        outlined consume of ActionEntityResolution(v3, v2, 1);
        v10 = v3;
        v11 = v2;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of ActionEntityResolution(v6, v5, 1);
        outlined copy of ActionEntityResolution(v3, v2, 1);
        outlined consume of ActionEntityResolution(v3, v2, 1);
        v10 = v6;
        v11 = v5;
      }

      outlined consume of ActionEntityResolution(v10, v11, 1);
      return v9 & 1;
    }

LABEL_9:
    outlined copy of ActionEntityResolution(*a2, *(a2 + 8), v7);
    outlined copy of ActionEntityResolution(v3, v2, v4);
    outlined consume of ActionEntityResolution(v3, v2, v4);
    outlined consume of ActionEntityResolution(v6, v5, v7);
    v9 = 0;
    return v9 & 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_9;
  }

  v17 = *a1;
  v18 = 0;
  v19 = 2;
  outlined copy of ActionEntityResolution(v6, v5, 0);
  outlined copy of ActionEntityResolution(v3, v2, 0);
  v9 = 1;
  v12 = specialized static InternalBindPath.pathFromTarget(_:_:)(&v17, 1);
  v14 = v13;
  v17 = v6;
  v18 = 0;
  v19 = 2;
  if (v12 != specialized static InternalBindPath.pathFromTarget(_:_:)(&v17, 1) || v14 != v15)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined consume of ActionEntityResolution(v3, v2, 0);
  outlined consume of ActionEntityResolution(v6, v5, 0);

  return v9 & 1;
}

unint64_t lazy protocol witness table accessor for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError()
{
  result = lazy protocol witness table cache variable for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError;
  if (!lazy protocol witness table cache variable for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionEntityResolution.CodingError, &type metadata for ActionEntityResolution.CodingError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError;
  if (!lazy protocol witness table cache variable for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionEntityResolution.CodingError, &type metadata for ActionEntityResolution.CodingError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEntityResolution.CodingError and conformance ActionEntityResolution.CodingError);
  }

  return result;
}

Swift::Int CameraFieldOfViewOrientation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

void __swiftcall OrthographicCameraComponent.init()(RealityFoundation::OrthographicCameraComponent *__return_ptr retstr)
{
  *&retstr->near = 0x447A00003C23D70ALL;
  retstr->scale = 1.0;
  retstr->scaleDirection = RealityFoundation_CameraFieldOfViewOrientation_vertical;
}

uint64_t static OrthographicCameraComponent.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  REOrthographicCameraComponentGetNear();
  v4 = v3;
  REOrthographicCameraComponentGetFar();
  v6 = v5;
  REOrthographicCameraComponentGetScale();
  v8 = v7;
  result = REOrthographicCameraComponentGetScaleDirection();
  *a2 = v4;
  *(a2 + 4) = v6;
  *(a2 + 8) = v8;
  *(a2 + 12) = result == 0;
  return result;
}

uint64_t OrthographicCameraComponent.__toCore(_:)(void *a1)
{
  REOrthographicCameraComponentSetNear();
  REOrthographicCameraComponentSetFar();
  REOrthographicCameraComponentSetScale();
  REOrthographicCameraComponentSetScaleDirection();

  return RENetworkMarkComponentDirty();
}

uint64_t protocol witness for Component.__toCore(_:) in conformance OrthographicCameraComponent(void *a1)
{
  REOrthographicCameraComponentSetNear();
  REOrthographicCameraComponentSetFar();
  REOrthographicCameraComponentSetScale();
  REOrthographicCameraComponentSetScaleDirection();

  return RENetworkMarkComponentDirty();
}

uint64_t specialized static OrthographicCameraComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 12) ^ *(a1 + 12) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type CameraFieldOfViewOrientation and conformance CameraFieldOfViewOrientation()
{
  result = lazy protocol witness table cache variable for type CameraFieldOfViewOrientation and conformance CameraFieldOfViewOrientation;
  if (!lazy protocol witness table cache variable for type CameraFieldOfViewOrientation and conformance CameraFieldOfViewOrientation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CameraFieldOfViewOrientation, &type metadata for CameraFieldOfViewOrientation, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CameraFieldOfViewOrientation and conformance CameraFieldOfViewOrientation);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrthographicCameraComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 13))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OrthographicCameraComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t HasPhysicsBody.addForce(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  if (a1)
  {

    SceneNullable = REEntityGetSceneNullable();
    if (!SceneNullable)
    {
      goto LABEL_8;
    }

    v4 = SceneNullable;
    v5 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v5)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v4);
    }

    v6 = Scene.physicsOrigin.getter();

    if (!v6)
    {
LABEL_8:
      v6 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
    }
  }

  else
  {
    v6 = 0;
  }

  *v7.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v6);
  v14 = v8;
  v15 = v7;
  v13 = v9;
  HasPhysicsBody.physicsBody.getter(&v30);
  v40[8] = v38;
  v41[0] = v39[0];
  *(v41 + 12) = *(v39 + 12);
  v40[4] = v34;
  v40[5] = v35;
  v40[6] = v36;
  v40[7] = v37;
  v40[0] = v30;
  v40[1] = v31;
  v40[2] = v32;
  v40[3] = v33;
  if (_s10RealityKit20PhysicsBodyComponentVSgWOg(v40) == 1)
  {
    v18[8] = v38;
    v19[0] = v39[0];
    *(v19 + 12) = *(v39 + 12);
    v18[4] = v34;
    v18[5] = v35;
    v18[6] = v36;
    v18[7] = v37;
    v18[0] = v30;
    v18[1] = v31;
    v18[2] = v32;
    v18[3] = v33;
    v28 = v38;
    v29[0] = v39[0];
    *(v29 + 12) = *(v39 + 12);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    outlined init with copy of PhysicsBodyComponent?(v18, v17);
    HasPhysicsBody.physicsBody.setter(&v20);

    v28 = v38;
    v29[0] = v39[0];
    *(v29 + 12) = *(v39 + 12);
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    return outlined destroy of PhysicsBodyComponent?(&v20);
  }

  else
  {
    *v11.f32 = simd_float4x4.transform(force:)(a2, v15, v14, v13);
    v12 = vaddq_f32(v11, v36);
    v12.i32[3] = 0;
    v36 = v12;
    v28 = v38;
    v29[0] = v39[0];
    *(v29 + 12) = *(v39 + 12);
    v24 = v34;
    v25 = v35;
    v26 = v12;
    v27 = v37;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    HasPhysicsBody.physicsBody.setter(&v20);
  }
}

uint64_t outlined init with copy of PhysicsBodyComponent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit20PhysicsBodyComponentVSgMd, &_s10RealityKit20PhysicsBodyComponentVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HasPhysicsBody.addForce(_:at:relativeTo:)(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  HasPhysicsBody.physicsBody.getter(v54);
  result = _s10RealityKit20PhysicsBodyComponentVSgWOg(v54);
  if (result != 1)
  {
    v50 = v54[2];
    v51 = v55;
    v52 = v56;
    v53 = v57;
    v48 = v54[0];
    v49 = v54[1];
    v46 = v60;
    v47[0] = v61[0];
    *(v47 + 12) = *(v61 + 12);
    if (a1)
    {

      SceneNullable = REEntityGetSceneNullable();
      if (!SceneNullable)
      {
        goto LABEL_9;
      }

      v8 = SceneNullable;
      v9 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v9)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        Scene.init(coreScene:)(v8);
      }

      v10 = Scene.physicsOrigin.getter();

      if (!v10)
      {
LABEL_9:
        v10 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
      }
    }

    else
    {
      v10 = 0;
    }

    v29 = v58;
    v30 = v59;
    v27 = v55;
    *v11.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v10);
    v25 = v12;
    v26 = v11;
    v23 = v14;
    v24 = v13;
    *v15.i8 = simd_float4x4.transform(force:)(a3, v11, v12, v13);
    v32 = v15;
    HasTransform.convert(position:to:)(v10, a2, &protocol witness table for Entity, v27);
    v28 = v16;
    *v17.i64 = simd_float4x4.transform(position:)(a4, v26, v25, v24, v23);
    v18 = vsubq_f32(v17, v28);
    v19 = vaddq_f32(v29, v32);
    v19.i32[3] = 0;
    v20 = v19;
    v35 = v19;
    v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vnegq_f32(v18)), v32, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
    v19.i32[0] = vextq_s8(v21, v21, 8uLL).u32[0];
    v19.i32[1] = v21.i32[0];
    *&v22 = vadd_f32(*&v30, *v19.f32);
    *(&v22 + 2) = *(&v30 + 2) + *&v21.i32[1];
    HIDWORD(v22) = 0;
    v33 = v22;
    v38[2] = v50;
    v38[3] = v51;
    v38[4] = v52;
    v38[5] = v53;
    v38[0] = v48;
    v38[1] = v49;
    v38[6] = v20;
    v38[7] = v22;
    *(v39 + 12) = *(v47 + 12);
    v38[8] = v46;
    v39[0] = v47[0];
    v40 = v20;
    v41 = v22;
    v39[6] = v52;
    v39[7] = v53;
    v39[2] = v48;
    v39[3] = v49;
    v39[4] = v50;
    v39[5] = v51;
    v42 = v46;
    v43[0] = v47[0];
    *(v43 + 12) = *(v39 + 12);
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
    v36[8] = v46;
    v37[0] = v43[0];
    *(v37 + 12) = *(v39 + 12);
    v36[4] = v52;
    v36[5] = v53;
    v36[6] = v40;
    v36[7] = v41;
    v36[0] = v48;
    v36[1] = v49;
    v36[2] = v50;
    v36[3] = v51;
    outlined init with copy of PhysicsBodyComponent(v38, v44);
    HasPhysicsBody.physicsBody.setter(v36);

    v44[2] = v50;
    v44[3] = v51;
    v44[4] = v52;
    v44[5] = v53;
    v44[0] = v48;
    v44[1] = v49;
    v44[6] = v35;
    v44[7] = v33;
    *(v45 + 12) = *(v47 + 12);
    v44[8] = v46;
    v45[0] = v47[0];
    return outlined destroy of PhysicsBodyComponent(v44);
  }

  return result;
}