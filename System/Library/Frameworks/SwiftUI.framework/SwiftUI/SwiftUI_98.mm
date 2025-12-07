uint64_t assignWithTake for OnPlatformContainerSecondaryNavigationModifier(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(a1);
    }
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v5)
    {
      v7 = *(a2 + 48);
      *(a1 + 40) = v5;
      *(a1 + 48) = v7;
      goto LABEL_12;
    }

LABEL_11:
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_12;
  }

  if (!v5)
  {

    goto LABEL_11;
  }

  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;

LABEL_12:
  v8 = *(a2 + 64);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnPlatformContainerSecondaryNavigationModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for OnPlatformContainerSecondaryNavigationModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemList.Item.SelectionBehavior.VisualStyle and conformance PlatformItemList.Item.SelectionBehavior.VisualStyle()
{
  result = lazy protocol witness table cache variable for type PlatformItemList.Item.SelectionBehavior.VisualStyle and conformance PlatformItemList.Item.SelectionBehavior.VisualStyle;
  if (!lazy protocol witness table cache variable for type PlatformItemList.Item.SelectionBehavior.VisualStyle and conformance PlatformItemList.Item.SelectionBehavior.VisualStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemList.Item.SelectionBehavior.VisualStyle, &type metadata for PlatformItemList.Item.SelectionBehavior.VisualStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemList.Item.SelectionBehavior.VisualStyle and conformance PlatformItemList.Item.SelectionBehavior.VisualStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList and conformance PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList()
{
  result = lazy protocol witness table cache variable for type PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList and conformance PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList;
  if (!lazy protocol witness table cache variable for type PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList and conformance PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList, &unk_1EFFC05D0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList and conformance PlatformItemListViewThatFitsRepresentable.FittingChildrenPlatformItemList);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform and conformance PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform()
{
  result = lazy protocol witness table cache variable for type PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform and conformance PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform;
  if (!lazy protocol witness table cache variable for type PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform and conformance PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform, &unk_1EFFC05A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform and conformance PlatformItemListDynamicHiddenRepresentable.PlatformItemListTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemListContentModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, lazy protocol witness table accessor for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier, &type metadata for OnPlatformContainerSecondaryNavigationModifier);
    v5[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemListContentModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, lazy protocol witness table accessor for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier, &type metadata for OnPlatformContainerSecondaryNavigationModifier);
    type metadata accessor for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>(255, v1, v2, v3);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OnPlatformContainerSecondaryNavigationModifier>, PlatformItemListTransformModifier<SelectionPlatformItemListFlags>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier()
{
  result = lazy protocol witness table cache variable for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier;
  if (!lazy protocol witness table cache variable for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnPlatformContainerSecondaryNavigationModifier, &type metadata for OnPlatformContainerSecondaryNavigationModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnPlatformContainerSecondaryNavigationModifier and conformance OnPlatformContainerSecondaryNavigationModifier);
  }

  return result;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v23 = *(a1 + 16);
  if (!v23)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v22 = a1 + 32;
  while (1)
  {
    v4 = *(v22 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v21 = __CocoaSet.count.getter();
      v9 = v21 + v6;
      if (__OFADD__(v21, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      __CocoaSet.count.getter();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v6)
    {
      goto LABEL_36;
    }

    v27 = v6;
    v24 = v2;
    v25 = v1;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      type metadata accessor for [UIWindow](0);
      lazy protocol witness table accessor for type [UIWindow] and conformance [A](&lazy protocol witness table cache variable for type [UIWindow] and conformance [A], type metadata accessor for [UIWindow], MEMORY[0x1E69E6340]);
      for (i = 0; i != v13; ++i)
      {
        v15 = specialized protocol witness for Collection.subscript.read in conformance [A](v26, i, v4);
        v17 = *v16;
        (v15)(v26, 0);
        *(v10 + 8 * v11 + 32 + 8 * i) = v17;
      }
    }

    else
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIWindow, 0x1E69DD2E8);
      swift_arrayInitWithCopy();
    }

    v2 = v24;
    v1 = v25;
    if (v27 >= 1)
    {
      v18 = *(v10 + 16);
      v19 = __OFADD__(v18, v27);
      v20 = v18 + v27;
      if (v19)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v20;
    }

LABEL_4:
    if (++v1 == v23)
    {
      return v2;
    }
  }

  result = __CocoaSet.count.getter();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *closure #1 in static OpenURLAction._defaultAction(env:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpenURLAction.SystemHandlerInput.url.getter();
  v10 = type metadata accessor for OpenURLAction.SystemHandlerInput();
  v11 = *(a1 + *(v10 + 20));
  v12 = (a1 + *(v10 + 24));
  v14 = *v12;
  v13 = v12[1];
  v58 = v14;
  v59 = v13;
  if (v11 != 1)
  {
    goto LABEL_33;
  }

  v54 = a3;
  v55 = v9;
  v57 = v7;
  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 connectedScenes];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.compactMap<A>(_:)(v17);
  v19 = v18;

  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = v6;
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_14:

    v23 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v30 = specialized Sequence.flatMap<A>(_:)(v23);

    v7 = v57;
    if (v30 >> 62)
    {
LABEL_31:
      v31 = __CocoaSet.count.getter();
      if (v31)
      {
LABEL_17:
        v32 = 0;
        while (1)
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x18D00E9C0](v32, v30);
          }

          else
          {
            if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v33 = *(v30 + 8 * v32 + 32);
          }

          isa = v33;
          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          if (([(objc_class *)v33 isKeyWindow]& 1) != 0)
          {
            break;
          }

          ++v32;
          if (v35 == v31)
          {
            goto LABEL_32;
          }
        }

        v9 = v55;
        URL._bridgeToObjectiveC()(v36);
        v38 = v37;
        v39 = _makeSafariViewController(v37);

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
        swift_dynamicCast();
        v40 = v60;
        v41 = [(objc_class *)isa rootViewController];
        if (v41)
        {
          v42 = v41;
          [v41 presentViewController:v40 animated:1 completion:0];
        }

        v6 = v56;
        goto LABEL_37;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        goto LABEL_17;
      }
    }

LABEL_32:

    a3 = v54;
    v9 = v55;
    v6 = v56;
LABEL_33:
    aBlock = a2;
    v62 = a3;
    v43 = EnvironmentValues.sceneSession.getter();
    if (v43 && (v44 = v43, v40 = [v43 scene], v44, v40))
    {
      URL._bridgeToObjectiveC()(v45);
      isa = v46;
      v65 = v58;
      v66 = v59;
      aBlock = MEMORY[0x1E69E9820];
      v62 = 1107296256;
      v63 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v64 = &block_descriptor_9_0;
      v47 = _Block_copy(&aBlock);

      [v40 openURL:isa options:0 completionHandler:v47];
      _Block_release(v47);
    }

    else
    {
      v48 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v49);
      v40 = v50;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
      lazy protocol witness table accessor for type [UIWindow] and conformance [A](&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey, protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v65 = v58;
      v66 = v59;
      aBlock = MEMORY[0x1E69E9820];
      v62 = 1107296256;
      v63 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v64 = &block_descriptor_6;
      v51 = _Block_copy(&aBlock);

      [v48 openURL:v40 options:isa completionHandler:v51];
      _Block_release(v51);
    }

LABEL_37:

    return (*(v7 + 8))(v9, v6);
  }

  v20 = __CocoaSet.count.getter();
  v56 = v6;
  if (!v20)
  {
    goto LABEL_14;
  }

LABEL_4:
  aBlock = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v52 = 0;
    v53 = a2;
    v22 = 0;
    v23 = aBlock;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x18D00E9C0](v22, v19);
      }

      else
      {
        v24 = *(v19 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = [v25 windows];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIWindow, 0x1E69DD2E8);
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v23 = aBlock;
      }

      ++v22;
      *(v23 + 16) = v29 + 1;
      *(v23 + 8 * v29 + 32) = v27;
    }

    while (v20 != v22);

    a2 = v53;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void closure #1 in static OpenURLAction._defaultSensitiveAction.getter(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction.SystemHandlerInput();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  [v25 setSensitive_];
  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 connectedScenes];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = specialized Collection.first.getter(v11);

  if (v12)
  {
    v13 = [v12 _currentOpenApplicationEndpoint];
  }

  else
  {
    v13 = 0;
  }

  [v25 setTargetConnectionEndpoint_];

  v14 = [objc_opt_self() defaultWorkspace];
  if (v14)
  {
    v15 = v14;
    OpenURLAction.SystemHandlerInput.url.getter();
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    outlined init with copy of OpenURLAction.SystemHandlerInput(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v20 = swift_allocObject();
    outlined init with take of OpenURLAction.SystemHandlerInput(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    aBlock[4] = partial apply for closure #1 in closure #1 in static OpenURLAction._defaultSensitiveAction.getter;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [String : Any]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_29;
    v21 = _Block_copy(aBlock);
    v22 = v25;

    [v15 openURL:v18 configuration:v22 completionHandler:v21];

    _Block_release(v21);
  }

  else
  {
    v23 = v25;
  }
}

uint64_t closure #1 in closure #1 in static OpenURLAction._defaultSensitiveAction.getter(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    v5 = a2;
    specialized static Log.internalWarning(_:)(partial apply for implicit closure #1 in closure #1 in closure #1 in static OpenURLAction._defaultSensitiveAction.getter);
  }

  v6 = type metadata accessor for OpenURLAction.SystemHandlerInput();
  return (*(a3 + *(v6 + 24)))(a2 == 0);
}

uint64_t outlined init with copy of OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenURLAction.SystemHandlerInput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenURLAction.SystemHandlerInput();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in static OpenURLAction._defaultSensitiveAction.getter(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for OpenURLAction.SystemHandlerInput() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in static OpenURLAction._defaultSensitiveAction.getter(a1, a2, v6);
}

uint64_t implicit closure #1 in closure #1 in closure #1 in static OpenURLAction._defaultSensitiveAction.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  MEMORY[0x18D00C9B0](0xD00000000000001DLL, 0x800000018CD49250);
  OpenURLAction.SystemHandlerInput.url.getter();
  lazy protocol witness table accessor for type [UIWindow] and conformance [A](&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v7);

  (*(v4 + 8))(v6, v3);
  MEMORY[0x18D00C9B0](0x3A726F727245202ELL, 0xE900000000000020);
  v9[1] = a2;
  type metadata accessor for Error();
  _print_unlocked<A, B>(_:_:)();
  return v10;
}

uint64_t lazy protocol witness table accessor for type [UIWindow] and conformance [A](unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for [UIWindow](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [UIWindow])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIWindow, 0x1E69DD2E8);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [UIWindow]);
    }
  }
}

void FocusStateBindingResponder.defaultFocusItem(in:)(_OWORD *a1@<X8>)
{
  IsValid = AGSubgraphIsValid();
  if (IsValid)
  {
    IsValid = static Update.ensure<A>(_:)();
  }

  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = xmmword_18CD6A6D0;
  MEMORY[0x1EEE9AC00](IsValid);
  MEMORY[0x1EEE9AC00](v3);
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v4;

    closure #2 in FocusStateBindingResponder.defaultFocusItem(in:)(v6, v5, a1, &v13);

    if (!v13)
    {
      v7 = MultiViewResponder.children.getter();
      v8 = v7;
      v9 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
LABEL_20:
        v10 = __CocoaSet.count.getter();
      }

      else
      {
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = 0;
      while (v10 != v11)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x18D00E9C0](v11, v8);
          if (__OFADD__(v11, 1))
          {
LABEL_16:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          if (__OFADD__(v11, 1))
          {
            goto LABEL_16;
          }
        }

        dispatch thunk of ResponderNode.visit(applying:)();

        ++v11;
        if (v12 == 2)
        {
          break;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void FocusState.Binding.wrappedValue.getter(uint64_t a1)
{
  type metadata accessor for Binding();

  JUMPOUT(0x18D00ACC0);
}

void (*FocusState.Binding.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 16);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v6[2] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[4] = v11;
  v12 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v12);
  return FocusState.Binding.wrappedValue.modify;
}

void FocusState.Binding.wrappedValue.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    type metadata accessor for Binding();
    specialized Binding.wrappedValue.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    type metadata accessor for Binding();
    specialized Binding.wrappedValue.setter(v4);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*FocusState.wrappedValue.modify(void *a1, uint64_t a2))(void **a1, char a2)
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
  FocusState.getValue(forReading:)(1, a2, v11);
  return SceneStorage.wrappedValue.modify;
}

void specialized implicit closure #1 in _GraphInputs.focusBridge.getter(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for FocusStateBindingModifier<Bool>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for FocusStateBindingModifier<Bool>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  Strong = swift_weakLoadStrong();
  outlined destroy of WeakBox<FocusBridge>(&v4);

  *a2 = Strong;
}

uint64_t *initializeBufferWithCopyOfBuffer for FocusState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if (v7 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - (((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v7)) | v7) - v6 >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = *(v5 + 16);
    v11(a1, a2, v4);
    v13 = ((v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v14 = a2 + v6 + 7;
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8) + 8;
    *v13 = *(v14 & 0xFFFFFFFFFFFFFFF8);

    v11(v13 + 1, v15, v4);
  }

  else
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  return v3;
}

unint64_t initializeWithTake for FocusState(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v7((v9 + *(v6 + 80) + 8) & ~*(v6 + 80), (v10 + *(v6 + 80) + 8) & ~*(v6 + 80), v5);
  return a1;
}

uint64_t assignWithTake for FocusState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v7((v9 + *(v6 + 80) + 8) & ~*(v6 + 80), (v10 + *(v6 + 80) + 8) & ~*(v6 + 80), v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for FocusState(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 8) & ~*(v4 + 80)) + v6;
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
      if (v5 >= 0x7FFFFFFE)
      {
        return (*(v4 + 48))();
      }

      v15 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      if ((v15 + 1) >= 2)
      {
        return v15;
      }

      else
      {
        return 0;
      }
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

char *storeEnumTagSinglePayload for FocusState(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 8) & ~*(v5 + 80)) + v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
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
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_46:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 < 0x7FFFFFFE)
  {
    v21 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v21 = 0;
      *v21 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v21 = a2;
    }
  }

  else
  {
    v20 = *(v5 + 56);

    return v20();
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for FocusState.Binding(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 80) & 0x100000;
  v8 = ((-17 - v6) | v6) - *(v5 + 64);
  v9 = *a2;
  *a1 = *a2;
  if (v6 <= 7 && v7 == 0 && v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
  }

  else
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t *assignWithCopy for FocusState.Binding(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v5 & 0xFFFFFFFFFFFFFFF8);

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((v6 + *(v7 + 80) + 8) & ~*(v7 + 80), (*(v7 + 80) + 8 + (v5 & 0xFFFFFFFFFFFFFFF8)) & ~*(v7 + 80));
  return a1;
}

void *initializeWithTake for FocusState.Binding(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t *assignWithTake for FocusState.Binding(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 &= 0xFFFFFFFFFFFFFFF8;
  *v6 = *v5;

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((v6 + *(v7 + 80) + 8) & ~*(v7 + 80), (*(v7 + 80) + 8 + v5) & ~*(v7 + 80));
  return a1;
}

uint64_t assignWithCopy for FocusStateBindingModifier.ListItemFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t assignWithTake for FocusStateBindingModifier.ListItemFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t getEnumTagSinglePayload for FocusStateBindingModifier.ListItemFilter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 29))
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

uint64_t storeEnumTagSinglePayload for FocusStateBindingModifier.ListItemFilter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of FocusItem??(uint64_t a1)
{
  type metadata accessor for FocusItem??(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for FocusItem??(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FocusItem??)
  {
    type metadata accessor for FocusItem?(255, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for FocusItem??);
    }
  }
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(unsigned __int16 a1)
{
  if ((a1 >> 14) > 1u)
  {
    if (a1 >> 14 != 2)
    {
      v3 = 0xE700000000000000;
      v1 = 0x646E756F626E75;
      goto LABEL_14;
    }
  }

  else if (!(a1 >> 14))
  {
    v1 = String.init<A>(describing:)();
    v3 = v2;
    goto LABEL_14;
  }

  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0x6F43656C62756F64;
    }

    else
    {
      v1 = 7105633;
    }

    if (v4 == 1)
    {
      v3 = 0xEC0000006E6D756CLL;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else
  {
    v1 = 0x6E4F6C6961746564;
    v3 = 0xEA0000000000796CLL;
  }

LABEL_14:
  MEMORY[0x18D00C9B0](v1, v3);
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1)
{
  if (static DropSession.ID.invalid == a1)
  {
    v1 = 0x800000018CD49400;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v2);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v1 = 0x800000018CD493E0;
  }

  MEMORY[0x18D00C9B0](0xD000000000000016, v1);
}

uint64_t DropSession.LocalSession.draggedItemIDs<A>(for:)(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v3)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v35[0] = a2;
  v35[1] = a2;
  v35[2] = a3;
  v35[3] = a3;
  v9 = type metadata accessor for DraggingItem.Identifier(0, v35);
  v10 = _arrayConditionalCast<A, B>(_:)();
  if (!v10)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v11 = v10;
  static Log.dragAndDrop.getter();
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    v14 = outlined destroy of Logger?(v8);
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = v18;
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v18 = 136315138;
      v19 = MEMORY[0x18D00CC60](v11, v9);
      v33 = v16;
      v20 = v19;
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v35);

      v24 = v32;
      v25 = v33;
      *(v32 + 1) = v23;
      v26 = v24;
      _os_log_impl(&dword_18BD4A000, v25, v17, "DropSession has successfully obtained local objects: %s", v24, 0xCu);
      v27 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x18D0110E0](v27, -1, -1);
      MEMORY[0x18D0110E0](v26, -1, -1);
    }

    else
    {
    }

    v14 = (*(v13 + 8))(v8, v12);
  }

  v35[0] = v11;
  MEMORY[0x1EEE9AC00](v14);
  *(&v32 - 2) = a2;
  *(&v32 - 1) = a3;
  v28 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v28);
  v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DragSession.draggedItemIDs<A>(for:), (&v32 - 4), v28, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v30);

  return v31;
}

Swift::Int DropSession.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t DropSession.Phase.hash(into:)()
{
  v1 = *v0;
  if ((v1 - 6) < 4u)
  {
    v2 = qword_18CD9EB08[(v1 - 6)];
    return MEMORY[0x18D00F6F0](v2);
  }

  MEMORY[0x18D00F6F0](3);
  if (v1 < 2)
  {
    if (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v1;
    }

    return MEMORY[0x18D00F6F0](v2);
  }

  if (v1 <= 2)
  {
    v2 = 2;
    return MEMORY[0x18D00F6F0](v2);
  }

  if (v1 == 3)
  {
    v2 = 3;
    return MEMORY[0x18D00F6F0](v2);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int DropSession.Phase.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 - 6) < 4u)
  {
    v2 = qword_18CD9EB08[(v1 - 6)];
LABEL_11:
    MEMORY[0x18D00F6F0](v2);
    return Hasher._finalize()();
  }

  MEMORY[0x18D00F6F0](3);
  if (v1 < 2)
  {
    if (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v1;
    }

    goto LABEL_11;
  }

  if (v1 <= 2)
  {
    v2 = 2;
    goto LABEL_11;
  }

  if (v1 == 3)
  {
    v2 = 3;
    goto LABEL_11;
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DropSession.Phase(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if ((v2 - 6) < 4u)
  {
    v3 = qword_18CD9EB08[(v2 - 6)];
LABEL_11:
    MEMORY[0x18D00F6F0](v3);
    return Hasher._finalize()();
  }

  MEMORY[0x18D00F6F0](3);
  if (v2 < 2)
  {
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    goto LABEL_11;
  }

  if (v2 <= 2)
  {
    v3 = 2;
    goto LABEL_11;
  }

  if (v2 == 3)
  {
    v3 = 3;
    goto LABEL_11;
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

double DropSession.localSession.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return outlined copy of WidgetAuxiliaryTextImagePreference?(v2);
}

uint64_t DropSession.localSession.setter(uint64_t *a1)
{
  v2 = *a1;
  result = outlined consume of WidgetAuxiliaryTextImagePreference?(*(v1 + 16));
  *(v1 + 16) = v2;
  return result;
}

unint64_t DropSession.ID.description.getter()
{
  if (*v0 != static DropSession.ID.invalid)
  {
    _StringGuts.grow(_:)(25);

    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v1);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  }

  return 0xD000000000000016;
}

uint64_t DropSession.Phase.description.getter()
{
  v1 = *v0;
  if (v1 > 7)
  {
    if (v1 != 8)
    {
      if (v1 == 9)
      {
        return 0xD000000000000017;
      }

      goto LABEL_8;
    }

    return 0x676E6974697865;
  }

  else
  {
    if (v1 != 6)
    {
      if (v1 == 7)
      {
        return 0x657669746361;
      }

LABEL_8:
      _StringGuts.grow(_:)(23);
      MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD42A80);
      _print_unlocked<A, B>(_:_:)();
      return 0;
    }

    return 0x676E697265746E65;
  }
}

uint64_t DropSession.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[2];
  _StringGuts.grow(_:)(99);
  MEMORY[0x18D00C9B0](0xD000000000000010, 0x800000018CD49440);
  specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v1);
  MEMORY[0x18D00C9B0](0x3A6573616870202CLL, 0xE900000000000020);
  v3 = DropSession.Phase.description.getter();
  MEMORY[0x18D00C9B0](v3);

  MEMORY[0x18D00C9B0](0xD000000000000010, 0x800000018CD49460);
  if (v2 == 1)
  {
    v4 = 0xE300000000000000;
    v5 = 7104878;
  }

  else
  {
    _print_unlocked<A, B>(_:_:)();
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  MEMORY[0x18D00C9B0](v5, v4);

  MEMORY[0x18D00C9B0](0x43736D657469202CLL, 0xEE00203A746E756FLL);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  MEMORY[0x18D00C9B0](0xD000000000000017, 0x800000018CD49480);
  v7 = DropOperation.Set.description.getter();
  MEMORY[0x18D00C9B0](v7);

  MEMORY[0x18D00C9B0](0x203A657A6973202CLL, 0xE800000000000000);
  type metadata accessor for CGSize(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0;
}

double CachedDropSession.__deallocating_deinit()
{
  outlined consume of WidgetAuxiliaryTextImagePreference?(*(v0 + 32));

  swift_deallocClassInstance();
  return result;
}

uint64_t specialized static DropSession.Phase.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 > 7u)
  {
    if (v3 == 8)
    {
      if (v2 != 8)
      {
        return 0;
      }
    }

    else
    {
      if (v3 != 9)
      {
        goto LABEL_10;
      }

      if (v2 != 9)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v3 == 6)
  {
    return v2 == 6;
  }

  if (v3 == 7)
  {
    return v2 == 7;
  }

LABEL_10:
  if ((v2 - 6) < 4)
  {
    return 0;
  }

  if (*a2 < 2u)
  {
    if (*a2)
    {
      v3 = 1;
    }

    v4 = *a1 <= 2u;
    if (*a1 < 2u)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  if (*a2 <= 2u)
  {
    v3 = 2;
    v4 = *a1 <= 2u;
    if (*a1 >= 2u)
    {
      goto LABEL_24;
    }

LABEL_15:
    if (*a1)
    {
      v2 = 1;
    }

    return v3 == v2;
  }

  if (v3 != 3)
  {
    _diagnoseUnavailableCodeReached()();
    __break(1u);
    goto LABEL_34;
  }

  v3 = 3;
  v4 = *a1 <= 2u;
  if (*a1 < 2u)
  {
    goto LABEL_15;
  }

LABEL_24:
  if (v4)
  {
    v2 = 2;
    return v3 == v2;
  }

  if (v2 == 3)
  {
    v2 = 3;
    return v3 == v2;
  }

LABEL_34:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DropSession.ID and conformance DropSession.ID()
{
  result = lazy protocol witness table cache variable for type DropSession.ID and conformance DropSession.ID;
  if (!lazy protocol witness table cache variable for type DropSession.ID and conformance DropSession.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DropSession.ID, &type metadata for DropSession.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DropSession.ID and conformance DropSession.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DropSession.ID and conformance DropSession.ID;
  if (!lazy protocol witness table cache variable for type DropSession.ID and conformance DropSession.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DropSession.ID, &type metadata for DropSession.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DropSession.ID and conformance DropSession.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DropSession.Phase and conformance DropSession.Phase()
{
  result = lazy protocol witness table cache variable for type DropSession.Phase and conformance DropSession.Phase;
  if (!lazy protocol witness table cache variable for type DropSession.Phase and conformance DropSession.Phase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DropSession.Phase, &type metadata for DropSession.Phase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DropSession.Phase and conformance DropSession.Phase);
  }

  return result;
}

uint64_t destroy for DropSession(uint64_t a1)
{
  result = *(a1 + 16);
  if (result != 1)
  {
  }

  return result;
}

__n128 initializeWithCopy for DropSession(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3 != 1)
  {
    v4 = a1;

    a1 = v4;
  }

  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

uint64_t assignWithCopy for DropSession(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = (a1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == 1)
  {
    if (v6 != 1)
    {
      *v4 = v6;

      goto LABEL_9;
    }

    v7 = 1;
  }

  else
  {
    if (v6 != 1)
    {
      *v4 = v6;

      goto LABEL_9;
    }

    outlined destroy of DropSession.LocalSession(v4);
    v7 = *(a2 + 16);
  }

  *v4 = v7;
LABEL_9:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

__n128 assignWithTake for DropSession(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = (a1 + 16);
  v4 = *(a2 + 16);
  if (*(a1 + 16) == 1)
  {
    if (v4 == 1)
    {
      *v3 = 1;
    }

    else
    {
      *v3 = v4;
    }
  }

  else
  {
    v5 = a1;
    if (v4 == 1)
    {
      outlined destroy of DropSession.LocalSession(a1 + 16);
      *v3 = 1;
    }

    else
    {
      *v3 = v4;
    }

    a1 = v5;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DropSession(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for DropSession(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DropSession.Phase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
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
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DropSession.Phase(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
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

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for DropSession.Phase(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for DropSession.Phase(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContainerBackgroundRendererModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContainerBackgroundRendererModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t OnModifierKeysChangedModifier.body(content:)@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v21 = v1[2];
  type metadata accessor for MainActor();

  outlined init with copy of State<EventModifiers>(&v21, &v19);
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  v7 = v2[1];
  *(v5 + 32) = *v2;
  *(v5 + 48) = v7;
  *(v5 + 64) = v2[2];
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TaskPriority.userInitiated.getter();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v19 = 0xD00000000000002ELL;
    v20 = 0x800000018CD494E0;
    v18[1] = 124;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v12);

    v13 = v20;
    *a1 = v19;
    *(a1 + 1) = v13;
    v14 = type metadata accessor for _TaskModifier2(0);
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    result = (*(v9 + 32))(&a1[*(v14 + 24)], v11, v8);
    v16 = &a1[*(v14 + 28)];
    *v16 = &async function pointer to partial apply for closure #1 in OnModifierKeysChangedModifier.body(content:);
    *(v16 + 1) = v5;
  }

  else
  {
    v17 = type metadata accessor for _TaskModifier(0);
    result = (*(v9 + 32))(&a1[*(v17 + 20)], v11, v8);
    *a1 = &async function pointer to partial apply for closure #1 in OnModifierKeysChangedModifier.body(content:);
    *(a1 + 1) = v5;
  }

  return result;
}

uint64_t closure #1 in OnModifierKeysChangedModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[30] = a3;
  v3[31] = type metadata accessor for MainActor();
  v3[32] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[33] = v5;
  v3[34] = v4;

  return MEMORY[0x1EEE6DFA0](closure #1 in OnModifierKeysChangedModifier.body(content:), v5, v4);
}

uint64_t closure #1 in OnModifierKeysChangedModifier.body(content:)()
{
  v1 = v0[30];
  if (*(v1 + 8))
  {
    if (one-time initialization token for _modifierKeySource != -1)
    {
      swift_once();
    }

    outlined init with copy of _Benchmark(&static EventModifiers._modifierKeySource, (v0 + 15));
    v2 = v0[18];
    v3 = v0[19];
    __swift_project_boxed_opaque_existential_1(v0 + 15, v2);
    v4 = (*(v3 + 16))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v0 + 15);
    v1 = v0[30];
    if (v4)
    {
      (*(v1 + 16))(0, v4);
      v5 = *(v1 + 40);
      v0[29] = v4;
      if (v5)
      {
        dispatch thunk of AnyLocation.set(_:transaction:)();
      }

      v1 = v0[30];
    }
  }

  v6 = *v1;
  if (one-time initialization token for _modifierKeySource != -1)
  {
    swift_once();
  }

  outlined init with copy of _Benchmark(&static EventModifiers._modifierKeySource, (v0 + 9));
  v0[14] = v6;
  EventModifiers.AsyncValues.makeAsyncIterator()(v0 + 2);
  outlined destroy of AccessibilityRelationshipScope.Key(v0 + 9);
  v0[35] = static MainActor.shared.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in OnModifierKeysChangedModifier.body(content:), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v1);
  v0[36] = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v0[37] = v3;
  v0[38] = *(v3 - 8);
  v4 = swift_task_alloc();
  v0[39] = v4;
  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = closure #1 in OnModifierKeysChangedModifier.body(content:);

  return MEMORY[0x1EEE6D8C8](v4, v1, v2);
}

{

  if (v0)
  {

    v1 = closure #1 in OnModifierKeysChangedModifier.body(content:);
  }

  else
  {
    v1 = closure #1 in OnModifierKeysChangedModifier.body(content:);
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v1 = v0[39];
  v2 = v0[36];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[38] + 8))(v1, v0[37]);

LABEL_8:
    if (v0[35])
    {
      swift_getObjectType();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = closure #1 in OnModifierKeysChangedModifier.body(content:);
LABEL_12:

    return MEMORY[0x1EEE6DFA0](v17, v14, v16);
  }

  v0[23] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 20);
  (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v0[26];
  v7 = v0[7];
  v6 = v0[8];
  v0[41] = v5;
  v0[42] = v6;
  v8 = v6 & v5;
  if (v7 != v8)
  {
    v18 = v0[35];
    v0[7] = v8;
    if (v18)
    {
      swift_getObjectType();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v19;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = closure #1 in OnModifierKeysChangedModifier.body(content:);
    goto LABEL_12;
  }

  v9 = v0[5];
  v10 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v9);
  v0[36] = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v0[37] = v11;
  v0[38] = *(v11 - 8);
  v12 = swift_task_alloc();
  v0[39] = v12;
  v13 = swift_task_alloc();
  v0[40] = v13;
  *v13 = v0;
  v13[1] = closure #1 in OnModifierKeysChangedModifier.body(content:);

  return MEMORY[0x1EEE6D8C8](v12, v9, v10);
}

{

  if (*(v0 + 280))
  {
    swift_getObjectType();
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](closure #1 in OnModifierKeysChangedModifier.body(content:), v1, v3);
}

{

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return MEMORY[0x1EEE6DFA0](closure #1 in OnModifierKeysChangedModifier.body(content:), v1, v2);
}

{

  outlined destroy of AccessibilityRelationshipScope.Key((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return MEMORY[0x1EEE6DFA0](closure #1 in OnModifierKeysChangedModifier.body(content:), v1, v2);
}

{
  v1 = v0[30];
  v2 = v0[41] & v0[42];
  v3 = v1[2];
  v4 = v1[5];
  v0[24] = v1[4];
  v0[25] = v4;
  type metadata accessor for State<EventModifiers>();
  State.wrappedValue.getter();
  v3(v0[27], v2);
  v0[28] = v2;
  if (v4)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  v0[35] = static MainActor.shared.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in OnModifierKeysChangedModifier.body(content:), 0, 0);
}

uint64_t static EventModifiers.current.getter()
{
  if (one-time initialization token for _modifierKeySource != -1)
  {
    swift_once();
  }

  outlined init with copy of _Benchmark(&static EventModifiers._modifierKeySource, v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 16))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t static EventModifiers.values(mask:initial:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for _modifierKeySource != -1)
  {
    swift_once();
  }

  result = outlined init with copy of _Benchmark(&static EventModifiers._modifierKeySource, a2);
  *(a2 + 40) = a1;
  return result;
}

uint64_t EventModifiers.AsyncValues.Iterator.init(_:mask:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 24))(v17, v6, v7);
  v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  a3[3] = swift_getAssociatedTypeWitness();
  a3[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a3);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (one-time initialization token for _modifierKeySource != -1)
  {
    swift_once();
  }

  outlined init with copy of _Benchmark(&static EventModifiers._modifierKeySource, v17);
  v12 = v18;
  v13 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v14 = (*(v13 + 16))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v17);
  a3[5] = v14 & a2;
  a3[6] = a2;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EventModifiers.AsyncValues.Iterator.next()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x1EEE6DFA0](EventModifiers.AsyncValues.Iterator.next(), 0, 0);
}

{
  v1 = v0[7];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v0[8] = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v0[9] = v4;
  v0[10] = *(v4 - 8);
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = EventModifiers.AsyncValues.Iterator.next();

  return MEMORY[0x1EEE6D8C8](v5, v2, v3);
}

{

  if (v0)
  {

    v1 = EventModifiers.AsyncValues.Iterator.next();
  }

  else
  {
    v1 = EventModifiers.AsyncValues.Iterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v1, v0[9]);

LABEL_8:
    v6 = 0;
    v12 = 1;
LABEL_9:
    v13 = v0[1];

    return v13(v6, v12);
  }

  v0[5] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v0[7];
  v6 = v5[6] & v0[6];
  if (v5[5] != v6)
  {
    v12 = 0;
    v5[5] = v6;
    goto LABEL_9;
  }

  v7 = v5[3];
  v8 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v0[7], v7);
  v0[8] = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v0[9] = v9;
  v0[10] = *(v9 - 8);
  v10 = swift_task_alloc();
  v0[11] = v10;
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = EventModifiers.AsyncValues.Iterator.next();

  return MEMORY[0x1EEE6D8C8](v10, v7, v8);
}

{

  v1 = *(v0 + 8);

  return v1(0, 1);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance EventModifiers.AsyncValues.Iterator(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AsyncIteratorProtocol.next() in conformance EventModifiers.AsyncValues.Iterator;

  return EventModifiers.AsyncValues.Iterator.next()();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance EventModifiers.AsyncValues.Iterator(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t _s7SwiftUI14EventModifiersV11AsyncValuesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = _s7SwiftUI14EventModifiersV11AsyncValuesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return EventModifiers.AsyncValues.Iterator.next()();
}

uint64_t _s7SwiftUI14EventModifiersV11AsyncValuesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(*v2 + 24);

  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v5 + 56) = a2;
  *(v5 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](_s7SwiftUI14EventModifiersV11AsyncValuesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_, v7, v9);
}

uint64_t _s7SwiftUI14EventModifiersV11AsyncValuesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 48);
  *(v2 + 8) = v1 & 1;
  return (*(v0 + 8))();
}

unint64_t lazy protocol witness table accessor for type EventModifiers.AsyncValues.Iterator and conformance EventModifiers.AsyncValues.Iterator()
{
  result = lazy protocol witness table cache variable for type EventModifiers.AsyncValues.Iterator and conformance EventModifiers.AsyncValues.Iterator;
  if (!lazy protocol witness table cache variable for type EventModifiers.AsyncValues.Iterator and conformance EventModifiers.AsyncValues.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EventModifiers.AsyncValues.Iterator, &type metadata for EventModifiers.AsyncValues.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EventModifiers.AsyncValues.Iterator and conformance EventModifiers.AsyncValues.Iterator);
  }

  return result;
}

void *protocol witness for AsyncSequence.makeAsyncIterator() in conformance EventModifiers.AsyncValues@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of _Benchmark(v1, v4);
  EventModifiers.AsyncValues.Iterator.init(_:mask:)(v4, v1[5], a1);
  return outlined destroy of AccessibilityRelationshipScope.Key(v1);
}

uint64_t initializeWithCopy for EventModifiers.AsyncValues.Iterator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t *assignWithCopy for EventModifiers.AsyncValues.Iterator(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];
  a1[6] = a2[6];
  return a1;
}

uint64_t assignWithTake for EventModifiers.AsyncValues.Iterator(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for EventModifiers.AsyncValues.Iterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EventModifiers.AsyncValues.Iterator(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t assignWithTake for OnModifierKeysChangedModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t partial apply for closure #1 in OnModifierKeysChangedModifier.body(content:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in OnModifierKeysChangedModifier.body(content:)(v2, v3, v0 + 32);
}

uint64_t outlined init with copy of TextEditorStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextEditorStyleConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AutomaticTextEditorStyle.Body.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TextEditorStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TextEditorStyleConfiguration(v1, v5);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  v6 = type metadata accessor for TextEditor(0);
  return outlined init with take of TextEditor.Storage(v5, a1 + *(v6 + 20));
}

uint64_t protocol witness for View.body.getter in conformance AutomaticTextEditorStyle.Body@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TextEditorStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TextEditorStyleConfiguration(v1, v5);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  v6 = type metadata accessor for TextEditor(0);
  return outlined init with take of TextEditor.Storage(v5, a1 + *(v6 + 20));
}

uint64_t outlined init with take of TextEditor.Storage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextEditor.Storage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AutomaticTextEditorStyle.Body(uint64_t a1)
{
  result = type metadata singleton initialization cache for AutomaticTextEditorStyle.Body;
  if (!type metadata singleton initialization cache for AutomaticTextEditorStyle.Body)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for AutomaticTextEditorStyle.Body(char *a1, uint64_t *a2)
{
  v4 = *(*(type metadata accessor for TextEditor.Storage(0) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v6;
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v8 = *(v7 + 32);
      v9 = type metadata accessor for AttributedString();
      v10 = *(*(v9 - 8) + 16);

      v10(&a1[v8], a2 + v8, v9);
      v11 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v12 = &a1[v11];
      v13 = (a2 + v11);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v15 = v14;
      v16 = *(v14 - 8);
      if ((*(v16 + 48))(v13, 1, v14))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v12, v13, *(*(v17 - 8) + 64));
      }

      else
      {
        v59 = v12;
        v29 = v13[1];
        *v12 = *v13;
        *(v12 + 1) = v29;
        v30 = *(v15 + 32);
        __dst = &v12[v30];
        v31 = v13 + v30;
        v32 = type metadata accessor for AttributedTextSelection.Indices(0);
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);

        if (v34(v31, 1, v32))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v36 = __dst;
          memcpy(__dst, v31, *(*(v35 - 8) + 64));
        }

        else
        {
          v36 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0);
            v48 = v47;
          }

          else
          {
            v48 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v48 - 8) + 16))(__dst, v31);
          swift_storeEnumTagMultiPayload();
          (*(v33 + 56))(__dst, 0, 1, v32);
        }

        v51 = type metadata accessor for AttributedTextSelection(0);
        v52 = *(v51 + 20);
        v53 = type metadata accessor for AttributeContainer();
        v54 = *(v53 - 8);
        if ((*(v54 + 48))(&v31[v52], 1, v53))
        {
          v55 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v36[v52], &v31[v52], *(*(v55 - 8) + 64));
        }

        else
        {
          (*(v54 + 16))(&v36[v52], &v31[v52], v53);
          (*(v54 + 56))(&v36[v52], 0, 1, v53);
        }

        v36[*(v51 + 24)] = v31[*(v51 + 24)];
        (*(v16 + 56))(v59, 0, 1, v15);
      }
    }

    else
    {
      v19 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v19;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
      v21 = *(v20 + 48);
      v22 = &a1[v21];
      v23 = (a2 + v21);
      type metadata accessor for Binding<TextSelection?>(0);
      v25 = v24;
      v26 = *(v24 - 1);
      v27 = *(v26 + 48);

      if (v27(v23, 1, v25))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
        memcpy(v22, v23, *(*(v28 - 8) + 64));
      }

      else
      {
        v37 = v23[1];
        *v22 = *v23;
        *(v22 + 1) = v37;
        __dsta = v25;
        v60 = v22;
        v38 = v25[8];
        v39 = &v22[v38];
        v40 = v23 + v38;
        v41 = type metadata accessor for TextSelection(0);
        v42 = *(v41 - 8);
        v43 = *(v42 + 48);

        if (v43(v40, 1, v41))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v39, v40, *(*(v44 - 8) + 64));
          v46 = __dsta;
          v45 = v60;
        }

        else
        {
          v49 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>();
            (*(*(v50 - 8) + 16))(v39, v40, v50);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v39, v40, *(*(v49 - 8) + 64));
          }

          v46 = __dsta;
          v45 = v60;
          v39[*(v41 + 20)] = v40[*(v41 + 20)];
          (*(v42 + 56))(v39, 0, 1, v41);
        }

        (*(v26 + 56))(v45, 0, 1, v46);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for AutomaticTextEditorStyle.Body(char *a1)
{
  type metadata accessor for TextEditor.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
    v14 = &a1[*(v13 + 48)];
    type metadata accessor for Binding<TextSelection?>(0);
    v16 = v15;
    result = (*(*(v15 - 8) + 48))(v14, 1, v15);
    if (result)
    {
      return result;
    }

    v17 = *(v16 + 32);
    v18 = type metadata accessor for TextSelection(0);
    result = (*(*(v18 - 8) + 48))(&v14[v17], 1, v18);
    if (result)
    {
      return result;
    }

    type metadata accessor for TextSelection.Indices(0);
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      return result;
    }

    type metadata accessor for RangeSet<String.Index>();
    v20 = v19;
    v21 = *(*(v19 - 8) + 8);
    v22 = &v14[v17];
    goto LABEL_15;
  }

  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);
  v6 = &a1[*(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20)];
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v8 = v7;
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!result)
  {

    v10 = &v6[*(v8 + 32)];
    v11 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0);
      }

      else
      {
        v12 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v12 - 8) + 8))(v10, v12);
    }

    v23 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v24 = type metadata accessor for AttributeContainer();
    v25 = *(v24 - 8);
    result = (*(v25 + 48))(&v10[v23], 1, v24);
    if (!result)
    {
      v21 = *(v25 + 8);
      v22 = &v10[v23];
      v20 = v24;
LABEL_15:

      return v21(v22, v20);
    }
  }

  return result;
}

char *initializeWithCopy for AutomaticTextEditorStyle.Body(char *a1, char *a2)
{
  type metadata accessor for TextEditor.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  if (EnumCaseMultiPayload == 1)
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v7 = *(v6 + 32);
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 16);

    v9(&a1[v7], &a2[v7], v8);
    v10 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v11 = &a1[v10];
    v12 = &a2[v10];
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v14 = v13;
    v15 = *(v13 - 8);
    if ((*(v15 + 48))(v12, 1, v13))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v11, v12, *(*(v16 - 8) + 64));
    }

    else
    {
      v56 = v11;
      v27 = *(v12 + 1);
      *v11 = *v12;
      *(v11 + 1) = v27;
      v28 = *(v14 + 32);
      __dst = &v11[v28];
      v29 = &v12[v28];
      v30 = type metadata accessor for AttributedTextSelection.Indices(0);
      v31 = *(v30 - 8);
      v32 = *(v31 + 48);

      if (v32(v29, 1, v30))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        v34 = __dst;
        memcpy(__dst, v29, *(*(v33 - 8) + 64));
      }

      else
      {
        v34 = __dst;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0);
          v45 = v44;
        }

        else
        {
          v45 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v45 - 8) + 16))(__dst, v29);
        swift_storeEnumTagMultiPayload();
        (*(v31 + 56))(__dst, 0, 1, v30);
      }

      v48 = type metadata accessor for AttributedTextSelection(0);
      v49 = *(v48 + 20);
      v50 = type metadata accessor for AttributeContainer();
      v51 = *(v50 - 8);
      if ((*(v51 + 48))(&v29[v49], 1, v50))
      {
        v52 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v34[v49], &v29[v49], *(*(v52 - 8) + 64));
      }

      else
      {
        (*(v51 + 16))(&v34[v49], &v29[v49], v50);
        (*(v51 + 56))(&v34[v49], 0, 1, v50);
      }

      v34[*(v48 + 24)] = v29[*(v48 + 24)];
      (*(v15 + 56))(v56, 0, 1, v14);
    }
  }

  else
  {
    v17 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v17;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
    v19 = *(v18 + 48);
    v20 = &a1[v19];
    v21 = &a2[v19];
    type metadata accessor for Binding<TextSelection?>(0);
    v23 = v22;
    v24 = *(v22 - 8);
    v25 = *(v24 + 48);

    if (v25(v21, 1, v23))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
      memcpy(v20, v21, *(*(v26 - 8) + 64));
    }

    else
    {
      v35 = v20;
      v36 = *(v21 + 1);
      *v35 = *v21;
      v35[1] = v36;
      v37 = *(v23 + 32);
      v57 = v35;
      __dsta = v35 + v37;
      v38 = &v21[v37];
      v39 = type metadata accessor for TextSelection(0);
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);

      if (v41(v38, 1, v39))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dsta, v38, *(*(v42 - 8) + 64));
        v43 = v57;
      }

      else
      {
        v46 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<String.Index>();
          (*(*(v47 - 8) + 16))(__dsta, v38, v47);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dsta, v38, *(*(v46 - 8) + 64));
        }

        v43 = v57;
        __dsta[*(v39 + 20)] = v38[*(v39 + 20)];
        (*(v40 + 56))(__dsta, 0, 1, v39);
      }

      (*(v24 + 56))(v43, 0, 1, v23);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for AutomaticTextEditorStyle.Body(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of TextEditor.Storage(a1);
    type metadata accessor for TextEditor.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v6 = *(v5 + 32);
      v7 = type metadata accessor for AttributedString();
      v8 = *(*(v7 - 8) + 16);

      v8(&a1[v6], &a2[v6], v7);
      v9 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v10 = &a1[v9];
      v11 = &a2[v9];
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v13 = v12;
      v14 = *(v12 - 8);
      if ((*(v14 + 48))(v11, 1, v12))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v10, v11, *(*(v15 - 8) + 64));
      }

      else
      {
        v50 = v10;
        *v10 = *v11;
        *(v10 + 1) = *(v11 + 1);
        v25 = *(v13 + 32);
        __dst = &v10[v25];
        v26 = &v11[v25];
        v27 = type metadata accessor for AttributedTextSelection.Indices(0);
        v28 = *(v27 - 8);
        v29 = *(v28 + 48);

        if (v29(v26, 1, v27))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v31 = __dst;
          memcpy(__dst, v26, *(*(v30 - 8) + 64));
        }

        else
        {
          v31 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0);
            v39 = v38;
          }

          else
          {
            v39 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v39 - 8) + 16))(__dst, v26);
          swift_storeEnumTagMultiPayload();
          (*(v28 + 56))(__dst, 0, 1, v27);
        }

        v42 = type metadata accessor for AttributedTextSelection(0);
        v43 = *(v42 + 20);
        v44 = type metadata accessor for AttributeContainer();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(&v26[v43], 1, v44))
        {
          v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v31[v43], &v26[v43], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v45 + 16))(&v31[v43], &v26[v43], v44);
          (*(v45 + 56))(&v31[v43], 0, 1, v44);
        }

        v31[*(v42 + 24)] = v26[*(v42 + 24)];
        (*(v14 + 56))(v50, 0, 1, v13);
      }
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
      v17 = *(v16 + 48);
      v18 = &a1[v17];
      v19 = &a2[v17];
      type metadata accessor for Binding<TextSelection?>(0);
      v21 = v20;
      v22 = *(v20 - 8);
      v23 = *(v22 + 48);

      if (v23(v19, 1, v21))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
        memcpy(v18, v19, *(*(v24 - 8) + 64));
      }

      else
      {
        *v18 = *v19;
        *(v18 + 1) = *(v19 + 1);
        v32 = *(v21 + 32);
        __dsta = &v18[v32];
        v33 = &v19[v32];
        v34 = type metadata accessor for TextSelection(0);
        v35 = *(v34 - 8);
        v36 = *(v35 + 48);

        if (v36(v33, 1, v34))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(__dsta, v33, *(*(v37 - 8) + 64));
        }

        else
        {
          v40 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>();
            (*(*(v41 - 8) + 16))(__dsta, v33, v41);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(__dsta, v33, *(*(v40 - 8) + 64));
          }

          __dsta[*(v34 + 20)] = v33[*(v34 + 20)];
          (*(v35 + 56))(__dsta, 0, 1, v34);
        }

        (*(v22 + 56))(v18, 0, 1, v21);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for AutomaticTextEditorStyle.Body(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextEditor.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v4;
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v6 = *(v5 + 32);
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
    v8 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v12 = v11;
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v10, 1, v11))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v9, v10, *(*(v14 - 8) + 64));
    }

    else
    {
      v24 = v10[1];
      *v9 = *v10;
      v9[1] = v24;
      v25 = *(v12 + 32);
      v26 = v9 + v25;
      v27 = v10 + v25;
      v28 = type metadata accessor for AttributedTextSelection.Indices(0);
      v29 = *(v28 - 8);
      v49 = v26;
      if ((*(v29 + 48))(v27, 1, v28))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        memcpy(v26, v27, *(*(v30 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0);
          v39 = v38;
        }

        else
        {
          v39 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v39 - 8) + 32))(v26, v27);
        swift_storeEnumTagMultiPayload();
        (*(v29 + 56))(v26, 0, 1, v28);
      }

      v42 = type metadata accessor for AttributedTextSelection(0);
      v43 = *(v42 + 20);
      v44 = type metadata accessor for AttributeContainer();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(&v27[v43], 1, v44))
      {
        v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        v47 = v49;
        memcpy(&v49[v43], &v27[v43], *(*(v46 - 8) + 64));
      }

      else
      {
        (*(v45 + 32))(&v49[v43], &v27[v43], v44);
        (*(v45 + 56))(&v49[v43], 0, 1, v44);
        v47 = v49;
      }

      v47[*(v42 + 24)] = v27[*(v42 + 24)];
      (*(v13 + 56))(v9, 0, 1, v12);
    }
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
    v17 = *(v16 + 48);
    v18 = (a1 + v17);
    v19 = (a2 + v17);
    type metadata accessor for Binding<TextSelection?>(0);
    v21 = v20;
    v22 = *(v20 - 8);
    if ((*(v22 + 48))(v19, 1, v20))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
    }

    else
    {
      v31 = v19[1];
      *v18 = *v19;
      v18[1] = v31;
      v32 = *(v21 + 32);
      v33 = v18 + v32;
      v34 = v19 + v32;
      v35 = type metadata accessor for TextSelection(0);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v34, 1, v35))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v33, v34, *(*(v37 - 8) + 64));
      }

      else
      {
        v40 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<String.Index>();
          (*(*(v41 - 8) + 32))(v33, v34, v41);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v33, v34, *(*(v40 - 8) + 64));
        }

        v33[*(v35 + 20)] = v34[*(v35 + 20)];
        (*(v36 + 56))(v33, 0, 1, v35);
      }

      (*(v22 + 56))(v18, 0, 1, v21);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for AutomaticTextEditorStyle.Body(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of TextEditor.Storage(a1);
    type metadata accessor for TextEditor.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v4;
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v6 = *(v5 + 32);
      v7 = type metadata accessor for AttributedString();
      (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
      v8 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v9 = (a1 + v8);
      v10 = (a2 + v8);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v12 = v11;
      v13 = *(v11 - 8);
      if ((*(v13 + 48))(v10, 1, v11))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v9, v10, *(*(v14 - 8) + 64));
      }

      else
      {
        v24 = v10[1];
        *v9 = *v10;
        v9[1] = v24;
        v25 = *(v12 + 32);
        v26 = v9 + v25;
        v27 = v10 + v25;
        v28 = type metadata accessor for AttributedTextSelection.Indices(0);
        v29 = *(v28 - 8);
        v49 = v26;
        if ((*(v29 + 48))(v27, 1, v28))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          memcpy(v26, v27, *(*(v30 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0);
            v39 = v38;
          }

          else
          {
            v39 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v39 - 8) + 32))(v26, v27);
          swift_storeEnumTagMultiPayload();
          (*(v29 + 56))(v26, 0, 1, v28);
        }

        v42 = type metadata accessor for AttributedTextSelection(0);
        v43 = *(v42 + 20);
        v44 = type metadata accessor for AttributeContainer();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(&v27[v43], 1, v44))
        {
          v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          v47 = v49;
          memcpy(&v49[v43], &v27[v43], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v45 + 32))(&v49[v43], &v27[v43], v44);
          (*(v45 + 56))(&v49[v43], 0, 1, v44);
          v47 = v49;
        }

        v47[*(v42 + 24)] = v27[*(v42 + 24)];
        (*(v13 + 56))(v9, 0, 1, v12);
      }
    }

    else
    {
      v15 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v15;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
      v17 = *(v16 + 48);
      v18 = (a1 + v17);
      v19 = (a2 + v17);
      type metadata accessor for Binding<TextSelection?>(0);
      v21 = v20;
      v22 = *(v20 - 8);
      if ((*(v22 + 48))(v19, 1, v20))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
        memcpy(v18, v19, *(*(v23 - 8) + 64));
      }

      else
      {
        v31 = v19[1];
        *v18 = *v19;
        v18[1] = v31;
        v32 = *(v21 + 32);
        v33 = v18 + v32;
        v34 = v19 + v32;
        v35 = type metadata accessor for TextSelection(0);
        v36 = *(v35 - 8);
        if ((*(v36 + 48))(v34, 1, v35))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v33, v34, *(*(v37 - 8) + 64));
        }

        else
        {
          v40 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>();
            (*(*(v41 - 8) + 32))(v33, v34, v41);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v33, v34, *(*(v40 - 8) + 64));
          }

          v33[*(v35 + 20)] = v34[*(v35 + 20)];
          (*(v36 + 56))(v33, 0, 1, v35);
        }

        (*(v22 + 56))(v18, 0, 1, v21);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type AutomaticTextEditorStyle.Body and conformance AutomaticTextEditorStyle.Body(&lazy protocol witness table cache variable for type TextEditor and conformance TextEditor, type metadata accessor for TextEditor, protocol conformance descriptor for TextEditor);
    v5[1] = &protocol witness table for TextEditorStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>>)
  {
    type metadata accessor for TextEditor(255);
    type metadata accessor for TextEditorStyleModifier<SystemTextEditorStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<TextEditor, TextEditorStyleModifier<SystemTextEditorStyle>>);
    }
  }
}

void type metadata accessor for TextEditorStyleModifier<SystemTextEditorStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TextEditorStyleModifier<SystemTextEditorStyle>)
  {
    v2 = lazy protocol witness table accessor for type SystemTextEditorStyle and conformance SystemTextEditorStyle();
    v4 = type metadata accessor for TextEditorStyleModifier(a1, &type metadata for SystemTextEditorStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TextEditorStyleModifier<SystemTextEditorStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SystemTextEditorStyle and conformance SystemTextEditorStyle()
{
  result = lazy protocol witness table cache variable for type SystemTextEditorStyle and conformance SystemTextEditorStyle;
  if (!lazy protocol witness table cache variable for type SystemTextEditorStyle and conformance SystemTextEditorStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SystemTextEditorStyle, &type metadata for SystemTextEditorStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SystemTextEditorStyle and conformance SystemTextEditorStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AutomaticTextEditorStyle.Body and conformance AutomaticTextEditorStyle.Body(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type WindowFocusability.Role and conformance WindowFocusability.Role()
{
  result = lazy protocol witness table cache variable for type WindowFocusability.Role and conformance WindowFocusability.Role;
  if (!lazy protocol witness table cache variable for type WindowFocusability.Role and conformance WindowFocusability.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowFocusability.Role, &type metadata for WindowFocusability.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WindowFocusability.Role and conformance WindowFocusability.Role);
  }

  return result;
}

void protocol witness for View.body.getter in conformance SidebarDisclosureGroupStyle.Container(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);

  v8 = specialized Environment.wrappedValue.getter(v3, v4);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
}

double protocol witness for DisclosureGroupStyle.makeBody(configuration:) in conformance SidebarDisclosureGroupStyle@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return result;
}

double destroy for SidebarDisclosureGroupStyle.Container(uint64_t a1)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));

  return result;
}

uint64_t initializeWithCopy for SidebarDisclosureGroupStyle.Container(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for SidebarDisclosureGroupStyle.Container(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 16) = a2[2];

  *(a1 + 24) = a2[3];

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for SidebarDisclosureGroupStyle.Container(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);

  *(a1 + 16) = *(a2 + 1);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for SidebarDisclosureGroupStyle.Container(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SidebarDisclosureGroupStyle.Container(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarDisclosureGroupStyle.Container and conformance SidebarDisclosureGroupStyle.Container()
{
  result = lazy protocol witness table cache variable for type SidebarDisclosureGroupStyle.Container and conformance SidebarDisclosureGroupStyle.Container;
  if (!lazy protocol witness table cache variable for type SidebarDisclosureGroupStyle.Container and conformance SidebarDisclosureGroupStyle.Container)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarDisclosureGroupStyle.Container, &unk_1EFFC10B0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarDisclosureGroupStyle.Container and conformance SidebarDisclosureGroupStyle.Container);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle> and conformance ListDisclosureGroupStyledContainer<A>()
{
  result = lazy protocol witness table cache variable for type ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle> and conformance ListDisclosureGroupStyledContainer<A>;
  if (!lazy protocol witness table cache variable for type ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle> and conformance ListDisclosureGroupStyledContainer<A>)
  {
    type metadata accessor for ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ListDisclosureGroupStyledContainer<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle> and conformance ListDisclosureGroupStyledContainer<A>);
  }

  return result;
}

void type metadata accessor for ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle>)
  {
    v2 = lazy protocol witness table accessor for type SidebarDisclosureGroupStyle and conformance SidebarDisclosureGroupStyle();
    v4 = type metadata accessor for ListDisclosureGroupStyledContainer(a1, &type metadata for SidebarDisclosureGroupStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ListDisclosureGroupStyledContainer<SidebarDisclosureGroupStyle>);
    }
  }
}

SwiftUI::AnimationTimelineSchedule __swiftcall AnimationTimelineSchedule.init(minimumInterval:paused:)(SwiftUI::AnimationTimelineSchedule minimumInterval, Swift::Bool paused)
{
  v4 = *&minimumInterval.paused;
  if (paused)
  {
    v4 = 0.00833333333;
  }

  *v3 = v4;
  *(v3 + 8) = v2;
  minimumInterval.minimumInterval = v4;
  return minimumInterval;
}

uint64_t AnimationTimelineSchedule.entries(from:mode:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 8) | *a2;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v3;
  }

  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  result = type metadata accessor for AnimationTimelineSchedule.Entries(0);
  v10 = a3 + *(result + 20);
  *v10 = v7;
  *(v10 + 8) = v6 & 1;
  return result;
}

uint64_t AnimationTimelineSchedule.Entries.next()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for AnimationTimelineSchedule.Entries(0) + 20) + 8))
  {
    v3 = type metadata accessor for Date();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }

  else
  {
    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    (*(v7 + 16))(a1, v1, v6);
    (*(v7 + 56))(a1, 0, 1, v6);

    return static Date.+= infix(_:_:)();
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AnimationTimelineSchedule.Entries()
{
  specialized _copySequenceToContiguousArray<A>(_:)(v0);
  v2 = v1;
  outlined destroy of AnimationTimelineSchedule.Entries(v0);
  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimationTimelineSchedule.Entries(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = a1 + v8;
    v10 = a2 + v8;
    *v9 = *v10;
    v9[8] = v10[8];
  }

  return a1;
}

uint64_t initializeWithCopy for AnimationTimelineSchedule.Entries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  return a1;
}

uint64_t assignWithCopy for AnimationTimelineSchedule.Entries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(v9 + 8);
  *v8 = *v9;
  *(v8 + 8) = v10;
  return a1;
}

uint64_t initializeWithTake for AnimationTimelineSchedule.Entries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  return a1;
}

uint64_t assignWithTake for AnimationTimelineSchedule.Entries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  return a1;
}

double UISplitViewControllerProxyStorage.proxy.getter@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage, type metadata accessor for UISplitViewControllerProxyStorage, protocol conformance descriptor for UISplitViewControllerProxyStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v1 + 16);

  return result;
}

uint64_t UISplitViewControllerProxy.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
  {
    outlined init with copy of Any(*(v5 + 56) + 32 * v6, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  type metadata accessor for Any?();
  v8 = *(v4 + *MEMORY[0x1E69E6F98] + 8);
  v9 = swift_dynamicCast();
  return (*(*(v8 - 8) + 56))(a2, v9 ^ 1u, 1, v8);
}

uint64_t View.splitViewControllerProxy(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for UISplitViewControllerProxyModifier);
}

uint64_t UISplitViewControllerProxy.subscript.setter(uint64_t a1, uint64_t *a2, __n128 a3)
{
  specialized UISplitViewControllerProxy.subscript.setter(a1, a2);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*UISplitViewControllerProxy.subscript.modify(void *a1, uint64_t *a2))(uint64_t **a1, char a2)
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
  v8 = type metadata accessor for Optional();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UISplitViewControllerProxy.subscript.getter(a2, v11);
  return UISplitViewControllerProxy.subscript.modify;
}

void UISplitViewControllerProxy.subscript.modify(uint64_t **a1, char a2)
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

    specialized UISplitViewControllerProxy.subscript.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {

    specialized UISplitViewControllerProxy.subscript.setter(v4, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static UISplitViewControllerProxyModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v25 = *(a2 + 32);
  v26 = v4;
  v6 = *(a2 + 48);
  v27 = *(a2 + 64);
  v7 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v7;
  v20 = v25;
  v21 = v6;
  v22 = *(a2 + 64);
  v8 = *a1;
  v28 = *(a2 + 80);
  v23 = *(a2 + 80);
  v18 = v24[0];
  v19 = v5;
  LODWORD(v31) = v8;
  *(&v31 + 1) = partial apply for specialized closure #1 in Attribute.subscript.getter;
  *&v32 = swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(v24, v37);
  type metadata accessor for (_:)();
  type metadata accessor for Map<UISplitViewControllerProxyModifier, (_:)>(0);
  lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>, type metadata accessor for Map<UISplitViewControllerProxyModifier, (_:)>, MEMORY[0x1E698D3A0]);

  v9 = Attribute.init<A>(body:value:flags:update:)();

  lazy protocol witness table accessor for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey();
  PropertyList.subscript.getter();
  DWORD2(v37[0]) = v9;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for UISplitViewControllerProxyStorage(0);
  lazy protocol witness table accessor for type UISplitViewControllerProxyModifier.EnsureObservableProxy and conformance UISplitViewControllerProxyModifier.EnsureObservableProxy();
  Attribute.init<A>(body:value:flags:update:)();
  *&v37[0] = AGCreateWeakAttribute();
  PropertyList.subscript.setter();
  v29[2] = v20;
  v29[3] = v21;
  v29[4] = v22;
  v30 = v23;
  v29[0] = v18;
  v29[1] = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v12 = v18;
  v13 = v19;
  v10 = outlined init with copy of _ViewInputs(v29, v37);
  a3(v10, &v12);
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v31 = v12;
  v32 = v13;
  outlined destroy of _ViewInputs(&v31);
  v37[2] = v20;
  v37[3] = v21;
  v37[4] = v22;
  v38 = v23;
  v37[0] = v18;
  v37[1] = v19;
  return outlined destroy of _ViewInputs(v37);
}

void key path setter for UISplitViewControllerProxyModifier.transform : UISplitViewControllerProxyModifier(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout UISplitViewControllerProxy) -> (@out ());
  a2[1] = v5;
}

void UISplitViewControllerProxyModifier.EnsureObservableProxy.updateValue()()
{
  v18 = *MEMORY[0x1E69E9840];
  Attribute = AGWeakAttributeGetAttribute();
  v1 = *MEMORY[0x1E698D3F8];
  type metadata accessor for UISplitViewControllerProxyStorage(0);
  if (Attribute == v1)
  {
    if (!AGGraphGetOutputValue())
    {
      v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs14PartialKeyPathCySo21UISplitViewControllerCG_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      type metadata accessor for (_:)();
      v13 = *AGGraphGetValue();

      v13(&v16);

      v14 = v16;
      v15 = swift_allocObject();
      ObservationRegistrar.init()();
      *(v15 + 16) = v14;
      v17 = v15;
      AGGraphSetOutputValue();
      goto LABEL_16;
    }

    v2 = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = v4;
    v2 = *Value;
    if ((v4 & 1) != 0 || !AGGraphGetOutputValue())
    {
      v16 = v2;

      AGGraphSetOutputValue();
      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_9:
  type metadata accessor for (_:)();
  v6 = *AGGraphGetValue();
  if (v7)
  {
    goto LABEL_12;
  }

  if (!v2)
  {
    return;
  }

  if (v5)
  {
LABEL_12:
    type metadata accessor for UISplitViewControllerProxyStorage(0);
    OutputValue = AGGraphGetOutputValue();
    if (OutputValue)
    {
      v9 = *OutputValue;
      swift_getKeyPath();
      v16 = v9;
      lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage, type metadata accessor for UISplitViewControllerProxyStorage, protocol conformance descriptor for UISplitViewControllerProxyStorage);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = *(v9 + 16);

      v6(&v16);

      LOBYTE(v17) = 17;
      if (AGGraphGetOutputValue())
      {
        v10 = swift_allocObject();
        swift_weakInit();
        v11 = v16;
        v12 = swift_allocObject();
        *(v12 + 16) = v10;
        *(v12 + 24) = v11;

        static Update.enqueueAction(reason:_:)();

        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_16:
}

double closure #1 in UISplitViewControllerProxyModifier.EnsureObservableProxy.updateValue()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage, type metadata accessor for UISplitViewControllerProxyStorage, protocol conformance descriptor for UISplitViewControllerProxyStorage);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double key path getter for UISplitViewControllerProxyStorage.proxy : UISplitViewControllerProxyStorage@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage, type metadata accessor for UISplitViewControllerProxyStorage, protocol conformance descriptor for UISplitViewControllerProxyStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);

  return result;
}

double key path setter for UISplitViewControllerProxyStorage.proxy : UISplitViewControllerProxyStorage(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage, type metadata accessor for UISplitViewControllerProxyStorage, protocol conformance descriptor for UISplitViewControllerProxyStorage);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double UISplitViewControllerProxyStorage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC7SwiftUI33UISplitViewControllerProxyStorage___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_deallocClassInstance();
  return result;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance UISplitViewControllerProxyKey(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for UISplitViewControllerProxyStorage(0);

  return static WeakAttribute.== infix(_:_:)();
}

void specialized UISplitViewControllerProxy.subscript.setter(uint64_t a1, void *a2)
{
  v4 = *(*a2 + *MEMORY[0x1E69E6F98] + 8);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, a1, v5, v7);
  v10 = *(v4 - 8);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
    v12 = 0u;
    v13 = 0u;
  }

  else
  {
    *(&v13 + 1) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
    (*(v10 + 32))(boxed_opaque_existential_1, v9, v4);
  }

  specialized Dictionary.subscript.setter(&v12, a2);
}

void type metadata accessor for Map<UISplitViewControllerProxyModifier, (_:)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<UISplitViewControllerProxyModifier, (_:)>)
  {
    type metadata accessor for (_:)();
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<UISplitViewControllerProxyModifier, (_:)>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UISplitViewControllerProxyModifier.EnsureObservableProxy and conformance UISplitViewControllerProxyModifier.EnsureObservableProxy()
{
  result = lazy protocol witness table cache variable for type UISplitViewControllerProxyModifier.EnsureObservableProxy and conformance UISplitViewControllerProxyModifier.EnsureObservableProxy;
  if (!lazy protocol witness table cache variable for type UISplitViewControllerProxyModifier.EnsureObservableProxy and conformance UISplitViewControllerProxyModifier.EnsureObservableProxy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UISplitViewControllerProxyModifier.EnsureObservableProxy, &unk_1EFFC1358, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UISplitViewControllerProxyModifier.EnsureObservableProxy and conformance UISplitViewControllerProxyModifier.EnsureObservableProxy);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Map<UISplitViewControllerProxyModifier, (_:)> and conformance Map<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t PlainButtonStyle.buttonStyleRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t protocol witness for ButtonStyleConvertible.buttonStyleRepresentation.getter in conformance PlainButtonStyle@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

void protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance PlainButtonStyle_Car(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  outlined destroy of PrimitiveButtonStyleConfiguration(v7);
  KeyPath = swift_getKeyPath();
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit>>(0);
  v12 = &a2[*(v11 + 36)];
  *v12 = KeyPath;
  v12[8] = 0;
}

uint64_t PlainButtonStyle_UIKit.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PrimitiveButtonStyleConfiguration);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  v11[12] = 1;
  v11[8] = 1;
  v11[0] = 1;
  type metadata accessor for ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier>(0, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier>, &lazy cache variable for type metadata for UIKitButton<PrimitiveButtonStyleConfiguration.Label>, type metadata accessor for UIKitButton, type metadata accessor for UIKitSystemButtonConfigurationModifier);
  result = static UIButton.Configuration.plain()();
  *a2 = v7;
  *(a2 + 8) = partial apply for implicit closure #2 in implicit closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:);
  *(a2 + 16) = v9;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 1;
  *(a2 + 37) = 514;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  *(a2 + 80) = 1;
  return result;
}

void key path getter for EnvironmentValues.isFocused : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.isFocused : EnvironmentValues(char *a1, void *a2)
{
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit>>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit>, lazy protocol witness table accessor for type PlainButtonStyle_UIKit and conformance PlainButtonStyle_UIKit, &unk_1EFFC1510, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlainButtonStyle_UIKit and conformance PlainButtonStyle_UIKit()
{
  result = lazy protocol witness table cache variable for type PlainButtonStyle_UIKit and conformance PlainButtonStyle_UIKit;
  if (!lazy protocol witness table cache variable for type PlainButtonStyle_UIKit and conformance PlainButtonStyle_UIKit)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainButtonStyle_UIKit, &unk_1EFFC1510, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainButtonStyle_UIKit and conformance PlainButtonStyle_UIKit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit>, lazy protocol witness table accessor for type PlainButtonStyle_UIKit and conformance PlainButtonStyle_UIKit, &unk_1EFFC1510, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle_UIKit> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier>, &lazy cache variable for type metadata for UIKitButton<PrimitiveButtonStyleConfiguration.Label>, type metadata accessor for UIKitButton, type metadata accessor for UIKitSystemButtonConfigurationModifier);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type UIKitButton<PrimitiveButtonStyleConfiguration.Label> and conformance UIKitButton<A>();
    v5[1] = &protocol witness table for UIKitSystemButtonConfigurationModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitButton<PrimitiveButtonStyleConfiguration.Label> and conformance UIKitButton<A>()
{
  result = lazy protocol witness table cache variable for type UIKitButton<PrimitiveButtonStyleConfiguration.Label> and conformance UIKitButton<A>;
  if (!lazy protocol witness table cache variable for type UIKitButton<PrimitiveButtonStyleConfiguration.Label> and conformance UIKitButton<A>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(255, &lazy cache variable for type metadata for UIKitButton<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for UIKitButton);
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitButton<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitButton<PrimitiveButtonStyleConfiguration.Label> and conformance UIKitButton<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content>();
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type PassthroughNavigationView and conformance PassthroughNavigationView();
    v5[1] = &protocol witness table for _NavigationViewStyleConfiguration.Content;
    result = swift_getWitnessTable(MEMORY[0x1E697E308], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

void type metadata accessor for _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content>)
  {
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<PassthroughNavigationView, _NavigationViewStyleConfiguration.Content>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PassthroughNavigationView and conformance PassthroughNavigationView()
{
  result = lazy protocol witness table cache variable for type PassthroughNavigationView and conformance PassthroughNavigationView;
  if (!lazy protocol witness table cache variable for type PassthroughNavigationView and conformance PassthroughNavigationView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PassthroughNavigationView, &unk_1EFFC1580, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughNavigationView and conformance PassthroughNavigationView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PassthroughNavigationView and conformance PassthroughNavigationView;
  if (!lazy protocol witness table cache variable for type PassthroughNavigationView and conformance PassthroughNavigationView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PassthroughNavigationView, &unk_1EFFC1580, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughNavigationView and conformance PassthroughNavigationView);
  }

  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance PassthroughNavigationView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type PassthroughNavigationView and conformance PassthroughNavigationView();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for _VariadicView_ViewRoot.body(children:) in conformance PassthroughNavigationView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;

  return outlined init with copy of _VariadicView_Children(a1, a2 + 24);
}

unint64_t instantiation function for generic protocol witness table for PassthroughNavigationView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PassthroughNavigationView and conformance PassthroughNavigationView();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HStack<_VariadicView_Children> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<_VariadicView_Children> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<_VariadicView_Children> and conformance HStack<A>)
  {
    type metadata accessor for HStack<_VariadicView_Children>();
    result = swift_getWitnessTable(MEMORY[0x1E69817F8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<_VariadicView_Children> and conformance HStack<A>);
  }

  return result;
}

void type metadata accessor for HStack<_VariadicView_Children>()
{
  if (!lazy cache variable for type metadata for HStack<_VariadicView_Children>)
  {
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<_VariadicView_Children>);
    }
  }
}

uint64_t OutlineGroup<>.init<A>(_:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v36 = a2;
  v37 = a4;
  v38 = a9;
  v39 = a3;
  v35 = a1;
  v13 = (*a2 + *MEMORY[0x1E69E77B0]);
  v14 = *v13;
  v15 = *(v13[1] + 16);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46[0] = v15;
  v46[1] = a5;
  v46[2] = a6;
  v46[3] = a6;
  v46[4] = a6;
  v46[5] = a7;
  v46[6] = AssociatedConformanceWitness;
  v17 = type metadata accessor for OutlinePrimitive.Base(0, v46);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  v21 = *(v15 - 8);
  (*(v21 + 16))(&v30 - v19, a1, v15, v18);
  swift_storeEnumTagMultiPayload();
  v40 = v15;
  v41 = a5;
  v42 = a6;
  v43 = v14;
  v44 = a7;
  v45 = a8;
  v22 = a8;
  KeyPath = swift_getKeyPath();
  v23 = a5;
  v24 = a7;
  v25 = AssociatedConformanceWitness;
  v32 = static OutlineGroup.ChildPath.state(_:)(v36, v23, a6, a6, a6, a7, AssociatedConformanceWitness);
  v31 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = a6;
  *(v27 + 24) = v22;
  v28 = v37;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v20, KeyPath, v32, v31, v39, v28, v39, v28, v38, partial apply for defaultGrouping<A>(isExpanded:parent:), v27, v15, a6, a6, a6, v24, v25);

  return (*(v21 + 8))(v35, v15);
}

{
  v31 = a8;
  v32 = a1;
  v33 = a4;
  v34 = a9;
  v35 = a3;
  v36 = a2;
  v13 = (*a2 + *MEMORY[0x1E69E77B0]);
  v14 = *v13;
  v15 = *(v13[1] + 16);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43[0] = v15;
  v43[1] = a5;
  v30 = v15;
  v43[2] = a6;
  v43[3] = a6;
  v43[4] = a6;
  v43[5] = a7;
  v43[6] = AssociatedConformanceWitness;
  v17 = type metadata accessor for OutlinePrimitive.Base(0, v43);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &KeyPath - v19;
  v21 = *(v14 - 8);
  (*(v21 + 16))(&KeyPath - v19, a1, v14, v18);
  swift_storeEnumTagMultiPayload();
  v37 = v15;
  v38 = a5;
  v39 = a6;
  v40 = v14;
  v22 = v31;
  v41 = a7;
  v42 = v31;
  KeyPath = swift_getKeyPath();
  v23 = static OutlineGroup.ChildPath.state(_:)(v36, a5, a6, a6, a6, a7, AssociatedConformanceWitness);
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = v22;
  v27 = v33;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v20, KeyPath, v23, v25, v35, v27, v35, v27, v34, defaultGrouping<A>(isExpanded:parent:)partial apply, v26, v30, a6, a6, a6, a7, AssociatedConformanceWitness);

  return (*(v21 + 8))(v32, v14);
}

uint64_t OutlineGroup<>.init<A>(_:children:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a1;
  v32 = a6;
  v33 = a2;
  v10 = (*a2 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = *(v10[1] + 16);
  v13 = type metadata accessor for TableRow(255, *v10, a5, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39[0] = v12;
  v39[1] = a3;
  v39[2] = v13;
  v39[3] = v13;
  v39[4] = v13;
  v39[5] = a4;
  v39[6] = AssociatedConformanceWitness;
  v15 = type metadata accessor for OutlinePrimitive.Base(0, v39);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v30 = *(v11 - 8);
  (*(v30 + 16))(&v26 - v17, a1, v11, v16);
  swift_storeEnumTagMultiPayload();
  v34 = v12;
  v35 = a3;
  v36 = v11;
  v37 = a4;
  v38 = a5;
  KeyPath = swift_getKeyPath();
  v19 = swift_checkMetadataState();
  v20 = static OutlineGroup.ChildPath.state(_:)(v33, a3, v19, v19, v19, a4, AssociatedConformanceWitness);
  v27 = v21;
  v28 = v20;
  v22 = swift_allocObject();
  v22[2] = v12;
  v22[3] = a3;
  v22[4] = v11;
  v22[5] = a4;
  v22[6] = a5;
  v23 = swift_allocObject();
  v23[2] = v12;
  v23[3] = a3;
  v23[4] = v11;
  v23[5] = a4;
  v23[6] = a5;
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = swift_getWitnessTable(protocol conformance descriptor for TableRow<A>, v19);
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v18, KeyPath, v28, v27, partial apply for closure #1 in OutlineGroup<>.init<A>(_:children:), v22, partial apply for closure #2 in OutlineGroup<>.init<A>(_:children:), v23, v32, defaultGrouping<A>(isExpanded:parent:)partial apply, v24, v12, v19, v19, v19, a4, AssociatedConformanceWitness);

  return (*(v30 + 8))(v31, v11);
}

{
  v31 = a1;
  v32 = a6;
  v33 = a2;
  v10 = (*a2 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = *(v10[1] + 16);
  v13 = type metadata accessor for TableRow(255, *v10, a5, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39[0] = v12;
  v39[1] = a3;
  v39[2] = v13;
  v39[3] = v13;
  v39[4] = v13;
  v39[5] = a4;
  v39[6] = AssociatedConformanceWitness;
  v15 = type metadata accessor for OutlinePrimitive.Base(0, v39);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  v30 = *(v12 - 8);
  (*(v30 + 16))(&v26 - v17, a1, v12, v16);
  swift_storeEnumTagMultiPayload();
  v34 = v12;
  v35 = a3;
  v36 = v11;
  v37 = a4;
  v38 = a5;
  KeyPath = swift_getKeyPath();
  v19 = swift_checkMetadataState();
  v20 = static OutlineGroup.ChildPath.state(_:)(v33, a3, v19, v19, v19, a4, AssociatedConformanceWitness);
  v27 = v21;
  v28 = v20;
  v22 = swift_allocObject();
  v22[2] = v12;
  v22[3] = a3;
  v22[4] = v11;
  v22[5] = a4;
  v22[6] = a5;
  v23 = swift_allocObject();
  v23[2] = v12;
  v23[3] = a3;
  v23[4] = v11;
  v23[5] = a4;
  v23[6] = a5;
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = swift_getWitnessTable(protocol conformance descriptor for TableRow<A>, v19);
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v18, KeyPath, v28, v27, partial apply for closure #1 in OutlineGroup<>.init<A>(_:children:), v22, partial apply for closure #1 in OutlineGroup<>.init<A>(_:children:), v23, v32, defaultGrouping<A>(isExpanded:parent:)partial apply, v24, v12, v19, v19, v19, a4, AssociatedConformanceWitness);

  return (*(v30 + 8))(v31, v12);
}

uint64_t closure #1 in OutlineGroup<>.init<A>(_:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return TableRow.init(_:)(v7, a2, a3);
}

uint64_t OutlineGroup<>.init<A>(_:id:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v34 = a8;
  v35 = a5;
  v37 = a2;
  v38 = a4;
  v32 = a1;
  v36 = a9;
  v13 = *a2;
  v14 = *a3;
  v31[1] = a3;
  v15 = *MEMORY[0x1E69E77B0];
  v33 = *(*(v14 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v16 = *(v13 + v15 + 8);
  v17 = *(v13 + v15);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39[0] = v33;
  v39[1] = v16;
  v39[2] = a6;
  v39[3] = a6;
  v39[4] = a6;
  v39[5] = a7;
  v39[6] = AssociatedConformanceWitness;
  v19 = type metadata accessor for OutlinePrimitive.Base(0, v39);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = v31 - v21;
  v23 = *(v17 - 8);
  (*(v23 + 16))(v31 - v21, a1, v17, v20);
  swift_storeEnumTagMultiPayload();
  v24 = static OutlineGroup.ChildPath.state(_:)(a3, v16, a6, a6, a6, a7, AssociatedConformanceWitness);
  v26 = v25;
  v27 = swift_allocObject();
  v28 = v34;
  v29 = v35;
  *(v27 + 16) = a6;
  *(v27 + 24) = v28;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v22, v37, v24, v26, v38, v29, v38, v29, v36, defaultGrouping<A>(isExpanded:parent:)partial apply, v27, v33, a6, a6, a6, a7, AssociatedConformanceWitness);

  return (*(v23 + 8))(v32, v17);
}

uint64_t OutlineGroup<>.init<A>(_:id:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a8;
  v33 = a5;
  v35 = a2;
  v36 = a4;
  v31 = a1;
  v34 = a9;
  v13 = *a2;
  v14 = *a3;
  v30 = a3;
  v15 = *(*(v14 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v16 = *(v13 + *MEMORY[0x1E69E77B0] + 8);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37[0] = v15;
  v37[1] = v16;
  v37[2] = a6;
  v37[3] = a6;
  v37[4] = a6;
  v37[5] = a7;
  v37[6] = AssociatedConformanceWitness;
  v18 = type metadata accessor for OutlinePrimitive.Base(0, v37);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  v22 = *(v15 - 8);
  (*(v22 + 16))(&v30 - v20, a1, v15, v19);
  swift_storeEnumTagMultiPayload();
  v23 = static OutlineGroup.ChildPath.state(_:)(a3, v16, a6, a6, a6, a7, AssociatedConformanceWitness);
  v25 = v24;
  v26 = swift_allocObject();
  v27 = v32;
  v28 = v33;
  *(v26 + 16) = a6;
  *(v26 + 24) = v27;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v21, v35, v23, v25, v36, v28, v36, v28, v34, defaultGrouping<A>(isExpanded:parent:)partial apply, v26, v15, a6, a6, a6, a7, AssociatedConformanceWitness);

  return (*(v22 + 8))(v31, v15);
}

uint64_t OutlineGroup<>.init<A>(_:children:expandedElements:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35 = a7;
  v36 = a5;
  v39 = a9;
  v40 = a6;
  v37 = a4;
  v38 = a3;
  v33 = a1;
  v34 = a2;
  v15 = (*a2 + *MEMORY[0x1E69E77B0]);
  v16 = *v15;
  v17 = *(v15[1] + 16);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47[0] = v17;
  v47[1] = a8;
  v47[2] = a10;
  v47[3] = a10;
  v47[4] = a10;
  v47[5] = a11;
  v47[6] = AssociatedConformanceWitness;
  v18 = type metadata accessor for OutlinePrimitive.Base(0, v47);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  v22 = *(v17 - 8);
  (*(v22 + 16))(&v29 - v20, a1, v17, v19);
  swift_storeEnumTagMultiPayload();
  v41 = v17;
  v42 = a8;
  v43 = a10;
  v44 = v16;
  v45 = a11;
  v46 = a12;
  KeyPath = swift_getKeyPath();
  v23 = a8;
  v24 = AssociatedConformanceWitness;
  v30 = static OutlineGroup.ChildPath.state(_:)(v34, v23, a10, a10, a10, a11, AssociatedConformanceWitness);
  v29 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = a10;
  *(v26 + 24) = a12;
  v27 = v35;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:expandedElements:)(v21, KeyPath, v30, v29, v40, v27, v40, v27, v39, defaultGrouping<A>(isExpanded:parent:)partial apply, v26, v38, v37, v36, v17, a10, a10, a10, a11, v24);

  return (*(v22 + 8))(v33, v17);
}

{
  v36 = a7;
  v37 = a5;
  v41 = a6;
  v42 = a2;
  v38 = a4;
  v39 = a3;
  v35 = a1;
  v40 = a9;
  v34 = a12;
  v15 = (*a2 + *MEMORY[0x1E69E77B0]);
  v16 = *v15;
  v17 = *(v15[1] + 16);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49[0] = v17;
  v49[1] = a8;
  v33 = v17;
  v49[2] = a10;
  v49[3] = a10;
  v49[4] = a10;
  v49[5] = a11;
  v49[6] = AssociatedConformanceWitness;
  v19 = type metadata accessor for OutlinePrimitive.Base(0, v49);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  v23 = *(v16 - 8);
  (*(v23 + 16))(&v31 - v21, a1, v16, v20);
  swift_storeEnumTagMultiPayload();
  v43 = v17;
  v44 = a8;
  v45 = a10;
  v46 = v16;
  v24 = v34;
  v47 = a11;
  v48 = v34;
  KeyPath = swift_getKeyPath();
  v25 = static OutlineGroup.ChildPath.state(_:)(v42, a8, a10, a10, a10, a11, AssociatedConformanceWitness);
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a10;
  *(v28 + 24) = v24;
  v29 = v36;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:expandedElements:)(v22, KeyPath, v25, v27, v41, v29, v41, v29, v40, defaultGrouping<A>(isExpanded:parent:)partial apply, v28, v39, v38, v37, v33, a10, a10, a10, a11, AssociatedConformanceWitness);

  return (*(v23 + 8))(v35, v16);
}

uint64_t OutlineGroup<>.init<A>(_:id:childrenGetter:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31 = a3;
  v32 = a6;
  v34 = a9;
  v35 = a5;
  v29 = a1;
  v33 = a2;
  v15 = *a2;
  v30 = a11;
  v16 = *(v15 + *MEMORY[0x1E69E77B0] + 8);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36[0] = a7;
  v36[1] = v16;
  v36[2] = a8;
  v36[3] = a8;
  v36[4] = a8;
  v36[5] = a10;
  v36[6] = AssociatedConformanceWitness;
  v18 = type metadata accessor for OutlinePrimitive.Base(0, v36);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  v22 = *(a7 - 8);
  (*(v22 + 16))(&v29 - v20, a1, a7, v19);
  swift_storeEnumTagMultiPayload();
  v31 = static OutlineGroup.ChildPath.closure(_:)(v31, a4);
  v24 = v23;
  v25 = swift_allocObject();
  v26 = v30;
  *(v25 + 16) = a8;
  *(v25 + 24) = v26;
  v27 = v32;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v21, v33, v31, v24, v35, v27, v35, v27, v34, defaultGrouping<A>(isExpanded:parent:)partial apply, v25, a7, a8, a8, a8, a10, AssociatedConformanceWitness);

  return (*(v22 + 8))(v29, a7);
}

uint64_t OutlineGroup<>.init<A>(_:id:expandedElements:childrenGetter:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v37 = a9;
  v38 = a8;
  v34 = a5;
  v35 = a4;
  v36 = a3;
  v29 = a1;
  v33 = a2;
  v31 = a6;
  v32 = a10;
  v30 = a14;
  v16 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39[0] = a11;
  v39[1] = v16;
  v39[2] = a12;
  v39[3] = a12;
  v39[4] = a12;
  v39[5] = a13;
  v39[6] = AssociatedConformanceWitness;
  v18 = type metadata accessor for OutlinePrimitive.Base(0, v39);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  v22 = *(a11 - 8);
  (*(v22 + 16))(&v29 - v20, a1, a11, v19);
  swift_storeEnumTagMultiPayload();
  v31 = static OutlineGroup.ChildPath.closure(_:)(v31, a7);
  v24 = v23;
  v25 = swift_allocObject();
  v26 = v30;
  *(v25 + 16) = a12;
  *(v25 + 24) = v26;
  v27 = v32;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:expandedElements:)(v21, v33, v31, v24, v38, v27, v38, v27, v37, defaultGrouping<A>(isExpanded:parent:)partial apply, v25, v36, v35, v34, a11, a12, a12, a12, a13, AssociatedConformanceWitness);

  return (*(v22 + 8))(v29, a11);
}

uint64_t OutlineGroup<>.baseItems.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  v6[1] = vdupq_n_s64(v2);
  v6[0] = v3;
  v7 = v2;
  v8 = *(a1 + 56);
  v4 = type metadata accessor for OutlinePrimitive.Base(0, v6);
  result = OutlinePrimitive.Base.count.getter(v4);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *&v6[0] = 0;
    *(&v6[0] + 1) = result;
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for Range<Int>();
    swift_getAssociatedTypeWitness();
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    return Sequence.compactMap<A>(_:)();
  }

  return result;
}

uint64_t closure #1 in OutlineGroup<>.baseItems.getter@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v13 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a5;
  v21 = a5;
  v22 = a6;
  v23 = AssociatedConformanceWitness;
  type metadata accessor for OutlineGroup(0, &v17);
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a5;
  v21 = a5;
  v22 = a6;
  v23 = AssociatedConformanceWitness;
  v15 = type metadata accessor for OutlinePrimitive.Base(0, &v17);
  return OutlinePrimitive.Base.itemAt(index:)(v13, v15, x8_0);
}

void OutlineGroup<>.IsExpandedProjection.get(base:)(uint64_t a1, void *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();

  JUMPOUT(0x18D00D1E0);
}

uint64_t OutlineGroup<>.IsExpandedProjection.set(base:newValue:)(uint64_t a1, char a2, void *a3)
{
  v19[1] = a1;
  v5 = a3[3];
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v19 - v16;
  if (a2)
  {
    (*(v10 + 16))(v13, v3, v5, v15);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.insert(_:)();
    return (*(v10 + 8))(v17, v5);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.remove(_:)();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t static OutlineGroup<>.IsExpandedProjection.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t OutlineGroup<>.IsExpandedProjection.hash(into:)(uint64_t a1, void *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int OutlineGroup<>.IsExpandedProjection.hashValue.getter(void *a1)
{
  Hasher.init(_seed:)();
  OutlineGroup<>.IsExpandedProjection.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t OutlineGroup<>.OutlineGroupSubgroup.$expandedItems.getter(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  Binding.projectedValue.getter();
  return v2;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OutlineGroup<A, B, C, D, E><>.IsExpandedProjection(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  OutlineGroup<>.IsExpandedProjection.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

void OutlineGroup<>.OutlineGroupSubgroup.tableRowBody.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  v43 = *(a1 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v42 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v6 + 32);
  MEMORY[0x1EEE9AC00](v6);
  v40 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13[6];
  v41 = v13[5];
  *&v15 = v13[2];
  *(&v15 + 1) = v9;
  v47 = v15;
  v17.i64[0] = v16;
  v17.i64[1] = v41;
  v39 = v17;
  v50 = v17;
  v49 = v15;
  v51 = v14;
  IsExpandedProjection = type metadata accessor for OutlineGroup<>.IsExpandedProjection(0, &v49);
  v19 = *(IsExpandedProjection - 8);
  MEMORY[0x1EEE9AC00](IsExpandedProjection);
  v21 = v35 - v20;
  v37 = OutlineGroup<>.OutlineGroupSubgroup.$expandedItems.getter(a1);
  v35[2] = v22;
  v35[1] = v23;
  *&v49 = v37;
  *(&v49 + 1) = v22;
  v50.i64[0] = v23;
  v38 = *(a1 + 60);
  swift_getAtKeyPath();
  (*(v10 + 32))(v21, v12, v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  swift_getWitnessTable(protocol conformance descriptor for OutlineGroup<A, B, C, D, E><>.IsExpandedProjection, IsExpandedProjection);
  Binding.projecting<A>(_:)();
  (*(v19 + 8))(v21, IsExpandedProjection);

  v24 = v54;
  v25 = v55;
  LOBYTE(v19) = v56;
  v26 = v40;
  (*(v3 + *(a1 + 68)))(v3 + v38);
  v28 = v42;
  v27 = v43;
  (*(v43 + 16))(v42, v3, a1);
  v29 = (*(v27 + 80) + 56) & ~*(v27 + 80);
  v30 = swift_allocObject();
  v31 = v39;
  *(v30 + 16) = v47;
  *(v30 + 32) = v31;
  *(v30 + 48) = v14;
  (*(v27 + 32))(v30 + v29, v28, a1);
  v32 = v46;
  v50 = vdupq_n_s64(v46);
  v49 = v47;
  v51 = v46;
  v52 = v41;
  v53 = AssociatedConformanceWitness;
  v33 = type metadata accessor for OutlineGroup(0, &v49);
  v48 = v14;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> OutlineGroup<A, B, C, D, E>, v33, &v48);
  DisclosureTableRow.init(isExpanded:label:content:)(v24, v25, v19, v26, partial apply for closure #1 in OutlineGroup<>.OutlineGroupSubgroup.tableRowBody.getter, v32, v33, v45, v14, WitnessTable);
}

uint64_t closure #1 in OutlineGroup<>.OutlineGroupSubgroup.tableRowBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v32 = a5;
  v33 = a4;
  v34 = a3;
  v35 = a6;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = v11;
  v36[1] = v12;
  v36[2] = v13;
  v36[3] = v14;
  v36[4] = v15;
  v16 = type metadata accessor for OutlineGroup<>.OutlineGroupSubgroup(0, v36);
  (*(v8 + 16))(v10, a1 + *(v16 + 64), a2);
  v17 = *(a1 + *(v16 + 80));

  v18 = OutlineGroup<>.OutlineGroupSubgroup.$expandedItems.getter(v16);
  v20 = v19;
  v22 = v21;
  v23 = *(v16 + 72);
  v24 = (a1 + *(v16 + 76));
  v26 = *v24;
  v25 = v24[1];
  v27 = a1 + v23;
  v28 = *(a1 + v23);
  v29 = *(v27 + 8);

  return OutlineGroup<>.init<A>(_:id:expandedElements:childrenGetter:content:)(v10, v17, v18, v20, v22, v26, v25, v28, v35, v29, a2, v34, v33, v32);
}

uint64_t OutlineGroup<>.OutlineGroupSubgroup.init(expandedItems:element:data:parentContent:leafContent:children:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, __int128 a15, uint64_t a16)
{
  v20 = *a13;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v21 = (v20 + *MEMORY[0x1E69E77B0]);
  v22 = v21[1];
  v30[0] = a14;
  v30[1] = v22;
  v31 = a15;
  v32 = a16;
  v23 = type metadata accessor for OutlineGroup<>.OutlineGroupSubgroup(0, v30);
  (*(*(*v21 - 8) + 32))(&a9[v23[15]], a4);
  result = (*(*(a14 - 8) + 32))(&a9[v23[16]], a5, a14);
  v25 = &a9[v23[17]];
  *v25 = a6;
  *(v25 + 1) = a7;
  v26 = &a9[v23[18]];
  *v26 = a8;
  *(v26 + 1) = a10;
  v27 = &a9[v23[19]];
  *v27 = a11;
  *(v27 + 1) = a12;
  *&a9[v23[20]] = a13;
  return result;
}

uint64_t OutlineGroup<>.tableRowBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OutlineGroup<>.baseItems.getter(v9, v10);
  v25 = *(v3 + *(a1 + 80));
  (*(v6 + 16))(v8, v3, a1);
  v11 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(v12 + 2) = v14;
  *(v12 + 3) = v13;
  v15 = *(a1 + 32);
  v16 = *(a1 + 56);
  *(v12 + 4) = v15;
  *(v12 + 5) = v16;
  *(v12 + 6) = a2;
  (*(v6 + 32))(&v12[v11], v8, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Array();
  v18 = v25;

  v29[0] = v14;
  v29[1] = v13;
  v29[2] = v15;
  v29[3] = v16;
  v29[4] = a2;
  v19 = type metadata accessor for OutlineGroup<>.OutlineGroupSubgroup(255, v29);
  v20 = type metadata accessor for _ConditionalContent();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6338], v17);
  v22 = *(a1 + 64);
  v28[0] = swift_getWitnessTable(protocol conformance descriptor for OutlineGroup<A, B, C, D, E><>.OutlineGroupSubgroup, v19);
  v28[1] = a2;
  swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v20, v28);
  return ForEach<>.init<A>(_:id:content:)(&v30, v18, partial apply for closure #1 in OutlineGroup<>.tableRowBody.getter, v12, v17, v20, AssociatedTypeWitness, WitnessTable, v22);
}

uint64_t closure #1 in OutlineGroup<>.tableRowBody.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v76 = a2;
  v77 = a1;
  v84 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v71 = &v63 - v14;
  v86 = a3;
  v87 = a4;
  v88 = a5;
  v89 = a6;
  v90 = a7;
  v15 = type metadata accessor for OutlineGroup<>.OutlineGroupSubgroup(0, &v86);
  v75 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v63 - v18;
  v69 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v68 = (&v63 - v23);
  v66 = type metadata accessor for Optional();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v25 = &v63 - v24;
  v26 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v67 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v64 = &v63 - v30;
  v81 = v15;
  v31 = type metadata accessor for _ConditionalContent();
  v79 = *(v31 - 8);
  v80 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v78 = &v63 - v32;
  v83 = a7;
  swift_getAssociatedConformanceWitness();
  v82 = AssociatedTypeWitness;
  v33 = v76;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v86 = a3;
  v87 = a4;
  v88 = a5;
  v89 = a5;
  v90 = a5;
  v91 = a6;
  v73 = a6;
  v92 = AssociatedConformanceWitness;
  v35 = type metadata accessor for OutlineGroup(0, &v86);
  v36 = (v33 + v35[21]);
  v38 = *v36;
  v37 = v36[1];
  v39 = v77;
  (*v36)();
  if ((*(v26 + 48))(v25, 1, a3) == 1)
  {
    (*(v65 + 8))(v25, v66);
    (*(v33 + v35[23]))(v39);
    v40 = v68;
    v41 = v83;
    static TableRowBuilder.buildExpression<A>(_:)();
    v42 = *(v69 + 8);
    v42(v21, a5);
    static TableRowBuilder.buildExpression<A>(_:)();
    v42(v40, a5);
    v43 = v81;
    swift_getWitnessTable(protocol conformance descriptor for OutlineGroup<A, B, C, D, E><>.OutlineGroupSubgroup, v81);
    v44 = v78;
    static TableRowBuilder.buildEither<A, B>(second:)(v21, a5, v78);
    v42(v21, a5);
  }

  else
  {
    v45 = *(v26 + 32);
    v69 = v37;
    v68 = v38;
    v46 = v64;
    v45(v64, v25, a3);
    v66 = OutlineGroup.$expandedElements.getter(v35);
    v65 = v47;
    v63 = v48;
    v49 = v71;
    (*(v70 + 16))(v71, v39, v82);
    v50 = v67;
    v45(v67, v46, a3);
    v51 = (v33 + v35[22]);
    v52 = *v51;
    v53 = v51[1];
    v54 = (v33 + v35[23]);
    v55 = *v54;
    v70 = v54[1];
    v77 = *(v33 + v35[20]);
    v56 = v83;
    *&v62 = a5;
    *(&v62 + 1) = v73;
    v57 = v74;
    OutlineGroup<>.OutlineGroupSubgroup.init(expandedItems:element:data:parentContent:leafContent:children:id:)(v66, v65, v63, v49, v50, v52, v53, v55, v74, v70, v68, v69, v77, a3, v62, v83);
    v43 = v81;
    swift_getWitnessTable(protocol conformance descriptor for OutlineGroup<A, B, C, D, E><>.OutlineGroupSubgroup, v81);
    v58 = v72;
    static TableRowBuilder.buildExpression<A>(_:)();
    v59 = *(v75 + 8);

    v41 = v56;

    v59(v57, v43);
    static TableRowBuilder.buildExpression<A>(_:)();
    v59(v58, v43);
    v44 = v78;
    static TableRowBuilder.buildEither<A, B>(first:)(v57, v43, v78);
    v59(v57, v43);
  }

  v85[0] = swift_getWitnessTable(protocol conformance descriptor for OutlineGroup<A, B, C, D, E><>.OutlineGroupSubgroup, v43);
  v85[1] = v41;
  v60 = v80;
  swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v80, v85);
  static TableRowBuilder.buildExpression<A>(_:)();
  return (*(v79 + 8))(v44, v60);
}

uint64_t partial apply for closure #1 in OutlineGroup<>.tableRowBody.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(v2 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *(v2 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12[1] = vdupq_n_s64(v6);
  v12[0] = v11;
  v13 = v6;
  v14 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(type metadata accessor for OutlineGroup(0, v12) - 8);
  v9 = v2 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return closure #1 in OutlineGroup<>.tableRowBody.getter(a1, v9, v11, *(&v11 + 1), v6, v5, v7, a2);
}

uint64_t type metadata completion function for OutlineGroup<>.OutlineGroupSubgroup(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for OutlineGroup<>.OutlineGroupSubgroup(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v5 - 8);
  v11 = *(v10 + 80);
  v12 = v9 + v11;
  v13 = *(v10 + 64) + 7;
  v14 = (*(v10 + 80) | *(v7 + 80)) & 0x100000;
  v15 = *a2;
  *a1 = *a2;
  if ((v11 | v8) > 7 || v14 != 0 || ((((((((v13 + ((v9 + v11 + ((v8 + 24) & ~v8)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v36 = (v15 + (((v11 | v8) & 0xF8 ^ 0x1F8) & ((v11 | v8) + 16)));
  }

  else
  {
    v18 = ~v8;
    v38 = ~v11;
    v39 = a1;
    v19 = a2[2];
    a1[1] = a2[1];
    a1[2] = v19;
    v20 = a1 + v8;
    v21 = a2 + v8;
    v22 = (v20 + 24) & v18;
    v23 = (v21 + 24) & v18;
    v24 = *(v7 + 16);
    v25 = AssociatedTypeWitness;

    v24(v22, v23, v25);
    v26 = (v22 + v12) & v38;
    (*(v10 + 16))(v26, (v23 + v12) & v38, v5);
    v27 = ((v13 + v26) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((v13 + ((v23 + v12) & v38)) & 0xFFFFFFFFFFFFFFF8);
    v29 = v28[1];
    *v27 = *v28;
    v27[1] = v29;
    v30 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
    v32 = v31[1];
    *v30 = *v31;
    v30[1] = v32;
    v33 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
    v34 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
    v35 = v34[1];
    *v33 = *v34;
    v33[1] = v35;
    *((v33 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v34 + 23) & 0xFFFFFFFFFFFFFFF8);

    v36 = v39;
  }

  return v36;
}

double destroy for OutlineGroup<>.OutlineGroupSubgroup(void *a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 8;
  v8 = (a1 + *(v6 + 80) + 24) & ~*(v6 + 80);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  (*(*(v4 - 8) + 8))((v8 + *(v7 + 56) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80), v4);

  return result;
}

uint64_t *initializeWithCopy for OutlineGroup<>.OutlineGroupSubgroup(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  a1[2] = a2[2];
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v11 = *(v8 + 80);
  v12 = (a1 + v11 + 24) & ~v11;
  v13 = (a2 + v11 + 24) & ~v11;

  v9(v12, v13, AssociatedTypeWitness);
  v14 = *(v6 - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = *(v10 + 48) + v16;
  v18 = (v17 + v12) & ~v16;
  v19 = (v17 + v13) & ~v16;
  (*(v14 + 16))(v18, v19, v6);
  v20 = *(v15 + 48) + 7;
  v21 = ((v20 + v18) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + v19) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22[1];
  *v21 = *v22;
  v21[1] = v23;
  v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = v25[1];
  *v24 = *v25;
  v24[1] = v26;
  v27 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  *v27 = *v28;
  v27[1] = v29;
  *((v27 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t *assignWithCopy for OutlineGroup<>.OutlineGroupSubgroup(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (a1 + v10 + 24) & ~v10;
  v12 = (a2 + v10 + 24) & ~v10;
  (*(v8 + 24))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 40);
  v14 = *(v6 - 8);
  v15 = v14 + 24;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 24))(v18, v19, v6);
  v20 = *(v15 + 40) + 7;
  v21 = ((v20 + v18) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + v19) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22[1];
  *v21 = *v22;
  v21[1] = v23;

  v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = v25[1];
  *v24 = *v25;
  v24[1] = v26;

  v27 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  *v27 = *v28;
  v27[1] = v29;

  *((v27 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for OutlineGroup<>.OutlineGroupSubgroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = (v9 + 24 + a1) & ~v9;
  v11 = (v9 + 24 + a2) & ~v9;
  (*(v7 + 32))(v10, v11, AssociatedTypeWitness);
  v12 = *(v8 + 32);
  v13 = *(v5 - 8);
  v14 = v13 + 32;
  v15 = *(v13 + 80);
  v16 = v12 + v15;
  v17 = (v16 + v10) & ~v15;
  v18 = (v16 + v11) & ~v15;
  (*(v13 + 32))(v17, v18, v5);
  v19 = *(v14 + 32) + 7;
  v20 = ((v19 + v17) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + v18) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  *((v24 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *assignWithTake for OutlineGroup<>.OutlineGroupSubgroup(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = (a1 + v10 + 24) & ~v10;
  v12 = (a2 + v10 + 24) & ~v10;
  (*(v8 + 40))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 24);
  v14 = *(v6 - 8);
  v15 = v14 + 40;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 40))(v18, v19, v6);
  v20 = *(v15 + 24) + 7;
  v21 = ((v20 + v18) & 0xFFFFFFFFFFFFFFF8);
  v22 = v20 + v19;
  v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v21 = *(v22 & 0xFFFFFFFFFFFFFFF8);

  v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  v23 &= 0xFFFFFFFFFFFFFFF8;
  *v24 = *v23;

  v25 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;

  *((v25 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v26 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for OutlineGroup<>.OutlineGroupSubgroup(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((((((((*(*(v5 - 8) + 64) + ((v11 + v12 + ((v10 + 24) & ~v10)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v14 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v14 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    v25 = (a1 + v10 + 24) & ~v10;
    if (v7 == v14)
    {
      v26 = *(v6 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *(v8 + 48);
      v28 = (v25 + v11 + v12) & ~v12;

      return v27(v28, v9, v5);
    }
  }

  else
  {
    v24 = *(a1 + 1);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }
}

void storeEnumTagSinglePayload for OutlineGroup<>.OutlineGroupSubgroup(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((((((((*(*(v7 - 8) + 64) + ((v13 + v14 + ((v12 + 24) & ~v12)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((((((*(*(v7 - 8) + 64) + ((v13 + v14 + ((v12 + 24) & ~v12)) & ~v14) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v15 & 0x80000000) != 0)
        {
          v24 = (a1 + v12 + 24) & ~v12;
          if (v9 == v16)
          {
            v25 = *(v8 + 56);

            v25(v24, a2);
          }

          else
          {
            v26 = *(v10 + 56);
            v27 = (v24 + v13 + v14) & ~v14;

            v26(v27, a2, v11, v7);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          a1[1] = 0;
          a1[2] = 0;
          *a1 = a2 & 0x7FFFFFFF;
        }

        else
        {
          a1[1] = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((((((((*(*(v7 - 8) + 64) + ((v13 + v14 + ((v12 + 24) & ~v12)) & ~v14) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (v17)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

uint64_t protocol witness for TableRowGenerator.rowIDs.getter in conformance EmptyTableRowGenerator()
{
  type metadata accessor for WrappedTableRowIDs<[TableRowID]>(0);
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t partial apply for closure #1 in OutlineGroup<>.OutlineGroupSubgroup.tableRowBody.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v11[0] = v1[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v8 = *(type metadata accessor for OutlineGroup<>.OutlineGroupSubgroup(0, v11) - 8);
  v9 = v1 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return closure #1 in OutlineGroup<>.OutlineGroupSubgroup.tableRowBody.getter(v9, v3, v5, v6, v7, a1);
}

uint64_t type metadata completion function for OutlineGroup<>.IsExpandedProjection(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double BarAppearanceBridge.update(environment:)(void *a1)
{
  v2 = v1;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v4 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(&v23), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 80 * v6 + 8);
    swift_endAccess();

    outlined destroy of ToolbarPlacement.Role(&v23);
    if (v8)
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v9 = a1[1];
      type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();

      if (v9)
      {

        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, &v23, isUniquelyReferenced_nonNull_native);
      outlined destroy of ToolbarPlacement.Role(&v23);
      type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.subscript.setter();
      if (v9)
      {
        PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
      }
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
    outlined destroy of ToolbarPlacement.Role(&v23);
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v11 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barBackgroundViewModels;
  swift_beginAccess();
  if (*(*(v2 + v11) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&v23), (v12 & 1) != 0))
  {
    swift_endAccess();
    outlined destroy of ToolbarPlacement.Role(&v23);
  }

  else
  {
    swift_endAccess();
    outlined destroy of ToolbarPlacement.Role(&v23);
    type metadata accessor for PrimaryBarViewModel(0);
    v13 = swift_allocObject();
    LOBYTE(v23) = 0;
    Published.init(initialValue:)();
    LOBYTE(v23) = 2;
    type metadata accessor for Published<Visibility>(0, &lazy cache variable for type metadata for ColorScheme?, MEMORY[0x1E697DBD8], MEMORY[0x1E69E6720]);
    Published.init(initialValue:)();
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    swift_beginAccess();

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v2 + v11);
    *(v2 + v11) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, &v23, v14);
    outlined destroy of ToolbarPlacement.Role(&v23);
    *(v2 + v11) = v22;
    swift_endAccess();
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  swift_beginAccess();
  v15 = *(v2 + v11);
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(&v23), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();

    outlined destroy of ToolbarPlacement.Role(&v23);
    if (*v18 == _TtC7SwiftUI19PrimaryBarViewModel)
    {
      goto LABEL_22;
    }
  }

  else
  {
    swift_endAccess();
    outlined destroy of ToolbarPlacement.Role(&v23);
  }

  v18 = 0;
LABEL_22:
  *&v23 = v18;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>(0);
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentObjectKey<PrimaryBarViewModel>>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a1[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v19 = a1[1];
  v20 = (v2 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastEnvironment);
  *v20 = *a1;
  v20[1] = v19;

  return result;
}

uint64_t BarAppearanceBridge.toolbarInputContentDidChange(_:updateContext:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarContentDescription?(0, &lazy cache variable for type metadata for ToolbarContentDescription?, type metadata accessor for ToolbarContentDescription, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v19 - v8;
  outlined init with copy of BarAppearanceBridge.UpdateContext(a2, v23);
  v10 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  swift_beginAccess();
  v11 = MEMORY[0x1E69E6720];
  outlined assign with take of BarAppearanceBridge.UpdateContext?(v23, v2 + v10, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Published<Visibility>);
  swift_endAccess();
  outlined init with copy of ToolbarContentDescription(a1, v9);
  v12 = type metadata accessor for ToolbarContentDescription(0);
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastToolbarInputContent;
  swift_beginAccess();
  outlined assign with take of BarAppearanceBridge.UpdateContext?(v9, v2 + v13, &lazy cache variable for type metadata for ToolbarContentDescription?, type metadata accessor for ToolbarContentDescription, v6, type metadata accessor for ToolbarContentDescription?);
  swift_endAccess();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v14 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_toUpdateBars;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v2 + v14);
  *(v2 + v14) = 0x8000000000000000;
  specialized _NativeSet.update(with:isUnique:)(v19, isUniquelyReferenced_nonNull_native, v23);
  *(v2 + v14) = v21;
  swift_endAccess();
  _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v23, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
  PreferenceValues.init()();
  v16 = v22;
  outlined init with copy of NavigationTitleStorage?(v3 + v10, v19, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, v11);
  if (*&v19[0])
  {
    outlined init with take of BarAppearanceBridge.UpdateContext(v19, v23);
    closure #1 in BarAppearanceBridge.updateNavigationBar(updating:preferences:)(v23, v3, v16);

    outlined destroy of BarAppearanceBridge.UpdateContext(v23);
    BarAppearanceBridge.updateBarsToConfiguration()();
    v17 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates;
    if ((*(v3 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates) & 2) != 0)
    {
      BarAppearanceBridge.platformUpdateNavigationAdaptor()();
    }

    v24 = 0;
    memset(v23, 0, sizeof(v23));
    swift_beginAccess();
    outlined assign with take of BarAppearanceBridge.UpdateContext?(v23, v3 + v10, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Published<Visibility>);
    result = swift_endAccess();
    *(v3 + v17) = 0;
  }

  else
  {
    _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v19, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double PlatformBarUpdater.__deallocating_deinit()
{

  outlined destroy of weak FallbackResponderProvider?(v0 + 32);

  v1 = *(v0 + 64);

  swift_deallocClassInstance();
  return result;
}

uint64_t one-time initialization function for bar()
{
  static Material.bar.getter();
  result = AnyShapeStyle.init<A>(_:)();
  static PlatformBarBackground.Backgrounds.bar = result;
  return result;
}

double PlatformBarBackground.body.getter@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = static HorizontalAlignment.center.getter();
  v18 = 0;
  v9 = a2 & 1;
  if (a2)
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  closure #1 in PlatformBarBackground.body.getter(a1, v9, &v15, a4);
  v19 = v15;
  v20[0] = v16[0];
  *(v20 + 10) = *(v16 + 10);
  v21 = v15;
  v22[0] = v16[0];
  *(v22 + 10) = *(v16 + 10);
  outlined init with copy of TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>(&v19, &v14);
  outlined destroy of TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>(&v21, &lazy cache variable for type metadata for TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>, type metadata accessor for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??), MEMORY[0x1E6981F40]);
  *&v17[7] = v19;
  *&v17[23] = v20[0];
  *&v17[33] = *(v20 + 10);
  v11 = *&v17[16];
  *(a3 + 17) = *v17;
  v12 = v18;
  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 16) = v12;
  *(a3 + 33) = v11;
  result = *&v17[32];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v17[48];
  *(a3 + 72) = 1;
  *(a3 + 80) = v10;
  return result;
}

void closure #1 in PlatformBarBackground.body.getter(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = a1;
  if (a2)
  {
    v8 = a4;
    if (a1)
    {
      v9 = one-time initialization token for bar;

      if (v9 != -1)
      {
        swift_once();
      }

      if (static PlatformBarBackground.Backgrounds.bar == v6)
      {
      }

      else
      {
        v10 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

        if ((v10 & 1) == 0)
        {
          v11 = 1;
          v8 = 0.0;
          v12 = v6;
LABEL_22:

          v14 = 0;
          v15 = 0.0;
          v6 = v12;
          goto LABEL_25;
        }
      }

      v11 = 0;
      v12 = v6;
      v8 = a4;
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  if (!a1)
  {
    v8 = 0.0;
LABEL_15:
    if (one-time initialization token for bar != -1)
    {
      swift_once();
    }

    v12 = static PlatformBarBackground.Backgrounds.bar;

    if (a2)
    {
      v11 = 0;
      goto LABEL_22;
    }

    v6 = v12;
    goto LABEL_24;
  }

  v13 = one-time initialization token for bar;

  if (v13 != -1)
  {
    swift_once();
  }

  if (static PlatformBarBackground.Backgrounds.bar == v6)
  {
    v8 = 0.0;
    goto LABEL_24;
  }

  v8 = 0.0;
  if (dispatch thunk of AnyShapeStyleBox.isEqual(to:)())
  {
LABEL_24:
    v11 = 0;
    v14 = 0;
    v15 = a4;
    goto LABEL_25;
  }

  v11 = 0;
  v14 = 1;
  v15 = 0.0;
LABEL_25:
  v16 = a4;
  *a3 = v8;
  *(a3 + 8) = v11;
  *(a3 + 9) = (a2 & 1) == 0;
  *(a3 + 16) = v6;
  *(a3 + 24) = v16;
  *(a3 + 28) = 256;
  *(a3 + 32) = v15;
  *(a3 + 40) = v14;
  *(a3 + 41) = a2 & 1;
}

uint64_t BarEnvironmentViewModel.visibility.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double BarEnvironmentViewModel.colorScheme.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance BarEnvironmentViewModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BarEnvironmentViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PlatformBarBackground(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = a2[2];

  return a1;
}

uint64_t *assignWithCopy for PlatformBarBackground(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  a1[2] = a2[2];
  return a1;
}

uint64_t *assignWithTake for PlatformBarBackground(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  a1[2] = a2[2];
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformBarBackground(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for PlatformBarBackground(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for PlatformBarUpdater.UpdateContext(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  return a1;
}

uint64_t assignWithTake for PlatformBarUpdater.UpdateContext(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t assignWithCopy for BarAppearanceBridge.UpdateContext(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a2 + 24);
  if (*(a1 + 24) != 2)
  {
    if (v10 == 2)
    {
      outlined destroy of PushTarget(a1 + 16);
      v12 = *(a2 + 25);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 25) = v12;
      goto LABEL_9;
    }

    swift_unknownObjectWeakCopyAssign();
LABEL_8:
    *(a1 + 24) = *(a2 + 24);
    v13 = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 32) = v13;
    goto LABEL_9;
  }

  if (v10 != 2)
  {
    swift_unknownObjectWeakCopyInit();
    goto LABEL_8;
  }

  v11 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 16) = v11;
LABEL_9:
  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithTake for BarAppearanceBridge.UpdateContext(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a2 + 24);
  if (*(a1 + 24) == 2)
  {
    if (v6 != 2)
    {
      swift_unknownObjectWeakTakeInit();
LABEL_8:
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      goto LABEL_9;
    }
  }

  else
  {
    if (v6 != 2)
    {
      swift_unknownObjectWeakTakeAssign();
      goto LABEL_8;
    }

    outlined destroy of PushTarget(a1 + 16);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
LABEL_9:
  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t initializeWithCopy for BarAppearanceBridge.PlatformStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakCopyInit();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

_BYTE *assignWithCopy for BarAppearanceBridge.PlatformStorage(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  swift_unknownObjectWeakCopyAssign();
  a1[16] = a2[16];
  return a1;
}

uint64_t initializeWithTake for BarAppearanceBridge.PlatformStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakTakeInit();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for BarAppearanceBridge.PlatformStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for BarAppearanceBridge.PlatformStorage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
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

uint64_t storeEnumTagSinglePayload for BarAppearanceBridge.PlatformStorage(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates()
{
  result = lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates;
  if (!lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarAppearanceBridge.Updates, &type metadata for BarAppearanceBridge.Updates, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates;
  if (!lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarAppearanceBridge.Updates, &type metadata for BarAppearanceBridge.Updates, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates;
  if (!lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarAppearanceBridge.Updates, &type metadata for BarAppearanceBridge.Updates, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates;
  if (!lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarAppearanceBridge.Updates, &type metadata for BarAppearanceBridge.Updates, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarAppearanceBridge.Updates and conformance BarAppearanceBridge.Updates);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ToolbarContentDescription?(0, &lazy cache variable for type metadata for TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>, type metadata accessor for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??), MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??))
  {
    type metadata accessor for ToolbarContentDescription?(255, &lazy cache variable for type metadata for ModifiedContent<Divider, OpacityRendererEffect>??, type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>?, MEMORY[0x1E69E6720]);
    type metadata accessor for _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??));
    }
  }
}

void type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Divider, OpacityRendererEffect>?)
  {
    type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(255, &lazy cache variable for type metadata for ModifiedContent<Divider, OpacityRendererEffect>, &type metadata for Divider, MEMORY[0x1E697FCA0], MEMORY[0x1E697E830]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Divider, OpacityRendererEffect>?);
    }
  }
}

void type metadata accessor for _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>)
  {
    type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(255, &lazy cache variable for type metadata for _OpacityShapeStyle<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E697F5B0]);
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    lazy protocol witness table accessor for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>();
    v1 = type metadata accessor for _ShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>()
{
  result = lazy protocol witness table cache variable for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>;
  if (!lazy protocol witness table cache variable for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>)
  {
    type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(255, &lazy cache variable for type metadata for _OpacityShapeStyle<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E697F5B0]);
    result = swift_getWitnessTable(MEMORY[0x1E697F5B8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>);
  }

  return result;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6, void *a7, unint64_t *a8)
{
  v8 = a4;
  if (!a3)
  {
    v13 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v13;
  }

  v9 = a3;
  if (*(a4 + 16) == a3)
  {
    return v8;
  }

  type metadata accessor for _SetStorage<UIScene>(0, a5, a6, a7, a8);
  result = static _SetStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_17:
    v20 = *(v13 + 40);
    v21 = *(*(v8 + 48) + 8 * (v17 | (v15 << 6)));
    result = NSObject._rawHashValue(seed:)(v20);
    v22 = -1 << *(v13 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v13 + 48) + 8 * v25) = v21;
    ++*(v13 + 16);
    if (__OFSUB__(v9--, 1))
    {
      goto LABEL_32;
    }

    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_6;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v46 = v7 - 1;
  v8 = a3 + 56;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v9 = *a5;
        v10 = a5[1];
        v12 = a5[2];
        v11 = a5[3];
        v13 = a5[4];
        if (!v13)
        {
          v15 = (v12 + 64) >> 6;
          v16 = a5[3];
          while (1)
          {
            v14 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
              goto LABEL_67;
            }

            if (v14 >= v15)
            {
              break;
            }

            v13 = *(v10 + 8 * v14);
            ++v16;
            if (v13)
            {
              goto LABEL_9;
            }
          }

          if (v15 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (v12 + 64) >> 6;
          }

          v36 = 0uLL;
          *v37 = 0;
          *&v37[8] = xmmword_18CD9F780;
          *a5 = v9;
          a5[1] = v10;
          a5[2] = v12;
          a5[3] = v29 - 1;
          a5[4] = 0;
LABEL_65:
          _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(&v36, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);

          return specialized _NativeSet.extractSubset(using:count:)(v31, a2, v46, a3);
        }

        v14 = a5[3];
LABEL_9:
        v17 = (v13 - 1) & v13;
        outlined init with copy of ToolbarPlacement.Role(*(v9 + 48) + 40 * (__clz(__rbit64(v13)) | (v14 << 6)), &v36);
        v18 = *&v37[8];
        *a5 = v9;
        a5[1] = v10;
        a5[2] = v12;
        a5[3] = v14;
        a5[4] = v17;
        if (v18 == 7)
        {
          goto LABEL_65;
        }

        v44[0] = v36;
        v44[1] = *v37;
        v45 = *&v37[16];
        Hasher.init(_seed:)();
        outlined init with copy of ToolbarPlacement.Role(v44, &v41);
        if (*(&v42 + 1) <= 2)
        {
          switch(*(&v42 + 1))
          {
            case 0:
              v19 = 0;
              goto LABEL_26;
            case 1:
              v19 = 1;
              goto LABEL_26;
            case 2:
              v19 = 2;
LABEL_26:
              MEMORY[0x18D00F6F0](v19);
              goto LABEL_27;
          }
        }

        else
        {
          if (*(&v42 + 1) <= 4)
          {
            if (*(&v42 + 1) == 3)
            {
              v19 = 3;
            }

            else
            {
              v19 = 4;
            }

            goto LABEL_26;
          }

          if (*(&v42 + 1) == 5)
          {
            v19 = 5;
            goto LABEL_26;
          }

          if (*(&v42 + 1) == 6)
          {
            v19 = 7;
            goto LABEL_26;
          }
        }

        v34[0] = v41;
        v34[1] = v42;
        v35 = v43;
        MEMORY[0x18D00F6F0](6);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v34);
LABEL_27:
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v8 + 8 * (v22 >> 6))) == 0)
        {
LABEL_2:
          result = outlined destroy of ToolbarPlacement.Role(v44);
          continue;
        }

        break;
      }

      v25 = ~v21;
      while (1)
      {
        outlined init with copy of ToolbarPlacement.Role(*(a3 + 48) + 40 * v22, &v41);
        outlined init with copy of ToolbarPlacement.Role(&v41, &v36);
        outlined init with copy of ToolbarPlacement.Role(v44, &v38);
        if (*&v37[8] <= 2)
        {
          switch(*&v37[8])
          {
            case 0:
              outlined destroy of ToolbarPlacement.Role(&v41);
              if (!*(&v39 + 1))
              {
                goto LABEL_57;
              }

              goto LABEL_52;
            case 1:
              outlined destroy of ToolbarPlacement.Role(&v41);
              if (*(&v39 + 1) == 1)
              {
                goto LABEL_57;
              }

              goto LABEL_52;
            case 2:
              outlined destroy of ToolbarPlacement.Role(&v41);
              if (*(&v39 + 1) == 2)
              {
                goto LABEL_57;
              }

              goto LABEL_52;
          }
        }

        else
        {
          if (*&v37[8] <= 4)
          {
            if (*&v37[8] == 3)
            {
              outlined destroy of ToolbarPlacement.Role(&v41);
              if (*(&v39 + 1) == 3)
              {
                goto LABEL_57;
              }
            }

            else
            {
              outlined destroy of ToolbarPlacement.Role(&v41);
              if (*(&v39 + 1) == 4)
              {
                goto LABEL_57;
              }
            }

            goto LABEL_52;
          }

          if (*&v37[8] == 5)
          {
            outlined destroy of ToolbarPlacement.Role(&v41);
            if (*(&v39 + 1) == 5)
            {
              goto LABEL_57;
            }

            goto LABEL_52;
          }

          if (*&v37[8] == 6)
          {
            outlined destroy of ToolbarPlacement.Role(&v41);
            if (*(&v39 + 1) == 6)
            {
              goto LABEL_57;
            }

            goto LABEL_52;
          }
        }

        outlined init with copy of ToolbarPlacement.Role(&v36, v34);
        if (*(&v39 + 1) >= 7uLL)
        {
          break;
        }

        outlined destroy of ToolbarPlacement.Role(&v41);
        outlined destroy of AnyHashable(v34);
LABEL_52:
        _s7SwiftUI16ToolbarPlacementV4RoleO_AEtWOhTm_0(&v36, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
LABEL_53:
        v22 = (v22 + 1) & v25;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if ((*(v8 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
        {
          goto LABEL_2;
        }
      }

      v32[0] = v38;
      v32[1] = v39;
      v33 = v40;
      v26 = MEMORY[0x18D00E7E0](v34, v32);
      outlined destroy of AnyHashable(v32);
      outlined destroy of ToolbarPlacement.Role(&v41);
      outlined destroy of AnyHashable(v34);
      if ((v26 & 1) == 0)
      {
        outlined destroy of ToolbarPlacement.Role(&v36);
        goto LABEL_53;
      }

LABEL_57:
      outlined destroy of ToolbarPlacement.Role(&v36);
      result = outlined destroy of ToolbarPlacement.Role(v44);
      v27 = v31[v23];
      v31[v23] = v27 & ~v24;
      if ((v27 & v24) == 0)
      {
        continue;
      }

      break;
    }

    v28 = v46 - 1;
    if (!__OFSUB__(v46, 1))
    {
      --v46;
      if (!v28)
      {
        return MEMORY[0x1E69E7CD0];
      }

      continue;
    }

    break;
  }

LABEL_67:
  __break(1u);
  return result;
}

void type metadata accessor for _SetStorage<ToolbarPlacement.Role>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<ToolbarPlacement.Role>)
  {
    lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role();
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<ToolbarPlacement.Role>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>> and conformance VStack<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t outlined init with copy of ToolbarContentDescription(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarContentDescription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, MEMORY[0x1E6981870]);
    v5[1] = MEMORY[0x1E6980A30];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout>)
  {
    type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>, _SafeAreaRegionsIgnoringLayout>);
    }
  }
}

void type metadata accessor for VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>)
  {
    type metadata accessor for ToolbarContentDescription?(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>, type metadata accessor for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)> and conformance TupleView<A>();
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)> and conformance TupleView<A>)
  {
    type metadata accessor for ToolbarContentDescription?(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)>, type metadata accessor for (ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Divider, OpacityRendererEffect>??, _ShapeView<Rectangle, _OpacityShapeStyle<AnyShapeStyle>>, ModifiedContent<Divider, OpacityRendererEffect>??)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t closure #1 in SystemTextEditorStyle.makeBody(configuration:)(uint64_t result)
{
  if (!*(result + 8))
  {
    *(result + 8) = 1;
  }

  return result;
}

void protocol witness for TextEditorStyle.makeBody(configuration:) in conformance SystemTextEditorStyle(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of TextEditorStyleConfiguration(a1, a2);
  KeyPath = swift_getKeyPath();
  type metadata accessor for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>(0);
  v5 = a2 + *(v4 + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  v6 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>(0);
  v8 = (a2 + *(v7 + 36));
  *v8 = v6;
  v8[1] = closure #1 in SystemTextEditorStyle.makeBody(configuration:);
  v8[2] = 0;
}

void type metadata accessor for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>)
  {
    type metadata accessor for UIKitTextEditor(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextEditorBorderStyle>, &type metadata for TextEditorBorderStyle, MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>)
  {
    type metadata accessor for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollContentBackground>, &type metadata for ScrollContentBackground, MEMORY[0x1E6980B20]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for UIKitTextEditor;
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextEditorBorderStyle> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitTextEditor, _EnvironmentKeyWritingModifier<TextEditorBorderStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextEditorBorderStyle> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextEditorBorderStyle> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextEditorBorderStyle> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextEditorBorderStyle>, &type metadata for TextEditorBorderStyle, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextEditorBorderStyle> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t EnvironmentValues.navigationEventHandlers.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.navigationEventHandlers : EnvironmentValues@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

double key path setter for EnvironmentValues.navigationEventHandlers : EnvironmentValues(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);

  outlined copy of AppIntentExecutor?(v3, v4);
  outlined copy of AppIntentExecutor?(v5, v6);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t partial apply for closure #1 in View.onNavigationSplitViewExpand_v1(action:)(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];

  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5, v6);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

double View.onNavigationSplitViewExpand_v1(action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  View.transformEnvironment<A>(_:transform:)();

  return result;
}

uint64_t partial apply for closure #1 in View.onNavigation_v1(action:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5, v6);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  return result;
}

uint64_t View.navigationSplitViewCompactColumn_v1(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  swift_getKeyPath();

  View.environment<A>(_:_:)();

  return outlined consume of Binding<NavigationSplitViewColumn>?(v3, v4);
}

void EnvironmentValues.navigationRequiredCompactColumn.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);

    PropertyList.subscript.getter();
  }
}

double key path getter for EnvironmentValues.navigationRequiredCompactColumn : EnvironmentValues@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

double key path setter for EnvironmentValues.navigationRequiredCompactColumn : EnvironmentValues(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);

  outlined copy of Binding<Int>?(v3, v4);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t destroy for NavigationUpdateEvent(uint64_t result)
{
  if (*(result + 56) - 1 <= 2)
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t initializeWithCopy for NavigationUpdateEvent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  switch(v4)
  {
    case 3:
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      (**(v7 - 8))(a1, a2);
      *(a1 + 56) = 3;
      break;
    case 2:
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      *(a1 + 40) = *(a2 + 40);
      (**(v6 - 8))(a1, a2);
      *(a1 + 56) = 2;
      break;
    case 1:
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      (**(v5 - 8))(a1, a2);
      *(a1 + 56) = 1;
      break;
    default:
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 41) = *(a2 + 41);
      break;
  }

  *(a1 + 57) = *(a2 + 57);
  return a1;
}

uint64_t assignWithCopy for NavigationUpdateEvent(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationUpdateEvent.Action(a1);
    v4 = *(a2 + 56);
    switch(v4)
    {
      case 3:
        v8 = *(a2 + 3);
        *(a1 + 24) = v8;
        *(a1 + 32) = *(a2 + 4);
        (**(v8 - 8))(a1, a2);
        *(a1 + 56) = 3;
        break;
      case 2:
        v6 = *(a2 + 3);
        *(a1 + 24) = v6;
        v7 = *(a2 + 6);
        *(a1 + 32) = a2[2];
        *(a1 + 48) = v7;
        (**(v6 - 8))(a1, a2);
        *(a1 + 56) = 2;
        break;
      case 1:
        v5 = *(a2 + 3);
        *(a1 + 24) = v5;
        *(a1 + 32) = *(a2 + 4);
        (**(v5 - 8))(a1, a2);
        *(a1 + 56) = 1;
        break;
      default:
        v9 = *a2;
        v10 = a2[1];
        v11 = a2[2];
        *(a1 + 41) = *(a2 + 41);
        *(a1 + 16) = v10;
        *(a1 + 32) = v11;
        *a1 = v9;
        break;
    }
  }

  *(a1 + 57) = *(a2 + 57);
  return a1;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

_OWORD *assignWithTake for NavigationUpdateEvent(_OWORD *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of NavigationUpdateEvent.Action(result);
    result = v3;
    v4 = *(a2 + 16);
    *v3 = *a2;
    v3[1] = v4;
    v3[2] = *(a2 + 32);
    *(v3 + 41) = *(a2 + 41);
  }

  *(result + 57) = *(a2 + 57);
  return result;
}

uint64_t getEnumTagSinglePayload for NavigationUpdateEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 58))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 57);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 57);
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

uint64_t storeEnumTagSinglePayload for NavigationUpdateEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 3;
    }
  }

  return result;
}

uint64_t destroy for NavigationUpdateEvent.Action(uint64_t result)
{
  v1 = *(result + 56);
  if (v1 >= 4)
  {
    v1 = *result + 4;
  }

  if (v1 - 1 <= 2)
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t initializeWithCopy for NavigationUpdateEvent.Action(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  if (v2 >= 4)
  {
    v2 = *a2 + 4;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v8 = *(a2 + 24);
      *(result + 24) = v8;
      *(result + 40) = *(a2 + 40);
      v4 = result;
      (**(v8 - 8))();
      result = v4;
      v5 = 2;
      goto LABEL_13;
    }

    if (v2 == 3)
    {
      v6 = *(a2 + 24);
      *(result + 24) = v6;
      v4 = result;
      (**(v6 - 8))();
      result = v4;
      v5 = 3;
      goto LABEL_13;
    }

LABEL_10:
    v7 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v7;
    *(result + 32) = *(a2 + 32);
    *(result + 41) = *(a2 + 41);
    return result;
  }

  if (!v2)
  {
    *result = *a2;
    *(result + 56) = 0;
    return result;
  }

  if (v2 != 1)
  {
    goto LABEL_10;
  }

  v3 = *(a2 + 24);
  *(result + 24) = v3;
  v4 = result;
  (**(v3 - 8))();
  result = v4;
  v5 = 1;
LABEL_13:
  *(v4 + 56) = v5;
  return result;
}

uint64_t assignWithCopy for NavigationUpdateEvent.Action(uint64_t result, __int128 *a2)
{
  if (result != a2)
  {
    v2 = *(result + 56);
    if (v2 >= 4)
    {
      v2 = *result + 4;
    }

    if (v2 - 1 <= 2)
    {
      v3 = result;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(result);
      a2 = v4;
      result = v3;
    }

    v5 = *(a2 + 56);
    if (v5 >= 4)
    {
      v5 = *a2 + 4;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v13 = *(a2 + 3);
        *(result + 24) = v13;
        v14 = *(a2 + 6);
        *(result + 32) = a2[2];
        *(result + 48) = v14;
        v7 = result;
        (**(v13 - 8))();
        result = v7;
        v8 = 2;
        goto LABEL_18;
      }

      if (v5 == 3)
      {
        v9 = *(a2 + 3);
        *(result + 24) = v9;
        *(result + 32) = *(a2 + 4);
        v7 = result;
        (**(v9 - 8))();
        result = v7;
        v8 = 3;
        goto LABEL_18;
      }
    }

    else
    {
      if (!v5)
      {
        *result = *a2;
        *(result + 56) = 0;
        return result;
      }

      if (v5 == 1)
      {
        v6 = *(a2 + 3);
        *(result + 24) = v6;
        *(result + 32) = *(a2 + 4);
        v7 = result;
        (**(v6 - 8))();
        result = v7;
        v8 = 1;
LABEL_18:
        *(v7 + 56) = v8;
        return result;
      }
    }

    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    *(result + 41) = *(a2 + 41);
    *(result + 16) = v11;
    *(result + 32) = v12;
    *result = v10;
  }

  return result;
}

__n128 assignWithTake for NavigationUpdateEvent.Action(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 56);
    if (v2 >= 4)
    {
      v2 = *a1 + 4;
    }

    if (v2 - 1 <= 2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 56);
    if (v6 >= 4)
    {
      v6 = *a2 + 4;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v10 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v10;
        result = *(a2 + 32);
        *(a1 + 32) = result;
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = 2;
        return result;
      }

      if (v6 == 3)
      {
        result = *a2;
        v8 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v8;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 56) = 3;
        return result;
      }
    }

    else
    {
      if (!v6)
      {
        *a1 = *a2;
        *(a1 + 56) = 0;
        return result;
      }

      if (v6 == 1)
      {
        result = *a2;
        v7 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v7;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 56) = 1;
        return result;
      }
    }

    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 32) = *(a2 + 32);
    result = *(a2 + 41);
    *(a1 + 41) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationUpdateEvent.Action(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NavigationUpdateEvent.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for NavigationUpdateEvent.Action(uint64_t a1)
{
  result = *(a1 + 56);
  if (result >= 4)
  {
    return (*a1 + 4);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for NavigationUpdateEvent.Action(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 56) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<NavigationEventHandlers> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<NavigationEventHandlers> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<NavigationEventHandlers> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<NavigationEventHandlers>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<NavigationEventHandlers>, &type metadata for NavigationEventHandlers, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<NavigationEventHandlers> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?>)
  {
    type metadata accessor for Binding<NavigationSplitViewColumn>?(255);
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

double specialized implicit closure #1 in _GraphInputs.navigationEventHandlers.getter@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

double specialized implicit closure #1 in _GraphInputs.navigationRequiredCompactColumn.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey);

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t closure #1 in PlatformItemListTextFieldStyle._body(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of TextField<_TextFieldStyleLabel>(a2, a3);
  v5 = a3 + *(type metadata accessor for PlatformItemListTextFieldStyle.PlatformItemListWriter(0) + 20);

  return outlined init with copy of PlatformItem(a1, v5);
}

void *closure #2 in PlatformItemListTextFieldStyle._body(configuration:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[8];
  if (v3)
  {
    v4 = result[6];
    v5 = result[7];
    v6 = result[5];
    v7 = v5 & 1;
    outlined copy of Text?(v6, v4, v5, v3);
    outlined copy of Text.Storage(v6, v4, v5 & 1);

    outlined consume of Text.Storage(v6, v4, v5 & 1);
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v7 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = v3;
  *(a2 + 32) = v3 == 0;
  return result;
}

uint64_t static PlatformItemListTextFieldStyle.PlatformItemListWriter._makeView(view:inputs:)(unsigned int *a1, __int128 *a2)
{
  v3 = a2[3];
  v4 = a2[1];
  v30 = a2[2];
  v31 = v3;
  v5 = a2[3];
  v32 = a2[4];
  v6 = a2[1];
  v28 = *a2;
  v29 = v6;
  v17 = v30;
  v18 = v5;
  v19 = a2[4];
  v33 = *(a2 + 20);
  v20 = *(a2 + 20);
  v15 = v28;
  v16 = v4;
  outlined init with copy of _ViewInputs(&v28, v13);
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(2u);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  type metadata accessor for PlatformItemListTextFieldStyle.PlatformItemListWriter(0);
  v8 = AGGraphCreateOffsetAttribute2();
  v9 = v29;
  swift_beginAccess();
  v10 = *(v9 + 16);
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  v11 = PropertyList.Tracker.init()();
  v21 = OffsetAttribute2;
  v22 = v8;
  v23 = v10;
  v24 = v11;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  _ViewOutputs.init()();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v14 = v20;
  v13[0] = v15;
  v13[1] = v16;
  return outlined destroy of _ViewInputs(v13);
}

uint64_t implicit closure #1 in static PlatformItemListTextFieldStyle.PlatformItemListWriter._makeView(view:inputs:)(_OWORD *a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems and conformance PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems();
  return Attribute.init<A>(body:value:flags:update:)();
}

unsigned int *PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.coordinator.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = closure #1 in PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.coordinator.getter(v0);
    *(v0 + 24) = v3;
    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  return v2;
}

unsigned int *closure #1 in PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.coordinator.getter(unsigned int *a1)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  v5 = *(a1 + 3);

  v6 = v5;
  Value = AGGraphGetValue();
  outlined init with copy of TextField<_TextFieldStyleLabel>(Value, v4);

  v8 = type metadata accessor for PlatformTextFieldCoordinator(0);
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment] = xmmword_18CD6A6D0;
  static PlatformItem.empty.getter();
  v10 = &v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_selectionStorage];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isViewUpdating] = 0;
  v11 = &v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_field];
  *v11 = 0;
  v11[8] = -1;
  v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_ignoreNextUpdate] = 0;
  v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isUserEditing] = 0;
  outlined init with copy of TextField<_TextFieldStyleLabel>(v4, &v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration]);
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v14.receiver = v9;
  v14.super_class = v8;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  outlined destroy of TextField<_TextFieldStyleLabel>(v4);
  return v12;
}

uint64_t PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.updateValue()()
{
  v1 = v0;
  v53[79] = *MEMORY[0x1E69E9840];
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34[-v9];
  v11 = PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.coordinator.getter();
  Value = AGGraphGetValue();
  outlined init with copy of PlatformItem(Value, v53);
  v13 = AGGraphGetValue();
  v37 = v10;
  v38 = v14;
  outlined init with copy of TextField<_TextFieldStyleLabel>(v13, v10);
  v36 = *(AGGraphGetValue() + 8);
  if (v15)
  {

    swift_retain_n();
    v35 = PropertyList.Tracker.hasDifferentUsedValues(_:)();
  }

  else
  {

    v35 = 0;
  }

  v16 = AGGraphGetValue();
  outlined init with copy of TextField<_TextFieldStyleLabel>(v16, v7);
  v17 = v7[180];
  v18 = *(v7 + 120);
  v19 = *(v7 + 152);
  v44 = *(v7 + 136);
  v45[0] = v19;
  if (v17)
  {
    *(v45 + 12) = *(v7 + 164);
    v20 = *(v7 + 88);
    v40 = *(v7 + 72);
    v41 = v20;
    v42 = *(v7 + 104);
    v43 = v18;
    v39[0] = v40;
    v39[1] = v20;
    v39[2] = v42;
    v39[3] = v18;
    v39[4] = v44;
    v39[5] = v19;
    *(&v39[5] + 12) = *(v45 + 12);
    BYTE12(v39[6]) = v17;
    v21 = &lazy cache variable for type metadata for Binding<TextFieldState>;
    v22 = MEMORY[0x1E6981948];
    _s7SwiftUI5StateVyAA09TextFieldC0VGWOcTm_0(v39, &v46, &lazy cache variable for type metadata for Binding<TextFieldState>, MEMORY[0x1E6981948]);
    _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, v22);
    MEMORY[0x18D00ACC0](v51);
    v50[0] = v44;
    v50[1] = v45[0];
    *(&v50[1] + 12) = *(v45 + 12);
  }

  else
  {
    *&v45[1] = *(v7 + 21);
    v23 = *(v7 + 88);
    v40 = *(v7 + 72);
    v41 = v23;
    v42 = *(v7 + 104);
    v43 = v18;
    v39[4] = v44;
    v39[5] = v19;
    *(&v39[5] + 12) = *(v7 + 164);
    v39[0] = v40;
    v39[1] = v23;
    v39[2] = v42;
    v39[3] = v18;
    BYTE12(v39[6]) = v17;
    v21 = &lazy cache variable for type metadata for State<TextFieldState>;
    v22 = MEMORY[0x1E6981790];
    _s7SwiftUI5StateVyAA09TextFieldC0VGWOcTm_0(v39, &v46, &lazy cache variable for type metadata for State<TextFieldState>, MEMORY[0x1E6981790]);
    _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_0(0, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, v22);
    State.wrappedValue.getter();
    v50[0] = v44;
    v50[1] = v45[0];
    *&v50[2] = *&v45[1];
  }

  v46 = v40;
  v47 = v41;
  v48 = v42;
  v49 = v43;
  outlined destroy of PlatformItemList.Item.SystemItem?(&v46, v21, &type metadata for TextFieldState, v22);
  outlined destroy of TextField<_TextFieldStyleLabel>(v7);
  v24 = v51[0];
  v48 = v51[2];
  v49 = v51[3];
  v50[0] = v52[0];
  *(v50 + 12) = *(v52 + 12);
  v46 = v51[0];
  v47 = v51[1];

  outlined destroy of TextFieldState(&v46);
  if (*(v0 + 40))
  {
    if (*(v0 + 32) == v24)
    {
      v25 = 1;
      if (v38)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (v38)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v25 = 0;
    if (v38)
    {
      goto LABEL_17;
    }
  }

  type metadata accessor for (_:)();
  if (AGGraphGetOutputValue())
  {
    v26 = v35;
    if (v35)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_17:
  outlined init with copy of TextField<_TextFieldStyleLabel>(v37, v4);
  v27 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration;
  swift_beginAccess();
  outlined assign with take of TextField<_TextFieldStyleLabel>(v4, v11 + v27);
  swift_endAccess();
  outlined init with copy of PlatformItem(v53, v39);
  v28 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_label;
  swift_beginAccess();
  outlined assign with take of PlatformItem(v39, v11 + v28);
  swift_endAccess();
  v26 = v35;
  if (v35)
  {
LABEL_19:
    PropertyList.Tracker.reset()();

    EnvironmentValues.init(_:tracker:)();
    v29 = *(v11 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment);
    v30 = *(v11 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment + 8);
    *(v11 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment) = v39[0];
    outlined consume of EnvironmentValues?(v29, v30);
    goto LABEL_20;
  }

LABEL_18:
  type metadata accessor for (_:)();
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_19;
  }

LABEL_20:
  if (((v38 | v26) & 1) != 0 || (type metadata accessor for (_:)(), !AGGraphGetOutputValue()))
  {
    PlatformTextFieldCoordinator.update()();
  }

  type metadata accessor for (_:)();
  if (((AGGraphGetOutputValue() != 0) & v25) == 1)
  {

    outlined destroy of TextField<_TextFieldStyleLabel>(v37);
    outlined destroy of PlatformItem(v53);
  }

  else
  {
    outlined init with copy of PlatformItem(v53, v39);
    v31 = swift_allocObject();
    *(v31 + 16) = v11;
    *(v31 + 24) = v24;
    memcpy((v31 + 40), v39, 0x271uLL);
    *&v40 = partial apply for closure #1 in PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.updateValue();
    *(&v40 + 1) = v31;

    v32 = v11;
    AGGraphSetOutputValue();

    outlined destroy of TextField<_TextFieldStyleLabel>(v37);
    outlined destroy of PlatformItem(v53);
  }

  *(v1 + 32) = v24;
  return result;
}

uint64_t closure #1 in PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.updateValue()(void *a1, void *a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v60 = a3;
  v63 = a1;
  v8 = type metadata accessor for PlatformItemList.Item(0);
  v9 = (v8 - 8);
  v62 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v98);
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v79 = 0u;
  v13[32] = 0;
  *(v13 + 3) = 0;
  *(v13 + 8) = 0u;
  *(v13 + 5) = -1;
  v13[56] = 1;
  v14 = v107;
  *(v13 + 12) = v106;
  *(v13 + 13) = v14;
  *(v13 + 14) = v108[0];
  *(v13 + 235) = *(v108 + 11);
  v15 = v103;
  *(v13 + 8) = v102;
  *(v13 + 9) = v15;
  v16 = v105;
  *(v13 + 10) = v104;
  *(v13 + 11) = v16;
  v17 = v99;
  *(v13 + 4) = v98;
  *(v13 + 5) = v17;
  v18 = v101;
  *(v13 + 6) = v100;
  *(v13 + 7) = v18;
  *(v13 + 19) = 0u;
  *(v13 + 20) = 0u;
  *(v13 + 17) = 0u;
  *(v13 + 18) = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 42) = 0x3FFFFFFFCLL;
  *(v13 + 344) = 0u;
  *(v13 + 360) = 0u;
  *(v13 + 376) = 0u;
  *(v13 + 392) = 0u;
  *(v13 + 51) = 0;
  *(v13 + 52) = 1;
  *(v13 + 424) = 0u;
  *(v13 + 440) = 0u;
  *(v13 + 456) = 0u;
  v13[472] = 0;
  *(v13 + 60) = 0;
  *(v13 + 488) = 0u;
  v13[504] = 0;
  *(v13 + 32) = 0u;
  v13[528] = 4;
  *(v13 + 536) = 0u;
  *(v13 + 552) = 0u;
  *(v13 + 568) = 0u;
  *(v13 + 584) = 0u;
  *(v13 + 600) = 0u;
  *(v13 + 616) = 0u;
  *(v13 + 632) = 0u;
  *(v13 + 648) = 0u;
  *(v13 + 664) = 0u;
  *(v13 + 680) = 0u;
  *(v13 + 696) = 0u;
  *(v13 + 712) = 0u;
  *(v13 + 728) = 0u;
  *(v13 + 744) = 0u;
  *(v13 + 760) = 0u;
  *(v13 + 776) = 0u;
  *(v13 + 792) = 0u;
  *(v13 + 808) = 0u;
  *(v13 + 824) = 0u;
  *(v13 + 840) = 0u;
  *(v13 + 107) = 0;
  *(v13 + 108) = 1;
  *(v13 + 872) = 0u;
  *(v13 + 888) = 0u;
  *(v13 + 904) = 0u;
  *(v13 + 920) = 0u;
  *(v13 + 936) = 0u;
  *(v13 + 476) = 1283;
  v13[954] = 3;
  v19 = v9[30];
  v20 = type metadata accessor for CommandOperation(0);
  (*(*(v20 - 8) + 56))(&v13[v19], 1, 1, v20);
  v13[v9[31]] = 0;
  v13[v9[32]] = 0;
  v13[v9[33]] = 2;
  v13[v9[34]] = 0;
  v13[v9[35]] = 0;
  v21 = v9[36];
  *v13 = 0;
  v22 = *(v13 + 13);
  v109[8] = *(v13 + 12);
  v109[9] = v22;
  v110[0] = *(v13 + 14);
  *(v110 + 11) = *(v13 + 235);
  v23 = *(v13 + 9);
  v109[4] = *(v13 + 8);
  v109[5] = v23;
  v24 = *(v13 + 11);
  v109[6] = *(v13 + 10);
  v109[7] = v24;
  v25 = *(v13 + 5);
  v109[0] = *(v13 + 4);
  v109[1] = v25;
  v26 = *(v13 + 7);
  v109[2] = *(v13 + 6);
  v109[3] = v26;
  v27 = MEMORY[0x1E69E6720];
  outlined destroy of PlatformItemList.Item.SystemItem?(v109, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720]);
  v28 = v107;
  *(v13 + 12) = v106;
  *(v13 + 13) = v28;
  *(v13 + 14) = v108[0];
  *(v13 + 235) = *(v108 + 11);
  v29 = v103;
  *(v13 + 8) = v102;
  *(v13 + 9) = v29;
  v30 = v105;
  *(v13 + 10) = v104;
  *(v13 + 11) = v30;
  v31 = v99;
  *(v13 + 4) = v98;
  *(v13 + 5) = v31;
  v32 = v101;
  *(v13 + 6) = v100;
  *(v13 + 7) = v32;
  v33 = *(v13 + 456);
  v111[2] = *(v13 + 440);
  v111[3] = v33;
  v112 = v13[472];
  v34 = *(v13 + 424);
  v111[0] = *(v13 + 408);
  v111[1] = v34;
  outlined destroy of PlatformItemList.Item.SystemItem?(v111, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, v27);
  *(v13 + 408) = xmmword_18CD633F0;
  *(v13 + 424) = 0u;
  *(v13 + 440) = 0u;
  *(v13 + 456) = 0u;
  v13[472] = 0;
  v35 = v60;
  outlined assign with take of PlatformItemList.Item.Accessibility?(&v79, (v13 + 536));
  *&v13[v21] = 0;
  *(v13 + 6) = 0;
  v36 = *(v13 + 24);
  v113[4] = *(v13 + 23);
  v113[5] = v36;
  v114 = *(v13 + 50);
  v37 = *(v13 + 20);
  v113[0] = *(v13 + 19);
  v113[1] = v37;
  v38 = *(v13 + 22);
  v113[2] = *(v13 + 21);
  v113[3] = v38;
  v39 = a2;
  outlined destroy of PlatformItemList.Item.SystemItem?(v113, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem, v27);
  *(v13 + 38) = a2;
  *(v13 + 42) = 0x4000000000000000;
  v40 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v40 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v41 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v42 = MEMORY[0x18D00C850](v35, a4);
    v43 = [v41 initWithString_];

    *v13 = v43;
    v44 = v63;
    v45 = v61;
  }

  else
  {
    v46 = a5[15];
    v91 = a5[14];
    v92 = v46;
    v93 = a5[16];
    v47 = a5[11];
    v87 = a5[10];
    v88 = v47;
    v48 = a5[13];
    v89 = a5[12];
    v90 = v48;
    v49 = a5[7];
    v83 = a5[6];
    v84 = v49;
    v50 = a5[9];
    v85 = a5[8];
    v86 = v50;
    v51 = a5[3];
    v79 = a5[2];
    v80 = v51;
    v52 = a5[5];
    v81 = a5[4];
    v82 = v52;
    v53 = _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v79);
    v44 = v63;
    if (v53 == 1)
    {
      v45 = v61;
    }

    else
    {
      v76 = v91;
      v77 = v92;
      v78 = v93;
      v72 = v87;
      v73 = v88;
      v74 = v89;
      v75 = v90;
      v68 = v83;
      v69 = v84;
      v70 = v85;
      v71 = v86;
      v64 = v79;
      v65 = v80;
      v66 = v81;
      v67 = v82;
      v54 = PlatformItem.PrimaryContent.text.getter();
      v45 = v61;
      if (v54)
      {
        v55 = v54;
        if ([v54 length])
        {
          *v13 = v55;
        }

        else
        {
        }
      }
    }
  }

  outlined init with copy of PlatformItemList.Item(v13, v45);
  v56 = *v44;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
  }

  v58 = v56[2];
  v57 = v56[3];
  if (v58 >= v57 >> 1)
  {
    v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v56);
  }

  v56[2] = v58 + 1;
  outlined init with take of PlatformItemList.Item(v45, v56 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v58);
  *v44 = v56;
  return _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v13, type metadata accessor for PlatformItemList.Item);
}

__n128 protocol witness for TextFieldStyle._body(configuration:) in conformance PlatformItemListTextFieldStyle@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12[-v6];
  outlined init with copy of TextField<_TextFieldStyleLabel>(a1, &v12[-v6]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  outlined init with take of TextField<_TextFieldStyleLabel>(v7, v9 + v8);
  v13 = a1;
  type metadata accessor for PlatformItemListTextFieldStyle.PlatformItemListWriter(0);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for _ConditionalContent<Text, _TextFieldStyleLabel>, MEMORY[0x1E6981148], &type metadata for _TextFieldStyleLabel, MEMORY[0x1E697F960]);
  lazy protocol witness table accessor for type _ConditionalContent<Text, _TextFieldStyleLabel> and conformance <> _ConditionalContent<A, B>();
  PlatformItemsReader.init(for:content:source:)();
  v10 = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v10;
  *(a2 + 64) = v18;
  result = v15;
  *a2 = v14;
  *(a2 + 16) = result;
  return result;
}

uint64_t outlined init with take of TextField<_TextFieldStyleLabel>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PlatformItemListTextFieldStyle._body(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v6 = v2 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80));

  return closure #1 in PlatformItemListTextFieldStyle._body(configuration:)(a1, v6, a2);
}

uint64_t type metadata accessor for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlatformItemListTextFieldStyle.PlatformItemListWriter;
  if (!type metadata singleton initialization cache for PlatformItemListTextFieldStyle.PlatformItemListWriter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, _TextFieldStyleLabel> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, _TextFieldStyleLabel> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, _TextFieldStyleLabel> and conformance <> _ConditionalContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(255, &lazy cache variable for type metadata for _ConditionalContent<Text, _TextFieldStyleLabel>, MEMORY[0x1E6981148], &type metadata for _TextFieldStyleLabel, MEMORY[0x1E697F960]);
    v4[0] = MEMORY[0x1E6981138];
    v4[1] = &protocol witness table for _TextFieldStyleLabel;
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, _TextFieldStyleLabel> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    v12 = v5 + ((v4 + 16) & ~v4);

    return v12;
  }

  v7 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v7;
  *(a1 + 24) = a2[3];
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v8 = a2[8];

  if (v8)
  {
    v9 = a2[5];
    v10 = a2[6];
    v11 = *(a2 + 56);
    outlined copy of Text.Storage(v9, v10, v11);
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    *(a1 + 56) = v11;
    *(a1 + 64) = a2[8];
  }

  else
  {
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 56) = *(a2 + 7);
  }

  v13 = a2[9];
  v14 = a2[10];
  v15 = a2[11];
  v16 = a2[12];
  v17 = a2[13];
  v18 = a2[14];
  v20 = a2[15];
  v19 = a2[16];
  v86 = a2[17];
  v87 = a2[18];
  v88 = a2[19];
  v89 = a2[20];
  v90 = a2[21];
  __dsta = *(a2 + 44);
  v93 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v20, v19, v86, v87, v88, v89, v90, __dsta, v93);
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
  *(a1 + 120) = v20;
  *(a1 + 128) = v19;
  *(a1 + 136) = v86;
  *(a1 + 144) = v87;
  *(a1 + 152) = v88;
  *(a1 + 160) = v89;
  *(a1 + 168) = v90;
  *(a1 + 176) = __dsta;
  *(a1 + 180) = v93;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v22 = *(v21 + 56);
  v23 = (a1 + v22);
  v24 = (a2 + v22);
  type metadata accessor for Binding<TextSelection?>(0);
  v26 = v25;
  v27 = *(v25 - 8);
  v12 = a1;
  if ((*(v27 + 48))(v24, 1, v25))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v23, v24, *(*(v28 - 8) + 64));
  }

  else
  {
    v29 = v24[1];
    *v23 = *v24;
    v23[1] = v29;
    v30 = *(v26 + 32);
    __dst = v23 + v30;
    v31 = v24 + v30;
    v32 = type metadata accessor for TextSelection(0);
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    v35 = v31;
    v36 = v32;

    if (v34(v35, 1, v36))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v35, *(*(v37 - 8) + 64));
    }

    else
    {
      v38 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v39 - 8) + 16))(__dst, v35, v39);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v35, *(*(v38 - 8) + 64));
      }

      __dst[*(v36 + 20)] = *(v35 + *(v36 + 20));
      (*(v33 + 56))(__dst, 0, 1, v36);
    }

    (*(v27 + 56))(v23, 0, 1, v26);
    v12 = a1;
  }

  v40 = *(a3 + 20);
  v41 = v12 + v40;
  v42 = a2 + v40;
  v43 = *(a2 + v40);
  v44 = *(a2 + v40 + 8);
  *v41 = v43;
  *(v41 + 8) = v44;
  *(v41 + 16) = *(v42 + 2);
  *(v41 + 24) = v42[24];
  *(v41 + 28) = *(v42 + 7);
  v45 = *(v42 + 4);

  if (v45 == 1)
  {
    v46 = *(v42 + 15);
    *(v41 + 224) = *(v42 + 14);
    *(v41 + 240) = v46;
    *(v41 + 256) = *(v42 + 16);
    v47 = *(v42 + 11);
    *(v41 + 160) = *(v42 + 10);
    *(v41 + 176) = v47;
    v48 = *(v42 + 13);
    *(v41 + 192) = *(v42 + 12);
    *(v41 + 208) = v48;
    v49 = *(v42 + 7);
    *(v41 + 96) = *(v42 + 6);
    *(v41 + 112) = v49;
    v50 = *(v42 + 9);
    *(v41 + 128) = *(v42 + 8);
    *(v41 + 144) = v50;
    v51 = *(v42 + 3);
    *(v41 + 32) = *(v42 + 2);
    *(v41 + 48) = v51;
    v52 = *(v42 + 5);
    *(v41 + 64) = *(v42 + 4);
    *(v41 + 80) = v52;
  }

  else
  {
    v53 = *(v42 + 5);
    v54 = *(v42 + 6);
    *(v41 + 32) = v45;
    *(v41 + 40) = v53;
    *(v41 + 48) = v54;
    v55 = *(v42 + 23);
    v56 = v45;
    v57 = v53;
    v58 = v54;
    if (v55 >> 1 == 4294967294)
    {
      *(v41 + 184) = *(v42 + 184);
      *(v41 + 200) = *(v42 + 200);
      *(v41 + 216) = *(v42 + 216);
      *(v41 + 227) = *(v42 + 227);
      *(v41 + 120) = *(v42 + 120);
      *(v41 + 136) = *(v42 + 136);
      *(v41 + 152) = *(v42 + 152);
      *(v41 + 168) = *(v42 + 168);
      *(v41 + 56) = *(v42 + 56);
      *(v41 + 72) = *(v42 + 72);
      *(v41 + 88) = *(v42 + 88);
      *(v41 + 104) = *(v42 + 104);
    }

    else
    {
      v59 = v42[64];
      if (v59 == 255)
      {
        *(v41 + 56) = *(v42 + 7);
        *(v41 + 64) = v42[64];
      }

      else
      {
        v60 = *(v42 + 7);
        outlined copy of GraphicsImage.Contents(v60, v42[64]);
        *(v41 + 56) = v60;
        *(v41 + 64) = v59;
        v55 = *(v42 + 23);
      }

      *(v41 + 72) = *(v42 + 9);
      *(v41 + 80) = *(v42 + 5);
      *(v41 + 96) = v42[96];
      *(v41 + 100) = *(v42 + 100);
      *(v41 + 113) = *(v42 + 113);
      v61 = *(v42 + 9);
      *(v41 + 128) = *(v42 + 8);
      *(v41 + 144) = v61;
      *(v41 + 160) = *(v42 + 80);
      *(v41 + 162) = v42[162];
      *(v41 + 163) = v42[163];
      if (v55 >> 1 == 0xFFFFFFFF)
      {
        *(v41 + 168) = *(v42 + 168);
        *(v41 + 184) = *(v42 + 184);
      }

      else
      {
        v62 = *(v42 + 21);
        v63 = *(v42 + 22);
        v64 = *(v42 + 24);
        outlined copy of AccessibilityImageLabel(v62, v63, v55, v64);
        *(v41 + 168) = v62;
        *(v41 + 176) = v63;
        *(v41 + 184) = v55;
        *(v41 + 192) = v64;
      }

      v65 = *(v42 + 26);
      *(v41 + 200) = *(v42 + 25);
      *(v41 + 208) = v65;
      *(v41 + 216) = *(v42 + 108);
      *(v41 + 220) = *(v42 + 55);
      *(v41 + 224) = v42[224];
      v66 = *(v42 + 29);
      *(v41 + 232) = v66;
      *(v41 + 240) = *(v42 + 120);
      *(v41 + 242) = v42[242];
      swift_unknownObjectRetain();

      v67 = v66;
    }

    *(v41 + 248) = *(v42 + 31);
    *(v41 + 256) = v42[256];
    *(v41 + 264) = *(v42 + 33);
  }

  *(v41 + 272) = *(v42 + 34);
  v68 = *(v42 + 38);

  if (v68 == 1)
  {
    v69 = *(v42 + 296);
    *(v41 + 280) = *(v42 + 280);
    *(v41 + 296) = v69;
  }

  else
  {
    *(v41 + 280) = *(v42 + 35);
    *(v41 + 288) = *(v42 + 18);
    *(v41 + 304) = v68;
    swift_unknownObjectRetain();
  }

  *(v41 + 312) = *(v42 + 39);
  *(v41 + 320) = v42[320];
  if (!*(v42 + 76))
  {
    memcpy((v41 + 328), v42 + 328, 0x129uLL);
    return v12;
  }

  v70 = *(v42 + 42);
  *(v41 + 328) = *(v42 + 41);
  *(v41 + 336) = v70;
  *(v41 + 344) = v42[344];
  *(v41 + 352) = *(v42 + 44);
  *(v41 + 360) = v42[360];
  *(v41 + 368) = *(v42 + 23);
  *(v41 + 384) = v42[384];
  v71 = (v41 + 392);
  v72 = v42 + 392;
  v73 = *(v42 + 52);

  if (!v73)
  {
    v75 = *(v42 + 408);
    *v71 = *v72;
    *(v41 + 408) = v75;
    *(v41 + 424) = *(v42 + 53);
LABEL_37:
    *(v41 + 432) = *(v42 + 54);

    goto LABEL_38;
  }

  if (v73 != 1)
  {
    v76 = *(v42 + 53);
    *(v41 + 416) = v73;
    *(v41 + 424) = v76;
    (**(v73 - 8))(v41 + 392, (v42 + 392), v73);
    goto LABEL_37;
  }

  v74 = *(v42 + 408);
  *v71 = *v72;
  *(v41 + 408) = v74;
  *(v41 + 424) = *(v42 + 424);
LABEL_38:
  *(v41 + 440) = *(v42 + 55);
  *(v41 + 448) = v42[448];
  v77 = (v41 + 456);
  v78 = v42 + 456;
  v79 = *(v42 + 71);
  if (v79 == 1)
  {
    v80 = *(v42 + 568);
    *(v41 + 552) = *(v42 + 552);
    *(v41 + 568) = v80;
    *(v41 + 584) = *(v42 + 584);
    *(v41 + 600) = v42[600];
    v81 = *(v42 + 504);
    *(v41 + 488) = *(v42 + 488);
    *(v41 + 504) = v81;
    v82 = *(v42 + 536);
    *(v41 + 520) = *(v42 + 520);
    *(v41 + 536) = v82;
    v83 = *(v42 + 472);
    *v77 = *v78;
    *(v41 + 472) = v83;
  }

  else
  {
    *v77 = *v78;
    *(v41 + 464) = v42[464];
    *(v41 + 472) = *(v42 + 59);
    *(v41 + 480) = v42[480];
    *(v41 + 481) = *(v42 + 481);
    *(v41 + 483) = v42[483];
    *(v41 + 484) = v42[484];
    *(v41 + 488) = *(v42 + 61);
    v84 = *(v42 + 32);
    *(v41 + 496) = *(v42 + 31);
    *(v41 + 512) = v84;
    *(v41 + 528) = *(v42 + 66);
    *(v41 + 536) = *(v42 + 268);
    *(v41 + 544) = *(v42 + 34);
    *(v41 + 560) = v42[560];
    *(v41 + 568) = v79;
    *(v41 + 576) = *(v42 + 36);
    *(v41 + 592) = *(v42 + 74);
    *(v41 + 600) = v42[600];
  }

  *(v41 + 608) = *(v42 + 76);
  *(v41 + 616) = *(v42 + 77);
  *(v41 + 624) = v42[624];

  return v12;
}