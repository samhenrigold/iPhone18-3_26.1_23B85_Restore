uint64_t static AttributedStringKey.nsAttributedStringKey.getter(uint64_t a1, uint64_t a2)
{
  v2 = dispatch thunk of static AttributedStringKey.name.getter();
  v3 = MEMORY[0x193ABEC20](v2);

  return v3;
}

uint64_t Dictionary<>.removeValue<A>(forKey:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = static AttributedStringKey.nsAttributedStringKey.getter(a1, a2);
  specialized Dictionary._Variant.removeValue(forKey:)(v4, &v8);

  type metadata accessor for Any?();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a3, v6 ^ 1u, 1, AssociatedTypeWitness);
}

{
  v4 = static AttributedStringKey.nsAttributedStringKey.getter(a1, *(a2 + 8));
  specialized Dictionary._Variant.removeValue(forKey:)(v4, &v9);

  if (!v10)
  {
    _sypSgWOhTm_12(&v9, type metadata accessor for Any?);
    goto LABEL_5;
  }

  swift_getAssociatedTypeWitness();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 1;
    goto LABEL_6;
  }

  dispatch thunk of static ObjectiveCConvertibleAttributedStringKey.value(for:)();

  v7 = 0;
LABEL_6:
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a3, v7, 1, AssociatedTypeWitness);
}

void static AttributeScope.keys.getter(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v16 = a1;
  v17 = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v8 = &v16 - v7;
  if (one-time initialization token for scopeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AttributedString.Keys.scopeCache);
  v9 = off_1ED5247F0;
  if (!*(off_1ED5247F0 + 2) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v11 & 1) == 0))
  {
    os_unfair_lock_unlock(&static AttributedString.Keys.scopeCache);
LABEL_8:
    static AttributeScope.attributeKeys.getter();
    v16 = a1;
    v17 = a2;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    AttributedString.Keys.init<A>(_:)(v8, OpaqueTypeMetadata2, OpaqueTypeConformance2, v14, &v16);
    v12 = v16;
    os_unfair_lock_lock(&static AttributedString.Keys.scopeCache);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = off_1ED5247F0;
    off_1ED5247F0 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a1, isUniquelyReferenced_nonNull_native);
    off_1ED5247F0 = v16;
    os_unfair_lock_unlock(&static AttributedString.Keys.scopeCache);
    goto LABEL_9;
  }

  v12 = *(v9[7] + 8 * v10);

  os_unfair_lock_unlock(&static AttributedString.Keys.scopeCache);
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a3 = v12;
}

uint64_t static AttributeScope.contains<A>(_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  static AttributeScope.keys.getter(a2, a4, &v23);
  v6 = v23;
  if (*(v23 + 16))
  {
    Hasher.init(_seed:)();
    dispatch thunk of static AttributedStringKey.name.getter();
    String.hash(into:)();

    v7 = Hasher._finalize()();
    v8 = -1 << *(v6 + 32);
    v9 = v7 & ~v8;
    if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      do
      {
        v11 = *(v6 + 48) + 16 * v9;
        v12 = *v11;
        v13 = *(v11 + 8);
        if (v13 < 0)
        {
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;
          v17 = v12;
          if (v14 == dispatch thunk of static AttributedStringKey.name.getter() && v16 == v18)
          {
            outlined consume of AttributedString.AnyAttribute(v12, v13);

            v21 = 1;
            goto LABEL_14;
          }

          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined consume of AttributedString.AnyAttribute(v12, v13);

          if (v20)
          {
LABEL_12:
            v21 = 1;
            goto LABEL_14;
          }
        }

        else if (v12 == a3)
        {
          goto LABEL_12;
        }

        v9 = (v9 + 1) & v10;
      }

      while (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }
  }

  v21 = 0;
LABEL_14:

  return v21;
}

unint64_t AttributedString.AttributeDependencies.init()@<X0>(unint64_t *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_AeFE4KeysVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

void AttributedString.AttributeDependencies.insert<A, B>(from:to:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = *v6;
  v13 = v23[0];
  *v6 = 0x8000000000000000;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a5);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v14;
  if (v13[3] >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_13:
    specialized _NativeDictionary.copy()();
    v13 = v23[0];
    goto LABEL_6;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
  v13 = v23[0];
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a5);
  if ((v7 & 1) != (v20 & 1))
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v15 = v19;
LABEL_6:

  *v6 = v13;
  if ((v7 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v15, a3, a5, MEMORY[0x1E69E7CD0], v13);
  }

  specialized Set._Variant.insert(_:)(v23, a4, a6);
  outlined consume of AttributedString.AnyAttribute(v23[0], v23[1]);
  if (!v13[2] || (specialized __RawDictionaryStorage.find<A>(_:)(a4, a6), (v21 & 1) == 0))
  {
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23[0] = *v6;
    *v6 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x1E69E7CD0], a4, a6, v22);
    *v6 = v23[0];
  }
}

void specialized Set.union<A>(_:)(uint64_t a1, void *a2)
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
    v11 = *(a1 + 48) + ((v9 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    outlined copy of AttributedString.AnyAttribute(*v11, v13);
    specialized Set._Variant.insert(_:)(v14, v12, v13);
    outlined consume of AttributedString.AnyAttribute(v14[0], v14[1]);
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

uint64_t Dictionary<>.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = static AttributedStringKey.nsAttributedStringKey.getter(a2, a3);
  v7 = v6;
  if (*(a1 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v9 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v8, v13);
  }

  else
  {

    memset(v13, 0, sizeof(v13));
  }

  type metadata accessor for Any?();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a4, v11 ^ 1u, 1, AssociatedTypeWitness);
}

{
  v6 = static AttributedStringKey.nsAttributedStringKey.getter(a2, *(a3 + 8));
  v7 = v6;
  if (!*(a1 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v9 & 1) == 0))
  {

    goto LABEL_6;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v8, v14);

  swift_getAssociatedTypeWitness();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v12 = 1;
    goto LABEL_7;
  }

  dispatch thunk of static ObjectiveCConvertibleAttributedStringKey.value(for:)();

  v12 = 0;
LABEL_7:
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a4, v12, 1, AssociatedTypeWitness);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized Dictionary<>.subscript.setter(a1, a2, a3, a4);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

{
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  (*(v9 + 16))(v11, a1, v8, v14);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    v17 = *(v9 + 8);
    v17(v11, v8);
    v18 = static AttributedStringKey.nsAttributedStringKey.getter(a3, v6);
    v24 = 0u;
    v25 = 0u;
    specialized Dictionary.subscript.setter(&v24, v18);
    return (v17)(a1, v8);
  }

  else
  {
    v23 = a1;
    (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
    v20 = static AttributedStringKey.nsAttributedStringKey.getter(a3, v6);
    v21 = dispatch thunk of static ObjectiveCConvertibleAttributedStringKey.objectiveCValue(for:)();
    *(&v25 + 1) = swift_getAssociatedTypeWitness();
    *&v24 = v21;
    specialized Dictionary.subscript.setter(&v24, v20);
    (*(v9 + 8))(v23, v8);
    return (*(v12 + 8))(v16, AssociatedTypeWitness);
  }
}

void (*Dictionary<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  swift_getAssociatedTypeWitness();
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
  Dictionary<>.subscript.getter(*v4, a3, a4, v15);
  return Dictionary<>.subscript.modify;
}

void Dictionary<>.subscript.modify(uint64_t **a1, char a2)
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
    specialized Dictionary<>.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized Dictionary<>.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*Dictionary<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  swift_getAssociatedTypeWitness();
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
  Dictionary<>.subscript.getter(*v4, a3, a4, v15);
  return Dictionary<>.subscript.modify;
}

void Dictionary<>.subscript.modify(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];
    v8 = v2[1];
    (*(v6 + 16))((*a1)[6], v4, v5);
    Dictionary<>.subscript.setter(v3, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Dictionary<>.subscript.setter((*a1)[7], a2, v2[1], v2[2]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AttributedString.Keys.contains(_:)(void *a1, uint64_t a2)
{
  v3 = *v2;
  if (*(*v2 + 16))
  {
    Hasher.init(_seed:)();
    dispatch thunk of static AttributedStringKey.name.getter();
    String.hash(into:)();

    v5 = Hasher._finalize()();
    v6 = -1 << *(v3 + 32);
    v7 = v5 & ~v6;
    if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(v3 + 48) + 16 * v7;
        v10 = *v9;
        v11 = *(v9 + 8);
        if (v11 < 0)
        {
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;
          v15 = v10;
          if (v12 == dispatch thunk of static AttributedStringKey.name.getter() && v14 == v16)
          {
            outlined consume of AttributedString.AnyAttribute(v10, v11);

            return 1;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined consume of AttributedString.AnyAttribute(v10, v11);

          if (v18)
          {
            return 1;
          }
        }

        else if (v10 == a1)
        {
          return 1;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }
  }

  return 0;
}

uint64_t static AttributeScope.contains(_:)(uint64_t a1, void *a2, uint64_t a3)
{
  static AttributeScope.keys.getter(a2, a3, &v20);
  v3 = v20;
  if (*(v20 + 16) && (Hasher.init(_seed:)(), static String._unconditionallyBridgeFromObjectiveC(_:)(), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(v3 + 32), v6 = v4 & ~v5, ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(v3 + 48) + 16 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v10 < 0)
      {
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v14;
        v15 = v9;
      }

      else
      {
        v11 = dispatch thunk of static AttributedStringKey.name.getter();
        v13 = v12;
      }

      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v16)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined consume of AttributedString.AnyAttribute(v9, v10);

      if (v18)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    outlined consume of AttributedString.AnyAttribute(v9, v10);

LABEL_15:

    return 1;
  }

  else
  {
LABEL_13:

    return 0;
  }
}

Swift::Bool __swiftcall AttributedString.Keys.contains(_:)(NSAttributedStringKey a1)
{
  v2 = *v1;
  if (*(*v1 + 16) && (Hasher.init(_seed:)(), static String._unconditionallyBridgeFromObjectiveC(_:)(), String.hash(into:)(), , v3 = Hasher._finalize()(), v4 = -1 << *(v2 + 32), v5 = v3 & ~v4, ((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = *(v2 + 48) + 16 * v5;
      v8 = *v7;
      v9 = *(v7 + 8);
      if (v9 < 0)
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v13;
        v14 = v8;
      }

      else
      {
        v10 = dispatch thunk of static AttributedStringKey.name.getter();
        v12 = v11;
      }

      if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v15)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined consume of AttributedString.AnyAttribute(v8, v9);

      if ((v17 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v17 & 1;
    }

    outlined consume of AttributedString.AnyAttribute(v8, v9);

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t static AttributeScope.subscript.getter(uint64_t a1, void *a2, uint64_t a3)
{
  static AttributeScope.keys.getter(a2, a3, &v6);
  v4 = AttributedString.Keys.subscript.getter(a1);

  return v4;
}

uint64_t AttributedString.Keys.subscript.getter(uint64_t a1)
{
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  v3 = Hasher._finalize()();
  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = *(v2 + 48) + 16 * v5;
    v8 = *v7;
    v9 = *(v7 + 8);
    if (v9 < 0)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v13;
      v14 = v8;
    }

    else
    {
      v10 = dispatch thunk of static AttributedStringKey.name.getter();
      v12 = v11;
    }

    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v15)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of AttributedString.AnyAttribute(v8, v9);

    if (v17)
    {
      goto LABEL_15;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  outlined consume of AttributedString.AnyAttribute(v8, v9);

LABEL_15:
  result = specialized Set.subscript.getter(v5, *(v2 + 36), 0, v2);
  if (v19 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringV7SwiftUIE4KeysVyAFxcSTRzAA0bC3Key_pXp7ElementRtzlufCAA14AttributeScopePAAE09attributeF0QrvpZQOyAA0I6ScopesOADE0D12UIAttributesV_Qo__Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  type metadata accessor for <<opaque return type of static AttributeScope.attributeKeys>>.0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of static AttributeScope.attributeKeys>>.0.Sequence.Iterator(0);
  v9 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributeScopes.SwiftUIAttributes(255);
  lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, type metadata accessor for AttributeScopes.SwiftUIAttributes, protocol conformance descriptor for AttributeScopes.SwiftUIAttributes);
  *&v32 = v12;
  *(&v32 + 1) = v13;
  swift_getOpaqueTypeConformance2();
  v14 = dispatch thunk of Sequence.underestimatedCount.getter();
  v31 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
  v15 = v31;
  v29 = v5;
  (*(v5 + 16))(v7, a1, v4);
  result = dispatch thunk of Sequence.makeIterator()();
  if (v14 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v27 = a1;
  if (v14)
  {
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      result = dispatch thunk of IteratorProtocol.next()();
      v17 = v32;
      if (!v32)
      {
        goto LABEL_17;
      }

      v31 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        v26 = v32;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v17 = v26;
        v15 = v31;
      }

      *(v15 + 16) = v19 + 1;
      *(v15 + 16 * v19 + 32) = v17;
      if (!--v14)
      {
        goto LABEL_10;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_10:
  dispatch thunk of IteratorProtocol.next()();
  v20 = v32;
  if (v32)
  {
    v21 = *(&v32 + 1);
    do
    {
      v31 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v15 = v31;
      }

      *(v15 + 16) = v23 + 1;
      v24 = v15 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      dispatch thunk of IteratorProtocol.next()();
      v21 = *(&v32 + 1);
      v20 = v32;
    }

    while (v32);
  }

  (*(v28 + 8))(v11, v9);
  v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_SayAJGTt0g5Tf4g_n(v15);

  result = (*(v29 + 8))(v27, v4);
  *v30 = v25;
  return result;
}

void _s10Foundation16AttributedStringV7SwiftUIE4KeysVyAFxcSTRzAA0bC3Key_pXp7ElementRtzlufCSayAaG_pXpG_Tt1g5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  if (v4)
  {
    v5 = *(a1 + 16);
    v6 = (a1 + 32);
    v7 = v4;
    while (v5)
    {
      v8 = *v6;
      v10 = *(v20 + 16);
      v9 = *(v20 + 24);
      if (v10 >= v9 >> 1)
      {
        v18 = *v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v8 = v18;
      }

      *(v20 + 16) = v10 + 1;
      *(v20 + 16 * v10 + 32) = v8;
      ++v6;
      --v5;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_7:
  v11 = *(a1 + 16);
  v12 = v11 - v4;
  if (v11 == v4)
  {
LABEL_8:

    v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_SayAJGTt0g5Tf4g_n(v20);

    *a2 = v13;
    return;
  }

  if (v11 > v4)
  {
    v14 = *(v20 + 16);
    v15 = (a1 + 16 * v4 + 32);
    do
    {
      v16 = *v15;
      v17 = *(v20 + 24);
      if (v14 >= v17 >> 1)
      {
        v19 = *v15;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v14 + 1, 1);
        v16 = v19;
      }

      *(v20 + 16) = v14 + 1;
      *(v20 + 16 * v14 + 32) = v16;
      ++v15;
      ++v14;
      --v12;
    }

    while (v12);
    goto LABEL_8;
  }

LABEL_16:
  __break(1u);
}

uint64_t AttributedString.Keys.init<A>(_:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  v8 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Alignment, 0, a2, &type metadata for AttributedString.AnyAttribute, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], a4);
  v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_SayAJGTt0g5Tf4g_n(v8);

  result = (*(*(a2 - 1) + 8))(a1, a2);
  *a5 = v9;
  return result;
}

void *one-time initialization function for scopeCache()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_10Foundation16AttributedStringV7SwiftUIE4KeysVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static AttributedString.Keys.scopeCache = 0;
  off_1ED5247F0 = result;
  return result;
}

void AttributedString.Keys.union(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  specialized Set.union<A>(_:)(v4, v5);
  *a2 = v6;
}

void *AttributedString.Keys.intersection(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  result = specialized _NativeSet.intersection(_:)(v4, v5, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
  *a2 = result;
  return result;
}

void AttributedString.Keys.symmetricDifference(_:)(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v4 = *a2;
  v5 = *v2;

  specialized Set.formSymmetricDifference(_:)(v4);
  *a1 = v5;
}

void *AttributedString.Keys.popFirst()(__n128 a1)
{
  v2 = *v1;
  if (*(*v1 + 16))
  {
    v3 = _HashTable.startBucket.getter();
    result = specialized Set._Variant.remove(at:)(v3, *(v2 + 36));
    if ((v5 & 0x8000000000000000) == 0)
    {
      return result;
    }

    outlined consume of AttributedString.AnyAttribute(result, v5);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return 0;
}

uint64_t AttributedString.Keys.insert(_:)(void *a1, uint64_t a2)
{
  v2 = specialized Set._Variant.insert(_:)(v4, a1, a2);
  outlined consume of AttributedString.AnyAttribute(v4[0], v4[1]);
  return v2 & 1;
}

void *AttributedString.Keys.remove(_:)(void *a1, uint64_t a2)
{
  result = specialized Set._Variant.remove(_:)(a1, a2);
  if ((~v3 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  if (v3 < 0)
  {
    outlined consume of AttributedString.AnyAttribute?(result, v3);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *AttributedString.Keys.update(with:)(void *a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  *v2 = 0x8000000000000000;
  v7 = specialized _NativeSet.update(with:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
  v9 = v8;

  *v3 = v11;
  if ((~v9 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    return v7;
  }

  outlined consume of AttributedString.AnyAttribute?(v7, v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *AttributedString.Keys.formIntersection(_:)(uint64_t *a1, __n128 a2)
{
  result = specialized _NativeSet.intersection(_:)(*a1, *v2, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
  *v2 = result;
  return result;
}

void specialized Set.formSymmetricDifference(_:)(uint64_t a1)
{
  v2 = 0;
  v5 = *(a1 + 56);
  v3 = a1 + 56;
  v4 = v5;
  v6 = 1 << *(v3 - 24);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  v36 = v9;
  v37 = v3;
LABEL_8:
  if (v8)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v12 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v3 + 8 * v12);
    ++v2;
    if (v8)
    {
      v2 = v12;
LABEL_13:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = *(a1 + 48) + ((v2 << 10) | (16 * v13));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *v1;
      v42 = *v14;
      if (*(*v1 + 16))
      {
        Hasher.init(_seed:)();
        if (v16 < 0)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v15;
        }

        else
        {
          dispatch thunk of static AttributedStringKey.name.getter();
        }

        String.hash(into:)();

        v19 = Hasher._finalize()();
        v20 = -1 << *(v17 + 32);
        v21 = v19 & ~v20;
        if ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v40 = v16;
          v41 = ~v20;
          while (1)
          {
            v22 = *(v17 + 48) + 16 * v21;
            v23 = *v22;
            v24 = *(v22 + 8);
            if ((v24 & 0x8000000000000000) == 0)
            {
              break;
            }

            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v28;
            v29 = v23;
            if (v16 < 0)
            {
              goto LABEL_26;
            }

            v30 = dispatch thunk of static AttributedStringKey.name.getter();
LABEL_27:
            if (v25 == v30 && v27 == v31)
            {
              outlined consume of AttributedString.AnyAttribute(v23, v24);

              v16 = v40;
LABEL_34:
              v1 = v38;
              v34 = specialized Set._Variant.remove(_:)(v42, v16);
              outlined consume of AttributedString.AnyAttribute?(v34, v35);
              v10 = v42;
              v11 = v16;
LABEL_7:
              outlined consume of AttributedString.AnyAttribute(v10, v11);
              v9 = v36;
              v3 = v37;
              goto LABEL_8;
            }

            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined consume of AttributedString.AnyAttribute(v23, v24);

            v16 = v40;
            if (v33)
            {
              goto LABEL_34;
            }

LABEL_20:
            v21 = (v21 + 1) & v41;
            if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          if ((v16 & 0x8000000000000000) == 0)
          {
            if (v23 == v42)
            {
              goto LABEL_34;
            }

            goto LABEL_20;
          }

          v25 = dispatch thunk of static AttributedStringKey.name.getter();
          v27 = v26;
LABEL_26:
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          goto LABEL_27;
        }
      }

      else
      {
        outlined copy of AttributedString.AnyAttribute(v15, v16);
      }

LABEL_6:
      v1 = v38;
      specialized Set._Variant.insert(_:)(v43, v42, v16);
      v10 = v43[0];
      v11 = v43[1];
      goto LABEL_7;
    }
  }
}

double protocol witness for SetAlgebra.union(_:) in conformance AttributedString.Keys@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  specialized Set.union<A>(_:)(v4, v5);
  *a2 = v6;

  return result;
}

double protocol witness for SetAlgebra.intersection(_:) in conformance AttributedString.Keys@<D0>(uint64_t *a1@<X0>, void **a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  *a2 = specialized _NativeSet.intersection(_:)(v4, v5, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

  return result;
}

double protocol witness for SetAlgebra.symmetricDifference(_:) in conformance AttributedString.Keys@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;

  specialized Set.formSymmetricDifference(_:)(v4);
  *a2 = v6;

  return result;
}

uint64_t protocol witness for SetAlgebra.insert(_:) in conformance AttributedString.Keys(void *a1, void **a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = specialized Set._Variant.insert(_:)(v7, *a2, v4);
  outlined consume of AttributedString.AnyAttribute(v7[0], v7[1]);
  *a1 = v3;
  a1[1] = v4;
  return v5 & 1;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance AttributedString.Keys@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized Set._Variant.remove(_:)(*a1, a1[1]);
  if ((~v5 & 0xF000000000000007) == 0)
  {
    result = 0;
    v5 = 0;
LABEL_4:
    *a2 = result;
    a2[1] = v5;
    return result;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  outlined consume of AttributedString.AnyAttribute?(result, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *protocol witness for SetAlgebra.update(with:) in conformance AttributedString.Keys@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = AttributedString.Keys.update(with:)(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *protocol witness for SetAlgebra.formIntersection(_:) in conformance AttributedString.Keys(uint64_t *a1, __n128 a2)
{
  result = specialized _NativeSet.intersection(_:)(*a1, *v2, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
  *v2 = result;
  return result;
}

double protocol witness for SetAlgebra.subtracting(_:) in conformance AttributedString.Keys@<D0>(uint64_t *a1@<X0>, void **a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v7 = *v2;

  specialized Set.formSymmetricDifference(_:)(v4);

  *a2 = specialized _NativeSet.intersection(_:)(v7, v5, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

  return result;
}

uint64_t protocol witness for SetAlgebra.isSubset(of:) in conformance AttributedString.Keys(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  v4 = specialized _NativeSet.intersection(_:)(v2, v3, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
  LOBYTE(v3) = _sSh2eeoiySbShyxG_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_Tt1g5(v4, v3);

  return v3 & 1;
}

uint64_t protocol witness for SetAlgebra.isDisjoint(with:) in conformance AttributedString.Keys(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  v4 = specialized _NativeSet.intersection(_:)(v2, v3, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
  LOBYTE(v3) = _sSh2eeoiySbShyxG_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_Tt1g5(v4, MEMORY[0x1E69E7CD0]);

  return v3 & 1;
}

uint64_t protocol witness for SetAlgebra.isSuperset(of:) in conformance AttributedString.Keys(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;

  v4 = specialized _NativeSet.intersection(_:)(v2, v3, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
  LOBYTE(v3) = _sSh2eeoiySbShyxG_ABtFZ10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_Tt1g5(v4, v3);

  return v3 & 1;
}

void protocol witness for SetAlgebra.subtract(_:) in conformance AttributedString.Keys(uint64_t *a1)
{
  v2 = *v1;
  v5 = *v1;

  specialized Set.formSymmetricDifference(_:)(v3);
  v4 = specialized _NativeSet.intersection(_:)(v5, v2, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

  *v1 = v4;
}

void *AttributedString.Keys.remove(_:)(void *a1, __n128 a2)
{
  result = specialized Set._Variant.remove(_:)(a1, 0x8000000000000000);
  if ((~v3 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  if (v3 < 0)
  {
    outlined consume of AttributedString.AnyAttribute?(result, v3);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
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

double AttributedString.Keys.makeIterator()@<D0>(void *a1@<X8>)
{
  v2 = -1 << *(*v1 + 32);
  v3 = ~v2;
  v4 = *v1 + 56;
  v5 = -v2;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(*v1 + 56);
  *a1 = *v1;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = 0;
  a1[4] = v7;

  return result;
}

uint64_t AttributedString.Keys.SetIterator.next()()
{
  v1 = v0[3];
  v2 = v0[4];
  if (!v2)
  {
    v4 = (v0[2] + 64) >> 6;
    if (v4 <= v1 + 1)
    {
      v5 = v1 + 1;
    }

    else
    {
      v5 = (v0[2] + 64) >> 6;
    }

    v6 = v5 - 1;
    while (1)
    {
      v3 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        result = 0;
        v0[3] = v6;
        v0[4] = 0;
        return result;
      }

      v2 = *(v0[1] + 8 * v3);
      ++v1;
      if (v2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v3 = v0[3];
LABEL_10:
  v7 = (*(*v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
  result = *v7;
  v9 = v7[1];
  v0[3] = v3;
  v0[4] = (v2 - 1) & v2;
  if (v9 < 0)
  {
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance AttributedString.Keys.SetIterator@<X0>(uint64_t *a1@<X8>)
{
  result = AttributedString.Keys.SetIterator.next()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double protocol witness for Sequence.makeIterator() in conformance AttributedString.Keys@<D0>(void *a1@<X8>)
{
  AttributedString.Keys.makeIterator()(a1);

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.Keys()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);

  return v1;
}

void AttributedString.AttributeDependencies.init<A>(from:to:)(void **a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = *a1;
  *a4 = *a1;

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation16AttributedStringV7SwiftUIE12AnyAttribute33_93D88693A30DD34F9C9D4BE382D691E3LLO_SD4KeysVyAjfGEAKV_GTt0g5(v9);
  v11 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v8;
  *a4 = 0x8000000000000000;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v15 = v8[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v13;
  if (v8[3] >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    specialized _NativeDictionary.copy()();
    v8 = v20;
    goto LABEL_6;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
  v8 = v20;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v4 & 1) != (v19 & 1))
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v18;
LABEL_6:

  *a4 = v8;
  if ((v4 & 1) == 0)
  {
    _s10Foundation16AttributedStringV7SwiftUIE4KeysVyAFxcSTRzAA0bC3Key_pXp7ElementRtzlufCSayAaG_pXpG_Tt1g5(MEMORY[0x1E69E7CC0], &v20);
    specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a3, v20, v8);
  }

  specialized Set.formUnion<A>(_:)(v11);
}

uint64_t AttributedString.AttributeDependencies.contains<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(*v3 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1, a3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

Swift::Bool __swiftcall AttributedString.AttributeDependencies.contains(_:)(NSAttributedStringKey a1)
{
  if (*(*v1 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1, 0x8000000000000000);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void AttributedString.AttributeDependencies.merge(_:uniquingKeysWith:)(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, id *, uint64_t *, __n128))
{
  v4 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  *v2 = 0x8000000000000000;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v4, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, a2);

  *v2 = v6;
}

Swift::Int AttributedString.Keys.hashValue.getter(void (*a1)(void *, uint64_t))
{
  v3 = *v1;
  Hasher.init(_seed:)();
  a1(v5, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributedString.Keys(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v7, v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedString.Keys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void))
{
  Hasher.init(_seed:)();
  a4(v7, *v4);
  return Hasher._finalize()();
}

double AttributedString.AttributeDependencies.makeIterator()@<D0>(void *a1@<X8>)
{
  v2 = -1 << *(*v1 + 32);
  v3 = ~v2;
  v4 = *v1 + 64;
  v5 = -v2;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(*v1 + 64);
  *a1 = *v1;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = 0;
  a1[4] = v7;
  a1[5] = closure #1 in AttributedString.AttributeDependencies.makeIterator();
  a1[6] = 0;

  return result;
}

void *closure #1 in AttributedString.AttributeDependencies.makeIterator()@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (v2 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = *result;
    a2[1] = v2;
  }

  return result;
}

double protocol witness for Sequence.makeIterator() in conformance AttributedString.AttributeDependencies@<D0>(void *a1@<X8>)
{
  AttributedString.AttributeDependencies.makeIterator()(a1);

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.AttributeDependencies()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);

  return v1;
}

double AttributedString.AttributeDependencies.subscript.getter@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *v2;
  *a2 = MEMORY[0x1E69E7CD0];
  a2[1] = v3;
  a2[2] = v4;

  return result;
}

void *AttributedString.AttributeDependencies.PartialIterator.next()(__n128 a1)
{
  v2 = v1;
  v3 = *(v1 + 8);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = _HashTable.startBucket.getter();
  v5 = specialized Set._Variant.remove(at:)(v4, *(v3 + 36));
  v7 = v5;
  v8 = v6;
  if ((v6 & 0x8000000000000000) == 0)
  {
    specialized Set._Variant.insert(_:)(v17, v5, v6);
    outlined consume of AttributedString.AnyAttribute(v17[0], v17[1]);
    v9 = *(v2 + 16);
    if (*(v9 + 16))
    {
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        v17[0] = *(*(v9 + 56) + 8 * v10);
        v12 = v17[0];
        swift_bridgeObjectRetain_n();

        specialized Set.formSymmetricDifference(_:)(v13);
        v14 = v17[0];

        v15 = specialized _NativeSet.intersection(_:)(v14, v12, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

        specialized Set.formUnion<A>(_:)(v15);
      }
    }

    return v7;
  }

  outlined consume of AttributedString.AnyAttribute(v5, v6);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance AttributedString.AttributeDependencies.PartialIterator@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.AttributeDependencies.PartialIterator()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

void *protocol witness for IteratorProtocol.next() in conformance AttributedString.AttributeDependencies.PartialIterator@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  result = AttributedString.AttributeDependencies.PartialIterator.next()(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributedString.AnyAttribute()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 < 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    dispatch thunk of static AttributedStringKey.name.getter();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance AttributedString.AnyAttribute(uint64_t a1)
{
  if ((*(v1 + 8) & 0x8000000000000000) != 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    dispatch thunk of static AttributedStringKey.name.getter();
  }

  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedString.AnyAttribute(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2 < 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    dispatch thunk of static AttributedStringKey.name.getter();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t specialized Set._Variant.remove(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  if (a2 < 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    dispatch thunk of static AttributedStringKey.name.getter();
  }

  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v25 = ~v7;
  while (1)
  {
    v9 = *(v5 + 48) + 16 * v8;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v11 < 0)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v15;
      v16 = v10;
      if ((a2 & 0x8000000000000000) == 0)
      {
        v17 = dispatch thunk of static AttributedStringKey.name.getter();
        goto LABEL_14;
      }
    }

    else
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        if (v10 == a1)
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }

      v12 = dispatch thunk of static AttributedStringKey.name.getter();
      v14 = v13;
    }

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_14:
    if (v12 == v17 && v14 == v18)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of AttributedString.AnyAttribute(v10, v11);

    if (v20)
    {
      goto LABEL_22;
    }

LABEL_7:
    v8 = (v8 + 1) & v25;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  outlined consume of AttributedString.AnyAttribute(v10, v11);

LABEL_22:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v2;
  v26 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v23 = v26;
  }

  v21 = *(*(v23 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v26;
  return v21;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
  v32 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v30 = v9 + 56;
  v31 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v31 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694B0]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v33 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(v23);
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13, MEMORY[0x1E6969498], &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
    v20 = 0;
    *v21 = v33;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

{
  v5 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
  v32 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v30 = v9 + 56;
  v31 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v31 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1D0]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v30 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v33 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(v23);
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13, MEMORY[0x1E696A1C0], &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
    v20 = 0;
    *v21 = v33;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void specialized Set._Variant.remove(_:)(int8x16_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = a1[2].u8[0];
  v6 = *v2;
  v429 = a1[1];
  v430 = *a1;
  v440[0] = *a1;
  v440[1] = v429;
  v441 = a1[2].i8[0];
  Hasher.init(_seed:)();
  GlassContainer.Entry.ModelID.hash(into:)(v435);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  v428 = v6 + 56;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_521:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = -1;
    return;
  }

  v10 = v6;
  v426 = v6;
  v427 = ~v8;
  v424 = a2;
  while (1)
  {
    v11 = *(v10 + 48) + 40 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    v16 = *(v11 + 32);
    v435[0] = v12;
    v435[1] = v13;
    v435[2] = v15;
    v435[3] = v14;
    v436 = v16;
    v438 = v429;
    v437 = v430;
    v439 = v5;
    if (!v16)
    {
      if (v3[2].i8[0])
      {
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
        v18 = v12;
        v19 = v13;
        v20 = v15;
        v21 = v14;
        v22 = 0;
        goto LABEL_20;
      }

      v24 = v3->i64[0];
      LODWORD(v25) = v3->u8[8];
      if (v13 >> 6)
      {
        if (v13 >> 6 != 1)
        {
          if (v12 | v13 ^ 0x80)
          {
            v42 = v25 & 0xC0;
            if (v13 == 128 && v12 == 1)
            {
              if (v42 != 128 || v24 != 1 || v25 != 128)
              {
                goto LABEL_64;
              }

              v418 = v3->i8[9];
              v419 = v3[1].i64[0];
              v398 = v3[1].i64[1];
              v425 = 40 * v9;
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined consume of _Glass.Variant.ID(v12, v13);
              v26 = 1;
            }

            else
            {
              if (v42 != 128 || v24 != 2 || v25 != 128)
              {
                goto LABEL_64;
              }

              v418 = v3->i8[9];
              v419 = v3[1].i64[0];
              v398 = v3[1].i64[1];
              v425 = 40 * v9;
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined consume of _Glass.Variant.ID(v12, v13);
              v26 = 2;
            }
          }

          else
          {
            if ((v25 & 0xC0) != 0x80 || v24 || v25 != 128)
            {
LABEL_64:
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              v40 = v24;
              v41 = v25;
              goto LABEL_65;
            }

            v418 = v3->i8[9];
            v419 = v3[1].i64[0];
            v398 = v3[1].i64[1];
            v425 = 40 * v9;
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined consume of _Glass.Variant.ID(v12, v13);
            v26 = 0;
          }

          v27 = 0x80;
          goto LABEL_61;
        }

        if ((v25 & 0xC0) != 0x40)
        {
          goto LABEL_33;
        }

        v418 = v3->i8[9];
        v419 = v3[1].i64[0];
        v398 = v3[1].i64[1];
        v425 = 40 * v9;
        v433 = v12;
        v434 = v13 & 0x3F;
        v431 = v24;
        v432 = v25 & 0x3F;
        outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
        outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
        outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        outlined copy of _Glass.Variant.ID(v24, v25);
        outlined copy of _Glass.Variant.ID(v12, v13);
        if ((specialized static Material.ID.== infix(_:_:)(&v433, &v431) & 1) == 0)
        {
          _sypSgWOhTm_12(v435, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          goto LABEL_66;
        }

        outlined consume of _Glass.Variant.ID(v12, v13);
        v26 = v24;
LABEL_26:
        v27 = v25;
LABEL_61:
        outlined consume of _Glass.Variant.ID(v26, v27);
        v10 = v426;
        if (((v13 & 0x100) == 0) == (v418 & 1))
        {
          _sypSgWOhTm_12(v435, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined destroy of GlassContainer.Entry.ModelID(v3);
          outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        }

        else
        {
          v442[0] = v419;
          if (v15 == v419)
          {

            outlined init with copy of AnyHashable2(v442, v440);
            _sypSgWOhTm_12(v435, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined destroy of AnyHashable2(v442);

            outlined destroy of GlassContainer.Entry.ModelID(v3);
            outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          }

          else
          {
            v66 = *(*v15 + 112);

            outlined init with copy of AnyHashable2(v442, v440);
            v10 = v426;
            LOBYTE(v66) = v66(v419);
            _sypSgWOhTm_12(v435, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined destroy of AnyHashable2(v442);

            outlined destroy of GlassContainer.Entry.ModelID(v3);
            outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            if ((v66 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          if (v14 == v398)
          {
            goto LABEL_522;
          }
        }

        goto LABEL_5;
      }

      if (v25 >= 0x40)
      {
LABEL_33:
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
        outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
        outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        outlined copy of _Glass.Variant.ID(v24, v25);
        v40 = v12;
        v41 = v13;
LABEL_65:
        outlined copy of _Glass.Variant.ID(v40, v41);
        _sypSgWOhTm_12(v435, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
LABEL_66:
        outlined consume of _Glass.Variant.ID(v12, v13);
        v51 = v24;
        goto LABEL_67;
      }

      v417 = v5;
      v416 = v3->u8[8];
      v28 = v3->i64[0];
      v29 = *(v12 + 16);
      v30 = *(v12 + 24);
      v31 = *(v12 + 48);
      v32 = *(v3->i64[0] + 16);
      v33 = *(v3->i64[0] + 24);
      v34 = *(v3->i64[0] + 32);
      v422 = v3->i64[0];
      v35 = *(v3->i64[0] + 48);
      if (v30 >> 6)
      {
        if (v30 >> 6 == 1)
        {
          if ((v33 & 0xC0) != 0x40)
          {
            goto LABEL_105;
          }

          v376 = *(v28 + 32);
          v377 = *(v12 + 32);
          v375 = *(v28 + 40);
          v378 = *(v12 + 40);
          v418 = v3->i8[9];
          v419 = v3[1].i64[0];
          v394 = *(v28 + 16);
          v398 = v3[1].i64[1];
          v425 = 40 * v9;
          v433 = *(v12 + 16);
          v434 = v30 & 0x3F;
          v431 = v32;
          v432 = v33 & 0x3F;
          v36 = v30;
          v379 = v33;
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          v37 = v29;
          outlined copy of _Glass.Variant.ID(v29, v36);
          outlined copy of _Glass.Variant.ID(v394, v33);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          v38 = v422;
          v39 = v416;
          outlined copy of _Glass.Variant.ID(v422, v416);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined copy of _Glass.Variant.ID(v37, v36);
          outlined copy of _Glass.Variant.ID(v394, v379);
          v399 = specialized static Material.ID.== infix(_:_:)(&v433, &v431);
          outlined consume of _Glass.Variant.ID(v37, v36);
          outlined consume of _Glass.Variant.ID(v394, v379);
          outlined consume of _Glass.Variant.ID(v394, v379);
          outlined consume of _Glass.Variant.ID(v37, v36);
          if ((v399 & 1) == 0)
          {
            goto LABEL_357;
          }
        }

        else
        {
          if (v29 | v30 ^ 0x80)
          {
            v62 = v33 & 0xC0;
            if (*(v12 + 24) == 128 && v29 == 1)
            {
              if (v62 != 128 || v32 != 1 || v33 != 128)
              {
                goto LABEL_105;
              }

              v386 = *(v12 + 24);
              v391 = *(v12 + 16);
              v376 = *(v3->i64[0] + 32);
              v377 = *(v12 + 32);
              v375 = *(v3->i64[0] + 40);
              v378 = *(v12 + 40);
              v418 = v3->i8[9];
              v419 = v3[1].i64[0];
              v398 = v3[1].i64[1];
              v425 = 40 * v9;
              v64 = v3->i64[0];
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              v65 = 1;
            }

            else
            {
              if (v62 != 128 || v32 != 2 || v33 != 128)
              {
                goto LABEL_105;
              }

              v386 = *(v12 + 24);
              v391 = *(v12 + 16);
              v376 = *(v3->i64[0] + 32);
              v377 = *(v12 + 32);
              v375 = *(v3->i64[0] + 40);
              v378 = *(v12 + 40);
              v418 = v3->i8[9];
              v419 = v3[1].i64[0];
              v398 = v3[1].i64[1];
              v425 = 40 * v9;
              v64 = v3->i64[0];
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              v65 = 2;
            }
          }

          else
          {
            if ((v33 & 0xC0) != 0x80 || v32 || v33 != 128)
            {
LABEL_105:
              v69 = *(v3->i64[0] + 16);
              v70 = v12;
              v402 = v3;
              v71 = v12;
              v72 = v15;
              v73 = v14;
              v74 = v30;
              v75 = v33;
              outlined copy of GlassContainer.Entry.ModelID(v70, v13, v72, v73, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v402, v440);
              outlined copy of GlassContainer.Entry.ModelID(v71, v13, v72, v73, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v402, v440);
              outlined copy of GlassContainer.Entry.ModelID(v71, v13, v72, v73, 0);
              v39 = v416;
              outlined copy of _Glass.Variant.ID(v422, v416);
              outlined copy of _Glass.Variant.ID(v71, v13);
              outlined copy of _Glass.Variant.ID(v29, v74);
              outlined copy of _Glass.Variant.ID(v69, v75);
              v76 = v74;
              v14 = v73;
              v15 = v72;
              v12 = v71;
              v3 = v402;
              outlined consume of _Glass.Variant.ID(v29, v76);
              outlined consume of _Glass.Variant.ID(v69, v75);
              v38 = v422;
              goto LABEL_357;
            }

            v386 = *(v12 + 24);
            v391 = *(v12 + 16);
            v376 = *(v28 + 32);
            v377 = *(v12 + 32);
            v375 = *(v28 + 40);
            v378 = *(v12 + 40);
            v418 = v3->i8[9];
            v419 = v3[1].i64[0];
            v398 = v3[1].i64[1];
            v425 = 40 * v9;
            v64 = v3->i64[0];
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
            v65 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v64, v25);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined consume of _Glass.Variant.ID(v391, v386);
          outlined consume of _Glass.Variant.ID(v65, 0x80u);
        }

LABEL_100:
        if (v378 >> 6)
        {
          v67 = v377;
          v68 = v375;
          if (v378 >> 6 == 1)
          {
            a2 = v424;
            if ((v375 & 0xC0) != 0x40)
            {
              goto LABEL_149;
            }

            *&v440[0] = v377;
            BYTE8(v440[0]) = v378 & 0x3F;
            v433 = v376;
            v434 = v375 & 0x3F;
            outlined copy of _Glass.Variant.ID(v377, v378);
            outlined copy of _Glass.Variant.ID(v376, v375);
            outlined copy of _Glass.Variant.ID(v377, v378);
            outlined copy of _Glass.Variant.ID(v376, v375);
            v401 = specialized static Material.ID.== infix(_:_:)(v440, &v433);
            outlined consume of _Glass.Variant.ID(v377, v378);
            outlined consume of _Glass.Variant.ID(v376, v375);
            outlined consume of _Glass.Variant.ID(v376, v375);
            outlined consume of _Glass.Variant.ID(v377, v378);
            LOBYTE(v25) = v416;
            v5 = v417;
            if ((v401 & 1) == 0)
            {
              goto LABEL_411;
            }
          }

          else
          {
            a2 = v424;
            if (v377 | v378 ^ 0x80)
            {
              v86 = v375 & 0xC0;
              if (v378 == 128 && v377 == 1)
              {
                if (v86 != 128 || v376 != 1 || v375 != 128)
                {
                  goto LABEL_149;
                }

                v88 = 1;
              }

              else
              {
                if (v86 != 128 || v376 != 2 || v375 != 128)
                {
                  goto LABEL_149;
                }

                v88 = 2;
              }
            }

            else
            {
              if ((v375 & 0xC0) != 0x80 || v376 || v375 != 128)
              {
LABEL_149:
                v25 = v67;
                v100 = v68;
                outlined copy of _Glass.Variant.ID(v67, v378);
                outlined copy of _Glass.Variant.ID(v376, v100);
                outlined consume of _Glass.Variant.ID(v25, v378);
                v101 = v100;
                a2 = v424;
                outlined consume of _Glass.Variant.ID(v376, v101);
                LOBYTE(v25) = v416;
                goto LABEL_410;
              }

              v88 = 0;
            }

            outlined consume of _Glass.Variant.ID(v377, v378);
            outlined consume of _Glass.Variant.ID(v88, 0x80u);
            LOBYTE(v25) = v416;
            v5 = v417;
          }

          goto LABEL_147;
        }

        v68 = v375;
        a2 = v424;
        v67 = v377;
        if (v375 >= 0x40)
        {
          goto LABEL_149;
        }

        v77 = *(v377 + 16);
        v78 = *(v377 + 24);
        v79 = *(v377 + 48);
        v80 = *(v376 + 16);
        v81 = *(v376 + 24);
        v82 = *(v376 + 48);
        v387 = *(v377 + 24);
        v392 = *(v376 + 24);
        v396 = v80;
        if (v78 >> 6)
        {
          if (v78 >> 6 == 1)
          {
            if ((v81 & 0xC0) != 0x40)
            {
              goto LABEL_242;
            }

            v360 = *(v376 + 32);
            v362 = *(v377 + 32);
            v366 = *(v376 + 40);
            v370 = *(v377 + 40);
            *&v440[0] = *(v377 + 16);
            BYTE8(v440[0]) = v78 & 0x3F;
            v433 = v80;
            v434 = v81 & 0x3F;
            v83 = v78;
            outlined copy of _Glass.Variant.ID(v377, v378);
            outlined copy of _Glass.Variant.ID(v376, v375);
            outlined copy of _Glass.Variant.ID(v77, v83);
            outlined copy of _Glass.Variant.ID(v396, v392);
            outlined copy of _Glass.Variant.ID(v377, v378);
            outlined copy of _Glass.Variant.ID(v376, v375);
            outlined copy of _Glass.Variant.ID(v77, v83);
            outlined copy of _Glass.Variant.ID(v396, v392);
            v403 = specialized static Material.ID.== infix(_:_:)(v440, &v433);
            outlined consume of _Glass.Variant.ID(v77, v83);
            outlined consume of _Glass.Variant.ID(v396, v392);
            outlined consume of _Glass.Variant.ID(v396, v392);
            v84 = v376;
            outlined consume of _Glass.Variant.ID(v77, v387);
            v85 = v377;
            if ((v403 & 1) == 0)
            {
              goto LABEL_408;
            }
          }

          else
          {
            if (v77 | v78 ^ 0x80)
            {
              v130 = v81 & 0xC0;
              if (*(v377 + 24) == 128 && v77 == 1)
              {
                if (v130 != 128 || v80 != 1 || v81 != 128)
                {
                  goto LABEL_242;
                }

                v382 = *(v377 + 16);
                v360 = *(v376 + 32);
                v362 = *(v377 + 32);
                v366 = *(v376 + 40);
                v370 = *(v377 + 40);
                v132 = 1;
              }

              else
              {
                if (v130 != 128 || v80 != 2 || v81 != 128)
                {
                  goto LABEL_242;
                }

                v382 = *(v377 + 16);
                v360 = *(v376 + 32);
                v362 = *(v377 + 32);
                v366 = *(v376 + 40);
                v370 = *(v377 + 40);
                v132 = 2;
              }

              v407 = v132;
            }

            else
            {
              if ((v81 & 0xC0) != 0x80 || v80 || v81 != 128)
              {
LABEL_242:
                outlined copy of _Glass.Variant.ID(v377, v378);
                outlined copy of _Glass.Variant.ID(v376, v375);
                outlined copy of _Glass.Variant.ID(v377, v378);
                outlined copy of _Glass.Variant.ID(v376, v375);
                outlined copy of _Glass.Variant.ID(v77, v387);
                outlined copy of _Glass.Variant.ID(v396, v392);
                v84 = v376;
                outlined consume of _Glass.Variant.ID(v77, v387);
                outlined consume of _Glass.Variant.ID(v396, v392);
                v85 = v377;
                goto LABEL_408;
              }

              v382 = *(v377 + 16);
              v360 = *(v376 + 32);
              v362 = *(v377 + 32);
              v366 = *(v376 + 40);
              v370 = *(v377 + 40);
              v407 = 0;
            }

            outlined copy of _Glass.Variant.ID(v377, v378);
            outlined copy of _Glass.Variant.ID(v376, v375);
            outlined copy of _Glass.Variant.ID(v377, v378);
            outlined copy of _Glass.Variant.ID(v376, v375);
            outlined consume of _Glass.Variant.ID(v382, v387);
            outlined consume of _Glass.Variant.ID(v407, 0x80u);
          }

LABEL_236:
          if (v370 >> 6)
          {
            v149 = v362;
            v150 = v366;
            if (v370 >> 6 == 1)
            {
              if ((v366 & 0xC0) != 0x40)
              {
                goto LABEL_369;
              }

              *&v440[0] = v362;
              BYTE8(v440[0]) = v370 & 0x3F;
              v433 = v360;
              v434 = v366 & 0x3F;
              outlined copy of _Glass.Variant.ID(v362, v370);
              outlined copy of _Glass.Variant.ID(v360, v366);
              outlined copy of _Glass.Variant.ID(v362, v370);
              outlined copy of _Glass.Variant.ID(v360, v366);
              v408 = specialized static Material.ID.== infix(_:_:)(v440, &v433);
              outlined consume of _Glass.Variant.ID(v362, v370);
              outlined consume of _Glass.Variant.ID(v360, v366);
              outlined consume of _Glass.Variant.ID(v360, v366);
              outlined consume of _Glass.Variant.ID(v362, v370);
              outlined consume of _Glass.Variant.ID(v377, v378);
              outlined consume of _Glass.Variant.ID(v376, v375);
              outlined consume of _Glass.Variant.ID(v376, v375);
              outlined consume of _Glass.Variant.ID(v377, v378);
              LOBYTE(v25) = v416;
              v5 = v417;
              if ((v408 & 1) == 0 || v79 != v82)
              {
                goto LABEL_411;
              }

              goto LABEL_147;
            }

            if (v362 | v370 ^ 0x80)
            {
              v167 = v366 & 0xC0;
              if (v370 == 128 && v362 == 1)
              {
                if (v167 != 128 || v360 != 1 || v366 != 128)
                {
                  goto LABEL_369;
                }

                v169 = v362;
                v170 = 1;
              }

              else
              {
                if (v167 != 128 || v360 != 2 || v366 != 128)
                {
                  goto LABEL_369;
                }

                v169 = v362;
                v170 = 2;
              }
            }

            else
            {
              if ((v366 & 0xC0) != 0x80 || v360 || v366 != 128)
              {
LABEL_369:
                outlined copy of _Glass.Variant.ID(v149, v370);
                outlined copy of _Glass.Variant.ID(v360, v150);
                outlined consume of _Glass.Variant.ID(v149, v370);
                v198 = v360;
                v199 = v150;
                goto LABEL_407;
              }

              v169 = v362;
              v170 = 0;
            }

            outlined consume of _Glass.Variant.ID(v169, v370);
            outlined consume of _Glass.Variant.ID(v170, 0x80u);
            v85 = v377;
            outlined consume of _Glass.Variant.ID(v377, v378);
            outlined consume of _Glass.Variant.ID(v376, v375);
            outlined consume of _Glass.Variant.ID(v376, v375);
            LOBYTE(v25) = v416;
          }

          else
          {
            v150 = v366;
            v149 = v362;
            if (v366 >= 0x40)
            {
              goto LABEL_369;
            }

            v161 = *(v362 + 16);
            v162 = *(v362 + 24);
            v163 = *(v362 + 48);
            v164 = *(v360 + 16);
            v165 = *(v360 + 24);
            v166 = *(v360 + 48);
            v356 = *(v362 + 32);
            v351 = *(v362 + 40);
            v347 = *(v360 + 32);
            v344 = *(v360 + 40);
            v393 = v165;
            v397 = v164;
            if (v162 >> 6)
            {
              if (v162 >> 6 == 1)
              {
                if ((v165 & 0xC0) != 0x40)
                {
                  goto LABEL_469;
                }

                *&v440[0] = *(v362 + 16);
                BYTE8(v440[0]) = v162 & 0x3F;
                v433 = v164;
                v434 = v165 & 0x3F;
                v383 = v161;
                v388 = v162;
                outlined copy of _Glass.Variant.ID(v362, v370);
                outlined copy of _Glass.Variant.ID(v360, v366);
                outlined copy of _Glass.Variant.ID(v397, v165);
                outlined copy of _Glass.Variant.ID(v383, v388);
                outlined copy of _Glass.Variant.ID(v362, v370);
                outlined copy of _Glass.Variant.ID(v360, v366);
                outlined copy of _Glass.Variant.ID(v397, v165);
                outlined copy of _Glass.Variant.ID(v383, v388);
                v409 = specialized static Material.ID.== infix(_:_:)(v440, &v433);
                outlined consume of _Glass.Variant.ID(v383, v388);
                outlined consume of _Glass.Variant.ID(v397, v165);
                outlined consume of _Glass.Variant.ID(v397, v165);
                outlined consume of _Glass.Variant.ID(v383, v388);
                if ((v409 & 1) == 0)
                {
                  goto LABEL_471;
                }
              }

              else
              {
                v384 = *(v362 + 16);
                v389 = *(v362 + 24);
                if (v161 | v162 ^ 0x80)
                {
                  v248 = v165 & 0xC0;
                  if (*(v362 + 24) == 128 && v161 == 1)
                  {
                    if (v248 != 128 || v164 != 1 || v165 != 128)
                    {
                      goto LABEL_470;
                    }

                    v414 = v3;
                    v250 = 1;
                  }

                  else
                  {
                    if (v248 != 128 || v164 != 2 || v165 != 128)
                    {
                      goto LABEL_470;
                    }

                    v414 = v3;
                    v250 = 2;
                  }
                }

                else
                {
                  if ((v165 & 0xC0) != 0x80 || v164 || v165 != 128)
                  {
                    goto LABEL_470;
                  }

                  v414 = v3;
                  v250 = 0;
                }

                outlined copy of _Glass.Variant.ID(v362, v370);
                outlined copy of _Glass.Variant.ID(v360, v366);
                outlined copy of _Glass.Variant.ID(v362, v370);
                outlined copy of _Glass.Variant.ID(v360, v366);
                outlined copy of _Glass.Variant.ID(v250, 0x80u);
                outlined consume of _Glass.Variant.ID(v384, v389);
                outlined consume of _Glass.Variant.ID(v250, 0x80u);
                a2 = v424;
                v3 = v414;
              }
            }

            else
            {
              if (v165 >= 0x40)
              {
LABEL_469:
                v384 = *(v362 + 16);
                v389 = *(v362 + 24);
                outlined copy of _Glass.Variant.ID(v161, v162);
LABEL_470:
                outlined copy of _Glass.Variant.ID(v362, v370);
                outlined copy of _Glass.Variant.ID(v360, v366);
                outlined copy of _Glass.Variant.ID(v362, v370);
                outlined copy of _Glass.Variant.ID(v360, v366);
                outlined copy of _Glass.Variant.ID(v397, v165);
                outlined consume of _Glass.Variant.ID(v384, v389);
                outlined consume of _Glass.Variant.ID(v397, v165);
                goto LABEL_471;
              }

              v304 = v12;
              v310 = v13;
              v293 = *(v161 + 32);
              v286 = *(v161 + 40);
              v239 = *(v161 + 48);
              v329 = *(v164 + 16);
              v281 = *(v164 + 32);
              v276 = *(v164 + 40);
              v241 = *(v164 + 48);
              v242 = *(v161 + 24);
              v324 = v242;
              v243 = *(v164 + 24);
              v335 = v243;
              *&v440[0] = *(v161 + 16);
              v240 = *&v440[0];
              BYTE8(v440[0]) = v242;
              v433 = v329;
              v434 = v243;
              v244 = v161;
              v245 = v165;
              v246 = v162;
              v247 = v164;
              outlined copy of _Glass.Variant.ID(v362, v370);
              outlined copy of _Glass.Variant.ID(v360, v366);
              outlined copy of _Glass.Variant.ID(v247, v245);
              outlined copy of _Glass.Variant.ID(v244, v246);
              outlined copy of _Glass.Variant.ID(v362, v370);
              outlined copy of _Glass.Variant.ID(v360, v366);
              outlined copy of _Glass.Variant.ID(v247, v245);
              outlined copy of _Glass.Variant.ID(v244, v246);
              outlined copy of _Glass.Variant.ID(v240, v324);
              outlined copy of _Glass.Variant.ID(v329, v335);
              LOBYTE(v247) = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
              outlined consume of _Glass.Variant.ID(v433, v434);
              outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
              if ((v247 & 1) == 0)
              {
                outlined consume of _Glass.Variant.ID(v244, v246);
                outlined consume of _Glass.Variant.ID(v397, v393);
                outlined consume of _Glass.Variant.ID(v397, v393);
                outlined consume of _Glass.Variant.ID(v244, v246);
                a2 = v424;
                v12 = v304;
                v13 = v310;
LABEL_471:
                outlined consume of _Glass.Variant.ID(v362, v370);
                outlined consume of _Glass.Variant.ID(v360, v366);
                outlined consume of _Glass.Variant.ID(v360, v366);
                v198 = v362;
                v199 = v370;
                goto LABEL_407;
              }

              *&v440[0] = v293;
              BYTE8(v440[0]) = v286;
              v433 = v281;
              v434 = v276;
              outlined copy of _Glass.Variant.ID(v293, v286);
              outlined copy of _Glass.Variant.ID(v281, v276);
              v336 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
              outlined consume of _Glass.Variant.ID(v433, v434);
              outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
              outlined consume of _Glass.Variant.ID(v244, v246);
              outlined consume of _Glass.Variant.ID(v397, v393);
              outlined consume of _Glass.Variant.ID(v397, v393);
              outlined consume of _Glass.Variant.ID(v244, v246);
              a2 = v424;
              v12 = v304;
              v13 = v310;
              if ((v336 & 1) == 0 || v239 != v241)
              {
                goto LABEL_471;
              }
            }

            *&v440[0] = v356;
            BYTE8(v440[0]) = v351;
            v433 = v347;
            v434 = v344;
            outlined copy of _Glass.Variant.ID(v356, v351);
            outlined copy of _Glass.Variant.ID(v347, v344);
            v415 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
            outlined consume of _Glass.Variant.ID(v433, v434);
            outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
            outlined consume of _Glass.Variant.ID(v362, v370);
            outlined consume of _Glass.Variant.ID(v360, v366);
            outlined consume of _Glass.Variant.ID(v360, v366);
            outlined consume of _Glass.Variant.ID(v362, v370);
            v85 = v377;
            outlined consume of _Glass.Variant.ID(v377, v378);
            outlined consume of _Glass.Variant.ID(v376, v375);
            outlined consume of _Glass.Variant.ID(v376, v375);
            LOBYTE(v25) = v416;
            if ((v415 & 1) == 0 || v163 != v166)
            {
              goto LABEL_409;
            }
          }

          outlined consume of _Glass.Variant.ID(v85, v378);
          v5 = v417;
          if (v79 != v82)
          {
            goto LABEL_411;
          }

LABEL_147:
          if (v31 != v35)
          {
            goto LABEL_411;
          }

          outlined consume of _Glass.Variant.ID(v12, v13);
          v26 = v422;
          goto LABEL_26;
        }

        if (v81 >= 0x40)
        {
          goto LABEL_242;
        }

        v121 = *(v77 + 16);
        v122 = *(v77 + 24);
        v123 = *(v77 + 48);
        v124 = *(v80 + 16);
        v125 = *(v80 + 24);
        v126 = *(v80 + 48);
        v381 = *(v377 + 16);
        v355 = *(v77 + 24);
        v406 = v121;
        v350 = *(v80 + 24);
        v346 = v124;
        if (v122 >> 6)
        {
          if (v122 >> 6 == 1)
          {
            if ((v125 & 0xC0) != 0x40)
            {
              goto LABEL_403;
            }

            v322 = *(v80 + 32);
            v327 = *(v77 + 32);
            v332 = *(v80 + 40);
            v340 = *(v77 + 40);
            v360 = *(v376 + 32);
            v362 = *(v377 + 32);
            v366 = *(v376 + 40);
            v370 = *(v377 + 40);
            *&v440[0] = *(v77 + 16);
            BYTE8(v440[0]) = v122 & 0x3F;
            v433 = v124;
            v434 = v125 & 0x3F;
            v127 = v78;
            outlined copy of _Glass.Variant.ID(v377, v378);
            outlined copy of _Glass.Variant.ID(v376, v375);
            outlined copy of _Glass.Variant.ID(v77, v127);
            outlined copy of _Glass.Variant.ID(v396, v392);
            outlined copy of _Glass.Variant.ID(v406, v355);
            outlined copy of _Glass.Variant.ID(v346, v350);
            outlined copy of _Glass.Variant.ID(v377, v378);
            outlined copy of _Glass.Variant.ID(v376, v375);
            outlined copy of _Glass.Variant.ID(v77, v387);
            outlined copy of _Glass.Variant.ID(v396, v392);
            outlined copy of _Glass.Variant.ID(v406, v355);
            outlined copy of _Glass.Variant.ID(v346, v350);
            v313 = specialized static Material.ID.== infix(_:_:)(v440, &v433);
            outlined consume of _Glass.Variant.ID(v406, v355);
            outlined consume of _Glass.Variant.ID(v346, v350);
            outlined consume of _Glass.Variant.ID(v346, v350);
            outlined consume of _Glass.Variant.ID(v406, v355);
            v129 = v77;
            v128 = v387;
            if ((v313 & 1) == 0)
            {
              goto LABEL_405;
            }
          }

          else
          {
            if (v121 | v122 ^ 0x80)
            {
              v187 = v125 & 0xC0;
              if (*(v77 + 24) == 128 && v121 == 1)
              {
                if (v187 != 128 || v124 != 1 || v125 != 128)
                {
                  goto LABEL_403;
                }

                v322 = *(v80 + 32);
                v327 = *(v77 + 32);
                v332 = *(v80 + 40);
                v340 = *(v77 + 40);
                v360 = *(v376 + 32);
                v362 = *(v377 + 32);
                v366 = *(v376 + 40);
                v370 = *(v377 + 40);
                v189 = v375;
                v190 = 1;
              }

              else
              {
                if (v187 != 128 || v124 != 2 || v125 != 128)
                {
                  goto LABEL_403;
                }

                v322 = *(v80 + 32);
                v327 = *(v77 + 32);
                v332 = *(v80 + 40);
                v340 = *(v77 + 40);
                v360 = *(v376 + 32);
                v362 = *(v377 + 32);
                v366 = *(v376 + 40);
                v370 = *(v377 + 40);
                v189 = v375;
                v190 = 2;
              }

              v352 = v190;
            }

            else
            {
              if ((v125 & 0xC0) != 0x80 || v124 || v125 != 128)
              {
LABEL_403:
                v204 = *(v377 + 24);
                outlined copy of _Glass.Variant.ID(v377, v378);
                outlined copy of _Glass.Variant.ID(v376, v375);
                outlined copy of _Glass.Variant.ID(v77, v204);
                outlined copy of _Glass.Variant.ID(v396, v392);
                outlined copy of _Glass.Variant.ID(v377, v378);
                outlined copy of _Glass.Variant.ID(v376, v375);
                outlined copy of _Glass.Variant.ID(v77, v204);
                outlined copy of _Glass.Variant.ID(v396, v392);
                outlined copy of _Glass.Variant.ID(v406, v355);
                outlined copy of _Glass.Variant.ID(v346, v350);
                outlined consume of _Glass.Variant.ID(v406, v355);
                v205 = v346;
                v206 = v350;
                goto LABEL_404;
              }

              v322 = *(v80 + 32);
              v327 = *(v77 + 32);
              v332 = *(v80 + 40);
              v340 = *(v77 + 40);
              v360 = *(v376 + 32);
              v362 = *(v377 + 32);
              v366 = *(v376 + 40);
              v370 = *(v377 + 40);
              v189 = v375;
              v352 = 0;
            }

            outlined copy of _Glass.Variant.ID(v377, v378);
            outlined copy of _Glass.Variant.ID(v376, v189);
            outlined copy of _Glass.Variant.ID(v77, v387);
            outlined copy of _Glass.Variant.ID(v396, v392);
            outlined copy of _Glass.Variant.ID(v377, v378);
            outlined copy of _Glass.Variant.ID(v376, v189);
            outlined copy of _Glass.Variant.ID(v77, v387);
            outlined copy of _Glass.Variant.ID(v396, v392);
            outlined consume of _Glass.Variant.ID(v406, v355);
            outlined consume of _Glass.Variant.ID(v352, 0x80u);
          }
        }

        else
        {
          if (v125 >= 0x40)
          {
            goto LABEL_403;
          }

          v322 = *(v80 + 32);
          v327 = *(v77 + 32);
          v332 = *(v80 + 40);
          v340 = *(v77 + 40);
          v360 = *(v376 + 32);
          v362 = *(v377 + 32);
          v366 = *(v376 + 40);
          v370 = *(v377 + 40);
          v285 = *(v121 + 40);
          v180 = *(v121 + 48);
          v291 = *(v121 + 32);
          v307 = *(v124 + 16);
          v280 = *(v124 + 32);
          v275 = *(v124 + 40);
          v181 = *(v124 + 48);
          v182 = *(v121 + 24);
          v301 = v182;
          v183 = *(v124 + 24);
          v316 = v183;
          *&v440[0] = *(v121 + 16);
          v296 = *&v440[0];
          BYTE8(v440[0]) = v182;
          v433 = v307;
          v434 = v183;
          v184 = v80;
          v185 = v78;
          outlined copy of _Glass.Variant.ID(v377, v378);
          outlined copy of _Glass.Variant.ID(v376, v375);
          outlined copy of _Glass.Variant.ID(v381, v185);
          outlined copy of _Glass.Variant.ID(v184, v392);
          outlined copy of _Glass.Variant.ID(v406, v355);
          outlined copy of _Glass.Variant.ID(v346, v350);
          outlined copy of _Glass.Variant.ID(v377, v378);
          outlined copy of _Glass.Variant.ID(v376, v375);
          outlined copy of _Glass.Variant.ID(v381, v185);
          outlined copy of _Glass.Variant.ID(v396, v392);
          outlined copy of _Glass.Variant.ID(v406, v355);
          outlined copy of _Glass.Variant.ID(v346, v350);
          outlined copy of _Glass.Variant.ID(v296, v301);
          outlined copy of _Glass.Variant.ID(v307, v316);
          v186 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
          outlined consume of _Glass.Variant.ID(v433, v434);
          outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
          if ((v186 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v406, v355);
            outlined consume of _Glass.Variant.ID(v346, v350);
            outlined consume of _Glass.Variant.ID(v346, v350);
            v205 = v406;
            v206 = v355;
LABEL_404:
            outlined consume of _Glass.Variant.ID(v205, v206);
            v129 = v381;
            v128 = v387;
LABEL_405:
            outlined consume of _Glass.Variant.ID(v129, v128);
            outlined consume of _Glass.Variant.ID(v396, v392);
LABEL_406:
            outlined consume of _Glass.Variant.ID(v396, v392);
            v198 = v129;
            v199 = v128;
LABEL_407:
            outlined consume of _Glass.Variant.ID(v198, v199);
            v84 = v376;
            v85 = v377;
LABEL_408:
            outlined consume of _Glass.Variant.ID(v85, v378);
            outlined consume of _Glass.Variant.ID(v84, v375);
            outlined consume of _Glass.Variant.ID(v84, v375);
            LOBYTE(v25) = v416;
LABEL_409:
            outlined consume of _Glass.Variant.ID(v85, v378);
LABEL_410:
            v5 = v417;
LABEL_411:
            _sypSgWOhTm_12(v435, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
            outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined consume of _Glass.Variant.ID(v12, v13);
            v51 = v422;
LABEL_67:
            outlined consume of _Glass.Variant.ID(v51, v25);
            outlined destroy of GlassContainer.Entry.ModelID(v3);
            v45 = v12;
            v46 = v13;
            v47 = v15;
            v48 = v14;
            v49 = 0;
LABEL_68:
            outlined consume of GlassContainer.Entry.ModelID(v45, v46, v47, v48, v49);
            v10 = v426;
            goto LABEL_5;
          }

          *&v440[0] = v291;
          BYTE8(v440[0]) = v285;
          v433 = v280;
          v434 = v275;
          outlined copy of _Glass.Variant.ID(v291, v285);
          outlined copy of _Glass.Variant.ID(v280, v275);
          v317 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
          outlined consume of _Glass.Variant.ID(v433, v434);
          outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
          outlined consume of _Glass.Variant.ID(v406, v355);
          outlined consume of _Glass.Variant.ID(v346, v350);
          outlined consume of _Glass.Variant.ID(v346, v350);
          outlined consume of _Glass.Variant.ID(v406, v355);
          v129 = v381;
          v128 = v387;
          if ((v317 & 1) == 0 || v180 != v181)
          {
            goto LABEL_405;
          }
        }

        if (v340 >> 6)
        {
          if (v340 >> 6 == 1)
          {
            v202 = v332;
            v203 = v327;
            if ((v332 & 0xC0) != 0x40)
            {
              goto LABEL_451;
            }

            *&v440[0] = v327;
            BYTE8(v440[0]) = v340 & 0x3F;
            v433 = v322;
            v434 = v332 & 0x3F;
            outlined copy of _Glass.Variant.ID(v322, v332);
            outlined copy of _Glass.Variant.ID(v327, v340);
            outlined copy of _Glass.Variant.ID(v322, v332);
            outlined copy of _Glass.Variant.ID(v327, v340);
            v411 = specialized static Material.ID.== infix(_:_:)(v440, &v433);
            outlined consume of _Glass.Variant.ID(v327, v340);
            outlined consume of _Glass.Variant.ID(v322, v332);
            outlined consume of _Glass.Variant.ID(v322, v332);
            outlined consume of _Glass.Variant.ID(v327, v340);
            v129 = v381;
            v128 = v387;
            outlined consume of _Glass.Variant.ID(v381, v387);
            outlined consume of _Glass.Variant.ID(v396, v392);
            if ((v411 & 1) == 0)
            {
              goto LABEL_406;
            }

            goto LABEL_504;
          }

          v413 = v3;
          v230 = v13;
          v231 = v12;
          v232 = v15;
          if (v327 | v340 ^ 0x80)
          {
            v233 = v327;
            if (v340 == 128 && v327 == 1)
            {
              v235 = v332;
              a2 = v424;
              v236 = v322;
              if ((v332 & 0xC0) != 0x80 || v322 != 1 || v332 != 128)
              {
                goto LABEL_452;
              }

              v238 = 1;
            }

            else
            {
              v235 = v332;
              a2 = v424;
              v236 = v322;
              if ((v332 & 0xC0) != 0x80 || v322 != 2 || v332 != 128)
              {
                goto LABEL_452;
              }

              v238 = 2;
            }
          }

          else
          {
            v233 = v327;
            v235 = v332;
            a2 = v424;
            v236 = v322;
            if ((v332 & 0xC0) != 0x80 || v322 || v332 != 128)
            {
              goto LABEL_452;
            }

            v238 = 0;
          }

          outlined copy of _Glass.Variant.ID(v238, 0x80u);
          outlined consume of _Glass.Variant.ID(v233, v340);
          outlined consume of _Glass.Variant.ID(v238, 0x80u);
          outlined consume of _Glass.Variant.ID(v233, v340);
          a2 = v424;
          v129 = v381;
          v128 = v387;
          v12 = v231;
          v13 = v230;
          v3 = v413;
        }

        else
        {
          v202 = v332;
          v203 = v327;
          if (v332 >= 0x40)
          {
LABEL_451:
            v413 = v3;
            v230 = v13;
            v231 = v12;
            v232 = v15;
            v233 = v203;
            v234 = v203;
            v235 = v202;
            outlined copy of _Glass.Variant.ID(v234, v340);
            v236 = v322;
LABEL_452:
            outlined copy of _Glass.Variant.ID(v236, v235);
            outlined consume of _Glass.Variant.ID(v233, v340);
            outlined consume of _Glass.Variant.ID(v236, v235);
            v129 = v381;
            v128 = v387;
            v15 = v232;
            v12 = v231;
            v13 = v230;
            goto LABEL_453;
          }

          v413 = v3;
          v309 = v13;
          v319 = v15;
          v298 = v14;
          v357 = *(v327 + 32);
          v353 = *(v327 + 40);
          v223 = *(v327 + 48);
          v225 = *(v322 + 16);
          v348 = *(v322 + 32);
          v303 = *(v322 + 40);
          v226 = *(v322 + 48);
          v227 = *(v327 + 24);
          v228 = *(v322 + 24);
          *&v440[0] = *(v327 + 16);
          v224 = *&v440[0];
          BYTE8(v440[0]) = v227;
          v433 = v225;
          v434 = v228;
          outlined copy of _Glass.Variant.ID(v322, v332);
          outlined copy of _Glass.Variant.ID(v327, v340);
          outlined copy of _Glass.Variant.ID(v322, v332);
          outlined copy of _Glass.Variant.ID(v327, v340);
          outlined copy of _Glass.Variant.ID(v224, v227);
          outlined copy of _Glass.Variant.ID(v225, v228);
          v229 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
          outlined consume of _Glass.Variant.ID(v433, v434);
          outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
          if ((v229 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v327, v340);
            outlined consume of _Glass.Variant.ID(v322, v332);
            outlined consume of _Glass.Variant.ID(v322, v332);
            outlined consume of _Glass.Variant.ID(v327, v340);
            a2 = v424;
            v129 = v381;
            v128 = v387;
            v14 = v298;
            v13 = v309;
            v15 = v319;
LABEL_453:
            v3 = v413;
            goto LABEL_405;
          }

          *&v440[0] = v357;
          BYTE8(v440[0]) = v353;
          v433 = v348;
          v434 = v303;
          outlined copy of _Glass.Variant.ID(v357, v353);
          outlined copy of _Glass.Variant.ID(v348, v303);
          v358 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
          outlined consume of _Glass.Variant.ID(v433, v434);
          outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
          outlined consume of _Glass.Variant.ID(v327, v340);
          outlined consume of _Glass.Variant.ID(v322, v332);
          outlined consume of _Glass.Variant.ID(v322, v332);
          outlined consume of _Glass.Variant.ID(v327, v340);
          a2 = v424;
          v129 = v381;
          v128 = v387;
          v14 = v298;
          v13 = v309;
          v15 = v319;
          v3 = v413;
          if ((v358 & 1) == 0 || v223 != v226)
          {
            goto LABEL_405;
          }
        }

        outlined consume of _Glass.Variant.ID(v129, v128);
        outlined consume of _Glass.Variant.ID(v396, v392);
LABEL_504:
        outlined consume of _Glass.Variant.ID(v396, v392);
        outlined consume of _Glass.Variant.ID(v129, v128);
        v84 = v376;
        v85 = v377;
        if (v123 != v126)
        {
          goto LABEL_408;
        }

        goto LABEL_236;
      }

      if (v33 >= 0x40)
      {
        goto LABEL_105;
      }

      v52 = *(v29 + 16);
      v53 = *(v29 + 24);
      v54 = *(v29 + 48);
      v55 = *(v32 + 16);
      v56 = *(v32 + 24);
      v57 = *(v32 + 48);
      v385 = *(v12 + 24);
      v390 = *(v12 + 16);
      v380 = *(v28 + 24);
      v395 = *(v28 + 16);
      v400 = *(v29 + 24);
      v361 = v55;
      v365 = v52;
      v369 = *(v32 + 24);
      if (v53 >> 6)
      {
        if (v53 >> 6 == 1)
        {
          if ((v56 & 0xC0) != 0x40)
          {
            goto LABEL_165;
          }

          v345 = *(v29 + 40);
          v349 = *(v32 + 32);
          v354 = *(v32 + 40);
          v359 = *(v29 + 32);
          v376 = *(v28 + 32);
          v377 = *(v12 + 32);
          v375 = *(v28 + 40);
          v378 = *(v12 + 40);
          v418 = v3->i8[9];
          v419 = v3[1].i64[0];
          v398 = v3[1].i64[1];
          v425 = 40 * v9;
          v433 = *(v29 + 16);
          v434 = v53 & 0x3F;
          v431 = v55;
          v432 = v56 & 0x3F;
          v58 = v32;
          v59 = v30;
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v29, v59);
          outlined copy of _Glass.Variant.ID(v58, v33);
          outlined copy of _Glass.Variant.ID(v365, v400);
          outlined copy of _Glass.Variant.ID(v361, v369);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v422, v416);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined copy of _Glass.Variant.ID(v29, v385);
          outlined copy of _Glass.Variant.ID(v58, v33);
          outlined copy of _Glass.Variant.ID(v365, v400);
          outlined copy of _Glass.Variant.ID(v361, v369);
          v337 = specialized static Material.ID.== infix(_:_:)(&v433, &v431);
          outlined consume of _Glass.Variant.ID(v365, v400);
          outlined consume of _Glass.Variant.ID(v361, v369);
          v60 = v385;
          v61 = v395;
          outlined consume of _Glass.Variant.ID(v361, v369);
          outlined consume of _Glass.Variant.ID(v365, v400);
          if ((v337 & 1) == 0)
          {
            goto LABEL_355;
          }
        }

        else
        {
          if (v52 | v53 ^ 0x80)
          {
            v94 = v56 & 0xC0;
            if (*(v29 + 24) == 128 && v52 == 1)
            {
              if (v94 != 128 || v55 != 1 || v56 != 128)
              {
                goto LABEL_165;
              }

              v345 = *(v29 + 40);
              v349 = *(v32 + 32);
              v354 = *(v32 + 40);
              v359 = *(v29 + 32);
              v376 = *(v3->i64[0] + 32);
              v377 = *(v12 + 32);
              v375 = *(v3->i64[0] + 40);
              v378 = *(v12 + 40);
              v418 = v3->i8[9];
              v419 = v3[1].i64[0];
              v398 = v3[1].i64[1];
              v425 = 40 * v9;
              v96 = *(v12 + 16);
              v97 = *(v3->i64[0] + 16);
              v98 = *(v12 + 24);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v96, v98);
              outlined copy of _Glass.Variant.ID(v97, v33);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              v99 = 1;
            }

            else
            {
              if (v94 != 128 || v55 != 2 || v56 != 128)
              {
                goto LABEL_165;
              }

              v345 = *(v29 + 40);
              v349 = *(v32 + 32);
              v354 = *(v32 + 40);
              v359 = *(v29 + 32);
              v376 = *(v3->i64[0] + 32);
              v377 = *(v12 + 32);
              v375 = *(v3->i64[0] + 40);
              v378 = *(v12 + 40);
              v418 = v3->i8[9];
              v419 = v3[1].i64[0];
              v398 = v3[1].i64[1];
              v425 = 40 * v9;
              v103 = *(v12 + 16);
              v97 = *(v3->i64[0] + 16);
              v98 = *(v12 + 24);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v103, v98);
              outlined copy of _Glass.Variant.ID(v97, v33);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              v99 = 2;
            }
          }

          else
          {
            if ((v56 & 0xC0) != 0x80 || v55 || v56 != 128)
            {
LABEL_165:
              v107 = *(v12 + 24);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v29, v107);
              outlined copy of _Glass.Variant.ID(v395, v33);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v422, v25);
              outlined copy of _Glass.Variant.ID(v12, v13);
              outlined copy of _Glass.Variant.ID(v29, v107);
              outlined copy of _Glass.Variant.ID(v395, v33);
              outlined copy of _Glass.Variant.ID(v365, v400);
              outlined copy of _Glass.Variant.ID(v361, v369);
              v61 = v395;
              outlined consume of _Glass.Variant.ID(v365, v400);
              v60 = v385;
              outlined consume of _Glass.Variant.ID(v361, v369);
              goto LABEL_355;
            }

            v345 = *(v29 + 40);
            v349 = *(v32 + 32);
            v354 = *(v32 + 40);
            v359 = *(v29 + 32);
            v376 = *(v28 + 32);
            v377 = *(v12 + 32);
            v375 = *(v28 + 40);
            v378 = *(v12 + 40);
            v418 = v3->i8[9];
            v419 = v3[1].i64[0];
            v398 = v3[1].i64[1];
            v425 = 40 * v9;
            v102 = *(v12 + 16);
            v97 = *(v28 + 16);
            v98 = *(v12 + 24);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined copy of _Glass.Variant.ID(v102, v98);
            outlined copy of _Glass.Variant.ID(v97, v33);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
            v99 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v422, v416);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined copy of _Glass.Variant.ID(v390, v98);
          outlined copy of _Glass.Variant.ID(v97, v33);
          outlined consume of _Glass.Variant.ID(v365, v400);
          outlined consume of _Glass.Variant.ID(v99, 0x80u);
        }

LABEL_159:
        if (v345 >> 6)
        {
          v104 = v359;
          v105 = v354;
          v106 = v349;
          if (v345 >> 6 == 1)
          {
            if ((v354 & 0xC0) != 0x40)
            {
              goto LABEL_225;
            }

            *&v440[0] = v359;
            BYTE8(v440[0]) = v345 & 0x3F;
            v433 = v349;
            v434 = v354 & 0x3F;
            outlined copy of _Glass.Variant.ID(v359, v345);
            outlined copy of _Glass.Variant.ID(v349, v354);
            outlined copy of _Glass.Variant.ID(v359, v345);
            outlined copy of _Glass.Variant.ID(v349, v354);
            v404 = specialized static Material.ID.== infix(_:_:)(v440, &v433);
            outlined consume of _Glass.Variant.ID(v359, v345);
            outlined consume of _Glass.Variant.ID(v349, v354);
            outlined consume of _Glass.Variant.ID(v349, v354);
            outlined consume of _Glass.Variant.ID(v359, v345);
            outlined consume of _Glass.Variant.ID(v390, v385);
            outlined consume of _Glass.Variant.ID(v395, v380);
            outlined consume of _Glass.Variant.ID(v395, v380);
            outlined consume of _Glass.Variant.ID(v390, v385);
            v38 = v422;
            v39 = v416;
            if ((v404 & 1) == 0 || v54 != v57)
            {
              goto LABEL_357;
            }

            goto LABEL_100;
          }

          if (v359 | v345 ^ 0x80)
          {
            v118 = v354 & 0xC0;
            if (v345 == 128 && v359 == 1)
            {
              if (v118 != 128 || v349 != 1 || v354 != 128)
              {
                goto LABEL_225;
              }

              v120 = 1;
            }

            else
            {
              if (v118 != 128 || v349 != 2 || v354 != 128)
              {
                goto LABEL_225;
              }

              v120 = 2;
            }
          }

          else
          {
            if ((v354 & 0xC0) != 0x80 || v349 || v354 != 128)
            {
LABEL_225:
              v145 = v104;
              v146 = v106;
              outlined copy of _Glass.Variant.ID(v104, v345);
              outlined copy of _Glass.Variant.ID(v146, v105);
              outlined consume of _Glass.Variant.ID(v145, v345);
              v147 = v146;
              v148 = v105;
              goto LABEL_354;
            }

            v120 = 0;
          }

          outlined consume of _Glass.Variant.ID(v359, v345);
          outlined consume of _Glass.Variant.ID(v120, 0x80u);
          v60 = v385;
          outlined consume of _Glass.Variant.ID(v390, v385);
          outlined consume of _Glass.Variant.ID(v395, v380);
          outlined consume of _Glass.Variant.ID(v395, v380);
LABEL_223:
          outlined consume of _Glass.Variant.ID(v390, v60);
          v38 = v422;
          v39 = v416;
          if (v54 != v57)
          {
            goto LABEL_357;
          }

          goto LABEL_100;
        }

        v105 = v354;
        v104 = v359;
        v106 = v349;
        if (v354 >= 0x40)
        {
          goto LABEL_225;
        }

        v108 = *(v359 + 16);
        v109 = *(v359 + 24);
        v110 = *(v359 + 48);
        v111 = *(v349 + 16);
        v112 = *(v349 + 24);
        v113 = *(v349 + 48);
        v363 = v111;
        v367 = *(v359 + 24);
        v405 = v108;
        v371 = *(v349 + 24);
        if (v109 >> 6)
        {
          if (v109 >> 6 == 1)
          {
            if ((v112 & 0xC0) != 0x40)
            {
              goto LABEL_385;
            }

            v331 = *(v359 + 32);
            v339 = *(v349 + 32);
            v326 = *(v349 + 40);
            v321 = *(v359 + 40);
            *&v440[0] = *(v359 + 16);
            BYTE8(v440[0]) = v109 & 0x3F;
            v433 = v111;
            v434 = v112 & 0x3F;
            v114 = v109;
            v115 = v345;
            outlined copy of _Glass.Variant.ID(v359, v345);
            outlined copy of _Glass.Variant.ID(v349, v354);
            outlined copy of _Glass.Variant.ID(v405, v114);
            outlined copy of _Glass.Variant.ID(v363, v371);
            outlined copy of _Glass.Variant.ID(v359, v345);
            outlined copy of _Glass.Variant.ID(v349, v354);
            outlined copy of _Glass.Variant.ID(v405, v114);
            outlined copy of _Glass.Variant.ID(v363, v371);
            v312 = specialized static Material.ID.== infix(_:_:)(v440, &v433);
            outlined consume of _Glass.Variant.ID(v405, v367);
            outlined consume of _Glass.Variant.ID(v363, v371);
            v116 = v359;
            v117 = v349;
            outlined consume of _Glass.Variant.ID(v363, v371);
            outlined consume of _Glass.Variant.ID(v405, v367);
            if ((v312 & 1) == 0)
            {
              goto LABEL_386;
            }
          }

          else
          {
            if (v108 | v109 ^ 0x80)
            {
              v176 = v112 & 0xC0;
              if (*(v359 + 24) == 128 && v108 == 1)
              {
                if (v176 != 128 || v111 != 1 || v112 != 128)
                {
                  goto LABEL_385;
                }

                v331 = *(v359 + 32);
                v339 = *(v349 + 32);
                v326 = *(v349 + 40);
                v321 = *(v359 + 40);
                v178 = v349;
                v179 = 1;
              }

              else
              {
                if (v176 != 128 || v111 != 2 || v112 != 128)
                {
                  goto LABEL_385;
                }

                v331 = *(v359 + 32);
                v339 = *(v349 + 32);
                v326 = *(v349 + 40);
                v321 = *(v359 + 40);
                v178 = v349;
                v179 = 2;
              }

              v372 = v179;
            }

            else
            {
              if ((v112 & 0xC0) != 0x80 || v111 || v112 != 128)
              {
LABEL_385:
                outlined copy of _Glass.Variant.ID(v359, v345);
                outlined copy of _Glass.Variant.ID(v349, v354);
                outlined copy of _Glass.Variant.ID(v359, v345);
                outlined copy of _Glass.Variant.ID(v349, v354);
                outlined copy of _Glass.Variant.ID(v108, v367);
                outlined copy of _Glass.Variant.ID(v363, v371);
                v116 = v359;
                outlined consume of _Glass.Variant.ID(v108, v367);
                v115 = v345;
                v117 = v349;
                outlined consume of _Glass.Variant.ID(v363, v371);
LABEL_386:
                outlined consume of _Glass.Variant.ID(v116, v115);
                outlined consume of _Glass.Variant.ID(v117, v105);
LABEL_387:
                outlined consume of _Glass.Variant.ID(v117, v105);
                v147 = v116;
                v148 = v115;
                goto LABEL_354;
              }

              v331 = *(v359 + 32);
              v339 = *(v349 + 32);
              v326 = *(v349 + 40);
              v321 = *(v359 + 40);
              v178 = v349;
              v372 = 0;
            }

            outlined copy of _Glass.Variant.ID(v359, v345);
            outlined copy of _Glass.Variant.ID(v178, v354);
            outlined copy of _Glass.Variant.ID(v359, v345);
            outlined copy of _Glass.Variant.ID(v178, v354);
            outlined consume of _Glass.Variant.ID(v108, v367);
            outlined consume of _Glass.Variant.ID(v372, 0x80u);
          }
        }

        else
        {
          if (v112 >= 0x40)
          {
            goto LABEL_385;
          }

          v331 = *(v359 + 32);
          v339 = *(v349 + 32);
          v326 = *(v349 + 40);
          v321 = *(v359 + 40);
          v290 = *(v108 + 32);
          v284 = *(v108 + 40);
          v171 = *(v108 + 48);
          v314 = *(v111 + 16);
          v279 = *(v111 + 32);
          v274 = *(v111 + 40);
          v172 = *(v111 + 48);
          v173 = *(v108 + 24);
          v295 = v173;
          v174 = *(v111 + 24);
          v306 = v174;
          *&v440[0] = *(v108 + 16);
          v300 = *&v440[0];
          BYTE8(v440[0]) = v173;
          v433 = v314;
          v434 = v174;
          outlined copy of _Glass.Variant.ID(v359, v345);
          outlined copy of _Glass.Variant.ID(v349, v354);
          outlined copy of _Glass.Variant.ID(v108, v367);
          outlined copy of _Glass.Variant.ID(v363, v371);
          outlined copy of _Glass.Variant.ID(v359, v345);
          outlined copy of _Glass.Variant.ID(v349, v354);
          outlined copy of _Glass.Variant.ID(v108, v367);
          outlined copy of _Glass.Variant.ID(v363, v371);
          outlined copy of _Glass.Variant.ID(v300, v295);
          outlined copy of _Glass.Variant.ID(v314, v306);
          v175 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
          outlined consume of _Glass.Variant.ID(v433, v434);
          outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
          if ((v175 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v405, v367);
            outlined consume of _Glass.Variant.ID(v363, v371);
            outlined consume of _Glass.Variant.ID(v363, v371);
            outlined consume of _Glass.Variant.ID(v405, v367);
            v115 = v345;
            v117 = v349;
            v116 = v359;
            goto LABEL_386;
          }

          *&v440[0] = v290;
          BYTE8(v440[0]) = v284;
          v433 = v279;
          v434 = v274;
          outlined copy of _Glass.Variant.ID(v290, v284);
          outlined copy of _Glass.Variant.ID(v279, v274);
          v315 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
          outlined consume of _Glass.Variant.ID(v433, v434);
          outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
          outlined consume of _Glass.Variant.ID(v405, v367);
          outlined consume of _Glass.Variant.ID(v363, v371);
          outlined consume of _Glass.Variant.ID(v363, v371);
          outlined consume of _Glass.Variant.ID(v405, v367);
          v115 = v345;
          v117 = v349;
          v116 = v359;
          if ((v315 & 1) == 0 || v171 != v172)
          {
            goto LABEL_386;
          }
        }

        if (v321 >> 6)
        {
          if (v321 >> 6 == 1)
          {
            v200 = v326;
            v201 = v331;
            if ((v326 & 0xC0) != 0x40)
            {
              goto LABEL_433;
            }

            *&v440[0] = v331;
            BYTE8(v440[0]) = v321 & 0x3F;
            v433 = v339;
            v434 = v326 & 0x3F;
            outlined copy of _Glass.Variant.ID(v339, v326);
            outlined copy of _Glass.Variant.ID(v331, v321);
            outlined copy of _Glass.Variant.ID(v339, v326);
            outlined copy of _Glass.Variant.ID(v331, v321);
            v410 = specialized static Material.ID.== infix(_:_:)(v440, &v433);
            outlined consume of _Glass.Variant.ID(v331, v321);
            outlined consume of _Glass.Variant.ID(v339, v326);
            outlined consume of _Glass.Variant.ID(v339, v326);
            outlined consume of _Glass.Variant.ID(v331, v321);
            v116 = v359;
            v115 = v345;
            outlined consume of _Glass.Variant.ID(v359, v345);
            v117 = v349;
            outlined consume of _Glass.Variant.ID(v349, v354);
            if ((v410 & 1) == 0)
            {
              goto LABEL_387;
            }

            goto LABEL_492;
          }

          v412 = v3;
          v214 = v13;
          v215 = v12;
          v216 = v15;
          v201 = v331;
          if (v331 | v321 ^ 0x80)
          {
            if (v321 == 128 && v331 == 1)
            {
              v218 = v326;
              if ((v326 & 0xC0) != 0x80 || v339 != 1 || v326 != 128)
              {
                goto LABEL_434;
              }

              v221 = v331;
              v222 = 1;
            }

            else
            {
              v218 = v326;
              if ((v326 & 0xC0) != 0x80 || v339 != 2 || v326 != 128)
              {
                goto LABEL_434;
              }

              v221 = v331;
              v222 = 2;
            }
          }

          else
          {
            v218 = v326;
            if ((v326 & 0xC0) != 0x80 || v339 || v326 != 128)
            {
              goto LABEL_434;
            }

            v221 = v331;
            v222 = 0;
          }

          outlined copy of _Glass.Variant.ID(v222, 0x80u);
          outlined consume of _Glass.Variant.ID(v221, v321);
          outlined consume of _Glass.Variant.ID(v222, 0x80u);
          outlined consume of _Glass.Variant.ID(v221, v321);
          v115 = v345;
          v117 = v349;
          v116 = v359;
          v12 = v215;
          v13 = v214;
          v3 = v412;
        }

        else
        {
          v200 = v326;
          v201 = v331;
          if (v326 >= 0x40)
          {
LABEL_433:
            v412 = v3;
            v214 = v13;
            v215 = v12;
            v216 = v15;
            v217 = v200;
            outlined copy of _Glass.Variant.ID(v201, v321);
            v218 = v217;
LABEL_434:
            v219 = v218;
            outlined copy of _Glass.Variant.ID(v339, v218);
            outlined consume of _Glass.Variant.ID(v201, v321);
            outlined consume of _Glass.Variant.ID(v339, v219);
            v115 = v345;
            v117 = v349;
            v116 = v359;
            v105 = v354;
            v15 = v216;
            v12 = v215;
            v13 = v214;
            goto LABEL_435;
          }

          v412 = v3;
          v302 = v12;
          v308 = v13;
          v318 = v15;
          v373 = *(v331 + 32);
          v368 = *(v331 + 40);
          v207 = *(v331 + 48);
          v209 = *(v339 + 16);
          v364 = *(v339 + 32);
          v297 = *(v339 + 40);
          v210 = *(v339 + 48);
          v211 = *(v331 + 24);
          v212 = *(v339 + 24);
          *&v440[0] = *(v331 + 16);
          v208 = *&v440[0];
          BYTE8(v440[0]) = v211;
          v433 = v209;
          v434 = v212;
          outlined copy of _Glass.Variant.ID(v339, v326);
          outlined copy of _Glass.Variant.ID(v331, v321);
          outlined copy of _Glass.Variant.ID(v339, v326);
          outlined copy of _Glass.Variant.ID(v331, v321);
          outlined copy of _Glass.Variant.ID(v208, v211);
          outlined copy of _Glass.Variant.ID(v209, v212);
          v213 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
          outlined consume of _Glass.Variant.ID(v433, v434);
          outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
          if ((v213 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v331, v321);
            outlined consume of _Glass.Variant.ID(v339, v326);
            outlined consume of _Glass.Variant.ID(v339, v326);
            outlined consume of _Glass.Variant.ID(v331, v321);
            v115 = v345;
            v117 = v349;
            v116 = v359;
            v13 = v308;
            v15 = v318;
            v12 = v302;
LABEL_435:
            v3 = v412;
            goto LABEL_386;
          }

          *&v440[0] = v373;
          BYTE8(v440[0]) = v368;
          v433 = v364;
          v434 = v297;
          outlined copy of _Glass.Variant.ID(v373, v368);
          outlined copy of _Glass.Variant.ID(v364, v297);
          v374 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
          outlined consume of _Glass.Variant.ID(v433, v434);
          outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
          outlined consume of _Glass.Variant.ID(v331, v321);
          outlined consume of _Glass.Variant.ID(v339, v326);
          outlined consume of _Glass.Variant.ID(v339, v326);
          outlined consume of _Glass.Variant.ID(v331, v321);
          v115 = v345;
          v117 = v349;
          v116 = v359;
          v13 = v308;
          v15 = v318;
          v12 = v302;
          v3 = v412;
          if ((v374 & 1) == 0 || v207 != v210)
          {
            goto LABEL_386;
          }
        }

        outlined consume of _Glass.Variant.ID(v116, v115);
        outlined consume of _Glass.Variant.ID(v117, v354);
LABEL_492:
        outlined consume of _Glass.Variant.ID(v117, v354);
        outlined consume of _Glass.Variant.ID(v116, v115);
        v60 = v385;
        outlined consume of _Glass.Variant.ID(v390, v385);
        outlined consume of _Glass.Variant.ID(v395, v380);
        outlined consume of _Glass.Variant.ID(v395, v380);
        if (v110 != v113)
        {
          goto LABEL_356;
        }

        goto LABEL_223;
      }

      if (v56 >= 0x40)
      {
        goto LABEL_165;
      }

      v338 = *(v52 + 16);
      v311 = *(v52 + 32);
      v89 = *(v52 + 48);
      v320 = *(v55 + 16);
      v325 = *(v52 + 24);
      v330 = *(v55 + 24);
      v305 = *(v55 + 32);
      v299 = *(v55 + 40);
      v90 = *(v55 + 48);
      if (v325 >> 6)
      {
        if (v325 >> 6 == 1)
        {
          if ((v330 & 0xC0) != 0x40)
          {
            goto LABEL_259;
          }

          v294 = *(v52 + 40);
          v345 = *(v29 + 40);
          v349 = *(v32 + 32);
          v354 = *(v32 + 40);
          v359 = *(v29 + 32);
          v376 = *(v28 + 32);
          v377 = *(v12 + 32);
          v375 = *(v28 + 40);
          v378 = *(v12 + 40);
          v418 = v3->i8[9];
          v419 = v3[1].i64[0];
          v398 = v3[1].i64[1];
          v425 = 40 * v9;
          v433 = *(v52 + 16);
          v434 = v325 & 0x3F;
          v431 = v320;
          v432 = v330 & 0x3F;
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v29, v385);
          outlined copy of _Glass.Variant.ID(v395, v33);
          outlined copy of _Glass.Variant.ID(v365, v400);
          outlined copy of _Glass.Variant.ID(v361, v369);
          outlined copy of _Glass.Variant.ID(v338, v325);
          outlined copy of _Glass.Variant.ID(v320, v330);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v422, v25);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined copy of _Glass.Variant.ID(v29, v385);
          outlined copy of _Glass.Variant.ID(v395, v33);
          outlined copy of _Glass.Variant.ID(v365, v400);
          outlined copy of _Glass.Variant.ID(v361, v369);
          outlined copy of _Glass.Variant.ID(v338, v325);
          outlined copy of _Glass.Variant.ID(v320, v330);
          v287 = specialized static Material.ID.== infix(_:_:)(&v433, &v431);
          outlined consume of _Glass.Variant.ID(v338, v325);
          outlined consume of _Glass.Variant.ID(v320, v330);
          v91 = v369;
          v92 = v365;
          outlined consume of _Glass.Variant.ID(v320, v330);
          v93 = v400;
          outlined consume of _Glass.Variant.ID(v338, v325);
          if ((v287 & 1) == 0)
          {
            goto LABEL_352;
          }
        }

        else
        {
          if (v338 | v325 ^ 0x80)
          {
            if (*(v52 + 24) == 128 && v338 == 1)
            {
              if ((v330 & 0xC0) != 0x80 || v320 != 1 || v330 != 128)
              {
                goto LABEL_259;
              }

              v294 = *(v52 + 40);
              v345 = *(v29 + 40);
              v349 = *(v32 + 32);
              v354 = *(v32 + 40);
              v359 = *(v29 + 32);
              v376 = *(v28 + 32);
              v377 = *(v12 + 32);
              v375 = *(v28 + 40);
              v378 = *(v12 + 40);
              v418 = v3->i8[9];
              v419 = v3[1].i64[0];
              v398 = v3[1].i64[1];
              v425 = 40 * v9;
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              v140 = v385;
              outlined copy of _Glass.Variant.ID(v29, v385);
              v141 = v395;
              v142 = v380;
              outlined copy of _Glass.Variant.ID(v395, v380);
              v143 = v400;
              outlined copy of _Glass.Variant.ID(v365, v400);
              outlined copy of _Glass.Variant.ID(v361, v369);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              v144 = 1;
            }

            else
            {
              if ((v330 & 0xC0) != 0x80 || v320 != 2 || v330 != 128)
              {
                goto LABEL_259;
              }

              v294 = *(v52 + 40);
              v345 = *(v29 + 40);
              v349 = *(v32 + 32);
              v354 = *(v32 + 40);
              v359 = *(v29 + 32);
              v376 = *(v28 + 32);
              v377 = *(v12 + 32);
              v375 = *(v28 + 40);
              v378 = *(v12 + 40);
              v418 = v3->i8[9];
              v419 = v3[1].i64[0];
              v398 = v3[1].i64[1];
              v425 = 40 * v9;
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              v140 = v385;
              outlined copy of _Glass.Variant.ID(v29, v385);
              v141 = v395;
              v142 = v380;
              outlined copy of _Glass.Variant.ID(v395, v380);
              v143 = v400;
              outlined copy of _Glass.Variant.ID(v365, v400);
              outlined copy of _Glass.Variant.ID(v361, v369);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              v144 = 2;
            }

            v333 = v144;
          }

          else
          {
            if ((v330 & 0xC0) != 0x80 || v320 || v330 != 128)
            {
LABEL_259:
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v29, v385);
              outlined copy of _Glass.Variant.ID(v395, v33);
              outlined copy of _Glass.Variant.ID(v365, v400);
              outlined copy of _Glass.Variant.ID(v361, v369);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v422, v25);
              outlined copy of _Glass.Variant.ID(v12, v13);
              outlined copy of _Glass.Variant.ID(v29, v385);
              outlined copy of _Glass.Variant.ID(v395, v33);
              outlined copy of _Glass.Variant.ID(v365, v400);
              outlined copy of _Glass.Variant.ID(v361, v369);
              outlined copy of _Glass.Variant.ID(v338, v325);
              outlined copy of _Glass.Variant.ID(v320, v330);
              v91 = v369;
              outlined consume of _Glass.Variant.ID(v338, v325);
              v93 = v400;
              v92 = v365;
              outlined consume of _Glass.Variant.ID(v320, v330);
              goto LABEL_352;
            }

            v294 = *(v52 + 40);
            v345 = *(v29 + 40);
            v349 = *(v32 + 32);
            v354 = *(v32 + 40);
            v359 = *(v29 + 32);
            v376 = *(v28 + 32);
            v377 = *(v12 + 32);
            v375 = *(v28 + 40);
            v378 = *(v12 + 40);
            v418 = v3->i8[9];
            v419 = v3[1].i64[0];
            v398 = v3[1].i64[1];
            v425 = 40 * v9;
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            v140 = v385;
            outlined copy of _Glass.Variant.ID(v29, v385);
            v141 = v395;
            v142 = v380;
            outlined copy of _Glass.Variant.ID(v395, v380);
            v143 = v400;
            outlined copy of _Glass.Variant.ID(v365, v400);
            outlined copy of _Glass.Variant.ID(v361, v369);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
            v333 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v422, v416);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined copy of _Glass.Variant.ID(v390, v140);
          outlined copy of _Glass.Variant.ID(v141, v142);
          outlined copy of _Glass.Variant.ID(v365, v143);
          outlined copy of _Glass.Variant.ID(v361, v369);
          outlined consume of _Glass.Variant.ID(v338, v325);
          outlined consume of _Glass.Variant.ID(v333, 0x80u);
        }
      }

      else
      {
        if (v330 >= 0x40)
        {
          goto LABEL_259;
        }

        v294 = *(v52 + 40);
        v345 = *(v29 + 40);
        v349 = *(v32 + 32);
        v354 = *(v32 + 40);
        v359 = *(v29 + 32);
        v375 = *(v28 + 40);
        v377 = *(v12 + 32);
        v378 = *(v12 + 40);
        v418 = v3->i8[9];
        v419 = v3[1].i64[0];
        v398 = v3[1].i64[1];
        v425 = 40 * v9;
        v133 = *(v338 + 24);
        v271 = *(v338 + 32);
        v270 = *(v338 + 40);
        v134 = *(v338 + 48);
        v277 = *(v320 + 16);
        v282 = *(v338 + 16);
        v288 = *(v320 + 24);
        v269 = *(v320 + 32);
        v268 = *(v320 + 40);
        v135 = *(v320 + 48);
        outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
        v272 = v133;
        if (v133 >> 6)
        {
          if (v133 >> 6 == 1)
          {
            if ((v288 & 0xC0) != 0x40)
            {
              goto LABEL_326;
            }

            v376 = v34;
            v433 = v282;
            v434 = v133 & 0x3F;
            v431 = v277;
            v432 = v288 & 0x3F;
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined copy of _Glass.Variant.ID(v390, v385);
            outlined copy of _Glass.Variant.ID(v395, v33);
            outlined copy of _Glass.Variant.ID(v365, v400);
            outlined copy of _Glass.Variant.ID(v361, v369);
            v136 = v325;
            outlined copy of _Glass.Variant.ID(v338, v325);
            v137 = v330;
            outlined copy of _Glass.Variant.ID(v320, v330);
            outlined copy of _Glass.Variant.ID(v277, v288);
            outlined copy of _Glass.Variant.ID(v282, v133);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined copy of _Glass.Variant.ID(v422, v416);
            outlined copy of _Glass.Variant.ID(v12, v13);
            outlined copy of _Glass.Variant.ID(v390, v385);
            outlined copy of _Glass.Variant.ID(v395, v380);
            outlined copy of _Glass.Variant.ID(v365, v400);
            outlined copy of _Glass.Variant.ID(v361, v369);
            outlined copy of _Glass.Variant.ID(v338, v325);
            outlined copy of _Glass.Variant.ID(v320, v330);
            outlined copy of _Glass.Variant.ID(v277, v288);
            outlined copy of _Glass.Variant.ID(v282, v133);
            v265 = specialized static Material.ID.== infix(_:_:)(&v433, &v431);
            outlined consume of _Glass.Variant.ID(v282, v133);
            outlined consume of _Glass.Variant.ID(v277, v288);
            v138 = v338;
            outlined consume of _Glass.Variant.ID(v277, v288);
            outlined consume of _Glass.Variant.ID(v282, v133);
            if ((v265 & 1) == 0)
            {
              goto LABEL_328;
            }
          }

          else
          {
            if (v282 | v133 ^ 0x80)
            {
              if (v133 == 128 && v282 == 1)
              {
                if ((v288 & 0xC0) != 0x80 || v277 != 1 || v288 != 128)
                {
                  goto LABEL_327;
                }

                v376 = v34;
                outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
                outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
                outlined copy of _Glass.Variant.ID(v390, v385);
                outlined copy of _Glass.Variant.ID(v395, v33);
                outlined copy of _Glass.Variant.ID(v365, v400);
                v195 = v369;
                outlined copy of _Glass.Variant.ID(v361, v369);
                v136 = v325;
                outlined copy of _Glass.Variant.ID(v338, v325);
                v137 = v330;
                outlined copy of _Glass.Variant.ID(v320, v330);
                outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
                v196 = 1;
              }

              else
              {
                if ((v288 & 0xC0) != 0x80 || v277 != 2 || v288 != 128)
                {
                  goto LABEL_327;
                }

                v376 = v34;
                outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
                outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
                outlined copy of _Glass.Variant.ID(v390, v385);
                outlined copy of _Glass.Variant.ID(v395, v33);
                outlined copy of _Glass.Variant.ID(v365, v400);
                v195 = v369;
                outlined copy of _Glass.Variant.ID(v361, v369);
                v136 = v325;
                outlined copy of _Glass.Variant.ID(v338, v325);
                v137 = v330;
                outlined copy of _Glass.Variant.ID(v320, v330);
                outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
                v196 = 2;
              }
            }

            else
            {
              if ((v288 & 0xC0) != 0x80 || v277 || v288 != 128)
              {
                goto LABEL_327;
              }

              v376 = v34;
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
              outlined copy of _Glass.Variant.ID(v390, v385);
              outlined copy of _Glass.Variant.ID(v395, v33);
              outlined copy of _Glass.Variant.ID(v365, v400);
              v195 = v369;
              outlined copy of _Glass.Variant.ID(v361, v369);
              v136 = v325;
              outlined copy of _Glass.Variant.ID(v338, v325);
              v137 = v330;
              outlined copy of _Glass.Variant.ID(v320, v330);
              outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
              v196 = 0;
            }

            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined copy of _Glass.Variant.ID(v422, v416);
            outlined copy of _Glass.Variant.ID(v12, v13);
            outlined copy of _Glass.Variant.ID(v390, v385);
            outlined copy of _Glass.Variant.ID(v395, v380);
            outlined copy of _Glass.Variant.ID(v365, v400);
            outlined copy of _Glass.Variant.ID(v361, v195);
            outlined copy of _Glass.Variant.ID(v338, v136);
            outlined copy of _Glass.Variant.ID(v320, v137);
            outlined copy of _Glass.Variant.ID(v196, 0x80u);
            outlined consume of _Glass.Variant.ID(v282, v272);
            outlined consume of _Glass.Variant.ID(v196, 0x80u);
          }
        }

        else
        {
          if (v288 >= 0x40)
          {
LABEL_326:
            outlined copy of _Glass.Variant.ID(v282, v133);
LABEL_327:
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined copy of _Glass.Variant.ID(v390, v385);
            outlined copy of _Glass.Variant.ID(v395, v33);
            outlined copy of _Glass.Variant.ID(v365, v400);
            outlined copy of _Glass.Variant.ID(v361, v369);
            outlined copy of _Glass.Variant.ID(v338, v325);
            outlined copy of _Glass.Variant.ID(v320, v330);
            outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
            outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
            outlined copy of _Glass.Variant.ID(v422, v25);
            outlined copy of _Glass.Variant.ID(v12, v13);
            outlined copy of _Glass.Variant.ID(v390, v385);
            outlined copy of _Glass.Variant.ID(v395, v33);
            outlined copy of _Glass.Variant.ID(v365, v400);
            outlined copy of _Glass.Variant.ID(v361, v369);
            outlined copy of _Glass.Variant.ID(v338, v325);
            outlined copy of _Glass.Variant.ID(v320, v330);
            outlined copy of _Glass.Variant.ID(v277, v288);
            outlined consume of _Glass.Variant.ID(v282, v133);
            v138 = v338;
            v137 = v330;
            v136 = v325;
            outlined consume of _Glass.Variant.ID(v277, v288);
            goto LABEL_328;
          }

          v376 = v34;
          v261 = *(v282 + 32);
          v260 = *(v282 + 40);
          v266 = *(v277 + 16);
          v259 = *(v277 + 32);
          v258 = *(v277 + 40);
          v256 = *(v277 + 48);
          v257 = *(v282 + 48);
          v262 = *(v282 + 24);
          v264 = *(v277 + 24);
          v433 = *(v282 + 16);
          v263 = v433;
          v434 = v262;
          v431 = v266;
          v432 = v264;
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v390, v385);
          outlined copy of _Glass.Variant.ID(v395, v33);
          outlined copy of _Glass.Variant.ID(v365, v400);
          outlined copy of _Glass.Variant.ID(v361, v369);
          v136 = v325;
          outlined copy of _Glass.Variant.ID(v338, v325);
          v137 = v330;
          outlined copy of _Glass.Variant.ID(v320, v330);
          outlined copy of _Glass.Variant.ID(v277, v288);
          outlined copy of _Glass.Variant.ID(v282, v133);
          outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
          outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined copy of _Glass.Variant.ID(v422, v416);
          outlined copy of _Glass.Variant.ID(v12, v13);
          outlined copy of _Glass.Variant.ID(v390, v385);
          outlined copy of _Glass.Variant.ID(v395, v380);
          outlined copy of _Glass.Variant.ID(v365, v400);
          outlined copy of _Glass.Variant.ID(v361, v369);
          outlined copy of _Glass.Variant.ID(v338, v325);
          outlined copy of _Glass.Variant.ID(v320, v330);
          outlined copy of _Glass.Variant.ID(v277, v288);
          outlined copy of _Glass.Variant.ID(v282, v133);
          outlined copy of _Glass.Variant.ID(v263, v262);
          outlined copy of _Glass.Variant.ID(v266, v264);
          v191 = specialized static _Glass.Variant.ID.== infix(_:_:)(&v433, &v431);
          outlined consume of _Glass.Variant.ID(v431, v432);
          outlined consume of _Glass.Variant.ID(v433, v434);
          if ((v191 & 1) == 0)
          {
            outlined consume of _Glass.Variant.ID(v282, v272);
            outlined consume of _Glass.Variant.ID(v277, v288);
            outlined consume of _Glass.Variant.ID(v277, v288);
            outlined consume of _Glass.Variant.ID(v282, v272);
            v138 = v338;
LABEL_328:
            outlined consume of _Glass.Variant.ID(v138, v136);
            outlined consume of _Glass.Variant.ID(v320, v137);
            outlined consume of _Glass.Variant.ID(v320, v137);
            v192 = v138;
            v193 = v136;
            goto LABEL_351;
          }

          *&v440[0] = v261;
          BYTE8(v440[0]) = v260;
          v433 = v259;
          v434 = v258;
          outlined copy of _Glass.Variant.ID(v261, v260);
          outlined copy of _Glass.Variant.ID(v259, v258);
          v267 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
          outlined consume of _Glass.Variant.ID(v433, v434);
          outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
          outlined consume of _Glass.Variant.ID(v282, v272);
          outlined consume of _Glass.Variant.ID(v277, v288);
          outlined consume of _Glass.Variant.ID(v277, v288);
          outlined consume of _Glass.Variant.ID(v282, v272);
          v138 = v338;
          if ((v267 & 1) == 0 || v257 != v256)
          {
            goto LABEL_328;
          }
        }

        *&v440[0] = v271;
        BYTE8(v440[0]) = v270;
        v433 = v269;
        v434 = v268;
        outlined copy of _Glass.Variant.ID(v271, v270);
        outlined copy of _Glass.Variant.ID(v269, v268);
        v292 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
        outlined consume of _Glass.Variant.ID(v433, v434);
        outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
        outlined consume of _Glass.Variant.ID(v338, v136);
        outlined consume of _Glass.Variant.ID(v320, v137);
        outlined consume of _Glass.Variant.ID(v320, v137);
        outlined consume of _Glass.Variant.ID(v338, v136);
        v93 = v400;
        v92 = v365;
        v91 = v369;
        if ((v292 & 1) == 0 || v134 != v135)
        {
          goto LABEL_352;
        }
      }

      if (v294 >> 6)
      {
        v151 = v311;
        v152 = v299;
        if (v294 >> 6 == 1)
        {
          if ((v299 & 0xC0) != 0x40)
          {
            goto LABEL_350;
          }

          *&v440[0] = v311;
          BYTE8(v440[0]) = v294 & 0x3F;
          v433 = v305;
          v434 = v299 & 0x3F;
          outlined copy of _Glass.Variant.ID(v311, v294);
          outlined copy of _Glass.Variant.ID(v305, v299);
          outlined copy of _Glass.Variant.ID(v311, v294);
          outlined copy of _Glass.Variant.ID(v305, v299);
          v341 = specialized static Material.ID.== infix(_:_:)(v440, &v433);
          outlined consume of _Glass.Variant.ID(v311, v294);
          outlined consume of _Glass.Variant.ID(v305, v299);
          outlined consume of _Glass.Variant.ID(v305, v299);
          outlined consume of _Glass.Variant.ID(v311, v294);
          outlined consume of _Glass.Variant.ID(v365, v400);
          outlined consume of _Glass.Variant.ID(v361, v369);
          outlined consume of _Glass.Variant.ID(v361, v369);
          outlined consume of _Glass.Variant.ID(v365, v400);
          v60 = v385;
          LOBYTE(v33) = v380;
          v61 = v395;
          if ((v341 & 1) == 0 || v89 != v90)
          {
            goto LABEL_355;
          }

          goto LABEL_159;
        }

        if (v311 | v294 ^ 0x80)
        {
          v158 = v299 & 0xC0;
          if (v294 == 128 && v311 == 1)
          {
            if (v158 != 128 || v305 != 1 || v299 != 128)
            {
              goto LABEL_350;
            }

            v160 = 1;
          }

          else
          {
            if (v158 != 128 || v305 != 2 || v299 != 128)
            {
              goto LABEL_350;
            }

            v160 = 2;
          }
        }

        else
        {
          if ((v299 & 0xC0) != 0x80 || v305 || v299 != 128)
          {
LABEL_350:
            v197 = v151;
            outlined copy of _Glass.Variant.ID(v151, v294);
            outlined copy of _Glass.Variant.ID(v305, v152);
            outlined consume of _Glass.Variant.ID(v197, v294);
            v192 = v305;
            v193 = v152;
            goto LABEL_351;
          }

          v160 = 0;
        }

        outlined consume of _Glass.Variant.ID(v311, v294);
        outlined consume of _Glass.Variant.ID(v160, 0x80u);
        v92 = v365;
        v93 = v400;
        outlined consume of _Glass.Variant.ID(v365, v400);
        outlined consume of _Glass.Variant.ID(v361, v369);
        outlined consume of _Glass.Variant.ID(v361, v369);
      }

      else
      {
        v152 = v299;
        v151 = v311;
        if (v299 >= 0x40)
        {
          goto LABEL_350;
        }

        v289 = *(v311 + 32);
        v283 = *(v311 + 40);
        v153 = *(v311 + 48);
        v342 = *(v305 + 16);
        v278 = *(v305 + 32);
        v273 = *(v305 + 40);
        v154 = *(v305 + 48);
        v155 = *(v311 + 24);
        v323 = v155;
        v156 = *(v305 + 24);
        v334 = v156;
        *&v440[0] = *(v311 + 16);
        v328 = *&v440[0];
        BYTE8(v440[0]) = v155;
        v433 = v342;
        v434 = v156;
        outlined copy of _Glass.Variant.ID(v311, v294);
        outlined copy of _Glass.Variant.ID(v305, v299);
        outlined copy of _Glass.Variant.ID(v311, v294);
        outlined copy of _Glass.Variant.ID(v305, v299);
        outlined copy of _Glass.Variant.ID(v328, v323);
        outlined copy of _Glass.Variant.ID(v342, v334);
        v157 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
        outlined consume of _Glass.Variant.ID(v433, v434);
        outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
        if ((v157 & 1) == 0)
        {
          outlined consume of _Glass.Variant.ID(v311, v294);
          outlined consume of _Glass.Variant.ID(v305, v299);
          outlined consume of _Glass.Variant.ID(v305, v299);
          v192 = v311;
          v193 = v294;
LABEL_351:
          outlined consume of _Glass.Variant.ID(v192, v193);
          v93 = v400;
          v92 = v365;
          v91 = v369;
LABEL_352:
          outlined consume of _Glass.Variant.ID(v92, v93);
          outlined consume of _Glass.Variant.ID(v361, v91);
          outlined consume of _Glass.Variant.ID(v361, v91);
LABEL_353:
          v147 = v92;
          v148 = v93;
LABEL_354:
          outlined consume of _Glass.Variant.ID(v147, v148);
          v60 = v385;
          LOBYTE(v33) = v380;
          v61 = v395;
LABEL_355:
          outlined consume of _Glass.Variant.ID(v390, v60);
          outlined consume of _Glass.Variant.ID(v61, v33);
          outlined consume of _Glass.Variant.ID(v61, v33);
LABEL_356:
          outlined consume of _Glass.Variant.ID(v390, v60);
          v38 = v422;
          v39 = v416;
LABEL_357:
          _sypSgWOhTm_12(v435, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          outlined consume of _Glass.Variant.ID(v12, v13);
          outlined consume of _Glass.Variant.ID(v38, v39);
          outlined destroy of GlassContainer.Entry.ModelID(v3);
          outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 0);
          v10 = v426;
          a2 = v424;
          v5 = v417;
          goto LABEL_5;
        }

        *&v440[0] = v289;
        BYTE8(v440[0]) = v283;
        v433 = v278;
        v434 = v273;
        outlined copy of _Glass.Variant.ID(v289, v283);
        outlined copy of _Glass.Variant.ID(v278, v273);
        v343 = specialized static _Glass.Variant.ID.== infix(_:_:)(v440, &v433);
        outlined consume of _Glass.Variant.ID(v433, v434);
        outlined consume of _Glass.Variant.ID(*&v440[0], BYTE8(v440[0]));
        outlined consume of _Glass.Variant.ID(v311, v294);
        outlined consume of _Glass.Variant.ID(v305, v299);
        outlined consume of _Glass.Variant.ID(v305, v299);
        outlined consume of _Glass.Variant.ID(v311, v294);
        v92 = v365;
        outlined consume of _Glass.Variant.ID(v365, v400);
        outlined consume of _Glass.Variant.ID(v361, v369);
        v93 = v400;
        outlined consume of _Glass.Variant.ID(v361, v369);
        if ((v343 & 1) == 0 || v153 != v154)
        {
          goto LABEL_353;
        }
      }

      outlined consume of _Glass.Variant.ID(v92, v93);
      v60 = v385;
      LOBYTE(v33) = v380;
      v61 = v395;
      if (v89 != v90)
      {
        goto LABEL_355;
      }

      goto LABEL_159;
    }

    if (v16 != 1)
    {
      if (v3[2].i8[0] == 2)
      {
        v23 = vorrq_s8(*v3, v3[1]);
        if (!*&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)))
        {
          v425 = 40 * v9;
          _sypSgWOhTm_12(v435, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
          goto LABEL_522;
        }
      }

      outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
      goto LABEL_4;
    }

    if (v3[2].i8[0] != 1 || v3->i32[0] != v12)
    {
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
      v18 = v12;
      v19 = v13;
      v20 = v15;
      v21 = v14;
      v22 = 1;
LABEL_20:
      outlined copy of GlassContainer.Entry.ModelID(v18, v19, v20, v21, v22);
LABEL_4:
      _sypSgWOhTm_12(v435, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
      goto LABEL_5;
    }

    v17 = v3->i64[1];
    if (!v13)
    {
      break;
    }

    if (!v17)
    {
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
      v44 = v13;
      goto LABEL_47;
    }

    v425 = 40 * v9;
    v421 = v3[1].i64[0];
    if (v13 == v17)
    {
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
    }

    else
    {
      v420 = *(*v13 + 112);
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
      outlined copy of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
      swift_retain_n();
      a2 = v424;
      v50 = v420(v17);

      if ((v50 & 1) == 0)
      {

        goto LABEL_48;
      }
    }

    _sypSgWOhTm_12(v435, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
    outlined destroy of GlassContainer.Entry.ModelID(v3);
    outlined consume of GlassContainer.Entry.ModelID(v12, v13, v15, v14, 1);
    v10 = v426;
    if (v15 == v421)
    {
      goto LABEL_522;
    }

LABEL_5:
    v9 = (v9 + 1) & v427;
    if (((*(v428 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_521;
    }
  }

  v425 = 40 * v9;
  outlined copy of GlassContainer.Entry.ModelID(v12, 0, v15, v14, 1);
  if (v17)
  {
    outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
    outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
    outlined copy of GlassContainer.Entry.ModelID(v12, 0, v15, v14, 1);
    outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
    v44 = 0;
LABEL_47:
    outlined copy of GlassContainer.Entry.ModelID(v12, v44, v15, v14, 1);

LABEL_48:
    _sypSgWOhTm_12(v435, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
    outlined destroy of GlassContainer.Entry.ModelID(v3);
    v45 = v12;
    v46 = v13;
    v47 = v15;
    v48 = v14;
    v49 = 1;
    goto LABEL_68;
  }

  outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
  outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
  outlined copy of GlassContainer.Entry.ModelID(v12, 0, v15, v14, 1);
  outlined init with copy of GlassContainer.Entry.ModelID(v3, v440);
  outlined copy of GlassContainer.Entry.ModelID(v12, 0, v15, v14, 1);
  _sypSgWOhTm_12(v435, type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID));
  outlined destroy of GlassContainer.Entry.ModelID(v3);
  outlined consume of GlassContainer.Entry.ModelID(v12, 0, v15, v14, 1);
LABEL_522:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v252 = *v423;
  *&v440[0] = *v423;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v252 = *&v440[0];
  }

  v253 = *(v252 + 48) + v425;
  v254 = *(v253 + 32);
  v255 = *(v253 + 16);
  *a2 = *v253;
  *(a2 + 16) = v255;
  *(a2 + 32) = v254;
  specialized _NativeSet._delete(at:)(v9);
  *v423 = *&v440[0];
}

void specialized Set._Variant.remove(_:)(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  DefaultDescriptionAttribute.rawValue.getter();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_103:
    *a2 = 31;
    return;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xE400000000000000;
    v10 = 1952671090;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xE600000000000000;
        v10 = 0x6E696769726FLL;
        break;
      case 2:
        v10 = 0x696F507472617473;
        v9 = 0xEA0000000000746ELL;
        break;
      case 3:
        v9 = 0xE800000000000000;
        v13 = 0x696F50646E65;
        goto LABEL_38;
      case 4:
        v10 = 0x726F66736E617274;
        v9 = 0xE90000000000006DLL;
        break;
      case 5:
        v9 = 0xE500000000000000;
        v10 = 0x7370696C63;
        break;
      case 6:
        v12 = 0x72656E726F63;
        goto LABEL_24;
      case 7:
        v10 = 0xD000000000000011;
        v9 = 0x800000018DD74080;
        break;
      case 8:
        v9 = 0xE700000000000000;
        v10 = 0x7974696361706FLL;
        break;
      case 9:
        v10 = 0x6957726564726F62;
        v9 = 0xEB00000000687464;
        break;
      case 0xA:
        v11 = 0x726564726F62;
        goto LABEL_27;
      case 0xB:
        v10 = 0x756F72676B636162;
        v9 = 0xEF726F6C6F43646ELL;
        break;
      case 0xC:
        v10 = 0xD000000000000011;
        v9 = 0x800000018DD740D0;
        break;
      case 0xD:
        v10 = 0x55656C6261736964;
        v9 = 0xEE00736574616470;
        break;
      case 0xE:
        v10 = 0x704F776F64616873;
        v9 = 0xED00007974696361;
        break;
      case 0xF:
        v12 = 0x776F64616873;
LABEL_24:
        v10 = v12 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
        v9 = 0xEC00000073756964;
        break;
      case 0x10:
        v11 = 0x776F64616873;
LABEL_27:
        v10 = v11 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
        v9 = 0xEB00000000726F6CLL;
        break;
      case 0x11:
        v10 = 0x664F776F64616873;
        v9 = 0xEC00000074657366;
        break;
      case 0x12:
        v10 = 0x6150776F64616873;
        v9 = 0xEA00000000006874;
        break;
      case 0x13:
        v10 = 0xD000000000000012;
        v9 = 0x800000018DD74130;
        break;
      case 0x14:
        v10 = 0x74756F68636E7570;
        v9 = 0xEE00776F64616853;
        break;
      case 0x15:
        v9 = 0xEE007265746E6543;
        goto LABEL_31;
      case 0x16:
        v9 = 0xEF676E696C616353;
LABEL_31:
        v10 = 0x73746E65746E6F63;
        break;
      case 0x17:
        v10 = 0xD000000000000015;
        v9 = 0x800000018DD74180;
        break;
      case 0x18:
        v10 = 0x686353726F6C6F63;
        v9 = 0xEB00000000656D65;
        break;
      case 0x19:
        v9 = 0xE700000000000000;
        v10 = 0x737265746C6966;
        break;
      case 0x1A:
        v9 = 0xEC00000065707954;
        goto LABEL_37;
      case 0x1B:
        v9 = 0xEE0073726F6C6F43;
LABEL_37:
        v13 = 0x656964617267;
LABEL_38:
        v10 = v13 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
        break;
      case 0x1C:
        v10 = 0xD000000000000011;
        v9 = 0x800000018DD741D0;
        break;
      case 0x1D:
        v10 = 0xD000000000000016;
        v9 = 0x800000018DD741F0;
        break;
      case 0x1E:
        v10 = 0x7461506570616873;
        v9 = 0xE900000000000068;
        break;
      default:
        break;
    }

    v14 = 0xE400000000000000;
    v15 = 1952671090;
    switch(a1)
    {
      case 1u:
        v14 = 0xE600000000000000;
        if (v10 == 0x6E696769726FLL)
        {
          goto LABEL_95;
        }

        goto LABEL_96;
      case 2u:
        v14 = 0xEA0000000000746ELL;
        if (v10 != 0x696F507472617473)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 3u:
        v14 = 0xE800000000000000;
        v20 = 0x696F50646E65;
        goto LABEL_101;
      case 4u:
        v14 = 0xE90000000000006DLL;
        if (v10 != 0x726F66736E617274)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 5u:
        v14 = 0xE500000000000000;
        if (v10 != 0x7370696C63)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 6u:
        v19 = 0x72656E726F63;
        goto LABEL_71;
      case 7u:
        v14 = 0x800000018DD74080;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 8u:
        v14 = 0xE700000000000000;
        if (v10 != 0x7974696361706FLL)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 9u:
        v17 = 0x6957726564726F62;
        v18 = 6845540;
        goto LABEL_78;
      case 0xAu:
        v16 = 0x726564726F62;
        goto LABEL_77;
      case 0xBu:
        v14 = 0xEF726F6C6F43646ELL;
        if (v10 != 0x756F72676B636162)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 0xCu:
        v14 = 0x800000018DD740D0;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 0xDu:
        v23 = 0x55656C6261736964;
        v24 = 0x736574616470;
        goto LABEL_68;
      case 0xEu:
        v14 = 0xED00007974696361;
        if (v10 != 0x704F776F64616873)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 0xFu:
        v19 = 0x776F64616873;
LABEL_71:
        v21 = v19 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
        v22 = 1937074532;
        goto LABEL_72;
      case 0x10u:
        v16 = 0x776F64616873;
LABEL_77:
        v17 = v16 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
        v18 = 7499628;
        goto LABEL_78;
      case 0x11u:
        v21 = 0x664F776F64616873;
        v22 = 1952805734;
LABEL_72:
        v14 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v10 != v21)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 0x12u:
        v14 = 0xEA00000000006874;
        if (v10 != 0x6150776F64616873)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 0x13u:
        v14 = 0x800000018DD74130;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 0x14u:
        v23 = 0x74756F68636E7570;
        v24 = 0x776F64616853;
LABEL_68:
        v14 = v24 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v10 != v23)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 0x15u:
        v14 = 0xEE007265746E6543;
        goto LABEL_85;
      case 0x16u:
        v14 = 0xEF676E696C616353;
LABEL_85:
        if (v10 != 0x73746E65746E6F63)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 0x17u:
        v14 = 0x800000018DD74180;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 0x18u:
        v17 = 0x686353726F6C6F63;
        v18 = 6647141;
LABEL_78:
        v14 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v10 != v17)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 0x19u:
        v14 = 0xE700000000000000;
        if (v10 != 0x737265746C6966)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 0x1Au:
        v14 = 0xEC00000065707954;
        goto LABEL_100;
      case 0x1Bu:
        v14 = 0xEE0073726F6C6F43;
LABEL_100:
        v20 = 0x656964617267;
LABEL_101:
        if (v10 != (v20 & 0xFFFFFFFFFFFFLL | 0x746E000000000000))
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 0x1Cu:
        v14 = 0x800000018DD741D0;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 0x1Du:
        v15 = 0xD000000000000016;
        v14 = 0x800000018DD741F0;
        goto LABEL_94;
      case 0x1Eu:
        v14 = 0xE900000000000068;
        if (v10 != 0x7461506570616873)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      default:
LABEL_94:
        if (v10 != v15)
        {
          goto LABEL_96;
        }

LABEL_95:
        if (v9 != v14)
        {
LABEL_96:
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {
            goto LABEL_105;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_103;
          }

          continue;
        }

LABEL_105:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *v2;
        v28 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeSet.copy()();
          v27 = v28;
        }

        *a2 = *(*(v27 + 48) + v7);
        specialized _NativeSet._delete(at:)(v7);
        *v2 = v28;
        return;
    }
  }
}

void specialized Set._Variant.remove(_:)(unint64_t a1@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = a2;
  v7 = a1;
  v9 = HIDWORD(a1);
  v10 = HIDWORD(a2);
  v11 = *v4;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(HIBYTE(a3) & 1);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = *(v11 + 48) + 20 * v14;
      v17 = *v16 == v7 && *(v16 + 4) == v9;
      v18 = v17 && *(v16 + 8) == v6;
      v19 = v18 && *(v16 + 12) == v10;
      if (v19 && *(v16 + 16) == a3 && ((((a3 & 0x100) != 0) ^ *(v16 + 17)) & 1) == 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    v25 = *v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v21 = v25;
    }

    v22 = *(v21 + 48) + 20 * v14;
    v23 = *(v22 + 16);
    v24 = *(v22 + 17);
    *a4 = *v22;
    *(a4 + 16) = v23;
    *(a4 + 17) = v24;
    specialized _NativeSet._delete(at:)(v14);
    *v4 = v25;
  }

  else
  {
LABEL_20:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 512;
  }
}

void specialized Set._Variant.remove(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v13 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v12 = v13;
    }

    *a2 = *(*(v12 + 48) + 8 * v8);
    specialized _NativeSet._delete(at:)(v8);
    v10 = 0;
    *v2 = v13;
  }

  else
  {
LABEL_5:
    *a2 = 0;
    v10 = 1;
  }

  *(a2 + 8) = v10;
}

void specialized Set._Variant.remove(_:)(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  _ProposedSize.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_16:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 256;
    return;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(v11 + 48) + 32 * v14;
    if (*(v16 + 8))
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((a2 & 1) != 0 || *v16 != a1)
    {
      goto LABEL_4;
    }

    if ((*(v16 + 24) & 1) == 0)
    {
      break;
    }

    if (a4)
    {
      goto LABEL_13;
    }

LABEL_4:
    v14 = (v14 + 1) & v15;
    if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if ((a4 & 1) != 0 || *(v16 + 16) != a3)
  {
    goto LABEL_4;
  }

LABEL_13:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v5;
  v23 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v18 = v23;
  }

  v19 = *(v18 + 48) + 32 * v14;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  LOBYTE(v19) = *(v19 + 24);
  *a5 = v20;
  *(a5 + 8) = v21;
  *(a5 + 16) = v22;
  *(a5 + 24) = v19;
  specialized _NativeSet._delete(at:)(v14);
  *v5 = v23;
  *(a5 + 25) = 0;
}

void specialized _NativeSet._delete(at:)(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48) + 16 * v6;
        v12 = *v10;
        v11 = *(v10 + 8);
        Hasher.init(_seed:)();
        if (v11 < 0)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;
        }

        else
        {
          dispatch thunk of static AttributedStringKey.name.getter();
        }

        String.hash(into:)();

        v14 = Hasher._finalize()();
        outlined consume of AttributedString.AnyAttribute(v12, v11);
        v15 = v14 & v7;
        if (v2 >= v9)
        {
          if (v15 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v9)
        {
          goto LABEL_14;
        }

        if (v2 >= v15)
        {
LABEL_14:
          v16 = *(v3 + 48);
          v17 = (v16 + 16 * v2);
          v18 = (v16 + 16 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v27 = v3;
      v29 = (v8 + 1) & v7;
      v30 = v7;
      while (1)
      {
        v31 = v2;
        v11 = 40 * v6;
        v12 = *(v3 + 48) + 40 * v6;
        v14 = *v12;
        v13 = *(v12 + 8);
        v15 = *(v12 + 16);
        v16 = *(v12 + 24);
        v17 = *(v12 + 32);
        Hasher.init(_seed:)();
        if (!v17)
        {
          break;
        }

        if (v17 != 1)
        {
          v18 = 0;
          goto LABEL_12;
        }

        MEMORY[0x193AC11A0](2);
        Hasher._combine(_:)(v14);
        if (v13)
        {
          Hasher._combine(_:)(1u);
          v28 = *(*v13 + 120);

          v28(v32);
          v3 = v27;
          v18 = v15;
LABEL_12:
          MEMORY[0x193AC11A0](v18);
          goto LABEL_13;
        }

        Hasher._combine(_:)(0);
LABEL_13:
        v19 = Hasher._finalize()();
        outlined consume of GlassContainer.Entry.ModelID(v14, v13, v15, v16, v17);
        v2 = v31;
        v20 = v19 & v30;
        if (v31 >= v29)
        {
          if (v20 < v29)
          {
            goto LABEL_5;
          }
        }

        else if (v20 >= v29)
        {
          goto LABEL_18;
        }

        if (v31 >= v20)
        {
LABEL_18:
          v21 = *(v3 + 48);
          v22 = v21 + 40 * v31;
          v23 = (v21 + v11);
          if (40 * v31 < v11 || v22 >= v23 + 40 || v31 != v6)
          {
            v9 = *v23;
            v10 = v23[1];
            *(v22 + 32) = *(v23 + 4);
            *v22 = v9;
            *(v22 + 16) = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v30;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      MEMORY[0x193AC11A0](1);
      outlined copy of _Glass.Variant.ID(v14, v13);

      _Glass.Variant.ID.hash(into:)(v32);
      Hasher._combine(_:)(BYTE1(v13) & 1);
      (*(*v15 + 120))(v32);
      v18 = v16;
      goto LABEL_12;
    }

LABEL_23:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v29 = v3;
      v30 = v4;
      v28 = (v8 + 1) & v7;
      do
      {
        v31 = 20 * v6;
        v9 = *(v3 + 48) + 20 * v6;
        v10 = v2;
        v11 = v7;
        v12 = *v9;
        v13 = *(v9 + 4);
        v14 = *(v9 + 8);
        v15 = *(v9 + 12);
        v16 = *(v9 + 17);
        v17 = *(v9 + 16);
        Hasher.init(_seed:)();
        v18 = v12;
        v2 = v10;
        Hasher._combine(_:)(v18);
        v19 = v13;
        v7 = v11;
        Hasher._combine(_:)(v19);
        Hasher._combine(_:)(v14);
        Hasher._combine(_:)(v15);
        Hasher._combine(_:)(v17);
        Hasher._combine(_:)(v16);
        v20 = Hasher._finalize()() & v11;
        if (v10 >= v28)
        {
          if (v20 < v28)
          {
            v3 = v29;
            v4 = v30;
            goto LABEL_5;
          }

          v3 = v29;
          if (v10 >= v20)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v3 = v29;
          if (v20 >= v28 || v10 >= v20)
          {
LABEL_12:
            v21 = *(v3 + 48);
            v22 = v21 + 20 * v10;
            v4 = v30;
            v23 = (v21 + v31);
            if ((20 * v2) < v31 || v22 >= v23 + 20 || v2 != v6)
            {
              v24 = *v23;
              *(v22 + 16) = *(v23 + 4);
              *v22 = v24;
              v2 = v6;
            }

            goto LABEL_5;
          }
        }

        v4 = v30;
LABEL_5:
        v6 = (v6 + 1) & v11;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        MEMORY[0x193AC11A0](v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v27 = v4;
      do
      {
        v11 = v9;
        v12 = 32 * v6;
        v13 = *(v3 + 48) + 32 * v6;
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        v17 = *(v13 + 24);
        Hasher.init(_seed:)();
        if (v15 == 1)
        {
          Hasher._combine(_:)(0);
          if (v17)
          {
            goto LABEL_16;
          }
        }

        else
        {
          Hasher._combine(_:)(1u);
          if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v19 = v14;
          }

          else
          {
            v19 = 0;
          }

          MEMORY[0x193AC11E0](v19);
          if (v17)
          {
LABEL_16:
            Hasher._combine(_:)(0);
            goto LABEL_17;
          }
        }

        Hasher._combine(_:)(1u);
        if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v18 = v16;
        }

        else
        {
          v18 = 0;
        }

        MEMORY[0x193AC11E0](v18);
LABEL_17:
        v20 = Hasher._finalize()() & v7;
        v9 = v11;
        if (v2 >= v11)
        {
          if (v20 < v11)
          {
            goto LABEL_5;
          }
        }

        else if (v20 >= v11)
        {
          goto LABEL_22;
        }

        if (v2 >= v20)
        {
LABEL_22:
          v21 = *(v3 + 48);
          v22 = (v21 + 32 * v2);
          v23 = (v21 + v12);
          if (32 * v2 != v12 || (v2 = v6, v22 >= v23 + 2))
          {
            v10 = v23[1];
            *v22 = *v23;
            v22[1] = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
        v4 = v27;
      }

      while (((*(v27 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }
}

void specialized _NativeSet._delete(at:)(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), const char *a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = _HashTable.previousHole(before:)();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(v40, v41, v42);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2, __n128 a3)
{

  return specialized _NativeSet.intersection(_:)(a1, a2, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
}

{

  return specialized _NativeSet.intersection(_:)(a1, a2, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));
}

void *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v15, v10, a2, a1, a4);

    MEMORY[0x193AC4820](v15, -1, -1);
  }

  return v13;
}

void specialized closure #1 in _NativeSet.intersection(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_37;
  }

  v71 = 0;
  v5 = 0;
  v64 = a4 + 56;
  v6 = 1 << *(a4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  v9 = (v6 + 63) >> 6;
  v78 = a3 + 56;
  v66 = v9;
  while (1)
  {
LABEL_7:
    if (v8)
    {
      v10 = __clz(__rbit64(v8));
      v69 = (v8 - 1) & v8;
    }

    else
    {
      v11 = v5;
      do
      {
        v5 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_74;
        }

        if (v5 >= v9)
        {
LABEL_72:

          specialized _NativeSet.extractSubset(using:count:)(a1, a2, v71, v4);
          return;
        }

        v12 = *(v64 + 8 * v5);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v69 = (v12 - 1) & v12;
    }

    v13 = *(a4 + 48) + 16 * (v10 | (v5 << 6));
    v15 = *v13;
    v14 = *(v13 + 8);
    Hasher.init(_seed:)();
    v73 = v14;
    v80 = v15;
    if (v14 < 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      dispatch thunk of static AttributedStringKey.name.getter();
    }

    String.hash(into:)();

    v17 = Hasher._finalize()();
    v18 = -1 << *(v4 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    v22 = v14;
    if (((1 << v19) & *(v78 + 8 * (v19 >> 6))) != 0)
    {
      break;
    }

LABEL_6:
    outlined consume of AttributedString.AnyAttribute(v80, v22);
    v9 = v66;
    v8 = v69;
  }

  v76 = ~v18;
  while (1)
  {
    v23 = *(v4 + 48) + 16 * v19;
    v24 = *v23;
    v25 = *(v23 + 8);
    if (v25 < 0)
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v29;
      v30 = v24;
      if ((v22 & 0x8000000000000000) == 0)
      {
        v31 = dispatch thunk of static AttributedStringKey.name.getter();
        goto LABEL_27;
      }
    }

    else
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        if (v24 == v80)
        {
          goto LABEL_34;
        }

        goto LABEL_20;
      }

      v26 = dispatch thunk of static AttributedStringKey.name.getter();
      v28 = v27;
    }

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_27:
    if (v26 == v31 && v28 == v32)
    {
      break;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of AttributedString.AnyAttribute(v24, v25);

    v4 = a3;
    v22 = v73;
    if (v34)
    {
      goto LABEL_34;
    }

LABEL_20:
    v19 = (v19 + 1) & v76;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if ((*(v78 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
    {
      goto LABEL_6;
    }
  }

  outlined consume of AttributedString.AnyAttribute(v24, v25);

  v4 = a3;
  v22 = v73;
LABEL_34:
  outlined consume of AttributedString.AnyAttribute(v80, v22);
  v9 = v66;
  a1[v20] |= v21;
  v8 = v69;
  v35 = __OFADD__(v71++, 1);
  if (!v35)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_37:
  v71 = 0;
  v36 = 0;
  v67 = v4 + 56;
  v37 = 1 << *(v4 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & *(v4 + 56);
  v40 = (v37 + 63) >> 6;
  v81 = a4 + 56;
  v70 = v40;
  while (2)
  {
    if (v39)
    {
      v41 = __clz(__rbit64(v39));
      v77 = (v39 - 1) & v39;
LABEL_49:
      v74 = v41 | (v36 << 6);
      v44 = *(v4 + 48) + 16 * v74;
      v46 = *v44;
      v45 = *(v44 + 8);
      v47 = a4;
      Hasher.init(_seed:)();
      if (v45 < 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v46;
      }

      else
      {
        dispatch thunk of static AttributedStringKey.name.getter();
      }

      String.hash(into:)();

      v49 = Hasher._finalize()();
      v50 = -1 << *(a4 + 32);
      v51 = v49 & ~v50;
      if (((*(v81 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
      {
LABEL_41:
        outlined consume of AttributedString.AnyAttribute(v46, v45);
        v4 = a3;
        v40 = v70;
        v39 = v77;
        continue;
      }

      v79 = ~v50;
LABEL_56:
      v52 = *(v47 + 48) + 16 * v51;
      v53 = *v52;
      v54 = *(v52 + 8);
      if (v54 < 0)
      {
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v58;
        v59 = v53;
        if (v45 < 0)
        {
LABEL_61:
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v60 = dispatch thunk of static AttributedStringKey.name.getter();
        }

        if (v55 == v60 && v57 == v61)
        {
          outlined consume of AttributedString.AnyAttribute(v53, v54);

LABEL_69:
          outlined consume of AttributedString.AnyAttribute(v46, v45);
          v4 = a3;
          *(a1 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
          v40 = v70;
          v35 = __OFADD__(v71++, 1);
          v39 = v77;
          if (v35)
          {
            __break(1u);
            goto LABEL_72;
          }

          continue;
        }

        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined consume of AttributedString.AnyAttribute(v53, v54);

        v47 = a4;
        if (v63)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v45 < 0)
        {
          v55 = dispatch thunk of static AttributedStringKey.name.getter();
          v57 = v56;
          goto LABEL_61;
        }

        if (v53 == v46)
        {
          goto LABEL_69;
        }
      }

      v51 = (v51 + 1) & v79;
      if (((*(v81 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_56;
    }

    break;
  }

  v42 = v36;
  while (1)
  {
    v36 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v36 >= v40)
    {
      goto LABEL_72;
    }

    v43 = *(v67 + 8 * v36);
    ++v42;
    if (v43)
    {
      v41 = __clz(__rbit64(v43));
      v77 = (v43 - 1) & v43;
      goto LABEL_49;
    }
  }

LABEL_74:
  __break(1u);
}

{
  v62 = a2;
  v66 = a1;
  v6 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v61 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v76 = (v61 - v13);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        specialized _NativeSet.extractSubset(using:count:)(v66, v62, v68, a3);
        return;
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6, v15);
          lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
          v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              (v54)(v11, *(v73 + 48) + v57 * v53, v6);
              lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694B0]);
              v59 = dispatch thunk of static Equatable.== infix(_:_:)();
              v60 = *v76;
              (*v76)(v11, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            v60(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            v60(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6, v15);
          (*(v7 + 32))(v76, v33, v6);
          lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
          v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              (i)(v11, *(v74 + 48) + v36 * v72, v6);
              lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694B0]);
              v40 = dispatch thunk of static Equatable.== infix(_:_:)();
              v41 = *v75;
              (*v75)(v11, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            v41(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            v41(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t specialized Set._Variant.remove(at:)(unint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    specialized _NativeSet.copy()();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  specialized _NativeSet._delete(at:)(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

uint64_t specialized _NativeSet.update(with:isUnique:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  Hasher.init(_seed:)();
  if (a2 < 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    dispatch thunk of static AttributedStringKey.name.getter();
  }

  String.hash(into:)();

  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    v27 = 0;
    v14 = 1;
    goto LABEL_25;
  }

  v53 = a3;
  v55 = a1;
  v12 = a2;
  v13 = ~v10;
  v14 = 1;
  while (1)
  {
    v15 = *(v8 + 48) + 16 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    if (v17 < 0)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v21;
      v22 = v16;
      if ((v12 & 0x8000000000000000) == 0)
      {
        v23 = dispatch thunk of static AttributedStringKey.name.getter();
        goto LABEL_14;
      }
    }

    else
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        if (v16 == v55)
        {
          goto LABEL_23;
        }

        goto LABEL_7;
      }

      v18 = dispatch thunk of static AttributedStringKey.name.getter();
      v20 = v19;
    }

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_14:
    if (v18 == v23 && v20 == v24)
    {
      break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of AttributedString.AnyAttribute(v16, v17);

    v14 = 1;
    if (v26)
    {
      goto LABEL_23;
    }

LABEL_7:
    v11 = (v11 + 1) & v13;
    if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      v27 = 0;
      goto LABEL_24;
    }
  }

  outlined consume of AttributedString.AnyAttribute(v16, v17);

LABEL_23:
  v14 = 0;
  v27 = 1;
LABEL_24:
  a2 = v12;
  v4 = v3;
  a1 = v55;
  a3 = v53;
LABEL_25:
  v28 = *(v8 + 16);
  v29 = v28 + v14;
  if (__OFADD__(v28, v14))
  {
    __break(1u);
    goto LABEL_63;
  }

  v30 = *(v8 + 24);
  if (v30 >= v29 && (a3 & 1) != 0)
  {
    if (v27)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v29);
  }

  else
  {
    if (v30 >= v29)
    {
      specialized _NativeSet.copy()();
      if (v27)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v29);
  }

  v31 = *v4;
  Hasher.init(_seed:)();
  v54 = v27;
  if (a2 < 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    dispatch thunk of static AttributedStringKey.name.getter();
  }

  String.hash(into:)();

  v32 = Hasher._finalize()();
  v33 = -1 << *(v31 + 32);
  v11 = v32 & ~v33;
  if (((*(v31 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_55:
    v4 = v3;
    if (v54)
    {
LABEL_64:
      result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_56:
    v46 = *v4;
    *(*v4 + 8 * (v11 >> 6) + 56) |= 1 << v11;
    v47 = (*(v46 + 48) + 16 * v11);
    *v47 = a1;
    v47[1] = a2;
    v48 = *(v46 + 16);
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (!v49)
    {
      result = 0;
      *(v46 + 16) = v50;
      return result;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v56 = ~v33;
  while (1)
  {
    v34 = *(v31 + 48) + 16 * v11;
    v35 = *v34;
    v36 = *(v34 + 8);
    if (v36 < 0)
    {
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v40;
      v41 = v35;
      if ((a2 & 0x8000000000000000) == 0)
      {
        v42 = dispatch thunk of static AttributedStringKey.name.getter();
        goto LABEL_49;
      }
    }

    else
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        if (v35 == a1)
        {
          goto LABEL_59;
        }

        goto LABEL_42;
      }

      v37 = dispatch thunk of static AttributedStringKey.name.getter();
      v39 = v38;
    }

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_49:
    if (v37 == v42 && v39 == v43)
    {
      break;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined consume of AttributedString.AnyAttribute(v35, v36);

    if (v45)
    {
      goto LABEL_59;
    }

LABEL_42:
    v11 = (v11 + 1) & v56;
    if (((*(v31 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  outlined consume of AttributedString.AnyAttribute(v35, v36);

LABEL_59:
  v4 = v3;
  if ((v54 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_60:
  v52 = (*(*v4 + 48) + 16 * v11);
  result = *v52;
  *v52 = a1;
  v52[1] = a2;
  return result;
}

BOOL specialized static AttributedString.AnyAttribute.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      return a1 == a3;
    }

    v6 = dispatch thunk of static AttributedStringKey.name.getter();
    v8 = v11;
    goto LABEL_7;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (a4 < 0)
  {
LABEL_7:
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_8;
  }

  v9 = dispatch thunk of static AttributedStringKey.name.getter();
LABEL_8:
  if (v6 == v9 && v8 == v10)
  {

    return 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v12 & 1;
  }
}

void specialized Dictionary<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = static AttributedStringKey.nsAttributedStringKey.getter(a3, a4);
  (*(v9 + 16))(v11, a1, v8);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    *(&v16 + 1) = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
    (*(v13 + 32))(boxed_opaque_existential_1, v11, AssociatedTypeWitness);
  }

  specialized Dictionary.subscript.setter(&v15, v12);
}

void outlined consume of AttributedString.AnyAttribute?(id a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    outlined consume of AttributedString.AnyAttribute(a1, a2);
  }
}

void lazy protocol witness table accessor for type AttributedString.Keys and conformance AttributedString.Keys()
{
  if (!lazy protocol witness table cache variable for type AttributedString.Keys and conformance AttributedString.Keys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedString.Keys, &type metadata for AttributedString.Keys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedString.Keys and conformance AttributedString.Keys);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributedString.Keys and conformance AttributedString.Keys)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedString.Keys, &type metadata for AttributedString.Keys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedString.Keys and conformance AttributedString.Keys);
  }
}

void lazy protocol witness table accessor for type AttributedString.AttributeDependencies and conformance AttributedString.AttributeDependencies()
{
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeDependencies and conformance AttributedString.AttributeDependencies)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedString.AttributeDependencies, &type metadata for AttributedString.AttributeDependencies, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedString.AttributeDependencies and conformance AttributedString.AttributeDependencies);
  }
}

void lazy protocol witness table accessor for type AttributedString.Keys.SetIterator and conformance AttributedString.Keys.SetIterator()
{
  if (!lazy protocol witness table cache variable for type AttributedString.Keys.SetIterator and conformance AttributedString.Keys.SetIterator)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedString.Keys.SetIterator, &unk_1F0091F50, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedString.Keys.SetIterator and conformance AttributedString.Keys.SetIterator);
  }
}

void lazy protocol witness table accessor for type AttributedString.AttributeDependencies.PartialIterator and conformance AttributedString.AttributeDependencies.PartialIterator()
{
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeDependencies.PartialIterator and conformance AttributedString.AttributeDependencies.PartialIterator)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedString.AttributeDependencies.PartialIterator, &unk_1F0091EC8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedString.AttributeDependencies.PartialIterator and conformance AttributedString.AttributeDependencies.PartialIterator);
  }
}

{
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeDependencies.PartialIterator and conformance AttributedString.AttributeDependencies.PartialIterator)
  {
    swift_getWitnessTable(protocol conformance descriptor for AttributedString.AttributeDependencies.PartialIterator, &unk_1F0091EC8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AttributedString.AttributeDependencies.PartialIterator and conformance AttributedString.AttributeDependencies.PartialIterator);
  }
}

uint64_t *initializeWithCopy for AttributedString.Keys.SetIterator(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  outlined copy of Set<A>.Iterator._Variant<A>(*a2);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return a1;
}

uint64_t *assignWithCopy for AttributedString.Keys.SetIterator(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  outlined copy of Set<A>.Iterator._Variant<A>(*a2);
  v8 = *a1;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  outlined consume of Set<EventID>.Iterator._Variant(v8);
  return a1;
}

uint64_t assignWithTake for AttributedString.Keys.SetIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  outlined consume of Set<EventID>.Iterator._Variant(v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AttributedString.Keys.SetIterator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 40))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AttributedString.Keys.SetIterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
    }
  }

  return result;
}

uint64_t assignWithCopy for AttributedString.AnyAttribute(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of AttributedString.AnyAttribute(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of AttributedString.AnyAttribute(v5, v6);
  return a1;
}

uint64_t assignWithTake for AttributedString.AnyAttribute(uint64_t a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of AttributedString.AnyAttribute(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AttributedString.AnyAttribute(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AttributedString.AnyAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void type metadata accessor for <<opaque return type of static AttributeScope.attributeKeys>>.0.Sequence.Iterator(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of static AttributeScope.attributeKeys>>.0.Sequence.Iterator)
  {
    type metadata accessor for AttributeScopes.SwiftUIAttributes(255);
    lazy protocol witness table accessor for type LazyMapSequence<[AttributedString.AnyAttribute : AttributedString.Keys].Keys, AttributedStringKey.Type>.Iterator and conformance LazyMapSequence<A, B>.Iterator(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, type metadata accessor for AttributeScopes.SwiftUIAttributes, protocol conformance descriptor for AttributeScopes.SwiftUIAttributes);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeMetadata2();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (!v2)
    {
      atomic_store(AssociatedTypeWitness, &lazy cache variable for type metadata for <<opaque return type of static AttributeScope.attributeKeys>>.0.Sequence.Iterator);
    }
  }
}

uint64_t WatchColorGradientProvider.init(color:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v8 = type metadata accessor for WatchColorGradientProvider(0, a3, a4, a4);
  v9 = *(*(a3 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a3);
}

uint64_t WatchColorGradientProvider.resolve(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v8 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (static Semantics.forced < v8)
  {
    goto LABEL_14;
  }

  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA23ContainerBackgroundKindO0I0VG_Tt1g5(v7, &v60);

    if (v60 != 6)
    {
      goto LABEL_16;
    }

LABEL_14:
    v60 = v7;
    v61 = v6;
    return (*(*(a2 + 24) + 32))(&v60, *(a2 + 16));
  }

  v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(v7);
  if (!v9 || *(v9 + 72) == 6)
  {
    goto LABEL_14;
  }

LABEL_16:
  v11 = *v3;
  v60 = v7;
  v61 = v6;
  v12 = (*(*v11 + 112))(&v60);
  v14 = v13;
  v16 = v15;
  v60 = v7;
  v61 = v6;
  EnvironmentValues.colorScheme.getter(&v59);
  if (v59 == 1)
  {
    v17 = Color.Resolved.darkened(to:)(0.5, v12, v14, v16);
    v57 = v18;
    v58 = v17;
    v55 = v20;
    v56 = v19;
    v21 = Color.Resolved.darkened(to:)(0.177, v12, v14, v16);
    v53 = v22;
    v54 = v21;
    v51 = v24;
    v52 = v23;
    v25 = Color.Resolved.darkened(to:)(0.15, v12, v14, v16);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = Color.Resolved.darkened(to:)(0.148, v12, v14, v16);
  }

  else
  {
    v36 = Color.Resolved.lightened(to:)(0.5, v12, v14, v16);
    v57 = v37;
    v58 = v36;
    v55 = v39;
    v56 = v38;
    v40 = Color.Resolved.lightened(to:)(0.177, v12, v14, v16);
    v53 = v41;
    v54 = v40;
    v51 = v43;
    v52 = v42;
    v25 = Color.Resolved.lightened(to:)(0.15, v12, v14, v16);
    v27 = v44;
    v29 = v45;
    v31 = v46;
    v32 = Color.Resolved.lightened(to:)(0.148, v12, v14, v16);
  }

  v47 = v32;
  v48 = v33;
  v49 = v34;
  v50 = v35;
  type metadata accessor for _ContiguousArrayStorage<ResolvedGradient.Stop>();
  result = swift_allocObject();
  *(result + 16) = xmmword_18DDACA80;
  *(result + 32) = v58;
  *(result + 36) = v57;
  *(result + 40) = v56;
  *(result + 44) = v55;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 1;
  *(result + 80) = v54;
  *(result + 84) = v53;
  *(result + 88) = v52;
  *(result + 92) = v51;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0x3FE3333333333333;
  *(result + 120) = 1;
  *(result + 128) = v25;
  *(result + 132) = v27;
  *(result + 136) = v29;
  *(result + 140) = v31;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 144) = 0x3FE51EB851EB851FLL;
  *(result + 168) = 1;
  *(result + 176) = v47;
  *(result + 180) = v48;
  *(result + 184) = v49;
  *(result + 188) = v50;
  *(result + 200) = 0;
  *(result + 208) = 0;
  *(result + 192) = 0x3FE6E147AE147AE1;
  *(result + 216) = 1;
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 1;
  return result;
}

float Color.Resolved.darkened(to:)(float a1, float a2, float a3, float a4)
{
  v7 = -a4;
  if (a4 > 0.0)
  {
    v7 = a4;
  }

  if (v7 <= 0.0031308)
  {
    v8 = v7 * 12.92;
  }

  else
  {
    v8 = 1.0;
    if (v7 != 1.0)
    {
      v9 = a4;
      v10 = powf(v7, 0.41667);
      a4 = v9;
      v8 = (v10 * 1.055) + -0.055;
    }
  }

  v11 = -v8;
  if (a4 > 0.0)
  {
    v11 = v8;
  }

  v12 = v11 * a1;
  v13 = -(v11 * a1);
  if (v12 > 0.0)
  {
    v13 = v12;
  }

  if (v13 > 0.04045 && v13 != 1.0)
  {
    powf((v13 * 0.94787) + 0.052133, 2.4);
  }

  v14 = -a2;
  if (a2 > 0.0)
  {
    v14 = a2;
  }

  if (v14 <= 0.0031308)
  {
    v15 = v14 * 12.92;
  }

  else
  {
    v15 = 1.0;
    if (v14 != 1.0)
    {
      v15 = (powf(v14, 0.41667) * 1.055) + -0.055;
    }
  }

  v16 = -v15;
  if (a2 > 0.0)
  {
    v16 = v15;
  }

  v17 = v16 * a1;
  v18 = -(v16 * a1);
  if (v17 > 0.0)
  {
    v18 = v17;
  }

  if (v18 <= 0.04045)
  {
    v19 = v18 * 0.077399;
  }

  else
  {
    v19 = 1.0;
    if (v18 != 1.0)
    {
      v19 = powf((v18 * 0.94787) + 0.052133, 2.4);
    }
  }

  v20 = -a3;
  if (a3 > 0.0)
  {
    v20 = a3;
  }

  if (v20 <= 0.0031308)
  {
    v21 = v20 * 12.92;
  }

  else
  {
    v21 = 1.0;
    if (v20 != 1.0)
    {
      v21 = (powf(v20, 0.41667) * 1.055) + -0.055;
    }
  }

  v22 = -v21;
  if (a3 > 0.0)
  {
    v22 = v21;
  }

  v23 = v22 * a1;
  v24 = -(v22 * a1);
  if (v23 <= 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  if (v25 > 0.04045 && v25 != 1.0)
  {
    powf((v25 * 0.94787) + 0.052133, 2.4);
  }

  if (v17 <= 0.0)
  {
    return -v19;
  }

  else
  {
    return v19;
  }
}

float Color.Resolved.lightened(to:)(float a1, float a2, float a3, float a4)
{
  v8 = -a4;
  if (a4 <= 0.0)
  {
    v9 = -a4;
  }

  else
  {
    v9 = a4;
  }

  if (v9 <= 0.0031308)
  {
    v10 = v9 * 12.92;
    if (a4 > 0.0)
    {
LABEL_8:
      if (a4 > 0.0031308)
      {
        v11 = 1.0;
        v8 = a4;
        if (a4 == 1.0)
        {
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      v8 = a4;
LABEL_16:
      v8 = v8 * 12.92;
LABEL_17:
      v11 = v8;
      if (a4 > 0.0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v10 = 1.0;
    if (v9 != 1.0)
    {
      v10 = (powf(v9, 0.41667) * 1.055) + -0.055;
    }

    if (a4 > 0.0)
    {
      goto LABEL_8;
    }
  }

  v10 = -v10;
  if (a4 >= -0.0031308)
  {
    goto LABEL_16;
  }

  if (a4 != -1.0)
  {
LABEL_14:
    v8 = (powf(v8, 0.41667) * 1.055) + -0.055;
    goto LABEL_17;
  }

LABEL_18:
  v11 = -v8;
LABEL_19:
  v12 = v10 + ((1.0 - v11) * a1);
  v13 = -v12;
  if (v12 > 0.0)
  {
    v13 = v12;
  }

  if (v13 > 0.04045 && v13 != 1.0)
  {
    powf((v13 * 0.94787) + 0.052133, 2.4);
  }

  v14 = -a2;
  if (a2 > 0.0)
  {
    v14 = a2;
  }

  if (v14 <= 0.0031308)
  {
    v15 = v14 * 12.92;
    v17 = -(v14 * 12.92);
  }

  else
  {
    v15 = 1.0;
    if (v14 == 1.0)
    {
      v16 = a2 <= 0.0;
      v17 = -1.0;
      goto LABEL_32;
    }

    v15 = (powf(v14, 0.41667) * 1.055) + -0.055;
    v17 = -v15;
  }

  v16 = a2 <= 0.0;
LABEL_32:
  if (!v16)
  {
    v17 = v15;
  }

  if (a2 <= 0.0)
  {
    v15 = -v15;
  }

  v18 = 1.0;
  v19 = v17 + ((1.0 - v15) * a1);
  v20 = -v19;
  if (v19 > 0.0)
  {
    v20 = v19;
  }

  if (v20 <= 0.04045)
  {
    v18 = v20 * 0.077399;
  }

  else if (v20 != 1.0)
  {
    v18 = powf((v20 * 0.94787) + 0.052133, 2.4);
  }

  v21 = -a3;
  if (a3 > 0.0)
  {
    v21 = a3;
  }

  if (v21 <= 0.0031308)
  {
    v22 = v21 * 12.92;
    v24 = -(v21 * 12.92);
  }

  else
  {
    v22 = 1.0;
    if (v21 == 1.0)
    {
      v23 = a3 <= 0.0;
      v24 = -1.0;
      goto LABEL_50;
    }

    v22 = (powf(v21, 0.41667) * 1.055) + -0.055;
    v24 = -v22;
  }

  v23 = a3 <= 0.0;
LABEL_50:
  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = v22;
  }

  if (a3 <= 0.0)
  {
    v22 = -v22;
  }

  v26 = v25 + ((1.0 - v22) * a1);
  v27 = -v26;
  if (v26 > 0.0)
  {
    v27 = v26;
  }

  if (v27 > 0.04045 && v27 != 1.0)
  {
    powf((v27 * 0.94787) + 0.052133, 2.4);
  }

  if (v19 <= 0.0)
  {
    return -v18;
  }

  else
  {
    return v18;
  }
}

uint64_t WatchColorGradientProvider.containerBackgroundMaterial(in:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (one-time initialization token for thick != -1)
  {
    swift_once();
  }

  v5 = static Material.thick;
  v6 = byte_1ED52B278;
  v7 = dword_1ED52B27C;
  v26 = v3;
  v27 = v4;
  *&v24[0] = static Material.thick;
  BYTE8(v24[0]) = byte_1ED52B278;
  HIDWORD(v24[0]) = dword_1ED52B27C;
  v8 = EnvironmentValues.materialProvider(for:)(v24);
  if (v8)
  {
    v18 = 1;
    v17 = 1;
    *&v19 = v3;
    *(&v19 + 1) = v4;
    LOWORD(v20) = 768;
    v21 = 0;
    *&v22 = 0;
    BYTE8(v22) = 1;
    memset(v23, 0, 24);
    v23[24] = 1;
    v14 = v22;
    v15[0] = 0uLL;
    *(v15 + 9) = *&v23[9];
    v12 = v19;
    v13 = v20;
    v9 = *(*v8 + 80);
    outlined copy of Material.ID(v5, v6);

    outlined init with copy of Material.Context(&v19, &v26);
    v9(&v16, &v12);

    v24[2] = v14;
    v25[0] = v15[0];
    *(v25 + 9) = *(v15 + 9);
    v24[0] = v12;
    v24[1] = v13;
    outlined destroy of Material.Context(v24);
    v26 = v3;
    v27 = v4;
    v28 = 768;
    v29 = 0;
    v30 = 0;
    v31 = 1;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v35 = 1;
    outlined destroy of Material.Context(&v26);
    v10 = v16;
    outlined consume of Material.ID(v5, v6);
    v6 = 2;
    outlined copy of Material.ID(v10, 2u);
    result = outlined consume of Material.ID(v10, 2u);
    v5 = v10;
  }

  else
  {
    v26 = v3;
    v27 = v4;

    v7 = specialized Material.ResolvedMaterial.Flags.init(environment:)(&v26) | v7;
    result = outlined copy of Material.ID(v5, v6);
  }

  *a2 = v5;
  a2[1] = v6 | (v7 << 32);
  return result;
}

uint64_t static WatchColorGradientProvider.== infix(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2 && ((*(**a1 + 88))() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for WatchColorGradientProvider(0, a3, a4, a4);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int WatchColorGradientProvider.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 152))(v3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WatchColorGradientProvider<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  WatchColorGradientProvider.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t _BackdropGroupEffect.effectValue(size:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  return result;
}

void _BackdropGroupEffect2.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

double _BackdropGroupEffect2.effectValue(size:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 12) = 0;

  return result;
}

double _BackdropGroupEffect_temp.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;

  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _BackdropGroupEffect2@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;

  return result;
}

uint64_t _BackdropGroupEffect_temp2.effectValue(size:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  return result;
}

uint64_t protocol witness for _RendererEffect.effectValue(size:) in conformance _BackdropGroupEffect@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  return result;
}

void lazy protocol witness table accessor for type _BackdropGroupEffect and conformance _BackdropGroupEffect()
{
  if (!lazy protocol witness table cache variable for type _BackdropGroupEffect and conformance _BackdropGroupEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _BackdropGroupEffect, &type metadata for _BackdropGroupEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _BackdropGroupEffect and conformance _BackdropGroupEffect);
  }
}

void lazy protocol witness table accessor for type _BackdropGroupEffect2 and conformance _BackdropGroupEffect2()
{
  if (!lazy protocol witness table cache variable for type _BackdropGroupEffect2 and conformance _BackdropGroupEffect2)
  {
    swift_getWitnessTable(protocol conformance descriptor for _BackdropGroupEffect2, &type metadata for _BackdropGroupEffect2, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _BackdropGroupEffect2 and conformance _BackdropGroupEffect2);
  }
}

void lazy protocol witness table accessor for type _BackdropGroupEffect_temp and conformance _BackdropGroupEffect_temp()
{
  if (!lazy protocol witness table cache variable for type _BackdropGroupEffect_temp and conformance _BackdropGroupEffect_temp)
  {
    swift_getWitnessTable(protocol conformance descriptor for _BackdropGroupEffect_temp, &type metadata for _BackdropGroupEffect_temp, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _BackdropGroupEffect_temp and conformance _BackdropGroupEffect_temp);
  }
}

void lazy protocol witness table accessor for type _BackdropGroupEffect_temp2 and conformance _BackdropGroupEffect_temp2()
{
  if (!lazy protocol witness table cache variable for type _BackdropGroupEffect_temp2 and conformance _BackdropGroupEffect_temp2)
  {
    swift_getWitnessTable(protocol conformance descriptor for _BackdropGroupEffect_temp2, &type metadata for _BackdropGroupEffect_temp2, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _BackdropGroupEffect_temp2 and conformance _BackdropGroupEffect_temp2);
  }
}

uint64_t _ShapeIntersection.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{

  return _ShapeIntersection.path(in:)(a1, 1, a2, a3, a4, a5, a6);
}

uint64_t (*_ShapeIntersection.animatableData.modify(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair(0, v6);
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return _ShapeIntersection.animatableData.modify;
}

double protocol witness for Shape.path(in:) in conformance _ShapeIntersection<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  _ShapeIntersection.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = v2;
  v5[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair(0, v6);
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>;
}

uint64_t _ShapeUnion.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{

  return _ShapeIntersection.path(in:)(a1, 2, a2, a3, a4, a5, a6);
}

uint64_t key path getter for _ShapeIntersection.animatableData : <A, B>_ShapeIntersection<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, _OWORD *), uint64_t (*a5)(uint64_t))
{
  v6 = *(a2 + a3 - 16);
  v9[0] = *(a2 + a3 - 32);
  v9[1] = v6;
  v7 = a4(0, v9);
  return a5(v7);
}

uint64_t key path setter for _ShapeIntersection.animatableData : <A, B>_ShapeIntersection<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, _OWORD *))
{
  v6 = *(a3 + a4 - 16);
  v9[0] = *(a3 + a4 - 32);
  v9[1] = v6;
  v7 = a5(0, v9);
  return specialized _ShapeSymmetricDifference.animatableData.setter(a1, v7);
}

uint64_t _ShapeIntersection.animatableData.setter(uint64_t a1, void *a2)
{
  specialized _ShapeSymmetricDifference.animatableData.setter(a1, a2);
  v5[0] = swift_getAssociatedTypeWitness();
  v5[1] = swift_getAssociatedTypeWitness();
  v5[2] = swift_getAssociatedConformanceWitness();
  v5[3] = swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for AnimatablePair(0, v5);
  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t (*_ShapeUnion.animatableData.modify(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair(0, v6);
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return _ShapeUnion.animatableData.modify;
}

void _ShapeIntersection.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    specialized _ShapeSymmetricDifference.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _ShapeSymmetricDifference.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double protocol witness for Shape.path(in:) in conformance _ShapeUnion<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  _ShapeUnion.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeUnion<A, B>(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = v2;
  v5[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair(0, v6);
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ShapeUnion<A, B>;
}

void protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    specialized _ShapeSymmetricDifference.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _ShapeSymmetricDifference.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t _ShapeSubtraction.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{

  return _ShapeIntersection.path(in:)(a1, 3, a2, a3, a4, a5, a6);
}

uint64_t (*_ShapeSubtraction.animatableData.modify(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair(0, v6);
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return _ShapeIntersection.animatableData.modify;
}

double protocol witness for Shape.path(in:) in conformance _ShapeSubtraction<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  _ShapeSubtraction.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeSubtraction<A, B>(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = v2;
  v5[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair(0, v6);
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>;
}

uint64_t _ShapeSymmetricDifference.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{

  return _ShapeIntersection.path(in:)(a1, 4, a2, a3, a4, a5, a6);
}

void _ShapeUnion.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  v8 = a2 & 1;
  v9 = a4 & 1;
  (*(a5[4] + 48))(a1, v8, a3, a4 & 1, a5[2]);
  (*(a5[5] + 48))(a1, v8, a3, v9, a5[3]);
}

uint64_t (*_ShapeSymmetricDifference.animatableData.modify(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair(0, v6);
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return _ShapeIntersection.animatableData.modify;
}

double protocol witness for Shape.path(in:) in conformance _ShapeSymmetricDifference<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  _ShapeSymmetricDifference.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeSymmetricDifference<A, B>(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = v2;
  v5[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair(0, v6);
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>;
}

uint64_t _ShapeLineIntersection.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{

  return _ShapeIntersection.path(in:)(a1, 5, a2, a3, a4, a5, a6);
}

void _ShapeIntersection.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  v8 = a2 & 1;
  v9 = a4 & 1;
  (*(a5[4] + 48))(a1, v8, a3, a4 & 1, a5[2]);
  (*(a5[5] + 48))(a1, v8, a3, v9, a5[3]);
}

uint64_t (*_ShapeLineIntersection.animatableData.modify(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair(0, v6);
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return _ShapeIntersection.animatableData.modify;
}

double protocol witness for Shape.path(in:) in conformance _ShapeLineIntersection<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  _ShapeLineIntersection.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeLineIntersection<A, B>(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = v2;
  v5[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair(0, v6);
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>;
}

uint64_t _ShapeLineSubtraction.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{

  return _ShapeIntersection.path(in:)(a1, 6, a2, a3, a4, a5, a6);
}

uint64_t _ShapeIntersection.path(in:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v25 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 32) + 24))(v20, *(a1 + 16));
  (*(*(a1 + 40) + 24))(v21, *(a1 + 24), a4, a5, a6, a7);
  v15 = *(v7 + *(a1 + 56));
  type metadata accessor for Path.PathBox();
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 16) = 2;
  RBPathStorageInit();
  v18[0] = a2;
  v18[1] = v15;
  MEMORY[0x193AC35E0](v16 + 24, 20, 0, v18);
  Path.append(to:)(v16 + 24);
  v23[0] = v21[0];
  v23[1] = v21[1];
  v24 = v22;
  outlined init with copy of Path.Storage(v23, v19);
  MEMORY[0x193AC35E0](v16 + 24, 21, 0, 0);
  Path.append(to:)(v16 + 24);
  outlined destroy of Path(v21);
  MEMORY[0x193AC35E0](v16 + 24, 16, 0, 0);
  outlined destroy of Path(v21);
  result = outlined destroy of Path(v20);
  *a3 = v16;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 5;
  return result;
}

uint64_t _ShapeIntersection.animatableData.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = *(a1[5] + 8);
  v4 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v17 - v6;
  v8 = *(a1[4] + 8);
  v9 = a1[2];
  v10 = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  (*(v8 + 24))(v9, v8, v11);
  (*(v3 + 24))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  return AnimatablePair.init(_:_:)(v13, v7, v10, AssociatedTypeWitness, AssociatedConformanceWitness, v15, v18);
}

uint64_t (*_ShapeLineSubtraction.animatableData.modify(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair(0, v6);
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return _ShapeIntersection.animatableData.modify;
}

double protocol witness for Shape.path(in:) in conformance _ShapeLineSubtraction<A, B>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  _ShapeLineSubtraction.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeLineSubtraction<A, B>(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = v2;
  v5[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  *v6 = AssociatedTypeWitness;
  v6[1] = v8;
  v6[2] = AssociatedConformanceWitness;
  v6[3] = v10;
  v11 = type metadata accessor for AnimatablePair(0, v6);
  v6[6] = v11;
  v12 = *(v11 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v6[9] = v14;
  _ShapeUnion.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ShapeIntersection<A, B>;
}

uint64_t specialized _ShapeSymmetricDifference.animatableData.setter(uint64_t a1, void *a2)
{
  v19 = a1;
  v3 = *(a2[5] + 8);
  v4 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v17 - v6;
  v7 = *(a2[4] + 8);
  v8 = a2[2];
  v9 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v20[0] = v9;
  v20[1] = AssociatedTypeWitness;
  v20[2] = AssociatedConformanceWitness;
  v20[3] = v13;
  v14 = type metadata accessor for AnimatablePair(0, v20);
  v15 = v18;
  AnimatablePair.subscript.getter(v11, v18, v14);
  (*(v7 + 32))(v11, v8, v7);
  return (*(v3 + 32))(v15, v4, v3);
}

uint64_t type metadata completion function for _ShapeIntersection(uint64_t a1)
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

uint64_t *initializeBufferWithCopyOfBuffer for _ShapeIntersection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = v10 + ((v5 + v8) & ~v8) + 1;
  v12 = (*(v4 + 80) | *(v7 + 80));
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    *(((v3 + v9) & v16) + v10) = *(v18 + v10);
  }

  return v3;
}

uint64_t initializeWithCopy for _ShapeIntersection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  *(*(v9 + 48) + v12) = *(*(v9 + 48) + v13);
  return a1;
}

uint64_t assignWithCopy for _ShapeIntersection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  *(*(v9 + 40) + v12) = *(*(v9 + 40) + v13);
  return a1;
}

uint64_t initializeWithTake for _ShapeIntersection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  *(*(v9 + 32) + v12) = *(*(v9 + 32) + v13);
  return a1;
}

uint64_t assignWithTake for _ShapeIntersection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  *(*(v9 + 24) + v12) = *(*(v9 + 24) + v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeIntersection(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_29;
  }

  v14 = v10 + (v12 & ~v9) + 1;
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_9;
  }

  v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
  if (HIWORD(v17))
  {
    v16 = *(a1 + v14);
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v17 <= 0xFF)
    {
      if (v17 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

LABEL_16:
      v18 = (v16 - 1) << v15;
      if (v14 > 3)
      {
        v18 = 0;
      }

      if (v10 + (v12 & ~v9) == -1)
      {
        v20 = 0;
      }

      else
      {
        if (v14 <= 3)
        {
          v19 = v10 + (v12 & ~v9) + 1;
        }

        else
        {
          v19 = 4;
        }

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v20 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v20 = *a1;
          }
        }

        else if (v19 == 1)
        {
          v20 = *a1;
        }

        else
        {
          v20 = *a1;
        }
      }

      return v11 + (v20 | v18) + 1;
    }

    v16 = *(a1 + v14);
    if (*(a1 + v14))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  if (v5 == v11)
  {
    return (*(v4 + 48))();
  }

  v22 = (a1 + v12) & ~v9;
  if (v8 == v11)
  {
    return (*(v7 + 48))(v22, v8, v6);
  }

  v23 = *(v22 + v10);
  if (v23 < 2)
  {
    return 0;
  }

  return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *storeEnumTagSinglePayload for _ShapeIntersection(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = v9 + v10;
  v14 = v11 + ((v9 + v10) & ~v10) + 1;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_50:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
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
  if (v6 == v12)
  {
    v25 = *(v5 + 56);

    return v25();
  }

  else
  {
    result = (&result[v13] & ~v10);
    if (v8 == v12)
    {
      v26 = *(v7 + 56);

      return v26(result);
    }

    else
    {
      result[v11] = a2 + 1;
    }
  }

  return result;
}