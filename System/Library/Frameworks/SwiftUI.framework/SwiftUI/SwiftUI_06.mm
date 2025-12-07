char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

char **closure #1 in Scene.handlesExternalEvents(matching:)(char **result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 2);
  if (v3)
  {
    v5 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v6 = 0;
      v7 = v2 + 512;
      while (v6 < *(v2 + 2))
      {
        outlined init with copy of SceneList.Item.Value((v7 - 60), v9);
        if (v10)
        {
          v8 = v10 == 6;
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          outlined destroy of SceneList.Item.Value(v9);
          *v7 = a2;
        }

        else
        {
          result = outlined destroy of SceneList.Item.Value(v9);
        }

        ++v6;
        *v5 = v2;
        v7 += 71;
        if (v3 == v6)
        {
          return result;
        }
      }

      __break(1u);
LABEL_14:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance SceneList.Key(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, uint64_t *a5)
{
  v67 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v49 = v9;
  v50 = v5;
  while (1)
  {
    v17 = v8;
    v18 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v20 = 24 * (__clz(__rbit64(v17)) | (v18 << 6));
    v21 = *(a1 + 48) + v20;
    v22 = *(v21 + 8);
    v23 = (*(a1 + 56) + v20);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = *(v21 + 16);
    v56 = *v21;
    *&v57 = v22;
    BYTE8(v57) = v27;
    v58 = v24;
    v59 = v25;
    v60 = v26;
    outlined copy of SceneList.Namespace(v56, v22, v27);

    a2(&v61, &v56);
    outlined consume of SceneList.Namespace(v56, v57, SBYTE8(v57));

    v28 = v64;
    if (!v64)
    {
LABEL_22:
      outlined consume of Set<UIPress>.Iterator._Variant(a1);
    }

    v29 = v61;
    v30 = v62;
    v31 = v63;
    v53 = v65;
    v54 = v66;
    v32 = *v67;
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v62, v63);
    v35 = *(v32 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_24;
    }

    v38 = v33;
    if (*(v32 + 24) >= v37)
    {
      if ((a4 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, a4 & 1);
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30, v31);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_26;
      }

      v34 = v39;
    }

    v41 = (v17 - 1) & v17;
    if (v38)
    {
      v11 = *v67;
      v12 = 24 * v34;
      v13 = (*(*v67 + 56) + v12);
      v14 = v13[1];
      v15 = v13[2];
      v56 = *v13;
      *&v57 = v14;
      *(&v57 + 1) = v15;

      specialized Array.append<A>(contentsOf:)(v28);

      outlined consume of SceneList.Namespace(v29, v30, v31);
      v16 = *(v11 + 56) + v12;
      *v16 = v56;
      *(v16 + 8) = v57;
    }

    else
    {
      v42 = *v67;
      v42[(v34 >> 6) + 8] |= 1 << v34;
      v43 = v42[6] + 24 * v34;
      *v43 = v29;
      *(v43 + 8) = v30;
      *(v43 + 16) = v31;
      v44 = (v42[7] + 24 * v34);
      *v44 = v28;
      v44[1] = v53;
      v44[2] = v54;
      v45 = v42[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_25;
      }

      v42[2] = v47;
    }

    a4 = 1;
    v10 = v18;
    v9 = v49;
    v5 = v50;
    v8 = v41;
  }

  v19 = v10;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v9)
    {
      goto LABEL_22;
    }

    v17 = *(v5 + 8 * v18);
    ++v19;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *a2 = v3;
  *(a2 + 8) = v2;
  v6 = *(a1 + 16);
  *(a2 + 16) = v6;
  outlined copy of SceneList.Namespace(v3, v2, v6);
}

{
  outlined init with copy of AnyHashable(a1, a2);

  return outlined init with copy of Any(a1 + 40, a2 + 40);
}

{
  outlined init with copy of NavigationLinkSelectionIdentifier(a1, a2);

  return outlined init with copy of UpdateViewDestinationRequest(a1 + 64, a2 + 64);
}

{
  v3 = *(a1 + 56);
  v4 = *(a1 + 88);
  v11 = *(a1 + 72);
  v12[0] = v4;
  *(v12 + 9) = *(a1 + 97);
  v9 = *(a1 + 40);
  v10 = v3;
  outlined init with copy of ToolbarPlacement.Role(a1, a2);
  v5 = v9;
  *(a2 + 56) = v10;
  v6 = v12[0];
  *(a2 + 72) = v11;
  *(a2 + 88) = v6;
  *(a2 + 97) = *(v12 + 9);
  *(a2 + 40) = v5;
  return outlined init with copy of ToolbarAppearanceConfiguration(&v9, &v8);
}

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t type metadata completion function for ConfirmationDialogModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
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

void type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>)
  {
    v2 = lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle();
    v4 = type metadata accessor for PrimitiveButtonStyleContainerModifier(a1, &type metadata for PlatformItemListButtonStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle;
  if (!lazy protocol witness table cache variable for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

void type metadata accessor for ContainerContextPredicate<ListContainerContext>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI25ContainerContextPredicateVyAA04ListcD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _TaskModifier(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _TaskModifier.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier.Child and conformance _TaskModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier, type metadata accessor for _TaskModifier.InnerModifier, protocol conformance descriptor for _TaskModifier.InnerModifier);
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

char *AppStorage.init<A>(_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return AppStorage.init<A>(_:store:)(a1, a2, a3, a4, a5, &unk_1EFFBA410, &protocol witness table for IntegerTransform);
}

{
  return AppStorage.init<A>(_:store:)(a1, a2, a3, a4, a5, &unk_1EFFBA3D0, &protocol witness table for StringTransform);
}

unint64_t lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext()
{
  result = lazy protocol witness table cache variable for type PlainListStyleContext and conformance PlainListStyleContext;
  if (!lazy protocol witness table cache variable for type PlainListStyleContext and conformance PlainListStyleContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainListStyleContext, &type metadata for PlainListStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainListStyleContext and conformance PlainListStyleContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainListStyleContext and conformance PlainListStyleContext;
  if (!lazy protocol witness table cache variable for type PlainListStyleContext and conformance PlainListStyleContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainListStyleContext, &type metadata for PlainListStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainListStyleContext and conformance PlainListStyleContext);
  }

  return result;
}

char *AppStorage.init<A>(_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  v21[0] = a4;
  v21[1] = a6;
  v21[2] = a5;
  v21[3] = a7;
  v18 = type metadata accessor for RawRepresentableTransform(0, v21);
  (*(*(a4 - 8) + 56))(v17, 1, 1, a4);
  v19 = specialized AppStorage.init(key:transform:store:defaultValue:)(a1, a2, v18, &protocol witness table for RawRepresentableTransform<A, B>, a3, v17, v14);
  (*(v15 + 8))(v17, v14);
  return v19;
}

void type metadata accessor for _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for _PreferenceWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key> and conformance _PreferenceWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t UIHostingContentView.hostingView<A>(_:willModifyViewInputs:)(void *a1, uint64_t a2)
{
  v5 = *a1 & *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x710);
  v16[0] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x700);
  v16[1] = v6;
  v7 = type metadata accessor for UIHostingConfiguration(0, v16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  UIHostingContentView._configuration.getter(v16 - v9);
  v11 = UIHostingConfiguration.delegate.getter(v7);
  v13 = v12;
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    ObjectType = swift_getObjectType();
    (*(v13 + 56))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized HostingContentViewGraph.modifyViewInputs(inputs:graph:)()
{
  result = _GraphInputs.pushStyleContext<A>(_:)();
  v2 = *v0;
  if (*v0 <= 3)
  {
    if (v2 == 2)
    {
      lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext();
    }

    else
    {
      if (v2 != 3)
      {
        return result;
      }

      lazy protocol witness table accessor for type GroupedListStyleContext and conformance GroupedListStyleContext();
    }
  }

  else
  {
    switch(v2)
    {
      case 4:
        lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();
        break;
      case 5:
        lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext();
        break;
      case 6:
        lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext();
        break;
      default:
        return result;
    }
  }

  return _GraphInputs.pushStyleContext<A>(_:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ContentConfigurationBasedRootEnvironment(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t type metadata accessor for ContentConfigurationBasedRootEnvironment(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContentConfigurationBasedRootEnvironment;
  if (!type metadata singleton initialization cache for ContentConfigurationBasedRootEnvironment)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ContentConfigurationBasedRootEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ContentConfigurationBasedRootEnvironment and conformance ContentConfigurationBasedRootEnvironment, type metadata accessor for ContentConfigurationBasedRootEnvironment, protocol conformance descriptor for ContentConfigurationBasedRootEnvironment);

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<PreferBaselineAlignedHeaders> and conformance ViewInputFlagModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t protocol witness for ViewGraphFeature.modifyViewOutputs(outputs:inputs:graph:) in conformance SwipeActions.Feature()
{
  PreferencesOutputs.subscript.getter();
  result = AGCreateWeakAttribute();
  *v0 = result;
  *(v0 + 8) = 0;
  return result;
}

uint64_t initializeWithCopy for ContentConfigurationBasedRootEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v9 = a2 + 72;
  v8 = *(a2 + 72);

  if (v8 == 1)
  {
    *(a1 + 72) = *v9;
    *(a1 + 80) = *(v9 + 8);
  }

  else
  {
    *(a1 + 72) = v8;
    *(a1 + 80) = *(a2 + 80);
  }

  *(a1 + 81) = *(a2 + 81);
  v10 = *(a3 + 24);
  v11 = type metadata accessor for UICellConfigurationState();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(a1 + v10, a2 + v10, v11);
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for BorderedButtonStyle_CarCatalyst(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t destroy for ContentConfigurationBasedRootEnvironment(char *a1, uint64_t a2)
{

  if (*(a1 + 9) != 1)
  {
  }

  v4 = *(a2 + 24);
  v5 = type metadata accessor for UICellConfigurationState();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(&a1[v4], 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(&a1[v4], v5);
  }

  return result;
}

uint64_t initializeWithCopy for ListContentStyling(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v7 = a2 + 72;
  v6 = *(a2 + 72);

  if (v6 == 1)
  {
    *(a1 + 72) = *v7;
    *(a1 + 80) = *(v7 + 8);
  }

  else
  {
    *(a1 + 72) = v6;
    *(a1 + 80) = *(a2 + 80);
  }

  return a1;
}

uint64_t HostingContentViewRootModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  type metadata accessor for UICellConfigurationState?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>(0);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(0);
  v53 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v58 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 23);
  v14 = HostingContentViewRootModifier.effectivePadding.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = static Edge.Set.all.getter();
  v22 = v1[3];
  v65 = v1[2];
  v66 = v22;
  v67 = v1[4];
  v68 = *(v1 + 80);
  v23 = v1[1];
  v63 = *v1;
  v64 = v23;
  v24 = *(type metadata accessor for HostingContentViewRootModifier(0) + 32);
  v25 = v7 + *(v5 + 44);
  v26 = *(type metadata accessor for ContentConfigurationBasedRootEnvironment(0) + 24);
  v55 = v24;
  outlined init with copy of UIHostingConfigurationStorage(v1 + v24, &v25[v26], type metadata accessor for UICellConfigurationState?);
  v27 = v66;
  *(v25 + 2) = v65;
  *(v25 + 3) = v27;
  *(v25 + 4) = v67;
  v25[80] = v68;
  v28 = v64;
  *v25 = v63;
  *(v25 + 1) = v28;
  v25[81] = 1;
  *v7 = v21;
  v7[1] = v14;
  *(v7 + 2) = v16;
  *(v7 + 3) = v18;
  *(v7 + 4) = v20;
  *(v7 + 40) = 0;
  v29 = *(v1 + 19);
  if (v13 >= 2)
  {
    *&v30 = INFINITY;
  }

  else
  {
    *&v30 = 0.0;
  }

  v59 = *(v1 + 160);
  outlined init with copy of ListContentStyling(&v63, v60);
  if (v13 >= 2)
  {
    v31 = static Alignment.leading.getter();
  }

  else
  {
    v31 = static Alignment.center.getter();
  }

  v33 = v29;
  if (v59)
  {
    v33 = -INFINITY;
  }

  v34 = *&v30;
  if (v13 < 2)
  {
    v34 = v33;
  }

  if (v33 > v34)
  {
    v52[1] = v32;
    v52[2] = v31;
    v35 = static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    v52[3] = v13;
    v37 = v36;
    os_log(_:dso:log:_:_:)(v35, &dword_18BD4A000, v36, "Contradictory frame constraints specified.", 42, 2, MEMORY[0x1E69E7CC0]);
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>(v7, v10, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>);
  v38 = &v10[*(v56 + 36)];
  v39 = v69[5];
  *(v38 + 4) = v69[4];
  *(v38 + 5) = v39;
  *(v38 + 6) = v69[6];
  v40 = v69[1];
  *v38 = v69[0];
  *(v38 + 1) = v40;
  v41 = v69[3];
  *(v38 + 2) = v69[2];
  *(v38 + 3) = v41;
  v42 = v57;
  outlined init with copy of UIHostingConfigurationStorage(v1 + v55, v57, type metadata accessor for UICellConfigurationState?);
  v43 = type metadata accessor for UICellConfigurationState();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    outlined destroy of UIHostingConfigurationStorage(v42, type metadata accessor for UICellConfigurationState?);
    v45 = 0;
  }

  else
  {
    v46 = UICellConfigurationState.isSelected.getter();
    (*(v44 + 8))(v42, v43);
    if (v46)
    {
      v45 = 4;
    }

    else
    {
      v45 = 0;
    }
  }

  AccessibilityProperties.init()();
  v61[5] = v45;
  v61[6] = v45;
  v62 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v61);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v60, 0x128uLL);
  v48 = v58;
  outlined init with take of ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>(v10, v58, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>);
  v49 = v54;
  v50 = (v48 + *(v53 + 36));
  *v50 = v47;
  v50[1] = 0;
  return outlined init with take of ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>(v48, v49, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>);
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, type metadata accessor for _ViewModifier_Content<HostingContentViewRootModifier>);
    type metadata accessor for ContentConfigurationBasedRootEnvironment(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>);
    }
  }
}

double HostingContentViewRootModifier.effectivePadding.getter()
{
  v1 = OptionalEdgeInsets.top.getter();
  if (v2)
  {
    v3 = *v0;
  }

  else
  {
    v3 = *&v1;
  }

  OptionalEdgeInsets.leading.getter();
  OptionalEdgeInsets.bottom.getter();
  OptionalEdgeInsets.trailing.getter();
  return v3;
}

uint64_t specialized static ContentConfigurationBasedRootEnvironment.makeEnvironment(modifier:environment:)(uint64_t a1)
{
  v1 = type metadata accessor for ContentConfigurationBasedRootEnvironment(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  outlined init with copy of UICellConfigurationState?(Value, v3, type metadata accessor for ContentConfigurationBasedRootEnvironment);
  if (v3[81] == 1)
  {
    v5 = *(v3 + 3);
    v6 = *(v3 + 1);
    v18 = *(v3 + 2);
    v19 = v5;
    v7 = *(v3 + 3);
    v20 = *(v3 + 4);
    v8 = *(v3 + 1);
    v17[0] = *v3;
    v17[1] = v8;
    v13 = v18;
    v14 = v7;
    v15 = *(v3 + 4);
    v21 = v3[80];
    v16 = v3[80];
    v11 = v17[0];
    v12 = v6;
    v9 = *(v1 + 24);
    outlined init with copy of ListContentStyling(v17, v22);
    EnvironmentValues.configureListStyling(_:state:)(&v11, &v3[v9]);
    v22[2] = v13;
    v22[3] = v14;
    v22[4] = v15;
    v23 = v16;
    v22[0] = v11;
    v22[1] = v12;
    outlined destroy of ListContentStyling(v22);
  }

  return _s5UIKit24UICellConfigurationStateVSgWOhTm_0(v3, type metadata accessor for ContentConfigurationBasedRootEnvironment);
}

uint64_t EnvironmentValues.configureListStyling(_:state:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  type metadata accessor for UICellConfigurationState?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellConfigurationState();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = *a1;
  v32 = a1[1];
  v33 = v14;
  v15 = *(a1 + 6);
  v34 = *(a1 + 56);
  v16 = *(a1 + 8);
  v17 = *(a1 + 9);
  v18 = *(a1 + 80);

  EnvironmentValues.defaultFont.setter();
  v36 = v13;
  if (v15)
  {
    v20 = *v3;
    v19 = v3[1];
    v40 = v15;
    *&v41 = v20;
    *(&v41 + 1) = v19;
    v39 = 0;

    ShapeStyle.copyStyle(name:in:foregroundStyle:)();
  }

  EnvironmentValues.defaultForegroundStyle.setter();
  *&v41 = v16;
  BYTE8(v41) = 0;
  _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey>, &type metadata for DefaultLabelIconToTitleSpacingKey, &protocol witness table for DefaultLabelIconToTitleSpacingKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  v21 = v3[1];
  if (v21)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v41 = v33;
  v42 = v32;
  _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v21)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  *&v41 = v17;
  BYTE8(v41) = v18;
  _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);

  outlined copy of Transaction?(v17);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v21)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v23 = v37;
  v22 = v38;
  if (v34)
  {
    LOBYTE(v41) = 0;
    EnvironmentValues.textCase.setter();
  }

  outlined init with copy of UICellConfigurationState?(v35, v7, type metadata accessor for UICellConfigurationState?);
  v24 = (*(v23 + 48))(v7, 1, v22);
  v25 = v36;
  if (v24 == 1)
  {
    return _s5UIKit24UICellConfigurationStateVSgWOhTm_0(v7, type metadata accessor for UICellConfigurationState?);
  }

  (*(v23 + 32))(v36, v7, v22);
  if (UICellConfigurationState.isSelected.getter() & 1) != 0 && (UICellConfigurationState.isFocused.getter())
  {
    static BackgroundProminence.increased.getter();
  }

  else
  {
    static BackgroundProminence.standard.getter();
  }

  EnvironmentValues.backgroundProminence.setter();
  (*(v23 + 16))(v10, v25, v22);
  v27 = UICellConfigurationState.isEditing.getter();
  v28 = UICellConfigurationState.isSelected.getter();
  v29 = UICellConfigurationState.isPinned.getter();
  v30 = UICellConfigurationState.isFocused.getter();
  v31 = *(v23 + 8);
  v31(v10, v22);
  LOBYTE(v41) = v27 & 1;
  BYTE1(v41) = v28 & 1;
  BYTE2(v41) = v29 & 1;
  BYTE3(v41) = v30 & 1;
  _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v3[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    return (v31)(v25, v22);
  }

  else
  {
    v31(v25, v22);
  }
}

uint64_t outlined init with copy of UICellConfigurationState?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t destroy for ListContentStyling(void *a1)
{

  result = a1[9];
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined destroy of UICellConfigurationState?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for UICellConfigurationState?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s5UIKit24UICellConfigurationStateVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void @objc UIHostingContentView.layoutSubviews()(void *a1)
{
  v1 = a1;
  UIHostingContentView.layoutSubviews()();
}

id UIHostingContentView.layoutSubviews()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x710);
  v9[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x700);
  v9[1] = v2;
  v3 = type metadata accessor for UIHostingContentView(0, v9);
  v10.receiver = v0;
  v10.super_class = v3;
  result = objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v5 = (v0 + *((*v1 & *v0) + 0x778));
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    v8 = outlined copy of AppIntentExecutor?(*v5, v7);
    v6(v8);
    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6, v7);
  }

  return result;
}

uint64_t outlined init with copy of WeakBox<UIButton>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance BridgedPopUpButtonPreferenceKey@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v1 = a1;
  }

  return outlined init with copy of WeakBox<UIButton>?(&static BridgedPopUpButtonPreferenceKey.defaultValue, v1, type metadata accessor for WeakBox<UIButton>?);
}

uint64_t UIHostingContentView.hostingView<A>(_:didChangePreferences:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40] & *v2;
  v29 = *a1 & *MEMORY[0x1E69E7D40];
  v9 = *(v8 + 1808);
  v32[0] = *(v8 + 1792);
  v32[1] = v9;
  v10 = type metadata accessor for UIHostingConfiguration(0, v32);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = *a2;
  v15 = v3 + *((v7 & v6) + 0x748);
  v16 = *v15;
  if (*v15)
  {
    v17 = *(v15 + 1);
    v18 = *(v8 + 1880);
    swift_beginAccess();
    v33[0] = v14;
    outlined copy of AppIntentExecutor?(v16, v17);
    PreferenceValues.subscript.getter();
    v19 = *(v3 + v18);
    if (v19 == -1 || v31 == -1 || v19 != v31)
    {
      *(v3 + v18) = v31;
      outlined init with copy of UIHostingConfigurationStorage(&v30, v33, type metadata accessor for WeakBox<UIButton>?);
      v22 = UIHostingContentView.popUpButton.setter(v33);
      v16(v22);
    }

    outlined destroy of UIHostingConfigurationStorage(&v30, type metadata accessor for PreferenceValues.Value<WeakBox<UIButton>?>);
    swift_endAccess();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v16, v17);
  }

  UIHostingContentView._configuration.getter(v13);
  v23 = UIHostingConfiguration.delegate.getter(v10);
  v25 = v24;
  result = (*(v11 + 8))(v13, v10);
  if (v23)
  {
    ObjectType = swift_getObjectType();
    *&v32[0] = v14;
    (*(v25 + 40))(a1, v32, *(v29 + 80), *(v29 + 88), ObjectType, v25);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t UIHostingContentView.roundSize(_:)(uint64_t a1)
{
  _UIHostingView.viewGraph.getter(a1);
  GraphHost.environment.getter();

  EnvironmentValues.pixelLength.getter();
}

void protocol witness for static RemovableAttribute.didReinsert(attribute:) in conformance PropertiesTransform()
{
  AGGraphGetAttributeInfo();
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 232);
  *(v1 + 232) = Strong;

  v4 = *(v1 + 232);
  if (v4)
  {
    *(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty) = 1;
  }
}

uint64_t UIHostingContentView.popUpButton.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x750);
  swift_beginAccess();
  outlined assign with take of WeakBox<UIButton>?(a1, v1 + v3, type metadata accessor for WeakBox<UIButton>?);
  return swift_endAccess();
}

void type metadata completion function for ContentConfigurationBasedRootEnvironment(uint64_t a1)
{
  type metadata accessor for UICellConfigurationState?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for _ViewModifier_Content<HostingContentViewRootModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<HostingContentViewRootModifier>)
  {
    type metadata accessor for HostingContentViewRootModifier(255);
    lazy protocol witness table accessor for type HostingContentViewRootModifier and conformance HostingContentViewRootModifier(&lazy protocol witness table cache variable for type HostingContentViewRootModifier and conformance HostingContentViewRootModifier, type metadata accessor for HostingContentViewRootModifier, protocol conformance descriptor for HostingContentViewRootModifier);
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<HostingContentViewRootModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, type metadata accessor for _ViewModifier_Content<HostingContentViewRootModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HostingContentViewRootModifier and conformance HostingContentViewRootModifier(&lazy protocol witness table cache variable for type _ViewModifier_Content<HostingContentViewRootModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<HostingContentViewRootModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<IsInHostingConfiguration> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInHostingConfiguration> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInHostingConfiguration> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsInHostingConfiguration>, lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration, &type metadata for IsInHostingConfiguration, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInHostingConfiguration> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

void @objc UIHostingController.viewWillTransition(to:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  UIHostingController.viewWillTransition(to:with:)(a5, a2, a3, v11, v9, v10);
  swift_unknownObjectRelease();
}

void UIHostingController.viewWillTransition(to:with:)(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x50);
  v12 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x58);
  v21.receiver = v6;
  v21.super_class = type metadata accessor for UIHostingController(0, v11, v12, a6);
  objc_msgSendSuper2(&v21, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  static Semantics.v6_2.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    _UIHostingView.isInSizeTransition.setter(1);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 24) = v12;
    *(v15 + 32) = 1;
    *(v15 + 40) = v14;
    v20[4] = partial apply for closure #1 in UIHostingController.viewWillTransition(to:with:);
    v20[5] = v15;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v20[3] = &block_descriptor_85;
    v16 = _Block_copy(v20);

    [a1 animateAlongsideTransition:0 completion:v16];
    _Block_release(v16);
  }

  v17 = *(v7 + direct field offset for UIHostingController.host);
  v18 = type metadata accessor for _UIHostingView(0, v11, v12, v13);
  v19 = v17;
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v18);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t sub_18BDB4FD4()
{

  return swift_deallocObject();
}

double @objc _UIHostingView.sizeThatFits(_:)(void *a1, double a2, double a3)
{
  v5 = a1;
  *&v6 = *&_UIHostingView.sizeThatFits(_:)(__PAIR128__(*&a3, *&a2));

  return v6;
}

CGSize __swiftcall _UIHostingView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v3 = _UIHostingView.base.getter();
  v4 = MEMORY[0x18D001840](width, height);
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void closure #1 in UIHostingController.viewWillTransition(to:with:)(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = *(Strong + direct field offset for UIHostingController.host);

      _UIHostingView.isInSizeTransition.setter(0);
    }
  }
}

uint64_t destroy for LazyHGrid(void *a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 32) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t specialized HVGrid.lengthAndSpacing(subviews:predecessors:minorGeometry:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2)
  {
    v25 = *(a2 + 16);
    v9 = *(result + 16);
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    v25 = 0;
    v9 = *(result + 16);
    if (!v9)
    {
      return result;
    }
  }

  v10 = 0;
  v24 = *(a3 + 16);
  v11 = a2 + 32;
  v12 = result + 32;
  v23 = v9 - 1;
  v13 = a3 + 40;
  v14 = 0.0;
  v15 = 0.0;
  while (v24 != v10)
  {
    _ProposedSize.init(_:in:by:)();
    v33 = v26;
    v34 = BYTE8(v26);
    v35 = v27;
    v36 = BYTE8(v27);
    result = ProposedViewSize.init(_:)();
    if (v10 >= v25)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_22;
      }

      if (v10 >= *(v8 + 16))
      {
        goto LABEL_21;
      }

      v22 = v16;
      outlined init with copy of _LazyLayout_Subview(v11, &v26);
      v16 = v22;
      v8 = a2;
    }

    LOBYTE(v33) = v16 & 1;
    _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)();
    if (v15 <= v17)
    {
      v15 = v17;
    }

    if (v14 <= v18)
    {
      v14 = v18;
    }

    type metadata accessor for AGGraphRef(0);
    updated = static AGGraphRef.cancelCurrentUpdateIfDeadlinePassed()();
    result = outlined destroy of _LazyLayout_Subview?(&v26);
    if ((updated & 1) == 0)
    {
      v13 += 32;
      v11 += 112;
      v12 += 112;
      if (v23 != v10++)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t outlined destroy of _LazyLayout_Subview?(uint64_t a1)
{
  type metadata accessor for [String](0, &lazy cache variable for type metadata for _LazyLayout_Subview?, MEMORY[0x1E697F980], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSaySSGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t initializeWithCopy for LazyHGridLayout(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 7);

  return a1;
}

uint64_t protocol witness for static LazyLayout.layoutProperties.getter in conformance LazyVGridLayout@<X0>(_WORD *a1@<X8>)
{
  result = default argument 1 of _LazyLayout_Properties.init(axes:multipleViewAxes:)();
  *a1 = 770;
  return result;
}

unint64_t lazy protocol witness table accessor for type LazyVGridLayout and conformance LazyVGridLayout()
{
  result = lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout;
  if (!lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LazyVGridLayout, &type metadata for LazyVGridLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout;
  if (!lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LazyVGridLayout, &type metadata for LazyVGridLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout;
  if (!lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LazyVGridLayout, &type metadata for LazyVGridLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout;
  if (!lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LazyVGridLayout, &type metadata for LazyVGridLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LazyVGridLayout and conformance LazyVGridLayout);
  }

  return result;
}

uint64_t protocol witness for LazyStack.minorGeometry(updatingSize:) in conformance LazyHGridLayout(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void, void, unint64_t))
{
  result = a5(a2, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24) | (*(v5 + 28) << 32));
  *a1 = v8;
  return result;
}

uint64_t specialized HVGrid.minorGeometry(updatingSize:)(double *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = MEMORY[0x1E69E7CC0];
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v68 = a2 + 32;

  v7 = 0;
  v8 = (a2 + 64);
  v9 = v2;
  v10 = v3;
  do
  {
    v11 = *(v8 - 1);
    if (!*(v8 - 16))
    {
      v10 = v10 - *(v8 - 4);
      if (v9 == 1)
      {
        goto LABEL_7;
      }

LABEL_13:
      if (*v8)
      {
        result = static Spacing.defaultValue.getter();
      }

      v10 = v10 - v11;
      goto LABEL_7;
    }

    if (__OFADD__(v7++, 1))
    {
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
      return result;
    }

    if (v9 != 1)
    {
      goto LABEL_13;
    }

LABEL_7:
    v8 += 8;
    --v9;
  }

  while (v9);
  if (*(v4 + 16) <= v2)
  {
    v13 = v2;
  }

  else
  {
    v13 = *(v4 + 16);
  }

  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0, v4);
  v15 = 0;
  v16 = 0.0;
  while (2)
  {
    v19 = v68 + (v15 << 6);
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 56);
    if (*(v19 + 32))
    {
      static Spacing.defaultValue.getter();
      v25 = v24;
      if ((v23 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_42:
      v33 = lazy protocol witness table accessor for type LazyVGridLayout and conformance LazyVGridLayout();
      (*(v33 + 24))(&type metadata for LazyVGridLayout, v33);
      result = UnitPoint.init(_:in:by:)();
      v17 = v20;
      if (!v22)
      {
        goto LABEL_43;
      }

LABEL_28:
      if (v22 == 1)
      {
        if (v17 > v21)
        {
          goto LABEL_83;
        }

        if (v10 < 0.0)
        {
          v28 = 0.0;
        }

        else
        {
          v28 = v10;
        }

        v29 = v28 / v7;
        if (v29 < v17)
        {
          v29 = v17;
        }

        if (v29 <= v21)
        {
          v17 = v29;
        }

        else
        {
          v17 = v21;
        }

        v31 = *(v14 + 2);
        v30 = *(v14 + 3);
        if (v31 >= v30 >> 1)
        {
          v66 = v26;
          v52 = v27;
          v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v14);
          v27 = v52;
          v26 = v66;
          v14 = v53;
        }

        *(v14 + 2) = v31 + 1;
        v32 = &v14[32 * v31];
        *(v32 + 4) = v16;
        *(v32 + 5) = v17;
        *(v32 + 6) = v26;
        *(v32 + 7) = v27;
      }

      else
      {
        if (v10 < 0.0)
        {
          v37 = 0.0;
        }

        else
        {
          v37 = v10;
        }

        v38 = v37 / v7;
        v39 = floor((v38 - v17) / (v25 + v17));
        if (v39 < 0.0)
        {
          v39 = 0.0;
        }

        v40 = v39 + 1.0;
        if (v40 == INFINITY)
        {
          goto LABEL_82;
        }

        if (v40 <= -9.22337204e18)
        {
          goto LABEL_84;
        }

        if (v40 >= 9.22337204e18)
        {
          goto LABEL_85;
        }

        v41 = v40;
        if (__OFSUB__(v40, 1))
        {
          goto LABEL_86;
        }

        v42 = (v38 - v25 * (v40 - 1)) / v41;
        if (v42 >= v21)
        {
          v43 = v21;
        }

        else
        {
          v43 = v42;
        }

        if (v41 < 0)
        {
          goto LABEL_87;
        }

        if (v41)
        {
          v44 = *(v14 + 2);
          v45 = 32 * v44 + 56;
          v17 = 0.0;
          do
          {
            v46 = *(v14 + 3);
            v47 = v44 + 1;
            if (v44 >= v46 >> 1)
            {
              v63 = v27;
              v64 = v26;
              v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v44 + 1, 1, v14);
              v27 = v63;
              v26 = v64;
              v14 = v49;
            }

            *(v14 + 2) = v47;
            v48 = &v14[v45];
            *(v48 - 3) = v16 + v17;
            *(v48 - 2) = v43;
            *(v48 - 1) = v26;
            *v48 = v27;
            if (--v41)
            {
              v17 = v25 + v43 + v17;
            }

            else
            {
              v17 = v43 + v17;
            }

            v45 += 32;
            v44 = v47;
          }

          while (v41);
        }

        else
        {
          v17 = 0.0;
        }
      }

      v10 = v10 - v17;
      --v7;
    }

    else
    {
      v25 = *(v19 + 24);
      if (*(v19 + 56))
      {
        goto LABEL_42;
      }

LABEL_27:
      result = Alignment.fraction.getter();
      v17 = v20;
      if (v22)
      {
        goto LABEL_28;
      }

LABEL_43:
      v35 = *(v14 + 2);
      v34 = *(v14 + 3);
      if (v35 >= v34 >> 1)
      {
        v65 = v26;
        v50 = v27;
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v14);
        v27 = v50;
        v26 = v65;
        v14 = v51;
      }

      *(v14 + 2) = v35 + 1;
      v36 = &v14[32 * v35];
      *(v36 + 4) = v16;
      *(v36 + 5) = v20;
      *(v36 + 6) = v26;
      *(v36 + 7) = v27;
    }

    v18 = v15 + 1;
    if (v15 == v2 - 1)
    {
      v16 = v16 + v17;
    }

    else
    {
      v16 = v25 + v16 + v17;
    }

    ++v15;
    if (v18 != v2)
    {
      continue;
    }

    break;
  }

  if (v3 < v16)
  {
    *a1 = v16;
    return *(v14 + 2);
  }

  if (v16 < v3)
  {
    v54 = lazy protocol witness table accessor for type LazyVGridLayout and conformance LazyVGridLayout();
    v55 = (v3 - v16) * (*(v54 + 24))(&type metadata for LazyVGridLayout, v54);
    if (v55 != 0.0)
    {
      v56 = *(v14 + 2);
      if (v56)
      {
        if (v56 == 1)
        {
          v57 = 0;
          goto LABEL_78;
        }

        v57 = v56 & 0x7FFFFFFFFFFFFFFELL;
        v58 = (v14 + 64);
        v59 = v56 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v60 = v55 + *v58;
          *(v58 - 4) = v55 + *(v58 - 4);
          *v58 = v60;
          v58 += 8;
          v59 -= 2;
        }

        while (v59);
        if (v56 != v57)
        {
LABEL_78:
          v61 = v56 - v57;
          v62 = &v14[32 * v57 + 32];
          do
          {
            *v62 = v55 + *v62;
            v62 += 4;
            --v61;
          }

          while (v61);
        }
      }
    }
  }

  return *(v14 + 2);
}

unint64_t lazy protocol witness table accessor for type HorizontalAlignment and conformance HorizontalAlignment()
{
  result = lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment;
  if (!lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697F710], MEMORY[0x1E697F718], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalAlignment and conformance HorizontalAlignment);
  }

  return result;
}

void closure #1 in UIHostingContentView.setupSizeInvalidationHandler(_:)(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t a1), void *a7)
{
  aBlock = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v8 = type metadata accessor for UIHostingConfiguration(0, &aBlock);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v12 = *a1;
  v13 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isEscapingClosureAtFileLocation = Strong;
    UIHostingContentView.roundSize(_:)(Strong);
    v17 = v16;
    v19 = v18;
    v20 = isEscapingClosureAtFileLocation + *((*MEMORY[0x1E69E7D40] & *isEscapingClosureAtFileLocation) + 0x768);
    *v20 = v16;
    *(v20 + 8) = v18;
    *(v20 + 16) = 0;
    v21 = static CGSize.invalidValue.getter();
    if (v12 != v23 || v13 != v22)
    {
      UIHostingContentView.roundSize(_:)(v21);
      if (v26 != v17 || v25 != v19)
      {
        UIHostingContentView._configuration.getter(v11);
        v28 = v11[*(v8 + 56) + 98];
        (*(v9 + 8))(v11, v8);
        if (v28 == 1)
        {
          v29 = objc_opt_self();
          v30 = swift_allocObject();
          *(v30 + 16) = isEscapingClosureAtFileLocation;
          v31 = swift_allocObject();
          *(v31 + 16) = partial apply for closure #1 in closure #1 in UIHostingContentView.setupSizeInvalidationHandler(_:);
          *(v31 + 24) = v30;
          v39 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
          v40 = v31;
          aBlock = MEMORY[0x1E69E9820];
          v36 = 1107296256;
          v37 = thunk for @escaping @callee_guaranteed () -> ();
          v38 = &block_descriptor_34;
          v32 = _Block_copy(&aBlock);
          v33 = isEscapingClosureAtFileLocation;

          [v29 performWithoutAnimation_];

          _Block_release(v32);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
        }

        [isEscapingClosureAtFileLocation invalidateIntrinsicContentSize];
      }
    }
  }
}

uint64_t static Animation.uiViewAnimation(curve:duration:)(uint64_t a1, __n128 a2)
{
  result = 0;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return static Animation.easeInOut(duration:)();
      }

      if (a1 == 7)
      {
        return static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
      }
    }

    else if (a1 == 4)
    {
      return static Animation.timingCurve(_:_:_:_:duration:)();
    }

    else
    {
      return static Animation.coreAnimationDefault(duration:)();
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return static Animation.easeIn(duration:)();
        }

        return result;
      }

      return static Animation.easeInOut(duration:)();
    }

    if (a1 == 2)
    {
      return static Animation.easeOut(duration:)();
    }

    else
    {
      return static Animation.linear(duration:)();
    }
  }

  return result;
}

uint64_t AnyAccessibilityAction.init<A>(action:label:image:handler:bridged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v28 = a6;
  v29 = a7;
  v26 = a4;
  v27 = a5;
  v31 = a9;
  v16 = *(a11 - 8);
  v30 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AccessibilityActionStorage(0, a11, a12, v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v26 - v22;
  (*(v16 + 16))(v18, a1, a11, v21);
  v32 = 0uLL;
  v33 = 0;
  v34 = 2;
  AccessibilityActionStorage.init(action:category:label:image:handler:)(v18, &v32, a2, a3, v26, v27, v28, v29, v23, a8, a11, a12);
  (*(v16 + 8))(a1, a11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityActionStorage<A>, v20);
  return AnyAccessibilityAction.init<A>(_:bridged:)(v23, v30, v20, WitnessTable, v31);
}

uint64_t AnyAccessibilityAction.init<A>(_:bridged:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 24) = type metadata accessor for AnyAccessibilityAction.ConcreteBase(0, a3, a4, a4);
  *(a5 + 32) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  result = (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a5 + 40) = a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation4DateVACSLAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation4DateVACSLAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation4DateVACSLAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation4DateVACSLAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation4DateVACSLAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s10Foundation4DateVACSLAAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

_BYTE *assignWithCopy for ResolvedButtonStyle(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v5 = *(v4 + 24);
    v6 = &a1[v5];
    v7 = &a2[v5];
    _s7SwiftUI12ButtonActionOWOhTm_0(&a1[v5], type metadata accessor for ButtonAction);
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v25 = *v7;
      v26 = *(v7 + 1);
      v27 = v7[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v7, v26, v27);
      *v6 = v25;
      *(v6 + 1) = v26;
      v6[16] = v27;
      v28 = *(v7 + 3);
      *(v6 + 3) = v28;
      v29 = *(v7 + 5);
      *(v6 + 4) = *(v7 + 4);
      *(v6 + 5) = v29;
      v30 = v28;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v9 = *v7;
        v10 = *(v7 + 1);
        v11 = *(v7 + 2);
        v12 = *(v7 + 3);
        v13 = v7[34];
        v14 = *(v7 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v7, v10, v11, v12, v14, v13);
        *v6 = v9;
        *(v6 + 1) = v10;
        *(v6 + 2) = v11;
        *(v6 + 3) = v12;
        *(v6 + 16) = v14;
        v6[34] = v13;
        v15 = *(v7 + 5);
        v16 = *(v7 + 6);
        v17 = *(v7 + 7);
        v18 = *(v7 + 8);
        LOBYTE(v12) = v7[74];
        v19 = *(v7 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v15, v16, v17, v18, v19, v12);
        *(v6 + 5) = v15;
        *(v6 + 6) = v16;
        *(v6 + 7) = v17;
        *(v6 + 8) = v18;
        *(v6 + 36) = v19;
        v6[74] = v12;
        v20 = *(type metadata accessor for LinkDestination() + 24);
        v21 = &v6[v20];
        v22 = &v7[v20];
        v23 = type metadata accessor for URL();
        (*(*(v23 - 8) + 16))(v21, v22, v23);
        v24 = type metadata accessor for LinkDestination.Configuration();
        v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_8:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v31 = *(v7 + 1);
      *v6 = *v7;
      *(v6 + 1) = v31;
    }

    goto LABEL_8;
  }

  return a1;
}

uint64_t PlatformViewRepresentableAdaptor.overrideSizeThatFits(_:in:platformView:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v15) = a3 & 1;
  _ProposedSize.init(_:)();
  v11 = v15;
  v12 = v16;
  v13 = v17;
  v14 = v18;
  return (*(*(a7 + 24) + 88))(a1, &v11, a6, *(a7 + 16));
}

uint64_t type metadata completion function for _TaskValueModifier(uint64_t a1)
{
  result = type metadata accessor for TaskPriority();
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

uint64_t static _TaskValueModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _TaskValueModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v9 = type metadata accessor for _TaskValueModifier.InnerModifier(0, a5, a6, v8);
  v11 = type metadata accessor for _TaskValueModifier.Child(0, a5, a6, v10);
  swift_getWitnessTable(protocol conformance descriptor for _TaskValueModifier<A>.Child, v11);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for _TaskValueModifier<A>.InnerModifier, v9);
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _TaskValueModifier<A>.Child(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _TaskValueModifier<A>.Child, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

void protocol witness for static RemovableAttribute.willRemove(attribute:) in conformance PropertiesTransform()
{
  AGGraphGetAttributeInfo();
  v1 = v0;
  swift_unknownObjectWeakAssign();
  v2 = *(v1 + 232);
  *(v1 + 232) = 0;
}

void *initializeWithCopy for _TaskValueModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  v7 = type metadata accessor for TaskPriority();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v11 = *(v8 + 80);
  v12 = (a1 + v11 + 16) & ~v11;
  v13 = (a2 + v11 + 16) & ~v11;

  v9(v12, v13, v7);
  v14 = *(*(a3 + 16) - 8);
  (*(v14 + 16))((*(v10 + 48) + *(v14 + 80) + v12) & ~*(v14 + 80), (*(v10 + 48) + *(v14 + 80) + v13) & ~*(v14 + 80));
  return a1;
}

uint64_t destroy for _TaskValueModifier(uint64_t a1, uint64_t a2)
{

  v4 = type metadata accessor for TaskPriority();
  v5 = *(v4 - 8);
  v6 = v5 + 8;
  v7 = (a1 + *(v5 + 80) + 16) & ~*(v5 + 80);
  (*(v5 + 8))(v7, v4);
  v8 = *(*(a2 + 16) - 8);
  v9 = *(v8 + 8);
  v10 = (v7 + *(v6 + 56) + *(v8 + 80)) & ~*(v8 + 80);

  return v9(v10);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance LazyVGrid<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for LazyVGrid<A>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t static LazyVGrid._makeView(view:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[3];
  v15 = a2[2];
  v16 = v6;
  v17 = a2[4];
  v18 = *(a2 + 20);
  v7 = a2[1];
  v13 = *a2;
  v14 = v7;
  v8 = type metadata accessor for _VariadicView.Tree();
  v12[0] = &protocol witness table for LazyVGridLayout;
  v12[1] = a4;
  swift_getWitnessTable(MEMORY[0x1E697E308], v8, v12);
  v9 = type metadata accessor for ResettableLazyLayoutRoot();
  type metadata accessor for LazyVGrid(255, a3, a4, v10);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  swift_getWitnessTable(MEMORY[0x1E6980408], v9);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t closure #1 in static LazyVGrid._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = type metadata accessor for LazyVGrid(0, a2, a3, a4);
  v6 = type metadata accessor for _VariadicView.Tree();
  v12[0] = &protocol witness table for LazyVGridLayout;
  v12[1] = a3;
  swift_getWitnessTable(MEMORY[0x1E697E308], v6, v12);
  v11 = type metadata accessor for ResettableLazyLayoutRoot();
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, v11, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v12[2];
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance LazyVGridLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type LazyVGridLayout and conformance LazyVGridLayout();

  return MEMORY[0x1EEDDD118](a1, a2, a3, a4, a5, v10);
}

unint64_t instantiation function for generic protocol witness table for LazyVGridLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LazyVGridLayout and conformance LazyVGridLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _DWORD *a5@<X4>, void (*a6)(double)@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = a7;
  v27 = a6;
  v24 = a4;
  v23 = a3;
  v29 = a9;
  v28 = a10;
  v25 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v16 = type metadata accessor for _VariadicView.Tree();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  LODWORD(v19) = *a5;
  v30[2] = a1;
  v30[3] = a2;
  v30[4] = v23;
  v31 = v24 & 1;
  v32 = v19;
  v27(v18);
  _VariadicView.Tree.init(root:content:)();
  v30[0] = v25;
  v30[1] = v28;
  swift_getWitnessTable(MEMORY[0x1E697E308], v16, v30);
  View.resettableLazyLayoutRoot()();
  return (*(v17 + 8))(v20, v16);
}

uint64_t initializeWithCopy for LazyHGrid(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 7);
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = a2 + v7 + 32;

  v6((v7 + 32 + a1) & ~v7, v8 & ~v7, v5);
  return a1;
}

void protocol witness for static LazyLayout.initialCache.getter in conformance LazyVGridLayout()
{
  lazy protocol witness table accessor for type LazyVGridLayout and conformance LazyVGridLayout();

  JUMPOUT(0x18D00B9D0);
}

uint64_t protocol witness for LazyLayout.sizeThatFits(proposedSize:subviews:context:cache:) in conformance LazyHGridLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void))
{
  a10();

  return MEMORY[0x1EEDE59A0](a1);
}

uint64_t getEnumTagSinglePayload for AnyDynamicItem(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<PlainButtonStyleBase>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t, uint64_t), double (*a5)(uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(255, a3, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, a4);
    a5(255);
    v7 = type metadata accessor for ModifiedContent();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, MEMORY[0x1E697FBE0], MEMORY[0x1E697FBD8], MEMORY[0x1E69801E0]);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, lazy protocol witness table accessor for type PlainButtonStyle_Car and conformance PlainButtonStyle_Car, &unk_1EFFC1498, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>);
    }
  }
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type PlainButtonStyle_Car and conformance PlainButtonStyle_Car()
{
  result = lazy protocol witness table cache variable for type PlainButtonStyle_Car and conformance PlainButtonStyle_Car;
  if (!lazy protocol witness table cache variable for type PlainButtonStyle_Car and conformance PlainButtonStyle_Car)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainButtonStyle_Car, &unk_1EFFC1498, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainButtonStyle_Car and conformance PlainButtonStyle_Car);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlainButtonStyleBase and conformance PlainButtonStyleBase()
{
  result = lazy protocol witness table cache variable for type PlainButtonStyleBase and conformance PlainButtonStyleBase;
  if (!lazy protocol witness table cache variable for type PlainButtonStyleBase and conformance PlainButtonStyleBase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainButtonStyleBase, &type metadata for PlainButtonStyleBase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainButtonStyleBase and conformance PlainButtonStyleBase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>>, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, type metadata accessor for Button, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, lazy protocol witness table accessor for type PlainButtonStyle_Car and conformance PlainButtonStyle_Car, &unk_1EFFC1498, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleContainerModifier<PlainButtonStyleBase> and conformance ButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleContainerModifier<PlainButtonStyleBase> and conformance ButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleContainerModifier<PlainButtonStyleBase> and conformance ButtonStyleContainerModifier<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<PlainButtonStyleBase>, lazy protocol witness table accessor for type PlainButtonStyleBase and conformance PlainButtonStyleBase, &type metadata for PlainButtonStyleBase, type metadata accessor for ButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleContainerModifier<PlainButtonStyleBase> and conformance ButtonStyleContainerModifier<A>);
  }

  return result;
}

uint64_t type metadata completion function for Material._GlassVariant(uint64_t a1)
{
  result = type metadata accessor for GlassMaterialProvider.Configuration();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t View.buttonStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PrimitiveButtonStyleContainerModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t one-time initialization function for regular(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = type metadata accessor for GlassMaterialProvider.Configuration();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Material._GlassVariant(0);
  __swift_allocate_value_buffer(v9, a2);
  v10 = __swift_project_value_buffer(v9, a2);
  a3();
  return (*(v6 + 32))(v10, v8, v5);
}

uint64_t outlined init with copy of Material._GlassVariant(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Material._GlassVariant(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for Material._GlassVariant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t destroy for Material._GlassVariant(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider.Configuration();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t Material._GlassVariant.excludingPlatter()@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for GlassMaterialProvider.Options();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  v19 = outlined init with copy of Material._GlassVariant(v2, a2, v16);
  a1(v19);
  GlassMaterialProvider.Configuration.options.getter();
  specialized OptionSet<>.insert(_:)(v18, v14);
  v20 = *(v6 + 8);
  v20(v14, v5);
  v20(v18, v5);
  (*(v6 + 16))(v8, v11, v5);
  GlassMaterialProvider.Configuration.options.setter();
  return (v20)(v11, v5);
}

uint64_t static Material._GlassVariant.regular.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Material._GlassVariant(0);
  v8 = __swift_project_value_buffer(v7, a2);

  return outlined init with copy of Material._GlassVariant(v8, a4, v9);
}

uint64_t type metadata accessor for Material._GlassVariant(uint64_t a1)
{
  result = type metadata singleton initialization cache for Material._GlassVariant;
  if (!type metadata singleton initialization cache for Material._GlassVariant)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Material._glass(_:)(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider.Configuration();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GlassMaterialProvider();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v3 + 16))(v5, a1, v2, v7);
  GlassMaterialProvider.init(configuration:)();
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider and conformance GlassMaterialProvider, MEMORY[0x1E6999DF8], MEMORY[0x1E6999DD0]);
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Resolved and conformance GlassMaterialProvider.Resolved, MEMORY[0x1E6999DF0], MEMORY[0x1E6999DE8]);
  return Material.init<A>(statefulProvider:)();
}

uint64_t partial apply for closure #1 in closure #1 in _TaskValueModifier.InnerModifier.body(content:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in closure #1 in _TaskValueModifier.InnerModifier.body(content:)(a1, v4, v5, v6);
}

uint64_t closure #1 in closure #1 in _TaskValueModifier.InnerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return v7();
}

uint64_t initializeWithCopy for PlainButtonStyleBase(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = v2[2];
  LOBYTE(v2) = *(v2 + 24);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 16) = v6;
  *(a1 + 24) = v2;
  return a1;
}

void PlainButtonStyle.makeBody(configuration:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  outlined destroy of PrimitiveButtonStyleConfiguration(v7);
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<PlainButtonStyleBase>>(0);
  v13 = &a2[*(v12 + 36)];
  *v13 = KeyPath;
  v13[8] = 0;
  *(v13 + 2) = v11;
  v13[24] = 0;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey>, &type metadata for EnvironmentValues.IsFocusedKey, &protocol witness table for EnvironmentValues.IsFocusedKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsFocusedKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t destroy for PlainButtonStyleBase(uint64_t a1)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return outlined consume of Environment<Bool>.Content(v2, v3);
}

uint64_t outlined destroy of PrimitiveButtonStyleConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *assignWithTake for PlainButtonStyleBase(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = a1[2];
  v10 = *(a1 + 24);
  a1[2] = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityRendererEffect>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type HStack<ButtonStyleConfiguration.Label> and conformance HStack<A>();
    v5[1] = MEMORY[0x1E697FC98];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityRendererEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityRendererEffect>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(255, &lazy cache variable for type metadata for HStack<ButtonStyleConfiguration.Label>, &type metadata for ButtonStyleConfiguration.Label, &protocol witness table for ButtonStyleConfiguration.Label, MEMORY[0x1E69817F0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityRendererEffect>);
    }
  }
}

uint64_t PlainButtonStyleBase.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 1);
  v6 = specialized Environment.wrappedValue.getter(a2, a3 & 1);
  v7 = 1.0;
  if (v5)
  {
    v7 = 0.75;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.5;
  }

  result = static VerticalAlignment.center.getter();
  *a4 = result;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t implicit closure #1 in static SwiftUITextAlwaysOnProvider.makeAlwaysOn(inputs:schedule:outputs:)(uint64_t (*a1)(void))
{
  v4 = [objc_allocWithZone(type metadata accessor for TimelineIdentifier()) init];
  a1();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for [UIViewController & _UIBacklightEnvironmentObserver](0, &lazy cache variable for type metadata for [DateSequenceTimeline], type metadata accessor for DateSequenceTimeline);
  lazy protocol witness table accessor for type AlwaysOnTimelinePreferenceWriter and conformance AlwaysOnTimelinePreferenceWriter();
  v2 = Attribute.init<A>(body:value:flags:update:)();

  return v2;
}

unint64_t lazy protocol witness table accessor for type AlwaysOnTimelinePreferenceWriter and conformance AlwaysOnTimelinePreferenceWriter()
{
  result = lazy protocol witness table cache variable for type AlwaysOnTimelinePreferenceWriter and conformance AlwaysOnTimelinePreferenceWriter;
  if (!lazy protocol witness table cache variable for type AlwaysOnTimelinePreferenceWriter and conformance AlwaysOnTimelinePreferenceWriter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlwaysOnTimelinePreferenceWriter, &type metadata for AlwaysOnTimelinePreferenceWriter, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AlwaysOnTimelinePreferenceWriter and conformance AlwaysOnTimelinePreferenceWriter);
  }

  return result;
}

void *initializeWithCopy for _TaskValueModifier.InnerModifier(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v10 = *(v7 + 80);
  v11 = (a2 + v10 + 16) & ~v10;

  v8((a1 + v10 + 16) & ~v10, v11, v6);
  v12 = *(v9 + 48);
  v13 = *(*(a3 + 16) - 8);
  v14 = v13;
  v15 = *(v13 + 80);
  v16 = v12 + v15;
  v35 = ~v15;
  v37 = *(a3 + 16);
  v33 = *(v13 + 16);
  v33((v12 + v15 + ((a1 + v10 + 16) & ~v10)) & ~v15, (v12 + v15 + v11) & ~v15);
  v17 = v16 + ((v10 + 16) & ~v10);
  v18 = a1;
  v19 = *(v13 + 64);
  v20 = v19 + (v15 | 7) + (v17 & ~v15);
  v21 = ((a1 + v20) & ~(v15 | 7));
  v22 = ((a2 + v20) & ~(v15 | 7));
  v23 = v15 + 8;
  v24 = (v15 + 8) & ~v15;
  if ((*(v14 + 84) & 0x80000000) == 0)
  {
    v25 = *v22;
    if (*v22 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    v26 = v25 + 1;
    v27 = ~v15;
    v28 = v37;
    v29 = v24 + v19;
    if (v26)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v21 = *v22;
    v31 = v27;

    (v33)((v21 + v23) & v31, (v22 + v23) & v31, v28);
    goto LABEL_8;
  }

  v28 = v37;
  v30 = (*(v14 + 48))((v22 + v23) & v35);
  v27 = v35;
  v29 = v24 + v19;
  if (!v30)
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v21, v22, v29);
LABEL_8:
  *((v21 + v29 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);

  return v18;
}

uint64_t destroy for _TaskValueModifier.InnerModifier(uint64_t a1, uint64_t a2)
{

  v4 = type metadata accessor for TaskPriority();
  v5 = *(v4 - 8);
  v6 = v5 + 8;
  v7 = *(v5 + 80);
  (*(v5 + 8))((v7 + 16 + a1) & ~v7, v4);
  v8 = *(a2 + 16);
  v9 = *(v6 + 56);
  v10 = *(v8 - 8);
  v11 = *(v10 + 80);
  v12 = v9 + v11;
  v17 = *(v10 + 8);
  v17((v9 + v11 + ((v7 + 16 + a1) & ~v7)) & ~v11, v8);
  v13 = ((((v12 + ((v7 + 16) & ~v7)) & ~v11) + a1 + (v11 | 7) + *(v10 + 64)) & ~(v11 | 7));
  if ((*(v10 + 84) & 0x80000000) != 0)
  {
    v15 = ~v11;
    if ((*(v10 + 48))((v13 + v11 + 8) & ~v11))
    {
      goto LABEL_8;
    }

LABEL_7:

    v17((v13 + v11 + 8) & v15, v8);
    goto LABEL_8;
  }

  v14 = *v13;
  if (*v13 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = ~v11;
  if (v14 == -1)
  {
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t _TaskValueModifier.InnerModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - v9;
  swift_getWitnessTable(protocol conformance descriptor for _TaskValueModifier<A>.InnerModifier, v8);
  v54 = type metadata accessor for _ViewModifier_Content();
  v56 = type metadata accessor for ModifiedContent();
  v11 = *(a2 + 16);
  v63 = *(a2 + 24);
  v12 = v63;
  v58 = type metadata accessor for _ValueActionModifier2();
  v59 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  v60 = v13;
  v61 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v57 = &v46 - v18;
  v19 = *(v5 + 16);
  v64 = v5 + 16;
  v65 = v19;
  v52 = v10;
  v48 = v3;
  v20 = a2;
  (v19)(v10, v3, a2, v17);
  v21 = *(v5 + 80);
  v22 = v5;
  v23 = (v21 + 32) & ~v21;
  v50 = v6;
  v49 = v21;
  v24 = swift_allocObject();
  v47 = v11;
  *(v24 + 16) = v11;
  *(v24 + 24) = v12;
  v25 = *(v22 + 32);
  v25(v24 + v23, v10, v20);
  v51 = v22 + 32;
  v26 = v53;
  v65(v53, v3, v20);
  v27 = swift_allocObject();
  v28 = v63;
  *(v27 + 16) = v11;
  *(v27 + 24) = v28;
  v29 = v20;
  v25(v27 + v23, v26, v20);
  *&v69 = partial apply for closure #1 in _TaskValueModifier.InnerModifier.body(content:);
  *(&v69 + 1) = v24;
  *&v70 = partial apply for closure #2 in _TaskValueModifier.InnerModifier.body(content:);
  *(&v70 + 1) = v27;
  v30 = v54;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v54);
  MEMORY[0x18D00A570](v71, &v69, v30, MEMORY[0x1E69805D8], WitnessTable);

  v69 = v71[0];
  v70 = v71[1];
  v32 = v47;
  v54 = *(type metadata accessor for _TaskValueModifier(0, v47, v28, v33) + 40);
  v34 = v52;
  v65(v52, v48, v29);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = v28;
  v25(v35 + v23, v34, v29);
  v36 = MEMORY[0x1E69805D0];
  v68[0] = WitnessTable;
  v68[1] = MEMORY[0x1E69805D0];
  v37 = MEMORY[0x1E697E858];
  v38 = swift_getWitnessTable(MEMORY[0x1E697E858], v56, v68);
  v39 = v55;
  View.onChange<A>(of:initial:_:)();

  v40 = v70;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v69, *(&v69 + 1));
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v40, *(&v40 + 1));
  v41 = swift_getWitnessTable(MEMORY[0x1E697FDE0], v58);
  v67[0] = v38;
  v67[1] = v41;
  v66[0] = swift_getWitnessTable(v37, v59, v67);
  v66[1] = v36;
  v42 = v60;
  swift_getWitnessTable(v37, v60, v66);
  v43 = v57;
  static ViewBuilder.buildExpression<A>(_:)();
  v44 = *(v61 + 8);
  v44(v39, v42);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v44)(v43, v42);
}

uint64_t partial apply for closure #1 in _TaskValueModifier.InnerModifier.body(content:)(uint64_t (*a1)(void, uint64_t, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1(0, v3, v4) - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a2(v6, v3, v4);
}

uint64_t assignWithCopy for AsOptional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t assignWithCopy for AccessibilityButtonModifier.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v5)
    {
      v6 = *(a2 + 16);
      v7 = *(a2 + 24);
      v8 = *(a2 + 32);
      outlined copy of Environment<AppIntentExecutor?>.Content(v6, v7, v8);
      v9 = *(a1 + 16);
      v10 = *(a1 + 24);
      v11 = *(a1 + 32);
      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      *(a1 + 32) = v8;
      outlined consume of Environment<AppIntentExecutor?>.Content(v9, v10, v11);
      v12 = *(a2 + 40);
      v13 = *(a1 + 40);
      *(a1 + 40) = v12;
      v14 = v12;

      v15 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v15;
    }

    else
    {
      outlined destroy of AppIntentAction(a1 + 16);
      v24 = *(a2 + 32);
      v23 = *(a2 + 48);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v24;
      *(a1 + 48) = v23;
    }
  }

  else if (v5)
  {
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    outlined copy of Environment<AppIntentExecutor?>.Content(v16, v17, v18);
    *(a1 + 16) = v16;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18;
    v19 = *(a2 + 40);
    *(a1 + 40) = v19;
    v20 = *(a2 + 48);
    v21 = *(a2 + 56);
    *(a1 + 48) = v20;
    *(a1 + 56) = v21;
    v22 = v19;
  }

  else
  {
    v25 = *(a2 + 16);
    v26 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v26;
    *(a1 + 16) = v25;
  }

  return a1;
}

uint64_t DragContainerStorageBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 152));

  return swift_deallocClassInstance();
}

void *assignWithCopy for KeyboardShortcutBindingBehavior(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((a1 + *(v7 + 80) + 16) & ~*(v7 + 80), (a2 + *(v7 + 80) + 16) & ~*(v7 + 80));
  return a1;
}

uint64_t assignWithCopy for WrappedButtonStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  *v11 = *v12;
  v13 = (v9 | 7) + 1;
  v14 = (&v11[v13] & ~(v9 | 7));
  v15 = (&v12[v13] & ~(v9 | 7));
  if (v14 != v15)
  {
    v16 = v7;
    v17 = v8;
    v18 = *(v8 + 64);
    v19 = ((v9 + 75) & ~v9) + v18;
    if ((v19 + 1) > 0x30)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 48;
    }

    v21 = v14[v20];
    v22 = v21 - 3;
    if (v21 >= 3)
    {
      if (v20 <= 3)
      {
        v23 = v20;
      }

      else
      {
        v23 = 4;
      }

      if (v23 <= 1)
      {
        if (!v23)
        {
          goto LABEL_19;
        }

        v24 = *v14;
      }

      else if (v23 == 2)
      {
        v24 = *v14;
      }

      else if (v23 == 3)
      {
        v24 = *v14 | (v14[2] << 16);
      }

      else
      {
        v24 = *v14;
      }

      v25 = (v24 | (v22 << (8 * v20))) + 3;
      v21 = v24 + 3;
      if (v20 < 4)
      {
        v21 = v25;
      }
    }

LABEL_19:
    if (v21 == 2)
    {
      outlined consume of Environment<AppIntentExecutor?>.Content(*v14, *(v14 + 1), v14[16]);
    }

    else if (v21 == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v14, *(v14 + 1), *(v14 + 2), *(v14 + 3), *(v14 + 16), v14[34]);
      v26 = (v14 + 42) & 0xFFFFFFFFFFFFFFF8;
      v27 = outlined consume of Environment<OpenURLAction>.Content(*v26, *(v26 + 8), *(v26 + 16), *(v26 + 24), *(v26 + 32), *(v26 + 34));
      (*(v17 + 8))((v9 + v26 + 35) & ~v9, v16, v27);
      goto LABEL_24;
    }

LABEL_24:
    v28 = v15[v20];
    v29 = v28 - 3;
    if (v28 < 3)
    {
      goto LABEL_38;
    }

    if (v20 <= 3)
    {
      v30 = v20;
    }

    else
    {
      v30 = 4;
    }

    if (v30 <= 1)
    {
      if (!v30)
      {
        goto LABEL_38;
      }

      v31 = *v15;
    }

    else if (v30 == 2)
    {
      v31 = *v15;
    }

    else if (v30 == 3)
    {
      v31 = *v15 | (v15[2] << 16);
    }

    else
    {
      v31 = *v15;
    }

    v32 = (v31 | (v29 << (8 * v20))) + 3;
    v28 = v31 + 3;
    if (v20 < 4)
    {
      v28 = v32;
    }

LABEL_38:
    if (v28 == 2)
    {
      v48 = *v15;
      v49 = *(v15 + 1);
      v50 = v15[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v15, v49, v50);
      *v14 = v48;
      *(v14 + 1) = v49;
      v14[16] = v50;
      v51 = *(v15 + 3);
      *(v14 + 3) = v51;
      v52 = *(v15 + 5);
      *(v14 + 4) = *(v15 + 4);
      *(v14 + 5) = v52;
      v14[v20] = 2;
      v53 = v51;
    }

    else
    {
      if (v28 == 1)
      {
        v58 = v16;
        v59 = v20;
        v33 = *v15;
        v34 = *(v15 + 1);
        v60 = a1;
        v35 = *(v15 + 2);
        v36 = *(v15 + 3);
        v56 = v17;
        v57 = v18;
        v37 = v15[34];
        v38 = *(v15 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v15, v34, v35, v36, v38, v37);
        *v14 = v33;
        *(v14 + 1) = v34;
        *(v14 + 2) = v35;
        *(v14 + 3) = v36;
        *(v14 + 16) = v38;
        v14[34] = v37;
        v39 = (v14 + 42) & 0xFFFFFFFFFFFFFFF8;
        v40 = (v15 + 42) & 0xFFFFFFFFFFFFFFF8;
        v41 = *v40;
        v42 = *(v40 + 8);
        v43 = *(v40 + 16);
        v44 = *(v40 + 24);
        v45 = *(v40 + 34);
        v46 = *(v40 + 32);
        v47 = outlined copy of Environment<OpenURLAction>.Content(*v40, v42, v43, v44, v46, v45);
        *v39 = v41;
        *(v39 + 8) = v42;
        *(v39 + 16) = v43;
        *(v39 + 24) = v44;
        a1 = v60;
        *(v39 + 32) = v46;
        *(v39 + 34) = v45;
        (*(v56 + 16))((v9 + 35 + v39) & ~v9, (v9 + 35 + v40) & ~v9, v58, v47);
        *(v57 + ((v9 + 35 + v39) & ~v9)) = *(v57 + ((v9 + 35 + v40) & ~v9));
        v14[v59] = 1;
        return a1;
      }

      v54 = *(v15 + 1);
      *v14 = *v15;
      *(v14 + 1) = v54;
      v14[v20] = 0;
    }
  }

  return a1;
}

uint64_t assignWithCopy for ButtonBehavior(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  v5 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v5;

  v6 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v6;

  v7 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v7;

  v8 = a2[8];
  if (!*(a1 + 64))
  {
    if (v8)
    {
      v10 = a2[9];
      *(a1 + 64) = v8;
      *(a1 + 72) = v10;

      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 64) = *(a2 + 4);
    goto LABEL_8;
  }

  if (!v8)
  {

    goto LABEL_7;
  }

  v9 = a2[9];
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;

LABEL_8:
  *(a1 + 80) = *(a2 + 40);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 88) = a2[11];

  return a1;
}

uint64_t objectdestroyTm()
{
  outlined consume of Environment<Selector?>.Content(*(v0 + 16), *(v0 + 24));
  outlined consume of Environment<Selector?>.Content(*(v0 + 32), *(v0 + 40));
  if (*(v0 + 56))
  {
  }

  if (*(v0 + 112))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  outlined consume of Environment<Bool>.Content(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for ResolvedPlaybackButton(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 20);
  type metadata accessor for ClosedRange<Date>(0);
  v5 = v4;
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 8);
    v7(v3, v6);
    v7(v3 + *(v5 + 36), v6);
  }

  v8 = type metadata accessor for PlaybackButton.Configuration(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v3 + v9, 2, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  v12 = v3 + *(v8 + 40);
  outlined consume of Environment<AppIntentExecutor?>.Content(*v12, *(v12 + 8), *(v12 + 16), outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);

  v13 = v2 + *(v1 + 24);
  outlined consume of Environment<AppIntentExecutor?>.Content(*v13, *(v13 + 8), *(v13 + 16), outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 74));
      v4 = *(type metadata accessor for LinkDestination() + 24);
      v5 = type metadata accessor for URL();
      (*(*(v5 - 8) + 8))(v2 + v4, v5);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = *(type metadata accessor for CountingIndex() - 8);
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for ToolbarSearchFieldStyle.Implementation(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  type metadata accessor for Binding<SearchFieldState>(0);
  v4 = *(v3 + 32);
  v5 = v4 + *(type metadata accessor for SearchFieldState(0) + 36);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = type metadata accessor for SearchFieldConfiguration(0);
  v8 = v2 + *(v7 + 24);
  v9 = *(v8 + 8);
  if (v9 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v8, v9 & 1);
  }

  outlined consume of Text.Storage(*(v2 + *(v7 + 32)), *(v2 + *(v7 + 32) + 8), *(v2 + *(v7 + 32) + 16));

  outlined consume of Environment<Selector?>.Content(*(v2 + v1[5]), *(v2 + v1[5] + 8));
  outlined consume of Environment<Selector?>.Content(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  outlined consume of Environment<Selector?>.Content(*(v2 + v1[8]), *(v2 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{

  v1 = *(v0 + 128);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{
  v1 = *(type metadata accessor for _TaskModifier.InnerModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(type metadata accessor for _TaskModifier(0) + 20);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t objectdestroy_4Tm()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 72) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v12 = v1;
  v11 = *(v0 + 24);
  v13 = v11;
  v14 = v2;
  v3 = type metadata accessor for SharePreview(0, &v12);
  v4 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v5 = v0 + v4;
  if (*(v0 + v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v4));
  }

  if (*(v5 + 56))
  {
    outlined consume of Text.Storage(*(v5 + 32), *(v5 + 40), *(v5 + 48));
  }

  v6 = *(v3 + 56);
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v5 + v6, 1, v1))
  {
    (*(v7 + 8))(v5 + v6, v1);
  }

  v8 = *(v3 + 60);
  v9 = *(v11 - 8);
  if (!(*(v9 + 48))(v5 + v8, 1, v11))
  {
    (*(v9 + 8))(v5 + v8, v11);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{

  if (*(v0 + 88))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  outlined consume of Environment<Bool>.Content(*(v0 + 112), *(v0 + 120));
  outlined consume of Environment<CGFloat?>.Content(*(v0 + 128), *(v0 + 136), *(v0 + 137));
  outlined consume of Environment<Color?>.Content(*(v0 + 144));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for OrnamentModifierLegacy(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = *(type metadata accessor for LegacyBaseModifier.Transform(0, v6, v5, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v10 = type metadata accessor for LegacyBaseModifier(0, v6, v5, v9);
  (*(*(v6 - 8) + 8))(v8 + v10[9], v6);
  if (*(v8 + v10[10]) != 1)
  {
  }

  v11 = (v8 + v10[15]);
  if (v11[3] >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{
  v1 = *(v0 + 48);
  type metadata accessor for Optional();
  v2 = (type metadata accessor for Binding() - 8);
  v10 = *(*v2 + 64);
  v3 = (*(*v2 + 80) + 80) & ~*(*v2 + 80);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();

  v6 = v2[10];
  v7 = (*(v4 + 48))(v0 + v3 + v6, 1, v1);
  v8 = *(v4 + 8);
  if (!v7)
  {
    v8(v0 + v3 + v6, v1);
  }

  v8(v0 + ((v3 + v10 + v5) & ~v5), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*(v1 + 16), *(v1 + 24));
  outlined consume of Environment<CGFloat?>.Content(*(v1 + 32), *(v1 + 40), *(v1 + 41));
  outlined consume of Environment<CGFloat?>.Content(*(v1 + 48), *(v1 + 56), *(v1 + 57));
  outlined consume of Environment<CGFloat?>.Content(*(v1 + 64), *(v1 + 72), *(v1 + 73));
  outlined consume of Environment<Selector?>.Content(*(v1 + 80), *(v1 + 88));
  outlined consume of Environment<Selector?>.Content(*(v1 + 96), *(v1 + 104));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20()
{

  v1 = *(v0 + 128);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AsyncImage(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v4 + v6 + *(v5 + 48);

  v11 = type metadata accessor for LoadingState(0);
  v12 = *(v11 + 20);
  if (!v9(v10 + v12, 1, v7))
  {
    (*(v8 + 8))(v10 + v12, v7);
  }

  outlined consume of AsyncImagePhase(*(v10 + *(v11 + 24)));
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23(void (*a1)(void))
{
  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24()
{
  v1 = *(v0 + 32);
  v18[0] = *(v0 + 16);
  v17 = *&v18[0];
  v18[1] = v1;
  v2 = type metadata accessor for MapAnimator(0, v18);
  v3 = *(*(v2 - 8) + 80);
  v4 = v0 + ((v3 + 48) & ~v3);

  type metadata accessor for Optional();
  v5 = *(type metadata accessor for Binding() + 32);
  v6 = *(v17 - 8);
  if (!(*(v6 + 48))(v4 + v5, 1, v17))
  {
    (*(v6 + 8))(v4 + v5, v17);
  }

  v9 = v4 + *(v2 + 52);
  v10 = type metadata accessor for AdapterState.PlaybackState(0, v17, v7, v8);
  if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 8);
    v14(v9, v13);
    v14(v9 + v10[7], v13);
    v15 = *(v6 + 8);
    v15(v9 + v10[8], v17);
    type metadata accessor for KeyframeTimeline();

    v15(v9 + v10[9], v17);
  }

  type metadata accessor for AdapterState(255, v17, v11, v12);
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_25()
{

  if (*(v0 + 88))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_26()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_27()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v11[0] = v2;
  v11[1] = v1;
  v12 = *(v0 + 48);
  v3 = type metadata accessor for SharePreview(0, v11);
  v4 = (*(*(v3 - 8) + 80) + 80) & ~*(*(v3 - 8) + 80);
  v5 = v0 + v4;
  if (*(v0 + v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v4));
  }

  if (*(v5 + 56))
  {
    outlined consume of Text.Storage(*(v5 + 32), *(v5 + 40), *(v5 + 48));
  }

  v6 = *(v3 + 56);
  v7 = *(v2 - 8);
  if (!(*(v7 + 48))(v5 + v6, 1, v2))
  {
    (*(v7 + 8))(v5 + v6, v2);
  }

  v8 = *(v3 + 60);
  v9 = *(v1 - 8);
  if (!(*(v9 + 48))(v5 + v8, 1, v1))
  {
    (*(v9 + 8))(v5 + v8, v1);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_28(void (*a1)(void, void))
{

  a1(*(v1 + 48), *(v1 + 56));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_29(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  a1(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_30(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_31(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_32()
{
  v2 = *(v0 + 24);
  v11[0] = *(v0 + 16);
  v1 = v11[0];
  v11[1] = v2;
  v3 = *(v0 + 48);
  v12 = *(v0 + 32);
  v10 = v12;
  v13 = v3;
  v4 = (type metadata accessor for NavigationPickerButton(0, v11) - 8);
  v5 = v0 + ((*(*v4 + 80) + 64) & ~*(*v4 + 80));
  (*(*(v1 - 8) + 8))(v5, v1);
  (*(*(v2 - 8) + 8))(v5 + v4[19], v2);
  v6 = v5 + v4[20];
  __swift_destroy_boxed_opaque_existential_1(v6);

  v7 = v5 + v4[21];

  v8 = type metadata accessor for Binding();
  (*(*(v10 - 8) + 8))(v7 + *(v8 + 32), v10);
  return swift_deallocObject();
}

uint64_t objectdestroyTm_33()
{
  swift_unknownObjectRelease();
  outlined consume of Environment<NSManagedObjectContext>.Content(*(v0 + 40), *(v0 + 48));
  outlined consume of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 80);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_34()
{
  v1 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v7 = *&v8[0];
  v8[1] = v1;
  v2 = type metadata accessor for ItemNavigationLinkModifier(0, v8);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80)) + *(v2 + 52);

  type metadata accessor for Optional();
  v4 = *(type metadata accessor for Binding() + 32);
  v5 = *(v7 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v7))
  {
    (*(v5 + 8))(v3 + v4, v7);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for SystemListCell(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  (*(*(v5 - 8) + 8))(v7, v5);

  outlined consume of Environment<Bool>.Content(*(v7 + v6[13]), *(v7 + v6[13] + 8));
  outlined consume of Environment<Bool>.Content(*(v7 + v6[14]), *(v7 + v6[14] + 8));
  outlined consume of Environment<Bool>.Content(*(v7 + v6[15]), *(v7 + v6[15] + 8));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_36()
{
  swift_unknownObjectRelease();
  outlined consume of Environment<NSManagedObjectContext>.Content(*(v0 + 56), *(v0 + 64));
  outlined consume of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_37()
{
  outlined consume of Environment<Selector?>.Content(*(v0 + 16), *(v0 + 24));

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_38()
{
  if (*(v0 + 16))
  {
  }

  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_39()
{
  if (!*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm_0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_48Tm()
{
  outlined consume of Text.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t assignWithCopy for _ButtonGesture(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (v5)
    {
      v7 = *(a2 + 24);
      *(a1 + 16) = v5;
      *(a1 + 24) = v7;

      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;

LABEL_8:
  v8 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v8;
  return a1;
}

uint64_t *assignWithCopy for ButtonRepeatModifier(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  *a1 = *a2;

  a1[1] = v2[1];

  *(a1 + 8) = *(v2 + 8);
  v4 = v2[4];
  a1[3] = v2[3];
  a1[4] = v4;

  v5 = v2[5];
  v6 = a1[5];
  a1[5] = v5;
  v7 = v5;

  *(a1 + 48) = *(v2 + 48);
  a1[7] = v2[7];

  v8 = v2[8];
  LOBYTE(v2) = *(v2 + 72);
  outlined copy of ResolvedTableRowIDs.Storage(v8, v2);
  v9 = a1[8];
  v10 = *(a1 + 72);
  a1[8] = v8;
  *(a1 + 72) = v2;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v9, v10);
  return a1;
}

uint64_t *assignWithCopy for ButtonSpringLoadedInteraction(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 8) = *(a2 + 8);
  v4 = a2[4];
  a1[3] = a2[3];
  a1[4] = v4;

  return a1;
}

uint64_t _TaskValueModifier.Child.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = type metadata accessor for _TaskValueModifier.InnerModifier.TaskState(255, a2, a3, a4);
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v13 = type metadata accessor for _TaskValueModifier(0, a2, a3, v12);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v17 - v14;
  _TaskValueModifier.Child.modifier.getter(type metadata accessor for _TaskValueModifier, &v17 - v14);
  (*(*(v8 - 8) + 56))(v11, 1, 1, v8);
  return _TaskValueModifier.InnerModifier.init(base:taskState:)(v15, v11, a2, a3, type metadata accessor for _TaskValueModifier, type metadata accessor for _TaskValueModifier.InnerModifier, type metadata accessor for _TaskValueModifier.InnerModifier.TaskState, x8_0);
}

uint64_t closure #1 in _TaskValueModifier.InnerModifier.body(content:)(char *a1, uint64_t a2, uint64_t a3)
{
  v44 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _TaskValueModifier.InnerModifier.TaskState(255, a2, a3, v10);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v45 = a3;
  v40 = type metadata accessor for _TaskValueModifier.InnerModifier(0, a2, a3, v19);
  _TaskValueModifier.InnerModifier.taskState.getter(v40, type metadata accessor for _TaskValueModifier.InnerModifier.TaskState);
  v20 = *(v11 - 8);
  v21 = *(v20 + 48);
  v41 = v11;
  LODWORD(v11) = v21(v18, 1, v11);
  v22 = *(v13 + 8);
  v42 = v12;
  result = v22(v18, v12);
  if (v11 == 1)
  {
    v25 = *(a1 + 1);
    v37 = *a1;
    v39 = v22;
    v38 = type metadata accessor for _TaskValueModifier(0, a2, v45, v24);
    v26 = *(v38 + 36);
    v27 = a1;
    v28 = type metadata accessor for TaskPriority();
    v29 = *(v28 - 8);
    (*(v29 + 16))(v9, &v27[v26], v28);
    (*(v29 + 56))(v9, 0, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v37;
    v30[5] = v25;

    v31 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in _TaskValueModifier.InnerModifier.body(content:), v30);
    outlined destroy of _TaskModifier(v9, type metadata accessor for TaskPriority?);
    v33 = v43;
    v32 = v44;
    (*(v44 + 16))(v43, &v27[*(v38 + 40)], a2);
    *v15 = v31;
    v35 = type metadata accessor for _TaskValueModifier.InnerModifier.TaskState(0, a2, v45, v34);
    (*(v32 + 32))(v15 + *(v35 + 36), v33, a2);
    (*(v20 + 56))(v15, 0, 1, v41);
    specialized _TaskValueModifier.InnerModifier.taskState.setter(v15, v40, type metadata accessor for _TaskValueModifier.InnerModifier.TaskState);
    return v39(v15, v42);
  }

  return result;
}

uint64_t specialized static ButtonStyleWriter._makeInputs(modifier:inputs:)(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ButtonStyleInput and conformance ButtonStyleInput();
  PropertyList.subscript.setter();
  result = AnyButtonStyleType.isTopLevelStyle.getter(a2);
  if (result)
  {
    lazy protocol witness table accessor for type EffectiveButtonStyleInput and conformance EffectiveButtonStyleInput();
    return PropertyList.subscript.setter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleInput and conformance ButtonStyleInput()
{
  result = lazy protocol witness table cache variable for type ButtonStyleInput and conformance ButtonStyleInput;
  if (!lazy protocol witness table cache variable for type ButtonStyleInput and conformance ButtonStyleInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleInput, &type metadata for ButtonStyleInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleInput and conformance ButtonStyleInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonStyleInput and conformance ButtonStyleInput;
  if (!lazy protocol witness table cache variable for type ButtonStyleInput and conformance ButtonStyleInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleInput, &type metadata for ButtonStyleInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleInput and conformance ButtonStyleInput);
  }

  return result;
}

uint64_t type metadata completion function for ButtonStyleAdaptorMenuStyle(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BDBD584(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for ButtonStyleContainerModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for ButtonStyleContainerModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  v9 = type metadata accessor for WrappedButtonStyle(255, v4, v5, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyle<A>, v9);
  type metadata accessor for ButtonStyleModifier(255, v9, WitnessTable, v11);
  v12 = type metadata accessor for ModifiedContent();
  type metadata accessor for ButtonStyleWriter(255, v9, WitnessTable, v13);
  v14 = type metadata accessor for ModifiedContent();
  v16 = type metadata accessor for ButtonStyleAdaptorMenuStyle(255, v4, v5, v15);
  v17 = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleAdaptorMenuStyle<A>, v16);
  type metadata accessor for CustomButtonMenuStyleWriter(255, v16, v17, v18);
  v19 = type metadata accessor for ModifiedContent();
  v24[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v24[1] = &protocol witness table for ButtonStyleModifier<A>;
  v20 = MEMORY[0x1E697E858];
  v23[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v12, v24);
  v23[1] = &protocol witness table for ButtonStyleWriter<A>;
  v22[0] = swift_getWitnessTable(v20, v14, v23);
  v22[1] = &protocol witness table for CustomButtonMenuStyleWriter<A>;
  return swift_getWitnessTable(v20, v19, v22);
}

unint64_t lazy protocol witness table accessor for type StaticIf<ButtonRepeatBehavior.HasCustomRepeatBehavior, ButtonRepeatModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ButtonRepeatBehavior.HasCustomRepeatBehavior, ButtonRepeatModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ButtonRepeatBehavior.HasCustomRepeatBehavior, ButtonRepeatModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<ButtonRepeatBehavior.HasCustomRepeatBehavior, ButtonRepeatModifier, EmptyModifier>, &type metadata for ButtonRepeatBehavior.HasCustomRepeatBehavior, &unk_1EFFCD428);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior();
    v5[1] = lazy protocol witness table accessor for type ButtonRepeatModifier and conformance ButtonRepeatModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ButtonRepeatBehavior.HasCustomRepeatBehavior, ButtonRepeatModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ButtonRepeatBehavior.HasCustomRepeatBehavior(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationDisclosureEnvironmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v8);
  v7 = v4;
  v5 = specialized static NavigationDisclosureEnvironmentModifier._makeInputs(modifier:inputs:)(&v7, v8);
  a3(v5, v8);
  return outlined destroy of _ViewListInputs(v8);
}

unint64_t lazy protocol witness table accessor for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior()
{
  result = lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior;
  if (!lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, &type metadata for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior;
  if (!lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, &type metadata for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior;
  if (!lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, &type metadata for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior;
  if (!lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, &type metadata for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior;
  if (!lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, &type metadata for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior()
{
  result = lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior;
  if (!lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonRepeatBehavior.HasCustomRepeatBehavior, &type metadata for ButtonRepeatBehavior.HasCustomRepeatBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior;
  if (!lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonRepeatBehavior.HasCustomRepeatBehavior, &type metadata for ButtonRepeatBehavior.HasCustomRepeatBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior;
  if (!lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonRepeatBehavior.HasCustomRepeatBehavior, &type metadata for ButtonRepeatBehavior.HasCustomRepeatBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior;
  if (!lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonRepeatBehavior.HasCustomRepeatBehavior, &type metadata for ButtonRepeatBehavior.HasCustomRepeatBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior;
  if (!lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonRepeatBehavior.HasCustomRepeatBehavior, &type metadata for ButtonRepeatBehavior.HasCustomRepeatBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonRepeatBehavior.HasCustomRepeatBehavior and conformance ButtonRepeatBehavior.HasCustomRepeatBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<SpringLoadingBehavior.HasCustomSpringLoadedBehavior, ButtonSpringLoadedInteraction, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<SpringLoadingBehavior.HasCustomSpringLoadedBehavior, ButtonSpringLoadedInteraction, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<SpringLoadingBehavior.HasCustomSpringLoadedBehavior, ButtonSpringLoadedInteraction, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<SpringLoadingBehavior.HasCustomSpringLoadedBehavior, ButtonSpringLoadedInteraction, EmptyModifier>, &type metadata for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, &unk_1EFFCD3A8);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior();
    v5[1] = lazy protocol witness table accessor for type ButtonSpringLoadedInteraction and conformance ButtonSpringLoadedInteraction();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<SpringLoadingBehavior.HasCustomSpringLoadedBehavior, ButtonSpringLoadedInteraction, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for ModifierGesture<CallbacksGesture<FailedCallbacks<()>>, _ButtonGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<FailedCallbacks<()>>, _ButtonGesture>)
  {
    type metadata accessor for CallbacksGesture<FailedCallbacks<()>>(255);
    lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type CallbacksGesture<FailedCallbacks<()>> and conformance CallbacksGesture<A>, type metadata accessor for CallbacksGesture<FailedCallbacks<()>>, MEMORY[0x1E697E958]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<FailedCallbacks<()>>, _ButtonGesture>);
    }
  }
}

void type metadata accessor for ButtonActionModifier<<<opaque return type of Gesture.debugLabel(_:)>>.0>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ButtonActionModifier<<<opaque return type of Gesture.debugLabel(_:)>>.0>)
  {
    type metadata accessor for <<opaque return type of Gesture.debugLabel(_:)>>.0(255);
    v3 = v2;
    type metadata accessor for ModifierGesture<CallbacksGesture<FailedCallbacks<()>>, _ButtonGesture>(255);
    lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<FailedCallbacks<()>>, _ButtonGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<FailedCallbacks<()>>, _ButtonGesture>, MEMORY[0x1E697E860]);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v6 = type metadata accessor for ButtonActionModifier(a1, v3, OpaqueTypeConformance2, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ButtonActionModifier<<<opaque return type of Gesture.debugLabel(_:)>>.0>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ButtonInteractionPhase and conformance ButtonInteractionPhase()
{
  result = lazy protocol witness table cache variable for type ButtonInteractionPhase and conformance ButtonInteractionPhase;
  if (!lazy protocol witness table cache variable for type ButtonInteractionPhase and conformance ButtonInteractionPhase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonInteractionPhase, &type metadata for ButtonInteractionPhase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonInteractionPhase and conformance ButtonInteractionPhase);
  }

  return result;
}

uint64_t sub_18BDBDCDC(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior();
  PropertyList.subscript.getter();
  return v3;
}

void type metadata accessor for <<opaque return type of Gesture.debugLabel(_:)>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.debugLabel(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CallbacksGesture<FailedCallbacks<()>>, _ButtonGesture>(255);
    lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<FailedCallbacks<()>>, _ButtonGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<FailedCallbacks<()>>, _ButtonGesture>, MEMORY[0x1E697E860]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.debugLabel(_:)>>.0);
    }
  }
}

void type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _AnimationModifier<ButtonInteractionPhase> and conformance _AnimationModifier<A>()
{
  result = lazy protocol witness table cache variable for type _AnimationModifier<ButtonInteractionPhase> and conformance _AnimationModifier<A>;
  if (!lazy protocol witness table cache variable for type _AnimationModifier<ButtonInteractionPhase> and conformance _AnimationModifier<A>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _AnimationModifier<ButtonInteractionPhase>, lazy protocol witness table accessor for type ButtonInteractionPhase and conformance ButtonInteractionPhase, &type metadata for ButtonInteractionPhase, MEMORY[0x1E697F540]);
    result = swift_getWitnessTable(MEMORY[0x1E697F548], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _AnimationModifier<ButtonInteractionPhase> and conformance _AnimationModifier<A>);
  }

  return result;
}

double static PlatformItemListTransformModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *(*a3)(unint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *a2;
  v29 = *(a2 + 8);
  v30 = *(a2 + 24);
  v35 = *(a2 + 76);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  v34 = *(a2 + 60);
  v28 = v10;
  v31 = v11;
  v32 = v12;
  v33 = v13;
  a3(&v26);
  lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
  PropertyList.subscript.getter();
  LODWORD(v10) = v28;
  if (((*(a5 + 8))(a4, a5) & ~v10) == 0)
  {
    v28 = v12;
    LODWORD(v29) = v13;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      v25 = v9;
      type metadata accessor for PlatformItemListTransformModifier(255, a4, a5, v14);
      type metadata accessor for _GraphValue();
      v15 = _GraphValue.value.getter();
      v28 = v26;
      LODWORD(v29) = LODWORD(v27);
      v16 = PreferencesOutputs.subscript.getter();
      v17 = *MEMORY[0x1E698D3F8];
      if ((v16 & 0x100000000) == 0)
      {
        v17 = v16;
      }

      v28 = __PAIR64__(v17, v15);
      MEMORY[0x1EEE9AC00](v16);
      v23 = type metadata accessor for PlatformItemListTransformModifier.Transform(0, a4, a5, v18);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListTransformModifier<A>.Transform, v23);
      _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v28, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_18, &v22, v23, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
      LOBYTE(v28) = 0;
      PreferencesOutputs.subscript.setter();
    }
  }

  *a6 = v26;
  result = v27;
  a6[1] = v27;
  return result;
}

_WORD *storeEnumTagSinglePayload for ButtonInteractionPhase(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
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

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

double static KeyboardShortcutBindingBehavior._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void *(*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v9 = a2[3];
  v10 = a2[1];
  v32 = a2[2];
  v33 = v9;
  v11 = a2[3];
  v34 = a2[4];
  v12 = a2[1];
  v30 = *a2;
  v31 = v12;
  v28[2] = v32;
  v28[3] = v11;
  v28[4] = a2[4];
  v13 = *a1;
  v35 = *(a2 + 20);
  v29 = *(a2 + 20);
  v28[0] = v30;
  v28[1] = v10;
  a3(&v26);
  lazy protocol witness table accessor for type HasKeyboardShortcut and conformance HasKeyboardShortcut();
  PropertyList.subscript.getter();
  if (LOBYTE(v28[0]) == 1)
  {
    LODWORD(v36) = v13;
    type metadata accessor for KeyboardShortcutBindingBehavior(255, a4, a5, v14);
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    if (*(*(a4 - 8) + 64))
    {
      closure #1 in static KeyboardShortcutBindingBehavior._makeView(modifier:inputs:body:)(1, a4, a5, v15);
    }

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v20 = v30;
    v21 = v31;
    v17 = PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v20, 1, v28);
    v36 = v33;
    v37 = DWORD2(v33);
    MEMORY[0x1EEE9AC00](v17);
    outlined init with copy of _ViewInputs(&v30, &v20);
    outlined init with copy of PreferencesInputs(&v36, &v20);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    *&v20 = &type metadata for TextPlatformItemListFlags;
    *(&v20 + 1) = a4;
    *&v21 = &protocol witness table for TextPlatformItemListFlags;
    *(&v21 + 1) = a5;
    v18 = type metadata accessor for PlatformItemListGenerator(0, &v20);
    (*(*(v18 - 8) + 8))(v28, v18);
  }

  *a6 = v26;
  result = v27;
  a6[1] = v27;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityIgnoreGesturesModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

double static FocusEventProxyModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[1];
  v23 = a2[2];
  v24 = v5;
  v7 = a2[3];
  v25 = a2[4];
  v8 = a2[1];
  v21 = *a2;
  v22 = v8;
  v17 = v23;
  v18 = v7;
  v19 = a2[4];
  v26 = *(a2 + 20);
  v20 = *(a2 + 20);
  v15 = v21;
  v16 = v6;
  a3(&v13, a1, &v15);
  v15 = v21;
  v16 = v22;
  v17 = v23;
  outlined init with copy of _GraphInputs(&v21, v14);
  v9 = specialized static IOSFocusEnabledFlag.evaluate(inputs:)(&v15);
  v27[0] = v15;
  v27[1] = v16;
  v27[2] = v17;
  outlined destroy of _GraphInputs(v27);
  if (v9)
  {
    *&v15 = v24;
    DWORD2(v15) = DWORD2(v24);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      v15 = v13;

      v10 = _ViewOutputs.viewResponders()();

      type metadata accessor for FocusEventProxyResponder(0);
      swift_allocObject();
      v17 = v23;
      v18 = v24;
      v19 = v25;
      v20 = v26;
      v15 = v21;
      v16 = v22;
      outlined init with copy of _ViewInputs(&v21, v14);
      v11 = DefaultLayoutViewResponder.init(inputs:)();
      LODWORD(v15) = v10;
      *(&v15 + 1) = v11;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for [ViewResponder](0);
      lazy protocol witness table accessor for type FocusEventProxyResponderFilter and conformance FocusEventProxyResponderFilter();
      Attribute.init<A>(body:value:flags:update:)();

      LOBYTE(v15) = 0;
      PreferencesOutputs.subscript.setter();
    }
  }

  *a4 = v13;
  result = *(&v13 + 1);
  a4[1] = *(&v13 + 1);
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityCaptureGesturesModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

double static ButtonActionModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v45 = a7;
  v65 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v53 = *(a2 + 24);
  v12 = *(a2 + 48);
  v54 = *(a2 + 40);
  v13 = *(a2 + 56);
  v51 = *(a2 + 60);
  v52 = *(a2 + 76);
  v43 = a5;
  v44 = a6;
  v14 = type metadata accessor for ButtonActionModifier(0, a5, a6, a4);
  v42 = v8;
  LODWORD(v55) = v8;
  v15 = v10;
  v56 = v10;
  v57 = v9;
  v46 = v9;
  v58 = v11;
  v59 = *(a2 + 24);
  v60 = *(a2 + 40);
  v61 = v12;
  v62 = v13;
  v63 = *(a2 + 60);
  v64 = *(a2 + 76);
  swift_getWitnessTable(protocol conformance descriptor for ButtonActionModifier<A>, v14);
  static GestureViewModifier.makeView(modifier:inputs:body:)();
  v56 = v12;
  LODWORD(v57) = v13;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    PropertyList.subscript.getter();
    if (v56)
    {
      v47 = v42;
      type metadata accessor for _GraphValue();
      v16 = _GraphValue.value.getter();
      v56 = v15;
      v57 = v46;
      v58 = v11;
      v59 = v53;
      v60 = v54;
      v17 = _GraphInputs.isEnabled.getter();
      if (one-time initialization token for springLoadingBehavior != -1)
      {
        swift_once();
      }

      v48 = static CachedEnvironment.ID.springLoadingBehavior;
      swift_beginAccess();
      v18 = CachedEnvironment.attribute<A>(id:_:)();
      v19 = swift_endAccess();
      v41[1] = v41;
      MEMORY[0x1EEE9AC00](v19);
      v36 = v43;
      v37 = v44;
      v38 = v16;
      v39 = v17;
      v40 = v18;
      v56 = v12;
      LODWORD(v57) = v13;
      MEMORY[0x1EEE9AC00](v20);
      v34 = partial apply for implicit closure #2 in static ButtonActionModifier._makeView(modifier:inputs:body:);
      WitnessTable = v21;

      PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    }
  }

  v22 = v46;
  v56 = v15;
  v57 = v46;
  v58 = v11;
  v59 = v53;
  v60 = v54;
  v61 = v12;
  v62 = v13;
  v63 = v51;
  v64 = v52;
  v55 = 64;
  if (_ViewInputs.requestsPlatformItem(for:)())
  {
    LODWORD(v56) = v42;
    type metadata accessor for _GraphValue();
    v23 = _GraphValue.value.getter();
    LODWORD(v56) = v23;
    MEMORY[0x1EEE9AC00](v23);
    v34 = type metadata accessor for ButtonActionModifier.PlatformAction(0, v43, v44, v24);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ButtonActionModifier<A>.PlatformAction, v34);
    type metadata accessor for _ContiguousArrayStorage<PlatformItemList.Item>(0, &lazy cache variable for type metadata for Attribute<(())?>, type metadata accessor for (())?, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v56, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_37, &v33, v34, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
    v27 = v55;
    v56 = v15;
    v57 = v22;
    v58 = v11;
    v59 = v53;
    v60 = v54;
    v28 = _GraphInputs.isEnabled.getter();
    if (one-time initialization token for springLoadingBehavior != -1)
    {
      swift_once();
    }

    v48 = static CachedEnvironment.ID.springLoadingBehavior;
    swift_beginAccess();
    v29 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();
    v56 = __PAIR64__(v28, v27);
    LODWORD(v57) = v29;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PlatformButtonActionTransform.SelectionContent and conformance PlatformButtonActionTransform.SelectionContent();
    v30 = Attribute.init<A>(body:value:flags:update:)();
    v56 = v15;
    v57 = v22;
    v58 = v11;
    v59 = v53;
    v60 = v54;
    v61 = v12;
    v62 = v13;
    v63 = v51;
    v64 = v52;
    LODWORD(v55) = v30;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PlatformButtonActionTransform.MakeTransform and conformance PlatformButtonActionTransform.MakeTransform();
    LODWORD(v55) = Attribute.init<A>(body:value:flags:update:)();
    lazy protocol witness table accessor for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform();
    static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
  }

  v31 = v45;
  *v45 = v49;
  result = v50;
  v31[1] = v50;
  return result;
}

uint64_t static ResolvedButtonStyleBody._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  static DynamicPropertyCache.fields(of:)();
  v8 = v27[0];
  v9 = v27[1];
  v10 = v28;
  v11 = v29;
  outlined init with copy of _ViewListInputs(a2, v27);
  v17 = v11;
  v23 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  static ResolvedButtonStyleBody.makeStyleBody(view:inputs:fields:)(v18, &v24, &v23, v27, &v19, a3, a4);
  v12 = v25;
  v16 = v24;
  v13 = v26;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  static View.makeDebuggableViewList(view:inputs:)();
  if ((v13 & 1) == 0)
  {
    v24 = v16;
    v25 = v12;
    v23 = v7;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v22 = v17;
    type metadata accessor for ResolvedButtonStyleBody(0, a3, a4, v14);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  outlined destroy of _ViewListInputs(v27);
  return outlined consume of DynamicPropertyCache.Fields.Layout(v8, v9, v10);
}

uint64_t static ResolvedButtonStyleBody.makeStyleBody(view:inputs:fields:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2_3>, MEMORY[0x1E697E4F8], MEMORY[0x1E697E4F0], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    _StringGuts.grow(_:)(71);
    MEMORY[0x18D00C9B0](0xD000000000000039, 0x800000018CD4C360);
    v14 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v14);

    MEMORY[0x18D00C9B0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for ResolvedButtonStyleBody(255, a6, a7, v9);
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    if (*(*(a6 - 8) + 64))
    {
      closure #1 in static ResolvedButtonStyleBody.makeStyleBody(view:inputs:fields:)(1, a6, a7, v10);
    }

    AGGraphCreateOffsetAttribute2();
    _GraphValue.value.getter();
    _GraphValue.init(_:)();
    v12 = type metadata accessor for ResolvedButtonStyleBody.StyleBodyAccessor(0, a6, a7, v11);
    swift_getWitnessTable(protocol conformance descriptor for ResolvedButtonStyleBody<A>.StyleBodyAccessor, v12);
    return BodyAccessor.makeBody(container:inputs:fields:)();
  }

  return result;
}

void type metadata accessor for HStack<UIKitButtonConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t type metadata completion function for _OnHoverPickerContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for FailedCallbacks<()>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type FailedCallbacks<()> and conformance FailedCallbacks<A>()
{
  result = lazy protocol witness table cache variable for type FailedCallbacks<()> and conformance FailedCallbacks<A>;
  if (!lazy protocol witness table cache variable for type FailedCallbacks<()> and conformance FailedCallbacks<A>)
  {
    type metadata accessor for FailedCallbacks<()>(255, &lazy cache variable for type metadata for FailedCallbacks<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697E758]);
    result = swift_getWitnessTable(MEMORY[0x1E697E760], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FailedCallbacks<()> and conformance FailedCallbacks<A>);
  }

  return result;
}

void type metadata accessor for CallbacksGesture<FailedCallbacks<()>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CallbacksGesture<FailedCallbacks<()>>)
  {
    type metadata accessor for FailedCallbacks<()>(255, &lazy cache variable for type metadata for FailedCallbacks<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697E758]);
    lazy protocol witness table accessor for type FailedCallbacks<()> and conformance FailedCallbacks<A>();
    v1 = type metadata accessor for CallbacksGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CallbacksGesture<FailedCallbacks<()>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ButtonFocusInteractionModifier and conformance ButtonFocusInteractionModifier()
{
  result = lazy protocol witness table cache variable for type ButtonFocusInteractionModifier and conformance ButtonFocusInteractionModifier;
  if (!lazy protocol witness table cache variable for type ButtonFocusInteractionModifier and conformance ButtonFocusInteractionModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonFocusInteractionModifier, &type metadata for ButtonFocusInteractionModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonFocusInteractionModifier and conformance ButtonFocusInteractionModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonRepeatModifier and conformance ButtonRepeatModifier()
{
  result = lazy protocol witness table cache variable for type ButtonRepeatModifier and conformance ButtonRepeatModifier;
  if (!lazy protocol witness table cache variable for type ButtonRepeatModifier and conformance ButtonRepeatModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonRepeatModifier, &unk_1EFFCD428, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonRepeatModifier and conformance ButtonRepeatModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonSpringLoadedInteraction and conformance ButtonSpringLoadedInteraction()
{
  result = lazy protocol witness table cache variable for type ButtonSpringLoadedInteraction and conformance ButtonSpringLoadedInteraction;
  if (!lazy protocol witness table cache variable for type ButtonSpringLoadedInteraction and conformance ButtonSpringLoadedInteraction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonSpringLoadedInteraction, &unk_1EFFCD3A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonSpringLoadedInteraction and conformance ButtonSpringLoadedInteraction);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>>, AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>>, AccessibilityIgnoreGesturesModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>>, AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>>, AccessibilityIgnoreGesturesModifier>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableLinkModifier>, LinkButtonModifierBody>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>>, AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>>, type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>>, AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>>, AccessibilityIgnoreGesturesModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableLinkModifier>, LinkButtonModifierBody>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ButtonFocusInteractionModifier>, lazy protocol witness table accessor for type ButtonFocusInteractionModifier and conformance ButtonFocusInteractionModifier, &type metadata for ButtonFocusInteractionModifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_1(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, MEMORY[0x1E697FBE0], MEMORY[0x1E697FBD8], MEMORY[0x1E69801E0]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>);
    }
  }
}

void type metadata accessor for _ChangedGesture<PhysicalButtonPressGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ChangedGesture<PhysicalButtonPressGesture>)
  {
    lazy protocol witness table accessor for type PhysicalButtonPressGesture and conformance PhysicalButtonPressGesture();
    lazy protocol witness table accessor for type PhysicalButtonEvent.ButtonType and conformance PhysicalButtonEvent.ButtonType();
    v1 = type metadata accessor for _ChangedGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ChangedGesture<PhysicalButtonPressGesture>);
    }
  }
}

void type metadata accessor for _EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>)
  {
    type metadata accessor for _ChangedGesture<PhysicalButtonPressGesture>(255);
    lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type _ChangedGesture<PhysicalButtonPressGesture> and conformance _ChangedGesture<A>, type metadata accessor for _ChangedGesture<PhysicalButtonPressGesture>, MEMORY[0x1E697E8D0]);
    v1 = type metadata accessor for _EndedGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>);
    }
  }
}

void type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>)
  {
    type metadata accessor for _EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>(255);
    lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type _EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>> and conformance _EndedGesture<A>, type metadata accessor for _EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, MEMORY[0x1E697E238]);
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v1 = type metadata accessor for AddGestureModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PhysicalButtonPressGesture and conformance PhysicalButtonPressGesture()
{
  result = lazy protocol witness table cache variable for type PhysicalButtonPressGesture and conformance PhysicalButtonPressGesture;
  if (!lazy protocol witness table cache variable for type PhysicalButtonPressGesture and conformance PhysicalButtonPressGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicalButtonPressGesture, &type metadata for PhysicalButtonPressGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicalButtonPressGesture and conformance PhysicalButtonPressGesture);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicalButtonEvent.ButtonType and conformance PhysicalButtonEvent.ButtonType()
{
  result = lazy protocol witness table cache variable for type PhysicalButtonEvent.ButtonType and conformance PhysicalButtonEvent.ButtonType;
  if (!lazy protocol witness table cache variable for type PhysicalButtonEvent.ButtonType and conformance PhysicalButtonEvent.ButtonType)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697F758], MEMORY[0x1E697F750], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicalButtonEvent.ButtonType and conformance PhysicalButtonEvent.ButtonType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner()
{
  result = lazy protocol witness table cache variable for type DefaultGestureCombiner and conformance DefaultGestureCombiner;
  if (!lazy protocol witness table cache variable for type DefaultGestureCombiner and conformance DefaultGestureCombiner)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FE28], MEMORY[0x1E697FE30], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultGestureCombiner and conformance DefaultGestureCombiner);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, lazy protocol witness table accessor for type _ViewModifier_Content<ButtonFocusInteractionModifier> and conformance _ViewModifier_Content<A>, &protocol witness table for AccessibilityCaptureGesturesModifier);
    v5[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>>, AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>>, AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>>, AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableLinkModifier>, LinkButtonModifierBody>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>>, AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>>, type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>, MEMORY[0x1E697F398]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonFocusInteractionModifier>, AccessibilityCaptureGesturesModifier>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>>, AddGestureModifier<_EndedGesture<_ChangedGesture<PhysicalButtonPressGesture>>, DefaultGestureCombiner>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ButtonFocusInteractionModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonFocusInteractionModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonFocusInteractionModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ButtonFocusInteractionModifier>, lazy protocol witness table accessor for type ButtonFocusInteractionModifier and conformance ButtonFocusInteractionModifier, &type metadata for ButtonFocusInteractionModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonFocusInteractionModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v5[1] = &protocol witness table for _FocusableModifier;
    v5[2] = &protocol witness table for FocusEventProxyModifier;
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _FocusableModifier, FocusEventProxyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t type metadata completion function for WrappedButtonStyleBody(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PrimitiveButtonStyleConfiguration(319);
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18BDC019C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for WrappedButtonStyleBody(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyleBody<A>, v4);
}

uint64_t instantiation function for generic protocol witness table for WrappedButtonStyleBody<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyleBody<A>, a2);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for ResolvedButtonStyleBody(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BDC02FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_1(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, MEMORY[0x1E6980158], MEMORY[0x1E6980150], MEMORY[0x1E69801E0]);
  v4 = type metadata accessor for ResolvedButtonStyleBody(255, v1, v2, v3);
  v6 = type metadata accessor for ButtonBehavior(255, v4, &protocol witness table for ResolvedButtonStyleBody<A>, v5);
  v7 = type metadata accessor for StaticIf();
  v9 = lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ButtonBehavior<A>, v6);
  v11 = WitnessTable;
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v7, &v9);
}

uint64_t sub_18BDC0494(uint64_t *a1)
{
  v1 = a1[1];
  _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_1(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  v2 = type metadata accessor for VStack();
  v3 = type metadata accessor for StaticIf();
  type metadata accessor for ButtonActionModifier<<<opaque return type of Gesture.debugLabel(_:)>>.0>(255);
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _AnimationModifier<ButtonInteractionPhase>, lazy protocol witness table accessor for type ButtonInteractionPhase and conformance ButtonInteractionPhase, &type metadata for ButtonInteractionPhase, MEMORY[0x1E697F540]);
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier>(255);
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<ButtonRepeatBehavior.HasCustomRepeatBehavior, ButtonRepeatModifier, EmptyModifier>, &type metadata for ButtonRepeatBehavior.HasCustomRepeatBehavior, &unk_1EFFCD428);
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<SpringLoadingBehavior.HasCustomSpringLoadedBehavior, ButtonSpringLoadedInteraction, EmptyModifier>, &type metadata for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, &unk_1EFFCD3A8);
  v8 = type metadata accessor for ModifiedContent();
  v16[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
  v16[1] = swift_getWitnessTable(MEMORY[0x1E6981870], v2);
  v16[2] = v1;
  v15[0] = swift_getWitnessTable(MEMORY[0x1E6981CE8], v3, v16);
  v15[1] = &protocol witness table for ButtonActionModifier<A>;
  v9 = MEMORY[0x1E697E858];
  v14[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v15);
  v14[1] = lazy protocol witness table accessor for type _AnimationModifier<ButtonInteractionPhase> and conformance _AnimationModifier<A>();
  v13[0] = swift_getWitnessTable(v9, v5, v14);
  v13[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v12[0] = swift_getWitnessTable(v9, v6, v13);
  v12[1] = lazy protocol witness table accessor for type StaticIf<ButtonRepeatBehavior.HasCustomRepeatBehavior, ButtonRepeatModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v11[0] = swift_getWitnessTable(v9, v7, v12);
  v11[1] = lazy protocol witness table accessor for type StaticIf<SpringLoadingBehavior.HasCustomSpringLoadedBehavior, ButtonSpringLoadedInteraction, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable(v9, v8, v11);
}

unint64_t lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>;
  if (!lazy protocol witness table cache variable for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>)
  {
    type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, MEMORY[0x1E697FBE0], MEMORY[0x1E697FBD8], MEMORY[0x1E69801E0]);
    result = swift_getWitnessTable(MEMORY[0x1E69801E8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  }

  return result;
}

uint64_t type metadata completion function for WrappedButtonStyleBody.ArchiveBody(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PrimitiveButtonStyleConfiguration(319);
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18BDC08F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for WrappedButtonStyleBody.ArchiveBody(255, *a1, a1[1], a4);
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for ModifiedContent();
  v10[0] = swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyleBody<A>.ArchiveBody, v4);
  v10[1] = &protocol witness table for ArchivesInteractiveControlsEffect;
  v7 = MEMORY[0x1E697E858];
  v9[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v10);
  v9[1] = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl and conformance HandGestureShortcutInteractiveControl();
  return swift_getWitnessTable(v7, v6, v9);
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl and conformance HandGestureShortcutInteractiveControl()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl and conformance HandGestureShortcutInteractiveControl;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl and conformance HandGestureShortcutInteractiveControl)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HandGestureShortcutInteractiveControl, &type metadata for HandGestureShortcutInteractiveControl, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl and conformance HandGestureShortcutInteractiveControl);
  }

  return result;
}

uint64_t closure #1 in static ResolvedButtonStyleBody.makeStyleBody(view:inputs:fields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for ResolvedButtonStyleBody(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance WrappedButtonStyleBody<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyleBody<A>, a3);

  return MEMORY[0x1EEDE2378](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ButtonActionModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ButtonActionModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t View.buttonStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ButtonStyleContainerModifier(0, v12, v14, v13);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  (*(v9 + 16))(v11, a1, a3, v17);
  ButtonStyleContainerModifier.init(style:)(v11, a3, a5);
  MEMORY[0x18D00A570](v19, a2, v15, v21);
  return (*(v16 + 8))(v19, v15);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CustomButtonMenuStyleWriter<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CustomButtonMenuStyleWriter<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle()
{
  result = lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle;
  if (!lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderedButtonStyle, &type metadata for BorderedButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle);
  }

  return result;
}

BOOL AnyButtonStyleType.isTopLevelStyle.getter(ValueMetadata *a1)
{
  lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle();
  if (a1 == &type metadata for DefaultButtonStyle)
  {
    return 1;
  }

  lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle();
  if (a1 == &type metadata for BorderlessButtonStyle)
  {
    return 1;
  }

  lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle();
  if (a1 == &type metadata for BorderedButtonStyle)
  {
    return 1;
  }

  lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle();
  if (a1 == &type metadata for BorderedProminentButtonStyle)
  {
    return 1;
  }

  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  if (a1 == &type metadata for PlainButtonStyle)
  {
    return 1;
  }

  lazy protocol witness table accessor for type GlassButtonStyle and conformance GlassButtonStyle();
  if (a1 == &type metadata for GlassButtonStyle)
  {
    return 1;
  }

  lazy protocol witness table accessor for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle();
  return a1 == &type metadata for GlassProminentButtonStyle;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ButtonStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedButtonStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedButtonStyle and conformance ResolvedButtonStyle(&lazy protocol witness table cache variable for type ResolvedButtonStyle and conformance ResolvedButtonStyle, type metadata accessor for ResolvedButtonStyle, protocol conformance descriptor for ResolvedButtonStyle);

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

void type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle;
  if (!lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainButtonStyle, &type metadata for PlainButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle()
{
  result = lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle;
  if (!lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderedProminentButtonStyle, &type metadata for BorderedProminentButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle()
{
  result = lazy protocol witness table cache variable for type DefaultButtonStyle and conformance DefaultButtonStyle;
  if (!lazy protocol witness table cache variable for type DefaultButtonStyle and conformance DefaultButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultButtonStyle, &type metadata for DefaultButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultButtonStyle and conformance DefaultButtonStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ResolvedButtonStyle and conformance ResolvedButtonStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_7(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle()
{
  result = lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle;
  if (!lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>;
  if (!lazy protocol witness table cache variable for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, MEMORY[0x1E6980158], MEMORY[0x1E6980150], MEMORY[0x1E69801E0]);
    result = swift_getWitnessTable(MEMORY[0x1E69801E8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance AccessibilityLargeContentViewerKey(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v2 ^ v4 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance VisualizeViewsEnabled()
{
  if (!isAppleInternalBuild()())
  {
    return 0;
  }

  lazy protocol witness table accessor for type VisualizeViews and conformance VisualizeViews();
  return static UserDefaultKeyedFeature.isEnabled.getter() & 1;
}

unint64_t lazy protocol witness table accessor for type VisualizeViews and conformance VisualizeViews()
{
  result = lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews;
  if (!lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VisualizeViews, &type metadata for VisualizeViews, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews;
  if (!lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VisualizeViews, &type metadata for VisualizeViews, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews;
  if (!lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VisualizeViews, &type metadata for VisualizeViews, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews;
  if (!lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VisualizeViews, &type metadata for VisualizeViews, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews;
  if (!lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VisualizeViews, &type metadata for VisualizeViews, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews;
  if (!lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VisualizeViews, &type metadata for VisualizeViews, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews;
  if (!lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VisualizeViews, &type metadata for VisualizeViews, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews;
  if (!lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VisualizeViews, &type metadata for VisualizeViews, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VisualizeViews and conformance VisualizeViews);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyle(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.La(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleC)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.Label>>, StaticIf<(255);
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_1(255, &lazy cache variable for type metadata for ViewInputFlagModifier<TextSelectionForbidden>, MEMORY[0x1E697FF08], MEMORY[0x1E697FF00], MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleC);
    }
  }
}

void type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.Label>>)
  {
    type metadata accessor for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>(255);
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_1(255, &lazy cache variable for type metadata for KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for KeyboardShortcutBindingBehavior);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.Label>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>(255);
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_1(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<TextInputSuggestionsContext> and conformance StyleContextAcceptsPredicate<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGMaTm_0(255, a2, a3, MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable(MEMORY[0x1E69808F0], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyle(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, type metadata accessor for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type ResolvedButtonStyle and conformance ResolvedButtonStyle(&lazy protocol witness table cache variable for type AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable and conformance AccessibilityButtonModifier<A>.Representable, type metadata accessor for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable, protocol conformance descriptor for AccessibilityButtonModifier<A>.Representable);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleConfiguration.Label, &type metadata for ButtonStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleConfiguration.Label, &type metadata for ButtonStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label);
  }

  return result;
}

void type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t specialized static NavigationDisclosureEnvironmentModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  lazy protocol witness table accessor for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator();
  PropertyList.subscript.getter();
  if (LOBYTE(v21[0]) == 1)
  {
    v3 = a2[2];
    swift_beginAccess();
    v4 = *(v3 + 16);
    LOBYTE(v18) = 2;
    DWORD1(v18) = v4;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type StaticNavigationIndicator and conformance StaticNavigationIndicator();
LABEL_8:
    Attribute.init<A>(body:value:flags:update:)();
    return _GraphInputs.environment.setter();
  }

  v5 = *(a2 + 1);
  v18 = *a2;
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v19 = v5;
  v20 = v8;
  v16 = v6;
  *v17 = v7;
  *&v17[16] = *(a2 + 2);
  outlined init with copy of _GraphInputs(&v18, &v14);
  v9 = specialized static NavigationDisclosureEnvironmentModifier.showConditionally(inputs:)(&v16);
  v21[0] = v16;
  v21[1] = *v17;
  v21[2] = *&v17[16];
  outlined destroy of _GraphInputs(v21);
  if (v9)
  {
    v10 = v19;
    swift_beginAccess();
    LODWORD(v14) = *(v10 + 16);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type SplitViewNavigationIndicator and conformance SplitViewNavigationIndicator();
    goto LABEL_8;
  }

  v11 = a2[2];
  v13 = *a2;
  v14 = *(a2 + 3);
  v15 = a2[5];
  v16 = *a2;
  *v17 = v11;
  *&v17[8] = *(a2 + 3);
  *&v17[24] = a2[5];
  if (static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) != 0 || (v16 = v13, *v17 = v11, *&v17[8] = v14, *&v17[24] = v15, result = static StyleContextAcceptsPredicate.evaluate(inputs:)(), (result))
  {
    swift_beginAccess();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type StaticNavigationIndicator and conformance StaticNavigationIndicator();
    goto LABEL_8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator()
{
  result = lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator;
  if (!lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HideNavigationLinkDisclosureIndicator, &type metadata for HideNavigationLinkDisclosureIndicator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator;
  if (!lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HideNavigationLinkDisclosureIndicator, &type metadata for HideNavigationLinkDisclosureIndicator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator;
  if (!lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HideNavigationLinkDisclosureIndicator, &type metadata for HideNavigationLinkDisclosureIndicator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator;
  if (!lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HideNavigationLinkDisclosureIndicator, &type metadata for HideNavigationLinkDisclosureIndicator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator;
  if (!lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HideNavigationLinkDisclosureIndicator, &type metadata for HideNavigationLinkDisclosureIndicator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HideNavigationLinkDisclosureIndicator and conformance HideNavigationLinkDisclosureIndicator);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance KeyboardShortcutBindingBehavior<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for KeyboardShortcutBindingBehavior<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityLargeContentViewModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLargeContentViewModifier<A, B>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PlatformItemListTransformModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListTransformModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for ResolvedButtonStyle(uint64_t a1)
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>)
  {
    _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E69808E8]);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyle(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, type metadata accessor for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>);
    }
  }
}

void type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for PlaceholderLargeContentView;
    v4[1] = &type metadata for PrimitiveButtonStyleConfiguration.Label;
    v4[2] = &protocol witness table for PlaceholderLargeContentView;
    v4[3] = &protocol witness table for PrimitiveButtonStyleConfiguration.Label;
    v2 = type metadata accessor for AccessibilityLargeContentViewModifier(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, DefinesSearchCompletionModifier, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, DefinesSearchCompletionModifier, EmptyModifier>)
  {
    _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TextInputSuggestionsContext>, MEMORY[0x1E6980818], MEMORY[0x1E69808E8]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, DefinesSearchCompletionModifier, EmptyModifier>);
    }
  }
}

uint64_t sub_18BDC2AA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for PrimitiveButtonStyleContainerModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ButtonStyleModifier(255, v4, v5, v8);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for ButtonStyleWriter(255, v4, v5, v10);
  v11 = type metadata accessor for ModifiedContent();
  type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic>, lazy protocol witness table accessor for type ButtonMenuStyle.Automatic and conformance ButtonMenuStyle.Automatic, &type metadata for ButtonMenuStyle.Automatic, type metadata accessor for CustomButtonMenuStyleWriter);
  v12 = type metadata accessor for ModifiedContent();
  v17[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v17[1] = &protocol witness table for ButtonStyleModifier<A>;
  v13 = MEMORY[0x1E697E858];
  v16[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v17);
  v16[1] = &protocol witness table for ButtonStyleWriter<A>;
  v15[0] = swift_getWitnessTable(v13, v11, v16);
  v15[1] = &protocol witness table for CustomButtonMenuStyleWriter<A>;
  return swift_getWitnessTable(v13, v12, v15);
}

unint64_t lazy protocol witness table accessor for type ButtonMenuStyle.Automatic and conformance ButtonMenuStyle.Automatic()
{
  result = lazy protocol witness table cache variable for type ButtonMenuStyle.Automatic and conformance ButtonMenuStyle.Automatic;
  if (!lazy protocol witness table cache variable for type ButtonMenuStyle.Automatic and conformance ButtonMenuStyle.Automatic)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonMenuStyle.Automatic, &type metadata for ButtonMenuStyle.Automatic, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonMenuStyle.Automatic and conformance ButtonMenuStyle.Automatic);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>()
{
  result = lazy protocol witness table cache variable for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>;
  if (!lazy protocol witness table cache variable for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    result = swift_getWitnessTable(protocol conformance descriptor for Button<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>);
  }

  return result;
}

uint64_t type metadata completion function for PrimitiveButtonStyleConfiguration(uint64_t a1)
{
  result = type metadata accessor for ButtonAction(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ButtonStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18BDC2E98(uint64_t *a1)
{
  v1 = a1[1];
  type metadata accessor for ResolvedButtonStyle(255);
  v2 = type metadata accessor for ModifiedContent();
  v3 = type metadata accessor for StaticIf();
  v4 = lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label();
  v5 = lazy protocol witness table accessor for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature();
  v12[0] = v1;
  v12[1] = &protocol witness table for ScrollEdgeEffectTagModifier;
  v6 = MEMORY[0x1E697E858];
  v11[0] = v5;
  v11[1] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v12);
  v11[2] = v1;
  v10[0] = &type metadata for ButtonStyleConfiguration.Label;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = swift_getWitnessTable(MEMORY[0x1E6981CE8], v3, v11);
  type metadata accessor for StaticSourceWriter(255, v10);
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_4(&lazy protocol witness table cache variable for type ResolvedButtonStyle and conformance ResolvedButtonStyle, type metadata accessor for ResolvedButtonStyle, protocol conformance descriptor for ResolvedButtonStyle);
  v9[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(v6, v7, v9);
}

uint64_t type metadata completion function for KeyboardShortcutBindingBehavior(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<P()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBeha;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBeha)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyle(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<Primi, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.La, type metadata accessor for StaticIf<VisualizeViewsEnabled, ButtonStyleDebugOverlayModifier, EmptyModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonSt();
    v5[1] = lazy protocol witness table accessor for type StaticIf<VisualizeViewsEnabled, ButtonStyleDebugOverlayModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBeha);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_1(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>);
    }
  }
}

void type metadata accessor for StaticIf<VisualizeViewsEnabled, ButtonStyleDebugOverlayModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<VisualizeViewsEnabled, ButtonStyleDebugOverlayModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<VisualizeViewsEnabled, ButtonStyleDebugOverlayModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfigu;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfigu)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.Label>>, StaticIf<(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.Label>> a,  type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.Label>>,  lazy protocol witness table accessor for type ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>,  &protocol witness table for KeyboardShortcutBindingBehavior<A>);
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, DefinesSearchCompletionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfigu);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonSt()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveBu;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveBu)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.La(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration();
    v5[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<TextSelectionForbidden> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveBu);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<TextInputSuggestionsContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18]);
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable> and conformance <> ModifiedContent<A, B>();
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>, &protocol witness table for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, DefinesSearchCompletionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, DefinesSearchCompletionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, DefinesSearchCompletionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, DefinesSearchCompletionModifier, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<TextInputSuggestionsContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<TextInputSuggestionsContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TextInputSuggestionsContext>, MEMORY[0x1E6980818]);
    v5[1] = lazy protocol witness table accessor for type DefinesSearchCompletionModifier and conformance DefinesSearchCompletionModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, DefinesSearchCompletionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<TextSelectionForbidden> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<TextSelectionForbidden> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<TextSelectionForbidden> and conformance ViewInputFlagModifier<A>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_1(255, &lazy cache variable for type metadata for ViewInputFlagModifier<TextSelectionForbidden>, MEMORY[0x1E697FF08], MEMORY[0x1E697FF00], MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<TextSelectionForbidden> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<VisualizeViewsEnabled, ButtonStyleDebugOverlayModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<VisualizeViewsEnabled, ButtonStyleDebugOverlayModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<VisualizeViewsEnabled, ButtonStyleDebugOverlayModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<VisualizeViewsEnabled, ButtonStyleDebugOverlayModifier, EmptyModifier>();
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type VisualizeViewsEnabled and conformance VisualizeViewsEnabled();
    v5[1] = lazy protocol witness table accessor for type ButtonStyleDebugOverlayModifier and conformance ButtonStyleDebugOverlayModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<VisualizeViewsEnabled, ButtonStyleDebugOverlayModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VisualizeViewsEnabled and conformance VisualizeViewsEnabled()
{
  result = lazy protocol witness table cache variable for type VisualizeViewsEnabled and conformance VisualizeViewsEnabled;
  if (!lazy protocol witness table cache variable for type VisualizeViewsEnabled and conformance VisualizeViewsEnabled)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VisualizeViewsEnabled, &type metadata for VisualizeViewsEnabled, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VisualizeViewsEnabled and conformance VisualizeViewsEnabled);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleDebugOverlayModifier and conformance ButtonStyleDebugOverlayModifier()
{
  result = lazy protocol witness table cache variable for type ButtonStyleDebugOverlayModifier and conformance ButtonStyleDebugOverlayModifier;
  if (!lazy protocol witness table cache variable for type ButtonStyleDebugOverlayModifier and conformance ButtonStyleDebugOverlayModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleDebugOverlayModifier, &type metadata for ButtonStyleDebugOverlayModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleDebugOverlayModifier and conformance ButtonStyleDebugOverlayModifier);
  }

  return result;
}

id protocol witness for static UserDefaultKeyedFeature.defaults.getter in conformance VisualizeViews()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v1 = static VisualizeViews.defaults;

  return v1;
}

void one-time initialization function for defaults()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v1 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD55C00);
  [v0 addSuiteNamed_];

  v2 = MEMORY[0x18D00C850](0x6C7070612E6D6F63, 0xEF74694B49552E65);
  [v0 addSuiteNamed_];

  static VisualizeViews.defaults = v0;
}

uint64_t protocol witness for static UserDefaultKeyedFeature.key.getter in conformance VisualizeViews()
{
  v0 = static VisualizeViews.key;

  return v0;
}

uint64_t protocol witness for static UserDefaultKeyedFeature.cachedValue.setter in conformance VisualizeViews(char a1)
{
  result = swift_beginAccess();
  static VisualizeViews.cachedValue = a1;
  return result;
}

void UIImage.resolve(in:)(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = [v2 _hasImageAsset];
  if ([v3 isSymbolImage])
  {
    goto LABEL_7;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [v3 imageAsset];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v3 traitCollection];
  v10 = *a1;
  v11 = a1[1];
  v12 = [v9 _environmentWrapper];
  MEMORY[0x1EEE9AC00](v12);
  v13 = UITraitCollection._modifyingTraits(environmentWrapper:mutations:)();

  v14 = static UICoreTraitCollectionResolutionOptions.forImageAssetsOnly.getter();
  UICoreTraitCollectionResolutionOptions.init(rawValue:)();
  UICoreTraitCollectionResolutionOptions.init(rawValue:)();
  if (UICoreTraitCollectionResolutionOptions.init(rawValue:)() != v14)
  {
    UICoreTraitCollectionResolutionOptions.init(rawValue:)();
  }

  v15 = UITraitCollection.coreResolvedBaseTraitCollection(environment:wrapper:options:)();

  v16 = v15;
  v17 = UITraitCollection.coreResolvedGlassMaterialTraitCollection(environment:wrapper:)();

  v18 = [v8 imageWithTraitCollection_];
  v19 = v18;
  if (!v18)
  {
LABEL_7:
    v19 = v3;
  }

  v20 = v19;
  UIImage._resolve(in:)(a1, a2);
}

id outlined copy of GraphicsImage.Contents?(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined copy of GraphicsImage.Contents(a1, a2);
  }

  return a1;
}

double UIImage._resolve(in:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = [v2 imageOrientation];
  if (v6 >= 8)
  {
    v7 = 0;
  }

  else
  {
    v7 = (0x705030106040200uLL >> (8 * v6));
  }

  v8 = [v2 CGImage];
  if (v8)
  {
    v9 = v8;
    v52 = 0;
  }

  else
  {
    v10 = [v2 ioSurface];
    v9 = v10;
    if (v10)
    {
      v11 = v10;
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    v52 = v12;
  }

  [v2 scale];
  [v2 size];
  v14 = v13;
  v16 = v15;
  v92 = 1;
  if ([v2 isSymbolImage])
  {
    [v2 contentInsets];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    UIImage.baselineOffsetFromBottom.getter();
    Image.LayoutMetrics.init(baselineOffset:capHeight:contentSize:alignmentOrigin:)();
    v51 = 0;
    v47 = v85;
    v49 = v84;
    v43 = v87;
    v45 = v86;
    v14 = v14 - (v20 + v24);
    v16 = v16 - (v18 + v22);
  }

  else
  {
    v47 = 0u;
    v49 = 0u;
    v51 = v92;
    v43 = 0u;
    v45 = 0u;
  }

  MEMORY[0x18D00E030](v7, v14, v16);
  v25 = a1[1];
  v90 = *a1;
  v91 = v25;

  v26 = [v2 renderingMode];
  if (v26 == 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  if (v26 == 2)
  {
    v27 = 0;
  }

  LOBYTE(v84) = v27;
  EnvironmentValues.imageIsTemplate(renderingMode:)();

  outlined copy of GraphicsImage.Contents?(v9, v52);
  UIImage.resizingInfo.getter(&v84);
  LOBYTE(v55) = 1;
  GraphicsImage.init(contents:scale:unrotatedPixelSize:orientation:isTemplate:resizingInfo:antialiased:interpolation:)();
  v82[3] = v79;
  v82[4] = v80;
  v83[0] = v81[0];
  *(v83 + 12) = *(v81 + 12);
  v82[0] = v76;
  v82[1] = v77;
  v82[2] = v78;
  v73 = v79;
  v74 = v80;
  v75[0] = v81[0];
  *(v75 + 12) = *(v81 + 12);
  v70 = v76;
  v71 = v77;
  v72 = v78;
  outlined init with copy of GraphicsImage(v82, &v84);
  ImageResolutionContext.effectiveAllowedDynamicRange(for:)();
  v88 = v80;
  v89[0] = v75[0];
  *(v89 + 12) = *(v81 + 12);
  v84 = v76;
  v85 = v77;
  v86 = v78;
  v87 = v79;
  outlined destroy of GraphicsImage(&v84);
  v70 = *a1;
  if (EnvironmentValues.shouldRedactContent.getter())
  {
    v28 = a1[1];
    *&v70 = *a1;
    *(&v70 + 1) = v28;

    GraphicsImage.redact(in:)();
  }

  v29 = [v2 accessibilityLabel];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v74 = v80;
    v75[0] = v81[0];
    *(v75 + 12) = *(v81 + 12);
    v70 = v76;
    v71 = v77;
    v72 = v78;
    v73 = v79;
    v59 = v80;
    v60[0] = v81[0];
    *(v60 + 12) = *(v81 + 12);
    v55 = v76;
    v56 = v77;
    v57 = v78;
    v58 = v79;
    outlined copy of Text.Storage(v31, v33, 0);
    v34 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v31 = 0;
    v74 = v80;
    v75[0] = v81[0];
    *(v75 + 12) = *(v81 + 12);
    v70 = v76;
    v71 = v77;
    v72 = v78;
    v73 = v79;
    v59 = v80;
    v60[0] = v81[0];
    *(v60 + 12) = *(v81 + 12);
    v55 = v76;
    v56 = v77;
    v57 = v78;
    v58 = v79;
  }

  v35 = v3;
  outlined init with copy of GraphicsImage(&v70, v53);
  Image.Resolved.init(image:decorative:label:basePlatformItemImage:backgroundShape:backgroundCornerRadius:)();
  outlined consume of Text?(v31, v33, 0, v34);
  outlined consume of GraphicsImage.Contents?(v9, v52);
  v53[4] = v80;
  v54[0] = v81[0];
  *(v54 + 12) = *(v81 + 12);
  v53[0] = v76;
  v53[1] = v77;
  v53[2] = v78;
  v53[3] = v79;
  outlined destroy of GraphicsImage(v53);
  if ((v51 & 1) == 0)
  {

    v36 = swift_allocObject();
    v36[1] = v50;
    v36[2] = v48;
    v36[3] = v46;
    v36[4] = v44;
    *(&v68 + 1) = v36;
  }

  v37 = v68;
  a2[8] = v67;
  a2[9] = v37;
  a2[10] = v69[0];
  *(a2 + 171) = *(v69 + 11);
  v38 = v64;
  a2[4] = v63;
  a2[5] = v38;
  v39 = v66;
  a2[6] = v65;
  a2[7] = v39;
  v40 = v60[3];
  *a2 = v60[2];
  a2[1] = v40;
  result = *&v61;
  v42 = v62;
  a2[2] = v61;
  a2[3] = v42;
  return result;
}

id outlined copy of GraphicsImage.Contents(id result, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
    if (a2 != 3 && a2 != 4 && a2 != 5)
    {
      return result;
    }
  }

  if (a2 < 2u)
  {
    return result;
  }

  if (a2 == 2)
  {
  }

  return result;
}

void outlined consume of GraphicsImage.Contents(void *a1, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
    if (a2 != 3 && a2 != 4 && a2 != 5)
    {
      return;
    }

LABEL_8:

    return;
  }

  if (a2 < 2u)
  {

    return;
  }

  if (a2 == 2)
  {
    goto LABEL_8;
  }
}

id UIImage.resizingInfo.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 capInsets];
  v5.f64[1] = v4;
  v7.f64[1] = v6;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v5, *MEMORY[0x1E69DDCE0]), vceqq_f64(v7, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    v16 = 2;
    v9 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 0;
  }

  else
  {
    [v1 capInsets];
    v9 = v8;
    [v1 capInsets];
    v11 = v10;
    [v1 capInsets];
    v13 = v12;
    [v1 capInsets];
    v15 = v14;
    result = [v1 resizingMode];
    v16 = result != 0;
  }

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  return result;
}

void outlined consume of GraphicsImage.Contents?(void *a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    outlined consume of GraphicsImage.Contents(a1, a2);
  }
}

uint64_t Image.init(uiImage:)(uint64_t a1)
{
  type metadata accessor for ImageProviderBox<UIImage>(0);
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void type metadata accessor for ImageProviderBox<UIImage>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ImageProviderBox<UIImage>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    lazy protocol witness table accessor for type UIImage and conformance UIImage(&lazy protocol witness table cache variable for type UIImage and conformance UIImage, protocol conformance descriptor for UIImage);
    v1 = type metadata accessor for ImageProviderBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ImageProviderBox<UIImage>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type UIImage and conformance UIImage(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

id UIColor.init(_:)(uint64_t a1)
{
  lazy protocol witness table accessor for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider();

  AnyColorBox.as<A>(_:)();

  v2 = v20[0];
  if (v20[0])
  {
    v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v4 = UIKitPlatformColorProvider.platformColor.getter();
    v5 = [v3 initWithColor:v4 :v20[0] swiftUI:? :? :?];

LABEL_5:

    goto LABEL_6;
  }

  v6 = Color.cgColor.getter();
  if (v6)
  {
    v2 = v6;
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCGColor_];
    goto LABEL_5;
  }

  type metadata accessor for ObjcColor();

  v8 = ObjcColor.__allocating_init(_:)();
  if (one-time initialization token for dynamicColorCache != -1)
  {
    v19 = v8;
    swift_once();
    v8 = v19;
  }

  v9 = dynamicColorCache;
  v2 = v8;
  v10 = [v9 objectForKey_];
  if (v10)
  {
    v11 = v10;

    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithColor:v11 :? swiftUI:? :? :?];
  }

  else
  {

    v12 = dispatch thunk of AnyColorBox.kitColor.getter();

    if (v12)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClassUnconditional();
      v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithColor:v13 :? swiftUI:? :? :?];
    }

    else
    {
      v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v20[4] = partial apply for closure #1 in UIColor.init(_:);
      v20[5] = a1;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 1107296256;
      v20[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?);
      v20[3] = &block_descriptor_72;
      v16 = _Block_copy(v20);

      v14 = [v15 initWithDynamicProvider_];
      _Block_release(v16);
    }

    v17 = dynamicColorCache;
    v5 = v14;
    v18 = v17;
    [v18 setObject:v5 forKey:v2];
  }

LABEL_6:

  return v5;
}

unint64_t lazy protocol witness table accessor for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider()
{
  result = lazy protocol witness table cache variable for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider;
  if (!lazy protocol witness table cache variable for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980708], MEMORY[0x1E6980710], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitPlatformColorProvider and conformance UIKitPlatformColorProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityLargeContentViewHitTestingTransform and conformance AccessibilityLargeContentViewHitTestingTransform()
{
  result = lazy protocol witness table cache variable for type AccessibilityLargeContentViewHitTestingTransform and conformance AccessibilityLargeContentViewHitTestingTransform;
  if (!lazy protocol witness table cache variable for type AccessibilityLargeContentViewHitTestingTransform and conformance AccessibilityLargeContentViewHitTestingTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLargeContentViewHitTestingTransform, &unk_1EFF8EB78, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLargeContentViewHitTestingTransform and conformance AccessibilityLargeContentViewHitTestingTransform);
  }

  return result;
}

uint64_t specialized static SwiftUIAllowsHitTestingAccessibilityProvider.makeView(modifier:inputs:outputs:)(uint64_t a1, uint64_t a2)
{
  _sypSgMaTm_4(0, &lazy cache variable for type metadata for _GraphValue<_AllowsHitTestingModifier>, MEMORY[0x1E69805C0], MEMORY[0x1E697DDB8]);
  _GraphValue.subscript.getter();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t implicit closure #1 in static SwiftUIAllowsHitTestingAccessibilityProvider._makeAccessibilityHitTestingModifier(modifier:inputs:outputs:)(int a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type AccessibilityLargeContentViewHitTestingTransform and conformance AccessibilityLargeContentViewHitTestingTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t initializeWithCopy for TextFieldState.DeprecatedActions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t destroy for TextFieldState.DeprecatedActions(uint64_t a1)
{
}

unint64_t lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction()
{
  result = lazy protocol witness table cache variable for type AccessibilityVoidAction and conformance AccessibilityVoidAction;
  if (!lazy protocol witness table cache variable for type AccessibilityVoidAction and conformance AccessibilityVoidAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityVoidAction, &type metadata for AccessibilityVoidAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVoidAction and conformance AccessibilityVoidAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVoidAction and conformance AccessibilityVoidAction;
  if (!lazy protocol witness table cache variable for type AccessibilityVoidAction and conformance AccessibilityVoidAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityVoidAction, &type metadata for AccessibilityVoidAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVoidAction and conformance AccessibilityVoidAction);
  }

  return result;
}

uint64_t View.accessibility(addTraits:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = v5;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityTraits(_:), &v4, a2, a3);
}

__n128 partial apply for closure #1 in View.accessibilityTraits(_:)(uint64_t a1)
{
  result = v1[1];
  *(a1 + 40) = result;
  *(a1 + 56) = 0;
  return result;
}

uint64_t View.accessibility<A>(_:_:isEnabled:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  if (a3)
  {
    (*(v13 + 16))(&v17 - v12, a2, v14);
    AccessibilityProperties.init<A>(_:_:)();
  }

  else
  {
    AccessibilityProperties.init()();
  }

  outlined init with copy of AccessibilityProperties(v20, &v18);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v20);
  type metadata accessor for MutableBox<AccessibilityAttachment>();
  v15 = swift_allocObject();
  memcpy((v15 + 16), v19, 0x128uLL);
  v19[0] = v15;
  v19[1] = 0;
  MEMORY[0x18D00A570](v19, a4, &type metadata for AccessibilityAttachmentModifier, a6);
}

unint64_t type metadata accessor for UITraitBridgedEnvironmentKey()
{
  result = lazy cache variable for type metadata for UITraitBridgedEnvironmentKey;
  if (!lazy cache variable for type metadata for UITraitBridgedEnvironmentKey)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITraitBridgedEnvironmentKey);
  }

  return result;
}

id static AccessibilityLargeContentViewModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *a1;
  v10 = a2[3];
  v63 = a2[2];
  v64 = v10;
  v65 = a2[4];
  v66 = *(a2 + 20);
  v11 = a2[1];
  v61 = *a2;
  v62 = v11;
  lazy protocol witness table accessor for type LargeContentViewerBehavior and conformance LargeContentViewerBehavior();
  PropertyList.subscript.getter();
  v12 = *(a7 + 8);
  v13 = v12(a5, a7);
  if (v13)
  {
    if (v13 == 1 && v57 == 3)
    {
      goto LABEL_4;
    }
  }

  else if (v57 != 2)
  {
LABEL_4:
    *&v58[4] = v63;
    *&v58[8] = v64;
    *&v58[12] = v65;
    v58[16] = v66;
    v57 = v61;
    *v58 = v62;
    return (a3)();
  }

  v49 = v63;
  v50 = v64;
  v51 = v65;
  v52 = v66;
  v47 = v61;
  v48 = v62;
  v44[0] = 0;
  outlined init with copy of _ViewInputs(&v61, &v57);
  PropertyList.subscript.setter();
  v53[2] = v49;
  v53[3] = v50;
  v53[4] = v51;
  v54 = v52;
  v53[0] = v47;
  v53[1] = v48;
  *&v58[4] = v49;
  *&v58[8] = v50;
  *&v58[12] = v51;
  v58[16] = v52;
  v57 = v47;
  *v58 = v48;
  v15 = outlined init with copy of _ViewInputs(v53, v44);
  a3(v15, &v57);
  v55[2] = *&v58[4];
  v55[3] = *&v58[8];
  v55[4] = *&v58[12];
  v56 = v58[16];
  v55[0] = v57;
  v55[1] = *v58;
  outlined destroy of _ViewInputs(v55);
  v16 = v12(a5, a7);
  v40 = v63;
  v41 = v64;
  v42 = v65;
  v43 = v66;
  v38 = v61;
  v39 = v62;
  v17 = _ViewInputs.position.getter();
  v37 = v21;
  *&v57 = a5;
  *(&v57 + 1) = a6;
  *v58 = a7;
  *&v58[2] = a8;
  type metadata accessor for AccessibilityLargeContentViewModifier(255, &v57);
  type metadata accessor for _GraphValue();
  v18 = _GraphValue.value.getter();
  v33 = v63;
  v34 = v64;
  v35 = v65;
  v36 = v66;
  v31 = v61;
  v32 = v62;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *&v44[36] = v33;
    *&v44[52] = v34;
    *&v44[68] = v35;
    *&v44[4] = v31;
    *&v44[20] = v32;
    *&v58[3] = *v44;
    *&v58[19] = *&v44[64];
    *&v58[15] = *&v44[48];
    *&v58[11] = *&v44[32];
    v19 = *MEMORY[0x1E698D3F8];
    *&v44[84] = v36;
    LOBYTE(v57) = v16;
    BYTE3(v57) = v46;
    *(&v57 + 1) = v45;
    *(&v57 + 4) = __PAIR64__(v17, DWORD2(v65));
    HIDWORD(v57) = HIDWORD(v64);
    v58[0] = v18;
    v58[1] = v19;
    v58[2] = v19;
    v59 = *&v44[80];
    *&v58[7] = *&v44[16];
    v60 = result;
    MEMORY[0x1EEE9AC00](result);
    outlined init with copy of _ViewInputs(&v61, &v25);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    *&v25 = a5;
    *(&v25 + 1) = a6;
    *&v26 = a7;
    *(&v26 + 1) = a8;
    v20 = type metadata accessor for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(0, &v25);
    (*(*(v20 - 8) + 8))(&v57, v20);

    v27 = v49;
    v28 = v50;
    v29 = v51;
    v30 = v52;
    v25 = v47;
    v26 = v48;
    return outlined destroy of _ViewInputs(&v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LargeContentViewerBehavior and conformance LargeContentViewerBehavior()
{
  result = lazy protocol witness table cache variable for type LargeContentViewerBehavior and conformance LargeContentViewerBehavior;
  if (!lazy protocol witness table cache variable for type LargeContentViewerBehavior and conformance LargeContentViewerBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LargeContentViewerBehavior, &unk_1EFF8E9E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LargeContentViewerBehavior and conformance LargeContentViewerBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LargeContentViewerBehavior and conformance LargeContentViewerBehavior;
  if (!lazy protocol witness table cache variable for type LargeContentViewerBehavior and conformance LargeContentViewerBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LargeContentViewerBehavior, &unk_1EFF8E9E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LargeContentViewerBehavior and conformance LargeContentViewerBehavior);
  }

  return result;
}

id protocol witness for static TextAlwaysOnProvider.makeAlwaysOn(inputs:schedule:outputs:) in conformance SwiftUITextAlwaysOnProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() _alwaysOnSupported];
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);

    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput()
{
  result = lazy protocol witness table cache variable for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput;
  if (!lazy protocol witness table cache variable for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListFlagsInput, &type metadata for PlatformItemListFlagsInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput;
  if (!lazy protocol witness table cache variable for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListFlagsInput, &type metadata for PlatformItemListFlagsInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput);
  }

  return result;
}

uint64_t outlined init with copy of AnyAccessibilityValue?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for AnyAccessibilityValue?(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id makeAccessibilityGeometryTransform(for:kind:inputs:outputs:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v8 = *(a3 + 9);
  v9 = a3[5];
  v33 = *(a3 + 15);
  v32 = *(a3 + 18);
  v30 = *(a3 + 76);
  v31 = a3[8];
  v10 = *a4;
  v11 = *(a4 + 2);
  v12 = a1;
  if ((a1 & 0x100000000) != 0)
  {
    *v43 = *a4;
    *&v43[8] = v11;
    v12 = PreferencesOutputs.subscript.getter();
    if ((v12 & 0x100000000) != 0)
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      *v43 = static AccessibilityNodesKey.defaultValue;
      v12 = Attribute.init<A>(body:value:flags:update:)();
    }
  }

  if ((v8 & 0x20) == 0)
  {
    return v12;
  }

  lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
  PropertyList.subscript.getter();
  if ((v8 & 0x40) == 0 && !v43[0])
  {
    return v12;
  }

  v29 = v9;
  v13 = *MEMORY[0x1E698D3F8];
  if ((a2 & 0x100000000) != 0)
  {
    a2 = v13;
  }

  else
  {
    a2 = a2;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v14 = 0;
    v15 = 255;
  }

  else
  {
    AccessibilityAttachmentToken.init<A>(_:)();
    v14 = *v43;
    v15 = v43[8];
  }

  v28 = v14;
  v27 = v15;
  if (v43[0])
  {
    *v43 = v10;
    *&v43[8] = v11;
    v16 = PreferencesOutputs.subscript.getter();
    result = AGSubgraphGetCurrent();
    if (!result)
    {
      __break(1u);
      goto LABEL_29;
    }

    v18 = result;
    if ((v16 & 0x100000000) != 0)
    {
      v19 = v13;
    }

    else
    {
      v19 = v16;
    }

    v20 = v19 | (a2 << 32);
    v43[0] = 1;
    v25 = 1;
    v26 = v27;
    v24 = v28;
  }

  else
  {
    v20 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v18 = 0;
  }

  if ((v8 & 0x40) == 0)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    goto LABEL_26;
  }

  *v43 = v7;
  *&v43[8] = *(a3 + 1);
  *&v43[20] = *(a3 + 20);
  *&v43[36] = v8;
  v21 = a3[6];
  *&v43[40] = v29;
  *&v43[48] = v21;
  *&v43[56] = *(a3 + 14);
  *&v43[60] = v33;
  *&v43[64] = v31;
  *&v43[72] = v32;
  *&v43[76] = v30;
  v22 = _ViewInputs.position.getter();
  UniqueID.init()();
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v34[0] = 1;
    *&v46 = __PAIR64__(v22, v32);
    *(&v46 + 1) = __PAIR64__(a2, v33);
    *&v47 = v28;
    BYTE8(v47) = v27;
    v48 = v35;
    LOBYTE(v49) = 1;
    *(&v49 + 1) = result;
LABEL_26:
    *&v43[56] = v49;
    *&v43[8] = v46;
    *&v43[24] = v47;
    *&v43[40] = v48;
    *v43 = v12;
    *&v43[4] = _GraphInputs.accessibilityEnabled.getter();
    *&v43[72] = v20;
    *&v43[80] = v24;
    *&v43[88] = v26;
    v44 = 0uLL;
    *&v45 = v25;
    *(&v45 + 1) = v18;
    v39 = *&v43[64];
    v40 = *&v43[80];
    v41 = 0uLL;
    v42 = v45;
    v35 = *v43;
    v36 = *&v43[16];
    v37 = *&v43[32];
    v38 = *&v43[48];
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    outlined init with copy of AnyAccessibilityValue?(&v46, v34, &lazy cache variable for type metadata for AccessibilityGeometryUpdater?, &type metadata for AccessibilityGeometryUpdater);
    lazy protocol witness table accessor for type GeometryTransform and conformance GeometryTransform();
    v23 = v18;
    v12 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of GeometryTransform(v43);
    AGGraphSetFlags();
    outlined destroy of AnyAccessibilityValue?(&v46, &lazy cache variable for type metadata for AccessibilityGeometryUpdater?, &type metadata for AccessibilityGeometryUpdater);

    return v12;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized static SwiftUIContentShapeAccessibilityProvider.makeAccessibility(kind:inputs:outputs:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a3 + 48);
  v8 = *(a3 + 56);
  *&v13[0] = v7;
  DWORD2(v13[0]) = v8;
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (result)
  {
    v10 = a1();
    v11 = *(a3 + 16);
    v13[0] = *a3;
    v13[1] = v11;
    v13[2] = *(a3 + 32);
    v14 = v7;
    v15 = v8;
    v16 = *(a3 + 60);
    v17 = *(a3 + 76);
    v12[0] = *a4;
    v12[1] = a4[1];

    makeAccessibilityGeometryTransform(for:kind:inputs:outputs:)(0x100000000, v10 | ((HIDWORD(v10) & 1) << 32), v13, v12);

    LOBYTE(v13[0]) = 0;
    return PreferencesOutputs.subscript.setter();
  }

  return result;
}

uint64_t specialized static SwiftUIGestureAccessibilityProvider.makeGesture(mask:inputs:outputs:)(uint64_t (*a1)(uint64_t), uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = *(a3 + 28);
  v9 = *(a3 + 9);
  v10 = a3[6];
  v11 = *(a3 + 14);
  v33 = *(a3 + 15);
  v34 = *(a3 + 6);
  v30 = a3[8];
  v31 = a3[5];
  v32 = *(a3 + 18);
  v29 = *(a3 + 76);
  v38 = v10;
  LODWORD(v39) = v11;
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (result)
  {
    lazy protocol witness table accessor for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures();
    result = PropertyList.subscript.getter();
    if ((v38 & 1) == 0)
    {
      v13 = a1(result);
      v14 = *a4;
      v28 = *(a4 + 2);
      v38 = v10;
      LODWORD(v39) = v11;
      v15 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
      if (v15)
      {
        v27 = v14;
        v25 = v15;
        result = AGSubgraphGetCurrent();
        v24 = result;
        if (!result)
        {
          __break(1u);
          return result;
        }

        v16 = *MEMORY[0x1E698D3F8];
        v38 = v10;
        LODWORD(v39) = v11;
        v26 = v16;
        if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
        {
          v38 = v27;
          LODWORD(v39) = v28;
          v17 = PreferencesOutputs.subscript.getter();
          if ((v17 & 0x100000000) == 0)
          {
            v16 = v17;
          }
        }

        v38 = v5;
        v39 = v6;
        v40 = v7;
        *(&v41 + 4) = v8;
        LODWORD(v41) = v34;
        HIDWORD(v41) = v9;
        v42 = v31;
        v43 = v10;
        v44 = v11;
        v45 = v33;
        v46 = v30;
        LODWORD(v47) = v32;
        *(&v47 + 4) = v29;
        v23 = _ViewInputs.position.getter();
        _ViewInputs.scrapeableParentID.getter();
        _GraphInputs.interfaceIdiom.getter();
        swift_beginAccess();
        v18 = *(v7 + 16);
        v38 = v27;
        LODWORD(v39) = v28;
        v19 = PreferencesOutputs.subscript.getter();
        if ((v19 & 0x100000000) != 0)
        {
          v20 = v26;
        }

        else
        {
          v20 = v19;
        }

        type metadata accessor for AccessibilityContainerResolver<AccessibilityChildBehavior.Host>(0, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityGestureModifier>, lazy protocol witness table accessor for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier, &type metadata for AccessibilityGestureModifier, type metadata accessor for AccessibilityViewModifierAccessor);
        v38 = v21;
        v39 = v26;
        v41 = v36;
        LODWORD(v40) = v37;
        v42 = __PAIR64__(v32, v23);
        v43 = __PAIR64__(v18, v33);
        v44 = v34;
        v45 = v16;
        LODWORD(v46) = v20;
        *&v47 = v24;
        *(&v47 + 1) = v13;
        v48 = &type metadata for AccessibilityGestureAttachment;
        v49 = &protocol witness table for AccessibilityGestureAttachment;
        v57 = 0;
        v56 = 0u;
        v55 = 0u;
        v54 = 0u;
        v53 = 0u;
        v52 = 0u;
        v51 = 0u;
        v50 = 0u;
        v58 = (v9 & 0x20) == 0;
        v59 = 0;
        swift_unknownObjectWeakInit();
        v60 = 0;
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type PropertiesTransform and conformance PropertiesTransform();
        v22 = v24;
        Attribute.init<A>(body:value:flags:update:)();
        outlined destroy of PropertiesTransform(&v38);
        AGGraphSetFlags();

        v15 = v25;
      }

      LOBYTE(v38) = (v15 & 1) == 0;
      return PreferencesOutputs.subscript.setter();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures()
{
  result = lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures;
  if (!lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityIgnoreGestures, &type metadata for AccessibilityIgnoreGestures, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures;
  if (!lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityIgnoreGestures, &type metadata for AccessibilityIgnoreGestures, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures;
  if (!lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityIgnoreGestures, &type metadata for AccessibilityIgnoreGestures, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures;
  if (!lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityIgnoreGestures, &type metadata for AccessibilityIgnoreGestures, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures;
  if (!lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityIgnoreGestures, &type metadata for AccessibilityIgnoreGestures, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures);
  }

  return result;
}

uint64_t partial apply for closure #1 in ModifiedContent<>.accessibilityTraits(_:)(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ((*(result + 56) & 1) == 0)
  {
    v4 = *(result + 48);
    v5 = *(result + 40) & ~v3;
    v6 = v3 | ~v4;
    v3 |= v4;
    v2 = v6 & v2 | v5;
  }

  *(result + 40) = v2;
  *(result + 48) = v3;
  *(result + 56) = 0;
  return result;
}

uint64_t specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int a1@<W0>, uint64_t *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v118 = *MEMORY[0x1E69E9840];
  v79 = a2[6];
  v80 = *(a2 + 14);
  *&v115 = a2[6];
  DWORD2(v115) = *(a2 + 14);
  outlined init with copy of PreferencesInputs(&v79, &v112);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v68 = a1;
    outlined destroy of PreferencesInputs(&v79);
    v7 = *(a2 + 3);
    *v117 = *(a2 + 2);
    *&v117[16] = v7;
    *&v117[32] = *(a2 + 4);
    *&v117[48] = *(a2 + 20);
    v8 = *(a2 + 1);
    v115 = *a2;
    v116 = v8;
    outlined init with copy of _ViewInputs(a2, &v112);
    _s7SwiftUI25AccessibilityViewModifierPAAE26configureInputsForGeometryyyAA01_dG0VzFZAA0c5ImageE0V_Tt0g5Tm(&v115);
    v62 = a2[1];
    v65 = *a2;
    v66 = a2[2];
    v75 = a2[3];
    v9 = *(a2 + 9);
    LODWORD(v76) = *(a2 + 8);
    v59 = a2[5];
    if ((v9 & 0x10) != 0)
    {
      v10 = *(a2 + 3);
      *v114 = *(a2 + 2);
      *&v114[16] = v10;
      *&v114[32] = *(a2 + 4);
      *&v114[48] = *(a2 + 20);
      v11 = *(a2 + 1);
      v112 = *a2;
      v113 = v11;
      _ViewInputs.animatedPosition()();
      _ViewInputs.containerPosition.setter();
    }

    *v114 = *v117;
    *&v114[16] = *&v117[16];
    *&v114[32] = *&v117[32];
    *&v114[48] = *&v117[48];
    v112 = v115;
    v113 = v116;
    if ((v117[4] & 0x20) != 0)
    {
      v12 = *&v117[4] | 0x40;
    }

    else
    {
      v12 = *&v117[4] & 0xFFFFFF9F;
    }

    v103 = v115;
    v104 = v116;
    *&v105[0] = __PAIR64__(v12, *v117);
    *(&v105[2] + 4) = *&v117[36];
    *(v105 + 8) = *&v117[8];
    *(&v105[1] + 8) = *&v117[24];
    v97 = v105[0];
    v98 = v105[1];
    v99 = v105[2];
    v100 = *&v117[48];
    v95 = v115;
    v96 = v116;
    outlined init with copy of _ViewInputs(&v112, &v109);
    v13 = outlined init with copy of _ViewInputs(&v103, &v109);
    a3(&v101, v13, &v95);
    v108[0] = v97;
    v108[1] = v98;
    v108[2] = v99;
    LODWORD(v108[3]) = v100;
    v106 = v95;
    v107 = v96;
    outlined destroy of _ViewInputs(&v106);
    v109 = v115;
    v110 = v116;
    *&v111[0] = __PAIR64__(v12, *v117);
    *(v111 + 8) = *&v117[8];
    *(&v111[1] + 8) = *&v117[24];
    *(&v111[2] + 4) = *&v117[36];
    outlined destroy of _ViewInputs(&v109);
    if ((v9 & 0x10) != 0)
    {
      *&v95 = v79;
      DWORD2(v95) = v80;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        v14 = v101;
        *&v95 = v101;
        v71 = v102;
        DWORD2(v95) = v102;
        v15 = PreferencesOutputs.subscript.getter();
        v16 = *MEMORY[0x1E698D3F8];
        v58 = *MEMORY[0x1E698D3F8];
        if ((v15 & 0x100000000) == 0)
        {
          v16 = v15;
        }

        v73 = v16;
      }

      else
      {
        v14 = v101;
        v71 = v102;
        v58 = *MEMORY[0x1E698D3F8];
        v73 = *MEMORY[0x1E698D3F8];
      }

      _DisplayList_Identity.init()();
      v57 = v95;
      v41 = *(a2 + 3);
      v97 = *(a2 + 2);
      v98 = v41;
      v99 = *(a2 + 4);
      v100 = *(a2 + 20);
      v42 = *(a2 + 1);
      v95 = *a2;
      v96 = v42;
      *v81 = v57;
      _ViewInputs.pushIdentity(_:)();
      PropertyList.subscript.getter();
      *&v89 = v65;
      *(&v89 + 1) = v62;
      *&v90 = v66;
      *(&v90 + 1) = v75;
      v91 = v76;
      v92 = v9;
      v93 = v59;
      _GraphInputs.interfaceIdiom.getter();
      PropertyList.subscript.getter();
      v43 = *(a2 + 3);
      v97 = *(a2 + 2);
      v98 = v43;
      v99 = *(a2 + 4);
      v100 = *(a2 + 20);
      v44 = *(a2 + 1);
      v95 = *a2;
      v96 = v44;
      swift_beginAccess();
      v64 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v45 = *(a2 + 3);
      v97 = *(a2 + 2);
      v98 = v45;
      v99 = *(a2 + 4);
      v100 = *(a2 + 20);
      v46 = *(a2 + 1);
      v95 = *a2;
      v96 = v46;
      v61 = _ViewInputs.animatedPosition()();
      v47 = *(a2 + 3);
      v97 = *(a2 + 2);
      v98 = v47;
      v99 = *(a2 + 4);
      v100 = *(a2 + 20);
      v48 = *(a2 + 1);
      v95 = *a2;
      v96 = v48;
      v49 = _ViewInputs.containerPosition.getter();
      v50 = *(v66 + 16);
      *v81 = v14;
      *&v81[8] = v71;
      v51 = PreferencesOutputs.subscript.getter();
      v52 = v14;
      if ((v51 & 0x100000000) != 0)
      {
        v53 = v58;
      }

      else
      {
        v53 = v51;
      }

      *v81 = v52;
      *&v81[8] = v71;
      v54 = PreferencesOutputs.subscript.getter();
      if ((v54 & 0x100000000) != 0)
      {
        v55 = v58;
      }

      else
      {
        v55 = v54;
      }

      type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>, lazy protocol witness table accessor for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier, &type metadata for AccessibilityContainerModifier, type metadata accessor for AccessibilityViewModifierAccessor);
      *v81 = v57;
      v81[4] = v77 & 1;
      *&v81[8] = v94;
      v81[24] = v74;
      *&v81[32] = v56;
      *&v81[40] = v68;
      v82 = v64;
      v83 = v61;
      v84 = v49;
      v85 = v50;
      v86 = v53;
      v87 = v73;
      v88 = v55;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type DisplayListTransform and conformance DisplayListTransform();
      Attribute.init<A>(body:value:flags:update:)();
      v81[0] = 0;
      PreferencesOutputs.subscript.setter();
    }

    _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c9ContainerE0V_Tt5B5(v68, a2, v101, v102, 1, 0, 0, 0, 0, 0);
    LOBYTE(v95) = 0;
    PreferencesOutputs.subscript.setter();
    v97 = *v117;
    v98 = *&v117[16];
    v99 = *&v117[32];
    v100 = *&v117[48];
    v95 = v115;
    v96 = v116;
    result = outlined destroy of _ViewInputs(&v95);
    *a4 = v101;
    v40 = v102;
  }

  else
  {
    *&v115 = v79;
    DWORD2(v115) = v80;
    v70 = a4;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 && (*&v115 = v79, DWORD2(v115) = v80, (PreferencesInputs.contains<A>(_:includeHostPreferences:)()))
    {
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      v17 = (v115 >> 4) & 1;
    }

    else
    {
      v17 = 0;
    }

    v19 = *a2;
    v18 = a2[1];
    v67 = a2[2];
    v77 = a2[3];
    v20 = *(a2 + 9);
    v78 = *(a2 + 8);
    v69 = v20;
    v21 = (a2 + 5);
    v60 = a2[5];
    v63 = v18;
    v22 = *(a2 + 3);
    v23 = *(a2 + 4);
    *v117 = *(a2 + 2);
    *&v117[16] = v22;
    *&v117[32] = v23;
    *&v117[48] = *(a2 + 20);
    v24 = *(a2 + 1);
    v115 = *a2;
    v116 = v24;
    outlined init with copy of _ViewInputs(a2, &v112);
    if (v17)
    {
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      LODWORD(v112) = v112 & 0xFFFFFFEF;
      PropertyList.subscript.setter();
    }

    v25 = *(a2 + 1);
    v89 = *a2;
    v90 = v25;
    v91 = *(a2 + 8);
    v26 = *(a2 + 7);
    v27 = *v21;
    *v81 = *v21;
    *&v81[16] = v26;
    *&v81[28] = *(a2 + 68);
    if ((v69 & 0x20) != 0)
    {
      v28 = v69 | 0x40;
    }

    else
    {
      v28 = v69 & 0xFFFFFF9F;
    }

    v29 = *(a2 + 1);
    v106 = *a2;
    v107 = v29;
    LODWORD(v108[0]) = *(a2 + 8);
    DWORD1(v108[0]) = v28;
    *(&v108[2] + 4) = *(a2 + 68);
    *(v108 + 8) = v27;
    *(&v108[1] + 8) = *(a2 + 7);
    v105[0] = v108[0];
    v105[1] = v108[1];
    v105[2] = v108[2];
    LODWORD(v105[3]) = v108[3];
    v103 = v106;
    v104 = v29;
    outlined init with copy of _ViewInputs(a2, &v112);
    v30 = outlined init with copy of _ViewInputs(&v106, &v112);
    a3(&v75, v30, &v103);
    v111[0] = v105[0];
    v111[1] = v105[1];
    v111[2] = v105[2];
    LODWORD(v111[3]) = v105[3];
    v109 = v103;
    v110 = v104;
    outlined destroy of _ViewInputs(&v109);
    v112 = v89;
    v113 = v90;
    *v114 = v91;
    *&v114[4] = v28;
    *&v114[8] = *v81;
    *&v114[24] = *&v81[16];
    *&v114[36] = *&v81[28];
    outlined destroy of _ViewInputs(&v112);
    if (v17)
    {
      *&v103 = v75;
      DWORD2(v103) = v76;
      PreferencesOutputs.subscript.getter();
      v31 = swift_beginAccess();
      MEMORY[0x1EEE9AC00](v31);
      *&v103 = v79;
      DWORD2(v103) = v80;
      MEMORY[0x1EEE9AC00](v32);
      PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    }

    else
    {
      outlined destroy of PreferencesInputs(&v79);
    }

    a4 = v70;
    v33 = *(a2 + 3);
    v105[0] = *(a2 + 2);
    v105[1] = v33;
    v105[2] = *(a2 + 4);
    LODWORD(v105[3]) = *(a2 + 20);
    v34 = *(a2 + 1);
    v103 = *a2;
    v104 = v34;
    *&v95 = 1024;
    if (_ViewInputs.requestsPlatformItem(for:)())
    {
      *&v103 = v75;
      DWORD2(v103) = v76;
      PreferencesOutputs.subscript.getter();
      swift_beginAccess();
      v35 = *(v67 + 16);
      type metadata accessor for PropertyList.Tracker();
      swift_allocObject();
      v36 = PropertyList.Tracker.init()();
      LODWORD(v103) = v35;
      *(&v103 + 1) = v36;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityEnv and conformance PlatformAccessibilityEnv();
      Attribute.init<A>(body:value:flags:update:)();

      *&v103 = v19;
      *(&v103 + 1) = v63;
      *&v104 = v67;
      *(&v104 + 1) = v77;
      *&v105[0] = __PAIR64__(v69, v78);
      *(&v105[0] + 1) = v60;
      _GraphInputs.platformSystem.getter();
      v37 = *(a2 + 3);
      v97 = *(a2 + 2);
      v98 = v37;
      v99 = *(a2 + 4);
      v100 = *(a2 + 20);
      v38 = *(a2 + 1);
      v95 = *a2;
      v96 = v38;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityTransform and conformance PlatformAccessibilityTransform();
      Attribute.init<A>(body:value:flags:update:)();
      lazy protocol witness table accessor for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform();
      static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
    }

    v105[0] = *v117;
    v105[1] = *&v117[16];
    v105[2] = *&v117[32];
    LODWORD(v105[3]) = *&v117[48];
    v103 = v115;
    v104 = v116;
    result = outlined destroy of _ViewInputs(&v103);
    *v70 = v75;
    v40 = v76;
  }

  a4[1] = v40;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityContainerModifier@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
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
  return specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t ModifiedContent<>.update(isEnabled:body:)@<X0>(char a1@<W0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v8 = *(v4 + *(a3 + 36));
    swift_beginAccess();

    a2(v8 + 16);
    swift_endAccess();
  }

  return (*(*(a3 - 8) + 16))(a4, v4, a3);
}

uint64_t outlined copy of Transaction?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, Text>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, Text>>)
  {
    type metadata accessor for AccessibilityStaticTextModifier<StyledTextContentView>.Configuration(255, &lazy cache variable for type metadata for ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier>, MEMORY[0x1E697FD00], &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, Text>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<StyledTextContentView, AccessibilityAttachmentModifier>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, Text>>);
    }
  }
}

void type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, Text>()
{
  if (!lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, Text>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for PlaceholderLargeContentView;
    v4[1] = MEMORY[0x1E6981148];
    v4[2] = &protocol witness table for PlaceholderLargeContentView;
    v4[3] = MEMORY[0x1E6981138];
    v2 = type metadata accessor for AccessibilityLargeContentViewModifier(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, Text>);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _CoordinateSpaceModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _CoordinateSpaceModifier<A>, a5);

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _CoordinateSpaceModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _CoordinateSpaceModifier<A>, a5);

  return MEMORY[0x1EEDE0CC0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static _CoordinateSpaceModifier._makeViewInputs(modifier:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  type metadata accessor for _CoordinateSpaceModifier(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  v7 = _GraphValue.value.getter();
  v8 = *(a2 + 48);
  v9 = *(a2 + 16);
  v34 = *(a2 + 32);
  v35 = v8;
  v36 = *(a2 + 64);
  v10 = *(a2 + 16);
  v33[0] = *a2;
  v33[1] = v10;
  v12 = *(a2 + 48);
  v11 = *(a2 + 64);
  v47 = v34;
  v48 = v12;
  v49 = v11;
  v13 = *(a2 + 60);
  v37 = *(a2 + 80);
  v50 = *(a2 + 80);
  v45 = v33[0];
  v46 = v9;
  outlined init with copy of _ViewInputs(v33, v40);
  v14 = _ViewInputs.animatedPosition()();
  v38[2] = v47;
  v38[3] = v48;
  v38[4] = v49;
  v39 = v50;
  v38[0] = v45;
  v38[1] = v46;
  outlined destroy of _ViewInputs(v38);
  v15 = *(a2 + 48);
  v16 = *(a2 + 16);
  v41 = *(a2 + 32);
  v42 = v15;
  v17 = *(a2 + 48);
  v43 = *(a2 + 64);
  v18 = *(a2 + 16);
  v40[0] = *a2;
  v40[1] = v18;
  v29 = v41;
  v30 = v17;
  v31 = *(a2 + 64);
  v44 = *(a2 + 80);
  v32 = *(a2 + 80);
  v27 = v40[0];
  v28 = v16;
  outlined init with copy of _ViewInputs(v40, &v45);
  v19 = _ViewInputs.animatedCGSize()();
  v47 = v29;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  v45 = v27;
  v46 = v28;
  outlined destroy of _ViewInputs(&v45);
  *&v27 = __PAIR64__(v13, v7);
  *(&v27 + 1) = __PAIR64__(v19, v14);
  v25 = type metadata accessor for CoordinateSpaceTransform(0, a3, a4, v20);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CoordinateSpaceTransform<A>, v25);
  type metadata accessor for Attribute<ViewTransform>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v27, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_17, v24, v25, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  return _ViewInputs.transform.setter();
}

void type metadata accessor for Attribute<ViewTransform>()
{
  if (!lazy cache variable for type metadata for Attribute<ViewTransform>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<ViewTransform>);
    }
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance CoordinateSpaceTransform<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CoordinateSpaceTransform<A>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t type metadata completion function for DragGesture.Value(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ModifiedContent<>.update<A>(_:combining:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (a3)
  {
    v12 = *(v8 + *(a4 + 36));
    swift_beginAccess();
    v16 = *(a4 + 16);

    closure #1 in ModifiedContent<>.update<A>(_:combining:isEnabled:)(v12 + 16, a2, a1, v16, a5, a6, a7);
    swift_endAccess();
  }

  return (*(*(a4 - 8) + 16))(a8, v8, a4, a4, a5, a6, a7);
}

uint64_t closure #1 in ModifiedContent<>.update<A>(_:combining:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a2;
  v20 = a7;
  v18[0] = a3;
  v18[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  v15 = *(v8 + 16);
  v15(v18 - v13, v19, AssociatedTypeWitness, v12);
  AccessibilityProperties.subscript.getter();
  (*(v20 + 8))(v10, AssociatedTypeWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  (v15)(v10, v14, AssociatedTypeWitness);
  AccessibilityProperties.subscript.setter();
  return (v16)(v14, AssociatedTypeWitness);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedButtonStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedButtonStyle and conformance ResolvedButtonStyle(&lazy protocol witness table cache variable for type ResolvedButtonStyle and conformance ResolvedButtonStyle, type metadata accessor for ResolvedButtonStyle, protocol conformance descriptor for ResolvedButtonStyle);

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance CustomButtonMenuStyleWriter<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CustomButtonMenuStyleWriter<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ButtonStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t specialized static ViewModifier<>._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, specialized static NavigationDisclosureEnvironmentModifier._makeInputs(modifier:inputs:));
}

{
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, specialized static ResolvedScrollBehaviorModifier._makeInputs(modifier:inputs:));
}

{
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, specialized static BorderlessButtonStyleEnvironment._makeInputs(modifier:inputs:));
}

{
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, specialized static ToolbarButtonDefaultForegroundModifier._makeInputs(modifier:inputs:));
}

{
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, specialized static SearchSelectionModifier._makeInputs(modifier:inputs:));
}

{
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, specialized static SearchStateEnvironmentTransformModifier._makeInputs(modifier:inputs:));
}

{
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, specialized static SearchTextTransformModifier._makeInputs(modifier:inputs:));
}

{
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, specialized static SearchPopoverAnchorModifier.InputsWriter._makeInputs(modifier:inputs:));
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationDisclosureEnvironmentModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
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
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance WrappedButtonStyleBody<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyleBody<A>, a3);

  return MEMORY[0x1EEDE2370](a1, a2, a3, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityGestureModifier, &type metadata for AccessibilityGestureModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityGestureModifier, &type metadata for AccessibilityGestureModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityGestureModifier, &type metadata for AccessibilityGestureModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityGestureModifier(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier();
  result = lazy protocol witness table accessor for type AccessibilityGestureModifier and conformance AccessibilityGestureModifier();
  *(a1 + 16) = result;
  return result;
}

uint64_t View.accessibilityLabel<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  View.accessibilityLabel(_:)(v10, v11, v13 & 1, v15, a2, a4);
  outlined consume of Text.Storage(v10, v12, v14 & 1);
}

_BYTE *assignWithCopy for Button(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v5 = a1;
  *a1 = *a2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v9 | 7) + 1;
  v11 = (&v5[v10] & ~(v9 | 7));
  v12 = (&a2[v10] & ~(v9 | 7));
  if (v11 != v12)
  {
    v15 = v6;
    v57 = *(v7 + 64);
    v16 = ((v9 + 75) & ~v9) + v57;
    if ((v16 + 1) > 0x30)
    {
      v14 = v16 + 1;
    }

    else
    {
      v14 = 48;
    }

    v17 = v11[v14];
    v18 = v17 - 3;
    if (v17 >= 3)
    {
      if (v14 <= 3)
      {
        v19 = v14;
      }

      else
      {
        v19 = 4;
      }

      if (v19 <= 1)
      {
        if (!v19)
        {
          goto LABEL_22;
        }

        v20 = *v11;
      }

      else if (v19 == 2)
      {
        v20 = *v11;
      }

      else if (v19 == 3)
      {
        v20 = *v11 | (v11[2] << 16);
      }

      else
      {
        v20 = *v11;
      }

      v21 = (v20 | (v18 << (8 * v14))) + 3;
      v17 = v20 + 3;
      if (v14 < 4)
      {
        v17 = v21;
      }
    }

LABEL_22:
    if (v17 == 2)
    {
      outlined consume of Environment<AppIntentExecutor?>.Content(*v11, *(v11 + 1), v11[16]);
    }

    else if (v17 == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v11, *(v11 + 1), *(v11 + 2), *(v11 + 3), *(v11 + 16), v11[34]);
      v22 = (v11 + 42) & 0xFFFFFFFFFFFFFFF8;
      v23 = outlined consume of Environment<OpenURLAction>.Content(*v22, *(v22 + 8), *(v22 + 16), *(v22 + 24), *(v22 + 32), *(v22 + 34));
      (*(v8 + 8))((v9 + v22 + 35) & ~v9, v15, v23);
      goto LABEL_27;
    }

LABEL_27:
    v24 = v12[v14];
    v25 = v24 - 3;
    if (v24 < 3)
    {
      goto LABEL_41;
    }

    if (v14 <= 3)
    {
      v26 = v14;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_41;
      }

      v27 = *v12;
    }

    else if (v26 == 2)
    {
      v27 = *v12;
    }

    else if (v26 == 3)
    {
      v27 = *v12 | (v12[2] << 16);
    }

    else
    {
      v27 = *v12;
    }

    v28 = (v27 | (v25 << (8 * v14))) + 3;
    v24 = v27 + 3;
    if (v14 < 4)
    {
      v24 = v28;
    }

LABEL_41:
    if (v24 == 2)
    {
      v42 = *v12;
      v43 = *(v12 + 1);
      v44 = v12[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v12, v43, v44);
      *v11 = v42;
      *(v11 + 1) = v43;
      v11[16] = v44;
      v45 = *(v12 + 3);
      *(v11 + 3) = v45;
      v46 = *(v12 + 5);
      *(v11 + 4) = *(v12 + 4);
      *(v11 + 5) = v46;
      v11[v14] = 2;
      v47 = v45;
    }

    else
    {
      if (v24 == 1)
      {
        v53 = v8;
        v54 = v15;
        v55 = a3;
        v29 = *v12;
        v30 = *(v12 + 1);
        v56 = v5;
        v31 = *(v12 + 2);
        v32 = *(v12 + 3);
        v33 = v12[34];
        v34 = *(v12 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v12, v30, v31, v32, v34, v33);
        *v11 = v29;
        *(v11 + 1) = v30;
        *(v11 + 2) = v31;
        *(v11 + 3) = v32;
        *(v11 + 16) = v34;
        v11[34] = v33;
        v35 = (v11 + 42) & 0xFFFFFFFFFFFFFFF8;
        v36 = (v12 + 42) & 0xFFFFFFFFFFFFFFF8;
        v37 = *v36;
        v38 = *(v36 + 8);
        v39 = *(v36 + 16);
        v40 = *(v36 + 24);
        v51 = *(v36 + 32);
        v52 = *(v36 + 34);
        v41 = outlined copy of Environment<OpenURLAction>.Content(*v36, v38, v39, v40, v51, v52);
        *v35 = v37;
        *(v35 + 8) = v38;
        *(v35 + 16) = v39;
        *(v35 + 24) = v40;
        a3 = v55;
        v5 = v56;
        *(v35 + 32) = v51;
        *(v35 + 34) = v52;
        (*(v53 + 16))((v9 + 35 + v35) & ~v9, (v9 + 35 + v36) & ~v9, v54, v41);
        *(v57 + ((v9 + 35 + v35) & ~v9)) = *(v57 + ((v9 + 35 + v36) & ~v9));
        v11[v14] = 1;
        goto LABEL_47;
      }

      v48 = *(v12 + 1);
      *v11 = *v12;
      *(v11 + 1) = v48;
      v11[v14] = 0;
    }

    goto LABEL_47;
  }

  v13 = ((v9 + 75) & ~v9) + *(v7 + 64);
  if ((v13 + 1) > 0x30)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 48;
  }

LABEL_47:
  v49 = *(*(a3 + 16) - 8);
  (*(v49 + 24))(&v11[v14 + 1 + *(v49 + 80)] & ~*(v49 + 80), &v12[v14 + 1 + *(v49 + 80)] & ~*(v49 + 80));
  return v5;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<PlainButtonStyleBase>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<PlainButtonStyleBase>>)
  {
    type metadata accessor for ModifiedContent<UIKitButton<PrimitiveButtonStyleConfiguration.Label>, UIKitSystemButtonConfigurationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>>, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, type metadata accessor for Button, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<PlainButtonStyleBase>, lazy protocol witness table accessor for type PlainButtonStyleBase and conformance PlainButtonStyleBase, &type metadata for PlainButtonStyleBase, type metadata accessor for ButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<PlainButtonStyleBase>>);
    }
  }
}

uint64_t sub_18BDC84C8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = v3;
  return a1;
}

unint64_t lazy protocol witness table accessor for type HStack<ButtonStyleConfiguration.Label> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<ButtonStyleConfiguration.Label> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<ButtonStyleConfiguration.Label> and conformance HStack<A>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for HStack<ButtonStyleConfiguration.Label>, &type metadata for ButtonStyleConfiguration.Label, &protocol witness table for ButtonStyleConfiguration.Label, MEMORY[0x1E69817F0]);
    result = swift_getWitnessTable(MEMORY[0x1E69817F8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<ButtonStyleConfiguration.Label> and conformance HStack<A>);
  }

  return result;
}

uint64_t PrimitiveButtonStyleContainerModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v4 = *(a2 + 16);
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v43 = type metadata accessor for ButtonStyleModifier(0, v4, v8, v9);
  v50 = *(v43 - 8);
  v10 = MEMORY[0x1EEE9AC00](v43);
  v45 = &v40 - v11;
  swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, a2, v10);
  v12 = type metadata accessor for _ViewModifier_Content();
  v13 = type metadata accessor for ModifiedContent();
  v48 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v40 - v14;
  v44 = type metadata accessor for ButtonStyleWriter(255, v4, v8, v15);
  v16 = type metadata accessor for ModifiedContent();
  v47 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v41 = &v40 - v17;
  type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for CustomButtonMenuStyleWriter<ButtonMenuStyle.Automatic>, lazy protocol witness table accessor for type ButtonMenuStyle.Automatic and conformance ButtonMenuStyle.Automatic, &type metadata for ButtonMenuStyle.Automatic, type metadata accessor for CustomButtonMenuStyleWriter);
  v42 = v18;
  v19 = type metadata accessor for ModifiedContent();
  v46 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v40 - v24;
  v26 = v49;
  (*(v49 + 16))(v6, v51, v4, v23);
  v27 = *(v26 + 32);
  v28 = v45;
  v27(v45, v6, v4);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v12);
  v30 = v40;
  v31 = v28;
  v32 = v28;
  v33 = v43;
  MEMORY[0x18D00A570](v31, v12, v43, WitnessTable);
  (*(v50 + 8))(v32, v33);
  v55[0] = WitnessTable;
  v55[1] = &protocol witness table for ButtonStyleModifier<A>;
  v34 = MEMORY[0x1E697E858];
  v35 = swift_getWitnessTable(MEMORY[0x1E697E858], v13, v55);
  v36 = v41;
  MEMORY[0x18D00A570](v35, v13, v44, v35);
  (*(v48 + 8))(v30, v13);
  v54[0] = v35;
  v54[1] = &protocol witness table for ButtonStyleWriter<A>;
  v37 = swift_getWitnessTable(v34, v16, v54);
  MEMORY[0x18D00A570](v37, v16, v42, v37);
  (*(v47 + 8))(v36, v16);
  v53[0] = v37;
  v53[1] = &protocol witness table for CustomButtonMenuStyleWriter<A>;
  swift_getWitnessTable(v34, v19, v53);
  static ViewBuilder.buildExpression<A>(_:)();
  v38 = *(v46 + 8);
  v38(v21, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v38)(v25, v19);
}

unint64_t lazy protocol witness table accessor for type EffectiveButtonStyleInput and conformance EffectiveButtonStyleInput()
{
  result = lazy protocol witness table cache variable for type EffectiveButtonStyleInput and conformance EffectiveButtonStyleInput;
  if (!lazy protocol witness table cache variable for type EffectiveButtonStyleInput and conformance EffectiveButtonStyleInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EffectiveButtonStyleInput, &type metadata for EffectiveButtonStyleInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EffectiveButtonStyleInput and conformance EffectiveButtonStyleInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EffectiveButtonStyleInput and conformance EffectiveButtonStyleInput;
  if (!lazy protocol witness table cache variable for type EffectiveButtonStyleInput and conformance EffectiveButtonStyleInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EffectiveButtonStyleInput, &type metadata for EffectiveButtonStyleInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EffectiveButtonStyleInput and conformance EffectiveButtonStyleInput);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

void *assignWithCopy for TextFieldState.DeprecatedActions(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t Button.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v31 = type metadata accessor for ResolvedButtonStyle(0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = *(a1 + 16);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for StaticIf();
  v7 = lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label();
  v33 = v7;
  v8 = lazy protocol witness table accessor for type ButtonScrollEdgeEffectTaggingFeature and conformance ButtonScrollEdgeEffectTaggingFeature();
  v45[0] = *(a1 + 24);
  v9 = v45[0];
  v45[1] = &protocol witness table for ScrollEdgeEffectTagModifier;
  v36 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v45);
  v44[0] = v8;
  v44[1] = WitnessTable;
  v44[2] = v9;
  v32 = v6;
  v11 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v6, v44);
  v43[0] = &type metadata for ButtonStyleConfiguration.Label;
  v43[1] = v6;
  v43[2] = v7;
  v43[3] = v11;
  type metadata accessor for StaticSourceWriter(255, v43);
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  v22 = *v2;
  v23 = *(a1 + 36);
  v24 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v25 = &v2[v23];
  v26 = v35;
  outlined init with copy of ButtonAction(v25, &v35[v24], type metadata accessor for ButtonAction);
  *v26 = v22;
  v39 = v34;
  v40 = v9;
  v41 = v2;
  v27 = _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_4(&lazy protocol witness table cache variable for type ResolvedButtonStyle and conformance ResolvedButtonStyle, type metadata accessor for ResolvedButtonStyle, protocol conformance descriptor for ResolvedButtonStyle);
  View.viewAlias<A, B>(_:_:)(&type metadata for ButtonStyleConfiguration.Label, partial apply for closure #1 in Button.body.getter, v38, v31, &type metadata for ButtonStyleConfiguration.Label, v32, v27);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(v26, type metadata accessor for ResolvedButtonStyle);
  v42[0] = v27;
  v42[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(v36, v12, v42);
  ModifiedContent<>.accessibility()(v12, v18);
  v28 = *(v13 + 8);
  v28(v15, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  v28(v18, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v28)(v21, v12);
}

uint64_t outlined init with copy of ButtonAction(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for ButtonAction(uint64_t a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v23 = *a2;
    v24 = a2[1];
    v25 = *(a2 + 16);
    outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v24, v25);
    *a1 = v23;
    *(a1 + 8) = v24;
    *(a1 + 16) = v25;
    v26 = a2[5];
    v27 = *(a2 + 3);
    *(a1 + 24) = v27;
    *(a1 + 40) = v26;
    v28 = v27;
LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v29 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v29;
    goto LABEL_6;
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = *(a2 + 34);
  v11 = *(a2 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*a2, v7, v8, v9, v11, v10);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 34) = v10;
  v12 = a2[5];
  v13 = a2[6];
  v14 = a2[7];
  v15 = a2[8];
  v16 = *(a2 + 74);
  v17 = *(a2 + 36);
  outlined copy of Environment<OpenURLAction>.Content(v12, v13, v14, v15, v17, v16);
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  *(a1 + 64) = v15;
  *(a1 + 72) = v17;
  *(a1 + 74) = v16;
  v18 = *(type metadata accessor for LinkDestination() + 24);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 16))(v19, v20, v21);
  v22 = type metadata accessor for LinkDestination.Configuration();
  *(v19 + *(v22 + 20)) = v20[*(v22 + 20)];
LABEL_7:
  swift_storeEnumTagMultiPayload();
  return a1;
}