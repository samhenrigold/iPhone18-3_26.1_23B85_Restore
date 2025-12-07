uint64_t sub_18BDA3A20()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), Toolbar.BarLocation.hash(into:)(v10), v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      outlined init with copy of Toolbar.BarLocation(*(a2 + 48) + 40 * v6, v10);
      v8 = specialized static Toolbar.BarLocation.== infix(_:_:)(v10, a1);
      outlined destroy of Toolbar.BarLocation(v10);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  ToolbarPlacement.Role.hash(into:)(v13);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    outlined init with copy of ToolbarPlacement.Role(*(a2 + 48) + 40 * v6, v18);
    outlined init with copy of ToolbarPlacement.Role(v18, v13);
    outlined init with copy of ToolbarPlacement.Role(a1, &v15);
    if (v14 <= 2)
    {
      switch(v14)
      {
        case 0:
          outlined destroy of ToolbarPlacement.Role(v18);
          if (!*(&v16 + 1))
          {
            goto LABEL_34;
          }

          goto LABEL_27;
        case 1:
          outlined destroy of ToolbarPlacement.Role(v18);
          if (*(&v16 + 1) == 1)
          {
            goto LABEL_34;
          }

          goto LABEL_27;
        case 2:
          outlined destroy of ToolbarPlacement.Role(v18);
          if (*(&v16 + 1) == 2)
          {
            goto LABEL_34;
          }

          goto LABEL_27;
      }
    }

    else
    {
      if (v14 <= 4)
      {
        if (v14 == 3)
        {
          outlined destroy of ToolbarPlacement.Role(v18);
          if (*(&v16 + 1) == 3)
          {
            goto LABEL_34;
          }
        }

        else
        {
          outlined destroy of ToolbarPlacement.Role(v18);
          if (*(&v16 + 1) == 4)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_27;
      }

      if (v14 == 5)
      {
        outlined destroy of ToolbarPlacement.Role(v18);
        if (*(&v16 + 1) == 5)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      if (v14 == 6)
      {
        outlined destroy of ToolbarPlacement.Role(v18);
        if (*(&v16 + 1) == 6)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }
    }

    outlined init with copy of ToolbarPlacement.Role(v13, v12);
    if (*(&v16 + 1) >= 7uLL)
    {
      break;
    }

    outlined destroy of ToolbarPlacement.Role(v18);
    outlined destroy of AnyHashable(v12);
LABEL_27:
    _sypSgWOhTm_1(v13, &lazy cache variable for type metadata for (ToolbarPlacement.Role, ToolbarPlacement.Role), &type metadata for ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role, type metadata accessor for (Badge, Spacer));
LABEL_28:
    v6 = (v6 + 1) & v7;
    if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  v10[0] = v15;
  v10[1] = v16;
  v11 = v17;
  v8 = MEMORY[0x18D00E7E0](v12, v10);
  outlined destroy of AnyHashable(v10);
  outlined destroy of ToolbarPlacement.Role(v18);
  outlined destroy of AnyHashable(v12);
  if ((v8 & 1) == 0)
  {
    outlined destroy of ToolbarPlacement.Role(v13);
    goto LABEL_28;
  }

LABEL_34:
  outlined destroy of ToolbarPlacement.Role(v13);
  return 1;
}

{
  v3 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (Hasher.init(_seed:)(), type metadata accessor for CommandGroupPlacement(0), UUID.hash(into:)(), v7 = Hasher._finalize()(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    v11 = *(v4 + 72);
    do
    {
      outlined init with copy of HashableCommandGroupPlacementWrapper(*(a2 + 48) + v11 * v9, v6);
      v12 = static UUID.== infix(_:_:)();
      outlined destroy of ArchivedViewCore.Metadata(v6, type metadata accessor for HashableCommandGroupPlacementWrapper);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void UINavigationItem.updateSearchControllerIfNeeded(_:)(void *a1)
{
  v3 = [v1 searchController];
  if (v3)
  {
    v4 = v3;
    swift_getObjectType();
    v5 = [swift_getObjCClassFromMetadata() _isFromSwiftUI];

    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  v6 = [v1 searchController];
  v7 = [a1 searchController];
  if (v6)
  {
    if (v7)
    {
      v8 = v7;

      if (v6 == v8)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v7 = v6;
  }

  else if (!v7)
  {
    goto LABEL_12;
  }

LABEL_11:
  v9 = [a1 searchController];
  [v1 setSearchController_];

LABEL_12:
  v10 = [v1 preferredSearchBarPlacement];
  if (v10 != [a1 preferredSearchBarPlacement])
  {
    [v1 setPreferredSearchBarPlacement_];
  }

  v11 = [v1 searchBarPlacementAllowsExternalIntegration];
  if (v11 != [a1 searchBarPlacementAllowsExternalIntegration])
  {
    [v1 setSearchBarPlacementAllowsExternalIntegration_];
  }

  v12 = [v1 hidesSearchBarWhenScrolling];
  if (v12 != [a1 hidesSearchBarWhenScrolling])
  {
    v13 = [a1 hidesSearchBarWhenScrolling];

    [v1 setHidesSearchBarWhenScrolling_];
  }
}

uint64_t outlined init with copy of PushTarget?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for PlatformItemList.Item.SystemItem?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for PlatformItemList.Item.SystemItem?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Toolbar.UpdateContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Toolbar.UpdateContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey>, &type metadata for EnvironmentValues.ToolbarUpdateContextKey, &protocol witness table for EnvironmentValues.ToolbarUpdateContextKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined destroy of PushTarget?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for PlatformItemList.Item.SystemItem?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *AlwaysOnBridge.isActiveHost.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = specialized UIHostingController.host.getter();

    v3 = [v2 window];
    if (!v3)
    {
      return 0;
    }

    v4 = [v3 windowScene];

    if (!v4)
    {
      return 0;
    }

    v5 = [v4 windows];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIWindow, 0x1E69DD2E8);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = specialized Sequence.flatMap<A>(_:)(v6);

    if (v7 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x18D00E9C0](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        Strong = swift_unknownObjectWeakLoadStrong();

        if (Strong)
        {

          if (v11 == Strong)
          {
            v14 = 1;
            goto LABEL_21;
          }
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:
    v14 = 0;
LABEL_21:

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v35 = v1 & 0xFFFFFFFFFFFFFF8;
    v36 = v1 & 0xC000000000000001;
    v34 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    v31 = i;
    v32 = v1;
    while (1)
    {
      if (v36)
      {
        v5 = MEMORY[0x18D00E9C0](v3, v1);
      }

      else
      {
        if (v3 >= *(v35 + 16))
        {
          goto LABEL_45;
        }

        v5 = *(v34 + 8 * v3);
      }

      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = [v5 rootViewController];
      if (v8 && (v9 = v8, v10 = [v8 _effectiveControllersForAlwaysOnTimelines], v9, v10))
      {
        type metadata accessor for UIViewController & _UIBacklightEnvironmentObserver();
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v6 = v10;
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      v12 = v11 >> 62;
      if (v11 >> 62)
      {
        v13 = __CocoaSet.count.getter();
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v4 >> 62;
      if (v4 >> 62)
      {
        v29 = __CocoaSet.count.getter();
        v16 = v29 + v13;
        if (__OFADD__(v29, v13))
        {
LABEL_43:
          __break(1u);
          break;
        }
      }

      else
      {
        v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_43;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v14)
        {
          goto LABEL_25;
        }

LABEL_24:
        __CocoaSet.count.getter();
        goto LABEL_25;
      }

      if (v14)
      {
        goto LABEL_24;
      }

      v17 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = v4;
        goto LABEL_26;
      }

LABEL_25:
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v39 & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v12)
      {
        v21 = v17;
        v22 = __CocoaSet.count.getter();
        v17 = v21;
        v20 = v22;
        if (v22)
        {
LABEL_30:
          if (((v19 >> 1) - v18) < v13)
          {
            goto LABEL_47;
          }

          v37 = v3;
          v1 = v17 + 8 * v18 + 32;
          v33 = v17;
          if (v12)
          {
            if (v20 < 1)
            {
              goto LABEL_49;
            }

            type metadata accessor for [UIViewController & _UIBacklightEnvironmentObserver](0, &lazy cache variable for type metadata for [UIViewController & _UIBacklightEnvironmentObserver], type metadata accessor for UIViewController & _UIBacklightEnvironmentObserver);
            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [UIViewController & _UIBacklightEnvironmentObserver] and conformance [A], &lazy cache variable for type metadata for [UIViewController & _UIBacklightEnvironmentObserver], type metadata accessor for UIViewController & _UIBacklightEnvironmentObserver, MEMORY[0x1E69E6340]);
            for (j = 0; j != v20; ++j)
            {
              v24 = specialized protocol witness for Collection.subscript.read in conformance [A](v38, j, v11);
              v26 = *v25;
              (v24)(v38, 0);
              *(v1 + 8 * j) = v26;
            }
          }

          else
          {
            type metadata accessor for UIViewController & _UIBacklightEnvironmentObserver();
            swift_arrayInitWithCopy();
          }

          v3 = v37;
          i = v31;
          v1 = v32;
          v4 = v39;
          if (v13 >= 1)
          {
            v27 = *(v33 + 16);
            v7 = __OFADD__(v27, v13);
            v28 = v27 + v13;
            if (v7)
            {
              goto LABEL_48;
            }

            *(v33 + 16) = v28;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          goto LABEL_30;
        }
      }

      v4 = v39;
      if (v13 > 0)
      {
        goto LABEL_46;
      }

LABEL_5:
      if (v3 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t type metadata accessor for UIViewController & _UIBacklightEnvironmentObserver()
{
  result = lazy cache variable for type metadata for UIViewController & _UIBacklightEnvironmentObserver;
  if (!lazy cache variable for type metadata for UIViewController & _UIBacklightEnvironmentObserver)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIViewController & _UIBacklightEnvironmentObserver);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [UIViewController & _UIBacklightEnvironmentObserver](255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18D00E9C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return destroy for OpenURLOptions;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18D00E9C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

id @objc UIHostingController.childForHomeIndicatorAutoHidden.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.childForHomeIndicatorAutoHidden.getter();

  return v2;
}

unint64_t UIHostingController._childForHomeIndicatorAutoHidden.getter()
{
  v1 = v0;
  if (UIHostingController._persistentSystemOverlays.getter() || (UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = [v0 childViewControllers];
  type metadata accessor for UIViewController();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = __OFSUB__(v4--, 1);
    if (v5)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x18D00E9C0](v4, v3);
      goto LABEL_11;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *(v3 + 32 + 8 * v4);
LABEL_11:
      v7 = v6;
      v8 = [v6 childViewControllerForHomeIndicatorAutoHidden];

      if (v8)
      {

        MEMORY[0x1EEE9AC00](v9);
        v17 = v4;
        partial apply for specialized closure #1 in BidirectionalCollection.last(where:)(&v17, &v18);
        v10 = v18;
        goto LABEL_15;
      }
    }
  }

  v10 = 0;
LABEL_15:

  result = v10;
  if (v10)
  {
    return result;
  }

  v12 = [v1 childViewControllers];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (!v14)
    {
      goto LABEL_29;
    }

LABEL_18:
    v5 = __OFSUB__(v14, 1);
    result = v14 - 1;
    if (v5)
    {
      __break(1u);
    }

    else if ((v13 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v13 + 8 * result + 32);
LABEL_23:
        v16 = v15;

        return v16;
      }

      __break(1u);
      __break(1u);
      return result;
    }

    v15 = MEMORY[0x18D00E9C0](result, v13);
    goto LABEL_23;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    goto LABEL_18;
  }

LABEL_29:

  return 0;
}

uint64_t UIHostingController._persistentSystemOverlays.getter()
{
  UIHostingController.persistentSystemOverlays.getter(&v2);
  result = v2;
  if ((v2 & 0xFF00) == 0x200)
  {
    LODWORD(result) = UIHostingController.persistentSystemOverlays.getter(&v1);
    if (result == 3)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

void *sub_18BDA4AD4(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t specialized AccessibilityFocusState.Binding.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding();

  return specialized Binding.wrappedValue.setter(a1);
}

uint64_t specialized EditModeScopeFeature.modifyViewInputs(inputs:graph:)(uint64_t a1, uint64_t a2)
{
  Attribute.init<A>(body:value:flags:update:)();
  AGCreateWeakAttribute();
  type metadata accessor for Binding<EditMode>(0, &lazy cache variable for type metadata for StoredLocation<EditMode>, MEMORY[0x1E697E540]);
  swift_allocObject();

  StoredLocation.init(initialValue:host:signal:)();
  swift_beginAccess();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type EditModeEnvironment and conformance EditModeEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
}

void type metadata accessor for Binding<EditMode>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for EditMode);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EditModeEnvironment and conformance EditModeEnvironment()
{
  result = lazy protocol witness table cache variable for type EditModeEnvironment and conformance EditModeEnvironment;
  if (!lazy protocol witness table cache variable for type EditModeEnvironment and conformance EditModeEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EditModeEnvironment, &unk_1EFFF1598, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EditModeEnvironment and conformance EditModeEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EditModeKey>, &type metadata for EditModeKey, &protocol witness table for EditModeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature()
{
  result = lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature;
  if (!lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferredToolbarUserDefaultFeature, &type metadata for InferredToolbarUserDefaultFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature;
  if (!lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferredToolbarUserDefaultFeature, &type metadata for InferredToolbarUserDefaultFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature;
  if (!lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferredToolbarUserDefaultFeature, &type metadata for InferredToolbarUserDefaultFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature;
  if (!lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferredToolbarUserDefaultFeature, &type metadata for InferredToolbarUserDefaultFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature;
  if (!lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferredToolbarUserDefaultFeature, &type metadata for InferredToolbarUserDefaultFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature;
  if (!lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferredToolbarUserDefaultFeature, &type metadata for InferredToolbarUserDefaultFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature;
  if (!lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferredToolbarUserDefaultFeature, &type metadata for InferredToolbarUserDefaultFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature;
  if (!lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferredToolbarUserDefaultFeature, &type metadata for InferredToolbarUserDefaultFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature);
  }

  return result;
}

uint64_t protocol witness for static Feature.isEnabled.getter in conformance InferredToolbarUserDefaultFeature(uint64_t a1)
{
  lazy protocol witness table accessor for type InferredToolbarUserDefaultFeature and conformance InferredToolbarUserDefaultFeature();

  return static UserDefaultKeyedFeature.isEnabled.getter();
}

uint64_t protocol witness for static UserDefaultKeyedFeature.cachedValue.setter in conformance InferredToolbarUserDefaultFeature(char a1)
{
  result = swift_beginAccess();
  static InferredToolbarUserDefaultFeature.cachedValue = a1;
  return result;
}

uint64_t type metadata accessor for UIViewResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for UIViewResponder;
  if (!type metadata singleton initialization cache for UIViewResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIViewContentResponder and conformance UIViewContentResponder()
{
  result = lazy protocol witness table cache variable for type UIViewContentResponder and conformance UIViewContentResponder;
  if (!lazy protocol witness table cache variable for type UIViewContentResponder and conformance UIViewContentResponder)
  {
    result = swift_getWitnessTable("!p\rbĆ\t", &type metadata for UIViewContentResponder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIViewContentResponder and conformance UIViewContentResponder);
  }

  return result;
}

uint64_t type metadata completion function for KeyPress.Handler(uint64_t a1)
{
  result = type metadata accessor for KeyPress.Handler.Subject(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for KeyPress.Handler.Subject(uint64_t a1)
{
  result = type metadata accessor for CharacterSet();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for PlatformViewRepresentableFeature(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    *(a1 + 16) = v4;
    *(a1 + 24) = *(a2 + 3);
    v5 = a2[6];
    *(a1 + 40) = a2[5];
    *(a1 + 48) = v5;
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = a2[9];
    *(a1 + 80) = *(a2 + 20);
  }

  else
  {
    v6 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v6;
    *(a1 + 64) = *(a2 + 4);
    *(a1 + 80) = *(a2 + 20);
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
  }

  *(a1 + 84) = *(a2 + 84);
  *(a1 + 92) = *(a2 + 23);
  *(a1 + 96) = *(a2 + 6);
  *(a1 + 112) = a2[14];

  return a1;
}

uint64_t outlined destroy of RemoteSheetContainerVCKey.Storage?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for [KeyPress.Handler](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t instantiation function for generic protocol witness table for AccessibilityBridgedPlatformView<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityBridgedPlatformView<A>, a2);
  *(a1 + 8) = result;
  return result;
}

double static PlatformViewControllerRepresentableAdaptor.dynamicProperties.getter@<D0>(uint64_t a2@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 20) = v6;
  return result;
}

uint64_t *static PlatformViewRepresentable.appendFeature(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *MEMORY[0x1E698D3F8];
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  v7 = v3;
  v8 = v3;
  v9 = v3;
  v10 = a2;
  v11 = a3;
  v12 = 0;
  lazy protocol witness table accessor for type PlatformViewRepresentableFeature and conformance PlatformViewRepresentableFeature();
  CoreViewRepresentableFeatureBuffer.append<A>(_:)();
  return outlined destroy of PlatformViewRepresentableFeature(v5);
}

uint64_t ViewResponderFilter.init(inputs:view:)@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a5@<X8>)
{
  v7 = a1[2];
  v8 = a1[4];
  v21 = a1[3];
  v22 = v8;
  v9 = a1[1];
  v20[0] = *a1;
  v23 = *(a1 + 20);
  v20[1] = v9;
  v20[2] = v7;
  type metadata accessor for UIViewResponder(0);
  swift_allocObject();
  *(a5 + 24) = UIViewResponder.init()();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_weakInit();

  *a5 = a2;
  *(a5 + 4) = _ViewInputs.animatedPosition()();
  swift_beginAccess();
  v10 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v11 = HIDWORD(v21);
  *(a5 + 8) = v10;
  *(a5 + 12) = v11;
  *(a5 + 16) = _ViewInputs.layoutDirection.getter();
  v12 = one-time initialization token for keyPressHandlers;

  if (v12 != -1)
  {
    swift_once();
  }

  v19 = static CachedEnvironment.ID.keyPressHandlers;
  swift_beginAccess();
  type metadata accessor for [KeyPress.Handler](0, &lazy cache variable for type metadata for [KeyPress.Handler], type metadata accessor for KeyPress.Handler, MEMORY[0x1E69E62F8]);
  v13 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();

  *(a5 + 40) = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for RepresentablePreferredFocusableViewInput(0, AssociatedTypeWitness, v15, v16);
  swift_getWitnessTable(protocol conformance descriptor for RepresentablePreferredFocusableViewInput<A>, v17);
  _GraphInputs.subscript.getter();
  result = outlined destroy of _ViewInputs(v20);
  *(a5 + 44) = v19;
  return result;
}

uint64_t UIViewResponder.init()()
{
  swift_unknownObjectWeakInit();
  *(v0 + 240) = MEMORY[0x1E69E7CC0];
  *(v0 + 248) = 2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type UIViewContentResponder and conformance UIViewContentResponder();
  ContentResponderHelper.init()();
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 216) = 1;
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v2 = *(v1 + 208);

  swift_beginAccess();
  *(v0 + 24) = v2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t destroy for ViewResponderFilter(uint64_t a1)
{

  return swift_weakDestroy();
}

unint64_t static AccessibilityViewModifier.makeResolvableTransform<A>(context:inputs:outputs:includeGeometry:for:)(uint64_t a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *a3;
  v13 = a3[1];
  *&v31[0] = v10;
  DWORD2(v31[0]) = v11;
  v14 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v14)
  {
    v15 = *MEMORY[0x1E698D3F8];
    v16 = *(a2 + 16);
    v31[0] = *a2;
    v31[1] = v16;
    v31[2] = *(a2 + 32);
    v32 = v10;
    v33 = v11;
    v34 = *(a2 + 60);
    v35 = *(a2 + 76);
    v30[0] = v12;
    v30[1] = v13;
    v17 = ResolvableModifier.init<A>(context:type:)(a1);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v29 = 0;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    LODWORD(v23) = static AccessibilityViewModifier.makePropertiesTransform(modifier:inputs:outputs:includeGeometry:resolvableModifier:scrapeableID:)(v15, v31, v30, a4 & 1, v17, v23, v19, v21, &v29, a6, AssociatedConformanceWitness);

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  return v24 | (((v14 & 1) == 0) << 32);
}

id static AccessibilityViewModifier.makePropertiesTransform(modifier:inputs:outputs:includeGeometry:resolvableModifier:scrapeableID:)(unsigned int a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, uint64_t a10, uint64_t a11)
{
  v108 = *MEMORY[0x1E69E9840];
  v13 = *a2;
  v12 = *(a2 + 8);
  v56 = *(a2 + 16);
  v63 = *(a2 + 24);
  v14 = *(a2 + 36);
  v61 = *(a2 + 40);
  v62 = *(a2 + 28);
  v15 = *(a2 + 56);
  v64 = *(a2 + 60);
  v58 = *(a2 + 64);
  v16 = *(a2 + 72);
  v57 = *(a2 + 76);
  v17 = *a3;
  v18 = *(a3 + 8);
  v48 = *a9;
  v60 = *(a2 + 48);
  v78 = v60;
  v59 = v15;
  LODWORD(v79) = v15;
  v54 = v18;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v78 = v17;
    LODWORD(v79) = v18;
    v19 = PreferencesOutputs.subscript.getter();
    v55 = *MEMORY[0x1E698D3F8];
    if ((v19 & 0x100000000) != 0)
    {
      v20 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v20 = v19;
    }
  }

  else
  {
    v55 = *MEMORY[0x1E698D3F8];
    v20 = *MEMORY[0x1E698D3F8];
  }

  v21 = v13;
  v78 = v13;
  v79 = v12;
  v80 = v56;
  *(&v81 + 4) = v62;
  LODWORD(v81) = v63;
  HIDWORD(v81) = v14;
  v82 = v61;
  v83 = v60;
  v84 = v59;
  v85 = v64;
  v86 = v58;
  LODWORD(v87) = v16;
  *(&v87 + 4) = v57;
  v22 = _ViewInputs.position.getter();
  v47 = v20;
  if ((a4 & 1) != 0 && (v14 & 0x20) != 0)
  {
    lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
    PropertyList.subscript.getter();
    if (v78 == 1)
    {
      v78 = v17;
      LODWORD(v79) = v54;
      v23 = PreferencesOutputs.subscript.getter();
      result = AGSubgraphGetCurrent();
      if (!result)
      {
        __break(1u);
        goto LABEL_27;
      }

      if ((v23 & 0x100000000) != 0)
      {
        v25 = v55;
      }

      else
      {
        v25 = v23;
      }

      v26 = v25 | (v55 << 32);
      LOBYTE(v78) = 1;
      v27 = 255;
      v45 = result;
      v46 = 1;
      if ((v14 & 0x40) != 0)
      {
LABEL_14:
        UniqueID.init()();
        v28 = v78;
        result = AGSubgraphGetCurrent();
        if (result)
        {
          LOBYTE(v67[0]) = 1;
          v29 = 1;
          v30 = v16 | (v22 << 32);
          v31 = v64 | (v55 << 32);
          v32 = 255;
LABEL_19:
          v43 = v26;
          v44 = v27;
          v33 = v56;
          v34 = v16;
          *&v104 = v30;
          *(&v104 + 1) = v31;
          *&v105 = 0;
          *(&v105 + 1) = v32;
          v106 = v28;
          *&v107 = v29;
          *(&v107 + 1) = result;
          goto LABEL_20;
        }

LABEL_27:
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v45 = 0;
      v46 = 0;
      if ((v14 & 0x40) != 0)
      {
        goto LABEL_14;
      }
    }

    v28 = 0;
    result = 0;
    v29 = 0;
    v32 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_19;
  }

  v33 = v56;
  v34 = v16;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
LABEL_20:
  v67[0] = v21;
  v67[1] = v12;
  v35 = v33;
  v67[2] = v33;
  v69 = v62;
  v68 = v63;
  v70 = v14;
  v71 = v61;
  v72 = v60;
  v73 = v59;
  v74 = v64;
  v75 = v58;
  v76 = v34;
  v77 = v57;
  _ViewInputs.scrapeableParentID.getter();
  _GraphInputs.interfaceIdiom.getter();
  swift_beginAccess();
  v36 = *(v35 + 16);
  v78 = v17;
  LODWORD(v79) = v54;
  v37 = PreferencesOutputs.subscript.getter();
  if ((v37 & 0x100000000) != 0)
  {
    v39 = v55;
  }

  else
  {
    v39 = v37;
  }

  v78 = type metadata accessor for AccessibilityViewModifierAccessor(0, a10, a11, v38);
  v79 = __PAIR64__(v48, a1);
  v81 = v65;
  LODWORD(v80) = v66;
  v82 = __PAIR64__(v34, v22);
  v83 = __PAIR64__(v36, v64);
  v84 = v63;
  v85 = v47;
  LODWORD(v86) = v39;
  *&v87 = a5;
  *(&v87 + 1) = a6;
  v88 = a7;
  v89 = a8;
  v90 = v43;
  v91 = 0;
  v92 = v44;
  v93 = 0;
  v94 = 0;
  v95 = v46;
  v96 = v45;
  v97 = v104;
  v98 = v105;
  v99 = v106;
  v100 = v107;
  v101 = (v14 & 0x20) == 0;
  v102 = 0;
  swift_unknownObjectWeakInit();
  v103 = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  v40 = v45;
  outlined init with copy of AccessibilityProperties?(&v104, v67, &lazy cache variable for type metadata for AccessibilityGeometryUpdater?, &type metadata for AccessibilityGeometryUpdater);
  lazy protocol witness table accessor for type PropertiesTransform and conformance PropertiesTransform();
  v41 = a5;
  v42 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of PropertiesTransform(&v78);
  AGGraphSetFlags();
  if (v48)
  {
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(&v104, &lazy cache variable for type metadata for AccessibilityGeometryUpdater?, &type metadata for AccessibilityGeometryUpdater, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);

  return v42;
}

unint64_t lazy protocol witness table accessor for type AccessibilityHostedViewBridgeTransform and conformance AccessibilityHostedViewBridgeTransform()
{
  result = lazy protocol witness table cache variable for type AccessibilityHostedViewBridgeTransform and conformance AccessibilityHostedViewBridgeTransform;
  if (!lazy protocol witness table cache variable for type AccessibilityHostedViewBridgeTransform and conformance AccessibilityHostedViewBridgeTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityHostedViewBridgeTransform, &type metadata for AccessibilityHostedViewBridgeTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityHostedViewBridgeTransform and conformance AccessibilityHostedViewBridgeTransform);
  }

  return result;
}

void type metadata accessor for AccessibilityAttachment?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ContainerBackgroundKind?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI23AccessibilityAttachmentVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI23AccessibilityAttachmentVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t destroy for PlatformViewRepresentableFeature(uint64_t *a1)
{
  if (a1[2])
  {
  }
}

uint64_t storeEnumTagSinglePayload for UIViewContentResponder(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance RepresentablePreferredFocusableViewInput<A>@<X0>(_DWORD *a1@<X8>)
{
  result = static RepresentablePreferredFocusableViewInput.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t initializeWithCopy for ViewResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  swift_weakCopyInit();
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t static AccessibilityPlatformViewModifier.makeAccessibilityPlatformTransform<A>(inputs:representable:outputs:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v30[0] = v10;
  DWORD2(v30[0]) = v11;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v13 = *(a1 + 16);
    v30[0] = *a1;
    v30[1] = v13;
    v30[2] = *(a1 + 32);
    v31 = v10;
    v32 = v11;
    v33 = *(a1 + 60);
    v34 = *(a1 + 76);
    v29[0] = *a3;
    v29[1] = a3[1];
    v14 = type metadata accessor for AccessibilityBridgedPlatformView(0, a4, a5, v12);

    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityBridgedPlatformView<A>, v14);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 24))(&type metadata for AccessibilityPlatformViewModifier, AssociatedConformanceWitness);
    static AccessibilityViewModifier.makeResolvableTransform<A>(context:inputs:outputs:includeGeometry:for:)(a2, v30, v29, v17 & 1, v14, &type metadata for AccessibilityPlatformViewModifier, v14, WitnessTable);
  }

  else
  {
    *&v30[0] = v10;
    DWORD2(v30[0]) = v11;
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if ((result & 1) == 0)
    {
      return result;
    }

    LODWORD(v30[0]) = a2;
    MEMORY[0x1EEE9AC00](result);
    v27 = type metadata accessor for AccessibilityBridgedPlatformView(0, a4, a5, v19);
    v28 = swift_getWitnessTable(protocol conformance descriptor for AccessibilityBridgedPlatformView<A>, v27);
    type metadata accessor for ContainerBackgroundKind?(0, &lazy cache variable for type metadata for Attribute<AccessibilityPlatformViewModifier>, &type metadata for AccessibilityPlatformViewModifier, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v30, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_20, &v26, v27, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
    v22 = *(a3 + 2);
    *&v30[0] = *a3;
    DWORD2(v30[0]) = v22;
    v23 = PreferencesOutputs.subscript.getter();
    if ((v23 & 0x100000000) != 0)
    {
      v24 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v24 = v23;
    }

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    *&v30[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), OffsetAttribute2);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type AccessibilityPlatformViewModifier.PlatformViewAttachment and conformance AccessibilityPlatformViewModifier.PlatformViewAttachment();
    *&v30[0] = __PAIR64__(Attribute.init<A>(body:value:flags:update:)(), v24);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v30[0]) = 0;
  }

  return PreferencesOutputs.subscript.setter();
}

id ResolvableModifier.init<A>(context:type:)(uint64_t a1)
{
  result = AGSubgraphGetCurrent();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of AccessibilityProperties?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for AccessibilityAttachment?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI23AccessibilityAttachmentVSgMaTm_1(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of AccessibilityAttachment?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for ContainerBackgroundKind?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI23AccessibilityAttachmentVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_3(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI23AccessibilityAttachmentVSgMaTm_1(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PreviewDevice@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void ToolbarBridge.safeAreaDidChange<A>(hostingController:)(void *a1)
{
  v1 = [a1 transitionCoordinator];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 viewControllerForKey_];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = [v2 viewControllerForKey_];
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {
      }

      if (v8 | v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = 0;
      if (v5)
      {
LABEL_10:
        swift_beginAccess();
        v9 = Toolbar.PlatformVended.uiSafeAreaTransitionState.getter();
        v10 = *(v9 + 16);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          __break(1u);
        }

        else
        {
          *(v9 + 16) = v12;
          aBlock[4] = partial apply for closure #1 in ToolbarBridge.safeAreaDidChange<A>(hostingController:);
          aBlock[5] = v9;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
          aBlock[3] = &block_descriptor_185;
          v13 = _Block_copy(aBlock);

          [v2 animateAlongsideTransition:0 completion:v13];
          _Block_release(v13);
          swift_unknownObjectRelease();
        }

        return;
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t getEnumTagSinglePayload for ResolvedNavigationDestinations(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

unint64_t lazy protocol witness table accessor for type AccessibilityPlatformViewModifier and conformance AccessibilityPlatformViewModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityPlatformViewModifier and conformance AccessibilityPlatformViewModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityPlatformViewModifier and conformance AccessibilityPlatformViewModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityPlatformViewModifier, &type metadata for AccessibilityPlatformViewModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityPlatformViewModifier and conformance AccessibilityPlatformViewModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityPlatformViewModifier and conformance AccessibilityPlatformViewModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityPlatformViewModifier and conformance AccessibilityPlatformViewModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityPlatformViewModifier, &type metadata for AccessibilityPlatformViewModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityPlatformViewModifier and conformance AccessibilityPlatformViewModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityPlatformViewModifier and conformance AccessibilityPlatformViewModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityPlatformViewModifier and conformance AccessibilityPlatformViewModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityPlatformViewModifier, &type metadata for AccessibilityPlatformViewModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityPlatformViewModifier and conformance AccessibilityPlatformViewModifier);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityPlatformViewModifier(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AccessibilityPlatformViewModifier and conformance AccessibilityPlatformViewModifier();
  result = lazy protocol witness table accessor for type AccessibilityPlatformViewModifier and conformance AccessibilityPlatformViewModifier();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>;
  if (!lazy protocol witness table cache variable for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for NullSheetAnchor<A>, v7, v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>);
  }

  return result;
}

uint64_t type metadata completion function for SheetPresentationModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for NullSheetAnchor<SheetPreference.Key>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>)
  {
    v4 = type metadata accessor for NullSheetAnchor(0, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>);
    }
  }
}

void type metadata accessor for NullSheetAnchor<SheetPreference.Key>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for Attribute<()>()
{
  if (!lazy cache variable for type metadata for Attribute<()>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<()>);
    }
  }
}

void type metadata accessor for Binding<PresentationMode>()
{
  if (!lazy cache variable for type metadata for Binding<PresentationMode>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<PresentationMode>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type IsSearchAllowedInput and conformance IsSearchAllowedInput()
{
  result = lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsSearchAllowedInput, &type metadata for IsSearchAllowedInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsSearchAllowedInput, &type metadata for IsSearchAllowedInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsSearchAllowedInput, &type metadata for IsSearchAllowedInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsSearchAllowedInput, &type metadata for IsSearchAllowedInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsSearchAllowedInput, &type metadata for IsSearchAllowedInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput);
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI24ScrollEnvironmentStorageCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance IsHandGestureShortcut(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v7 = *a1;
  v6 = a1[1];
  v13[2] = a1[2];
  v10 = v7;
  v11 = v6;
  v12 = a1[2];
  v8 = *(a3 + 8);
  outlined init with copy of _GraphInputs(v13, v14);
  LOBYTE(v3) = v8(&v10, a2, v3);
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;
  outlined destroy of _GraphInputs(v14);
  return v3 & 1;
}

uint64_t static SourceFormula.makeViewList<A>(view:source:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {

    return static _ViewListOutputs.emptyViewList(inputs:)();
  }

  else
  {
    if ((a5 & 0x100000000) != 0)
    {
      _GraphValue.init(_:)();
    }

    else
    {
      v11 = type metadata accessor for Optional();
      _GraphValue.init(_:)();
      v12 = a9;
      swift_getWitnessTable(MEMORY[0x1E6982090], v11, &v12);
    }

    return static View.makeDebuggableViewList(view:inputs:)();
  }
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, unint64_t *a4)
{
  type metadata accessor for SourceInput<ListStyleContent>(0, a1, a2, a3);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(a4, a1, a2, a3);
  PropertyList.subscript.getter();
  if (v10)
  {
    v8 = *(v10 + 16);
  }

  else
  {
    v8 = 0;
  }

  PropertyList.subscript.setter();
  return v8;
}

uint64_t lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SourceInput<ListStyleContent>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for SourceInput<ListStyleContent>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for SourceInput(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t *sub_18BDA7B0C(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance AccessibilityNodesKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *(&static AccessibilityNodesKey.defaultValue + 1);
  *a1 = static AccessibilityNodesKey.defaultValue;
  a1[1] = v2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for PresentedSceneValueInputModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<RootModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<RootModifier>)
  {
    lazy protocol witness table accessor for type RootModifier and conformance RootModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<RootModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type _ViewModifier_Content<RootModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<RootModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = &protocol witness table for RootEnvironmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, lazy protocol witness table accessor for type PresentedSceneValueInputModifier and conformance PresentedSceneValueInputModifier, &type metadata for PresentedSceneValueInputModifier);
}

{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, specialized static AccessibilityLabeledContentRootModifier._makeViewInputs(modifier:inputs:));
}

{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey, MEMORY[0x1E697E440]);
}

{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, MEMORY[0x1E69807E8], MEMORY[0x1E69807E0], MEMORY[0x1E697E438]);
}

{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, lazy protocol witness table accessor for type AccessibilityClearLabeledContentModifier and conformance AccessibilityClearLabeledContentModifier, &type metadata for AccessibilityClearLabeledContentModifier);
}

{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, lazy protocol witness table accessor for type IndexViewPlacementModifier and conformance IndexViewPlacementModifier, &type metadata for IndexViewPlacementModifier);
}

{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, lazy protocol witness table accessor for type TableRowForegroundStyleModifier and conformance TableRowForegroundStyleModifier, &type metadata for TableRowForegroundStyleModifier);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance PresentedSceneValueInputModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

unint64_t lazy protocol witness table accessor for type PresentedSceneValueInputModifier and conformance PresentedSceneValueInputModifier()
{
  result = lazy protocol witness table cache variable for type PresentedSceneValueInputModifier and conformance PresentedSceneValueInputModifier;
  if (!lazy protocol witness table cache variable for type PresentedSceneValueInputModifier and conformance PresentedSceneValueInputModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentedSceneValueInputModifier, &type metadata for PresentedSceneValueInputModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentedSceneValueInputModifier and conformance PresentedSceneValueInputModifier);
  }

  return result;
}

uint64_t protocol witness for static ViewInputsModifier._makeViewInputs(modifier:inputs:) in conformance PresentedSceneValueInputModifier(unsigned int *a1)
{
  AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type PresentedSceneValueInput and conformance PresentedSceneValueInput();
  return PropertyList.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type PresentedSceneValueInput and conformance PresentedSceneValueInput()
{
  result = lazy protocol witness table cache variable for type PresentedSceneValueInput and conformance PresentedSceneValueInput;
  if (!lazy protocol witness table cache variable for type PresentedSceneValueInput and conformance PresentedSceneValueInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentedSceneValueInput, &unk_1EFFE9E18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentedSceneValueInput and conformance PresentedSceneValueInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentedSceneValueInput and conformance PresentedSceneValueInput;
  if (!lazy protocol witness table cache variable for type PresentedSceneValueInput and conformance PresentedSceneValueInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentedSceneValueInput, &unk_1EFFE9E18, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentedSceneValueInput and conformance PresentedSceneValueInput);
  }

  return result;
}

uint64_t specialized static ViewModifier<>._makeView(modifier:inputs:body:)(int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFF9FE08[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v18 = a2[2];
  v19 = v4;
  v20 = a2[4];
  v21 = *(a2 + 20);
  v5 = a2[1];
  v16 = *a2;
  v17 = v5;
  LODWORD(v24[0]) = a1;
  v6 = off_1F0003958;
  outlined init with copy of _ViewInputs(a2, v26);
  v7 = type metadata accessor for ContentConfigurationBasedRootEnvironment(0);
  v6(v24, &v16, v7);
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v23 = v21;
  v22[0] = v16;
  v22[1] = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v17;
  v8 = outlined init with copy of _ViewInputs(v22, v26);
  a3(v8, &v10);
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v25 = v15;
  v24[0] = v10;
  v24[1] = v11;
  outlined destroy of _ViewInputs(v24);
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;
  v27 = v21;
  v26[0] = v16;
  v26[1] = v17;
  return outlined destroy of _ViewInputs(v26);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFAC088;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for ResetContentMarginModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFD80F8;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for ResetScrollEnvironmentModifier.AdditionalResetModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFD8AD0;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v18 = a2[2];
  v19 = v4;
  v20 = a2[4];
  v21 = *(a2 + 20);
  v5 = a2[1];
  v16 = *a2;
  v17 = v5;
  LODWORD(v24[0]) = a1;
  v6 = off_1EFFF0320;
  outlined init with copy of _ViewInputs(a2, v26);
  v7 = type metadata accessor for SearchEnvironmentWritingModifier(0);
  v6(v24, &v16, v7);
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v23 = v21;
  v22[0] = v16;
  v22[1] = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v17;
  v8 = outlined init with copy of _ViewInputs(v22, v26);
  a3(v8, &v10);
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v25 = v15;
  v24[0] = v10;
  v24[1] = v11;
  outlined destroy of _ViewInputs(v24);
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;
  v27 = v21;
  v26[0] = v16;
  v26[1] = v17;
  return outlined destroy of _ViewInputs(v26);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFB14F0[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for ResetTabViewEnvironmentModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFEAF78[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for ResetFormEnvironmentModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFF0668;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for ResetSearchEnvironmentModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFE7E98;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFA7FB0[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for ListCoreCellEnvironment);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFF96D90;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for TransformScrollDeceleration);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFF9EAA0;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFF9EAB0;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFAC078;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for ContentMarginModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2;
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[1];
  v19 = a2[2];
  v20 = v5;
  v8 = *(a2 + 2);
  v21 = v6;
  v22 = *(a2 + 20);
  v17 = *a2;
  v18 = v7;
  LODWORD(v25) = a1;
  *(&v25 + 1) = _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_7SwiftUI19RefreshableModifier33_C0C4B6507641C712ECFA855200E15009LLV_yyYaYbcTG5TA_0;
  *&v26 = swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(v4, v31);
  type metadata accessor for @Sendable ()();
  type metadata accessor for Map<RefreshableModifier, @Sendable ()>(0);
  lazy protocol witness table accessor for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage(&lazy protocol witness table cache variable for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>, type metadata accessor for Map<RefreshableModifier, @Sendable ()>, MEMORY[0x1E698D3A0]);

  LODWORD(v4) = Attribute.init<A>(body:value:flags:update:)();

  swift_beginAccess();
  LODWORD(v31[0]) = *(v8 + 16);
  DWORD1(v31[0]) = v4;
  UniqueID.init()();
  v25 = v31[0];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type RefreshableModifier.ChildEnvironment and conformance RefreshableModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v23[2] = v19;
  v23[3] = v20;
  v23[4] = v21;
  v24 = v22;
  v23[0] = v17;
  v23[1] = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  v9 = outlined init with copy of _ViewInputs(v23, v31);
  a3(v9, &v11);
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v25 = v11;
  v26 = v12;
  outlined destroy of _ViewInputs(&v25);
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v32 = v22;
  v31[0] = v17;
  v31[1] = v18;
  return outlined destroy of _ViewInputs(v31);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFCB2F8;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFCDA60;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for AccessibilityIgnoreGesturesModifier, &protocol witness table for AccessibilityIgnoreGesturesModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFCDA50;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for AccessibilityCaptureGesturesModifier, &protocol witness table for AccessibilityCaptureGesturesModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFCF130;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for PlainListScrollContentBackgroundModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFDB8B8;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for ListLabelIconModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFDEBD8;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFE41E0[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for NavigationSearchAdjustmentModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFE43C0;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for NavigationSearchDisabledAdjustmentModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFEC258[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFEEB48[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFFD450;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFFD460[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v18 = a2[2];
  v19 = v4;
  v20 = a2[4];
  v21 = *(a2 + 20);
  v5 = a2[1];
  v16 = *a2;
  v17 = v5;
  LODWORD(v24[0]) = a1;
  v6 = off_1EFFFFE70;
  outlined init with copy of _ViewInputs(a2, v26);
  v7 = type metadata accessor for KeyPressModifier(0);
  v6(v24, &v16, v7);
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v23 = v21;
  v22[0] = v16;
  v22[1] = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v17;
  v8 = outlined init with copy of _ViewInputs(v22, v26);
  a3(v8, &v10);
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v25 = v15;
  v24[0] = v10;
  v24[1] = v11;
  outlined destroy of _ViewInputs(v24);
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;
  v27 = v21;
  v26[0] = v16;
  v26[1] = v17;
  return outlined destroy of _ViewInputs(v26);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1F0010DD8[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for ButtonDefaultRenderingModeModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v18 = a2[2];
  v19 = v4;
  v20 = a2[4];
  v21 = *(a2 + 20);
  v5 = a2[1];
  v16 = *a2;
  v17 = v5;
  LODWORD(v24[0]) = a1;
  v6 = off_1F00118C0[0];
  outlined init with copy of _ViewInputs(a2, v26);
  v7 = type metadata accessor for TabViewCustomizationModifier(0);
  v6(v24, &v16, v7);
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v23 = v21;
  v22[0] = v16;
  v22[1] = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v17;
  v8 = outlined init with copy of _ViewInputs(v22, v26);
  a3(v8, &v10);
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v25 = v15;
  v24[0] = v10;
  v24[1] = v11;
  outlined destroy of _ViewInputs(v24);
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;
  v27 = v21;
  v26[0] = v16;
  v26[1] = v17;
  return outlined destroy of _ViewInputs(v26);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFA1328;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for _SymbolEffectModifier, &protocol witness table for _SymbolEffectModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFA1338;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for _SymbolEffectsModifier, &protocol witness table for _SymbolEffectsModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFA1348;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2[3];
  v18 = a2[2];
  v19 = v4;
  v20 = a2[4];
  v21 = *(a2 + 20);
  v5 = a2[1];
  v16 = *a2;
  v17 = v5;
  LODWORD(v24[0]) = a1;
  v6 = off_1EFFACD08;
  outlined init with copy of _ViewInputs(a2, v26);
  v7 = type metadata accessor for _IndefiniteSymbolEffectModifier(0);
  v6(v24, &v16, v7, &protocol witness table for _IndefiniteSymbolEffectModifier);
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v23 = v21;
  v22[0] = v16;
  v22[1] = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v17;
  v8 = outlined init with copy of _ViewInputs(v22, v26);
  a3(v8, &v10);
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v25 = v15;
  v24[0] = v10;
  v24[1] = v11;
  outlined destroy of _ViewInputs(v24);
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;
  v27 = v21;
  v26[0] = v16;
  v26[1] = v17;
  return outlined destroy of _ViewInputs(v26);
}

{
  v4 = a2[3];
  v18 = a2[2];
  v19 = v4;
  v20 = a2[4];
  v21 = *(a2 + 20);
  v5 = a2[1];
  v16 = *a2;
  v17 = v5;
  LODWORD(v24[0]) = a1;
  v6 = off_1EFFACD28[0];
  outlined init with copy of _ViewInputs(a2, v26);
  v7 = type metadata accessor for _ConditionalSymbolEffectModifier(0);
  v6(v24, &v16, v7, &protocol witness table for _ConditionalSymbolEffectModifier);
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v23 = v21;
  v22[0] = v16;
  v22[1] = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v17;
  v8 = outlined init with copy of _ViewInputs(v22, v26);
  a3(v8, &v10);
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v25 = v15;
  v24[0] = v10;
  v24[1] = v11;
  outlined destroy of _ViewInputs(v24);
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;
  v27 = v21;
  v26[0] = v16;
  v26[1] = v17;
  return outlined destroy of _ViewInputs(v26);
}

{
  v4 = a2[3];
  v17 = a2[2];
  v18 = v4;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v5 = a2[1];
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFE1D10;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance RootEnvironmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance RootEnvironmentModifier(int *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v10 = 0;
  v11 = 1;
  v6[0] = v2;
  v6[1] = v4;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type RootEnvironmentModifier.Child and conformance RootEnvironmentModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of RootEnvironmentModifier.Child(v6);
  return _GraphInputs.environment.setter();
}

unint64_t lazy protocol witness table accessor for type RootEnvironmentModifier.Child and conformance RootEnvironmentModifier.Child()
{
  result = lazy protocol witness table cache variable for type RootEnvironmentModifier.Child and conformance RootEnvironmentModifier.Child;
  if (!lazy protocol witness table cache variable for type RootEnvironmentModifier.Child and conformance RootEnvironmentModifier.Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RootEnvironmentModifier.Child, &unk_1EFF9FE78, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RootEnvironmentModifier.Child and conformance RootEnvironmentModifier.Child);
  }

  return result;
}

uint64_t initializeWithCopy for RootEnvironmentModifier.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (*(a2 + 64) == 1)
  {
    v5 = *(a2 + 24);
    *v4 = *(a2 + 8);
    v4[1] = v5;
    v6 = *(a2 + 56);
    v4[2] = *(a2 + 40);
    v4[3] = v6;
  }

  else
  {
    swift_weakCopyInit();
    swift_weakCopyInit();
    swift_weakCopyInit();
    *(a1 + 32) = *(a2 + 32);
    v7 = *(a2 + 56);
    if (v7 == 255)
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      v8 = *(a2 + 40);
      v9 = *(a2 + 48);
      v10 = v7 & 1;
      outlined copy of SceneID(v8, v9, v7 & 1);
      *(a1 + 40) = v8;
      *(a1 + 48) = v9;
      *(a1 + 56) = v10;
    }

    v11 = *(a2 + 64);
    *(a1 + 64) = v11;
    v12 = v11;
  }

  return a1;
}

void destroy for RootEnvironmentModifier.Child(uint64_t a1)
{
  if (*(a1 + 64) != 1)
  {
    swift_weakDestroy();
    swift_weakDestroy();
    swift_weakDestroy();
    v3 = *(a1 + 56);
    if (v3 != 255)
    {
      outlined consume of SceneID(*(a1 + 40), *(a1 + 48), v3 & 1);
    }

    v4 = *(a1 + 64);
  }
}

uint64_t protocol witness for ViewGraphFeature.modifyViewOutputs(outputs:inputs:graph:) in conformance PPTFeature()
{
  PreferencesOutputs.subscript.getter();
  result = AGCreateWeakAttribute();
  *v0 = result;
  return result;
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSb_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for UserDefaultLocation<Bool>, MEMORY[0x1E69E6370], type metadata accessor for UserDefaultLocation);
  v12 = swift_allocObject();
  *(v12 + 72) = 0;
  *(v12 + 80) = 2;
  *(v12 + 88) = [objc_opt_self() standardUserDefaults];
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 108) = 0;
  *(v12 + 116) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = a5;
  *(v12 + 64) = 0;
  return v12;
}

double specialized static ScalarUserDefaultsValueTransform.readValue(from:key:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x18D00C850](a2, a3);
  v9 = [a1 objectForKey_];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v13);
    *(a4 + 24) = MEMORY[0x1E69E6370];
    v10 = MEMORY[0x18D00C850](a2, a3);
    v11 = [a1 BOOLForKey_];

    *a4 = v11;
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    outlined destroy of Any?(v13);
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

char *AppStorage.init<A>(wrappedValue:_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[0] = a5;
  v16[1] = a7;
  v16[2] = a6;
  v16[3] = a8;
  v13 = type metadata accessor for RawRepresentableTransform(0, v16);
  v14 = specialized AppStorage.init(key:transform:store:defaultValue:)(a2, a3, v13, &protocol witness table for RawRepresentableTransform<A, B>, a4, a1, a5);
  (*(*(a5 - 8) + 8))(a1, a5);
  return v14;
}

char *AppStorage.init<A>(wrappedValue:_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return AppStorage.init<A>(wrappedValue:_:store:)(a1, a2, a3, a4, a5, a6, &unk_1EFFBA3D0, &protocol witness table for StringTransform);
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)(a1, a2, a3, a4, a5, a6, &unk_1EFFBA410, &protocol witness table for IntegerTransform);
}

id GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = v3[5];
  v109 = v3[4];
  v110[0] = v5;
  *(v110 + 12) = *(v3 + 92);
  v6 = v3[1];
  v106 = *v3;
  v107 = v6;
  v7 = v3[3];
  *v108 = v3[2];
  *&v108[16] = v7;
  v8 = v106;
  v9 = BYTE8(v106);
  if (BYTE8(v106) == 2)
  {
    v10 = a1;
    v87 = a3;
    v11 = *(v106 + 32);
    v102 = *(v106 + 16);
    v103 = v11;
    v104 = *(v106 + 48);
    v12 = *(v106 + 32);
    v96 = *(v106 + 16);
    v97 = v12;
    *&v98 = *(v106 + 48);
    outlined init with copy of ResolvedVectorGlyph(&v102, &v90);
    v13 = ResolvedVectorGlyph.glyph.getter();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 name];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v100 = v109;
        v101[0] = v110[0];
        *(v101 + 12) = *(v110 + 12);
        v96 = v106;
        v97 = v107;
        v98 = *v108;
        v99 = *&v108[16];
        v90 = v102;
        v91 = v103;
        *&v92 = v104;
        v20 = ResolvedVectorGlyph.value.getter();
        v105 = v103;
        v89 = v103;
        outlined init with copy of Image.Location(&v105, &v88);
        v21 = GraphicsImage.image(with:variableValue:at:)(v17, v19, v20 | ((HIDWORD(v20) & 1) << 32), &v89);

        outlined consume of Image.Location(v89);
        if (v21)
        {
          if (v10)
          {
            [v14 pointSize];
            v23 = v22;
            v24 = specialized UIImageSymbolWeight.init(_:)([v14 glyphWeight]);
            v25 = [v14 glyphSize];
            if ((v25 - 1) >= 3)
            {
              v26 = -1;
            }

            else
            {
              v26 = v25;
            }

            v27 = [objc_opt_self() configurationWithPointSize:v24 weight:v26 scale:v23];
            MEMORY[0x1EEE9AC00](v27);
            v86[2] = v14;
            v86[3] = &v102;
            v28 = swift_allocObject();
            *(v28 + 16) = partial apply for closure #1 in GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:);
            *(v28 + 24) = v86;
            *&v98 = partial apply for thunk for @callee_guaranteed (@guaranteed UIMutableTraits) -> ();
            *(&v98 + 1) = v28;
            *&v96 = MEMORY[0x1E69E9820];
            *(&v96 + 1) = 1107296256;
            *&v97 = thunk for @escaping @callee_guaranteed (@guaranteed UIMutableTraits) -> ();
            *(&v97 + 1) = &block_descriptor_3;
            v29 = _Block_copy(&v96);
            v30 = objc_opt_self();
            v31 = v27;

            v32 = [v30 traitCollectionWithTraits_];
            _Block_release(v29);

            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (isEscapingClosureAtFileLocation)
            {
              __break(1u);
              goto LABEL_58;
            }

            isEscapingClosureAtFileLocation = [v31 configurationWithTraitCollection_];

LABEL_29:
            v96 = v102;
            v97 = v103;
            *&v98 = v104;
            ResolvedVectorGlyph.resolvedRenderingMode.getter();
            if (v89 <= 8u)
            {
              if (((1 << v89) & 0x64) != 0)
              {
                v32 = [v21 imageWithRenderingMode_];
                if ((v109 & 1) == 0)
                {
                  v96 = *&v108[12];
                  LODWORD(v97) = *&v108[28];
                  v60 = objc_opt_self();
                  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
                  v61 = swift_allocObject();
                  *(v61 + 16) = xmmword_18CD69590;
                  Color.ResolvedHDR.kitColor.getter();
                  objc_opt_self();
                  *(v61 + 32) = swift_dynamicCastObjCClassUnconditional();
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  v63 = [v60 _configurationWithHierarchicalColors_];

                  v64 = [isEscapingClosureAtFileLocation configurationByApplyingConfiguration_];
                  isEscapingClosureAtFileLocation = v64;
                }

                goto LABEL_56;
              }

              if (((1 << v89) & 0x88) != 0)
              {
                v100 = v109;
                v101[0] = v110[0];
                *(v101 + 12) = *(v110 + 12);
                v96 = v106;
                v97 = v107;
                v98 = *v108;
                v99 = *&v108[16];
                GraphicsImage.styleResolverMode.getter();
                v31 = WORD4(v90);

                if (v87)
                {
                  v32 = v21;

                  EnvironmentValues.init()();
                  v28 = v90;
                  if (one-time initialization token for configuredForPlatform == -1)
                  {
LABEL_34:
                    if (v28)
                    {
                      if (!static EnvironmentValues.configuredForPlatform || v28 != static EnvironmentValues.configuredForPlatform)
                      {
                        EnvironmentValues._configureForPlatform(traitCollection:)(0);
                      }
                    }

                    else if (static EnvironmentValues.configuredForPlatform)
                    {

                      EnvironmentValues.plist.setter();
                    }

                    v73 = v87;

                    outlined init with copy of GraphicsImage(&v106, &v96);
                    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_So7UIColorCs5NeverOTg50121_s7SwiftUI13GraphicsImageVAAE012makePlatformD024fixedSymbolConfiguration16flattenMaskColor13colorResolverSo7UIImageCSgSb_v31AA0F8ItemListV0P0V0dlN0VSgtFSo7D9CSiXEfU0_0G2UI0lyZ0V0Y0V0j5ColorR0VAL17EnvironmentValuesVAL0iJ0VTf1cn_nTf4ngnd_n(0, v31, v73, &v90);
                    outlined destroy of GraphicsImage(&v106);

                    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
                    v74 = Array._bridgeToObjectiveC()().super.isa;

                    v75 = [objc_opt_self() configurationWithPaletteColors_];

                    v76 = v75;
                    v77 = [isEscapingClosureAtFileLocation configurationByApplyingConfiguration_];

                    isEscapingClosureAtFileLocation = v77;
                    goto LABEL_56;
                  }

LABEL_58:
                  swift_once();
                  goto LABEL_34;
                }

                if (v109)
                {
                  v72 = v21;
                }

                else
                {
                  v96 = *&v108[12];
                  LODWORD(v97) = *&v108[28];
                  type metadata accessor for _ContiguousArrayStorage<(_UIImageNamedColorStyle, UIColor)>(0);
                  v78 = swift_allocObject();
                  *(v78 + 16) = xmmword_18CD63400;
                  v79 = *MEMORY[0x1E69DE8A8];
                  *(v78 + 32) = *MEMORY[0x1E69DE8A8];
                  v80 = v21;
                  v81 = v79;
                  Color.ResolvedHDR.kitColor.getter();
                  objc_opt_self();
                  *(v78 + 40) = swift_dynamicCastObjCClassUnconditional();
                  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23_UIImageNamedColorStylea_So7UIColorCTt0g5Tf4g_n(v78);
                  swift_setDeallocating();
                  outlined destroy of (_UIImageNamedColorStyle, UIColor)(v78 + 32);
                  swift_deallocClassInstance();
                  type metadata accessor for _UIImageNamedColorStyle(0);
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
                  lazy protocol witness table accessor for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle();
                  v82 = Dictionary._bridgeToObjectiveC()().super.isa;

                  v83 = [objc_opt_self() _configurationWithNamedColorStyles_];

                  v84 = [isEscapingClosureAtFileLocation configurationByApplyingConfiguration_];
                  isEscapingClosureAtFileLocation = v84;
                }

                v32 = [v21 imageWithRenderingMode_];

LABEL_56:
                v85 = [v32 imageWithConfiguration_];
                outlined destroy of ResolvedVectorGlyph(&v102);

                return v85;
              }

              if (((1 << v89) & 0x110) != 0)
              {
                goto LABEL_44;
              }
            }

            if (v89)
            {
              if ((v109 & 1) == 0)
              {
                v90 = *&v108[12];
                LODWORD(v91) = *&v108[28];
                type metadata accessor for _ContiguousArrayStorage<(_UIImageNamedColorStyle, UIColor)>(0);
                v66 = swift_allocObject();
                *(v66 + 16) = xmmword_18CD63400;
                v67 = *MEMORY[0x1E69DE8A8];
                *(v66 + 32) = *MEMORY[0x1E69DE8A8];
                v68 = v67;
                Color.ResolvedHDR.kitColor.getter();
                objc_opt_self();
                *(v66 + 40) = swift_dynamicCastObjCClassUnconditional();
                _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23_UIImageNamedColorStylea_So7UIColorCTt0g5Tf4g_n(v66);
                swift_setDeallocating();
                outlined destroy of (_UIImageNamedColorStyle, UIColor)(v66 + 32);
                swift_deallocClassInstance();
                type metadata accessor for _UIImageNamedColorStyle(0);
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
                lazy protocol witness table accessor for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle();
                v69 = Dictionary._bridgeToObjectiveC()().super.isa;

                v70 = [objc_opt_self() _configurationWithNamedColorStyles_];

                v71 = [isEscapingClosureAtFileLocation configurationByApplyingConfiguration_];
                isEscapingClosureAtFileLocation = v71;
              }

              v65 = [v21 imageWithRenderingMode_];
            }

            else
            {
LABEL_44:
              v65 = [v21 imageWithRenderingMode_];
            }

            v32 = v65;
            goto LABEL_56;
          }

          v96 = v102;
          v97 = v103;
          *&v98 = v104;
          ResolvedVectorGlyph.resolvedRenderingMode.getter();
          if (v90 == 3)
          {
            isEscapingClosureAtFileLocation = [objc_opt_self() unspecifiedConfiguration];
            goto LABEL_29;
          }

          outlined destroy of ResolvedVectorGlyph(&v102);

          return v21;
        }
      }
    }

    outlined destroy of ResolvedVectorGlyph(&v102);
  }

  v100 = v109;
  v101[0] = v110[0];
  *(v101 + 12) = *(v110 + 12);
  v96 = v106;
  v97 = v107;
  v98 = *v108;
  v99 = *&v108[16];
  v94 = v109;
  v95[0] = v110[0];
  *(v95 + 12) = *(v110 + 12);
  v90 = v106;
  v91 = v107;
  v92 = *v108;
  v93 = *&v108[16];
  GraphicsImage.size.getter();
  v36.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(v35, v34), 0).value;
  if (!v36.value)
  {
    return 0;
  }

  value = v36.value;
  v100 = v109;
  v101[0] = v110[0];
  *(v101 + 12) = *(v110 + 12);
  v96 = v106;
  v97 = v107;
  v98 = *v108;
  v99 = *&v108[16];
  GraphicsImage.scale.getter();
  v94 = v109;
  v95[0] = v110[0];
  *(v95 + 12) = *(v110 + 12);
  v90 = v106;
  v91 = v107;
  v92 = *v108;
  v93 = *&v108[16];
  v39 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:value scale:qword_18CD725D8[GraphicsImage.bitmapOrientation.getter()] orientation:v38];
  v40 = v39;
  v41 = *&v108[12];
  v42 = *&v108[20];
  v43 = *&v108[28];
  v44 = v109;
  if (v109)
  {
    v45 = 1;
  }

  else
  {
    v45 = 2;
  }

  v21 = [v39 imageWithRenderingMode_];

  if ((a2 & 1) != 0 && (v44 & 1) == 0)
  {
    *&v90 = v41;
    *(&v90 + 1) = v42;
    LODWORD(v91) = v43;
    v46 = Color.ResolvedHDR.kitColor.getter();
    objc_opt_self();
    v47 = [v21 imageWithTintColor_];

    v21 = v47;
  }

  if (v9 != 2)
  {

    return v21;
  }

  v48 = *(v8 + 24);
  v49 = *(v8 + 32);
  v50 = *(v8 + 40);
  v51 = *(v8 + 44);
  v52 = *(v8 + 45);
  v53 = *(v8 + 48);
  *&v96 = *(v8 + 16);
  BYTE8(v96) = v48;
  *&v97 = v49;
  DWORD2(v97) = v50;
  BYTE12(v97) = v51;
  BYTE13(v97) = v52;
  *&v98 = v53;
  v54 = v96;
  outlined copy of Image.Location(v49);
  v55 = v53;
  v56 = ResolvedVectorGlyph.glyph.getter();
  if (!v56)
  {

    outlined consume of Image.Location(v49);
    return v21;
  }

  v57 = v56;
  result = [v21 _imageWithSymbolMetricsFromNamedVectorGlyph_];
  if (result)
  {
    v59 = result;

    outlined consume of Image.Location(v49);
    return v59;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIMutableTraits) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id partial apply for closure #1 in GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  [v3 scale];
  [a1 setDisplayScale_];
  v5 = *(v4 + 8);

  return [a1 setLayoutDirection_];
}

id GraphicsImage.image(with:variableValue:at:)(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v4 = *a4;
  if ((a3 & 0x100000000) != 0)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        v18 = v4;
        v19 = MEMORY[0x18D00C850](a1, a2);
        v12 = [objc_opt_self() imageNamed:v19 inBundle:v18];
        outlined consume of Image.Location(v4);

        return v12;
      }

      v6 = MEMORY[0x18D00C850](a1, a2);
      v7 = [objc_opt_self() _systemImageNamed_];
    }

    else
    {
      v6 = MEMORY[0x18D00C850](a1, a2);
      v7 = [objc_opt_self() systemImageNamed_];
    }
  }

  else
  {
    v5 = *&a3;
    if (!v4)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);

      v10._countAndFlagsBits = a1;
      v10._object = a2;
      v20.value.super.isa = 0;
      return UIImage.init(systemName:variableValue:configuration:)(v10, v5, v20);
    }

    if (v4 != 1)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);

      outlined copy of Image.Location(v4);
      v15._countAndFlagsBits = a1;
      v15._object = a2;
      v21.value.super.isa = v4;
      v21.is_nil = 0;
      return UIImage.init(named:in:variableValue:configuration:)(v15, v21, v5, v22);
    }

    v6 = MEMORY[0x18D00C850](a1, a2);
    v7 = [objc_opt_self() _systemImageNamed_variableValue_withConfiguration_];
  }

  v12 = v7;

  return v12;
}

void outlined consume of Image.Location(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t specialized UIImageSymbolWeight.init(_:)(uint64_t result)
{
  if ((result - 1) >= 9)
  {
    return 4;
  }

  return result;
}

char *specialized AppStorage.init(key:transform:store:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserDefaultLocation(0, v19, v17, v18);
  (*(v14 + 16))(v16, a6, a7);
  swift_allocObject();
  return UserDefaultLocation.init(key:transform:store:defaultValue:base:)(a1, a2, a3, a4, a5, v16, 0);
}

char *UserDefaultLocation.init(key:transform:store:defaultValue:base:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *v7;
  *&v7[*(*v7 + 128)] = 0;
  v15 = *(v14 + 80);
  v16 = *(v15 - 8);
  (*(v16 + 56))(&v7[*(*v7 + 136)], 1, 1, v15);
  v17 = *(*v7 + 144);
  *&v7[v17] = [objc_opt_self() standardUserDefaults];
  *&v7[*(*v7 + 152)] = 0;
  v7[*(*v7 + 160)] = 0;
  v18 = &v7[*(*v7 + 168)];
  *v18 = 0;
  v18[8] = 1;
  *&v7[*(*v7 + 112)] = a5;
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  *(v7 + 4) = a3;
  *(v7 + 5) = a4;
  (*(v16 + 32))(&v7[*(*v7 + 104)], a6, v15);
  *&v7[*(*v7 + 120)] = a7;
  return v7;
}

uint64_t type metadata completion function for FocusedValue.Content(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void specialized static AppStorage._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for GraphHost();
  v7 = MEMORY[0x18D00B7D0]();
  v8 = *(a3 + 16);
  swift_beginAccess();
  v9 = *(v8 + 16);
  v10 = AGCreateWeakAttribute();
  specialized UserDefaultPropertyBox.init(host:environment:signal:)(v7, v9, v10);
  v12 = v11;

  v15 = type metadata accessor for UserDefaultPropertyBox(0, a4, v13, v14);
  swift_getWitnessTable(protocol conformance descriptor for UserDefaultPropertyBox<A>, v15);
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
  type metadata accessor for AppStorage(0, a4, v16, v17);
  static DynamicProperty.addTreeValue<A, B>(_:as:at:in:flags:)();
}

uint64_t specialized UserDefaultPropertyBox.init(host:environment:signal:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = HIDWORD(a3);
  v6 = type metadata accessor for UserDefaultObserver();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  swift_weakInit();
  v12 = v3;
  v13 = v5;
  v14 = 0;
  outlined init with take of UserDefaultObserver.Target(v11, &v7[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_target]);
  v10.receiver = v7;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, sel_init);
  return a2;
}

uint64_t initializeWithTake for UserDefaultObserver.Target(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    *result = *a2;
    *(result + 16) = 1;
  }

  else
  {
    result = swift_weakTakeInit();
    *(result + 8) = *(a2 + 8);
    *(result + 16) = 0;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18BDAA230(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = v3;
  return a1;
}

uint64_t type metadata completion function for FocusedValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = (a4)(319, *(a1 + 16), a3);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static _TupleScene._makeScene(scene:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v38 = *a2;
  v6 = *a1;
  v39 = v5;
  *v40 = a2[2];
  *&v40[12] = *(a2 + 44);
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA05SceneD0V_Tt1g5(a3, v36);
  v7 = *v36;
  *&v36[52] = *&v40[12];
  *&v36[40] = *v40;
  *&v36[24] = v39;
  *&v36[8] = v38;
  *v36 = v6;
  *&v36[72] = 0;
  v37 = MEMORY[0x1E69E7CC0];
  v8 = *(v7 + 16);
  if (v8)
  {
    outlined init with copy of _SceneInputs(&v38, v34);
    v9 = (v7 + 40);
    do
    {
      v10 = *v9;
      v9 = (v9 + 24);
      *&v36[72] = AGTupleElementOffset();
      v34[0] = v10;
      List = type metadata accessor for _TupleScene.MakeList(0, a3, v11, v12);
      TypeConformance<>.visitType<A>(visitor:)(v36, List, &protocol witness table for _TupleScene<A>.MakeList);
      --v8;
    }

    while (v8);

    v14 = v37;
  }

  else
  {
    outlined init with copy of _SceneInputs(&v38, v34);

    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v14 + 16);
  if (v15)
  {
    *&v34[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = *&v34[0];
    v17 = (v14 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      *&v34[0] = v16;
      v20 = *(v16 + 16);
      v21 = *(v16 + 24);

      if (v20 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1);
        v16 = *&v34[0];
      }

      v17 += 4;
      *(v16 + 16) = v20 + 1;
      v22 = v16 + 16 * v20;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      --v15;
    }

    while (v15);
  }

  PreferencesOutputs.init()();
  v32 = *&v34[0];
  v33 = DWORD2(v34[0]);
  v23 = *(*&v40[16] + 16);
  if (v23)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v24 = -v23;
    v25 = 1;
    do
    {
      v26 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v26(v34, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v25;
    }

    while (v24 + v25 != 1);
  }

  else
  {
  }

  *a4 = v32;
  *(a4 + 8) = v33;
  v34[2] = *&v36[32];
  v34[3] = *&v36[48];
  v34[4] = *&v36[64];
  v35 = v37;
  v34[0] = *v36;
  v34[1] = *&v36[16];
  v29 = type metadata accessor for _TupleScene.MakeList(0, a3, v27, v28);
  return (*(*(v29 - 8) + 8))(v34, v29);
}

unint64_t lazy protocol witness table accessor for type SceneDescriptor and conformance SceneDescriptor()
{
  result = lazy protocol witness table cache variable for type SceneDescriptor and conformance SceneDescriptor;
  if (!lazy protocol witness table cache variable for type SceneDescriptor and conformance SceneDescriptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneDescriptor, &type metadata for SceneDescriptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptor and conformance SceneDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<SceneDescriptor>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<SceneDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<SceneDescriptor>, lazy protocol witness table accessor for type SceneDescriptor and conformance SceneDescriptor, &type metadata for SceneDescriptor, MEMORY[0x1E697FAA8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<SceneDescriptor>>);
    }
  }
}

uint64_t _TupleScene.MakeList.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for _TupleScene(255, *(a2 + 16), a3, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v8 = *(v4 + 24);
  v24[0] = *(v4 + 8);
  v24[1] = v8;
  v25[0] = *(v4 + 40);
  *(v25 + 12) = *(v4 + 52);
  v9 = *(v4 + 24);
  v18 = *(v4 + 8);
  v19 = v9;
  *v20 = *(v4 + 40);
  *&v20[12] = *(v4 + 52);
  v10 = *(a4 + 32);
  outlined init with copy of _SceneInputs(v24, v26);
  v10(&v22, v21, &v18, a3, a4);
  v26[0] = v18;
  v26[1] = v19;
  v27[0] = *v20;
  *(v27 + 12) = *&v20[12];
  outlined destroy of _SceneInputs(v26);
  v11 = v22;
  v12 = v23;
  v13 = *(v4 + 80);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
    v13 = result;
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 16) = v16 + 1;
  v17 = v13 + 16 * v16;
  *(v17 + 32) = v11;
  *(v17 + 40) = v12;
  *(v5 + 80) = v13;
  return result;
}

uint64_t static Commands._makeCommands(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = a2[1];
  v37 = *a2;
  v38 = v8;
  v39[0] = a2[2];
  *(v39 + 12) = *(a2 + 44);
  static DynamicPropertyCache.fields(of:)();
  v9 = v44;
  v34 = v37;
  v35 = v38;
  v36[0] = v39[0];
  *(v36 + 12) = *(v39 + 12);
  v20 = DWORD1(v44);
  v21 = v7;
  LODWORD(v31) = v7;
  v22 = *(&v43 + 1);
  v23 = v43;
  v40 = v43;
  LOBYTE(v41) = v44;
  DWORD1(v41) = DWORD1(v44);
  outlined init with copy of _CommandsInputs(&v37, &v43);
  static Commands.makeBody(commands:inputs:fields:)(v30, &v43, &v31, &v34, &v40, a3, a4);
  v10 = *(&v43 + 1);
  v19 = v43;
  LOBYTE(v7) = v44;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = v34;
  v41 = v35;
  v42[0] = v36[0];
  *(v42 + 12) = *(v36 + 12);
  v31 = v34;
  v32 = v35;
  v33[0] = v36[0];
  *(v33 + 12) = *(v36 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _CommandsInputs(&v40, &v43);
  v13(&v25, v30, &v31, AssociatedTypeWitness, AssociatedConformanceWitness);
  v43 = v31;
  v44 = v32;
  v45[0] = v33[0];
  *(v45 + 12) = *(v33 + 12);
  outlined destroy of _CommandsInputs(&v43);
  v14 = v25;
  v15 = v26;
  if (v7)
  {
    v31 = v34;
    v32 = v35;
    v33[0] = v36[0];
    *(v33 + 12) = *(v36 + 12);
    outlined destroy of _CommandsInputs(&v31);
    v17 = v22;
    v16 = v23;
  }

  else
  {
    v30[0] = v19;
    v30[1] = v10;
    v29 = v21;
    v25 = v23;
    v26 = v22;
    v27 = v9;
    v28 = v20;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    v31 = v34;
    v32 = v35;
    v33[0] = v36[0];
    *(v33 + 12) = *(v36 + 12);
    outlined destroy of _CommandsInputs(&v31);
    v16 = v23;
    v17 = v22;
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout(v16, v17, v9);
  *a5 = v14;
  *(a5 + 8) = v15;
  return result;
}

uint64_t static Commands.makeBody(commands:inputs:fields:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (AGTypeID.isValueType.getter())
  {
    v10 = type metadata accessor for CommandsBodyAccessor(0, a6, a7, v9);
    swift_getWitnessTable(protocol conformance descriptor for CommandsBodyAccessor<A>, v10);
    return BodyAccessor.makeBody(container:inputs:fields:)();
  }

  else
  {
    _StringGuts.grow(_:)(32);

    v12 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static FocusedObject._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *MEMORY[0x1E69E9840];
  Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  lazy protocol witness table accessor for type FocusedValuesInputKey and conformance FocusedValuesInputKey();
  PropertyList.subscript.getter();
  v8 = AGCreateWeakAttribute();
  StoreBox.init(host:focusedValues:signal:)(v13, v8, &v13);
  v10 = type metadata accessor for StoreBox(0, a4, a6, v9);
  swift_getWitnessTable(protocol conformance descriptor for StoreBox<A>, v10);
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
  type metadata accessor for FocusedObject(0, a4, a6, v11);
  static DynamicProperty.addTreeValue<A, B>(_:as:at:in:flags:)();
  return (*(*(v10 - 8) + 8))(&v13, v10);
}

uint64_t StoreBox.init(host:focusedValues:signal:)@<X0>(int a2@<W1>, unint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v6 = a3;
  v9 = HIDWORD(a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SubscriptionLifetime();
  swift_allocObject();
  v10 = SubscriptionLifetime.init()();
  type metadata accessor for AttributeInvalidatingSubscriber();
  swift_allocObject();
  result = AttributeInvalidatingSubscriber.init(host:attribute:)();
  *a6 = a2;
  *(a6 + 4) = v6;
  *(a6 + 8) = v9;
  *(a6 + 16) = result;
  *(a6 + 24) = v10;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  return result;
}

uint64_t initializeWithCopy for StoreBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  swift_unknownObjectRetain();
  return a1;
}

uint64_t destroy for StoreBox(void *a1)
{

  return swift_unknownObjectRelease();
}

uint64_t specialized static FocusedValue._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = type metadata accessor for FocusedValueBox(0, a4, a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  lazy protocol witness table accessor for type FocusedValuesInputKey and conformance FocusedValuesInputKey();
  PropertyList.subscript.getter();
  v9 = v11[3];
  *(v8 + 1) = 0;
  (*(*(a4 - 8) + 56))(&v8[*(v5 + 32)], 1, 1, a4);
  *v8 = v9;
  swift_getWitnessTable(protocol conformance descriptor for FocusedValueBox<A>, v5);
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance SidebarCommands@<X0>(__int128 *a2@<X1>, uint64_t x8_0@<X8>)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v5, x8_0);
}

uint64_t specialized static Commands._makeCommands(content:inputs:)@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v4 = v19;
  v5 = v20;
  v6 = DWORD1(v20);
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v18[0] = a2[2];
  *(v18 + 12) = *(a2 + 44);
  outlined init with copy of _CommandsInputs(a2, &v19);
  if (AGTypeID.isValueType.getter())
  {
    v19 = v4;
    LOBYTE(v20) = v5;
    DWORD1(v20) = v6;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<SidebarCommands>, lazy protocol witness table accessor for type SidebarCommands and conformance SidebarCommands, &type metadata for SidebarCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<SidebarCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v8 = v14;
    v19 = v16;
    v20 = v17;
    v21[0] = v18[0];
    *(v21 + 12) = *(v18 + 12);
    _s7SwiftUI15WithCommandFlagV13_makeCommands7content6inputsAA01_G7OutputsVAA11_GraphValueVyACyxGG_AA01_G6InputsVtFZAA05EmptyG0V_Tt2B5(&v13);
    v9 = v13;
    v10 = DWORD2(v13);
    if ((v8 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v13 = v16;
    v14 = v17;
    v15[0] = v18[0];
    *(v15 + 12) = *(v18 + 12);
    outlined destroy of _CommandsInputs(&v13);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v4, *(&v4 + 1), v5);
    *a3 = v9;
    *(a3 + 8) = v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v4 = v19;
  v5 = v20;
  v6 = DWORD1(v20);
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v18[0] = a2[2];
  *(v18 + 12) = *(a2 + 44);
  outlined init with copy of _CommandsInputs(a2, &v19);
  if (AGTypeID.isValueType.getter())
  {
    v19 = v4;
    LOBYTE(v20) = v5;
    DWORD1(v20) = v6;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<TextFormattingCommands>, lazy protocol witness table accessor for type TextFormattingCommands and conformance TextFormattingCommands, &type metadata for TextFormattingCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<TextFormattingCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v8 = v14;
    v19 = v16;
    v20 = v17;
    v21[0] = v18[0];
    *(v21 + 12) = *(v18 + 12);
    _s7SwiftUI15WithCommandFlagV13_makeCommands7content6inputsAA01_G7OutputsVAA11_GraphValueVyACyxGG_AA01_G6InputsVtFZAA05EmptyG0V_Tt2B5(&v13);
    v9 = v13;
    v10 = DWORD2(v13);
    if ((v8 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v13 = v16;
    v14 = v17;
    v15[0] = v18[0];
    *(v15 + 12) = *(v18 + 12);
    outlined destroy of _CommandsInputs(&v13);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v4, *(&v4 + 1), v5);
    *a3 = v9;
    *(a3 + 8) = v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v4 = v19;
  v5 = v20;
  v6 = DWORD1(v20);
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v18[0] = a2[2];
  *(v18 + 12) = *(a2 + 44);
  outlined init with copy of _CommandsInputs(a2, &v19);
  if (AGTypeID.isValueType.getter())
  {
    v19 = v4;
    LOBYTE(v20) = v5;
    DWORD1(v20) = v6;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<TextEditingCommands>, lazy protocol witness table accessor for type TextEditingCommands and conformance TextEditingCommands, &type metadata for TextEditingCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<TextEditingCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v8 = v14;
    v19 = v16;
    v20 = v17;
    v21[0] = v18[0];
    *(v21 + 12) = *(v18 + 12);
    _s7SwiftUI15WithCommandFlagV13_makeCommands7content6inputsAA01_G7OutputsVAA11_GraphValueVyACyxGG_AA01_G6InputsVtFZAA05EmptyG0V_Tt2B5(&v13);
    v9 = v13;
    v10 = DWORD2(v13);
    if ((v8 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v13 = v16;
    v14 = v17;
    v15[0] = v18[0];
    *(v15 + 12) = *(v18 + 12);
    outlined destroy of _CommandsInputs(&v13);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v4, *(&v4 + 1), v5);
    *a3 = v9;
    *(a3 + 8) = v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v4 = v19;
  v5 = v20;
  v6 = DWORD1(v20);
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v18[0] = a2[2];
  *(v18 + 12) = *(a2 + 44);
  outlined init with copy of _CommandsInputs(a2, &v19);
  if (AGTypeID.isValueType.getter())
  {
    v19 = v4;
    LOBYTE(v20) = v5;
    DWORD1(v20) = v6;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<PrintingCommands>, lazy protocol witness table accessor for type PrintingCommands and conformance PrintingCommands, &type metadata for PrintingCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<PrintingCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v8 = v14;
    v19 = v16;
    v20 = v17;
    v21[0] = v18[0];
    *(v21 + 12) = *(v18 + 12);
    _s7SwiftUI19_ConditionalContentVA2A8CommandsRzAaDR_rlE05_makeE07content6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA15WithCommandFlagVyAA05EmptyE0VG_ATTt2B5(&v19, &v13);
    v9 = v13;
    v10 = DWORD2(v13);
    if ((v8 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v13 = v16;
    v14 = v17;
    v15[0] = v18[0];
    *(v15 + 12) = *(v18 + 12);
    outlined destroy of _CommandsInputs(&v13);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v4, *(&v4 + 1), v5);
    *a3 = v9;
    *(a3 + 8) = v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v4 = v19;
  v5 = v20;
  v6 = DWORD1(v20);
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v18[0] = a2[2];
  *(v18 + 12) = *(a2 + 44);
  outlined init with copy of _CommandsInputs(a2, &v19);
  if (AGTypeID.isValueType.getter())
  {
    v19 = v4;
    LOBYTE(v20) = v5;
    DWORD1(v20) = v6;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<ToolbarCommands>, lazy protocol witness table accessor for type ToolbarCommands and conformance ToolbarCommands, &type metadata for ToolbarCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<ToolbarCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v8 = v14;
    v19 = v16;
    v20 = v17;
    v21[0] = v18[0];
    *(v21 + 12) = *(v18 + 12);
    _s7SwiftUI15WithCommandFlagV13_makeCommands7content6inputsAA01_G7OutputsVAA11_GraphValueVyACyxGG_AA01_G6InputsVtFZAA05EmptyG0V_Tt2B5(&v13);
    v9 = v13;
    v10 = DWORD2(v13);
    if ((v8 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v13 = v16;
    v14 = v17;
    v15[0] = v18[0];
    *(v15 + 12) = *(v18 + 12);
    outlined destroy of _CommandsInputs(&v13);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v4, *(&v4 + 1), v5);
    *a3 = v9;
    *(a3 + 8) = v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v4 = v20;
  v5 = v21;
  v6 = DWORD1(v21);
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19[0] = a2[2];
  *(v19 + 12) = *(a2 + 44);
  outlined init with copy of _CommandsInputs(a2, &v20);
  if (AGTypeID.isValueType.getter())
  {
    v20 = v4;
    LOBYTE(v21) = v5;
    DWORD1(v21) = v6;
    type metadata accessor for WithCommandFlag<EmptyCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<Never>, MEMORY[0x1E69E73E0], &protocol witness table for Never, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<Never> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v8 = v15;
    v20 = v17;
    v21 = v18;
    v22[0] = v19[0];
    *(v22 + 12) = *(v19 + 12);
    outlined init with copy of _CommandsInputs(&v20, &v14);
    specialized static Commands._makeCommands(content:inputs:)(v13, &v20, &v14);
    outlined destroy of _CommandsInputs(&v20);
    v9 = v14;
    v10 = DWORD2(v14);
    if ((v8 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v14 = v17;
    v15 = v18;
    v16[0] = v19[0];
    *(v16 + 12) = *(v19 + 12);
    outlined destroy of _CommandsInputs(&v14);
    result = outlined consume of DynamicPropertyCache.Fields.Layout(v4, *(&v4 + 1), v5);
    *a3 = v9;
    *(a3 + 8) = v10;
  }

  else
  {
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    *&v20 = 0xD00000000000001ELL;
    *(&v20 + 1) = 0x800000018CD50BC0;
    MEMORY[0x18D00C9B0](0x726576654ELL, 0xE500000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SidebarCommands and conformance SidebarCommands()
{
  result = lazy protocol witness table cache variable for type SidebarCommands and conformance SidebarCommands;
  if (!lazy protocol witness table cache variable for type SidebarCommands and conformance SidebarCommands)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarCommands, &type metadata for SidebarCommands, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarCommands and conformance SidebarCommands);
  }

  return result;
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA05SceneD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static SceneDescriptor.typeCache;
  if (*(static SceneDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type SceneDescriptor and conformance SceneDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = static SceneDescriptor.typeCache;
    static SceneDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a1, isUniquelyReferenced_nonNull_native);
    static SceneDescriptor.typeCache = v9;
    result = swift_endAccess();
    *a2 = v10;
  }

  return result;
}

uint64_t type metadata completion function for FocusedValueBox(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeWithCopy for FocusedValueBox(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v9 + 8;
  v11 = v9 + 8 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v8 + 48);

  if (v12(v11 & ~v9, 1, v7))
  {
    if (*(v8 + 84))
    {
      v13 = *(v8 + 64);
    }

    else
    {
      v13 = *(v8 + 64) + 1;
    }

    memcpy((v10 & ~v9), (v11 & ~v9), v13);
  }

  else
  {
    (*(v8 + 16))(v10 & ~v9, v11 & ~v9, v7);
    (*(v8 + 56))(v10 & ~v9, 0, 1, v7);
  }

  return a1;
}

uint64_t destroy for FocusedValueBox(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;

  v4 = *(a2 + 16);
  v9 = *(v4 - 8);
  v5 = *(v9 + 80);
  v6 = v3 + v5 + 8;
  result = (*(v9 + 48))(v6 & ~v5, 1, v4);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(v6 & ~v5, v4);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for OpenWindowAction(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OpenWindowAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<SidebarCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<SidebarCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<SidebarCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<SidebarCommands>, lazy protocol witness table accessor for type SidebarCommands and conformance SidebarCommands, &type metadata for SidebarCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable(protocol conformance descriptor for CommandsBodyAccessor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<SidebarCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

uint64_t static TransformSceneListModifier._makeScene(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v14 = *(a2 + 40);
  v4 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  v5 = *(a2 + 56);
  lazy protocol witness table accessor for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput();
  PropertyList.subscript.getter();
  v6 = v16;
  v10 = v15;
  v7 = BYTE8(v16);
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  type metadata accessor for Map<TransformSceneListModifier, (_:)>(0);
  lazy protocol witness table accessor for type Map<TransformSceneListModifier, (_:)> and conformance Map<A, B>();

  Attribute.init<A>(body:value:flags:update:)();

  v15 = v4;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v3;
  v20 = v5;
  a3(v8, &v15);
  v15 = v3;
  LODWORD(v16) = v5;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  outlined consume of SceneList.Namespace(v10, v6, v7);
}

uint64_t sub_18BDABFC8()
{

  return swift_deallocObject();
}

uint64_t sub_18BDAC000@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a2[1] = v5;
}

void type metadata accessor for Map<TransformSceneListModifier, (_:)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<TransformSceneListModifier, (_:)>)
  {
    type metadata accessor for (_:)();
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<TransformSceneListModifier, (_:)>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransformSceneListModifier.SceneListTransform and conformance TransformSceneListModifier.SceneListTransform()
{
  result = lazy protocol witness table cache variable for type TransformSceneListModifier.SceneListTransform and conformance TransformSceneListModifier.SceneListTransform;
  if (!lazy protocol witness table cache variable for type TransformSceneListModifier.SceneListTransform and conformance TransformSceneListModifier.SceneListTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransformSceneListModifier.SceneListTransform, &unk_1F0017DF8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TransformSceneListModifier.SceneListTransform and conformance TransformSceneListModifier.SceneListTransform);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TransformSceneListModifier.SceneListTransform(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t MakeObservableObjectDelegateBox.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UnsafeObservableObjectFallbackDelegateBox(0, a2, a3, a4);
  outlined init with copy of Any(v4, v8);
  swift_dynamicCast();
  v5 = swift_allocObject();
  *(v5 + 16) = v7;

  *(v4 + 32) = v5;
  return result;
}

uint64_t destroy for MakeObservableObjectDelegateBox(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance SceneList.Key@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static SceneList.Key.defaultValue;
}

uint64_t AppStorage.objectWillChange.getter()
{
  v0 = UserDefaultLocation.canonicalLocation.getter();
  v1 = *(v0 + *(*v0 + 128));

  return v1;
}

uint64_t AppStorage.objectWillChange.setter(uint64_t a1)
{
  UserDefaultLocation.canonicalLocation.getter();
  specialized UserDefaultLocation.observableObjectPublisher.setter(a1);
}

void specialized UserDefaultLocation.observableObjectPublisher.setter(uint64_t a1)
{
  *(v1 + *(*v1 + 128)) = a1;

  UserDefaultLocation.observableObjectPublisher.didset();
}

void UserDefaultLocation.observableObjectPublisher.didset()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + *(v1 + 152));
    if (v4)
    {
      v21 = *(v0 + v2);
      v22 = 1;
      v5 = OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_target;
      swift_beginAccess();
      v6 = v4;

      outlined assign with take of UserDefaultObserver.Target(&v21, v4 + v5);
      swift_endAccess();
    }

    else
    {
      v9 = type metadata accessor for UserDefaultObserver();
      v10 = objc_allocWithZone(v9);
      v11 = &v10[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v12 = &v10[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_target];
      *v12 = v3;
      v12[16] = 1;
      v23.receiver = v10;
      v23.super_class = v9;
      swift_retain_n();
      v13 = objc_msgSendSuper2(&v23, sel_init);
      v14 = *(*v0 + 152);
      v15 = *(v0 + v14);
      *(v0 + v14) = v13;

      v16 = *(v0 + *(*v0 + 152));
      if (v16)
      {
        v17 = UserDefaultLocation.store.getter();
        v19 = v0[2];
        v18 = v0[3];
        v20 = v16;
        UserDefaultObserver.observeDefaults(_:key:)(v17, v19, v18);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v7 = *(v1 + 152);
    v8 = *(v0 + v7);
    *(v0 + v7) = 0;
  }
}

uint64_t Scene.handlesExternalEvents(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;

  Scene.transformSceneList(transform:)(partial apply for closure #1 in Scene.handlesExternalEvents(matching:), v6, a2, a3);
}

uint64_t sub_18BDAC7AC()
{

  return swift_deallocObject();
}

uint64_t Scene.transformSceneList(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  return Scene.modifier<A>(_:)(v5, a3, &type metadata for TransformSceneListModifier, a4);
}

void *FocusedValue.init<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  KeyPath = swift_getKeyPath();
  result = FocusedValue.init(_:)(KeyPath, v3, v4, &v7);
  v6 = v8;
  *a1 = v7;
  *(a1 + 8) = v6;
  return result;
}

void *sub_18BDAC888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v6 = *(a2 + a3 - 16);
  v7 = *(a1 + 8);
  v9[1] = *a1;
  v10 = v7;
  v11 = *(a1 + 16);
  result = FocusedValues.subscript.getter(v6, a3, a5, v9);
  *a4 = v9[0];
  return result;
}

uint64_t sub_18BDAC8E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v6 = *a1;
  return specialized FocusedValues.subscript.setter(&v6, v4);
}

__n128 sub_18BDAC948(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t FocusedValue.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t **a4@<X8>)
{
  v5 = *a1;
  v6 = MEMORY[0x1E69E77B0];
  *a4 = a1;
  type metadata accessor for FocusedValue.Content(0, *(*(v5 + *v6 + 8) + 16), a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t *sub_18BDAC9DC(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectRetain();
  return a1;
}

void *initializeWithCopy for FocusedValue(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = a2[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_21;
      }

      v11 = *a2;
    }

    else if (v10 == 2)
    {
      v11 = *a2;
    }

    else if (v10 == 3)
    {
      v11 = *a2 | (a2[2] << 16);
    }

    else
    {
      v11 = *a2;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_21:
  if (v8 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(a1, a2, v6);
    }

    else
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
    }

    *(a1 + v7) = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + v7) = 0;
  }

  return a1;
}

uint64_t destroy for FocusedValue(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  if (v4 <= 8)
  {
    v4 = 8;
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_20;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_20:
  if (v5 == 1)
  {
    v13 = *(*(a2 + 16) - 8);
    result = (*(v3 + 48))();
    if (!result)
    {
      v12 = *(v13 + 8);

      return v12(a1, v2);
    }
  }

  else
  {
  }

  return result;
}

uint64_t WindowGroup.init<A, B>(id:for:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  *(v17 + 32) = a8;
  *(v17 + 40) = a10;
  *(v17 + 48) = a11;
  *(v17 + 64) = a4;
  *(v17 + 72) = a5;
  *&v30 = a6;
  *(&v30 + 1) = a7;
  *&v31 = a8;
  *(&v31 + 1) = a10;
  v32 = a11;
  v18 = type metadata accessor for PresentedWindowContent(0, &v30);
  WindowGroup.init(id:makeContent:)(a1, a2, partial apply for closure #1 in WindowGroup.init<A, B>(id:for:content:), v17, v18, &protocol witness table for PresentedWindowContent<A, B>, &v30);
  v20 = v36;
  v19 = v37;
  v21 = v33;
  *(a9 + 32) = v32;
  *(a9 + 48) = v21;
  *(a9 + 64) = v34;
  v22 = v35;
  v23 = v31;
  *a9 = v30;
  *(a9 + 16) = v23;
  *(a9 + 80) = v22;
  *(a9 + 88) = a3;
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = a8;
  v24[4] = a10;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v25 + 24) = v24;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v20, v19);
  *(a9 + 96) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable);
  *(a9 + 104) = v25;
  return result;
}

uint64_t sub_18BDACEB8()
{

  return swift_deallocObject();
}

uint64_t sub_18BDACEF0()
{

  return swift_deallocObject();
}

uint64_t Scene.allowsSecureDrawing(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  Scene.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

uint64_t PickerContent.keyboardShortcut(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v12;
  v13 = v12[1];
  v15 = v12[2];
  v16 = *(v12 + 24);
  (*(v8 + 16))(v11, v4, a2, v9);
  (*(v8 + 32))(a4, v11, a2);
  v18 = a4 + *(type metadata accessor for _KeyboardShortcutPickerContent(0, a2, a3, v17) + 36);
  *v18 = v14;
  *(v18 + 8) = v13;
  *(v18 + 16) = v15;
  *(v18 + 24) = v16;
}

uint64_t PickerContent.keyboardShortcut(_:modifiers:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = a2;
  v8 = 0;
  return PickerContent.keyboardShortcut(_:)(v7, a3, a4, a5);
}

uint64_t PickerContent.disabled(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a2, v10);
  (*(v9 + 32))(a4, v12, a2);
  result = type metadata accessor for _DisabledPickerContent(0, a2, a3, v13);
  *(a4 + *(result + 36)) = v7;
  return result;
}

uint64_t destroy for _KeyboardShortcutPickerContent(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

unsigned int *storeEnumTagSinglePayload for _DisabledPickerContent(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t PickerOption._identifiedView.getter(void *a1)
{
  v3 = a1[3];
  v4 = a1[5];
  v5 = type metadata accessor for VStack();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  v9 = a1[2];
  *&v10 = v9;
  *(&v10 + 1) = v3;
  *&v11 = a1[4];
  *(&v11 + 1) = v4;
  v15 = v10;
  v16 = v11;
  v17 = v1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981870], v5);
  View.tag<A>(_:includeOptional:)(v1, 1, v5, v9, WitnessTable);
  return (*(v6 + 8))(v8, v5);
}

uint64_t View.tag<A>(_:includeOptional:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _TagTraitWritingModifier();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v9 + 16))(v11, a1, a4, v14);
  (*(v9 + 32))(v16, v11, a4);
  v16[*(v12 + 36)] = a2;
  MEMORY[0x18D00A570](v16, a3, v12, v18);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_18BDAD87C(uint64_t *a1)
{
  v2 = type metadata accessor for VStack();
  swift_getWitnessTable(MEMORY[0x1E6981870], v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t initializeWithCopy for _DisabledPickerContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *(*(v5 + 48) + a1) = *(*(v5 + 48) + a2);
  return a1;
}

uint64_t sub_18BDAD9AC(void *a1)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>();
  v1 = type metadata accessor for ModifiedContent();
  v3[0] = swift_getAssociatedConformanceWitness();
  v3[1] = lazy protocol witness table accessor for type _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v1, v3);
}

void type metadata accessor for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>);
    }
  }
}

uint64_t getEnumTagSinglePayload for _KeyboardShortcutPickerContent(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 25;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
    if (v8 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))(a1);
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if ((v17 + 1) >= 2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t View.pickerStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PickerStyleWriter(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t Toggle.init(isOn:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void (*a4)(void)@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *x8_0@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Binding<Bool>>, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18CD63400;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  v20 = v15;
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for [Binding<Bool>], MEMORY[0x1E69E62F8]);
  v17 = v16;
  v18 = lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A]();

  Toggle.init<A>(toggledOn:label:)(&v20, a4, a6, v17, a7, v18, x8_0);
}

uint64_t initializeWithCopy for Toggle(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(v5 - 8) + 16;
  v8 = *(*(v5 - 8) + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (a2 + v8 + 17) & ~v8;

  v6(v9, v10, v5);
  v11 = *(v7 + 48) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v10) & 0xFFFFFFFFFFFFFFF8;
  if (*(v13 + 24) < 0xFFFFFFFFuLL)
  {
    v20 = *v13;
    v21 = *(v13 + 32);
    *(v12 + 16) = *(v13 + 16);
    *(v12 + 32) = v21;
    *v12 = v20;
  }

  else
  {
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    outlined copy of Environment<AppIntentExecutor?>.Content(*v13, v15, v16);
    *v12 = v14;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    v17 = *(v13 + 24);
    *(v12 + 24) = v17;
    v18 = *(v13 + 40);
    *(v12 + 32) = *(v13 + 32);
    *(v12 + 40) = v18;
    v19 = v17;
  }

  return a1;
}

uint64_t one-time initialization function for sidebar(uint64_t a1)
{
  return one-time initialization function for appInfo(xmmword_18CDF7030, a1, static CommandGroupPlacement.sidebar, 0x72616265646953, 0xE700000000000000);
}

{
  return one-time initialization function for regular(a1, static Material._GlassVariant.sidebar, MEMORY[0x1E6999CD8]);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for SymbolEffectOptions();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void))
{
  v6 = a4(0, *(a3 + 16), *(a3 + 24));
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_get_extra_inhabitant_indexTm_4(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_get_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }

  else
  {
    v13 = *(a1 + *(a3 + 28));
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_get_extra_inhabitant_indexTm_7(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<SearchFieldState>?(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_get_extra_inhabitant_indexTm_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_9(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_get_extra_inhabitant_indexTm_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MainMenuItem.Identifier(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t PickerOption.init(value:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *(a3 - 8);
  (*(v13 + 16))(a7, a1, a3);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  type metadata accessor for PickerOption(0, v15);
  a2();
  return (*(v13 + 8))(a1, a3);
}

uint64_t Label.init(title:icon:)(void (*a1)(void), uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1();
  v14[0] = a5;
  v14[1] = a6;
  v14[2] = a7;
  v14[3] = a8;
  type metadata accessor for Label(0, v14);
  return a3();
}

uint64_t _KeyboardShortcutPickerContent._identifiedView.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v13 - v8;
  (*(v3 + 56))(v4, v3, v7);
  v10 = (v1 + *(a1 + 36));
  v11 = *(v10 + 24);
  v13 = *v10;
  v14 = *(v10 + 1);
  v15 = v11;
  swift_getAssociatedConformanceWitness();

  View._trait<A>(_:_:)();

  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t Picker.init(selection:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
  v23[4] = a8;
  v23[5] = a10;
  v16 = type metadata accessor for Picker(0, v23);
  *&a9[v16[19]] = 0;
  v17 = type metadata accessor for Binding();
  type metadata accessor for _ContiguousArrayStorage();
  v18 = *(v17 - 8);
  swift_allocObject();
  v19 = static Array._adoptStorage(_:count:)();
  (*(v18 + 32))(v20, a1, v17);
  _finalizeUninitializedArray<A>(_:)(v19, v17);
  *a9 = v21;
  (*(*(a6 - 8) + 32))(&a9[v16[18]], a2, a6);
  return (*(*(a4 - 8) + 32))(&a9[v16[17]], a3, a4);
}

uint64_t Picker<>.init<A>(_:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33 = a7;
  v34 = a6;
  v38 = a4;
  v39 = a9;
  v37 = a3;
  v35 = a1;
  v36 = a2;
  v31 = a11;
  v32 = a5;
  MEMORY[0x1EEE9AC00](a1);
  v40 = v14;
  v41 = a10;
  v42 = v15;
  v43 = a12;
  v16 = type metadata accessor for PickerBuilder.Content(0, &v40);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = type metadata accessor for Binding();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v31 - v22;
  v24 = (*(v20 + 16))(&v31 - v22, a5, v19, v21);
  v34(v24);
  v25 = v31;
  PickerBuilder.Content.init(_:)();
  v40 = Text.init(_:tableName:bundle:comment:)();
  v41 = v26;
  LOBYTE(v42) = v27 & 1;
  v43 = v28;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PickerBuilder<A>.Content<A1>, v16);
  Picker.init(selection:content:label:)(v23, v18, &v40, MEMORY[0x1E6981148], a8, v16, MEMORY[0x1E6981138], v25, v39, WitnessTable);
  return (*(v20 + 8))(v32, v19);
}

uint64_t type metadata completion function for _DisabledPickerContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for _KeyboardShortcutPickerContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);

  return a1;
}

uint64_t closure #1 in PickerOption._identifiedView.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  type metadata accessor for PickerOption(0, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v4 + 8))(v6, a3);
}

uint64_t _DisabledPickerContent._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v17 - v12;
  (*(v7 + 56))(v8, v7, v11);
  (*(v4 + 16))(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v7;
  (*(v4 + 32))(v15 + v14, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedConformanceWitness();
  View.transformTrait<A>(_:transform:)();

  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_18BDAF604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for _DisabledPickerContent(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for _DisabledPickerContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

uint64_t *initializeWithCopy for Picker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(v5 - 8) + 16;
  v8 = *(*(v5 - 8) + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;

  v6(v9, v10, v5);
  v11 = *(*(a3 + 32) - 8);
  v12 = v11 + 16;
  v13 = *(v11 + 80);
  v14 = *(v7 + 48) + v13;
  v15 = (v14 + v9) & ~v13;
  v16 = (v14 + v10) & ~v13;
  (*(v11 + 16))(v15, v16);
  *((*(v12 + 48) + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((*(v12 + 48) + 7 + v16) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for Picker(void *a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  (*(*(*(a2 + 32) - 8) + 8))((v6 + *(v5 + 56) + *(*(*(a2 + 32) - 8) + 80)) & ~*(*(*(a2 + 32) - 8) + 80));
}

void type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI7BindingVySbGMaTm_4(255, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Binding<Bool>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Binding<Bool>] and conformance [A])
  {
    type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(255, &lazy cache variable for type metadata for [Binding<Bool>], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [Binding<Bool>] and conformance [A]);
  }

  return result;
}

uint64_t Toggle.init<A>(toggledOn:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v32 = a6;
  v34 = a3;
  v35 = a1;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v29 = v14;
  v16 = *(type metadata accessor for Toggle(0, v15, v14, v15) + 40);
  v33 = a7;
  v17 = (a7 + v16);
  v17[1] = 0u;
  v17[2] = 0u;
  *v17 = 0u;
  a2();
  v30 = *(v12 + 16);
  v30(&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v18 = *(v12 + 80);
  v19 = v12;
  v31 = v12;
  v20 = (v18 + 64) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v34;
  *(v21 + 5) = a4;
  v22 = v32;
  *(v21 + 6) = a5;
  *(v21 + 7) = v22;
  v23 = *(v19 + 32);
  v23(&v21[v20], &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v30(&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v35, a4);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v34;
  *(v24 + 5) = a4;
  *(v24 + 6) = v29;
  *(v24 + 7) = v22;
  v23(&v24[v20], &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  Binding.init(get:set:)();
  result = (*(v31 + 8))(v35, a4);
  v26 = v37;
  v27 = v38;
  v28 = v33;
  *v33 = v36;
  v28[1] = v26;
  *(v28 + 16) = v27;
  return result;
}

uint64_t destroy for Toggle(void *a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 17) & ~*(v4 + 80);
  result = (*(v4 + 8))(v6);
  v8 = (*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v8 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v8, *(v8 + 8), *(v8 + 16));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityLargeContentViewModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

uint64_t sub_18BDB012C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommandGroupPlacement(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_18BDB020C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void @objc UIHostingContentView._defaultListContentConfigurationMayHaveChanged()(void *a1)
{
  v1 = a1;
  UIHostingContentView._defaultListContentConfigurationMayHaveChanged()();
}

void @objc UIHostingContentView._preferredSeparatorInsetsDidChangeHandler.setter(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v5 = 0;
  }

  v6 = a1;
  UIHostingContentView._preferredSeparatorInsetsDidChangeHandler.setter(v4, v5);
}

uint64_t UIHostingContentView._preferredSeparatorInsetsDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x778));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4, v5);
}

void @objc UIHostingContentView._defaultListContentConfigurationProvider.setter(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (@autoreleased UIListContentConfiguration?);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = a1;
  specialized UIHostingContentView._defaultListContentConfigurationProvider.setter(v7, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v6);
}

uint64_t specialized UIHostingContentView._defaultListContentConfigurationProvider.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x740));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  outlined copy of AppIntentExecutor?(a1, a2);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4, v5);

  return UIHostingContentView.updateHostedViews()();
}

id partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (@autoreleased UIListContentConfiguration?)()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

unint64_t lazy protocol witness table accessor for type Map<TransformSceneListModifier, (_:)> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<TransformSceneListModifier, (_:)> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<TransformSceneListModifier, (_:)> and conformance Map<A, B>)
  {
    type metadata accessor for Map<TransformSceneListModifier, (_:)>(255);
    result = swift_getWitnessTable(MEMORY[0x1E698D3A0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Map<TransformSceneListModifier, (_:)> and conformance Map<A, B>);
  }

  return result;
}

void storeEnumTagSinglePayload for CommandMenu(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 32] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

uint64_t getEnumTagSinglePayload for CommandMenu(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 32) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance AllowPresentationPredicate(_OWORD *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static AllowPresentationPredicate.evaluate(inputs:)(&v6);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

uint64_t implicit closure #1 in _SceneOutputs.transformSceneList(inputs:transform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type TransformSceneListModifier.SceneListTransform and conformance TransformSceneListModifier.SceneListTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

{

  return implicit closure #1 in _SceneOutputs.transformSceneList(inputs:transform:)(a1, a2, a3);
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E61A8], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6969DE0], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6198], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6965C40], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void *UserDefaultObserver.observeDefaults(_:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v3[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  v9 = *&v3[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  if (v9)
  {
    v11 = *(v8 + 1);
    v10 = *(v8 + 2);
    type metadata accessor for NSUserDefaults();
    v12 = v9;

    if (static NSObject.== infix(_:_:)())
    {
      v13 = v11 == a2 && v10 == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }
    }

    UserDefaultObserver.unobserve(oldDefaults:key:)(v12, v11, v10);

    *(swift_allocObject() + 16) = v3;
    v15 = v3;
    static Update.enqueueAction(reason:_:)();
  }

  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {
    v16 = [objc_opt_self() defaultCenter];
    [v16 addObserver:v4 selector:sel_userDefaultsDidChange_ name:*MEMORY[0x1E696AA70] object:{a1, v21, v22}];
  }

  else
  {
    v16 = MEMORY[0x18D00C850](a2, a3);
    [a1 addObserver:v4 forKeyPath:v16 options:0 context:{&static UserDefaultObserver.observationContext, 46, 0xE100000000000000}];
  }

  v17 = *v8;
  v18 = *(v8 + 1);
  v19 = *(v8 + 2);
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  v20 = a1;

  return outlined consume of UserDefaultObserver.State(v17, v18, v19);
}

uint64_t sub_18BDB0E98()
{

  return swift_deallocObject();
}

void *outlined consume of UserDefaultObserver.State(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t UserDefaultPropertyBox.update(property:phase:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v30 = a1;
  v10 = UserDefaultLocation.canonicalLocation.getter();
  v11 = *(v3 + 8);
  v31 = *(v3 + 16);
  v12 = *(AGGraphGetValue() + 8);

  type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>, MEMORY[0x1E697FE40]);
  if (v12)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v13 = v34[0];

  v14 = *(*v10 + 144);
  v15 = *(v10 + v14);
  *(v10 + v14) = v13;

  v16 = UserDefaultLocation.store.getter();
  v17 = v10[2];
  v18 = v10[3];

  UserDefaultObserver.observeDefaults(_:key:)(v16, v17, v18);

  v19 = OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_target;
  swift_beginAccess();
  outlined init with copy of UserDefaultObserver.Target((v11 + v19), v34);
  if (v35 == 1)
  {
    outlined destroy of UserDefaultObserver.Target(v34);
    v20 = 0;
  }

  else
  {
    outlined init with take of UserDefaultObserver.Target.GraphAttribute(v34, v32);
    outlined destroy of weak AnyGestureResponder?(v32);
    WeakValue = AGGraphGetWeakValue();
    v20 = 0;
    if (WeakValue && (v22 & 1) != 0)
    {
      if (v31)
      {
        *(v4 + 16) = 0;
      }

      else
      {
        v23 = UserDefaultLocation.copy()(WeakValue);

        *v30 = v23;
      }

      v20 = 1;
      (*(*(v6 - 8) + 56))(v9, 1, 1, v6);
      UserDefaultLocation.cachedValue.setter(v9);
    }
  }

  outlined init with copy of UserDefaultObserver.Target((v11 + v19), v34);
  v24 = v35;
  if (v35)
  {
    outlined destroy of UserDefaultObserver.Target(v34);
    v25 = 0;
  }

  else
  {
    outlined init with take of UserDefaultObserver.Target.GraphAttribute(v34, v32);
    v25 = v33;
    outlined destroy of weak AnyGestureResponder?(v32);
  }

  v26 = v10 + *(*v10 + 168);
  *v26 = v25;
  v26[8] = v24;
  if (v20)
  {
    v27 = *(*v10 + 160);
    swift_beginAccess();
    v28 = *(v10 + v27);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

void type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>);
    }
  }
}

id protocol witness for static EnvironmentKey.defaultValue.getter in conformance DefaultAppStorageDefaultsKey@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() standardUserDefaults];
  *a1 = result;
  return result;
}

uint64_t initializeWithCopy for UserDefaultObserver.Target(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 16);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    *a1 = *a2;

    v4 = 1;
  }

  else
  {
    swift_weakCopyInit();
    v4 = 0;
    *(a1 + 8) = a2[1];
  }

  *(a1 + 16) = v4;
  return a1;
}

uint64_t outlined init with take of UserDefaultObserver.Target.GraphAttribute(uint64_t a1, uint64_t a2)
{
  swift_weakTakeInit();
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t UserDefaultLocation.cachedValue.setter(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t closure #1 in TransformSceneListModifier.SceneListTransform.value.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for (_:)();
  v9 = *AGGraphGetValue();

  outlined copy of SceneList.Namespace(a2, a3, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a1;
  v20 = *a1;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v12;
  if (v11[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a1 = v11;
      if (v12)
      {
        goto LABEL_8;
      }

LABEL_11:
      EnvironmentValues.init()();
      specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a4, MEMORY[0x1E69E7CC0], v21, v22, v11);
      goto LABEL_12;
    }

LABEL_10:
    specialized _NativeDictionary.copy()();
    v11 = v20;
    *a1 = v20;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
  v11 = v20;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  if ((v4 & 1) != (v18 & 1))
  {

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v17;
  *a1 = v20;
  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  outlined consume of SceneList.Namespace(a2, a3, a4);
LABEL_12:
  v9(v11[7] + 24 * v13);
}

double partial apply for specialized closure #1 in Attribute.subscript.getter@<D0>(_OWORD *a2@<X8>)
{
  swift_getAtKeyPath();
  result = *&v4;
  *a2 = v4;
  return result;
}

{
  swift_getAtKeyPath();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t type metadata accessor for (_:)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<SceneList.Namespace, SceneList>, lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace, &type metadata for SceneList.Namespace, &type metadata for SceneList);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = *(v4 + 48) + v17;
        v26 = *(v18 + 16);
        *v25 = *v18;
        *(v25 + 8) = v20;
        *(v25 + 16) = v26;
        v27 = (*(v4 + 56) + v17);
        *v27 = v22;
        v27[1] = v23;
        v27[2] = v24;
        outlined copy of SceneList.Namespace(v19, v20, v26);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SceneList.Item>, &type metadata for SceneList.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 568);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[568 * v8])
    {
      memmove(v12, v13, 568 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HVGridGeometry>, &type metadata for HVGridGeometry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewListOutputs>, MEMORY[0x1E697EC68], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScenePhase>, &type metadata for ScenePhase, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationRequest>, &type metadata for NavigationRequest, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ToolbarOutputs>, &type metadata for _ToolbarOutputs, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusedValueList.Item>, &type metadata for FocusedValueList.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationColumnState>, &type metadata for NavigationColumnState, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 360);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[360 * v8])
    {
      memmove(v12, v13, 360 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewTraitCollection>, MEMORY[0x1E697F890], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.Entry.ID>, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ListLabelLayout.Child>, &type metadata for ListLabelLayout.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridIndex>, &type metadata for GridIndex, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridLayout.Cache.RowOrColumn>, &type metadata for GridLayout.Cache.RowOrColumn, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridLayout.Cache.Cell>, &type metadata for GridLayout.Cache.Cell, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachmentStorage>, &type metadata for AccessibilityAttachmentStorage, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 320);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[320 * v8])
    {
      memmove(v12, v13, 320 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ArchivedViewState>, &type metadata for ArchivedViewState, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityProperties>, MEMORY[0x1E6980108], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 288);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[288 * v8])
    {
      memmove(v12, v13, 288 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitHostedFocusItemLifecycle.Event>, &type metadata for UIKitHostedFocusItemLifecycle.Event, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UInt8>, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TabEntry>, &type metadata for TabEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 288);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[288 * v8])
    {
      memmove(v12, v13, 288 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ButtonRepeatTiming.TimingEntry>, &type metadata for ButtonRepeatTiming.TimingEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 248);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[248 * v8])
    {
      memmove(v12, v13, 248 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableSections.Item>, &type metadata for TableSections.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SwiftUIAnySortComparator>, &type metadata for SwiftUIAnySortComparator, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityRelationshipScope.Relationship>, &type metadata for AccessibilityRelationshipScope.Relationship, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationViewDestinationView>, &type metadata for NavigationViewDestinationView, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Path>, MEMORY[0x1E6980F80], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_IdentifiedViewTree>, &type metadata for _IdentifiedViewTree, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MultimodalBadgeInfo>, &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGRect>, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SheetPreference>, &type metadata for SheetPreference, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ScrollableLayoutItem>, &type metadata for _ScrollableLayoutItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyToken>, &type metadata for AnyToken, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitSearchBarCoordinator.SearchToken>, &type metadata for UIKitSearchBarCoordinator.SearchToken, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityDebugger.Entry>, MEMORY[0x1E697FB80], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PopoverPresentation>, &type metadata for PopoverPresentation, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_NSRange>, type metadata accessor for _NSRange, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollViewBehavior.ContainerInfo>, &type metadata for ScrollViewBehavior.ContainerInfo, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScalarDeceleration>, &type metadata for ScalarDeceleration, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 88 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DropProposal>, &type metadata for DropProposal, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview>, MEMORY[0x1E6980610], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SectionIndexLabel>, &type metadata for SectionIndexLabel, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PPTTestCase.Name>, &type metadata for PPTTestCase.Name, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.AccessibilityUpdater.AttachmentStorage>, &type metadata for DisplayList.AccessibilityUpdater.AttachmentStorage, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CommandAccumulator>, &type metadata for CommandAccumulator, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IdentifiedDocumentGroupConfiguration>, &type metadata for IdentifiedDocumentGroupConfiguration, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewIdentity>, MEMORY[0x1E697DFC0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for _ContiguousArrayStorage<Int?>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradient.Stop>, MEMORY[0x1E697EA88], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 48 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color.Resolved>, MEMORY[0x1E6981540], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationState.StackContent.Key>, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 24 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityFocusStoreList.Item>, &type metadata for AccessibilityFocusStoreList.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TabItem>, &type metadata for TabItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
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
    type metadata accessor for _ContiguousArrayStorage<Range<String.Index>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Substring>, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PrintAccessoryView>, &type metadata for PrintAccessoryView, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachment.Tree>, &type metadata for AccessibilityAttachment.Tree, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 304);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[304 * v8])
    {
      memmove(v12, v13, 304 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyboardShortcutBinding>, &type metadata for KeyboardShortcutBinding, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SharingActivityPickerPresentation>, &type metadata for SharingActivityPickerPresentation, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HostingScrollView.PlatformGroupContainer.SubstitutionCandidate>, &type metadata for HostingScrollView.PlatformGroupContainer.SubstitutionCandidate, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_AccessibilityRotorEntryOutputs>, &type metadata for _AccessibilityRotorEntryOutputs, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_ID.Canonical>, MEMORY[0x1E697E088], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ViewList_ID>, MEMORY[0x1E697E098], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodableAccessibilityAction>, &type metadata for CodableAccessibilityAction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement>, &type metadata for ToolbarPlacement, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Sections.Item>, &type metadata for Sections.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityNavigationRotorEntry>, &type metadata for AccessibilityNavigationRotorEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAppIntentAction>, &type metadata for AccessibilityAppIntentAction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationContentAbstractPosition>, &type metadata for NavigationContentAbstractPosition, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for _ContiguousArrayStorage<WeakAttribute<SwipeActions.Value>>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<EventID>, MEMORY[0x1E69819B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridLayout.Cache.Earmark>, &type metadata for GridLayout.Cache.Earmark, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 24 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GeneralItem>, &type metadata for GeneralItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<JindoTripleVStack.Child>, &type metadata for JindoTripleVStack.Child, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 223;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[256 * v8])
    {
      memmove(v13, v14, v8 << 8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<JindoTripleVStack.MajorAxisGroupState>, &type metadata for JindoTripleVStack.MajorAxisGroupState, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 80 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewTransform.Item>, MEMORY[0x1E697E218], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 120 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction.Resolved>, &type metadata for AnyAccessibilityAction.Resolved, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextFormattingControl>, &type metadata for TextFormattingControl, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Data>, MEMORY[0x1E6969080], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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