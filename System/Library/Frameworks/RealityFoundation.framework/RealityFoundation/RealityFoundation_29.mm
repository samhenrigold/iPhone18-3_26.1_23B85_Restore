uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a4;
    v6 = a3;
    v8 = a2;
    v10 = a1;
    v11 = *v7;
    v12 = *v7 >> 62;
    v18 = a5;
    if (!v12)
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v14 = v8 - v10;
  if (__OFSUB__(v8, v10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v12)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (v17)
  {
    goto LABEL_18;
  }

  v9(result, 1);

  return v18(v10, v8, 1, v6);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3;
    v5 = a2;
    v7 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v15 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v5, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 - v5;
  if (__OFSUB__(0, v5 - v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v15(v7, v5, 0);
}

uint64_t __RKEntitySwapEntityAction.__allocating_init(targetEntity:newEntity:buildOutAction:buildInAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 168) = 0u;
  *(v8 + 112) = a2;
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntitySwapEntityAction.init(targetEntity:newEntity:buildOutAction:buildInAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 112) = a2;
  *(v4 + 120) = a3;
  *(v4 + 128) = a4;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntitySwapEntityAction.perform(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v23 = StaticString.description.getter();
  v24 = v5;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v7 = v23;
  v6 = v24;
  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1 && (swift_beginAccess(), *(v1 + 105) == 1) || !RESceneGetECSManagerNullable())
  {

    return 0;
  }

  else
  {
    v8 = *(v1 + 96);
    v9 = *(v1 + 104);
    *(v1 + 96) = 1;
    *(v1 + 104) = 1;
    v23 = v8;
    LOBYTE(v24) = v9;
    __RKEntityAction.state.didset(&v23);
    v10 = *(v1 + 120);
    v11 = swift_allocObject();
    v11[2] = v2;
    v11[3] = v4;
    v11[4] = v3;
    swift_beginAccess();
    v12 = *(v10 + 72);
    v13 = *(v10 + 80);
    *(v10 + 72) = partial apply for closure #1 in __RKEntitySwapEntityAction.perform(with:);
    *(v10 + 80) = v11;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v12, v13);
    v23 = v4;
    v24 = v3;
    __RKEntityHideAction.perform(with:)(&v23);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = *(v2 + 32);
    v16 = *(v2 + 40);
    *(v2 + 32) = partial apply for closure #2 in __RKEntitySwapEntityAction.perform(with:);
    *(v2 + 40) = v14;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v15, v16);

    if (*(v2 + 24))
    {
      REEngineGetCurrentTime();
    }

    else
    {
      v17 = CACurrentMediaTime();
    }

    *(v2 + 176) = v17 + *(v10 + 144) + *(*(v2 + 128) + 144);
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    v19 = swift_allocObject();
    swift_weakInit();
    _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5(v21, partial apply for closure #3 in __RKEntitySwapEntityAction.perform(with:), v19, &v23);

    outlined destroy of BodyTrackingComponent?(v21, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v23, v2 + 136);
    swift_endAccess();
    v23 = v7;
    v24 = v6;
    v20 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v20, &v23);

    return 1;
  }
}

uint64_t closure #2 in __RKEntitySwapEntityAction.perform(with:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v2 + 136, &v4);
    if (*(&v5 + 1))
    {
      outlined init with copy of __REAssetService(&v4, v3);
      outlined destroy of BodyTrackingComponent?(&v4, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v3, v3[3]);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v3);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v4, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v4, v2 + 136);
    swift_endAccess();
  }

  return result;
}

uint64_t closure #3 in __RKEntitySwapEntityAction.perform(with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (*(result + 24))
    {

      REEngineGetCurrentTime();
    }

    else
    {

      v4 = CACurrentMediaTime();
    }

    if (*(v3 + 176) <= v4)
    {
      swift_beginAccess();
      v5 = *(v3 + 96);
      v6 = *(v3 + 104);
      *(v3 + 96) = 2;
      *(v3 + 104) = 1;
      v7 = v5;
      v8 = v6;
      __RKEntityAction.state.didset(&v7);
    }
  }

  return result;
}

uint64_t __RKEntitySwapEntityAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  v6 = type metadata accessor for __RKEntitySwapEntityAction();
  v7 = swift_allocObject();
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 112) = v3;
  *(v7 + 120) = v4;
  *(v7 + 128) = v5;

  result = __RKEntityAction.init(targetEntity:)(v8);
  a1[3] = v6;
  *a1 = result;
  return result;
}

uint64_t __RKEntitySwapEntityAction.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[2];
  if (v5 && *(a1 + 16) == *(v5 + 16))
  {
    v5 = a2;
  }

  v6 = v2[14];
  v7 = v2[15];
  v8 = v2[16];
  type metadata accessor for __RKEntitySwapEntityAction();
  v9 = swift_allocObject();
  *(v9 + 136) = 0u;
  *(v9 + 152) = 0u;
  *(v9 + 168) = 0u;
  *(v9 + 112) = v6;
  *(v9 + 120) = v7;
  *(v9 + 128) = v8;

  return __RKEntityAction.init(targetEntity:)(v5);
}

uint64_t __RKEntitySwapEntityAction.__ivar_destroyer()
{

  return outlined destroy of BodyTrackingComponent?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
}

uint64_t __RKEntitySwapEntityAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntitySwapEntityAction.__deallocating_deinit()
{
  __RKEntitySwapEntityAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    __CocoaSet.count.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t Entity.availableAnimations.getter(__n128 a1)
{
  v3 = *(v1 + 16);
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  TransformQueryResultAnimationAsset = *(swift_unownedRetainStrong() + 24);

  ServiceLocator = REEngineGetServiceLocator();
  v6 = MEMORY[0x1C68FE1F0](ServiceLocator);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v72 = MEMORY[0x1E69E7CC0];
  REAnimationLibraryComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    goto LABEL_50;
  }

  if (!REAnimationLibraryComponentGetAnimationLibraryAsset())
  {
    goto LABEL_49;
  }

  v8 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset();
  TransformQueryResultAnimationAsset = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v7 = v8;
    EntryCount = REAnimationLibraryDefinitionGetEntryCount();
    v10 = EntryCount;
    if (TransformQueryResultAnimationAsset >> 62 && (v56 = __CocoaSet.count.getter(), v20 = __OFADD__(v56, v10), EntryCount = v56 + v10, v20))
    {
      __break(1u);
    }

    else
    {
      v3 = &v72;
      specialized Array.reserveCapacity(_:)(EntryCount);
      if ((v10 & 0x8000000000000000) == 0)
      {
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            EntryAsset = REAnimationLibraryDefinitionGetEntryAsset();
            if (EntryAsset)
            {
              v15 = EntryAsset;
              type metadata accessor for AnimationResource();
              v2 = swift_allocObject();
              v2[2] = v15;
              if (REAssetHandleAssetType() == 11)
              {
                REAnimationSceneAssetGetRootTimeline();
              }

              Name = REAnimationAssetGetName();
              if (Name)
              {
                Name = String.init(cString:)();
              }

              else
              {
                v12 = 0xE000000000000000;
              }

              v2[3] = Name;
              v2[4] = v12;
              RERetain();
              v13 = REAssetSetSwiftObject();
              MEMORY[0x1C68F3650](v13);
              if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }
          }
        }

        RERelease();
        TransformQueryResultAnimationAsset = v72;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_79;
  }

LABEL_20:
  v3 = (TransformQueryResultAnimationAsset >> 62);
  if (TransformQueryResultAnimationAsset >> 62)
  {
    goto LABEL_73;
  }

  if (*((TransformQueryResultAnimationAsset & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_49;
  }

  while (2)
  {
    QueryAllTransformAnimations = REAnimationLibraryComponentCreateQueryAllTransformAnimations();
    if (QueryAllTransformAnimations)
    {
      v7 = QueryAllTransformAnimations;
      TransformQueryResultCount = REAnimationLibraryComponentGetTransformQueryResultCount();
      if (v3)
      {
        v19 = __CocoaSet.count.getter();
      }

      else
      {
        v19 = *((TransformQueryResultAnimationAsset & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = __OFADD__(v19, TransformQueryResultCount);
      v21 = v19 + TransformQueryResultCount;
      if (!v20)
      {
        v3 = &v72;
        specialized Array.reserveCapacity(_:)(v21);
        if ((TransformQueryResultCount & 0x8000000000000000) == 0)
        {
          if (TransformQueryResultCount)
          {
            for (j = 0; j != TransformQueryResultCount; ++j)
            {
              TransformQueryResultAnimationAsset = REAnimationLibraryComponentGetTransformQueryResultAnimationAsset();
              ResultAnimationName = REAnimationLibraryComponentCopyTransformQueryResultAnimationName();
              v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v25;

              type metadata accessor for AnimationResource();
              v2 = swift_allocObject();
              v2[2] = TransformQueryResultAnimationAsset;
              v2[3] = v24;
              v2[4] = v26;
              RERetain();
              v27 = REAssetSetSwiftObject();
              MEMORY[0x1C68F3650](v27);
              if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                TransformQueryResultAnimationAsset = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v3 = &v72;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }
          }

          RERelease();
          goto LABEL_34;
        }

LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

LABEL_34:
    QueryAllSkeletalAnimations = REAnimationLibraryComponentCreateQueryAllSkeletalAnimations();
    if (!QueryAllSkeletalAnimations)
    {
      break;
    }

    v7 = QueryAllSkeletalAnimations;
    TransformQueryResultAnimationAsset = REAnimationLibraryComponentGetSkeletalQueryResultCount();
    if (!(v72 >> 62))
    {
      v29 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v20 = __OFADD__(v29, TransformQueryResultAnimationAsset);
      v30 = v29 + TransformQueryResultAnimationAsset;
      if (!v20)
      {
        goto LABEL_37;
      }

LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

LABEL_81:
    v57 = __CocoaSet.count.getter();
    v20 = __OFADD__(v57, TransformQueryResultAnimationAsset);
    v30 = v57 + TransformQueryResultAnimationAsset;
    if (v20)
    {
      goto LABEL_83;
    }

LABEL_37:
    v3 = &v72;
    v30 = specialized Array.reserveCapacity(_:)(v30);
    if ((TransformQueryResultAnimationAsset & 0x8000000000000000) == 0)
    {
      if (TransformQueryResultAnimationAsset)
      {
        v31 = 0;
        for (k = TransformQueryResultAnimationAsset; k != v31; TransformQueryResultAnimationAsset = k)
        {
          SkeletalQueryResultAnimationCount = REAnimationLibraryComponentGetSkeletalQueryResultAnimationCount();
          if (SkeletalQueryResultAnimationCount < 0)
          {
            goto LABEL_70;
          }

          v2 = SkeletalQueryResultAnimationCount;
          if (SkeletalQueryResultAnimationCount)
          {
            v33 = 0;
            do
            {
              SkeletalQueryResultAnimationClipAsset = REAnimationLibraryComponentGetSkeletalQueryResultAnimationClipAsset();
              v35 = REAnimationLibraryComponentCopySkeletalQueryResultAnimationName();
              v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v38 = v37;

              type metadata accessor for AnimationResource();
              v39 = swift_allocObject();
              v39[2] = SkeletalQueryResultAnimationClipAsset;
              v39[3] = v36;
              v39[4] = v38;
              RERetain();
              v40 = REAssetSetSwiftObject();
              MEMORY[0x1C68F3650](v40);
              if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v33 = (v33 + 1);
              v3 = &v72;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            while (v2 != v33);
          }

          ++v31;
        }
      }

      RERelease();
      break;
    }

LABEL_84:
    __break(1u);
    while (2)
    {
      v41 = v30;
      if (!v30)
      {
        goto LABEL_86;
      }

LABEL_52:
      v42 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](v42, v7);
          goto LABEL_56;
        }

        if (v42 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

LABEL_56:
        AnimationResource.definition.getter(v69);

        v43 = v70;
        v44 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v45 = (*(v44 + 8))(v43, v44);
        v47 = v46;
        REAnimationLibraryComponentDefaultGlobalSceneName();
        if (v45 == String.init(cString:)() && v47 == v48)
        {
          goto LABEL_67;
        }

        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v50)
        {
          goto LABEL_68;
        }

        v51 = v70;
        v52 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v53 = (*(v52 + 8))(v51, v52);
        v3 = v54;
        REAnimationLibraryComponentDefaultLocalSubtreeSceneName();
        if (v53 == String.init(cString:)() && v3 == v55)
        {
LABEL_67:

LABEL_68:
          __swift_destroy_boxed_opaque_existential_1(v69);
          return v72;
        }

        TransformQueryResultAnimationAsset = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (TransformQueryResultAnimationAsset)
        {
          goto LABEL_68;
        }

        ++v42;
        __swift_destroy_boxed_opaque_existential_1(v69);
        if (v41 == v42)
        {
          goto LABEL_86;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      v30 = __CocoaSet.count.getter();
      if ((v30 & 0x8000000000000000) == 0)
      {
        continue;
      }

      break;
    }

    __break(1u);
LABEL_73:
    if (!__CocoaSet.count.getter())
    {
      continue;
    }

    break;
  }

LABEL_49:
  v7 = v72;
LABEL_50:
  v2 = (v7 >> 62);
  if (v7 >> 62)
  {
    goto LABEL_71;
  }

  v41 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v41)
  {
    goto LABEL_52;
  }

LABEL_86:
  DefaultAnimation = REAnimationLibraryComponentCreateDefaultAnimation();
  if (!DefaultAnimation)
  {
    return v72;
  }

  v59 = DefaultAnimation;
  type metadata accessor for AnimationResource();
  v60 = swift_allocObject();
  v60[2] = v59;
  if (REAssetHandleAssetType() == 11)
  {
    REAnimationSceneAssetGetRootTimeline();
  }

  v61 = REAnimationAssetGetName();
  if (v61)
  {
    v61 = String.init(cString:)();
  }

  else
  {
    v62 = 0xE000000000000000;
  }

  v60[3] = v61;
  v60[4] = v62;
  RERetain();
  REAssetSetSwiftObject();
  v63 = v60[2];
  result = REAssetHandleAssetType();
  if (result == 5 || result == 11 && (result = REAnimationSceneAssetGetRootTimeline(), (v63 = result) != 0))
  {
    v65 = swift_allocObject();
    v65[2] = v63;
    if (REAssetHandleAssetType() == 11)
    {
      REAnimationSceneAssetGetRootTimeline();
    }

    v66 = REAnimationAssetGetName();
    if (v66)
    {
      v66 = String.init(cString:)();
    }

    else
    {
      v67 = 0xE000000000000000;
    }

    v65[3] = v66;
    v65[4] = v67;
    RERetain();
    REAssetSetSwiftObject();
    if (!v2 || (result = __CocoaSet.count.getter(), (result & 0x8000000000000000) == 0))
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v65);

      return v72;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Entity.LoadStatistics.Observer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Entity.LoadStatistics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_start;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Entity.LoadStatistics(uint64_t a1)
{
  result = type metadata singleton initialization cache for Entity.LoadStatistics;
  if (!type metadata singleton initialization cache for Entity.LoadStatistics)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Entity.LoadStatistics(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Entity.LoadStatistics.AssetType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Entity.LoadStatistics.AssetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Entity.LoadStatistics.AssetType(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for Entity.LoadStatistics.AssetType(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t one-time initialization function for entityLoadLog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Entity.LoadStatistics.entityLoadLog);
  __swift_project_value_buffer(v0, static Entity.LoadStatistics.entityLoadLog);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for assetLoadLog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Entity.LoadStatistics.assetLoadLog);
  __swift_project_value_buffer(v0, static Entity.LoadStatistics.assetLoadLog);
  return Logger.init(subsystem:category:)();
}

Swift::Void __swiftcall Entity.LoadStatistics.log()()
{
  v1 = v0;
  v64 = *v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = *(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type);
  v9 = 0x6E776F6E6B6E55;
  v10 = *(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type + 8);
  v11 = 0xEB00000000656C69;
  if (v10 == 1)
  {
    v9 = 0x467974696C616552;
  }

  else
  {
    v8 = 0;
  }

  if (v10 != 1)
  {
    v11 = 0xE700000000000000;
  }

  if (*(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type + 8))
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type) & 1;
  }

  if (*(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type + 8))
  {
    v13 = v9;
  }

  else
  {
    v13 = 4477781;
  }

  if (*(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type + 8))
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  v15 = *(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_async);
  v17 = *(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  v16 = *(v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName + 8);
  v63 = v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName;
  v74[0] = v7;
  v74[1] = v13;
  v74[2] = v14;
  v74[3] = v12;
  v75 = v15;
  v76 = v17;
  v77 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1897F90;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  v19 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v7;
  *(inited + 72) = v19;
  *(inited + 80) = 1701869940;
  v20 = MEMORY[0x1E69E6158];
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v13;
  *(inited + 104) = v14;
  *(inited + 120) = v20;
  *(inited + 128) = 0x6E6F6973726576;
  v21 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = v12;
  *(inited + 168) = v21;
  *(inited + 176) = 0x636E797361;
  *(inited + 184) = 0xE500000000000000;
  v22 = MEMORY[0x1E69E6370];
  *(inited + 192) = v15;
  *(inited + 216) = v22;
  strcpy((inited + 224), "functionName");
  *(inited + 264) = v20;
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = v17;
  *(inited + 248) = v16;
  v62 = v16;
  swift_bridgeObjectRetain_n();
  v65 = v14;

  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  if (one-time initialization token for observers != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v24 = static Entity.LoadStatistics.observers;
    v25 = *(static Entity.LoadStatistics.observers + 16);
    if (v25)
    {
      v61 = v1;

      v26 = 0;
      v1 = v24 + 32;
      v27 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v26 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }

        outlined init with copy of WeakRef<Entity.LoadStatistics.Observer>(v1, v66);
        if (swift_weakLoadStrong())
        {

          outlined init with take of WeakRef<Entity.LoadStatistics.Observer>(v66, v73);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1);
            v27 = v67;
          }

          v30 = *(v27 + 16);
          v29 = *(v27 + 24);
          if (v30 >= v29 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
            v27 = v67;
          }

          *(v27 + 16) = v30 + 1;
          outlined init with take of WeakRef<Entity.LoadStatistics.Observer>(v73, v27 + 8 * v30 + 32);
        }

        else
        {
          outlined destroy of BodyTrackingComponent?(v66, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
        }

        ++v26;
        v1 += 8;
      }

      while (v25 != v26);

      static Entity.LoadStatistics.observers = v27;

      v31 = *(static Entity.LoadStatistics.observers + 16);
      if (v31)
      {
        v32 = static Entity.LoadStatistics.observers + 32;
        v60 = static Entity.LoadStatistics.observers;

        do
        {
          outlined init with copy of WeakRef<Entity.LoadStatistics.Observer>(v32, v66);
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v34 = Strong;
            swift_beginAccess();
            v35 = *(v34 + 16);

            v36 = swift_isUniquelyReferenced_nonNull_native();
            *(v34 + 16) = v35;
            if ((v36 & 1) == 0)
            {
              v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
              *(v34 + 16) = v35;
            }

            v38 = *(v35 + 2);
            v37 = *(v35 + 3);
            if (v38 >= v37 >> 1)
            {
              v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v35);
            }

            *(v35 + 2) = v38 + 1;
            *&v35[8 * v38 + 32] = v23;
            *(v34 + 16) = v35;
            swift_endAccess();
            outlined destroy of BodyTrackingComponent?(v66, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
          }

          else
          {
            outlined destroy of BodyTrackingComponent?(v66, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
          }

          v32 += 8;
          --v31;
        }

        while (v31);
      }

      v1 = v61;
    }

    v39 = MEMORY[0x1C68F3280](0xD000000000000026, 0x80000001C18E5FB0);
    v40 = swift_allocObject();
    *(v40 + 16) = v23;
    v71 = partial apply for closure #4 in Entity.LoadStatistics.log();
    v72 = v40;
    v67 = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    v70 = &block_descriptor_16;
    v41 = _Block_copy(&v67);

    AnalyticsSendEventLazy();
    _Block_release(v41);

    if (one-time initialization token for entityLoadLog != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Entity.LoadStatistics.entityLoadLog);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v67 = v46;
      *v45 = 136446210;
      v47 = specialized flatJSON #1 <A>(_:) in Entity.LoadStatistics.log()(v74);
      v49 = v48;

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v67);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_1C1358000, v43, v44, "%{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1C6902A30](v46, -1, -1);
      MEMORY[0x1C6902A30](v45, -1, -1);
    }

    else
    {
    }

    v51 = OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats;
    swift_beginAccess();
    v65 = *(v1 + v51);
    if (v65 >> 62)
    {
      v52 = __CocoaSet.count.getter();
      if (!v52)
      {
        return;
      }
    }

    else
    {
      v52 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
        return;
      }
    }

    if (v52 < 1)
    {
      break;
    }

    v61 = &v69;
    v62 = v65 & 0xC000000000000001;

    v53 = 0;
    v60 = v52;
    while (1)
    {
      if (v62)
      {
        v54 = MEMORY[0x1C68F41F0](v53, v65);
        v1 = v54;
      }

      else
      {
        v1 = *(v65 + 8 * v53 + 32);
      }

      v55 = *(v63 + 8);
      MEMORY[0x1EEE9AC00](v54);
      *(&v60 - 4) = v56;
      *(&v60 - 3) = v55;
      *(&v60 - 2) = v64;
      v23 = *(v1 + 16);
      v57 = swift_allocObject();
      *(v57 + 16) = partial apply for closure #5 in Entity.LoadStatistics.log();
      *(v57 + 24) = &v60 - 6;
      v58 = swift_allocObject();
      *(v58 + 16) = partial apply for closure #1 in __AssetLoadRequest.Statistics.forEach(_:);
      *(v58 + 24) = v57;
      v71 = partial apply for thunk for @callee_guaranteed (@unowned OpaquePointer) -> ();
      v72 = v58;
      v67 = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v69 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
      v70 = &block_descriptor_40;
      v59 = _Block_copy(&v67);

      REAssetLoadRequestStatsForEachStat();

      _Block_release(v59);
      LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

      if (v55)
      {
        break;
      }

      if (v60 == ++v53)
      {

        return;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
  }

  __break(1u);
}

uint64_t specialized flatJSON #1 <A>(_:) in Entity.LoadStatistics.log()(uint64_t a1)
{
  v1 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x1EEE9AC00](v2 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  lazy protocol witness table accessor for type EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance EntityLoadLog #1 in Entity.LoadStatistics.log()();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;
  static String.Encoding.utf8.getter();
  v6 = String.init(data:encoding:)();
  if (v7)
  {
    v8 = v6;
    outlined consume of Data._Representation(v3, v5);

    return v8;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t specialized flatJSON #1 <A>(_:) in Entity.LoadStatistics.log()(_OWORD *a1)
{
  v1 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x1EEE9AC00](v2 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  lazy protocol witness table accessor for type AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;
  static String.Encoding.utf8.getter();
  v6 = String.init(data:encoding:)();
  if (v7)
  {
    v8 = v6;
    outlined consume of Data._Representation(v3, v5);

    return v8;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

Swift::Int specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v12, v36);
    *&v35 = v15;
    *(&v35 + 1) = v14;
    v32 = v35;
    v33 = v36[0];
    v34 = v36[1];
    outlined init with copy of Any(&v33, v29);
    type metadata accessor for NSObject();

    if (swift_dynamicCast())
    {
      v16 = v30;
      if (!v30)
      {
        goto LABEL_17;
      }

      v31[0] = v33;
      v31[1] = v34;
      v30 = v32;
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17 + 1, 1);
      }

      v2 = v37;
      v18 = v30;
      Hasher.init(_seed:)();
      v38 = v18;
      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = (*(v2 + 48) + 16 * v23);
      *v28 = v38;
      v28[1] = *(&v18 + 1);
      *(*(v2 + 56) + 8 * v23) = v16;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      *&v30 = 0;
LABEL_17:
      result = outlined destroy of BodyTrackingComponent?(&v32, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void closure #5 in Entity.LoadStatistics.log()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(), double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 0x7079547465737361;
  *(inited + 16) = xmmword_1C189FFC0;
  v13 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v13;
  *(inited + 80) = 0x656D695464616F6CLL;
  *(inited + 88) = 0xE800000000000000;
  v14 = MEMORY[0x1E69E63B0];
  *(inited + 96) = a6;
  *(inited + 120) = v14;
  strcpy((inited + 128), "functionName");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = a4;
  *(inited + 152) = a5;
  *(inited + 168) = v13;
  *(inited + 176) = 0x657A6953656C6966;
  *(inited + 216) = MEMORY[0x1E69E76D8];
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = a3;

  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v16 = MEMORY[0x1C68F3280](0xD00000000000002FLL, 0x80000001C18E6030);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v40 = partial apply for closure #1 in closure #5 in Entity.LoadStatistics.log();
  v41 = v17;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v38 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v39 = &block_descriptor_46;
  v18 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v18);

  *&aBlock = a1;
  *(&aBlock + 1) = a2;
  v38 = *&a6;
  v39 = a4;
  v40 = a5;
  v41 = a3;
  if (one-time initialization token for assetLoadLog != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Entity.LoadStatistics.assetLoadLog);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35[0] = v23;
    *v22 = 136446210;
    v24 = specialized flatJSON #1 <A>(_:) in Entity.LoadStatistics.log()(&aBlock);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v35);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1C1358000, v20, v21, "%{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1C6902A30](v23, -1, -1);
    MEMORY[0x1C6902A30](v22, -1, -1);
  }

  if (one-time initialization token for observers != -1)
  {
    swift_once();
  }

  v27 = *(static Entity.LoadStatistics.observers + 16);
  if (v27)
  {
    v28 = static Entity.LoadStatistics.observers + 32;

    do
    {
      outlined init with copy of WeakRef<Entity.LoadStatistics.Observer>(v28, v36);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v30 = Strong;
        swift_beginAccess();
        v31 = *(v30 + 24);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v30 + 24) = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
          *(v30 + 24) = v31;
        }

        v34 = *(v31 + 2);
        v33 = *(v31 + 3);
        if (v34 >= v33 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
        }

        *(v31 + 2) = v34 + 1;
        *&v31[8 * v34 + 32] = v15;
        *(v30 + 24) = v31;
        swift_endAccess();
        outlined destroy of BodyTrackingComponent?(v36, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(v36, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
      }

      v28 += 8;
      --v27;
    }

    while (v27);
  }
}

uint64_t encode(to:) in EntityLoadLog #1 in Entity.LoadStatistics.log()(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit6EntityC0D10FoundationE14LoadStatisticsC3logyyF0fH3LogL_V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10RealityKit6EntityC0D10FoundationE14LoadStatisticsC3logyyF0fH3LogL_V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t encode(to:) in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit6EntityC0D10FoundationE14LoadStatisticsC3logyyFyAC07__AssetH7RequestC0I0C5ValueVXEfU3_0kH3LogL_V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10RealityKit6EntityC0D10FoundationE14LoadStatisticsC3logyyFyAC07__AssetH7RequestC0I0C5ValueVXEfU3_0kH3LogL_V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()()
{
  v1 = *v0;
  v2 = 0x6E6F697461727564;
  v3 = 0x6E6F6973726576;
  v4 = 0x636E797361;
  if (v1 != 3)
  {
    v4 = 0x6E6F6974636E7566;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CodingKeys.init(stringValue:) in EntityLoadLog #1 in Entity.LoadStatistics.log()(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()()
{
  v1 = 0x7079547465737361;
  v2 = 0x6E6F6974636E7566;
  if (*v0 != 2)
  {
    v2 = 0x657A6953656C6966;
  }

  if (*v0)
  {
    v1 = 0x656D695464616F6CLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CodingKeys.init(stringValue:) in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t outlined init with copy of WeakRef<Entity.LoadStatistics.Observer>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WeakRef<Entity.LoadStatistics.Observer>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance EntityLoadLog #1 in Entity.LoadStatistics.log()()
{
  result = lazy protocol witness table cache variable for type EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance EntityLoadLog #1 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance EntityLoadLog #1 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EntityLoadLog #1 in Entity.LoadStatistics.log(), &unk_1F40FED20, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance EntityLoadLog #1 in Entity.LoadStatistics.log());
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()()
{
  result = lazy protocol witness table cache variable for type AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log(), &unk_1F40FEC98, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log());
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for EntityLoadLog #1 in Entity.LoadStatistics.log()(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EntityLoadLog #1 in Entity.LoadStatistics.log()(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for WeakRef(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t lazy protocol witness table accessor for type Entity.LoadStatistics.USDLoader and conformance Entity.LoadStatistics.USDLoader()
{
  result = lazy protocol witness table cache variable for type Entity.LoadStatistics.USDLoader and conformance Entity.LoadStatistics.USDLoader;
  if (!lazy protocol witness table cache variable for type Entity.LoadStatistics.USDLoader and conformance Entity.LoadStatistics.USDLoader)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.LoadStatistics.USDLoader, &type metadata for Entity.LoadStatistics.USDLoader, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.LoadStatistics.USDLoader and conformance Entity.LoadStatistics.USDLoader);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log()()
{
  result = lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log(), &unk_1F40FEF40, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log(), &unk_1F40FEF40, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log(), &unk_1F40FEF40, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log(), &unk_1F40FEF40, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log() and conformance CodingKeys in EntityLoadLog #1 in Entity.LoadStatistics.log());
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()()
{
  result = lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log(), &unk_1F40FEEB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log(), &unk_1F40FEEB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log(), &unk_1F40FEEB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log();
  if (!lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log())
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log(), &unk_1F40FEEB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log() and conformance CodingKeys in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log());
  }

  return result;
}

uint64_t specialized CodingKeys.init(stringValue:) in EntityLoadLog #1 in Entity.LoadStatistics.log()(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E797361 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xEC000000656D614ELL)
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

uint64_t specialized CodingKeys.init(stringValue:) in AssetLoadLog #1 in closure #5 in Entity.LoadStatistics.log()(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D695464616F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xEC000000656D614ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000)
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

void _Proto_MeshDeformation_v1.BlendShape.addToBuilder(_:)(uint64_t a1)
{
  v2 = REMeshDeformationDefinitionAssetBuilderDeformationStackAddBlendShape();
  if (v2 <= 0x7FFFFFFE)
  {
    *(a1 + 16) = v2;
  }

  else
  {

    *(a1 + 32) = xmmword_1C18AF9C0;
    *(a1 + 48) = 0x80000001C18E6080;
  }
}

void _Proto_MeshDeformation_v1.Skinning.addToBuilder(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = REMeshDeformationDefinitionAssetBuilderDeformationStackAddSkinning();
  if (v4 <= 0x7FFFFFFE)
  {
    *(a1 + 16) = v4;
    if (!v3)
    {
      return;
    }
  }

  else
  {

    *(a1 + 32) = xmmword_1C18AF9C0;
    *(a1 + 48) = 0x80000001C18E6080;
    if (!v3)
    {
      return;
    }
  }

  REMeshDeformationDefinitionAssetBuilderSkinningGetEnableSkinningVertexFrame();
}

unint64_t instantiation function for generic protocol witness table for _Proto_MeshDeformation_v1.BlendShape(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.BlendShape, &type metadata for _Proto_MeshDeformation_v1.BlendShape, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.BlendShape, &type metadata for _Proto_MeshDeformation_v1.BlendShape, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _Proto_MeshDeformation_v1.Skinning(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.Skinning, &type metadata for _Proto_MeshDeformation_v1.Skinning, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.Skinning, &type metadata for _Proto_MeshDeformation_v1.Skinning, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning);
  }

  return result;
}

void PhysicallyBasedMaterial.BaseColor.init(material:alternateTintKey:)(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (one-time initialization token for linearSRGBWhite != -1)
  {
    swift_once();
  }

  value = static CGColorRef.linearSRGBWhite;
  outlined consume of MaterialParameters.Texture?(0, 0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0x6F6C6F4365736162;
  }

  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0xED0000746E695472;
  }

  v11 = v10;
  v12.value = Material.getColorParameter(key:)(*&v9).value;

  if (v12.value)
  {

    value = v12.value;
  }

  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  Material.getTextureParameter(key:)(0xD000000000000010, 0x80000001C18E2A60, &v20, v13, v14);
  v15 = v21;
  if (v21)
  {
    v16 = v23;
    v17 = v22;
    v18 = v20;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
  }

  *a4 = value;
  *(a4 + 8) = v18;
  *(a4 + 16) = v15;
  *(a4 + 24) = v17;
  *(a4 + 32) = v16;
  v19 = value;
  outlined copy of MaterialParameters.Texture?(v18, v15);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v18, v15);
}

void PhysicallyBasedMaterial.Opacity.init(material:alternateTintKey:)(void *a1@<X0>, uint64_t a3@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  if (RELinkedOnOrAfterFall2024OSVersions())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5._countAndFlagsBits = 0x537974696361706FLL;
    v5._object = 0xEC000000656C6163;
    Material.getFloatParameter(key:)(v6, v5);
    if ((v7 & 0x100000000) != 0)
    {
      v8 = 1065353216;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 1065353216;
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0x4F65727574786574, 0xEE00797469636170, &v15, v9, v10);
  v11 = v16;
  if (v16)
  {
    v12 = v18;
    v13 = v17;
    v14 = v15;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  *a3 = v8;
  *(a3 + 8) = v14;
  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  *(a3 + 32) = v12;
  outlined copy of MaterialParameters.Texture?(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v14, v11);
}

uint64_t (*static PhysicallyBasedMaterial.BaseColor.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return partial apply for closure #1 in static TextureResource.builtinTexture(named:);
}

id PhysicallyBasedMaterial.BaseColor.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v18 = *v4;
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001C18E2A60;
  if (v8)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  if (v8)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 16) = v11;
  *(a1 + 24) = v8;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v13;
  v15 = 0x6F6C6F4365736162;
  if (a4)
  {
    v15 = a3;
  }

  v16 = 0xED0000746E695472;
  if (a4)
  {
    v16 = a4;
  }

  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v6;
  *(a2 + 80) = 6;
  outlined copy of MaterialParameters.Texture?(v7, v8);

  return v18;
}

uint64_t (*static PhysicallyBasedMaterial.Metallic.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t (*static PhysicallyBasedMaterial.Roughness.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

void PhysicallyBasedMaterial.Roughness.init(material:alternateTintKey:)(void *a1@<X0>, uint64_t a3@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._countAndFlagsBits = 0x73656E6867756F72;
  v5._object = 0xEE00656C61635373;
  Material.getFloatParameter(key:)(v6, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0xD000000000000010, 0x80000001C18E2A80, &v16, v9, v10);
  v11 = v17;
  if (v17)
  {
    v12 = v19;
    v13 = v18;
    v14 = v16;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  v15 = *&v8;
  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1.0;
  }

  *a3 = v15;
  *(a3 + 8) = v14;
  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  *(a3 + 32) = v12;
  outlined copy of MaterialParameters.Texture?(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v14, v11);
}

uint64_t (*static PhysicallyBasedMaterial.EmissiveColor.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.black");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

void PhysicallyBasedMaterial.BaseColor.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v4;

    v6 = REMaterialCreateDefaultSamplerDescriptor();

    v7 = 84148994;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  outlined consume of MaterialParameters.Texture?(0, 0);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
}

void PhysicallyBasedMaterial.EmissiveColor.init(material:alternateTintKey:)(void *a1@<X0>, uint64_t a3@<X8>)
{

  if (one-time initialization token for linearSRGBWhite != -1)
  {
    swift_once();
  }

  v5 = static CGColorRef.linearSRGBWhite;
  outlined consume of MaterialParameters.Texture?(0, 0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6._countAndFlagsBits = 0x6576697373696D65;
  v6._object = 0xED0000726F6C6F43;
  v7.value = Material.getColorParameter(key:)(v6).value;
  if (v7.value)
  {
    value = v7.value;

    v5 = value;
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0x4565727574786574, 0xEF6576697373696DLL, &v16, v9, v10);
  v11 = v17;
  if (v17)
  {
    v12 = v19;
    v13 = v18;
    v14 = v16;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  *a3 = v5;
  *(a3 + 8) = v14;
  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  *(a3 + 32) = v12;
  v15 = v5;
  outlined copy of MaterialParameters.Texture?(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v14, v11);
}

uint64_t (*static PhysicallyBasedMaterial.Specular.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

void PhysicallyBasedMaterial.Metallic.init(material:alternateTintKey:)(void *a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11._object = 0xED0000656C616353;
  v11._countAndFlagsBits = a3;
  Material.getFloatParameter(key:)(v12, v11);
  v14 = v13;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  Material.getTextureParameter(key:)(a4, a5, &v22, v15, v16);
  v17 = v23;
  if (v23)
  {
    v18 = v25;
    v19 = v24;
    v20 = v22;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v18 = 0;
  }

  v21 = *&v14;
  if ((v14 & 0x100000000) != 0)
  {
    v21 = 1.0;
  }

  *a6 = v21;
  *(a6 + 8) = v20;
  *(a6 + 16) = v17;
  *(a6 + 24) = v19;
  *(a6 + 32) = v18;
  outlined copy of MaterialParameters.Texture?(v20, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v20, v17);
}

void PhysicallyBasedMaterial.Blending.init(blending:)(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if (v3 == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = xmmword_1C18A4F10;
  }

  else
  {
    v8 = *(result + 20);
    v9 = *(result + 4);
    v10 = *result;
    v11 = v3;
    v12 = v9;
    v13 = v8 & 1;
    PhysicallyBasedMaterial.Opacity.init(_:)(&v10, &v14);
    v4 = v14;
    v7 = v15;
    v5 = v16;
    v6 = v17;
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
}

void PhysicallyBasedMaterial.Opacity.init(_:)(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  if (v5)
  {
    v6 = REMaterialCreateDefaultSamplerDescriptor();
    v7 = 84148994;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  outlined consume of MaterialParameters.Texture?(0, 0);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
}

uint64_t (*static PhysicallyBasedMaterial.Opacity.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t (*static PhysicallyBasedMaterial.Clearcoat.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

void PhysicallyBasedMaterial.Clearcoat.init(material:alternateTintKey:)(void *a1@<X0>, uint64_t a3@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._countAndFlagsBits = 0x616F637261656C63;
  v5._object = 0xEE00656C61635374;
  Material.getFloatParameter(key:)(v6, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0xD000000000000010, 0x80000001C18E2AA0, &v16, v9, v10);
  v11 = v17;
  if (v17)
  {
    v12 = v19;
    v13 = v18;
    v14 = v16;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  v15 = *&v8;
  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1.0;
  }

  *a3 = v15;
  *(a3 + 8) = v14;
  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  *(a3 + 32) = v12;
  outlined copy of MaterialParameters.Texture?(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v14, v11);
}

uint64_t (*static PhysicallyBasedMaterial.ClearcoatRoughness.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

void PhysicallyBasedMaterial.Metallic.init(_:)(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  if (v5)
  {
    v6 = REMaterialCreateDefaultSamplerDescriptor();
    v7 = 84148994;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  outlined consume of MaterialParameters.Texture?(0, 0);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
}

void PhysicallyBasedMaterial.ClearcoatRoughness.init(material:alternateTintKey:)(void *a1@<X0>, uint64_t a3@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._object = 0x80000001C18DD830;
  v5._countAndFlagsBits = 0xD000000000000017;
  Material.getFloatParameter(key:)("form1", v5);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  Material.getTextureParameter(key:)(0xD000000000000019, 0x80000001C18E2AC0, &v15, v8, v9);
  v10 = v16;
  if (v16)
  {
    v11 = v18;
    v12 = v17;
    v13 = v15;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  v14 = *&v7;
  if ((v7 & 0x100000000) != 0)
  {
    v14 = 1.0;
  }

  *a3 = v14;
  *(a3 + 8) = v13;
  *(a3 + 16) = v10;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  outlined copy of MaterialParameters.Texture?(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v13, v10);
}

uint64_t (*static PhysicallyBasedMaterial.Normal.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x80000001C18E2AE0;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t (*static PhysicallyBasedMaterial.AmbientOcclusion.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

uint64_t (*static PhysicallyBasedMaterial.AnisotropyLevel.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

void PhysicallyBasedMaterial.AnisotropyLevel.init(material:alternateTintKey:)(void *a1@<X0>, uint64_t a3@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._object = 0x80000001C18DD8B0;
  v5._countAndFlagsBits = 0xD000000000000014;
  Material.getFloatParameter(key:)("s", v5);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  Material.getTextureParameter(key:)(0xD000000000000016, 0x80000001C18E3600, &v15, v8, v9);
  v10 = v16;
  if (v16)
  {
    v11 = v18;
    v12 = v17;
    v13 = v15;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  v14 = *&v7;
  if ((v7 & 0x100000000) != 0)
  {
    v14 = 1.0;
  }

  *a3 = v14;
  *(a3 + 8) = v13;
  *(a3 + 16) = v10;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  outlined copy of MaterialParameters.Texture?(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v13, v10);
}

uint64_t (*static PhysicallyBasedMaterial.AnisotropyAngle.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

__n128 PhysicallyBasedMaterial.Metallic.init(scale:texture:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v7 = *a1;
  v4 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u32[2];
  *a2 = a3;
  outlined consume of MaterialParameters.Texture?(0, 0);
  result = v7;
  *(a2 + 8) = v7;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

void PhysicallyBasedMaterial.AnisotropyAngle.init(floatLiteral:)(uint64_t a1@<X8>, float a2@<S0>)
{
  outlined consume of MaterialParameters.Texture?(0, 0);
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
}

void PhysicallyBasedMaterial.AnisotropyAngle.init(material:alternateTintKey:)(void *a1@<X0>, uint64_t a3@<X8>)
{

  outlined consume of MaterialParameters.Texture?(0, 0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5._object = 0x80000001C18DD8D0;
  v5._countAndFlagsBits = 0xD000000000000014;
  Material.getFloatParameter(key:)("anisotropyLevelScale", v5);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  Material.getTextureParameter(key:)(0xD000000000000016, 0x80000001C18E35E0, &v15, v8, v9);
  v10 = v16;
  if (v16)
  {
    v11 = v18;
    v12 = v17;
    v13 = v15;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  v14 = *&v7;
  if ((v7 & 0x100000000) != 0)
  {
    v14 = 1.0;
  }

  *a3 = v14;
  *(a3 + 8) = v13;
  *(a3 + 16) = v10;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  outlined copy of MaterialParameters.Texture?(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v13, v10);
}

double PhysicallyBasedMaterial.BaseColor.texture.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return outlined copy of MaterialParameters.Texture?(v2, v3);
}

__n128 PhysicallyBasedMaterial.BaseColor.texture.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u32[2];
  outlined consume of MaterialParameters.Texture?(*(v1 + 8), *(v1 + 16));
  result = v5;
  *(v1 + 8) = v5;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t (*static PhysicallyBasedMaterial.SheenColor.__defaultTexture.getter())(void *a1)
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "fallback.white");
  *(v0 + 31) = -18;
  return closure #1 in static TextureResource.builtinTexture(named:)partial apply;
}

__n128 PhysicallyBasedMaterial.BaseColor.init(tint:texture:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  v4 = a2[1].n128_u64[0];
  v5 = a2[1].n128_u32[2];
  *a3 = a1;
  outlined consume of MaterialParameters.Texture?(0, 0);
  result = v7;
  *(a3 + 8) = v7;
  *(a3 + 24) = v4;
  *(a3 + 32) = v5;
  return result;
}

id PhysicallyBasedMaterial.SheenColor.getCurrentValues(alternateTintKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v18 = *v4;
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x80000001C18E3940;
  if (v8)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  if (v8)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 16) = v11;
  *(a1 + 24) = v8;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v13;
  v15 = 0x6C6F436E65656873;
  if (a4)
  {
    v15 = a3;
  }

  v16 = 0xEA0000000000726FLL;
  if (a4)
  {
    v16 = a4;
  }

  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v6;
  *(a2 + 80) = 6;
  outlined copy of MaterialParameters.Texture?(v7, v8);

  return v18;
}

void PhysicallyBasedMaterial.SheenColor.init(material:alternateTintKey:)(void *a1@<X0>, uint64_t a3@<X8>)
{

  if (one-time initialization token for linearSRGBWhite != -1)
  {
    swift_once();
  }

  v5 = static CGColorRef.linearSRGBWhite;
  outlined consume of MaterialParameters.Texture?(0, 0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6._countAndFlagsBits = 0x6C6F436E65656873;
  v6._object = 0xEA0000000000726FLL;
  v7.value = Material.getColorParameter(key:)(v6).value;
  if (v7.value)
  {
    value = v7.value;

    v5 = value;
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Material.getTextureParameter(key:)(0xD000000000000011, 0x80000001C18E3940, &v16, v9, v10);
  v11 = v17;
  if (v17)
  {
    v12 = v19;
    v13 = v18;
    v14 = v16;
    outlined consume of MaterialParameters.Texture?(0, 0);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  *a3 = v5;
  *(a3 + 8) = v14;
  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  *(a3 + 32) = v12;
  v15 = v5;
  outlined copy of MaterialParameters.Texture?(v14, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of MaterialParameters.Texture?(v14, v11);
}

void PhysicallyBasedMaterial.Program.descriptor.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 17);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void PhysicallyBasedMaterial.Program.Descriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int PhysicallyBasedMaterial.Program.Descriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PhysicallyBasedMaterial.Program.Descriptor()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhysicallyBasedMaterial.Program.Descriptor()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t PhysicallyBasedMaterial.Program.__allocating_init(descriptor:)(_BYTE *a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = PhysicallyBasedMaterial.Program.__allocating_init(descriptor:);

  return PhysicallyBasedMaterial.Program.init(descriptor:)(a1);
}

uint64_t PhysicallyBasedMaterial.Program.__allocating_init(descriptor:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t PhysicallyBasedMaterial.Program.init(descriptor:)(_BYTE *a1)
{
  *(v2 + 104) = v1;
  *(v2 + 136) = *a1;
  *(v2 + 137) = a1[1];
  return MEMORY[0x1EEE6DFA0](PhysicallyBasedMaterial.Program.init(descriptor:), 0, 0);
}

uint64_t PhysicallyBasedMaterial.Program.init(descriptor:)()
{
  v1 = *(v0 + 137);
  v2 = *(v0 + 136);
  v3 = v2 != 2;
  v4 = *(v0 + 104);
  *(v4 + 16) = v2;
  *(v4 + 17) = v1;
  if (one-time initialization token for shaderCacheRegistry != -1)
  {
    swift_once();
  }

  v5 = v3 << 16;

  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 120, v0 + 16);
  v7 = specialized AssetServiceScopedRegistry.instance(for:)((v0 + 16));
  *(v0 + 112) = v7;

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v8 = *(v7 + 56);
  v9 = *(v8 + 24);

  os_unfair_lock_lock(v9 + 4);
  swift_beginAccess();
  v10 = *(v8 + 16);
  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v5 | *(v0 + 137), 0, (*(v0 + 136) << 8) | 0x20001u), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock(v9 + 4);

  if (v13)
  {

    *(v0 + 128) = v13;

    return MEMORY[0x1EEE6DFA0](PhysicallyBasedMaterial.Program.init(descriptor:), 0, 0);
  }

  else
  {
    v14 = *(v0 + 137);
    v15 = *(v0 + 136);
    v16 = swift_task_alloc();
    *(v0 + 120) = v16;
    *v16 = v0;
    v16[1] = PhysicallyBasedMaterial.Program.init(descriptor:);

    return specialized ShaderCacheLoader.loadResource(forKey:)(v5 | v14, 0, (v15 << 8) | 0x20001u);
  }
}

{
  *(*(v0 + 104) + 24) = *(v0 + 128);
  return (*(v0 + 8))(*(v0 + 104));
}

{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t PhysicallyBasedMaterial.Program.init(descriptor:)(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = PhysicallyBasedMaterial.Program.init(descriptor:);
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = PhysicallyBasedMaterial.Program.init(descriptor:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t static PhysicallyBasedMaterial.Program.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return *(a1 + 17) ^ *(a2 + 17) ^ 1u;
    }
  }

  else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return *(a1 + 17) ^ *(a2 + 17) ^ 1u;
  }

  return 0;
}

void PhysicallyBasedMaterial.Program.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
}

uint64_t PhysicallyBasedMaterial.Program.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int PhysicallyBasedMaterial.Program.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhysicallyBasedMaterial.Program(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 17);
  v7[0] = *(*a1 + 16);
  v7[1] = v3;
  v4 = *(v2 + 16);
  LOBYTE(v2) = *(v2 + 17);
  v6[0] = v4;
  v6[1] = v2;
  return specialized static PhysicallyBasedMaterial.Program.Descriptor.== infix(_:_:)(v7, v6) & 1;
}

void protocol witness for Hashable.hash(into:) in conformance PhysicallyBasedMaterial.Program()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 17);
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhysicallyBasedMaterial.Program()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  if (v2 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2 & 1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

double PhysicallyBasedMaterial.Normal.texture.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return outlined copy of MaterialParameters.Texture?(v2, v3);
}

__n128 PhysicallyBasedMaterial.Normal.texture.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u32[2];
  outlined consume of MaterialParameters.Texture?(*v1, *(v1 + 8));
  result = v5;
  *v1 = v5;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

__n128 PhysicallyBasedMaterial.Normal.init(texture:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v6 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u32[2];
  outlined consume of MaterialParameters.Texture?(0, 0);
  result = v6;
  *a2 = v6;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u32[2] = v4;
  return result;
}

id PhysicallyBasedMaterial.Normal.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    result = REMaterialCreateDefaultSamplerDescriptor();
    v6 = 84148994;
  }

  else
  {
    result = 0;
    v6 = 0;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  return result;
}

uint64_t specialized static PhysicallyBasedMaterial.Program.Descriptor.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return a1[1] ^ a2[1] ^ 1u;
    }
  }

  else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return a1[1] ^ a2[1] ^ 1u;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type PhysicallyBasedMaterial.Program.Descriptor and conformance PhysicallyBasedMaterial.Program.Descriptor()
{
  result = lazy protocol witness table cache variable for type PhysicallyBasedMaterial.Program.Descriptor and conformance PhysicallyBasedMaterial.Program.Descriptor;
  if (!lazy protocol witness table cache variable for type PhysicallyBasedMaterial.Program.Descriptor and conformance PhysicallyBasedMaterial.Program.Descriptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicallyBasedMaterial.Program.Descriptor, &type metadata for PhysicallyBasedMaterial.Program.Descriptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicallyBasedMaterial.Program.Descriptor and conformance PhysicallyBasedMaterial.Program.Descriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicallyBasedMaterial.Program and conformance PhysicallyBasedMaterial.Program(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table cache variable for type PhysicallyBasedMaterial.Program and conformance PhysicallyBasedMaterial.Program;
  if (!lazy protocol witness table cache variable for type PhysicallyBasedMaterial.Program and conformance PhysicallyBasedMaterial.Program)
  {
    v5 = type metadata accessor for PhysicallyBasedMaterial.Program();
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicallyBasedMaterial.Program, v5, v2, v3);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicallyBasedMaterial.Program and conformance PhysicallyBasedMaterial.Program);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation18MaterialParametersV7TextureVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation23PhysicallyBasedMaterialV8BlendingO(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial.Blending(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 36))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial.Blending(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PhysicallyBasedMaterial.Blending(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial.Metallic(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 36))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial.Metallic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial.BaseColor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial.BaseColor(uint64_t result, int a2, int a3)
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
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of PhysicallyBasedMaterial.Program.__allocating_init(descriptor:)(uint64_t a1)
{
  v6 = (*(v1 + 96) + **(v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = PhysicallyBasedMaterial.Program.__allocating_init(descriptor:);

  return v6(a1);
}

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial.Program.Descriptor(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial.Program.Descriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicallyBasedMaterial.Normal(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 28))
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

uint64_t storeEnumTagSinglePayload for PhysicallyBasedMaterial.Normal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

char *specialized static EmphasizeAnimations.createEmphasizeBounceAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 140, 0, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 271, 0, MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 94, 0, MEMORY[0x1E69E7CC0]);
  }

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v1, &v3);

  return v3;
}

uint64_t AnchorEntity.__allocating_init(plane:classification:minimumBounds:)(char *a1, uint64_t *a2, double a3)
{
  v6 = type metadata accessor for AnchoringComponent.Target(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  *v8 = *a1;
  *(v8 + 1) = v9;
  *(v8 + 2) = a3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  return AnchorEntity.init(_:)(v8);
}

uint64_t AnchorEntity.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AnchoringComponent(0);
  v3 = (v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Entity.init()(v6);
  outlined init with copy of AnchoringComponent.Target(a1, v5);
  *&v5[v3[7]] = 1;
  *&v5[v3[8]] = 1;
  v8 = &v5[v3[9]];
  v12 = 1;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  v8[64] = 1;

  REAnchoringComponentGetComponentType();
  v11 = REEntityGetOrAddComponentByClass();
  AnchoringComponent.__toCore(_:)(&v11);
  REAnchorComponentGetComponentType();
  REEntityRemoveComponentByClass();

  outlined destroy of AnchoringComponent.Target(a1, type metadata accessor for AnchoringComponent.Target);
  outlined destroy of AnchoringComponent.Target(v5, type metadata accessor for AnchoringComponent);
  return v7;
}

uint64_t AnchorEntity.__allocating_init(world:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v12 = a3;
  v13 = a4;
  v10 = a1;
  v11 = a2;
  v4 = type metadata accessor for AnchoringComponent.Target(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v11;
  *v6 = v10;
  v6[1] = v7;
  v8 = v13;
  v6[2] = v12;
  v6[3] = v8;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  return AnchorEntity.init(_:)(v6);
}

uint64_t AnchorEntity.__allocating_init(coreRaycastResult:)(void *a1)
{
  v2 = type metadata accessor for AnchoringComponent.Target(0);
  *&v3 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 worldTransform];
  v22 = v7;
  v23 = v6;
  v20 = v9;
  v21 = v8;
  v10 = [a1 anchor];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_storeEnumTagMultiPayload();
    type metadata accessor for AnchorEntity();
    swift_allocObject();
    v13 = AnchorEntity.init(_:)(v5);

    [a1 localTransform];
    REMakeSRTFromMatrix();
    if (one-time initialization token for identity != -1)
    {
      v22 = v14;
      v23 = v15;
      v21 = v16;
      swift_once();
      v16 = v21;
      v14 = v22;
      v15 = v23;
    }

    HasTransform.transform.setter(v14, v15, v16);
  }

  else
  {
    v17 = v22;
    *v5 = v23;
    v5[1] = v17;
    v18 = v20;
    v5[2] = v21;
    v5[3] = v18;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AnchorEntity();
    swift_allocObject();
    v13 = AnchorEntity.init(_:)(v5);
  }

  return v13;
}

uint64_t static AnchorEntity.classLoad(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](static AnchorEntity.classLoad(named:in:options:asyncOptions:), v7, v6);
}

uint64_t static AnchorEntity.classLoad(named:in:options:asyncOptions:)()
{
  v1 = *(*(v0 + 40) + 80);
  if (v1)
  {
    v2 = (v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    *v2 = 0xD000000000000022;
    v2[1] = 0x80000001C18E6490;
  }

  v3 = static Entity.loadAnchorAsync(named:in:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = static AnchorEntity.classLoad(named:in:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5(v3);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t static AnchorEntity.classLoad(named:in:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = TextureResource.replace(using:options:);
  }

  else
  {

    v4[13] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = static AnchorEntity.classLoad(named:in:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x1EEE6DFA0](static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:), v7, v6);
}

uint64_t static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:)()
{
  v1 = *(*(v0 + 80) + 80);
  if (v1)
  {
    v2 = (v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    *v2 = 0xD00000000000002DLL;
    v2[1] = 0x80000001C18E6460;
  }

  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6 = static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(v5, v3, v4, v0 + 16);
  *(v0 + 120) = v6;
  outlined destroy of __DownsamplingStrategy?(v0 + 16);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5(v6);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[13];
    v6 = v4[14];
    v7 = static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:);
  }

  else
  {

    v4[18] = a1;
    v5 = v4[13];
    v6 = v4[14];
    v7 = static AnchorEntity.classLoad(contentsOf:withName:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t static AnchorEntity.classLoad(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 120) = *a6;
  type metadata accessor for MainActor();
  *(v7 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 72) = v9;
  *(v7 + 80) = v8;

  return MEMORY[0x1EEE6DFA0](static AnchorEntity.classLoad(from:named:options:asyncOptions:), v9, v8);
}

uint64_t static AnchorEntity.classLoad(from:named:options:asyncOptions:)()
{
  v12 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    *v3 = 0xD000000000000024;
    v3[1] = 0x80000001C18E6430;

    v1 = *(v0 + 48);
  }

  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v11 = *(v0 + 120);
  v8 = static Entity.loadAnchorAsync(from:named:options:asyncOptions:)(v6, v7, v4, v5, v1, &v11);
  *(v0 + 88) = v8;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = static AnchorEntity.classLoad(from:named:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5(v8);
}

uint64_t static AnchorEntity.classLoad(from:named:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = v4[10];
    v7 = static BodyTrackedEntity.classLoad(from:named:options:asyncOptions:);
  }

  else
  {

    v4[14] = a1;
    v5 = v4[9];
    v6 = v4[10];
    v7 = static BodyTrackedEntity.classLoad(from:named:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t AnchorEntity.init(_:trackingMode:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AnchoringComponent(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a2;
  type metadata accessor for AnchorEntity();
  v9 = swift_allocObject();
  v10 = Entity.init()(v9);
  outlined init with copy of AnchoringComponent.Target(a1, v7);
  v11 = v5[7];
  *&v7[v11] = 1;
  v12 = v5[8];
  *&v7[v12] = 1;
  v13 = &v7[v5[9]];
  v16[0] = 1;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  v13[64] = 1;
  *&v7[v11] = v8;
  *&v7[v12] = 1;

  HasAnchoring.anchoring.setter(v7, v14);

  outlined destroy of AnchoringComponent.Target(a1, type metadata accessor for AnchoringComponent.Target);
  return v10;
}

uint64_t AnchorEntity.init(_:trackingMode:physicsSimulation:)(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v6 = type metadata accessor for AnchoringComponent.Target(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for AnchoringComponent(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a2;
  v14 = *a3;
  type metadata accessor for AnchorEntity();
  v15 = swift_allocObject();
  v16 = Entity.init()(v15);
  outlined init with copy of AnchoringComponent.Target(a1, v8);
  v17 = v10[7];
  *&v12[v17] = 1;
  v18 = v10[8];
  *&v12[v18] = 1;
  v19 = &v12[v10[9]];
  v22[0] = 1;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *(v19 + 3) = 0u;
  v19[64] = 1;
  outlined init with take of AnchoringComponent.Target(v8, v12);
  *&v12[v17] = v13;
  *&v12[v18] = v14;

  HasAnchoring.anchoring.setter(v12, v20);

  outlined destroy of AnchoringComponent.Target(a1, type metadata accessor for AnchoringComponent.Target);
  return v16;
}

uint64_t static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:), v7, v6);
}

uint64_t static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:)()
{
  v1 = *(*(v0 + 40) + 80);
  if (v1)
  {
    v2 = (v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    *v2 = 0xD000000000000027;
    v2[1] = 0x80000001C18E6400;
  }

  v3 = static Entity.loadBodyTrackedAsync(named:in:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5(v3);
}

uint64_t static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:);
  }

  else
  {

    v4[13] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t static BodyTrackedEntity.classLoad(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](static BodyTrackedEntity.classLoad(contentsOf:withName:options:asyncOptions:), v7, v6);
}

uint64_t static BodyTrackedEntity.classLoad(contentsOf:withName:options:asyncOptions:)()
{
  v1 = *(v0[5] + 80);
  if (v1)
  {
    v2 = (v1 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    *v2 = 0xD000000000000032;
    v2[1] = 0x80000001C18E63C0;
  }

  v3 = static Entity.loadBodyTrackedAsync(contentsOf:withName:)(v0[2], v0[3], v0[4]);
  v0[10] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = static BodyTrackedEntity.classLoad(named:in:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5(v3);
}

uint64_t static BodyTrackedEntity.classLoad(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 120) = *a6;
  type metadata accessor for MainActor();
  *(v7 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 72) = v9;
  *(v7 + 80) = v8;

  return MEMORY[0x1EEE6DFA0](static BodyTrackedEntity.classLoad(from:named:options:asyncOptions:), v9, v8);
}

uint64_t static BodyTrackedEntity.classLoad(from:named:options:asyncOptions:)()
{
  v12 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    *v3 = 0xD000000000000029;
    v3[1] = 0x80000001C18E6390;

    v1 = *(v0 + 48);
  }

  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v11 = *(v0 + 120);
  v8 = static Entity.loadBodyTrackedAsync(from:named:options:asyncOptions:)(v6, v7, v4, v5, v1, &v11);
  *(v0 + 88) = v8;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = static AnchorEntity.classLoad(from:named:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5(v8);
}

uint64_t PointLight.__allocating_init(_coreEntity:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = *a1;
  MEMORY[0x1C68F9740]();
  return v2;
}

uint64_t PointLight.init(_coreEntity:)(void *a1)
{
  *(v1 + 16) = *a1;
  MEMORY[0x1C68F9740]();
  return v1;
}

uint64_t PointLight.__deallocating_deinit()
{
  MEMORY[0x1C68F9740](*(v0 + 16), 0);

  return swift_deallocClassInstance();
}

uint64_t ModelEntity.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = Entity.init()(v0);

  if (REShadowsGetEnableDefaultShadows())
  {
    MEMORY[0x1C68FCEC0](*(v1 + 16), 1);
  }

  return v1;
}

uint64_t ModelEntity.init()(__n128 a1, uint64_t a2)
{
  v2 = Entity.init()(a2);

  if (REShadowsGetEnableDefaultShadows())
  {
    MEMORY[0x1C68FCEC0](*(v2 + 16), 1);
  }

  return v2;
}

uint64_t ModelEntity.__allocating_init(mesh:materials:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v5 = specialized ModelEntity.init(mesh:materials:)(v4, a1, a2);

  return v5;
}

uint64_t ModelEntity.init(mesh:materials:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = specialized ModelEntity.init(mesh:materials:)(a3, a1, a2);

  return v3;
}

uint64_t ModelEntity.__allocating_init(mesh:materials:collisionShape:mass:)(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  swift_allocObject();
  v8.n128_f32[0] = a4;
  v9 = specialized ModelEntity.init(mesh:materials:collisionShape:mass:)(v8, a1, a2, a3);

  return v9;
}

uint64_t ModelEntity.init(mesh:materials:collisionShape:mass:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = specialized ModelEntity.init(mesh:materials:collisionShape:mass:)(a4, a1, a2, a3);

  return v4;
}

uint64_t ModelEntity.__allocating_init(mesh:materials:collisionShapes:mass:)(uint64_t a1, uint64_t a2, unint64_t a3, float a4)
{
  swift_allocObject();
  v8.n128_f32[0] = a4;
  v9 = specialized ModelEntity.init(mesh:materials:collisionShapes:mass:)(v8, a1, a2, a3);

  return v9;
}

uint64_t ModelEntity.init(mesh:materials:collisionShapes:mass:)(uint64_t a1, uint64_t a2, unint64_t a3, __n128 a4)
{
  v4 = specialized ModelEntity.init(mesh:materials:collisionShapes:mass:)(a4, a1, a2, a3);

  return v4;
}

uint64_t static ModelEntity.classLoad(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 104) = *a5;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](static ModelEntity.classLoad(named:in:options:asyncOptions:), v7, v6);
}

uint64_t static ModelEntity.classLoad(named:in:options:asyncOptions:)()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    *v3 = 0xD000000000000021;
    v3[1] = 0x80000001C18E6360;

    v1 = *(v0 + 40);
  }

  v4 = specialized static Entity.loadModelAsync(named:in:options:asyncOptions:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1);
  *(v0 + 72) = v4;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = static ModelEntity.classLoad(named:in:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5(v4);
}

uint64_t static ModelEntity.classLoad(named:in:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = static ModelEntity.classLoad(named:in:options:asyncOptions:);
  }

  else
  {

    v4[12] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = static ModelEntity.classLoad(named:in:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 104) = *a5;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:), v7, v6);
}

uint64_t static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:)()
{
  v11 = v0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    *v3 = 0xD00000000000002CLL;
    v3[1] = 0x80000001C18E6330;

    v1 = *(v0 + 40);
  }

  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  v10 = *(v0 + 104);
  v7 = specialized static Entity.loadModelAsync(contentsOf:withName:options:asyncOptions:)(v6, v4, v5, v1, &v10);
  *(v0 + 72) = v7;
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5(v7);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:);
  }

  else
  {

    v4[12] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t static ModelEntity.classLoad(from:named:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 120) = *a6;
  type metadata accessor for MainActor();
  *(v7 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 72) = v9;
  *(v7 + 80) = v8;

  return MEMORY[0x1EEE6DFA0](static ModelEntity.classLoad(from:named:options:asyncOptions:), v9, v8);
}

uint64_t static ModelEntity.classLoad(from:named:options:asyncOptions:)()
{
  v1 = v0[6];
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
    *v3 = 0xD000000000000023;
    v3[1] = 0x80000001C18E6300;

    v1 = v0[6];
  }

  v4 = static Entity.loadModelAsync(from:named:options:asyncOptions:)(v0[2], v0[3], v0[4], v0[5], v1);
  v0[11] = v4;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = static ModelEntity.classLoad(from:named:options:asyncOptions:);

  return _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5(v4);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ModelEntity.classLoad(from:named:options:asyncOptions:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = v4[10];
    v7 = static ModelEntity.classLoad(from:named:options:asyncOptions:);
  }

  else
  {

    v4[14] = a1;
    v5 = v4[9];
    v6 = v4[10];
    v7 = static ModelEntity.classLoad(from:named:options:asyncOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t TriggerVolume.__allocating_init(shape:filter:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1898160;
  *(v4 + 32) = a1;
  type metadata accessor for TriggerVolume();
  v5 = swift_allocObject();
  v6 = Entity.init()(v5);
  v7 = one-time initialization token for default;

  if (v7 != -1)
  {
    swift_once();
  }

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(v4, 1, v3, 0, v6);

  return v6;
}

uint64_t TriggerVolume.__allocating_init(shapes:filter:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  v6 = Entity.init()(v4);
  v7 = one-time initialization token for default;

  if (v7 != -1)
  {
    swift_once();
  }

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(a1, 1, v5, 0, v6);

  return v6;
}

uint64_t TriggerVolume.init(shapes:filter:)(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v4 = *a2;
  v5 = Entity.init()(a1);
  v6 = one-time initialization token for default;

  if (v6 != -1)
  {
    swift_once();
  }

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(a1, 1, v4, 0, v5);

  return v5;
}

uint64_t VFXEntity.__allocating_init(effect:)(uint64_t a1)
{
  type metadata accessor for VFXEntity();
  v2 = swift_allocObject();
  v3 = Entity.init()(v2);
  v14 = 1;

  v5[0] = a1;
  v5[1] = 1065353216;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = 0;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit15TextureResourceCSgTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  HasVFX.vfxComponent.setter(v5);

  return v3;
}

uint64_t specialized AnchorEntity.__allocating_init(world:)(__n128 a1)
{
  v6 = a1;
  v1 = type metadata accessor for AnchoringComponent.Target(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v6.n128_u64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = v6;
  v4.n128_u32[3] = 1.0;
  *v3 = *zmmword_1C1887630;
  v3[1] = *&zmmword_1C1887630[16];
  v3[2] = *&zmmword_1C1887630[32];
  v3[3] = v4;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  return AnchorEntity.init(_:)(v3);
}

uint64_t outlined init with copy of AnchoringComponent.Target(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnchoringComponent.Target(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnchoringComponent.Target(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AnchoringComponent.Target(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnchoringComponent.Target(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized ModelEntity.init(mesh:materials:)(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = Entity.init()(a2);
  type metadata accessor for _Proto_MeshDeformation_v1.Resource();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  swift_retain_n();

  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA05ModelD0V_Tt0B5(v6, a3, 0, v5);
  v7 = *(v4 + 16);

  if (v7 == *(v4 + 16))
  {
    if (REShadowsGetEnableDefaultShadows())
    {
      MEMORY[0x1C68FCEC0](*(v4 + 16), 1);
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized ModelEntity.init(mesh:materials:collisionShape:mass:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = Entity.init()(a2);
  type metadata accessor for _Proto_MeshDeformation_v1.Resource();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *&v40 = v6;
  swift_retain_n();

  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA05ModelD0V_Tt0B5(v8, a3, 0, v7);
  v9 = *(v6 + 16);

  if (v9 == *(v6 + 16))
  {
    v10 = one-time initialization token for default;

    if (v10 == -1)
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
  v11 = static CollisionFilter.default;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1898160;
  *(v12 + 32) = a4;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(v12, 0, v11, 0, v6);

  v13 = one-time initialization token for default;

  if (v13 != -1)
  {
    swift_once();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v14 = static PhysicsMaterialResource.default;

  REMakeMassFrameFromShapeAssetAndMass();
  v22 = v40;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE290](*(v15 + 16)))
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v21 = v16;
    REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v20 = v17;

    v18 = vand_s8(__PAIR64__(v20, v21), vcgez_f32(__PAIR64__(v20, v21)));
  }

  else
  {

    v18 = 0x3E8000003CA3D70ALL;
  }

  LOBYTE(v23) = 2;
  LODWORD(v24) = v43;
  v25 = v42;
  v26 = v40;
  v27 = v41;
  *v28 = v14;
  memset(&v28[8], 0, 64);
  *v29 = 0;
  v29[8] = 1;
  *&v29[12] = v18;
  v30 = v23;
  v31 = v24;
  v34 = v41;
  v35 = *v28;
  v32 = v42;
  v33 = v40;
  *(v39 + 12) = *&v29[4];
  v38 = *&v28[48];
  v39[0] = 0uLL;
  v36 = *&v28[16];
  v37 = *&v28[32];
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  v48 = *&v28[48];
  v49[0] = 0uLL;
  *(v49 + 12) = *(v39 + 12);
  v44 = v41;
  v45 = *v28;
  v46 = *&v28[16];
  v47 = *&v28[32];
  v40 = v23;
  v41 = v24;
  v43 = v22;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA011PhysicsBodyD0V_TtB5(&v40, 0, v6);
  outlined destroy of PhysicsBodyComponent(&v23);
  if (REShadowsGetEnableDefaultShadows())
  {
    MEMORY[0x1C68FCEC0](*(v6 + 16), 1);
  }

  return v6;
}

uint64_t specialized ModelEntity.init(mesh:materials:collisionShapes:mass:)(__n128 a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = Entity.init()(a2);
  type metadata accessor for _Proto_MeshDeformation_v1.Resource();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *&v37 = v6;
  swift_retain_n();

  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA05ModelD0V_Tt0B5(v8, a3, 0, v7);
  v9 = *(v6 + 16);

  if (v9 == *(v6 + 16))
  {
    v10 = one-time initialization token for default;

    if (v10 == -1)
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
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(a4, 0, static CollisionFilter.default, 0, v6);

  specialized static ShapeResource.__makeShapeResource(_:)(a4);

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = static PhysicsMaterialResource.default;

  REMakeMassFrameFromShapeAssetAndMass();
  v19 = v37;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v12 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE290](*(v12 + 16)))
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v18 = v13;
    REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v17 = v14;

    v15 = vand_s8(__PAIR64__(v17, v18), vcgez_f32(__PAIR64__(v17, v18)));
  }

  else
  {

    v15 = 0x3E8000003CA3D70ALL;
  }

  LOBYTE(v20) = 2;
  LODWORD(v21) = v40;
  v22 = v39;
  v23 = v37;
  v24 = v38;
  *v25 = v11;
  memset(&v25[8], 0, 64);
  *v26 = 0;
  v26[8] = 1;
  *&v26[12] = v15;
  v27 = v20;
  v28 = v21;
  v31 = v38;
  v32 = *v25;
  v29 = v39;
  v30 = v37;
  *(v36 + 12) = *&v26[4];
  v35 = *&v25[48];
  v36[0] = 0uLL;
  v33 = *&v25[16];
  v34 = *&v25[32];
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  v45 = *&v25[48];
  v46[0] = 0uLL;
  *(v46 + 12) = *(v36 + 12);
  v41 = v38;
  v42 = *v25;
  v43 = *&v25[16];
  v44 = *&v25[32];
  v37 = v20;
  v38 = v21;
  v40 = v19;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA011PhysicsBodyD0V_TtB5(&v37, 0, v6);
  outlined destroy of PhysicsBodyComponent(&v20);
  if (REShadowsGetEnableDefaultShadows())
  {
    MEMORY[0x1C68FCEC0](*(v6 + 16), 1);
  }

  return v6;
}

uint64_t outlined destroy of __DownsamplingStrategy?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void PointLightComponent.init(cgColor:intensity:attenuationRadius:)(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  *(a2 + 16) = 0x40000000;
  *a2 = a1;
  *(a2 + 8) = a3;
  *(a2 + 12) = a4;
}

void static PointLightComponent.__fromCore(_:)(uint64_t a2@<X8>)
{
  REPointLightComponentGetColorGamut3F();
  REPointLightComponentGetIntensity();
  v4 = v3;
  REPointLightComponentGetAttenuationRadius();
  v6 = v5;
  REPointLightComponentGetAttenuationFalloffExponent();
  v8 = v7;
  v9 = RECreateCGColorFromColorGamut();

  *a2 = v9;
  *(a2 + 8) = v4;
  *(a2 + 12) = v6;
  *(a2 + 16) = v8;
}

void PointLightComponent.init(cgColor:intensity:attenuationRadius:attenuationFalloffExponent:)(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>)
{
  *a2 = a1;
  *(a2 + 8) = a3;
  *(a2 + 12) = a4;
  *(a2 + 16) = a5;
}

uint64_t PointLightComponent.__toCore(_:)(uint64_t *a1)
{
  RECGColorToColorGamut();
  REPointLightComponentSetColorGamut3F();
  REPointLightComponentSetIntensity();
  REPointLightComponentSetAttenuationRadius();
  REPointLightComponentSetAttenuationFalloffExponent();
  return RENetworkMarkComponentDirty();
}

double PointLightComponent.Shadow.init()@<D0>(uint64_t a1@<X8>)
{
  result = 2048.00048;
  *a1 = 0x40A000003F800000;
  *(a1 + 8) = 3;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  return result;
}

void PointLightComponent.Shadow.init(depthBias:)(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  *(a1 + 4) = 1084227584;
  *(a1 + 8) = 3;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
}

uint64_t static PointLightComponent.Shadow.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  REPointLightShadowMapComponentGetDepthBias();
  v4 = v3;
  if (REPointLightShadowMapComponentGetCullModeEx())
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  ZNear = REPointLightShadowMapComponentGetZNear();
  result = REPointLightShadowMapComponentGetZFar();
  *a2 = v4;
  *(a2 + 4) = 1084227584;
  *(a2 + 8) = v5;
  *(a2 + 12) = 0;
  *(a2 + 16) = ZNear ^ 1;
  *(a2 + 20) = 0;
  *(a2 + 24) = result ^ 1;
  return result;
}

int *PointLightComponent.Shadow.zNear.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 4);
  if (v3)
  {
    v2 = 0;
  }

  *(v1 + 12) = v2;
  *(v1 + 16) = v3;
  return result;
}

int *PointLightComponent.Shadow.zFar.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 4);
  if (v3)
  {
    v2 = 0;
  }

  *(v1 + 20) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t PointLightComponent.Shadow.__toCore(_:)(void *a1)
{
  REPointLightShadowMapComponentSetDepthBias();
  REPointLightShadowMapComponentSetZNear();
  REPointLightShadowMapComponentSetZFar();
  RENetworkMarkComponentDirty();
  return REPointLightShadowMapComponentSetCullMode();
}

float key path getter for PointLightComponent.attenuationFalloffExponent : PointLightComponent@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

float key path setter for PointLightComponent.attenuationFalloffExponent : PointLightComponent(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

float (*PointLightComponent.attenuationFalloffExponent.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return PointLightComponent.attenuationFalloffExponent.modify;
}

float PointLightComponent.attenuationFalloffExponent.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 16) = result;
  return result;
}

_BYTE *(*PointLightComponent.Shadow.cullModeOverride.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return DirectionalLightComponent.Shadow.cullModeOverride.modify;
}

BOOL static PointLightComponent.Shadow.ShadowClippingPlane.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4))
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

void PointLightComponent.Shadow.zNear.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 12);
  }

  *a1 = v3;
  *(a1 + 4) = v2;
}

uint64_t *(*PointLightComponent.Shadow.zNear.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 12);
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v2;
  return PointLightComponent.Shadow.zNear.modify;
}

uint64_t *PointLightComponent.Shadow.zNear.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 2);
  v3 = *(result + 12);
  if (v3)
  {
    v2 = 0;
  }

  *(v1 + 12) = v2;
  *(v1 + 16) = v3;
  return result;
}

void PointLightComponent.Shadow.zFar.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 20);
  }

  *a1 = v3;
  *(a1 + 4) = v2;
}

uint64_t *(*PointLightComponent.Shadow.zFar.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 20);
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v2;
  return PointLightComponent.Shadow.zFar.modify;
}

uint64_t *PointLightComponent.Shadow.zFar.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 2);
  v3 = *(result + 12);
  if (v3)
  {
    v2 = 0;
  }

  *(v1 + 20) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t PointLightComponent.Shadow.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  v9 = *(v1 + 8);
  v10 = *(v1 + 12);
  v11 = *(v1 + 16);
  v12 = *(v1 + 20);
  v13 = *(v1 + 24);
  v6.n128_u64[0] = *v1;
  v21 = v6;
  v24 = v6.n128_u64[0];
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C189FFC0;
  *(v14 + 32) = 0x6169426874706564;
  *(v14 + 40) = 0xE900000000000073;
  v15 = MEMORY[0x1E69E6448];
  *(v14 + 48) = v21.n128_u32[0];
  *(v14 + 72) = v15;
  *(v14 + 80) = 0xD000000000000010;
  *(v14 + 88) = 0x80000001C18DE1F0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
  *(v14 + 96) = v9;
  *(v14 + 120) = v16;
  *(v14 + 128) = 0x7261654E7ALL;
  *(v14 + 136) = 0xE500000000000000;
  if (v11)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  *(v14 + 144) = v17;
  *(v14 + 148) = v11;
  *(v14 + 168) = &type metadata for PointLightComponent.Shadow.ShadowClippingPlane;
  *(v14 + 176) = 1918977658;
  *(v14 + 184) = 0xE400000000000000;
  *(v14 + 216) = &type metadata for PointLightComponent.Shadow.ShadowClippingPlane;
  if (v13)
  {
    v18 = 0;
  }

  else
  {
    v18 = v12;
  }

  *(v14 + 192) = v18;
  *(v14 + 196) = v13;
  v19 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v22);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

BOOL specialized static PointLightComponent.Shadow.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  v8 = *(a1 + 24);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (v4 == 3)
  {
    if (v9 != 3)
    {
      return 0;
    }

    goto LABEL_11;
  }

  result = 0;
  if (v9 != 3 && v4 == v9)
  {
LABEL_11:
    if (v6)
    {
      if (!*(a2 + 16))
      {
        return 0;
      }
    }

    else
    {
      if (v5 != *(a2 + 12))
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    if ((v8 & 1) == 0)
    {
      if (v7 != *(a2 + 20))
      {
        v11 = 1;
      }

      return (v11 & 1) == 0;
    }

    return (*(a2 + 24) & 1) != 0;
  }

  return result;
}

BOOL specialized static PointLightComponent.== infix(_:_:)(float *a1, float *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  v8 = static _CFObject.== infix(_:_:)();
  result = 0;
  if ((v8 & 1) != 0 && v2 == v5 && v3 == v6)
  {
    return v4 == v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PointLightComponent.Shadow(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PointLightComponent.Shadow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t one-time initialization function for noTargetSceneIdentifier()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for UUID();
  __swift_allocate_value_buffer(v3, static __RKChangeSceneAction.noTargetSceneIdentifier);
  v4 = __swift_project_value_buffer(v3, static __RKChangeSceneAction.noTargetSceneIdentifier);
  UUID.init(uuidString:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static __RKChangeSceneAction.noTargetSceneIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for noTargetSceneIdentifier != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UUID();
  v3 = __swift_project_value_buffer(v2, static __RKChangeSceneAction.noTargetSceneIdentifier);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t key path setter for __RKChangeSceneAction.rootEntity : __RKChangeSceneAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double __RKChangeSceneAction.rootEntity.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t __RKChangeSceneAction.rootEntity.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t __RKChangeSceneAction.__allocating_init(rootEntity:targetSceneIdentifier:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(a1, a2);

  return v4;
}

uint64_t __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(a1, a2);

  return v2;
}

unint64_t implicit closure #1 in __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)()
{
  _StringGuts.grow(_:)(24);

  type metadata accessor for UUID();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v0);

  return 0xD000000000000016;
}

uint64_t __RKChangeSceneAction.perform(with:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v73 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DispatchQoS();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchTime();
  v68 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v62 - v8;
  v9 = type metadata accessor for UUID();
  v76 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = StaticString.description.getter();
  v78 = v12;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v14 = aBlock;
  v13 = v78;
  static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)();
  swift_beginAccess();
  v15 = *(v0 + 96);
  v16 = *(v0 + 104);
  *(v0 + 96) = 1;
  *(v0 + 104) = 1;
  aBlock = v15;
  LOBYTE(v78) = v16;
  __RKEntityAction.state.didset(&aBlock);
  v17 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (v18)
  {

    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v20 = SceneNullable;
      v21 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      v65 = v6;
      if (v21)
      {
        v22 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        v22 = Scene.init(coreScene:)(v20);
      }

      v29 = v22;
      v30 = Scene.__interactionService.getter();
      type metadata accessor for __RKEntityInteractionManager();
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        v32 = v31;
        v66 = v30;
        v67 = v29;
        v64 = v2;
        v33 = v76;
        v34 = *(v76 + 16);
        v62 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier;
        v63 = v34;
        v34(v11, v1 + OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier, v9);
        if (one-time initialization token for noTargetSceneIdentifier != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v9, static __RKChangeSceneAction.noTargetSceneIdentifier);
        v35 = static UUID.== infix(_:_:)();
        (*(v33 + 8))(v11, v9);
        if (v35)
        {
          aBlock = v14;
          v78 = v13;
          v36 = static os_log_type_t.error.getter();
          specialized InteractionsLogger.log(_:_:)(v36, &aBlock);

          v37 = *(v1 + 96);
          v38 = *(v1 + 104);
          *(v1 + 96) = 4;
          *(v1 + 104) = 1;
          aBlock = v37;
          LOBYTE(v78) = v38;
          __RKEntityAction.state.didset(&aBlock);
        }

        else
        {
          swift_beginAccess();
          v42 = *(v32 + 48);
          swift_beginAccess();
          if (*(v42 + 32) == 1)
          {
            aBlock = v14;
            v78 = v13;
            v43 = static os_log_type_t.info.getter();
            specialized InteractionsLogger.log(_:_:)(v43, &aBlock);
            v63(v11, v1 + v62, v9);
            type metadata accessor for RKChangeSceneActionSimulationTechnique(0);
            v44 = swift_allocObject();
          }

          else
          {
            aBlock = v14;
            v78 = v13;
            v45 = static os_log_type_t.info.getter();
            specialized InteractionsLogger.log(_:_:)(v45, &aBlock);
            v63(v11, v1 + v62, v9);
            type metadata accessor for RKChangeSceneActionRuntimeTechnique(0);
            v44 = swift_allocObject();
            *(v44 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_sceneSwitchEntity) = 0;
            *(v44 + OBJC_IVAR____TtC17RealityFoundation35RKChangeSceneActionRuntimeTechnique_subcomponent) = 0;
          }

          *(v44 + 16) = v18;
          (*(v33 + 32))(v44 + OBJC_IVAR____TtC17RealityFoundation33RKChangeSceneActionBasicTechnique_targetSceneIdentifier, v11, v9);
          swift_getObjectType();
          v46 = off_1F41123A8[0];

          swift_unknownObjectRetain();
          v47 = v46();
          swift_unknownObjectRelease();
          v48 = v64;
          if (v47)
          {
            type metadata accessor for OS_dispatch_queue();
            v63 = static OS_dispatch_queue.main.getter();
            v49 = v65;
            static DispatchTime.now()();
            + infix(_:_:)();
            v76 = *(v68 + 8);
            (v76)(v49, v75);
            v50 = swift_allocObject();
            swift_weakInit();
            v51 = swift_allocObject();
            v51[2] = v50;
            v51[3] = v14;
            v51[4] = v13;
            v81 = partial apply for closure #1 in __RKChangeSceneAction.perform(with:);
            v82 = v51;
            aBlock = MEMORY[0x1E69E9820];
            v78 = 1107296256;
            v79 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            v80 = &block_descriptor_17;
            v52 = _Block_copy(&aBlock);

            v53 = v69;
            static DispatchQoS.unspecified.getter();
            aBlock = MEMORY[0x1E69E7CC0];
            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
            v68 = v44;
            v54 = v71;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v55 = v74;
            v56 = v63;
            MEMORY[0x1C68F3C60](v74, v53, v54, v52);
            _Block_release(v52);

            (*(v73 + 8))(v54, v48);
            (*(v70 + 8))(v53, v72);
            (v76)(v55, v75);
            aBlock = v14;
            v78 = v13;
            v57 = static os_log_type_t.info.getter();
            specialized InteractionsLogger.log(_:_:)(v57, &aBlock);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            return 1;
          }

          aBlock = v14;
          v78 = v13;
          v59 = static os_log_type_t.error.getter();
          specialized InteractionsLogger.log(_:_:)(v59, &aBlock);

          v60 = *(v1 + 96);
          v61 = *(v1 + 104);
          *(v1 + 96) = 4;
          *(v1 + 104) = 1;
          aBlock = v60;
          LOBYTE(v78) = v61;
          __RKEntityAction.state.didset(&aBlock);

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        aBlock = v14;
        v78 = v13;
        v39 = static os_log_type_t.error.getter();
        specialized InteractionsLogger.log(_:_:)(v39, &aBlock);

        v40 = *(v1 + 96);
        v41 = *(v1 + 104);
        *(v1 + 96) = 4;
        *(v1 + 104) = 1;
        aBlock = v40;
        LOBYTE(v78) = v41;
        __RKEntityAction.state.didset(&aBlock);
      }
    }

    else
    {
      aBlock = v14;
      v78 = v13;
      v26 = static os_log_type_t.error.getter();
      specialized InteractionsLogger.log(_:_:)(v26, &aBlock);

      v27 = *(v1 + 96);
      v28 = *(v1 + 104);
      *(v1 + 96) = 4;
      *(v1 + 104) = 1;
      aBlock = v27;
      LOBYTE(v78) = v28;
      __RKEntityAction.state.didset(&aBlock);
    }
  }

  else
  {
    aBlock = v14;
    v78 = v13;
    v23 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v23, &aBlock);

    v24 = *(v1 + 96);
    v25 = *(v1 + 104);
    *(v1 + 96) = 4;
    *(v1 + 104) = 1;
    aBlock = v24;
    LOBYTE(v78) = v25;
    __RKEntityAction.state.didset(&aBlock);
  }

  return 0;
}

uint64_t closure #1 in __RKChangeSceneAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v11 = a2;
    v12 = a3;
    static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)();
    swift_beginAccess();
    v7 = *(v6 + 96);
    v8 = *(v6 + 104);
    *(v6 + 96) = 2;
    *(v6 + 104) = 1;
    v9 = v7;
    v10 = v8;

    __RKEntityAction.state.didset(&v9);
  }

  return result;
}

uint64_t __RKChangeSceneAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier, v3);
  v7 = type metadata accessor for __RKChangeSceneAction(0);
  swift_allocObject();

  v9 = specialized __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(v8, v6);

  a1[3] = v7;
  *a1 = v9;
  return result;
}

uint64_t __RKChangeSceneAction.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t __RKChangeSceneAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));
  v1 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t __RKChangeSceneAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));
  v1 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t specialized __RKChangeSceneAction.init(rootEntity:targetSceneIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity;
  *(v2 + OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity) = 0;
  if (a1)
  {

    _print_unlocked<A, B>(_:_:)();
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x1C68F3410](v7, v8);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v9 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v9);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  swift_beginAccess();
  *(v2 + v6) = a1;

  MEMORY[0x1EEE9AC00](v10);
  static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)();

  v11 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_targetSceneIdentifier;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v3 + v11, a2, v12);
  v14 = __RKEntityAction.init(targetEntity:)(0);
  (*(v13 + 8))(a2, v12);
  return v14;
}

double block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t type metadata accessor for __RKChangeSceneAction(uint64_t a1)
{
  result = type metadata singleton initialization cache for __RKChangeSceneAction;
  if (!type metadata singleton initialization cache for __RKChangeSceneAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for __RKChangeSceneAction(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t static __AssetRef.__fromCore(_:)@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  return static __AssetRef.__fromCore(_:)(a1, a3);
}

{
  outlined init with copy of Any(a1, v6);
  result = swift_dynamicCast();
  *a3 = v5;
  return result;
}

uint64_t static RemoteVideoPlayer.fromCore(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of Any(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19RERemoteVideoPlayer_pMd, &_sSo19RERemoteVideoPlayer_pMR);
  result = swift_dynamicCast();
  *a2 = v4;
  return result;
}

uint64_t static __ComponentTypeRef.__fromCore(_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, _DWORD *a3@<X8>)
{
  outlined init with copy of Any(a1, v7);
  a2(0);
  result = swift_dynamicCast();
  *a3 = v6;
  return result;
}

uint64_t static __EngineServiceMaskRef.__fromCore(_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, _DWORD *a3@<X8>)
{
  outlined init with copy of Any(a1, v7);
  a2(0);
  result = swift_dynamicCast();
  *a3 = v6;
  return result;
}

double static __SRTRef.__fromCore(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  outlined init with copy of Any(a1, v7);
  type metadata accessor for RESRT(0);
  swift_dynamicCast();
  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t RemoteVideoPlayer.__as<A>(_:)()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19RERemoteVideoPlayer_pMd, &_sSo19RERemoteVideoPlayer_pMR);
  return swift_dynamicCast();
}

uint64_t storeEnumTagSinglePayload for CoreComponentType.OriginType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void *destructiveInjectEnumTag for CoreComponentType.OriginType(void *result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 0;
  }

  *result = v2;
  return result;
}

Swift::Int32 __swiftcall log2RoundUp(_:)(Swift::Int32 a1)
{
  v2 = ceil(log2(a1));
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 2147483650.0)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t WorldComponent.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorldComponent.CoreWorldRoot();
  v2 = swift_allocObject();
  result = RECreateWorldRoot();
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance WorldComponent@<X0>(uint64_t *a2@<X8>)
{
  v3 = REWorldRootComponentCopyWorldRoot();
  type metadata accessor for WorldComponent.CoreWorldRoot();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  RERetain();
  *a2 = v4;

  return RERelease();
}

uint64_t static WorldComponent.__fromCore(_:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = REWorldRootComponentCopyWorldRoot();
  type metadata accessor for WorldComponent.CoreWorldRoot();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  RERetain();
  *a2 = v4;

  return RERelease();
}

uint64_t protocol witness for Component.__toCore(_:) in conformance WorldComponent(void *a1)
{
  REWorldRootComponentSetWorldRoot();
  RELinkedOnOrAfterFall2025OSVersions();
  REWorldRootComponentUseLegacyIBL();

  return RENetworkMarkComponentDirty();
}

uint64_t WorldComponent.__toCore(_:)(void *a1)
{
  REWorldRootComponentSetWorldRoot();
  RELinkedOnOrAfterFall2025OSVersions();
  REWorldRootComponentUseLegacyIBL();

  return RENetworkMarkComponentDirty();
}

uint64_t WorldComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  v10[1] = *v0;
  v10[0] = MEMORY[0x1E69E7CC0];
  v8 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd, &_sSaySSSg5label_yp5valuetGMR);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance WorldComponent(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v11 - v7;
  v11[1] = *v1;
  v11[0] = MEMORY[0x1E69E7CC0];
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd, &_sSaySSSg5label_yp5valuetGMR);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

id RERenderManager.device.getter()
{
  RenderDevice = RERenderManagerGetRenderDevice();

  return RenderDevice;
}

id RERenderManager.commandQueue.getter()
{
  RenderCommandQueue = RERenderManagerGetRenderCommandQueue();

  return RenderCommandQueue;
}

uint64_t RERenderManager.createRenderFrameSettings()(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(*(v2 + 16));
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v4;
  return result;
}

id protocol witness for __RenderService.device.getter in conformance RERenderManager()
{
  RenderDevice = RERenderManagerGetRenderDevice();

  return RenderDevice;
}

id protocol witness for __RenderService.commandQueue.getter in conformance RERenderManager()
{
  RenderCommandQueue = RERenderManagerGetRenderCommandQueue();

  return RenderCommandQueue;
}

uint64_t HasTransform.setTransformMatrix(_:relativeTo:)(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  type metadata accessor for Entity();
  *v7.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v5);
  v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, a2.f32[0]), v8, *a2.f32, 1), v9, a2, 2), v10, a2, 3);
  v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, a3.f32[0]), v8, *a3.f32, 1), v9, a3, 2), v10, a3, 3);
  v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, a4.f32[0]), v8, *a4.f32, 1), v9, a4, 2), v10, a4, 3);
  v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, a5.f32[0]), v8, *a5.f32, 1), v9, a5, 2), v10, a5, 3);
  HasTransform.transform.getter();
  v11 = v16;
  v11.n128_u32[3] = 0;
  v14 = v11;
  REDecomposeMatrix();
  v12.n128_u64[0] = simd_float4x4.scale.getter(v22, v20, v18);
  return HasTransform.transform.setter(v12, 0, v14);
}

double HasTransform.transform.getter()
{
  (*(*v0 + 96))(&v3);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(&v4);
  v1 = v4;

  if ((v5 & 1) == 0)
  {
    return v1;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static Transform.identity;
}

__n128 HasTransform.convert(transform:from:)(uint64_t a1, __n128 a2, float32x4_t a3, __n128 a4, uint64_t a5)
{
  v11 = a4.n128_f64[0];
  v13 = a2.n128_f32[0];
  v8 = type metadata accessor for Entity();
  static HasTransform.conversionMatrix<A, B>(from:to:)(a1, v5, v9, v8, a5);
  specialized simd_float4x4.init(translation:rotation:scale:)(v11, a3, v13);
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v14 = result;
    swift_once();
    return v14;
  }

  return result;
}

double HasTransform.orientation(relativeTo:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for identity != -1)
  {
    v4 = a1;
    v5 = a2;
    swift_once();
    a1 = v4;
    a2 = v5;
  }

  HasTransform.convert(transform:to:)(a1, a2, static Transform.identity, xmmword_1EBEB2BB0, xmmword_1EBEB2BC0);
  return v2;
}

__n128 HasTransform.scale(relativeTo:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Entity();
  static HasTransform.conversionMatrix<A, B>(from:to:)(v2, a1, v6, a2, v5);
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v8 = result;
    swift_once();
    return v8;
  }

  return result;
}

double static HasTransform.conversionMatrix<A, B>(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a1 == a2)
    {
      *&result = 1065353216;
      return result;
    }

    v7 = *(a1 + 16);

    if (MEMORY[0x1C69004D0](v7))
    {
      RETransformServiceGetWorldMatrix4x4F();
    }

    else
    {
      RETransformComponentGetComponentType();
      if (!REEntityGetComponentByClass())
      {
        v20 = HasHierarchy.parent.getter();
        if (!v20)
        {

          v26 = *zmmword_1C1887630;
          if (a2)
          {
LABEL_12:
            v9 = *(a2 + 16);

            if (MEMORY[0x1C69004D0](v9))
            {
              RETransformServiceGetWorldMatrix4x4F();
            }

            else
            {
              RETransformComponentGetComponentType();
              if (!REEntityGetComponentByClass())
              {
                v15 = HasHierarchy.parent.getter();
                if (!v15)
                {

                  v14 = *zmmword_1C1887630;
                  goto LABEL_25;
                }

                *v16.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v15, 0);
                v24 = v17;
                v25 = v16;
                v22 = v19;
                v23 = v18;

LABEL_17:

                v14.columns[1] = v24;
                v14.columns[0] = v25;
                v14.columns[3] = v22;
                v14.columns[2] = v23;
LABEL_25:
                v27 = __invert_f4(v14);
                *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27.columns[0], v26.f32[0]), v27.columns[1], *v26.f32, 1), v27.columns[2], v26, 2), v27.columns[3], v26, 3).u64[0];
                return result;
              }

              RETransformComponentGetWorldMatrix4x4F();
            }

            v24 = v11;
            v25 = v10;
            v22 = v13;
            v23 = v12;
            goto LABEL_17;
          }

LABEL_24:
          v14 = *zmmword_1C1887630;
          goto LABEL_25;
        }

        *v21.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v20, 0);
        v26 = v21;

LABEL_11:

        if (a2)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }

      RETransformComponentGetWorldMatrix4x4F();
    }

    v26 = v8;
    goto LABEL_11;
  }

  *&result = 1065353216;
  v26 = *zmmword_1C1887630;
  if (a2)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t HasTransform.transform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = 0;
  v4 = (*(*v3 + 112))(v6);
  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v7);
  return v4(v6, 0);
}

void (*HasTransform.transform.modify(void *a1, uint64_t a2, uint64_t a3))(__n128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  *&v9 = HasTransform.transform.getter();
  *v8 = v9;
  v8[1] = v10;
  v8[2] = v11;
  return HasTransform.transform.modify;
}

void HasTransform.transform.modify(__n128 **a1)
{
  v1 = *a1;
  HasTransform.transform.setter(**a1, (*a1)[1], (*a1)[2]);

  free(v1);
}

uint64_t HasTransform.scale.setter(__n128 a1)
{
  HasTransform.transform.getter();

  return HasTransform.transform.setter(a1, v1, v2);
}

void (*HasTransform.scale.modify(void *a1, uint64_t a2, uint64_t a3))(__n128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  *&v9 = HasTransform.transform.getter();
  v8[1] = v10;
  v8[2] = v11;
  *v8 = v9;
  return HasTransform.scale.modify;
}

void HasTransform.scale.modify(__n128 **a1)
{
  v1 = *a1;
  HasTransform.transform.setter(**a1, (*a1)[1], (*a1)[2]);

  free(v1);
}

uint64_t HasTransform.setScale(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  type metadata accessor for Entity();
  *v4.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v2);
  v8 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v4, a2.f32[0]), 0, v5), 0, v6), 0, v7);
  v9 = vmulq_f32(v4, 0);
  v10.n128_u64[0] = simd_float4x4.scale.getter(v8, vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(v9, v5, *a2.f32, 1), 0, v6), 0, v7), vmlaq_f32(vmlaq_laneq_f32(vmlaq_f32(v9, 0, v5), v6, a2, 2), 0, v7));
  v15 = v10;
  HasTransform.transform.getter();

  return HasTransform.transform.setter(v15, v11, v12);
}

uint64_t HasTransform.position.setter(__n128 a1)
{
  v1.n128_f64[0] = HasTransform.transform.getter();

  return HasTransform.transform.setter(v1, v2, a1);
}

void (*HasTransform.position.modify(void *a1, uint64_t a2, uint64_t a3))(__n128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  *&v9 = HasTransform.transform.getter();
  v8[1] = v9;
  v8[2] = v10;
  *v8 = v11;
  return HasTransform.position.modify;
}

void HasTransform.position.modify(__n128 **a1)
{
  v1 = *a1;
  HasTransform.transform.setter((*a1)[1], (*a1)[2], **a1);

  free(v1);
}

double HasTransform.position(relativeTo:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Entity();
  *v7.i64 = static HasTransform.conversionMatrix<A, B>(from:to:)(v2, a1, v6, a2, v5);

  return simd_float4x4.transform(position:)(0, v7, v8, v9, v10);
}

uint64_t HasTransform.setPosition(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  type metadata accessor for Entity();
  *v4.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v2);
  v8.n128_f64[0] = simd_float4x4.transform(position:)(a2, v4, v5, v6, v7);
  v13 = v8;
  v9.n128_f64[0] = HasTransform.transform.getter();

  return HasTransform.transform.setter(v9, v10, v13);
}

uint64_t HasTransform.orientation.setter(__n128 a1)
{
  v1.n128_f64[0] = HasTransform.transform.getter();

  return HasTransform.transform.setter(v1, a1, v2);
}

void (*HasTransform.orientation.modify(void *a1, uint64_t a2, uint64_t a3))(__n128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  *&v9 = HasTransform.transform.getter();
  v8[1] = v9;
  v8[2] = v10;
  *v8 = v11;
  return HasTransform.orientation.modify;
}

void HasTransform.orientation.modify(__n128 **a1)
{
  v1 = *a1;
  HasTransform.transform.setter((*a1)[1], **a1, (*a1)[2]);

  free(v1);
}

__n128 HasTransform.convert(transform:to:)(uint64_t a1, uint64_t a2, __n128 a3, float32x4_t a4, __n128 a5)
{
  v11 = a5.n128_f64[0];
  v13 = a3.n128_f32[0];
  v8 = type metadata accessor for Entity();
  static HasTransform.conversionMatrix<A, B>(from:to:)(v5, a1, v9, a2, v8);
  specialized simd_float4x4.init(translation:rotation:scale:)(v11, a4, v13);
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v14 = result;
    swift_once();
    return v14;
  }

  return result;
}

uint64_t HasTransform.setOrientation(_:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  type metadata accessor for Entity();
  _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v2);
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized simd_float4x4.init(translation:rotation:scale:)(0.0, a2, 1.0);
  REMakeSRTFromMatrix();
  v9 = v4;
  v5.n128_f64[0] = HasTransform.transform.getter();

  return HasTransform.transform.setter(v5, v9, v6);
}

uint64_t HasTransform.convert(normal:from:)(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t (*a5)(__n128, __n128, __n128, __n128, __n128))
{
  v8 = type metadata accessor for Entity();
  v10.n128_f64[0] = static HasTransform.conversionMatrix<A, B>(from:to:)(a1, v5, v9, v8, a2);

  return a5(a3, v10, v11, v12, v13);
}

double HasTransform.convert(direction:from:)(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v6 = type metadata accessor for Entity();
  *v8.i64 = static HasTransform.conversionMatrix<A, B>(from:to:)(a1, v3, v7, v6, a2);
  *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, a3.f32[0]), v9, *a3.f32, 1), v10, a3, 2).u64[0];
  return result;
}

double HasTransform.convert(direction:to:)(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v6 = type metadata accessor for Entity();
  *v8.i64 = static HasTransform.conversionMatrix<A, B>(from:to:)(v3, a1, v7, a2, v6);
  *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, a3.f32[0]), v9, *a3.f32, 1), v10, a3, 2).u64[0];
  return result;
}

uint64_t HasTransform.convert(position:to:)(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t (*a5)(__n128, __n128, __n128, __n128, __n128))
{
  v8 = type metadata accessor for Entity();
  v10.n128_f64[0] = static HasTransform.conversionMatrix<A, B>(from:to:)(v5, a1, v9, a2, v8);

  return a5(a3, v10, v11, v12, v13);
}

BOOL HasTransform.isMinusZForward.getter()
{
  REMeshComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 0;
  }

  REAmbientLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REAREnvironmentProbeComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  RECustomMatrixCameraComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REDirectionalLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REImageBasedLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  RELightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REListenerComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REOrthographicCameraComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REPerspectiveCameraComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REPointLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  RERectAreaLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REShadowMapComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  RESpotLightComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    return 1;
  }

  REAudioPlayerComponentGetComponentType();
  return REEntityGetComponentByClass() != 0;
}

uint64_t HasTransform.look(at:from:upVector:relativeTo:forward:)(uint64_t a1, char *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v7 = *a2;
  v8.n128_f64[0] = HasTransform.transform.getter();
  v46 = v8;
  type metadata accessor for Entity();
  *v9.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v5);
  v51 = v9;
  v53 = v10;
  v56 = v11;
  v47 = v12;
  *v13.i64 = simd_float4x4.transform(position:)(a3, v9, v10, v11, v12);
  v49 = v13;
  *v14.i64 = simd_float4x4.transform(position:)(a4, v51, v53, v56, v47);
  v15 = v14;
  v16 = vsubq_f32(v49, v14);
  v17 = vmulq_f32(v16, v16);
  v18 = v17.f32[2] + vaddv_f32(*v17.f32);
  if (v18 >= 1.0e-10)
  {
    v22 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, a5.f32[0]), v53, *a5.f32, 1), v56, a5, 2);
    v23 = v18;
    v24 = vrsqrte_f32(LODWORD(v18));
    v25 = vmul_f32(v24, vrsqrts_f32(LODWORD(v23), vmul_f32(v24, v24)));
    v26 = vmulq_n_f32(v16, vmul_f32(v25, vrsqrts_f32(LODWORD(v23), vmul_f32(v25, v25))).f32[0]);
    if ((v7 & 1) == 0)
    {
      *v26.i8 = vsub_f32(0, *v26.i8);
      *&v26.i32[2] = 0.0 - *&v26.i32[2];
      v26.i32[3] = 0;
    }

    v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
    v28 = vmlaq_f32(vmulq_f32(v27, vnegq_f32(v22)), v26, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
    v29 = vmulq_f32(v28, v28);
    if ((v29.f32[1] + (v29.f32[2] + v29.f32[0])) < 1.0e-10)
    {
      v54 = v26;
      v52 = v27;
      HasTransform.transform.getter();
      v31 = v30;
      v32 = vmulq_f32(v30, xmmword_1C1899C90);
      v33 = vnegq_f32(v32);
      v34 = vtrn2q_s32(v32, vtrn1q_s32(v32, v33));
      v35 = vrev64q_s32(v32);
      v35.i32[0] = v33.i32[1];
      v35.i32[3] = v33.i32[2];
      v36 = vmlaq_f32(vmlaq_f32(vextq_s8(v32, v33, 8uLL), 0, vextq_s8(v34, v34, 8uLL)), 0, v35);
      v37 = vnegq_f32(v36);
      v38 = vtrn2q_s32(v36, vtrn1q_s32(v36, v37));
      v39 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v36, v37, 8uLL), *v31.f32, 1), vextq_s8(v38, v38, 8uLL), v31.f32[0]);
      v40 = vrev64q_s32(v36);
      v40.i32[0] = v37.i32[1];
      v40.i32[3] = v37.i32[2];
      v41 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v36, v31, 3), v40, v31, 2), v39);
      v42 = vmlaq_f32(vmulq_f32(v52, vnegq_f32(v41)), v54, vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL));
      v43 = vmulq_f32(v42, v42);
      if ((v43.f32[1] + (v43.f32[2] + v43.f32[0])) < 1.0e-10)
      {
        HasTransform.isMinusZForward.getter();
      }
    }

    REMakeSRTFromMatrix();
    if (one-time initialization token for identity != -1)
    {
      v55 = v21;
      v58 = v20;
      swift_once();
      v21 = v55;
      v20 = v58;
    }

    v19 = v46;
  }

  else
  {
    v57 = v15;
    v19.n128_f64[0] = HasTransform.transform.getter();
    v21 = v57;
  }

  return HasTransform.transform.setter(v19, v20, v21);
}

uint64_t HasTransform.move(to:relativeTo:)(uint64_t a1, __n128 a2, float32x4_t a3, __n128 a4)
{
  specialized simd_float4x4.init(translation:rotation:scale:)(a4.n128_f64[0], a3, a2.n128_f32[0]);

  return HasTransform.move(to:relativeTo:)(a1);
}

uint64_t HasTransform.move(to:relativeTo:)(uint64_t a1)
{
  type metadata accessor for Entity();
  _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v1);
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v9 = v3;
    v7 = v5;
    v8 = v4;
    swift_once();
    v5 = v7;
    v4 = v8;
    v3 = v9;
  }

  return HasTransform.transform.setter(v3, v4, v5);
}

uint64_t HasTransform.move(to:relativeTo:duration:timingFunction:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5, float32x4_t a6, __n128 a7, double a8)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 4);
  v13 = *(a2 + 20);
  *v14.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(a7.n128_f64[0], a6, a5.n128_f32[0]);
  v19[0] = v10;
  v19[1] = v11;
  v20 = v12;
  v21 = v13;
  return HasTransform.move(to:relativeTo:duration:timingFunction:)(a1, v19, v14, v15, v16, v17, a8);
}

uint64_t HasTransform.move(to:relativeTo:duration:timingFunction:)(uint64_t a1, uint64_t *a2, float32x4_t a3, int32x4_t a4, int8x16_t a5, __n128 a6, double a7)
{
  v35 = a6.n128_f64[0];
  v40 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 4);
  v13 = *(a2 + 20);
  *v14.i8 = simd_float4x4.scale.getter(a3, a4, a5);
  v33 = v14;
  v37 = 0u;
  REDecomposeMatrix();
  v17 = 0u;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
    v17 = 0u;
  }

  v15.f32[0] = fabsf(*v33.i32);
  v16.i64[0] = 0x3400000034000000;
  v18 = vdupq_lane_s32(*&vcgtq_f32(v16, v15), 0);
  v19 = v33;
  v19.i32[0] = 872415232;
  v20 = vbslq_s8(v18, v19, v33);
  *v19.i32 = fabsf(*&v20.i32[1]);
  v21 = vdupq_lane_s32(*&vcgtq_f32(v16, v19), 0);
  v22 = v20;
  v22.i32[1] = 872415232;
  v23 = vbslq_s8(v21, v22, v20);
  *v21.i32 = fabsf(*&v23.i32[2]);
  v24 = v23;
  v24.i32[2] = 872415232;
  specialized simd_float4x4.init(translation:rotation:scale:)(v35, v17, *vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v16, v21), 0), v24, v23).i32);
  type metadata accessor for Entity();
  _s10RealityKit12HasTransformPAAE16conversionMatrix16fromLocalSpaceOf08toParentiJ0So13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(a1, v7);
  REMakeSRTFromMatrix();
  v34 = v26;
  v36 = v25;
  v32 = v27;
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RETransformComponentGetLocalUnanimatedSRT();
  *&v37 = v10;
  *(&v37 + 1) = v11;
  v38 = v12;
  v39 = v13;
  return HasTransform.animateTransform(from:to:duration:timingFunction:)(&v37, v28, v29, v30, v36, v34, v32, a7);
}

uint64_t HasTransform.animateTransform(from:to:duration:timingFunction:)(uint64_t a1, __n128 a2, float32x4_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, double a8)
{
  v23 = a4.n128_f64[0];
  v25 = a2.n128_f32[0];
  v34 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  if ((*(*v8 + 120))())
  {

    HasTransform.transform.getter();
    HasTransform.transform.setter(a5, a6, a7);
    String.utf8CString.getter();
    REBindPointCreateReferenceForEntityAnimatedValuesSRT();

    REBindPointSetOverrideEnabled();
    REBindPointSetSRT();
    *v35.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(a7.n128_f64[0], a6, a5.n128_f32[0]);
    __invert_f4(v35);
    specialized simd_float4x4.init(translation:rotation:scale:)(v23, a3, v25);
    REMakeSRTFromMatrix();
    RESRTIdentity();
    RETimelineDefinitionCreateFromToBySRTAnimation();
    RETimelineDefinitionSetSRTFromValue();
    RETimelineDefinitionSetSRTToValue();
    RETimelineDefinitionSetDuration();
    String.utf8CString.getter();
    RETimelineDefinitionSetTargetPath();

    RETimelineDefinitionSetFillMode();
    RETimelineDefinitionSetAdditive();
    v29 = v9;
    v30 = v10;
    LODWORD(v31) = v11;
    BYTE4(v31) = v12;
    AnimationTimingFunction.coreEasingFunction.getter();
    if (*(v13 + 16))
    {
      RETimelineDefinitionSetEasingFunctionEx();
    }

    v14 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v14 + 120, &v29);
    v15 = v32;
    v16 = v33;
    __swift_project_boxed_opaque_existential_1(&v29, v32);
    (*(v16 + 32))(v15, v16);
    TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
    __swift_destroy_boxed_opaque_existential_1(&v29);
    REAnimationComponentGetComponentType();
    result = REEntityGetOrAddComponentByClass();
    if (TimelineAsset)
    {
      v29 = 2;
      LODWORD(v30) = 4352;
      v31 = "SRTFROMTO";
      LOBYTE(v32) = 0;
      v19 = REAnimationComponentPlay();
      type metadata accessor for AnimationPlaybackController();
      swift_allocObject();

      v21 = AnimationPlaybackController.init(entity:identifier:withObservation:)(v20, v19, 1);
      RERelease();

      RERelease();
      REBindPointDestroy();
      return v21;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for AnimationPlaybackController();
    swift_allocObject();

    return AnimationPlaybackController.init(entity:identifier:withObservation:)(v22, 0, 1);
  }

  return result;
}

double HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for Entity();
  static HasTransform.conversionMatrix<A, B>(from:to:)(v4, a2, v8, a4, v7);
  REEntityComputeMeshBounds();
  return result;
}

RealityFoundation::ReferenceObjectAR_optional __swiftcall __RealityFileARReferenceProvidingPlugin.fetchReferenceObject(group:name:)(Swift::String group, Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v5 = group._object;
  v6 = group._countAndFlagsBits;
  v7 = v2;
  v8 = __RealityFileARReferenceProvidingPlugin.arReferenceRawData(group:name:)(group._countAndFlagsBits, group._object, name._countAndFlagsBits, name._object);
  if (v9 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v11 = v8;
    v12 = v9;
    v21 = v7;
    v13 = objc_allocWithZone(MEMORY[0x1E69864C8]);
    outlined copy of Data._Representation(v11, v12);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v15 = MEMORY[0x1C68F3280](countAndFlagsBits, object);
    v10 = [v13 initWithArchiveData:isa name:v15 error:0];

    outlined consume of Data?(v11, v12);
    v16._countAndFlagsBits = 47;
    v16._object = 0xE100000000000000;
    if (String.hasSuffix(_:)(v16) || (v17 = 47, v18 = 0xE100000000000000, v19._countAndFlagsBits = 47, v19._object = 0xE100000000000000, String.hasPrefix(_:)(v19)))
    {
      v17 = 0;
      v18 = 0xE000000000000000;
    }

    MEMORY[0x1C68F3410](v17, v18);

    MEMORY[0x1C68F3410](countAndFlagsBits, object);

    v20 = MEMORY[0x1C68F3280](v6, v5);

    [v10 setName_];
    outlined consume of Data?(v11, v12);

    v7 = v21;
  }

  *v7 = v10;
  result.is_nil = v9;
  result.value.object.super.isa = v8;
  return result;
}

void __RealityFileARReferenceProvidingPlugin.fetchReferenceImage(group:name:physicalWidth:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  if (a6 <= 0.0)
  {
    goto LABEL_9;
  }

  v12 = __RealityFileARReferenceProvidingPlugin.arReferenceRawData(group:name:)(a1, a2, a3, a4);
  if (v13 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v22 = v12;
  v23 = v13;
  v14 = specialized static CGImageRef.image(with:)(v12, v13);
  if (!v14)
  {
    outlined consume of Data?(v22, v23);
LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x1E69864C0]) initWithCGImage:v14 orientation:1 physicalWidth:a6];
  v17._countAndFlagsBits = 47;
  v17._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v17) || (v18 = 47, v19 = 0xE100000000000000, v20._countAndFlagsBits = 47, v20._object = 0xE100000000000000, String.hasPrefix(_:)(v20)))
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v18, v19);

  MEMORY[0x1C68F3410](a3, a4);

  v21 = MEMORY[0x1C68F3280](a1, a2);

  [v16 setName_];
  outlined consume of Data?(v22, v23);

LABEL_10:
  *a5 = v16;
}

uint64_t __RealityFileARReferenceProvidingPlugin.arReferenceRawData(group:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10._countAndFlagsBits = 47;
  v10._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v10) || (v11 = 47, v12 = 0xE100000000000000, v13._countAndFlagsBits = 47, v13._object = 0xE100000000000000, String.hasPrefix(_:)(v13)))
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v11, v12);

  MEMORY[0x1C68F3410](a3, a4);

  v14 = a2;
  swift_beginAccess();
  v15 = *(v5 + 72);
  if (*(v15 + 16) && (, v16 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v14), v18 = v17, , (v18 & 1) != 0))
  {
    v19 = *(v15 + 56) + 16 * v16;
    v20 = *v19;
    outlined copy of Data._Representation(*v19, *(v19 + 8));

    return v20;
  }

  else
  {

    return 0;
  }
}

uint64_t __RealityFileARReferenceProvidingPlugin.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ARReferenceProvidingPlugin.schemePrefix.getter in conformance __RealityFileARReferenceProvidingPlugin()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t ActionEvent.animationState.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(result + 76);
  v5 = v2 + *(result + 72);
  if (*(v5 + 8))
  {
    v6 = -1.0;
  }

  else
  {
    v6 = *v5;
  }

  if (*(v2 + v4 + 8))
  {
    v7 = -1.0;
  }

  else
  {
    v7 = *(v2 + v4);
  }

  v8 = v2 + *(result + 68);
  if (*(v8 + 8))
  {
    v9 = -1.0;
  }

  else
  {
    v9 = *v8;
  }

  v10 = *(v2 + *(result + 64));
  if (!v10)
  {
    goto LABEL_25;
  }

  result = RETimelineEventGetAnimatedType();
  if (result <= 3u)
  {
    if (result <= 1u)
    {
      if (result)
      {
        v11 = &_s17RealityFoundation14AnimationStateVySdGMd;
        v12 = &_s17RealityFoundation14AnimationStateVySdGMR;
        *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
        v13 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
      }

      else
      {
        v11 = &_s17RealityFoundation14AnimationStateVySfGMd;
        v12 = &_s17RealityFoundation14AnimationStateVySfGMR;
        *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
        v13 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
      }

      goto LABEL_30;
    }

    if (result == 2)
    {
      v11 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
      v12 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
      v13 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      goto LABEL_30;
    }

    if (result == 3)
    {
      v11 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
      v12 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
      v13 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      goto LABEL_30;
    }

LABEL_25:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if (result > 5u)
  {
    if (result == 6)
    {
      v11 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
      v12 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
      v13 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
      goto LABEL_30;
    }

    if (result == 7)
    {
      v11 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
      v12 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
      v13 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (result == 4)
  {
    v11 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
    v12 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
    *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
    v13 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    goto LABEL_30;
  }

  if (result != 5)
  {
    goto LABEL_25;
  }

  v11 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
  v12 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
  *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
  v13 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
LABEL_30:
  *(a2 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v13, v11, v12);
  result = swift_allocObject();
  *a2 = result;
  *(result + 16) = v9;
  *(result + 24) = v6;
  *(result + 32) = v7;
  *(result + 40) = v10;
  return result;
}

double ActionHandlerProtocol.actionUpdated(event:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ActionHandlerProtocol.actionEnded(event:)(a1, a2, a3, 2);
}

{
  return ActionHandlerProtocol.actionUpdated(event:)(a1, a2, a3);
}

uint64_t static ActionHandlerProtocol<>.__register(engine:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static EntityAction.__register()(AssociatedTypeWitness, AssociatedConformanceWitness);
  static EntityAction<>.__registerCodable()(AssociatedTypeWitness, AssociatedConformanceWitness, a6, a7, a8, a9);
  return static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5);
}

double ActionHandlerProtocol.actionEnded(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for ActionEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  return static EntityAction.__unsubscribe(from:_:)(&v11, *(a1 + *(v9 + 60)));
}

uint64_t ActionEventData.parameter<A>(type:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(v3 + 8))
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(*(AssociatedTypeWitness - 8) + 56);

    return v6(a3, 1, 1, AssociatedTypeWitness);
  }

  else if (*(v3 + 24))
  {
    v9 = *(v3 + 56);
    v8 = *(v3 + 64);
    v20 = *(v3 + 16);
    v21 = v8;
    v10 = swift_getAssociatedTypeWitness();
    v22 = &v19;
    v19 = type metadata accessor for Optional();
    v11 = *(v19 - 8);
    MEMORY[0x1EEE9AC00](v19);
    v13 = &v19 - v12;
    static EntityAction<>.loadParameter<A>(_:parameterType:eventID:)(v20, v9, 0, v9, &v19 - v12, v18, v21);
    v14 = *(v10 - 8);
    if ((*(v14 + 48))(v13, 1, v10) == 1)
    {
      (*(v11 + 8))(v13, v19);
      v23 = 0u;
      v24 = 0u;
    }

    else
    {
      *(&v24 + 1) = v10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
      (*(v14 + 32))(boxed_opaque_existential_1, v13, v10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v16 = swift_getAssociatedTypeWitness();
    v17 = swift_dynamicCast();
    return (*(*(v16 - 8) + 56))(a3, v17 ^ 1u, 1, v16);
  }

  else
  {
    return static EntityAction.loadParameter(_:eventID:)(0, a1, a2, a3);
  }
}

uint64_t static EntityAction<>.loadParameter<A>(_:parameterType:eventID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a4@<W3>, uint64_t a6@<X5>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v36 = a1;
  v37 = a10;
  v14 = type metadata accessor for Data.Deallocator();
  v35 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a6;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = AssociatedTypeWitness;
  if (a4)
  {
    v21 = *(*(AssociatedTypeWitness - 8) + 56);
    v22 = a8;
LABEL_5:

    return v21(v22, 1, 1, v20);
  }

  if (AssociatedTypeWitness != a2)
  {
    v21 = *(*(AssociatedTypeWitness - 8) + 56);
    v22 = a8;
    goto LABEL_5;
  }

  v24 = AssociatedTypeWitness;
  ParameterDataSize = RETimelineEventGetParameterDataSize();
  if (ParameterDataSize >= 1 && (v26 = ParameterDataSize, (ParameterData = RETimelineEventGetParameterData()) != 0))
  {
    v28 = ParameterData;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    (*(v35 + 104))(v16, *MEMORY[0x1E6969010], v14);
    v29 = specialized Data.init(bytesNoCopy:count:deallocator:)(v28, v26, v16);
    v31 = v30;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v29, v31);
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (swift_dynamicCast())
  {
    v32 = a8;
    v33 = 0;
  }

  else
  {
    v32 = a8;
    v33 = 1;
  }

  return (*(*(v24 - 8) + 56))(v32, v33, 1, v24);
}

uint64_t static EntityAction.loadParameter(_:eventID:)@<X0>(char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a3 & 1) == 0 && RETimelineEventGetSwiftParameter())
  {
    type metadata accessor for EntityActionParameterWrapper(0, a4, a5, v9);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = *(*v10 + 96);
      v12 = v10;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v20 = *(AssociatedTypeWitness - 8);
      (*(v20 + 16))(a6, v12 + v11, AssociatedTypeWitness);
      swift_unknownObjectRelease();
      v14 = *(v20 + 56);
      v15 = a6;
      v16 = 0;
      v17 = AssociatedTypeWitness;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v18 = swift_getAssociatedTypeWitness();
  v14 = *(*(v18 - 8) + 56);
  v17 = v18;
  v15 = a6;
  v16 = 1;
LABEL_6:

  return v14(v15, v16, 1, v17);
}

void *ActionEventData.action<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(v3 + 24);
  if (!v6)
  {
    return static EntityAction.load(_:)(a1, a2, MEMORY[0x1E6998DD8], a3);
  }

  v7 = *(v3 + 32);
  v17 = *(v3 + 40);
  v8 = *(v3 + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  static EntityAction<>.load(_:)(v8, v6, MEMORY[0x1E6998DB0], MEMORY[0x1E6998DA8], (&v17 - v11));
  v13 = *(v6 - 8);
  if ((*(v13 + 48))(v12, 1, v6) == 1)
  {
    (*(v10 + 8))(v12, v9);
    v19 = 0u;
    memset(v20, 0, 24);
    v18 = 0u;
  }

  else
  {
    *(&v19 + 1) = v6;
    *&v20[0] = v7;
    *(v20 + 8) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(v13 + 32))(boxed_opaque_existential_1, v12, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
  v16 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a3, v16 ^ 1u, 1, a1);
}

uint64_t EntityActionWrapper.__allocating_init(action:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t EntityActionWrapper.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t EntityActionParameterWrapper.__allocating_init(parameter:)(uint64_t a1)
{
  v2 = swift_allocObject();
  EntityActionParameterWrapper.init(parameter:)(a1);
  return v2;
}

uint64_t EntityActionParameterWrapper.init(parameter:)(uint64_t a1)
{
  v3 = *(*v1 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v3, a1, AssociatedTypeWitness);
  return v1;
}

uint64_t EntityActionParameterWrapper.deinit()
{
  v1 = *(*v0 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t EntityActionParameterWrapper.__deallocating_deinit()
{
  EntityActionParameterWrapper.deinit();

  return swift_deallocClassInstance();
}

__n128 ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *a9 = a1;
  v27 = type metadata accessor for ActionEvent(0, a19, a20, a4);
  (*(*(a19 - 8) + 32))(&a9[v27[9]], a2, a19);
  v28 = v27[10];
  swift_getAssociatedTypeWitness();
  v29 = type metadata accessor for Optional();
  (*(*(v29 - 8) + 32))(&a9[v28], a3, v29);
  *&a9[v27[11]] = a4;
  a9[v27[12]] = a5;
  *&a9[v27[13]] = a10;
  *&a9[v27[14]] = a11;
  *&a9[v27[15]] = a6;
  *&a9[v27[16]] = a7;
  v30 = &a9[v27[17]];
  *v30 = a8;
  v30[8] = a12 & 1;
  v31 = &a9[v27[18]];
  *v31 = a13;
  v31[8] = a14 & 1;
  v32 = &a9[v27[19]];
  *v32 = a15;
  v32[8] = a16 & 1;
  v33 = &a9[v27[20]];
  v34 = *(a17 + 48);
  *(v33 + 2) = *(a17 + 32);
  *(v33 + 3) = v34;
  *(v33 + 4) = *(a17 + 64);
  result = *(a17 + 16);
  *v33 = *a17;
  *(v33 + 1) = result;
  *&a9[v27[21]] = a18;
  return result;
}

double static EntityAction.__unsubscribe(from:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static AnimationResource.actionSubscriptions;
  if (!*(static AnimationResource.actionSubscriptions + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v7 & 1) == 0))
  {
    swift_endAccess();
    return result;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  swift_endAccess();
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(), (v10 & 1) == 0))
  {

    if (!*(v8 + 16))
    {
      goto LABEL_8;
    }

LABEL_11:
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v3, isUniquelyReferenced_nonNull_native);
    static AnimationResource.actionSubscriptions = v18;
    swift_endAccess();
    goto LABEL_12;
  }

  v11 = (*(v8 + 56) + 16 * v9);
  v12 = *v11;
  v13 = v11[1];

  v15 = static EntityAction.eventBus(_:)(a2, v14);
  MEMORY[0x1C68F9800](v15, v12, v13);
  specialized Dictionary._Variant.removeValue(forKey:)();
  if (*(v8 + 16))
  {
    goto LABEL_11;
  }

LABEL_8:
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(v3);
  swift_endAccess();

LABEL_12:

  return result;
}

uint64_t static ActionHandlerProtocol.__register(engine:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static EntityAction.__register()(AssociatedTypeWitness, AssociatedConformanceWitness);
  return static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5);
}

uint64_t static ActionHandlerProtocol.__registerCommon(engine:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  static ActionHandlerProtocol.subscribe(_:)(a1, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(AssociatedTypeWitness), (v10 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v26, "Handler for ");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v11);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v12 = v26[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static AnimationLogger.logger);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v23 = v26[0];
      v16 = swift_slowAlloc();
      v24 = a2;
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v12, v26);
      _os_log_impl(&dword_1C1358000, v14, v15, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v18 = v17;
      a2 = v24;
      MEMORY[0x1C6902A30](v18, -1, -1);
      MEMORY[0x1C6902A30](v16, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a2;
  v19[5] = a3;
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v20 + 24) = v19;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_s10RealityKit27AnimationPlaybackControllerC0A10Foundation15ActionEventDataVSbS2dAA8__EngineCSVAA6EntityCSgAD0G15HandlerProtocol_pSgIeggyyyygygr_AcFSbS2dAHSVAkMIegnnnnnnnnr_TRTA_0, v20, AssociatedTypeWitness, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v25;
  return swift_endAccess();
}

uint64_t static ActionHandlerProtocol.subscribe(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = 1;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static EntityAction.__subscribe(to:_:_:)(&v27, a1, partial apply for closure #1 in static ActionHandlerProtocol.subscribe(_:), v9, AssociatedTypeWitness, AssociatedConformanceWitness, v11);

  v27 = 2;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v27, a1, partial apply for closure #2 in static ActionHandlerProtocol.subscribe(_:), v12, AssociatedTypeWitness, AssociatedConformanceWitness, v13);

  v27 = 4;
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v27, a1, partial apply for closure #3 in static ActionHandlerProtocol.subscribe(_:), v14, AssociatedTypeWitness, AssociatedConformanceWitness, v15);

  v27 = 8;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v27, a1, partial apply for closure #4 in static ActionHandlerProtocol.subscribe(_:), v16, AssociatedTypeWitness, AssociatedConformanceWitness, v17);

  v27 = 16;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v27, a1, partial apply for closure #5 in static ActionHandlerProtocol.subscribe(_:), v18, AssociatedTypeWitness, AssociatedConformanceWitness, v19);

  v27 = 32;
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v27, a1, partial apply for closure #6 in static ActionHandlerProtocol.subscribe(_:), v20, AssociatedTypeWitness, AssociatedConformanceWitness, v21);

  v27 = 64;
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v27, a1, partial apply for closure #7 in static ActionHandlerProtocol.subscribe(_:), v22, AssociatedTypeWitness, AssociatedConformanceWitness, v23);

  v27 = 128;
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = v4;
  static EntityAction.__subscribe(to:_:_:)(&v27, a1, partial apply for closure #8 in static ActionHandlerProtocol.subscribe(_:), v24, AssociatedTypeWitness, AssociatedConformanceWitness, v25);
}

uint64_t creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, __n128)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13)
{
  v48 = a8;
  v49 = a7;
  v46 = a6;
  v47 = a4;
  v44 = a5;
  v45 = a1;
  v43 = a3;
  v50 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v40 = &v39 - v19;
  v21 = type metadata accessor for ActionEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
  v41 = *(v21 - 8);
  v42 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v39 - v26);
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v39 - v33;
  ActionEventData.action<A>()(AssociatedTypeWitness, AssociatedConformanceWitness, v27);
  if ((*(v28 + 48))(v27, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v25 + 8))(v27, v24);
    v36 = v50;
    *(v50 + 32) = 0;
    *v36 = 0u;
    v36[1] = 0u;
  }

  else
  {
    (*(v28 + 32))(v34, v27, AssociatedTypeWitness);
    (*(v28 + 16))(v31, v34, AssociatedTypeWitness);
    v37 = v45;

    v38 = v40;
    ActionEventData.parameter<A>(type:)(AssociatedTypeWitness, AssociatedConformanceWitness, v40);
    ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v37, v31, v38, v46, v43 & 1, v47, 0, 0, v23, a10, a11, 1, 0, 1, 0, 1, a2, v44, AssociatedTypeWitness, AssociatedConformanceWitness);

    (v49)(v23);
    (*(v41 + 8))(v23, v42);
    return (*(v28 + 8))(v34, AssociatedTypeWitness);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)(uint64_t *a1, _OWORD *a2, unsigned __int8 *a3, double *a4, double *a5, void *a6, void *a7, void *a8, uint64_t (*a9)(uint64_t, _OWORD *, void, void, void, void, double, double))
{
  v9 = *a1;
  v10 = a2[3];
  v13[2] = a2[2];
  v13[3] = v10;
  v13[4] = a2[4];
  v11 = a2[1];
  v13[0] = *a2;
  v13[1] = v11;
  return a9(v9, v13, *a3, *a6, *a7, *a8, *a4, *a5);
}

uint64_t static ActionHandlerProtocol.actionHandler(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ActionEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = *(a1 + v10[21]);
  swift_beginAccess();
  v12 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v14 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v12 + 56) + 40 * v13, &v44);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
  }

  swift_endAccess();
  outlined init with copy of ActionHandlerProtocol?(&v44, &v36);
  v15 = *(&v37 + 1);
  outlined destroy of ActionHandlerProtocol?(&v36);
  if (v15)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(AssociatedTypeWitness);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 16 * v19);
      swift_endAccess();
      v22 = *(a1 + v10[13]);
      v23 = *(a1 + v10[12]);
      v24 = *(a1 + v10[14]);
      v25 = *(a1 + v10[15]);
      v26 = *(a1 + v10[11]);
      v27 = (a1 + v10[20]);
      v41 = *a1;
      v28 = v27[3];
      v38 = v27[2];
      v39 = v28;
      v40 = v27[4];
      v29 = v27[1];
      v36 = *v27;
      v37 = v29;
      v35 = v23;
      v33 = v24;
      v34 = v22;
      v31 = v11;
      v32 = v25;
      v30 = v26;

      v21(v42, &v41, &v36, &v35, &v34, &v33, &v32, &v31, &v30);

      outlined destroy of ActionHandlerProtocol?(&v44);
      v44 = v42[0];
      v45 = v42[1];
      v46 = v43;
LABEL_8:
      v36 = v44;
      v37 = v45;
      *&v38 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v16 = swift_dynamicCast();
      return (*(*(a2 - 8) + 56))(a4, v16 ^ 1u, 1, a2);
    }
  }

  swift_endAccess();
  outlined destroy of ActionHandlerProtocol?(&v44);
  return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
}

uint64_t closure #1 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-v9];
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v10);
  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v11 + 32))(v14, v10, a3);
  (*(a4 + 24))(a1, a3, a4);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(a1 + *(type metadata accessor for ActionEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18) + 84));
  v22[3] = a3;
  v22[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v11 + 16))(boxed_opaque_existential_1, v14, a3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v22, v19);
  swift_endAccess();
  return (*(v11 + 8))(v14, a3);
}

double static EntityAction.__subscribe(to:_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = v7;
  v14 = *a1;
  if (!a2)
  {
    specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    swift_unownedRetainStrong();
  }

  v15 = swift_allocObject();
  swift_weakInit();

  _typeName(_:qualified:)();
  if (v14 > 15)
  {
    if (v14 > 63)
    {
      if (v14 == 64)
      {
        v37 = a5;
        v38 = a4;
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
        goto LABEL_22;
      }

      if (v14 == 128)
      {
        v37 = a5;
        v38 = a4;
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
        goto LABEL_22;
      }
    }

    else
    {
      if (v14 == 16)
      {
        v37 = a5;
        v38 = a4;
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
        goto LABEL_22;
      }

      if (v14 == 32)
      {
        v37 = a5;
        v38 = a4;
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
        goto LABEL_22;
      }
    }

LABEL_32:

    return result;
  }

  if (v14 > 3)
  {
    if (v14 == 4)
    {
      v37 = a5;
      v38 = a4;
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
      goto LABEL_22;
    }

    if (v14 == 8)
    {
      v37 = a5;
      v38 = a4;
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  if (v14 == 1)
  {
    v37 = a5;
    v38 = a4;
    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
    goto LABEL_22;
  }

  if (v14 != 2)
  {
    goto LABEL_32;
  }

  v37 = a5;
  v38 = a4;
  _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
LABEL_22:
  v16 = a3;
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v39 = v8;
  if (*(v20 + 16))
  {
    v22 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v23)
    {
      v24 = (*(v20 + 56) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = static EntityAction.eventBus(_:)(a2, v21);
      v21.n128_f64[0] = MEMORY[0x1C68F9800](v27, v25, v26);
    }
  }

  static EntityAction.eventBus(_:)(a2, v21);
  v28 = swift_allocObject();
  v28[2] = v37;
  v28[3] = a6;
  v28[4] = v15;
  v28[5] = v14;
  v28[6] = v16;
  v28[7] = v38;
  aBlock[4] = partial apply for dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
  aBlock[3] = &block_descriptor_18;
  v29 = _Block_copy(aBlock);

  String.utf8CString.getter();

  RETimelineEventFilter();

  v30 = REEventBusSubscribeWithMatch();
  v32 = v31;
  _Block_release(v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v20;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v32, v14, isUniquelyReferenced_nonNull_native);
  v34 = aBlock[0];
  swift_beginAccess();

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v40 = static AnimationResource.actionSubscriptions;
  static AnimationResource.actionSubscriptions = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v39, v35);
  static AnimationResource.actionSubscriptions = v40;
  swift_endAccess();

  return result;
}

uint64_t closure #2 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-v9];
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v10);
  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v11 + 32))(v14, v10, a3);
  (*(a4 + 32))(a1, a3, a4);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(a1 + *(type metadata accessor for ActionEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18) + 84));
  v22[3] = a3;
  v22[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v11 + 16))(boxed_opaque_existential_1, v14, a3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v22, v19);
  swift_endAccess();
  return (*(v11 + 8))(v14, a3);
}

uint64_t closure #3 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-v9];
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v10);
  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v11 + 32))(v14, v10, a3);
  (*(a4 + 40))(a1, a3, a4);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(a1 + *(type metadata accessor for ActionEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18) + 84));
  v22[3] = a3;
  v22[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v11 + 16))(boxed_opaque_existential_1, v14, a3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v22, v19);
  swift_endAccess();
  return (*(v11 + 8))(v14, a3);
}

uint64_t closure #4 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-v9];
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v10);
  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v11 + 32))(v14, v10, a3);
  (*(a4 + 48))(a1, a3, a4);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(a1 + *(type metadata accessor for ActionEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18) + 84));
  v22[3] = a3;
  v22[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v11 + 16))(boxed_opaque_existential_1, v14, a3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v22, v19);
  swift_endAccess();
  return (*(v11 + 8))(v14, a3);
}

uint64_t closure #5 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-v9];
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v10);
  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v11 + 32))(v14, v10, a3);
  (*(a4 + 56))(a1, a3, a4);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(a1 + *(type metadata accessor for ActionEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18) + 84));
  v22[3] = a3;
  v22[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v11 + 16))(boxed_opaque_existential_1, v14, a3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v22, v19);
  swift_endAccess();
  return (*(v11 + 8))(v14, a3);
}

uint64_t closure #6 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-v9];
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v10);
  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v11 + 32))(v14, v10, a3);
  (*(a4 + 64))(a1, a3, a4);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(a1 + *(type metadata accessor for ActionEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18) + 84));
  v22[3] = a3;
  v22[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v11 + 16))(boxed_opaque_existential_1, v14, a3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v22, v19);
  swift_endAccess();
  return (*(v11 + 8))(v14, a3);
}

uint64_t closure #7 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - v9 + 16;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v10);
  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(v11 + 32))(v14, v10, a3);
    (*(a4 + 72))(a1, a3, a4);
    (*(v11 + 8))(v14, a3);
  }

  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(a1 + *(type metadata accessor for ActionEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17) + 84));
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v21, v18);
  return swift_endAccess();
}

uint64_t closure #8 in static ActionHandlerProtocol.subscribe(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(a1 + *(type metadata accessor for ActionEvent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13) + 84));
  static ActionHandlerProtocol.actionHandler(_:)(a1, a3, v10);
  v15 = *(a3 - 8);
  if ((*(v15 + 48))(v10, 1, a3) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
  }

  else
  {
    *(&v20 + 1) = a3;
    v21 = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
    (*(v15 + 32))(boxed_opaque_existential_1, v10, a3);
  }

  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v19, v14);
  return swift_endAccess();
}

void static EntityAction.__register()(uint64_t a1, uint64_t a2)
{
  v4 = _typeName(_:qualified:)();
  v6 = v5;
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v6), (v9 & 1) != 0))
  {
    v12 = *(*(v7 + 56) + 16 * v8);
    swift_endAccess();
    if (v12 == a1)
    {
    }

    else
    {
      _StringGuts.grow(_:)(50);

      MEMORY[0x1C68F3410](v4, v6);
      MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18E6740);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v11 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v11);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = static AnimationResource.actionTypeMap;
    static AnimationResource.actionTypeMap = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, v4, v6, isUniquelyReferenced_nonNull_native);

    static AnimationResource.actionTypeMap = v13;
    swift_endAccess();
  }
}

double static EntityAction.subscribe(to:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  static EntityAction.__register()(a4, a5);
  v12 = v9;
  return static EntityAction.__subscribe(to:_:_:)(&v12, 0, a2, a3, a4, a5, v10);
}

uint64_t static EntityAction.unsubscribeAll()()
{
  v1 = v0;
  if (one-time initialization token for actionSubscriptions != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_beginAccess();
    v2 = static AnimationResource.actionSubscriptions;
    if (!*(static AnimationResource.actionSubscriptions + 16))
    {
      return swift_endAccess();
    }

    v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1);
    if ((v4 & 1) == 0)
    {
      return swift_endAccess();
    }

    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();

    v6 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    result = MEMORY[0x1C68FE250](*(v6 + 16));
    if (!result)
    {
      break;
    }

    v8 = result;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = v9;
LABEL_13:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = (*(v5 + 56) + ((v14 << 10) | (16 * v15)));
      MEMORY[0x1C68F9800](v8, *v16, v16[1]);
    }

    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        swift_beginAccess();
        specialized Dictionary.subscript.setter(0, v1);
        return swift_endAccess();
      }

      v12 = *(v5 + 64 + 8 * v14);
      ++v9;
      if (v12)
      {
        v9 = v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  __break(1u);
  return result;
}

void static EntityAction<>.__registerCodable()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = _typeName(_:qualified:)();
  v14 = v13;
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v14), (v17 & 1) != 0))
  {
    v21 = *(*(v15 + 56) + 56 * v16);
    swift_endAccess();
    if (v21 == a1)
    {
    }

    else
    {
      _StringGuts.grow(_:)(50);

      MEMORY[0x1C68F3410](v12, v14);
      MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18E6740);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v20 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v20);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    swift_endAccess();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = static AnimationResource.codableActionTypeMap;
    static AnimationResource.codableActionTypeMap = 0x8000000000000000;
    v23[0] = a1;
    v23[1] = a2;
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = AssociatedTypeWitness;
    v23[5] = a5;
    v23[6] = a6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v12, v14, isUniquelyReferenced_nonNull_native);

    static AnimationResource.codableActionTypeMap = v22;
    swift_endAccess();
  }
}

double static EntityAction<>.subscribe(to:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *a1;
  static EntityAction.__register()(a4, a5);
  static EntityAction<>.__registerCodable()(a4, a5, a6, a7, a8, a9);
  v19 = v16;
  return static EntityAction.__subscribe(to:_:_:)(&v19, 0, a2, a3, a4, a5, v17);
}

uint64_t static EntityAction<>.load(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(uint64_t, __n128)@<X5>, uint64_t (*a5)(uint64_t)@<X6>, void *a6@<X8>)
{
  v11 = type metadata accessor for Data.Deallocator();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a4(a1, v13);
  if (v16 >= 1 && (v17 = v16, (v18 = a5(a1)) != 0))
  {
    v19 = v18;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    (*(v12 + 104))(v15, *MEMORY[0x1E6969010], v11);
    v20 = specialized Data.init(bytesNoCopy:count:deallocator:)(v19, v17, v15);
    v22 = v21;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v20, v22);

    return (*(*(a2 - 8) + 56))(a6, 0, 1, a2);
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v23 = *(*(a2 - 8) + 56);

    return v23(a6, 0, 1, a2);
  }
}

uint64_t static EntityAction<>.loadParameterFromTimeline<A>(_:parameterType:eventID:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a6@<X5>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v36 = a3;
  v37 = a10;
  v14 = type metadata accessor for Data.Deallocator();
  v35 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a6;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = AssociatedTypeWitness;
  if (a4)
  {
    v21 = *(*(AssociatedTypeWitness - 8) + 56);
    v22 = a8;
LABEL_5:

    return v21(v22, 1, 1, v20);
  }

  if (AssociatedTypeWitness != a2)
  {
    v21 = *(*(AssociatedTypeWitness - 8) + 56);
    v22 = a8;
    goto LABEL_5;
  }

  v24 = AssociatedTypeWitness;
  EventParameterDataSize = RETimelineDefinitionEventTimelineGetEventParameterDataSize();
  if (EventParameterDataSize >= 1 && (v26 = EventParameterDataSize, (EventParameterData = RETimelineDefinitionEventTimelineGetEventParameterData()) != 0))
  {
    v28 = EventParameterData;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    (*(v35 + 104))(v16, *MEMORY[0x1E6969010], v14);
    v29 = specialized Data.init(bytesNoCopy:count:deallocator:)(v28, v26, v16);
    v31 = v30;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v29, v31);
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }

  if (swift_dynamicCast())
  {
    v32 = a8;
    v33 = 0;
  }

  else
  {
    v32 = a8;
    v33 = 1;
  }

  return (*(*(v24 - 8) + 56))(v32, v33, 1, v24);
}

uint64_t static EntityAction.makeActionAnimation(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  return ActionAnimation.init(_:)(a1, a2, a3, v6);
}

uint64_t ActionAnimation.init(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  v8 = type metadata accessor for ActionDefinition(255, a2, a3, x3_0);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - v11;
  v41 = a2;
  v14 = *(type metadata accessor for ActionAnimation(0, a2, a3, v13) + 40);
  v15 = *(v8 - 8);
  v39 = *(v15 + 56);
  v40 = v14;
  v38 = v15 + 56;
  v39(a4 + v14, 1, 1, v8);
  type metadata accessor for TimelineDefinition();
  v16 = swift_allocObject();
  swift_retain_n();
  v17 = REAssetHandleAssetType();
  if (v17 != 11)
  {
    if (v17 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  RootTimeline = REAnimationSceneAssetGetRootTimeline();

  if (!RootTimeline)
  {
    goto LABEL_22;
  }

LABEL_5:
  v20 = RETimelineDefinitionCreateFromTimeline();

  *(v16 + 16) = v20;
  v37 = v10;
  if (!v20)
  {
LABEL_11:
    v49 = 1;
    v48 = 1;
    v47 = 1;
    v46 = 1;
    v45 = 1;
    v44 = 1;

    if (v20)
    {
      RETimelineDefinitionGetName();
      v20 = String.init(cString:)();
      v25 = v24;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    outlined consume of BindTarget?(0, 0, 0xFFu);
    v43 = 0;
    v42 = 0;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = v43;
    v28 = v42;
    v29 = v49;
    v30 = v48;
    v31 = v47;
    v32 = v46;
    v33 = v45;
    v34 = v44;
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 9) = v29;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 25) = v30;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + 41) = v31;
    *(a4 + 48) = 0;
    *(a4 + 56) = v32;
    *(a4 + 64) = 0;
    *(a4 + 72) = v33;
    *(a4 + 76) = 0;
    *(a4 + 80) = v34;
    *(a4 + 81) = 4;
    *(a4 + 88) = v16;
    *(a4 + 96) = v20;
    *(a4 + 112) = 0;
    *(a4 + 120) = 0;
    *(a4 + 104) = v25;
    *(a4 + 128) = -1;
    *(a4 + 132) = 0;
    *(a4 + 136) = v27;
    *(a4 + 138) = v28;
    *(a4 + 144) = v26;
    v23 = v16;
    v22 = *(v16 + 16);
    goto LABEL_16;
  }

  if (RETimelineDefinitionGetTimelineType() != 2)
  {
    v20 = *(v16 + 16);
    goto LABEL_11;
  }

  v49 = 1;
  v48 = 1;
  v47 = 1;
  v46 = 1;
  v45 = 1;
  v44 = 1;
  v43 = 1;
  *a4 = 0;
  *(a4 + 8) = 256;
  *(a4 + 16) = 0;
  *(a4 + 24) = 256;
  *(a4 + 32) = 0;
  *(a4 + 40) = 256;
  *(a4 + 48) = 0;
  *(a4 + 56) = 1;
  *(a4 + 64) = 0;
  *(a4 + 72) = 1;
  *(a4 + 76) = 0;
  *(a4 + 80) = 1025;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0;
  *(a4 + 128) = -1;
  *(a4 + 132) = 0;
  *(a4 + 136) = 1;
  *(a4 + 137) = 256;
  *(a4 + 139) = 2;
  *(a4 + 144) = v16;

  if (*(v16 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
  {
    v22 = ClipSourceRef;
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    RERetain();
    RERelease();
  }

  else
  {
    v23 = swift_allocObject();
    v22 = 0;
    *(v23 + 16) = 0;
  }

LABEL_16:
  v49 = 1;
  v48 = 1;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 184) = -1;
  *(a4 + 188) = 0x201000100000000;
  *(a4 + 200) = v23;
  if (v22)
  {

    ActionDefinition.init(fromCore:)(v22, v41, v12, a3, v35);

    v39(v12, 0, 1, v8);
    return (*(v37 + 40))(a4 + v40, v12, v9);
  }

  else
  {
  }
}

uint64_t static EntityAction.load(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  if (a3())
  {
    type metadata accessor for EntityActionWrapper(0, a1, a2, v7);
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v13 = *(a1 - 8);
      (*(v13 + 16))(a4, v8 + *(*v8 + 96), a1);
      swift_unknownObjectRelease();
      v9 = v13;
      v10 = 0;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v9 = *(a1 - 8);
  v10 = 1;
LABEL_6:
  v11 = *(v9 + 56);

  return v11(a4, v10, 1, a1);
}

uint64_t static EntityAction.loadParameterFromTimeline(_:eventID:)@<X0>(char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a3 & 1) == 0 && RETimelineDefinitionEventTimelineGetEventSwiftParameter())
  {
    type metadata accessor for EntityActionParameterWrapper(0, a4, a5, v9);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = *(*v10 + 96);
      v12 = v10;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v20 = *(AssociatedTypeWitness - 8);
      (*(v20 + 16))(a6, v12 + v11, AssociatedTypeWitness);
      swift_unknownObjectRelease();
      v14 = *(v20 + 56);
      v15 = a6;
      v16 = 0;
      v17 = AssociatedTypeWitness;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v18 = swift_getAssociatedTypeWitness();
  v14 = *(*(v18 - 8) + 56);
  v17 = v18;
  v15 = a6;
  v16 = 1;
LABEL_6:

  return v14(v15, v16, 1, v17);
}

uint64_t dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, __n128), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v300 = a6;
  v301 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v299 = &v284 - v13;
  v305 = a8;
  v303 = type metadata accessor for ActionEvent(0, a7, a8, v14);
  v304 = *(v303 - 8);
  MEMORY[0x1EEE9AC00](v303);
  v302 = &v284 - v15;
  v296 = type metadata accessor for Optional();
  v297 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296);
  v17 = &v284 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v284 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v289 = (&v284 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v284 - v24);
  MEMORY[0x1EEE9AC00](v26);
  v288 = (&v284 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v284 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v284 - v32);
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v284 - v35);
  v307 = a7;
  v306 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v285 = &v284 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v293 = &v284 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v292 = &v284 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v291 = &v284 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v290 = &v284 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v287 = &v284 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v286 = &v284 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v298 = &v284 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v284 - v54;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v294 = Strong;
            v58 = *a2;
            v57 = *(a2 + 1);
            v59 = *(a2 + 4);
            v60 = *(a2 + 5);
            v293 = *(a2 + 6);
            v61 = a2[14];
            v62 = *(a2 + 9);
            v292 = *(a2 + 8);
            v63 = *(a2 + 11);
            v291 = *(a2 + 10);
            v64 = a2[24];
            v65 = a2[25];
            v66 = *(a2 + 104);
            v67 = REEntityGetSwiftObject();
            LODWORD(AssociatedTypeWitness) = v66;
            if (v67)
            {
              type metadata accessor for Entity();
              v68 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              specialized static Entity.entityInfoType(_:)(v58);
              if (v172)
              {
                v69 = (*(v172 + 232))();
                v173 = *(v69 + 16);

                MEMORY[0x1C68F9740](v173, 0);
                *(v69 + 16) = v58;
                MEMORY[0x1C68F9740](v58, v69);

                goto LABEL_71;
              }

              v68 = makeEntity(for:)(v58);
LABEL_8:
              v69 = v68;
LABEL_71:
              type metadata accessor for AnimationPlaybackController();
              v174 = swift_allocObject();
              *(v174 + 40) = 0;
              swift_weakInit();
              *(v174 + 16) = v57;
              swift_weakAssign();

              *(v174 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v69 + 16));
              *(v174 + 24) = Hasher._finalize()();

              v175 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v59, 0, v60, v175, v176, v308);

              v290 = v62;
              if (!v63)
              {
                v181 = 0;
                v178 = v307;
                goto LABEL_127;
              }

              v177 = REBindPointBoundComponent();
              v178 = v307;
              if (!v177)
              {
                v181 = 0;
                goto LABEL_127;
              }

              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v180 = swift_dynamicCastClassUnconditional();
LABEL_75:
                v181 = v180;
                goto LABEL_127;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                specialized static Entity.entityInfoType(_:)(Entity);
                if (!v226)
                {
                  v180 = makeEntity(for:)(Entity);
                  goto LABEL_75;
                }

                v181 = (*(v226 + 232))();
                v227 = *(v181 + 16);

                MEMORY[0x1C68F9740](v227, 0);
                *(v181 + 16) = Entity;
                MEMORY[0x1C68F9740](Entity, v181);

LABEL_127:
                v228 = v305;
                ActionEventData.action<A>()(v178, v305, v33);
                v229 = v306;
                if ((*(v306 + 48))(v33, 1, v178) == 1)
                {

                  (*(v297 + 8))(v33, v296);
                }

                else
                {
                  v230 = v286;
                  (*(v229 + 32))(v286, v33, v178);
                  v231 = v298;
                  (*(v229 + 16))(v298, v230, v178);

                  v232 = v299;
                  ActionEventData.parameter<A>(type:)(v178, v228, v299);
                  v233 = v302;
                  ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v174, v231, v232, v181, AssociatedTypeWitness, v294, v290, COERCE__INT64(v61), v302, v64, v65, 0, v293, 0, v292, 0, v308, v291, v178, v228);

                  (v301)(v233);

                  (*(v304 + 8))(v233, v303);
                  (*(v229 + 8))(v286, v178);
                }

                return 0;
              }

              goto LABEL_193;
            }

            goto LABEL_185;
          }

          goto LABEL_40;
        }

        v294 = Strong;
        v104 = *a2;
        v103 = *(a2 + 1);
        v105 = *(a2 + 4);
        v106 = *(a2 + 5);
        v292 = *(a2 + 6);
        v107 = *(a2 + 7);
        v108 = *(a2 + 8);
        v109 = a2[18];
        v110 = a2[19];
        LODWORD(v293) = *(a2 + 80);
        v111 = *(a2 + 12);
        v291 = *(a2 + 11);
        v290 = v111;
        v112 = REEntityGetSwiftObject();
        AssociatedTypeWitness = v107;
        if (v112)
        {
          type metadata accessor for Entity();
          v113 = swift_dynamicCastClassUnconditional();
          goto LABEL_31;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v104);
          if (v142)
          {
            v114 = (*(v142 + 232))();
            v143 = *(v114 + 16);

            MEMORY[0x1C68F9740](v143, 0);
            *(v114 + 16) = v104;
            MEMORY[0x1C68F9740](v104, v114);

LABEL_44:
            type metadata accessor for AnimationPlaybackController();
            v144 = swift_allocObject();
            *(v144 + 40) = 0;
            swift_weakInit();
            *(v144 + 16) = v103;
            swift_weakAssign();

            *(v144 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v114 + 16));
            *(v144 + 24) = Hasher._finalize()();

            v145 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v105, 0, v106, v145, v146, v308);

            if (v108)
            {
              v147 = REBindPointBoundComponent();
              v148 = v307;
              if (v147)
              {
                v149 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v150 = swift_dynamicCastClassUnconditional();
LABEL_48:
                  v151 = v150;
                  goto LABEL_109;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_189:
                  __break(1u);
                  goto LABEL_190;
                }

                specialized static Entity.entityInfoType(_:)(v149);
                if (!v201)
                {
                  v150 = makeEntity(for:)(v149);
                  goto LABEL_48;
                }

                v151 = (*(v201 + 232))();
                v202 = *(v151 + 16);

                MEMORY[0x1C68F9740](v202, 0);
                *(v151 + 16) = v149;
                MEMORY[0x1C68F9740](v149, v151);
              }

              else
              {
                v151 = 0;
              }
            }

            else
            {
              v151 = 0;
              v148 = v307;
            }

LABEL_109:
            v203 = v305;
            ActionEventData.action<A>()(v148, v305, v36);
            v204 = v306;
            if ((*(v306 + 48))(v36, 1, v148) == 1)
            {

              (*(v297 + 8))(v36, v296);
            }

            else
            {
              (*(v204 + 32))(v55, v36, v148);
              v205 = v298;
              (*(v204 + 16))(v298, v55, v148);

              v206 = v299;
              ActionEventData.parameter<A>(type:)(v148, v203, v299);
              v281 = v203;
              v207 = v302;
              ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v144, v205, v206, v151, v293, v294, AssociatedTypeWitness, 0xBFF0000000000000, v302, v109, v110, 0, v291, 0, v290, 0, v308, v292, v148, v281);

              (v301)(v207);

              (*(v304 + 8))(v207, v303);
              (*(v204 + 8))(v55, v148);
            }

            return 0;
          }

          v113 = makeEntity(for:)(v104);
LABEL_31:
          v114 = v113;
          goto LABEL_44;
        }

        __break(1u);
        goto LABEL_182;
      }

      if (a4 != 4)
      {
        if (a4 == 8)
        {
          v294 = Strong;
          v84 = *a2;
          v83 = *(a2 + 1);
          v85 = *(a2 + 4);
          v87 = *(a2 + 5);
          v86 = *(a2 + 6);
          v88 = *(a2 + 7);
          v89 = a2[16];
          v90 = a2[17];
          LODWORD(v292) = *(a2 + 72);
          v91 = *(a2 + 10);
          v293 = *(a2 + 11);
          v92 = REEntityGetSwiftObject();
          AssociatedTypeWitness = v86;
          if (v92)
          {
            type metadata accessor for Entity();
            v93 = swift_dynamicCastClassUnconditional();
          }

          else
          {
            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_187:
              __break(1u);
              goto LABEL_188;
            }

            specialized static Entity.entityInfoType(_:)(v84);
            if (v189)
            {
              v94 = (*(v189 + 232))();
              v190 = *(v94 + 16);

              MEMORY[0x1C68F9740](v190, 0);
              *(v94 + 16) = v84;
              MEMORY[0x1C68F9740](v84, v94);

LABEL_87:
              type metadata accessor for AnimationPlaybackController();
              v191 = swift_allocObject();
              *(v191 + 40) = 0;
              swift_weakInit();
              *(v191 + 16) = v83;
              swift_weakAssign();

              *(v191 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v94 + 16));
              *(v191 + 24) = Hasher._finalize()();

              v192 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v85, 0, v87, v192, v193, v308);

              if (v88)
              {
                v194 = REBindPointBoundComponent();
                v195 = v307;
                if (v194)
                {
                  v196 = REComponentGetEntity();
                  if (REEntityGetSwiftObject())
                  {
                    type metadata accessor for Entity();
                    v197 = swift_dynamicCastClassUnconditional();
LABEL_91:
                    v198 = v197;
                    goto LABEL_139;
                  }

                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_195:
                    __break(1u);
                    goto LABEL_196;
                  }

                  specialized static Entity.entityInfoType(_:)(v196);
                  if (!v244)
                  {
                    v197 = makeEntity(for:)(v196);
                    goto LABEL_91;
                  }

                  v198 = (*(v244 + 232))();
                  v245 = *(v198 + 16);

                  MEMORY[0x1C68F9740](v245, 0);
                  *(v198 + 16) = v196;
                  MEMORY[0x1C68F9740](v196, v198);
                }

                else
                {
                  v198 = 0;
                }
              }

              else
              {
                v198 = 0;
                v195 = v307;
              }

LABEL_139:
              v20 = v288;
              v246 = v305;
              ActionEventData.action<A>()(v195, v305, v288);
              v247 = v306;
              if ((*(v306 + 48))(v20, 1, v195) != 1)
              {
                v248 = v290;
                (*(v247 + 32))(v290, v20, v195);
                v249 = v298;
                (*(v247 + 16))(v298, v248, v195);

                v250 = v91;
                v251 = v299;
                ActionEventData.parameter<A>(type:)(v195, v246, v299);
                v280 = v250;
                v252 = v302;
                ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v191, v249, v251, v198, v292, v294, 0, 0, v302, v89, v90, 1, v280, 0, v293, 0, v308, AssociatedTypeWitness, v195, v246);

                (v301)(v252);

                (*(v304 + 8))(v252, v303);
                (*(v247 + 8))(v290, v195);
                return 0;
              }

LABEL_170:

              (*(v297 + 8))(v20, v296);
              return 0;
            }

            v93 = makeEntity(for:)(v84);
          }

          v94 = v93;
          goto LABEL_87;
        }

LABEL_40:

        return 0;
      }

      v294 = Strong;
      v124 = *a2;
      v123 = *(a2 + 1);
      v125 = *(a2 + 4);
      v126 = *(a2 + 5);
      v293 = *(a2 + 6);
      v127 = *(a2 + 7);
      v128 = *(a2 + 8);
      v129 = a2[18];
      v130 = a2[19];
      v131 = *(a2 + 80);
      v132 = REEntityGetSwiftObject();
      LODWORD(AssociatedTypeWitness) = v131;
      if (v132)
      {
        type metadata accessor for Entity();
        v133 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_183:
          __break(1u);
          goto LABEL_184;
        }

        specialized static Entity.entityInfoType(_:)(v124);
        if (v161)
        {
          v134 = (*(v161 + 232))();
          v162 = *(v134 + 16);

          MEMORY[0x1C68F9740](v162, 0);
          *(v134 + 16) = v124;
          MEMORY[0x1C68F9740](v124, v134);

LABEL_60:
          type metadata accessor for AnimationPlaybackController();
          v163 = swift_allocObject();
          *(v163 + 40) = 0;
          swift_weakInit();
          *(v163 + 16) = v123;
          swift_weakAssign();

          *(v163 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v134 + 16));
          *(v163 + 24) = Hasher._finalize()();

          v164 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(v125, 0, v126, v164, v165, v308);

          if (v128)
          {
            v166 = REBindPointBoundComponent();
            v167 = v307;
            if (v166)
            {
              v168 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v169 = swift_dynamicCastClassUnconditional();
LABEL_64:
                v128 = v169;
                goto LABEL_121;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_191:
                __break(1u);
                goto LABEL_192;
              }

              specialized static Entity.entityInfoType(_:)(v168);
              if (!v217)
              {
                v169 = makeEntity(for:)(v168);
                goto LABEL_64;
              }

              v128 = (*(v217 + 232))();
              v218 = *(v128 + 16);

              MEMORY[0x1C68F9740](v218, 0);
              *(v128 + 16) = v168;
              MEMORY[0x1C68F9740](v168, v128);
            }

            else
            {
              v128 = 0;
            }
          }

          else
          {
            v167 = v307;
          }

LABEL_121:
          v219 = v305;
          ActionEventData.action<A>()(v167, v305, v30);
          v220 = v306;
          if ((*(v306 + 48))(v30, 1, v167) == 1)
          {

            (*(v297 + 8))(v30, v296);
          }

          else
          {
            v221 = v287;
            (*(v220 + 32))(v287, v30, v167);
            v222 = *(v220 + 16);
            v307 = v127;
            v223 = v298;
            v222(v298, v221, v167);

            v224 = v299;
            ActionEventData.parameter<A>(type:)(v167, v219, v299);
            v225 = v302;
            ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v163, v223, v224, v128, AssociatedTypeWitness, v294, v307, 0xBFF0000000000000, v302, v129, v130, 0, 0xBFF0000000000000, 0, 0xBFF0000000000000, 0, v308, v293, v167, v219);

            (v301)(v225);

            (*(v304 + 8))(v225, v303);
            (*(v220 + 8))(v287, v167);
          }

          return 0;
        }

        v133 = makeEntity(for:)(v124);
      }

      v134 = v133;
      goto LABEL_60;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_40;
        }

        v294 = Strong;
        v76 = *a2;
        v77 = *(a2 + 1);
        v293 = *(a2 + 4);
        v79 = *(a2 + 5);
        v78 = *(a2 + 6);
        v80 = *(a2 + 7);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v81 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_186:
            __break(1u);
            goto LABEL_187;
          }

          specialized static Entity.entityInfoType(_:)(v76);
          if (v182)
          {
            v82 = (*(v182 + 232))();
            v183 = *(v82 + 16);

            MEMORY[0x1C68F9740](v183, 0);
            *(v82 + 16) = v76;
            MEMORY[0x1C68F9740](v76, v82);

LABEL_79:
            type metadata accessor for AnimationPlaybackController();
            v184 = swift_allocObject();
            *(v184 + 40) = 0;
            swift_weakInit();
            *(v184 + 16) = v77;
            swift_weakAssign();

            *(v184 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v82 + 16));
            *(v184 + 24) = Hasher._finalize()();

            v185 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v79, v185, v186, v308);

            v291 = v78;
            if (!v80)
            {
              goto LABEL_133;
            }

            if (REBindPointBoundComponent())
            {
              v187 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v188 = swift_dynamicCastClassUnconditional();
LABEL_83:
                v80 = v188;
                goto LABEL_133;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_194:
                __break(1u);
                goto LABEL_195;
              }

              specialized static Entity.entityInfoType(_:)(v187);
              if (!v234)
              {
                v188 = makeEntity(for:)(v187);
                goto LABEL_83;
              }

              v80 = (*(v234 + 232))();
              v235 = *(v80 + 16);

              MEMORY[0x1C68F9740](v235, 0);
              *(v80 + 16) = v187;
              MEMORY[0x1C68F9740](v187, v80);
            }

            else
            {
              v80 = 0;
            }

LABEL_133:
            v236 = v289;
            v237 = v307;
            v238 = v305;
            ActionEventData.action<A>()(v307, v305, v289);
            v239 = v306;
            if ((*(v306 + 48))(v236, 1, v237) == 1)
            {

              (*(v297 + 8))(v236, v296);
            }

            else
            {
              v240 = v292;
              (*(v239 + 32))(v292, v236, v237);
              v241 = v298;
              (*(v239 + 16))(v298, v240, v237);
              v242 = v299;
              (*(*(AssociatedTypeWitness - 8) + 56))(v299, 1, 1);
              v243 = v302;
              ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v184, v241, v242, v80, 0, v294, 0, 0, v302, 0.0, 0.0, 1, v293, 0, 0, 1, v308, v291, v237, v238);

              (v301)(v243);

              (*(v304 + 8))(v243, v303);
              (*(v239 + 8))(v292, v237);
            }

            return 0;
          }

          v81 = makeEntity(for:)(v76);
        }

        v82 = v81;
        goto LABEL_79;
      }

      v294 = Strong;
      v115 = *a2;
      v116 = *(a2 + 1);
      v117 = *(a2 + 4);
      v118 = *(a2 + 5);
      v119 = *(a2 + 6);
      v120 = *(a2 + 7);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v121 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        specialized static Entity.entityInfoType(_:)(v115);
        if (v152)
        {
          v122 = (*(v152 + 232))();
          v153 = *(v122 + 16);

          MEMORY[0x1C68F9740](v153, 0);
          *(v122 + 16) = v115;
          MEMORY[0x1C68F9740](v115, v122);

LABEL_52:
          type metadata accessor for AnimationPlaybackController();
          v154 = swift_allocObject();
          *(v154 + 40) = 0;
          swift_weakInit();
          *(v154 + 16) = v116;
          swift_weakAssign();

          *(v154 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v122 + 16));
          *(v154 + 24) = Hasher._finalize()();

          v155 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v118, v155, v156, v308);

          v293 = v119;
          if (v120)
          {
            v157 = REBindPointBoundComponent();
            v158 = v306;
            if (v157)
            {
              v159 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v160 = swift_dynamicCastClassUnconditional();
LABEL_56:
                v120 = v160;
                goto LABEL_115;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_190:
                __break(1u);
                goto LABEL_191;
              }

              specialized static Entity.entityInfoType(_:)(v159);
              if (!v208)
              {
                v160 = makeEntity(for:)(v159);
                goto LABEL_56;
              }

              v120 = (*(v208 + 232))();
              v209 = *(v120 + 16);

              MEMORY[0x1C68F9740](v209, 0);
              *(v120 + 16) = v159;
              MEMORY[0x1C68F9740](v159, v120);
            }

            else
            {
              v120 = 0;
            }
          }

          else
          {
            v158 = v306;
          }

LABEL_115:
          v210 = v307;
          v211 = v305;
          ActionEventData.action<A>()(v307, v305, v25);
          if ((*(v158 + 48))(v25, 1, v210) == 1)
          {

            (*(v297 + 8))(v25, v296);
          }

          else
          {
            v212 = v291;
            (*(v158 + 32))(v291, v25, v210);
            v213 = v117;
            v214 = v298;
            (*(v158 + 16))(v298, v212, v210);
            v215 = v299;
            (*(*(AssociatedTypeWitness - 8) + 56))(v299, 1, 1);
            v279 = v213;
            v216 = v302;
            ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v154, v214, v215, v120, 0, v294, 0, 0, v302, 0.0, 0.0, 1, v279, 0, 0, 1, v308, v293, v210, v211);

            (v301)(v216);

            (*(v304 + 8))(v216, v303);
            (*(v158 + 8))(v291, v210);
          }

          return 0;
        }

        v121 = makeEntity(for:)(v115);
      }

      v122 = v121;
      goto LABEL_52;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_40;
      }

      v294 = Strong;
      v95 = *a2;
      v96 = *(a2 + 1);
      v97 = *(a2 + 3);
      v98 = *(a2 + 4);
      v99 = *(a2 + 5);
      v100 = REEntityGetSwiftObject();
      v293 = v98;
      if (v100)
      {
        type metadata accessor for Entity();
        v101 = swift_dynamicCastClassUnconditional();
        v102 = v307;
        v20 = v17;
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        v102 = v307;
        if (result)
        {
LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

        v20 = v17;
        specialized static Entity.entityInfoType(_:)(v95);
        if (v199)
        {
          v101 = (*(v199 + 232))();
          v200 = *(v101 + 16);

          MEMORY[0x1C68F9740](v200, 0);
          *(v101 + 16) = v95;
          MEMORY[0x1C68F9740](v95, v101);
        }

        else
        {
          v101 = makeEntity(for:)(v95);
        }
      }

      type metadata accessor for AnimationPlaybackController();
      v266 = swift_allocObject();
      *(v266 + 40) = 0;
      swift_weakInit();
      *(v266 + 16) = v96;
      swift_weakAssign();

      *(v266 + 32) = REEntityGetLocalId();
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v101 + 16));
      *(v266 + 24) = Hasher._finalize()();

      if (v99)
      {
        if (REBindPointBoundComponent())
        {
          v267 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v268 = swift_dynamicCastClassUnconditional();
LABEL_164:
            v99 = v268;
            goto LABEL_169;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_196:
            __break(1u);
            return result;
          }

          specialized static Entity.entityInfoType(_:)(v267);
          if (!v269)
          {
            v268 = makeEntity(for:)(v267);
            goto LABEL_164;
          }

          v99 = (*(v269 + 232))();
          v270 = *(v99 + 16);

          MEMORY[0x1C68F9740](v270, 0);
          *(v99 + 16) = v267;
          MEMORY[0x1C68F9740](v267, v99);
        }

        else
        {
          v99 = 0;
        }
      }

LABEL_169:
      v271 = String.init(cString:)();
      specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v97, v271, v272, v308);

      v273 = v305;
      ActionEventData.action<A>()(v102, v305, v20);
      v274 = v306;
      if ((*(v306 + 48))(v20, 1, v102) != 1)
      {
        v275 = v285;
        (*(v274 + 32))(v285, v20, v102);
        v276 = v298;
        (*(v274 + 16))(v298, v275, v102);
        v277 = v299;
        (*(*(AssociatedTypeWitness - 8) + 56))(v299, 1, 1);
        v283 = v273;
        v278 = v302;
        ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v266, v276, v277, v99, 0, v294, 0, 0, v302, 0.0, 0.0, 1, 0, 1, 0, 1, v308, v293, v102, v283);

        (v301)(v278);

        (*(v304 + 8))(v278, v303);
        (*(v274 + 8))(v275, v102);
        return 0;
      }

      goto LABEL_170;
    }

    v294 = Strong;
    v135 = *a2;
    v136 = *(a2 + 1);
    v137 = *(a2 + 3);
    v139 = *(a2 + 4);
    v138 = *(a2 + 5);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v140 = swift_dynamicCastClassUnconditional();
      v141 = v307;
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      v141 = v307;
      if (result)
      {
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
        goto LABEL_186;
      }

      specialized static Entity.entityInfoType(_:)(v135);
      if (v170)
      {
        v140 = (*(v170 + 232))();
        v171 = *(v140 + 16);

        MEMORY[0x1C68F9740](v171, 0);
        *(v140 + 16) = v135;
        MEMORY[0x1C68F9740](v135, v140);
      }

      else
      {
        v140 = makeEntity(for:)(v135);
      }
    }

    type metadata accessor for AnimationPlaybackController();
    v253 = swift_allocObject();
    *(v253 + 40) = 0;
    swift_weakInit();
    *(v253 + 16) = v136;
    swift_weakAssign();

    *(v253 + 32) = REEntityGetLocalId();
    Hasher.init(_seed:)();
    MEMORY[0x1C68F4C10](*(v140 + 16));
    *(v253 + 24) = Hasher._finalize()();

    if (v138)
    {
      if (REBindPointBoundComponent())
      {
        v254 = REComponentGetEntity();
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v255 = swift_dynamicCastClassUnconditional();
LABEL_149:
          v138 = v255;
          goto LABEL_154;
        }

        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        specialized static Entity.entityInfoType(_:)(v254);
        if (!v256)
        {
          v255 = makeEntity(for:)(v254);
          goto LABEL_149;
        }

        v138 = (*(v256 + 232))();
        v257 = *(v138 + 16);

        MEMORY[0x1C68F9740](v257, 0);
        *(v138 + 16) = v254;
        MEMORY[0x1C68F9740](v254, v138);
      }

      else
      {
        v138 = 0;
      }
    }

LABEL_154:
    v258 = String.init(cString:)();
    specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v137, v258, v259, v308);

    v260 = v305;
    ActionEventData.action<A>()(v141, v305, v20);
    v261 = v306;
    if ((*(v306 + 48))(v20, 1, v141) != 1)
    {
      v262 = v293;
      (*(v261 + 32))(v293, v20, v141);
      v263 = v298;
      (*(v261 + 16))(v298, v262, v141);
      v264 = v299;
      (*(*(AssociatedTypeWitness - 8) + 56))(v299, 1, 1);
      v282 = v260;
      v265 = v302;
      ActionEvent.init(playbackController:action:parameter:targetEntity:reversed:startTime:duration:engine:coreAnimationState:deltaTime:evaluationTime:normalizedTime:eventData:instanceID:)(v253, v263, v264, v138, 0, v294, 0, 0, v302, 0.0, 0.0, 1, 0, 1, 0, 1, v308, v139, v141, v282);

      (v301)(v265);

      (*(v304 + 8))(v265, v303);
      (*(v261 + 8))(v293, v141);
      return 0;
    }

    goto LABEL_170;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  __swift_project_value_buffer(v70, static AnimationLogger.logger);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v308[0] = v74;
    *v73 = 136315138;
    *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v308);
    _os_log_impl(&dword_1C1358000, v71, v72, "%s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x1C6902A30](v74, -1, -1);
    MEMORY[0x1C6902A30](v73, -1, -1);
  }

  return 1;
}