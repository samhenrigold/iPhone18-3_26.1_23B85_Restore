double specialized ViewGraphRootValueUpdater.updateGraph()()
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = swift_beginAccess();
  v3 = *(v0 + 24);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v1);
    v10[8] = v3;
    v11 = v0;
    v12 = &protocol witness table for EmptyViewRendererHost;
    v13 = v0;
    v4 = objc_opt_self();

    if ([v4 isMainThread])
    {
      specialized closure #1 in ViewGraphRootValueUpdater.updateGraph()(v3, v0, v0);
    }

    else
    {
      v5 = swift_allocObject();
      *(v5 + 16) = closure #1 in ViewGraphRootValueUpdater.updateGraph()specialized partial apply;
      *(v5 + 24) = v10;
      v6 = AGSubgraphGetCurrent();
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v14[0] = thunk for @callee_guaranteed () -> ()partial apply;
      v14[1] = v5;
      v15 = v6;
      v16 = CurrentAttribute;
      v8 = one-time initialization token for _lock;

      if (v8 != -1)
      {
        swift_once();
      }

      _MovableLockSyncMain(static Update._lock, v14, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
      v9 = v15;

      LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

      if (v9)
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(int a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v3 = MEMORY[0x193AC1150](*(v1 + 40), a1, 4);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(void *a1, uint64_t a2)
{
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

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  Hasher.init(_seed:)();
  v2 = *a1;
  if (a1[4] < 0)
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v2);
  }

  else
  {
    v4 = a1[1];
    v3 = a1[2];
    v5 = *(a1 + 32);
    v6 = a1[3];
    MEMORY[0x193AC11A0](0);
    if (v5)
    {
      if (v5 == 1)
      {
        MEMORY[0x193AC11A0](2);
        Hasher._combine(_:)(v2);
        if (v4)
        {
          Hasher._combine(_:)(1u);
          (*(*v4 + 120))(v9);
          MEMORY[0x193AC11A0](v3);
        }

        else
        {
          Hasher._combine(_:)(0);
        }
      }

      else
      {
        MEMORY[0x193AC11A0](0);
      }
    }

    else
    {
      MEMORY[0x193AC11A0](1);
      _Glass.Variant.ID.hash(into:)(v9);
      Hasher._combine(_:)(BYTE1(v4) & 1);
      (*(*v3 + 120))(v9);
      MEMORY[0x193AC11A0](v6);
    }
  }

  v7 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(__int128 *a1)
{
  v2 = a1[1];
  v6 = *a1;
  v7 = v2;
  v8 = *(a1 + 32);
  Hasher.init(_seed:)();
  GlassContainer.Entry.ModelID.hash(into:)(v5);
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

void specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, uint64_t a2)
{
  v4 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *v6;
      v6 += 6;
      v9 = *(*v7 + 120);

      v9(v11);
      Hasher._combine(_:)(v8);

      --v5;
    }

    while (v5);
  }

  v10 = Hasher._finalize()();

  specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v10);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  if (a2)
  {
    Hasher._combine(_:)(1u);
    (*(*a2 + 120))(v8);
    MEMORY[0x193AC11A0](a3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v5, a2, a3, v6);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  v3 = Hasher._finalize()();

  return a2(a1, v3);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v6 = a2;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v9, v6 & 1, a1, v19);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * result;
    *v22 = a1;
    *(v22 + 8) = a2;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a3, a1, a2, v21);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a1, v19, a3);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt32 a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 24 * result);
    *v24 = a1;
    v24[1] = a2;
    v24[2] = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a4, a1, a2, a3, v23);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 48 * v14;

  return outlined assign with take of NamedImage.DecodedInfo(a1, v21);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(int a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 4 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

void *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    return outlined assign with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(a1, v19[7] + 640 * v9, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  }

  return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, int a2, uint64_t *a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    specialized _NativeDictionary.copy()();
    result = v19;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * result;
    *v22 = a1;
    *(v22 + 8) = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a3, a1, a2, v21);
    return outlined init with copy of ResolvedIDs.Key(a3, v23);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return outlined init with take of AnyTrackedValue(a1, v22);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return outlined init with take of AnyTrackedValue(a1, v22);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(int a1, int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      type metadata accessor for AGAttribute(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 4 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 1, a4, a5 & 1);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 1, a4, a5 & 1);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v15, a2, a3 & 1, a4, a5 & 1, a1, v25);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, Swift::UInt32 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 80 * result);
    v21 = a1[3];
    v20[2] = a1[2];
    v20[3] = v21;
    v20[4] = a1[4];
    v22 = a1[1];
    *v20 = *a1;
    v20[1] = v22;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * result);
    v21 = a1[1];
    *v20 = *a1;
    v20[1] = v21;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
    return outlined init with copy of GlassContainer.Entry.ModelID(a2, v22);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a2 & 1) == 0)
  {
    if (v22 >= v20 && (a2 & 1) == 0)
    {
      v23 = result;
      specialized _NativeDictionary.copy()();
      result = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 32 * result);
    *v26 = a3;
    v26[1] = a4;
    v26[2] = a5;
    v26[3] = a6;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a1 & 1, v25, a3, a4, a5, a6);
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);

    outlined copy of AttributedString.AnyAttribute(a2, a3);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 >= v16 && (a2 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * result);
    *v22 = a3;
    v22[1] = a4;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a1, v21, a3, a4);
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for AGSubgraphRef(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    v19 = a2;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v21 = ~v4;
    while (1)
    {
      v8 = *(v3 + 48) + 16 * v5;
      v9 = *v8;
      v10 = *(v8 + 8);
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v14;
      v15 = v9;
      if (a2 < 0)
      {
        goto LABEL_10;
      }

      v16 = dispatch thunk of static AttributedStringKey.name.getter();
LABEL_11:
      if (v11 == v16 && v13 == v17)
      {
        outlined consume of AttributedString.AnyAttribute(v9, v10);

        return v5;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined consume of AttributedString.AnyAttribute(v9, v10);

      if (v19)
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v21;
      if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (v9 == a1)
      {
        return v5;
      }

      goto LABEL_4;
    }

    v11 = dispatch thunk of static AttributedStringKey.name.getter();
    v13 = v12;
LABEL_10:
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_11;
  }

  return v5;
}

void specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + 64;
  v6 = -1 << *(v3 + 32);
  v7 = a3 & ~v6;
  if ((*(v3 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = HIDWORD(a1);
    v9 = ~v6;
    v23 = HIDWORD(a1);
    v24 = v3 + 64;
    v22 = ~v6;
    while (1)
    {
      v10 = *(v3 + 48) + 16 * v7;
      if (*v10 == a1 && *(v10 + 4) == v8)
      {
        v30 = *(v10 + 8);
        v12 = *(v30 + 16);
        if (v12 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        return;
      }
    }

    if (v12 && v30 != a2)
    {
      v27 = v7;

      v13 = 0;
      do
      {
        v15 = *(v30 + v13 + 32);
        v14 = *(v30 + v13 + 40);
        v16 = *(v30 + v13 + 48);
        v17 = *(a2 + v13 + 40);
        v18 = *(a2 + v13 + 48);
        if (v15 == *(a2 + v13 + 32))
        {
          v21 = v14 == v17 && v16 == v18;
          if (!v21 || ((*(v30 + v13 + 52) ^ *(a2 + v13 + 52)) & 1) != 0)
          {
LABEL_3:

            v3 = v26;
            v7 = v27;
            v5 = v24;
            LODWORD(a1) = v25;
            v9 = v22;
            LODWORD(v8) = v23;
            goto LABEL_4;
          }
        }

        else
        {
          v19 = *(*v15 + 112);
          v28 = *(a2 + v13 + 52);
          v29 = *(v30 + v13 + 52);

          LOBYTE(v19) = v19(v20);

          if (v19 & 1) == 0 || v14 != v17 || v16 != v18 || ((v29 ^ v28))
          {
            goto LABEL_3;
          }
        }

        v13 += 24;
        --v12;
      }

      while (v12);
    }
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v12 = ~v6;
    while (1)
    {
      v13 = *(v8 + 48) + 24 * v7;
      if (*v13 != a1)
      {
        goto LABEL_6;
      }

      v14 = *(v13 + 8);
      if (!v14)
      {
        break;
      }

      if (!a2)
      {

LABEL_4:

LABEL_5:

        goto LABEL_6;
      }

      v18 = *(v13 + 16);
      if (v14 == a2)
      {
        swift_retain_n();
      }

      else
      {
        v15 = *(*v14 + 112);
        swift_retain_n();

        LOBYTE(v15) = v15(v16);

        if ((v15 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (v18 == a3)
      {
        return v7;
      }

LABEL_6:
      v7 = (v7 + 1) & v12;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        return v7;
      }
    }

    if (!a2)
    {
      return v7;
    }

    goto LABEL_4;
  }

  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void type metadata accessor for AGGraphRef?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (label: String?, value: Any)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (label: String?, value: Any))
  {
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_4(255, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (label: String?, value: Any));
    }
  }
}

void lazy protocol witness table accessor for type GraphHost.RemovedState and conformance GraphHost.RemovedState()
{
  if (!lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphHost.RemovedState, &type metadata for GraphHost.RemovedState, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphHost.RemovedState, &type metadata for GraphHost.RemovedState, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphHost.RemovedState, &type metadata for GraphHost.RemovedState, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState);
  }
}

{
  if (!lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphHost.RemovedState, &type metadata for GraphHost.RemovedState, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphHost.RemovedState and conformance GraphHost.RemovedState);
  }
}

void lazy protocol witness table accessor for type GraphHost.ConstantID and conformance GraphHost.ConstantID()
{
  if (!lazy protocol witness table cache variable for type GraphHost.ConstantID and conformance GraphHost.ConstantID)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphHost.ConstantID, &type metadata for GraphHost.ConstantID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphHost.ConstantID and conformance GraphHost.ConstantID);
  }
}

void lazy protocol witness table accessor for type _GraphMutation_Style and conformance _GraphMutation_Style()
{
  if (!lazy protocol witness table cache variable for type _GraphMutation_Style and conformance _GraphMutation_Style)
  {
    swift_getWitnessTable(protocol conformance descriptor for _GraphMutation_Style, &type metadata for _GraphMutation_Style, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _GraphMutation_Style and conformance _GraphMutation_Style);
  }
}

uint64_t assignWithCopy for GraphHost.Data(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  v10 = *(a2 + 16);
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  v12 = v10;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for GraphHost.Data(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t type metadata completion function for AssignmentGraphMutation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AssignmentGraphMutation(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-10 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    (*(v4 + 16))((a1 + v5 + 9) & ~v5, (a2 + v5 + 9) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  return v3;
}

uint64_t initializeWithCopy for AssignmentGraphMutation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((*(v4 + 80) + 9 + a1) & ~*(v4 + 80), (*(v4 + 80) + 9 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithCopy for AssignmentGraphMutation(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 24))((*(v5 + 80) + 9 + a1) & ~*(v5 + 80), (a2 + *(v5 + 80) + 9) & ~*(v5 + 80));
  return a1;
}

uint64_t initializeWithTake for AssignmentGraphMutation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((*(v4 + 80) + 9 + a1) & ~*(v4 + 80), (*(v4 + 80) + 9 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithTake for AssignmentGraphMutation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((*(v4 + 80) + 9 + a1) & ~*(v4 + 80), (*(v4 + 80) + 9 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for AssignmentGraphMutation(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
  }

  v8 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for AssignmentGraphMutation(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 9) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
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
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 9] & ~v8;

  v18(v19);
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncTransaction(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for AsyncTransaction(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithTake for AsyncTransaction(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

uint64_t outlined assign with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_4(0, a3, a4, a5);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](0);
  v0 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

double specialized closure #1 in ViewGraphRootValueUpdater.updateGraph()(__int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_getObjectType();
    v4 = off_1F00C1A70[0];

    v6 = v4(v32);
    if (*v5)
    {
      *v5 &= ~1u;
    }

    (v6)(v32, 0);

    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  swift_getObjectType();
  v8 = off_1F00C1A70[0];

  v10 = v8(v32);
  if ((*v9 & 2) != 0)
  {
    *v9 &= ~2u;
  }

  (v10)(v32, 0);

  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_17:
  swift_getObjectType();
  v11 = off_1F00C1A70[0];

  v13 = v11(v32);
  if ((*v12 & 4) != 0)
  {
    *v12 &= ~4u;
  }

  (v13)(v32, 0);

  ViewGraph.invalidateTransform()();

  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_20:
  swift_getObjectType();
  v14 = off_1F00C1A70[0];

  v16 = v14(v32);
  if ((*v15 & 8) != 0)
  {
    *v15 &= ~8u;
  }

  (v16)(v32, 0);

  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_23:
  swift_getObjectType();
  v17 = off_1F00C1A70[0];

  v19 = v17(v32);
  if ((*v18 & 0x10) != 0)
  {
    *v18 &= ~0x10u;
  }

  (v19)(v32, 0);

  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_26:
  swift_getObjectType();
  v20 = off_1F00C1A70[0];

  v22 = v20(v32);
  if ((*v21 & 0x20) != 0)
  {
    *v21 &= ~0x20u;
  }

  (v22)(v32, 0);

  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_29:
  swift_getObjectType();
  v23 = off_1F00C1A70[0];

  v25 = v23(v32);
  if ((*v24 & 0x40) != 0)
  {
    *v24 &= ~0x40u;
  }

  (v25)(v32, 0);

  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_32:
  swift_getObjectType();
  v26 = off_1F00C1A70[0];

  v28 = v26(v32);
  if ((*v27 & 0x80) != 0)
  {
    *v27 &= ~0x80u;
  }

  (v28)(v32, 0);

  if ((a1 & 0x100) != 0)
  {
LABEL_35:
    swift_getObjectType();
    v29 = off_1F00C1A70[0];

    v31 = v29(v32);
    if ((*v30 & 0x100) != 0)
    {
      *v30 &= ~0x100u;
    }

    (v31)(v32, 0);
  }

  return result;
}

double partial apply for specialized closure #1 in ViewGraphRootValueUpdater.updateGraph()()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  ObjectType = swift_getObjectType();

  return specialized closure #1 in ViewGraphRootValueUpdater.updateGraph()(v4, v1, v3, ObjectType, v2);
}

double specialized static GraphHost.flushGlobalTransactions()()
{
  if (one-time initialization token for pendingGlobalTransactions != -1)
  {
LABEL_29:
    swift_once();
  }

  swift_beginAccess();
  v1 = static GraphHost.pendingGlobalTransactions;
  v26 = *(static GraphHost.pendingGlobalTransactions + 2);
  if (v26)
  {
    v2 = 0;
    v24 = static GraphHost.pendingGlobalTransactions + 32;
    v25 = static GraphHost.pendingGlobalTransactions;
    static GraphHost.pendingGlobalTransactions = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v2 >= v1[2])
      {
        __break(1u);
        goto LABEL_29;
      }

      v3 = &v24[40 * v2];
      v4 = *(v3 + 1);
      v5 = *(v3 + 2);
      v6 = *(v3 + 6);
      v7 = *(v3 + 7);
      v8 = *(v3 + 4);
      ObjectType = swift_getObjectType();
      v10 = *(v4 + 8);

      swift_unknownObjectRetain();
      v11 = v10(ObjectType, v4);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      swift_retain_n();

      LOBYTE(v27[0]) = 0;
      specialized GraphHost.runTransaction(_:do:id:)(v5, v7, v12, v5, v6 | (v7 << 32), v8);

      if ((*(*v12 + 192))(v13))
      {
        v15 = v14;
        v16 = swift_getObjectType();
        (*(v15 + 16))(v16, v15);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
LABEL_5:

LABEL_6:
      ++v2;
      v1 = v25;
      if (v2 == v26)
      {

        return result;
      }
    }

    _threadTransactionData();
    v30 = v5;
    v17 = one-time initialization token for v5;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = static Semantics.v5;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C524 == 1)
    {
      if ((dyld_program_minos_at_least() & 1) == 0)
      {
LABEL_22:
        _setThreadTransactionData();
        v20 = *(v8 + 16);
        if (v20)
        {
          v21 = v8 + 32;
          do
          {
            outlined init with copy of AnyTrackedValue(v21, v27);
            v23 = v28;
            v22 = v29;
            __swift_project_boxed_opaque_existential_1(v27, v28);
            (*(v22 + 8))(v23, v22);
            __swift_destroy_boxed_opaque_existential_1(v27);
            v21 += 40;
            --v20;
          }

          while (v20);
        }

        _setThreadTransactionData();

        swift_unknownObjectRelease();

        goto LABEL_5;
      }
    }

    else if (dword_1ED53C520 < v18)
    {
      goto LABEL_22;
    }

    v19 = _threadTransactionData();
    if (v19)
    {
      type metadata accessor for PropertyList.Element();
      swift_unknownObjectRetain();
      v19 = swift_dynamicCastClassUnconditional();
    }

    v30 = v19;
    PropertyList.merge(_:)(v5);
    goto LABEL_22;
  }

  return result;
}

uint64_t outlined assign with take of WeakBox<AnyLocationBase>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AGGraphRef?(0, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in variable initialization expression of static GraphHost.sharedGraph()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  return handleTraceNotification(graph:token:)(v1, *(v2 + 16));
}

double destroy for GlobalTransaction(void *a1)
{
  swift_unknownObjectRelease();

  return result;
}

uint64_t initializeWithCopy for GlobalTransaction(uint64_t a1, __int128 *a2)
{
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *(a1 + 32) = *(a2 + 4);
  swift_unknownObjectRetain();

  return a1;
}

uint64_t *assignWithCopy for GlobalTransaction(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = v4;
  a1[2] = a2[2];

  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  a1[4] = a2[4];

  return a1;
}

void *assignWithTake for GlobalTransaction(void *a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  a1[2] = *(a2 + 16);

  a1[3] = *(a2 + 24);
  a1[4] = *(a2 + 32);

  return a1;
}

uint64_t _s7SwiftUI14GlassContainerO5EntryV7ModelIDO_AGtWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for (String, String)(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance GlassEnabledPredicate(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v7 = *a1;
  v6 = a1[1];
  v12[2] = a1[2];
  v9 = v7;
  v10 = v6;
  v11 = a1[2];
  outlined init with copy of _GraphInputs(v12, v13);
  LOBYTE(a4) = a4(&v9);
  v13[0] = v9;
  v13[1] = v10;
  v13[2] = v11;
  outlined destroy of _GraphInputs(v13);
  return a4 & 1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance _SemanticFeature<A>(_OWORD *a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for _SemanticFeature<A>);

  return static ViewInputFlag.evaluate(inputs:)(a1, a2, v4);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _SemanticFeature<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for _SemanticFeature<A>, a3);

  return static ViewInputFlag._makeInputs(modifier:inputs:)(v5, a2, a3, v5);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance <> InvertedViewInputPredicate<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  swift_getWitnessTable(protocol conformance descriptor for <> InvertedViewInputPredicate<A>, a3, &v8);
  return static ViewInputFlag._makeInputs(modifier:inputs:)(v6, a2, a3, v6);
}

void protocol witness for static PropertyKey.defaultValue.getter in conformance <> InvertedViewInputPredicate<A>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a2 - 8);
  swift_getWitnessTable(protocol conformance descriptor for <> InvertedViewInputPredicate<A>, a1, &v4);
  *a3 = 0;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance SemanticsIsLinkedOnOrAfter<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for SemanticsIsLinkedOnOrAfter<A>, a3);

  return static ViewInputFlag._makeInputs(modifier:inputs:)(v5, a2, a3, v5);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance BothFeatures<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for BothFeatures<A, B>, a3);

  return specialized static ViewInputFlag._makeInputs(modifier:inputs:)(a2, a3, v5);
}

uint64_t specialized static ViewInputFlag._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v8 = &v11 - v7;
  v9 = swift_checkMetadataState();
  (*(a3 + 48))(a2, a3);
  return _GraphInputs.subscript.setter(v8, v9, v9, v5);
}

void instantiation function for generic protocol witness table for <> InvertedViewInputPredicate<A>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = *a3;
  v5 = v10;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> InvertedViewInputPredicate<A>, a2, &v10);
  *(a1 + 8) = v7;
  v9 = v5;
  swift_getWitnessTable(protocol conformance descriptor for <> InvertedViewInputPredicate<A>, a2, &v9, WitnessTable);
  *(a1 + 16) = v8;
}

{
  v5 = *a3;
  swift_getWitnessTable(protocol conformance descriptor for <> InvertedViewInputPredicate<A>, a2, &v5);
  *(a1 + 8) = v4;
}

{
  v5 = *a3;
  swift_getWitnessTable(protocol conformance descriptor for <> InvertedViewInputPredicate<A>, a2, &v5);
  *(a1 + 8) = v4;
}

{
  v5 = *a3;
  swift_getWitnessTable(protocol conformance descriptor for <> InvertedViewInputPredicate<A>, a2, &v5);
  *(a1 + 8) = v4;
}

uint64_t VectorImageLayer.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = 0;
  *a2 = result;
  a2[1] = 2;
  return result;
}

id CUINamedVectorGlyph.image(at:value:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (one-time initialization token for valueLock != -1)
  {
    swift_once();
  }

  v11 = static CUINamedVectorGlyph.valueLock;
  [static CUINamedVectorGlyph.valueLock lock];
  [v5 variableMinValue];
  v13 = v12;
  [v5 variableMaxValue];
  v15 = v14;
  if ((a5 & 0x100000000) != 0)
  {
    v16 = INFINITY;
  }

  else
  {
    v16 = *&a5;
  }

  v17 = 0.0;
  if ((a5 & 0x100000000) != 0)
  {
    v17 = INFINITY;
  }

  [v5 setVariableMinValue_];
  [v5 setVariableMaxValue_];
  if (a4)
  {
    v18 = [v5 image];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }
  }

  else
  {
    v19 = [v5 rasterizeImageUsingScaleFactor:*&a3 forTargetSize:{*&a1, *&a2}];
  }

  [v5 setVariableMinValue_];
  [v5 setVariableMaxValue_];
  [v11 unlock];
  return v19;
}

uint64_t VectorImageLayer.init(pdfPage:size:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  a3[1] = 2;
  a2(0);
  a3[2] = 0;
  a3[3] = 0;
  result = swift_allocObject();
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *a3 = result;
  return result;
}

id VectorImageLayer.location.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return outlined copy of Image.Location?(v2);
}

void VectorImageLayer.location.setter(uint64_t *a1)
{
  v2 = *a1;
  outlined consume of Image.Location?(*(v1 + 8));
  *(v1 + 8) = v2;
}

uint64_t VectorImageLayer.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void VectorImageLayer.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

Swift::Int VectorImageLayer.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t VectorImageLayer.encode(to:)(uint64_t a1)
{
  v4 = *v1;
  (*(**v1 + 96))();
  specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  v5 = (*(*v4 + 88))();
  v7 = v6;
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  *(v9 + 8 * v12 + 32) = v8;
  *(a1 + 24) = v9;
  if (!__OFADD__(v8, 1))
  {
    *(a1 + 8) = v8 + 1;
    CGSize.encode(to:)(a1, v5, v7);
    ProtobufEncoder.endLengthDelimited()();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t VectorImageLayer.init(from:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    goto LABEL_56;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = *(a1 + 32);
      if (v6 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v6)
      {
        goto LABEL_58;
      }

      *(a1 + 24) = 0;
    }

    v11 = ProtobufDecoder.decodeVarint()(v11);
    if (v2)
    {
      return swift_unknownObjectRelease();
    }

    if (v11 < 8)
    {
      goto LABEL_58;
    }

LABEL_11:
    if (v11 >> 3 == 2)
    {
      break;
    }

    if (v11 >> 3 == 1)
    {
      if ((v11 & 7) != 2)
      {
        goto LABEL_58;
      }

      v3 = *(a1 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      v15 = *(v3 + 2);
      v14 = *(v3 + 3);
      if (v15 >= v14 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      *(v3 + 2) = v15 + 1;
      *&v3[8 * v15 + 32] = v7;
      *(a1 + 40) = v3;
      v16 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v2)
      {
        return swift_unknownObjectRelease();
      }

      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = *(a1 + 8) + v16;
        if (v7 < v17)
        {
          goto LABEL_58;
        }

        *(a1 + 16) = v17;
        CodableRBDisplayListContents.init(from:)(a1, &v36);
        v3 = *(a1 + 40);
        if (!*(v3 + 2))
        {
          goto LABEL_68;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v18 = *(v3 + 2);
          if (!v18)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
          v18 = *(v3 + 2);
          if (!v18)
          {
            goto LABEL_70;
          }
        }

        v19 = v18 - 1;
        v7 = *&v3[8 * v19 + 32];
        *(v3 + 2) = v19;
        swift_unknownObjectRelease();
        *(a1 + 40) = v3;
        *(a1 + 16) = v7;
        v8 = v36;
        goto LABEL_4;
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      __break(1u);
      do
      {
        __break(1u);
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        v33 = *(v3 + 2);
        if (v33)
        {
          goto LABEL_65;
        }

        __break(1u);
        v3 = *(a1 + 40);
      }

      while (!*(v3 + 2));
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v33 = *(v3 + 2);
        if (v33)
        {
LABEL_65:
          v34 = v33 - 1;
          v35 = *&v3[8 * v34 + 32];
          *(v3 + 2) = v34;
          result = swift_unknownObjectRelease();
          *(a1 + 40) = v3;
          *(a1 + 16) = v35;
          return result;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        v3 = result;
        v33 = *(result + 16);
        if (v33)
        {
          goto LABEL_65;
        }
      }

      __break(1u);
      return result;
    }

    v29 = v11 & 7;
    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v31 = ProtobufDecoder.decodeVarint()(v11);
        if (v2)
        {
          return swift_unknownObjectRelease();
        }

        if (v31 < 0)
        {
          goto LABEL_71;
        }

        v30 = *(a1 + 8) + v31;
        if (v7 < v30)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v29 != 5)
        {
          goto LABEL_58;
        }

        v30 = *(a1 + 8) + 4;
        if (v7 < v30)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      if ((v11 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v11);
        if (v2)
        {
          return swift_unknownObjectRelease();
        }

        goto LABEL_4;
      }

      if (v29 != 1)
      {
        goto LABEL_58;
      }

      v30 = *(a1 + 8) + 8;
      if (v7 < v30)
      {
        goto LABEL_58;
      }
    }

    *(a1 + 8) = v30;
LABEL_4:
    v6 = *(a1 + 8);
    if (v6 >= v7)
    {
      *(a1 + 24) = 0;
      if (v8)
      {
        type metadata accessor for DisplayListImageContents();
        result = swift_allocObject();
        *(result + 32) = v9;
        *(result + 40) = v10;
        *(result + 16) = MEMORY[0x1E69E7CC8];
        *(result + 24) = v8;
        *a2 = result;
        a2[1] = 2;
        a2[2] = 0;
        a2[3] = 0;
        return result;
      }

LABEL_57:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }
  }

  if ((v11 & 7) != 2)
  {
    goto LABEL_58;
  }

  v3 = *(a1 + 40);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  if ((v20 & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    v3 = v20;
  }

  v22 = *(v3 + 2);
  v21 = *(v3 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v3);
    v3 = v20;
  }

  *(v3 + 2) = v22 + 1;
  *&v3[8 * v22 + 32] = v7;
  *(a1 + 40) = v3;
  v23 = ProtobufDecoder.decodeVarint()(v20);
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  if (v23 < 0)
  {
    goto LABEL_67;
  }

  v24 = *(a1 + 8) + v23;
  if (v7 >= v24)
  {
    *(a1 + 16) = v24;
    specialized CGPoint.init(from:)(a1);
    v3 = *(a1 + 40);
    if (!*(v3 + 2))
    {
      goto LABEL_69;
    }

    v9 = v25;
    v10 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v27 = *(v3 + 2);
      if (!v27)
      {
        goto LABEL_55;
      }

      goto LABEL_36;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v27 = *(v3 + 2);
    if (v27)
    {
LABEL_36:
      v28 = v27 - 1;
      v7 = *&v3[8 * v28 + 32];
      *(v3 + 2) = v28;
      *(a1 + 40) = v3;
      *(a1 + 16) = v7;
      goto LABEL_4;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    *(a1 + 24) = 0;
    goto LABEL_57;
  }

LABEL_58:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t DisplayListImageContents.__allocating_init(displayList:size:)(uint64_t a1, double a2, double a3)
{
  result = swift_allocObject();
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *(result + 24) = a1;
  return result;
}

Swift::Void __swiftcall CachedVectorImageContents.draw(in:)(CGContextRef in)
{
  [(*(*v1 + 96))() renderInContext:in options:0];

  swift_unknownObjectRelease();
}

uint64_t CachedVectorImageContents.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t CachedVectorImageContents.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t CachedVectorImageContents.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id one-time initialization function for valueLock()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  static CUINamedVectorGlyph.valueLock = result;
  return result;
}

uint64_t DrawableImageContents.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PDFImageContents.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t DisplayListImageContents.init(displayList:size:)(uint64_t a1, double a2, double a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  *(v3 + 24) = a1;
  return v3;
}

uint64_t DisplayListImageContents.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t DisplayListImageContents.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void lazy protocol witness table accessor for type VectorImageLayer and conformance VectorImageLayer()
{
  if (!lazy protocol witness table cache variable for type VectorImageLayer and conformance VectorImageLayer)
  {
    swift_getWitnessTable("9r\na", &type metadata for VectorImageLayer, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VectorImageLayer and conformance VectorImageLayer);
  }
}

double destroy for VectorImageLayer(void *a1)
{

  v2 = a1[1];
  if (v2 >= 3)
  {
  }

  return result;
}

uint64_t *initializeWithCopy for VectorImageLayer(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;

  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      a1[1] = 2;
    }

    else
    {
      a1[1] = v4;
      v5 = v4;
    }
  }

  else
  {
    a1[1] = v4;
  }

  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;

  return a1;
}

id *assignWithCopy for VectorImageLayer(id *a1, id *a2)
{
  *a1 = *a2;

  v4 = (a1 + 1);
  v5 = a1[1];
  v6 = a2[1];
  if (v5 != 2)
  {
    if (v6 == 2)
    {
      outlined destroy of Image.Location(a1 + 1);
    }

    else
    {
      if (v5 < 2)
      {
        if (v6 < 2)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }

      if (v6 >= 2)
      {
        *v4 = v6;
        v9 = v6;

        goto LABEL_9;
      }
    }

    v6 = a2[1];
    goto LABEL_8;
  }

  if (v6 >= 2)
  {
    if (v6 == 2)
    {
      v6 = 2;
      goto LABEL_8;
    }

LABEL_12:
    *v4 = v6;
    v8 = v6;
    goto LABEL_9;
  }

LABEL_8:
  *v4 = v6;
LABEL_9:
  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

id *assignWithTake for VectorImageLayer(id *a1, id *a2)
{
  *a1 = *a2;

  v5 = (a1 + 1);
  v4 = a1[1];
  v6 = a2[1];
  if (v4 == 2)
  {
    if (v6 != 2)
    {
      *v5 = v6;
      goto LABEL_7;
    }

LABEL_6:
    *v5 = 2;
    goto LABEL_7;
  }

  if (v6 == 2)
  {
    outlined destroy of Image.Location(a1 + 1);
    goto LABEL_6;
  }

  if (v4 >= 2)
  {
    if (v6 >= 2)
    {
      *v5 = v6;
    }

    else
    {

      *v5 = v6;
    }
  }

  else
  {
    *v5 = v6;
  }

LABEL_7:
  v7 = a2[3];
  a1[2] = a2[2];
  a1[3] = v7;

  return a1;
}

uint64_t PreferenceValues.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized PreferenceValues.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for PreferenceValues.Value(0, AssociatedTypeWitness, v6, v7);
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*PreferenceValues.subscript.modify(void *a1, unint64_t a2, uint64_t a3, uint64_t a4))(unint64_t **a1, char a2)
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for PreferenceValues.Value(0, AssociatedTypeWitness, v13, v14);
  v11[4] = v15;
  v16 = *(v15 - 8);
  v11[5] = v16;
  v17 = *(v16 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v16 + 64));
    v18 = malloc(v17);
  }

  v11[7] = v18;
  PreferenceValues.subscript.getter(a2, a3, a4, v18);
  return PreferenceValues.subscript.modify;
}

void PreferenceValues.subscript.modify(unint64_t **a1, char a2)
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
    specialized PreferenceValues.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized PreferenceValues.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void PreferenceValues.removeValue<A>(for:)(unint64_t a1)
{
  v6[0] = *v1;

  v3 = PreferenceValues.index<A>(of:)(a1);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    specialized Array.remove(at:)(v3, v6);
    outlined destroy of PreferenceValues.Entry(v6);
  }
}

Swift::Bool __swiftcall PreferenceValues.mayNotBeEqual(to:)(SwiftUI::PreferenceValues to)
{
  v2 = *to.entries._rawValue;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4 != *(*to.entries._rawValue + 16))
  {
    return 1;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = v3 + 32;
  v7 = v2 + 32;
  while (v5 < *(v3 + 16))
  {
    LOBYTE(to.entries._rawValue) = outlined init with copy of PreferenceValues.Entry(v6, &v16);
    v8 = *(v2 + 16);
    if (v5 == v8)
    {
      outlined destroy of PreferenceValues.Entry(&v16);
      LOBYTE(to.entries._rawValue) = 0;
      return to.entries._rawValue;
    }

    if (v5 >= v8)
    {
      goto LABEL_18;
    }

    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    outlined init with copy of PreferenceValues.Entry(v7, v24);
    v16 = v20;
    v17 = v21;
    v18 = v22;
    v19 = v23;
    v12 = v24[0];
    v13 = v24[1];
    v14 = v24[2];
    v15 = v25;
    if (v20 != *&v24[0])
    {
      outlined destroy of PreferenceValues.Entry(&v12);
      outlined destroy of PreferenceValues.Entry(&v16);
      return 1;
    }

    v9 = v17;
    outlined destroy of PreferenceValues.Entry(&v16);
    v10 = v13;
    LOBYTE(to.entries._rawValue) = outlined destroy of PreferenceValues.Entry(&v12);
    if (v9 == -1 || v10 == -1 || v9 != v10)
    {
      return 1;
    }

    ++v5;
    v6 += 56;
    v7 += 56;
    if (v4 == v5)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return to.entries._rawValue;
}

void specialized closure #1 in static PreferenceValues.combineHostKeyValues(into:keys:childIndices:childAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v69 = a7;
  v59 = a6;
  v67 = a5;
  if (a3 != a4)
  {
    v50 = a3;
    if (a4 < a3)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (a3 >= a4)
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      return;
    }

    v8 = 0;
    v51 = v69 + 16 * a3 + 40;
    v52 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v50 & 0x8000000000000000) != 0)
      {
        goto LABEL_87;
      }

      if (v50 >= *(v69 + 16))
      {
        goto LABEL_88;
      }

      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        v55 = *WeakValue;

        if (!*(v55 + 16))
        {
          goto LABEL_70;
        }
      }

      else
      {
        v55 = v52;
        if (!*(v52 + 16))
        {
          goto LABEL_70;
        }
      }

      if (AGGraphGetWeakValue())
      {

        if (!*(v55 + 16))
        {
          goto LABEL_70;
        }
      }

      else
      {
        v56 = v52;
        if (!*(v55 + 16))
        {
LABEL_70:

          goto LABEL_61;
        }
      }

      v53 = (a1 + 32 * v8);
      *v53 = v56;
      v53[1] = v55;
      ++v8;
      v53[2] = 0;
      v53[3] = 0;
LABEL_61:
      ++v50;
      v51 += 16;
      if (a4 == v50)
      {
        goto LABEL_3;
      }
    }
  }

  v8 = 0;
LABEL_3:
  v60 = *(v59 + 16);
  if (v60)
  {
    v9 = v67;
    v70 = *(*v67 + 16);
    v61 = v59 + 32;

    v74 = 0;
    v10 = 0;
    v58 = 32;
    while (1)
    {
      v66 = v10;
      v13 = *(v61 + 16 * v10);
      v14 = v74;
      if (v74 < v70)
      {
        break;
      }

LABEL_18:
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_89;
      }

LABEL_19:
      v74 = v14;
      if (v8)
      {
        v18 = 0;
        v65 = 0;
        v19 = 0;
LABEL_23:
        LODWORD(AssociatedTypeWitness) = v18;
        while (2)
        {
          if (v19 >= v8)
          {
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v20 = v19;
          if (__OFADD__(v19++, 1))
          {
            goto LABEL_84;
          }

          v22 = (a1 + 32 * v20);
          v23 = *v22;
          v24 = *(*v22 + 16);
          v25 = v22[2];
          if (v25 > v24)
          {
            v24 = v22[2];
          }

          v26 = (*v22 + 16 * v25 + 32);
          v27 = v22[2];
          do
          {
            if (v24 == v27)
            {
              goto LABEL_37;
            }

            if (v25 < 0)
            {
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

            if (v27 >= *(v23 + 16))
            {
              goto LABEL_79;
            }

            v28 = *v26;
            if (v13 < *v26)
            {
              while (1)
              {
LABEL_37:
                v29 = v22[1];
                v30 = v22[3];
                if (v30 >= *(v29 + 16))
                {
                  goto LABEL_24;
                }

                if (v30 < 0)
                {
                  goto LABEL_80;
                }

                outlined init with copy of PreferenceValues.Entry(v29 + 56 * v30 + 32, v73);
                v31 = v73[0];

                outlined destroy of PreferenceValues.Entry(v73);

                if (v13 < v31)
                {
                  goto LABEL_24;
                }

                v32 = v22[3];
                if ((v32 & 0x8000000000000000) != 0)
                {
                  goto LABEL_81;
                }

                v33 = v22[1];
                if (v32 >= *(v33 + 16))
                {
                  goto LABEL_82;
                }

                outlined init with copy of PreferenceValues.Entry(v33 + 56 * v32 + 32, v73);
                v22[3] = v32 + 1;
                if (v31 == v13)
                {
                  break;
                }

                outlined destroy of PreferenceValues.Entry(v73);
              }

              v34 = v67;
              v35 = *v67;
              if (AssociatedTypeWitness)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *v34 = v35;
                if (isUniquelyReferenced_nonNull_native)
                {
                  if (v74 < 0)
                  {
                    goto LABEL_90;
                  }
                }

                else
                {
                  v35 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
                  *v34 = v35;
                  if (v74 < 0)
                  {
                    goto LABEL_90;
                  }
                }

                if (v74 >= *(v35 + 2))
                {
                  goto LABEL_92;
                }

                v37 = &v35[56 * v74];
                v38 = *(v37 + 4);
                v39 = *(v37 + 5);
                v37 += 32;
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v64 = v57;
                v63 = *(AssociatedTypeWitness - 8);
                MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
                v41 = &v57[-v40];
                outlined init with copy of Any((v37 + 24), &v71);
                v42 = swift_dynamicCast();
                v62 = v57;
                v43 = MEMORY[0x1EEE9AC00](v42);
                *&v57[-32] = v38;
                *&v57[-24] = v39;
                *&v57[-16] = v37;
                *&v57[-8] = v73;
                (*(v39 + 24))(v41, closure #1 in reduce #1 <A>(key:) in PreferenceValues.Entry.reduce(_:)partial apply, v43);
                v44 = AssociatedTypeWitness;
                v72 = AssociatedTypeWitness;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v71);
                v46 = v63;
                (*(v63 + 16))(boxed_opaque_existential_1, v41, v44);
                __swift_destroy_boxed_opaque_existential_1(v37 + 3);
                outlined init with take of Any(&v71, v37 + 24);
                (*(v46 + 8))(v41, v44);
                goto LABEL_22;
              }

              v47 = *(v35 + 2);
              v48 = v74;
              if (v47 < v74)
              {
                goto LABEL_91;
              }

              if ((v74 & 0x8000000000000000) == 0)
              {
                outlined init with copy of PreferenceValues.Entry(v73, &v71);
                specialized Array.replaceSubrange<A>(_:with:)(v48, v48, &v71);
                v65 = 1;
LABEL_22:
                outlined destroy of PreferenceValues.Entry(v73);
                v18 = 1;
                if (v19 == v8)
                {
                  goto LABEL_5;
                }

                goto LABEL_23;
              }

              goto LABEL_93;
            }

            v22[2] = ++v27;
            v26 += 2;
          }

          while (v28 != v13);
LABEL_24:
          if (v19 != v8)
          {
            continue;
          }

          break;
        }

LABEL_5:
        v11 = v70;
        if (v65)
        {
          v11 = v70 + 1;
        }

        v70 = v11;
        v12 = v74;
        if (v65)
        {
          v12 = v74 + 1;
        }

        v74 = v12;
        v9 = v67;
      }

LABEL_10:
      v10 = v66 + 1;
      if (v66 + 1 == v60)
      {
        goto LABEL_74;
      }
    }

    v15 = v58 + 56 * v74;
    v16 = v74;
    while ((v14 & 0x8000000000000000) == 0)
    {
      if (v16 >= *(*v9 + 16))
      {
        goto LABEL_86;
      }

      outlined init with copy of PreferenceValues.Entry(*v9 + v15, v73);
      v17 = v73[0];
      outlined destroy of PreferenceValues.Entry(v73);
      if (v17 >= v13)
      {
        if (v17 == v13)
        {
          v74 = v16 + 1;
          goto LABEL_10;
        }

        v14 = v16;
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_89;
      }

      ++v16;
      v15 += 56;
      v14 = v74;
      if (v70 == v16)
      {
        v14 = v70;
        goto LABEL_18;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

LABEL_74:

  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_96;
  }

  for (; v8; --v8)
  {
    outlined destroy of ForegroundTransform.NewList(a1);
    a1 += 32;
  }
}

uint64_t PreferenceValues.description.getter()
{
  v9 = *v0;
  v10 = closure #1 in PreferenceValues.description.getter;
  v11 = 0;
  type metadata accessor for LazyMapSequence<[PreferenceValues.Entry], String>(0);
  lazy protocol witness table accessor for type LazyMapSequence<[PreferenceValues.Entry], String> and conformance <> LazyMapSequence<A, B>();

  v1 = BidirectionalCollection<>.joined(separator:)();
  v3 = v2;

  v8 = v9;
  PreferenceValues.seed.getter(&v7);
  if (v7 == -1)
  {
    v4 = 0xE700000000000000;
    v5 = 0x64696C61766E69;
  }

  else if (v7)
  {
    LODWORD(v9) = v7;
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x7974706D65;
  }

  v9 = v5;
  v10 = v4;
  MEMORY[0x193ABEDD0](5972026, 0xE300000000000000);
  MEMORY[0x193ABEDD0](v1, v3);

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);
  return v9;
}

uint64_t closure #1 in PreferenceValues.description.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  static PreferenceKey.readableName.getter(*a1);
  MEMORY[0x193ABEDD0]();

  MEMORY[0x193ABEDD0](2112800, 0xE300000000000000);
  result = _print_unlocked<A, B>(_:_:)();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

void type metadata accessor for LazyMapSequence<[PreferenceValues.Entry], String>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LazyMapSequence<[PreferenceValues.Entry], String>)
  {
    _sSiSgMaTm_0(255, &lazy cache variable for type metadata for [PreferenceValues.Entry], &type metadata for PreferenceValues.Entry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [PreferenceValues.Entry] and conformance [A](&lazy protocol witness table cache variable for type [PreferenceValues.Entry] and conformance [A], MEMORY[0x1E69E6328]);
    v1 = type metadata accessor for LazyMapSequence();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LazyMapSequence<[PreferenceValues.Entry], String>);
    }
  }
}

void lazy protocol witness table accessor for type LazyMapSequence<[PreferenceValues.Entry], String> and conformance <> LazyMapSequence<A, B>()
{
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[PreferenceValues.Entry], String> and conformance <> LazyMapSequence<A, B>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for LazyMapSequence<[PreferenceValues.Entry], String>(255);
    v3 = v2;
    lazy protocol witness table accessor for type [PreferenceValues.Entry] and conformance [A](&lazy protocol witness table cache variable for type [PreferenceValues.Entry] and conformance [A], MEMORY[0x1E69E6310]);
    v6[0] = v4;
    swift_getWitnessTable(MEMORY[0x1E69E6CC0], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type LazyMapSequence<[PreferenceValues.Entry], String> and conformance <> LazyMapSequence<A, B>);
  }
}

void lazy protocol witness table accessor for type [PreferenceValues.Entry] and conformance [A](unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    _sSiSgMaTm_0(255, &lazy cache variable for type metadata for [PreferenceValues.Entry], &type metadata for PreferenceValues.Entry, MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

__n128 *assignWithCopy for PreferenceValues.Entry(__n128 *a1, __n128 *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  __swift_assign_boxed_opaque_existential_0(&a1[1].n128_i64[1], &a2[1].n128_i64[1], v3);
  return a1;
}

uint64_t assignWithTake for PreferenceValues.Entry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  __swift_destroy_boxed_opaque_existential_1((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t initializeWithCopy for Child #1 in static PreferenceValues.combineHostKeyValues(into:keys:childIndices:childAt:)(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 1);

  return a1;
}

uint64_t *assignWithCopy for Child #1 in static PreferenceValues.combineHostKeyValues(into:keys:childIndices:childAt:)(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

double Environment.wrappedValue.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Environment.Content(0, v7, a2, a3);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  (*(v12 + 16))(&v22 - v10, v5, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(v7 - 8) + 32))(a4, v11, v7);
  }

  else
  {
    v14 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    v15 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, v14))
    {
      v16 = v15;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      v19 = _typeName(_:qualified:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v22);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_18D018000, v16, v14, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x193AC4820](v18, -1, -1);
      MEMORY[0x193AC4820](v17, -1, -1);
    }

    EnvironmentValues.init()(&v22);
    swift_getAtKeyPath();
  }

  return result;
}

uint64_t Environment.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for Environment.Content(0, *(a1 + 16), a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, v4, v6);
}

uint64_t Environment.content.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Environment.Content(0, *(a2 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

void Environment.error()(uint64_t a1)
{
  _StringGuts.grow(_:)(41);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD7E050);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for Environment(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void storeEnumTagSinglePayload for Environment(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void *initializeBufferWithCopyOfBuffer for Environment(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
LABEL_27:

    return v3;
  }

  v9 = a2[v5];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v5))) + 2;
    v9 = v12 + 2;
    if (v5 < 4)
    {
      v9 = v13;
    }
  }

LABEL_24:
  if (v9 != 1)
  {
    *a1 = *a2;
    *(a1 + v5) = 0;
    goto LABEL_27;
  }

  (*(v4 + 16))(a1);
  *(v3 + v5) = 1;
  return v3;
}

uint64_t assignWithCopy for FullEnvironmentBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    if (v4 != 1)
    {
      *(a1 + 16) = v4;

      *(a1 + 24) = *(a2 + 24);

      goto LABEL_8;
    }

    outlined destroy of EnvironmentValues(a1 + 16);
    goto LABEL_6;
  }

  if (v4 == 1)
  {
LABEL_6:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);

LABEL_8:
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for FullEnvironmentBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    if (v4 != 1)
    {
      *(a1 + 16) = v4;

      *(a1 + 24) = *(a2 + 24);

      goto LABEL_6;
    }

    outlined destroy of EnvironmentValues(a1 + 16);
  }

  *(a1 + 16) = *(a2 + 16);
LABEL_6:
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for EnvironmentBox(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v7 + 16;
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = *(v5 + 64) + 1;
  }

  v11 = v10 + ((v7 + 16) & ~v7) + 1;
  v12 = v7 & 0x100000;
  if (v8 > 7 || v12 != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v8 & 0xF8 ^ 0x1F8) & v9));
  }

  else
  {
    v17 = *a2;
    v16 = a2 + 11;
    *a1 = v17;
    v18 = ((v16 & 0xFFFFFFFFFFFFFFF8) + 8);
    v19 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *(v16 & 0xFFFFFFFFFFFFFFF8);
    v20 = v19 + 1;
    v21 = *(v5 + 48);

    if (v21(v18, 1, v4))
    {
      memcpy(v20, v18, v10);
    }

    else
    {
      (*(v6 + 16))(v20, v18, v4);
      (*(v6 + 56))(v20, 0, 1, v4);
    }

    *(v20 + v10) = *(v18 + v10);
  }

  return v3;
}

_DWORD *assignWithCopy for EnvironmentBox(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 8) & ~v9);
  v11 = ((v6 + v9 + 8) & ~v9);
  v12 = *(v8 + 48);
  LODWORD(v6) = v12(v10, 1, v7);
  v13 = v12(v11, 1, v7);
  if (v6)
  {
    if (!v13)
    {
      (*(v8 + 16))(v10, v11, v7);
      (*(v8 + 56))(v10, 0, 1, v7);
      goto LABEL_12;
    }

    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v8 + 24))(v10, v11, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v10, v7);
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v10, v11, v16);
LABEL_12:
  if (*(v8 + 84))
  {
    v17 = *(v8 + 64);
  }

  else
  {
    v17 = *(v8 + 64) + 1;
  }

  *(v10 + v17) = *(v11 + v17);
  return a1;
}

_DWORD *assignWithTake for EnvironmentBox(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 8) & ~v9);
  v11 = ((v6 + v9 + 8) & ~v9);
  v12 = *(v8 + 48);
  v13 = v12(v10, 1, v7);
  v14 = v12(v11, 1, v7);
  if (v13)
  {
    if (!v14)
    {
      (*(v8 + 32))(v10, v11, v7);
      (*(v8 + 56))(v10, 0, 1, v7);
      goto LABEL_12;
    }

    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v8 + 40))(v10, v11, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v10, v7);
    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  memcpy(v10, v11, v17);
LABEL_12:
  if (*(v8 + 84))
  {
    v18 = *(v8 + 64);
  }

  else
  {
    v18 = *(v8 + 64) + 1;
  }

  *(v10 + v18) = *(v11 + v18);
  return a1;
}

uint64_t getEnumTagSinglePayload for EnvironmentBox(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_32;
  }

  v11 = v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_32:
      v17 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v6 > 0x7FFFFFFE)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 8) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_32;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for EnvironmentBox(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = v12 + ((v11 + 16) & ~v11) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 16) & ~v11) != -1)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  if (v9 > 0x7FFFFFFE)
  {
    v22 = ((v21 + v11 + 8) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((v21 + v11 + 8) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v21 = 0;
    *v21 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v21 = a2;
  }
}

uint64_t ObservationCenter._withObservationStashed<A>(do:)(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v48 = a3;
  v44 = a1;
  v47 = a2;
  v54[3] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v43 - v9;
  v43[0] = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, 255, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v43 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v43 - v23;
  v46 = v6;
  (*(v6 + 56))(v20, 1, 1, v5, v22);
  v51 = a4;
  v52 = v47;
  v53 = v48;
  v25 = type metadata accessor for Error();
  v26 = v49;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, closure #1 in ObservationCenter._withObservation<A>(do:)partial apply, v50, v15, v25, a4, MEMORY[0x1E69E7288], v54);
  if (v26)
  {
    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v20, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  }

  else
  {
    v48 = v10;
    v49 = 0;
    v27 = v43[1];
    (*(v43[0] + 32))(v44, v13, a4);
    v13 = MEMORY[0x1E69E81D0];
    v28 = MEMORY[0x1E69E6720];
    _s11Observation0A8TrackingV11_AccessListVSgWObTm_0(v20, v24, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    _s11Observation0A8TrackingV11_AccessListVSgWOcTm_2(v24, v17, &lazy cache variable for type metadata for ObservationTracking._AccessList?, v13, v28);
    v29 = v46;
    v30 = (*(v46 + 48))(v17, 1, v5);
    LOBYTE(v13) = v30 != 1;
    if (v30 == 1)
    {
      _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v24, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
      v41 = v17;
    }

    else
    {
      v44 = v24;
      v31 = *(v29 + 32);
      v32 = v48;
      v31(v48, v17, v5);
      v33 = *(v29 + 16);
      v47 = v5;
      v33(v45, v32, v5);
      v34 = v27;
      swift_beginAccess();
      v35 = *(v27 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 24) = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
        *(v27 + 24) = v35;
      }

      v38 = v35[2];
      v37 = v35[3];
      if (v38 >= v37 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v35);
      }

      v35[2] = v38 + 1;
      v40 = v46;
      v39 = v47;
      (v31)(v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v46 + 72) * v38);
      *(v34 + 24) = v35;
      (*(v40 + 8))(v48, v39);
      v41 = v44;
    }

    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  }

  return v13 & 1;
}

double ObservationCenter._withObservation<A, B>(attribute:do:)@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v73 = a3;
  v69 = a5;
  v72 = a2;
  v63 = a1;
  v68 = a6;
  v81 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for ObservationTracking._AccessList();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v59 - v14;
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_4(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, 255, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v59 - v22;
  v75 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v59 - v27;
  swift_beginAccess();
  v29 = *(v6 + 24);
  *(v6 + 24) = MEMORY[0x1E69E7CC0];
  v65 = v9;
  v30 = *(v9 + 56);
  v71 = v8;
  v30(v20, 1, 1, v8);
  v78 = a4;
  v79 = v72;
  v80 = v73;
  v31 = type metadata accessor for Error();
  v32 = v16;
  v33 = a4;
  v34 = v74;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, closure #1 in ObservationCenter._withObservation<A>(do:)partial apply, v77, v32, v31, a4, MEMORY[0x1E69E7288], &v76);
  if (v34)
  {
    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v20, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    *(v6 + 24) = v29;
  }

  else
  {
    v72 = 0;
    v73 = v29;
    v36 = v63;
    v37 = *(v75 + 32);
    v61 = v28;
    v74 = v33;
    v75 += 32;
    v37(v28, v25, v33);
    v38 = MEMORY[0x1E69E81D0];
    v39 = MEMORY[0x1E69E6720];
    v40 = v20;
    v41 = v70;
    _s11Observation0A8TrackingV11_AccessListVSgWObTm_0(v40, v70, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    v42 = v64;
    _s11Observation0A8TrackingV11_AccessListVSgWOcTm_2(v41, v64, &lazy cache variable for type metadata for ObservationTracking._AccessList?, v38, v39);
    v43 = v65;
    v44 = v71;
    if ((*(v65 + 48))(v42, 1, v71) == 1)
    {
      _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
      v45 = v42;
      v46 = v36;
    }

    else
    {
      v47 = *(v43 + 32);
      v48 = v67;
      v47();
      (*(v43 + 16))(v66, v48, v44);
      v49 = *(v6 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 24) = v49;
      v46 = v36;
      v60 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
        *(v6 + 24) = v49;
      }

      v52 = v49[2];
      v51 = v49[3];
      if (v52 >= v51 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v49);
      }

      v49[2] = v52 + 1;
      v44 = v71;
      (v47)(v49 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v52);
      *(v6 + 24) = v49;
      (*(v43 + 8))(v67, v44);
      v45 = v70;
      v37 = v60;
    }

    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_2(v45, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    v37(v68, v61, v74);
    v53 = *(v6 + 24);
    v54 = *(v53 + 16);
    if (v54)
    {
      v56 = *(v43 + 16);
      v55 = v43 + 16;
      v57 = v53 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
      v74 = *(v55 + 56);
      v75 = v56;
      v71 = v53;

      v58 = v62;
      do
      {
        (v75)(v58, v57, v44);
        ObservationCenter.invalidate<A>(_:onChangeIn:)(v46, v58);
        (*(v55 - 8))(v58, v44);
        v57 += v74;
        --v54;
      }

      while (v54);
    }

    *(v6 + 24) = v73;
  }

  return result;
}

id ObservationCenter.invalidate<A>(_:onChangeIn:)(id result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = result;
    v5 = *(type metadata accessor for ObservationTracking._AccessList() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      result = ObservationCenter.invalidate<A>(_:onChangeIn:)(v4, v6);
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ObservationCenter.deinit()
{

  return v0;
}

uint64_t ObservationCenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *assignWithCopy for ObservationGraphMutation(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

uint64_t *assignWithTake for ObservationGraphMutation(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 1) = *(a2 + 1);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for ObservationEntry(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectRetain();

  return a1;
}

uint64_t *assignWithCopy for ObservationEntry(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for ObservationEntry(void *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;

  return a1;
}

void PushTransition.body(content:phase:)(char a1@<W1>, uint64_t a2@<X8>)
{
  LOBYTE(v3) = *v2;
  if (a1)
  {
    v3 = 0x1000302u >> (8 * v3);
    if (a1 == 1)
    {
      LOBYTE(v3) = 4;
    }
  }

  v4 = 0.0;
  if (a1 == 1)
  {
    v4 = 1.0;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

void PushTransition._makeContentTransition(transition:)(unsigned __int8 *a1)
{
  v3 = *a1;
  if (v3 == 3)
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v6 = *v1;
    if (v6 == 2)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = *(a1 + 1);
    }

    if (v6 == 2)
    {
      v8 = *(a1 + 2);
    }

    else
    {
      v8 = 0.0;
    }

    v9 = -*(a1 + 2);
    v10 = -*(a1 + 1);
    if (*v1)
    {
      v9 = 0.0;
    }

    else
    {
      v10 = 0.0;
    }

    if (*v1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v7;
    }

    if (*v1 <= 1u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentTransition.Effect>, &type metadata for ContentTransition.Effect, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    v5 = v13;
    *(v13 + 16) = xmmword_18DDAF080;
    if (v3)
    {
      v14 = v11 * 0.4;
      v15 = v12 * 0.4;
      *(v13 + 32) = 3;
      *(v13 + 36) = v14;
      *(v13 + 40) = 0;
      *(v13 + 44) = v15;
      *(v13 + 48) = 0;
      *(v13 + 52) = 0x3F80000000000000;
      *(v13 + 60) = 1;
      v16 = v11;
      v17 = -v16;
      v18 = 0x3F19999A3ECCCCCDLL;
      v19 = v12;
    }

    else
    {
      v20 = v11;
      v19 = v12;
      *(v13 + 32) = 3;
      *(v13 + 36) = v20;
      *(v13 + 40) = 0;
      *(v13 + 44) = v19;
      *(v13 + 48) = 0;
      v18 = 0x3F80000000000000;
      *(v13 + 52) = 0x3F80000000000000;
      *(v13 + 60) = 1;
      v17 = -v20;
    }

    *(v13 + 68) = 3;
    *(v13 + 72) = v17;
    *(v13 + 76) = 0;
    *(v13 + 80) = -v19;
    *(v13 + 84) = 0;
    *(v13 + 88) = 0x3F80000000000000;
    *(v13 + 96) = xmmword_18DDF2060;
    *(v13 + 112) = 2;
    *(v13 + 116) = 0;
    *(v13 + 120) = 2;
    *(v13 + 124) = v18;
    v4 = 1;
    *(v13 + 132) = 3;
  }

  outlined consume of _Transition_ContentTransition.Result(*(a1 + 3), a1[32]);
  *(a1 + 3) = v5;
  a1[32] = v4;
}

void lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect>(255);
    v3 = v2;
    lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>();
    v6[0] = v4;
    v6[1] = &protocol witness table for OpacityRendererEffect;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>);
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>(255);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for OpacityRendererEffect, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>, OpacityRendererEffect>);
    }
  }
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>)
  {
    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(255, &lazy cache variable for type metadata for PlaceholderContentView<PushTransition>, &type metadata for PushTransition, type metadata accessor for PlaceholderContentView);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for MoveTransition.MoveLayout, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>);
    }
  }
}

void lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout>(255);
    v4[0] = &protocol witness table for PlaceholderContentView<A>;
    v4[1] = &protocol witness table for MoveTransition.MoveLayout;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<PushTransition>, MoveTransition.MoveLayout> and conformance <> ModifiedContent<A, B>);
  }
}

uint64_t Gradient.color(at:)(uint64_t a1, double a2)
{
  type metadata accessor for ColorBox<GradientColorProvider>(0);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  *(v4 + 32) = a2;

  return v4;
}

void type metadata accessor for ColorBox<GradientColorProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ColorBox<GradientColorProvider>)
  {
    lazy protocol witness table accessor for type GradientColorProvider and conformance GradientColorProvider();
    v4 = type metadata accessor for ColorBox(a1, &type metadata for GradientColorProvider, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ColorBox<GradientColorProvider>);
    }
  }
}

uint64_t AnyGradient.color(at:)(uint64_t a1, double a2)
{
  type metadata accessor for ColorBox<GradientColorProvider>(0);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 1;
  *(v4 + 32) = a2;

  return v4;
}

void GradientColorProvider.resolveHDR(in:)(void *a1@<X0>, float *a2@<X8>)
{
  v4 = a1[1];
  v5 = *v2;
  v6 = *(v2 + 16);
  if (*(v2 + 8))
  {
    *&v40 = *a1;
    *(&v40 + 1) = v4;
    (*(*v5 + 112))(&v35, &v40);
  }

  else
  {
    *&v40 = *a1;
    *(&v40 + 1) = v4;
    Gradient.resolve(in:)(&v40, v5, &v35);
  }

  v7 = *(*&v35 + 16);
  if (v7)
  {
    v8 = *(&v36 + 1);
    v9 = LOBYTE(v37);
    if (v7 == 1)
    {
      v10 = *(*&v35 + 32);
      v11 = *(*&v35 + 36);
      v12 = *(*&v35 + 40);
      v13 = *(*&v35 + 44);
    }

    else
    {
      v15 = LOBYTE(v36);
      v16 = *&v35 + 40;
      v17 = *(*&v35 + 16);
      do
      {
        if (!--v17)
        {
          v34 = *&v35 + 48 * v7;
          v10 = *(v34 - 16);
          v11 = *(v34 - 12);
          v12 = *(v34 - 8);
          v13 = *(v34 - 4);
          goto LABEL_16;
        }

        v18 = v16 + 48;
        v19 = *(v16 + 56);
        v16 += 48;
      }

      while (v6 > v19);
      v10 = *(v18 - 56);
      v11 = *(v18 - 52);
      v12 = *(v18 - 48);
      v13 = *(v18 - 44);
      v20 = *(v18 - 40);
      if (v20 <= v6)
      {
        v21 = *(v18 - 8);
        v22 = *(v18 - 4);
        v23 = *v18;
        v24 = *(v18 + 4);
        v25 = (v6 - v20) / (v19 - v20);
        if ((*(v18 + 32) & 1) == 0)
        {
          v26 = *(v18 + 16);
          v27 = *(v18 + 24);
          v28 = v21;
          v35 = *&v26;
          v36 = *(&v26 + 1);
          v37 = *&v27;
          v38 = *(&v27 + 1);
          v39 = 0;
          v25 = UnitCurve.value(at:)(v25);
          v21 = v28;
        }

        LOBYTE(v35) = v15;
        v29 = v25;
        ResolvedGradient.ColorSpace.mix(_:_:by:)(v10, v11, v12, v13, v21, v22, v23, v24, v29);
        v10 = v30;
        v11 = v31;
        v12 = v32;
        v13 = v33;
      }
    }

LABEL_16:

    v14 = v8;
    if (v9)
    {
      v14 = NAN;
    }
  }

  else
  {

    v10 = 0.0;
    v14 = NAN;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
}

uint64_t GradientColorProvider.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (*(v1 + 8))
  {
    MEMORY[0x193AC11A0](1);
    (*(*v3 + 128))(a1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(a1, v3);
  }

  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  return MEMORY[0x193AC11E0](*&v5);
}

Swift::Int GradientColorProvider.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    (*(*v1 + 128))(v6);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v6, v1);
  }

  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x193AC11E0](*&v4);
  return Hasher._finalize()();
}

float protocol witness for ColorProvider.resolve(in:) in conformance GradientColorProvider(__int128 *a1)
{
  v2 = *(v1 + 8);
  v3 = v1[2];
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  v5 = *a1;
  GradientColorProvider.resolveHDR(in:)(&v5, &v9);
  return v9;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance GradientColorProvider@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  GradientColorProvider.resolveHDR(in:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GradientColorProvider(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x193AC11A0](1);
    (*(*v2 + 128))(v7);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v7, v2);
  }

  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  MEMORY[0x193AC11E0](*&v5);
  return Hasher._finalize()();
}

uint64_t specialized static GradientColorProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v8 = *a1;
  v9 = *(a1 + 8);
  v7 = *a2;
  outlined copy of EitherGradient(*a1, v9);
  outlined copy of EitherGradient(v3, v4);
  LOBYTE(v3) = static EitherGradient.== infix(_:_:)();
  outlined consume of EitherGradient(v7, v4);
  outlined consume of EitherGradient(v8, v9);
  return v3 & (v2 == v5);
}

uint64_t Binding.init(value:location:transaction:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *a2;
  *a5 = a3;
  a5[1] = a2;
  v8 = *(v7 + 88);
  v9 = type metadata accessor for Binding(0, v8, a3, a4);
  v10 = *(*(v8 - 8) + 32);
  v11 = a5 + *(v9 + 32);

  return v10(v11, a1, v8);
}

uint64_t (*Binding.wrappedValue.modify(void *a1, uint64_t a2))()
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
    v6[3] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[4] = v11;
  Binding.readValue()(a2, v11);
  return Binding.wrappedValue.modify;
}

void Binding.wrappedValue.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    (*(*v7[1] + 128))(v3, *v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    (*(*v7[1] + 128))((*a1)[4], *v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Binding<A>.id.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.readValue()(v6, v5);
  dispatch thunk of Identifiable.id.getter();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance <A> Binding<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(a1 - 8);
  (*(v6 + 16))(a3, v3, a1);
  v8 = v5;
  swift_getWitnessTable(protocol conformance descriptor for <A> Binding<A>, a1, &v8);
  type metadata accessor for IndexingIterator();
  Binding<A>.startIndex.getter(a1, v5);
  return (*(v6 + 8))(v3, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance <A> Binding<A>(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, double))
{
  v8 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <A> Binding<A>, a1, &v8);
  return a3(a1, v6, WitnessTable);
}

uint64_t Binding<A>.startIndex.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.readValue()(v9, v8);
  a3(v5, *(a2 + 8));
  return (*(v6 + 8))(v8, v5);
}

uint64_t Binding<A>.index(after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.readValue()(v7, v6);
  dispatch thunk of Collection.index(after:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t Binding<A>.formIndex(after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.readValue()(v7, v6);
  dispatch thunk of Collection.formIndex(after:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #2 in Binding<A>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a1;
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v25 - v15;
  v17 = swift_getAssociatedTypeWitness();
  v18 = MEMORY[0x1EEE9AC00](v17);
  (*(v20 + 16))(&v25 - v19, a5, v18);
  (*(v14 + 16))(v16, v26, AssociatedTypeWitness);
  v23 = type metadata accessor for Binding(0, a6, v21, v22);
  Binding.readValue()(v23, v12);
  dispatch thunk of MutableCollection.subscript.setter();
  (*(**(a4 + 8) + 128))(v12, *a4);
  return (*(v10 + 8))(v12, a6);
}

void (*protocol witness for Collection.subscript.read in conformance <A> Binding<A>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = Binding<A>.subscript.read(v8, a2, a3, *(a4 - 8));
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

void (*Binding<A>.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Binding(0, AssociatedTypeWitness, v9, v10);
  *a1 = v11;
  v12 = *(v11 - 8);
  a1[1] = v12;
  if (MEMORY[0x1E69E7D08])
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  a1[2] = v13;
  Binding<A>.subscript.getter(a2, a3, a4, v13);
  return ArrayWith2Inline.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance <A> Binding<A>@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t Binding<A>.index(before:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.readValue()(v7, v6);
  dispatch thunk of BidirectionalCollection.index(before:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t Binding<A>.formIndex(before:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Binding.readValue()(v7, v6);
  dispatch thunk of BidirectionalCollection.formIndex(before:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance <A> Binding<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6[0] = *(*(a4 - 16) + 8);
  v6[1] = v4;
  swift_getWitnessTable(protocol conformance descriptor for <A> Binding<A>, a3, v6);
  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance <A> Binding<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v11[0] = *(*(a4 - 16) + 8);
  v11[1] = v7;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <A> Binding<A>, a3, v11);
  return MEMORY[0x193ABE9B0](a1, a2, a3, v9, WitnessTable);
}

double Binding.animation(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3, a1);

  return result;
}

uint64_t Binding.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v33 = a4;
  v30 = a3;
  v31 = a1;
  v32 = a2;
  v4 = *(*(*a1 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v27 - v6;
  v10 = type metadata accessor for BindingOperations.NilCoalescing(0, v4, v8, v9);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for WritableKeyPath();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for WritableKeyPath<A, B>, v13);
  v16 = v15;
  v28 = v15;
  swift_getWitnessTable(protocol conformance descriptor for BindingOperations.NilCoalescing<A>, v10, WitnessTable);
  v18 = v17;
  v34[0] = v13;
  v34[1] = v10;
  v34[2] = v16;
  v34[3] = v17;
  v19 = type metadata accessor for ComposedProjection(0, v34);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v27 - v22;
  v34[0] = v31;
  (*(v5 + 16))(v7, v32, v4, v21);
  BindingOperations.NilCoalescing.init(defaultValue:)(v7, v4, v12);
  Projection.composed<A>(with:)(v12, v13, v10, v28, v18, v23);
  (*(v29 + 8))(v12, v10);
  swift_getWitnessTable(protocol conformance descriptor for ComposedProjection<A, B>, v19);
  v25 = Binding.projecting<A>(_:)(v23, v30, v19, v24, v33);
  return (*(v20 + 8))(v23, v19, v25);
}

uint64_t partial apply for closure #2 in Binding<A>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for Binding(0, v6, a3, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v4[2];
  v13 = v4[3];
  v14 = v4 + ((v10 + *(v11 + 80)) & ~*(v11 + 80));

  return closure #2 in Binding<A>.subscript.getter(a1, v12, v13, v4 + v9, v14, v6, v7);
}

double base witness table accessor for BidirectionalCollection in <A> Binding<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v5[0] = *(*(a3 - 16) + 8);
  v5[1] = v3;
  return swift_getWitnessTable(protocol conformance descriptor for <A> Binding<A>, a1, v5);
}

uint64_t *initializeBufferWithCopyOfBuffer for Binding(uint64_t *a1, uint64_t *a2, uint64_t a3)
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

void *initializeWithTake for Binding(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t View.tag<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for TagValueTraitKey.Value(0, a3, a5, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v15 = type metadata accessor for TagValueTraitKey(0, a3, a5, v14);
  v16 = *(a3 - 8);
  (*(v16 + 16))(v13, a1, a3);
  (*(v16 + 56))(v13, 0, 1, a3);
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v15);
  View._trait<A>(_:_:)(v15, v13, a2, v15, a4, v17);
  return (*(v11 + 8))(v13, v10);
}

uint64_t View.removeTag<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v42 = a3;
  v45 = a5;
  v8 = type metadata accessor for Optional();
  v47 = a4;
  swift_getWitnessTable(MEMORY[0x1E69E7C78], v8, &v47);
  v41 = v9;
  v11 = type metadata accessor for TagValueTraitKey.Value(0, v8, v9, v10);
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v38 - v12;
  v38 = type metadata accessor for TagValueTraitKey.Value(0, a2, a4, v13);
  v14 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v16 = &v38 - v15;
  v18 = type metadata accessor for TagValueTraitKey(255, a2, a4, v17);
  v39 = protocol conformance descriptor for TagValueTraitKey<A>;
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v18);
  v20 = v19;
  v22 = type metadata accessor for _TraitWritingModifier(255, v18, v19, v21);
  v24 = type metadata accessor for ModifiedContent(0, a1, v22, v23);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v38 - v27;
  (*(*(a2 - 8) + 56))(v16, 1, 1, a2, v26);
  v29 = v42;
  View._trait<A>(_:_:)(v18, v16, a1, v18, v42, v20);
  (*(v14 + 8))(v16, v38);
  v31 = type metadata accessor for TagValueTraitKey(0, v8, v41, v30);
  v32 = v40;
  (*(*(v8 - 8) + 56))(v40, 1, 1, v8);
  v46[0] = v29;
  v46[1] = &protocol witness table for _TraitWritingModifier<A>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v24, v46);
  v35 = v34;
  swift_getWitnessTable(v39, v31, WitnessTable);
  View._trait<A>(_:_:)(v31, v32, v24, v31, v35, v36);
  (*(v43 + 8))(v32, v44);
  return (*(v25 + 8))(v28, v24);
}

uint64_t (*ViewTraitCollection.isAuxiliaryContent.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA018IsAuxiliaryContentdJ0V_Tt0B5(0, *v1) & 1;
  return ViewTraitCollection.isAuxiliaryContent.modify;
}

uint64_t ViewTraitCollection.setTag<A>(for:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TagValueTraitKey.Value(0, a3, a4, a4);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  v11 = *(a3 - 8);
  (*(v11 + 16))(&v16 - v9, a2, a3, v8);
  (*(v11 + 56))(v10, 0, 1, a3);
  v13 = type metadata accessor for TagValueTraitKey(0, a3, a4, v12);
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v13);
  return ViewTraitCollection.subscript.setter(v10, v13, v13, v14);
}

uint64_t *TagIndexProjection.init(_:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = Dictionary.init()();
  *(v1 + 80) = Dictionary.init()();
  outlined init with take of _ViewList_Elements(a1, v1 + 16);
  return v1;
}

uint64_t TagIndexProjection.get(base:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  MEMORY[0x193ABE750](&v10, a1, v1[10], v4, MEMORY[0x1E69E6530], v5);
  v6 = v10;
  if (v11)
  {
    v7 = swift_endAccess();
    v12 = v6;
    v13 = 1;
    MEMORY[0x1EEE9AC00](v7);
    v9[2] = v4;
    v9[3] = v5;
    v9[4] = a1;
    v9[5] = &v12;
    TagIndexProjection.readUntil(_:)(partial apply for closure #1 in TagIndexProjection.get(base:), v9);
    return v12;
  }

  else
  {
    swift_endAccess();
  }

  return v6;
}

uint64_t TagIndexProjection.readUntil(_:)(uint64_t result, uint64_t a2)
{
  if ((*(v2 + 64) & 1) == 0)
  {
    v4 = result;
    v5 = *(v2 + 48);
    v11 = *(v2 + 56);
    v12 = v11;
    v6 = *(v2 + 40);
    v7 = __swift_project_boxed_opaque_existential_1((v2 + 16), v6);
    MEMORY[0x1EEE9AC00](v7);
    v9[2] = &v12;
    v9[3] = v2;
    v9[4] = v4;
    v9[5] = a2;
    v10 = 1;
    result = ViewList.applySublists(from:list:to:)(&v11, 0x100000000uLL, partial apply for closure #1 in TagIndexProjection.readUntil(_:), v9, v6, v5);
    v8 = v12;
    if (result)
    {
      v8 = 0;
    }

    *(v2 + 56) = v8;
    *(v2 + 64) = result & 1;
  }

  return result;
}

void TagIndexProjection.set(base:newValue:)(uint64_t a1, uint64_t a2, char a3)
{
  v20 = *v3;
  v7 = *(v20 + 80);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  if ((a3 & 1) == 0)
  {
    swift_beginAccess();
    v16 = v3[9];
    v21 = a2;
    MEMORY[0x193ABE750](&v21, v16, MEMORY[0x1E69E6530], v7, MEMORY[0x1E69E6540]);
    if ((*(v12 + 48))(v11, 1, v7) == 1)
    {
      (*(v9 + 8))(v11, v8);
      v17 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v17);
      v18 = *(v20 + 88);
      *(&v19 - 4) = v7;
      *(&v19 - 3) = v18;
      *(&v19 - 2) = a2;
      *(&v19 - 1) = a1;
      TagIndexProjection.readUntil(_:)(partial apply for closure #1 in TagIndexProjection.set(base:newValue:), (&v19 - 6));
    }

    else
    {
      (*(v12 + 32))(v15, v11, v7);
      swift_endAccess();
      (*(v12 + 40))(a1, v15, v7);
    }
  }
}

void closure #1 in TagIndexProjection.readUntil(_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, char *, __n128), uint64_t a5)
{
  v38 = a5;
  v39 = a4;
  v8 = *a3;
  v9 = *(*a3 + 80);
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v37 = &v35 - v11;
  v41 = a3;
  v12 = *(v8 + 88);
  v14 = type metadata accessor for TagValueTraitKey.Value(0, v9, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v40 = (&v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  v24 = *a2;
  v25 = *a1;
  v42 = a1[1];
  v43 = v12;
  *a2 = v24 - v25;
  v44 = a1[10];
  v27 = type metadata accessor for TagValueTraitKey(0, v9, v12, v26);
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v27);
  ViewTraitCollection.subscript.getter(v27, v28, v17);
  if ((*(v18 + 48))(v17, 1, v9) == 1)
  {
    (*(v15 + 8))(v17, v14);
LABEL_5:
    v29 = v42;
LABEL_6:
    *a2 += v29;
    return;
  }

  (*(v18 + 32))(v23, v17, v9);
  if (_s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA018IsAuxiliaryContentdJ0V_Tt0B5(0, a1[10]))
  {
    (*(v18 + 8))(v23, v9);
    goto LABEL_5;
  }

  v36 = v18;
  v30 = *(v18 + 16);
  v30(v40, v23, v9);
  v45 = *a2;
  v46 = 0;
  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  v31 = *a2;
  v29 = v42;
  v32 = *a2 + v42;
  if (v32 < *a2)
  {
    __break(1u);
  }

  else
  {
    if (!v42)
    {
      (v39)(v31, v23);
LABEL_14:
      (*(v36 + 8))(v23, v9);
      goto LABEL_6;
    }

    v33 = v37;
    v40 = a2;
    if (v31 < v32)
    {
      swift_beginAccess();
      v34 = (v36 + 56);
      v43 = v23;
      do
      {
        v30(v33, v43, v9);
        (*v34)(v33, 0, 1, v9);
        v45 = v31;
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();
        ++v31;
        --v29;
      }

      while (v29);
      swift_endAccess();
      a2 = v40;
      v29 = v42;
      v23 = v43;
      (v39)(*v40, v43);
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t TagIndexProjection.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t TagIndexProjection.__deallocating_deinit()
{
  TagIndexProjection.deinit();

  return swift_deallocClassInstance();
}

Swift::Int TagIndexProjection.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for Projection.get(base:) in conformance TagIndexProjection<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = TagIndexProjection.get(base:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TagIndexProjection<A>(uint64_t a1)
{
  Hasher.init(_seed:)();
  TagIndexProjection.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Binding<A>.projectingTagIndex(viewList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TagIndexProjection(0, *(a2 + 16), a3, a4);
  outlined init with copy of AnyTrackedValue(a1, &v11);
  swift_allocObject();
  v7 = TagIndexProjection.init(_:)(&v11);
  swift_getWitnessTable(protocol conformance descriptor for TagIndexProjection<A>, v6, v7);
  Binding.projecting<A>(_:)(&v10, a2, v6, v8, &v11);

  return v11;
}

uint64_t static _TagTraitWritingModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return a3(a1, v6);
}

uint64_t static _TagTraitWritingModifier._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

void type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<IsAuxiliaryContentTraitKey>)
  {
    v4 = type metadata accessor for _TraitWritingModifier(0, &type metadata for IsAuxiliaryContentTraitKey, &protocol witness table for IsAuxiliaryContentTraitKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _TraitWritingModifier<IsAuxiliaryContentTraitKey>);
    }
  }
}

BOOL partial apply for closure #1 in TagIndexProjection.set(base:newValue:)(uint64_t a1)
{
  v3 = v1[4];
  if (v3 == a1)
  {
    (*(*(v1[2] - 8) + 24))(v1[5]);
  }

  return v3 == a1;
}

uint64_t partial apply for closure #1 in TagIndexProjection.get(base:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 40);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    *v4 = a1;
    *(v4 + 8) = 0;
  }

  return v5 & 1;
}

uint64_t _Velocity.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v3, v7);
  return (*(v6 + 32))(a3, v9, a2);
}

Swift::Int _Velocity<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> _Velocity<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  _Velocity<>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t _Velocity<>.animatableData.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _Velocity<>.animatableData.setter(a1, a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

void (*_Velocity<>.animatableData.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v9[6] = v14;
  (*(a3 + 24))(v10, a3);
  return _Velocity<>.animatableData.modify;
}

void _Velocity<>.animatableData.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    specialized _Velocity<>.animatableData.setter(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    specialized _Velocity<>.animatableData.setter((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance <> _Velocity<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _Velocity<>.animatableData.setter(a1, a2, *(a3 - 8));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

void (*protocol witness for Animatable.animatableData.modify in conformance <> _Velocity<A>(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v3;
  v8[1] = a2;
  v10 = *(a3 - 8);
  v8[2] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v9[6] = v14;
  _Velocity<>.animatableData.getter(a2, v10);
  return protocol witness for Animatable.animatableData.modify in conformance <> _Velocity<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance <> _Velocity<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v8 = *(*a1 + 8);
  v7 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 40), v4, v5);
    specialized _Velocity<>.animatableData.setter(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    specialized _Velocity<>.animatableData.setter(*(*a1 + 48), v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static _Velocity<>.zero.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t static _Velocity<>.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for _Velocity(0, a3, *(a4 + 8), a4);
  (*(*(v12 - 8) + 16))(a6, a1, v12);
  return a5(a6, a2, a3, a4);
}

uint64_t specialized _Velocity<>.animatableData.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, v7);
  return (*(a3 + 32))(v9, v5, a3);
}

void instantiation function for generic protocol witness table for <> _Velocity<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  swift_getWitnessTable(protocol conformance descriptor for <> _Velocity<A>, a2, &v5);
  *(a1 + 8) = v4;
}

uint64_t WhitespaceRemovingFormatStyle.locale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v11 - 8) + 16))(a3, v3, a2, v8);
  dispatch thunk of FormatStyle.locale(_:)();
  return (*(v7 + 40))(a3, v10, v6);
}

BOOL static WhitespaceRemovingFormatStyle.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a7;
  v60 = a8;
  v58 = a6;
  v54 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v48[-v15];
  v16 = type metadata accessor for Optional();
  v63 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v48[-v19];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v55 = &v48[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48[-v23];
  v62 = a2;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v64[0] = a3;
  v64[1] = a4;
  v51 = a4;
  v64[2] = a5;
  v64[3] = v58;
  v64[4] = v59;
  v64[5] = v60;
  v64[6] = a9;
  v59 = type metadata accessor for WhitespaceRemovingFormatStyle(0, v64);
  v60 = TupleTypeMetadata2;
  v25 = *(v59 + 76);
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = *(v63 + 16);
  (v27)(v24, a1 + v25, v16);
  (v27)(&v24[v26], v62 + v25, v16);
  v28 = v61;
  v29 = *(v61 + 48);
  if (v29(v24, 1, AssociatedTypeWitness) != 1)
  {
    v32 = v16;
    v33 = v56;
    v50 = v32;
    v27();
    if (v29(&v24[v26], 1, AssociatedTypeWitness) != 1)
    {
      v58 = a1;
      v34 = v53;
      (*(v28 + 32))(v53, &v24[v26], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v28 + 8);
      v35(v34, AssociatedTypeWitness);
      v35(v33, AssociatedTypeWitness);
      v30 = *(v63 + 8);
      v16 = v50;
      (v30)(v24, v50);
      v31 = v60;
      if ((v49 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    (*(v28 + 8))(v33, AssociatedTypeWitness);
LABEL_7:
    (*(v57 + 8))(v24, v60);
    return 0;
  }

  if (v29(&v24[v26], 1, AssociatedTypeWitness) != 1)
  {
    goto LABEL_7;
  }

  v58 = a1;
  v30 = *(v63 + 8);
  (v30)(v24, v16);
  v31 = v60;
LABEL_9:
  v56 = v30;
  v36 = *(v59 + 80);
  v37 = *(v31 + 48);
  v38 = v55;
  (v27)(v55, v58 + v36, v16);
  v39 = v62 + v36;
  v40 = v38;
  (v27)(&v38[v37], v39, v16);
  if (v29(v38, 1, AssociatedTypeWitness) == 1)
  {
    if (v29(&v38[v37], 1, AssociatedTypeWitness) == 1)
    {
      (v56)(v38, v16);
      return 1;
    }

    goto LABEL_14;
  }

  v41 = v52;
  (v27)(v52, v40, v16);
  if (v29(&v40[v37], 1, AssociatedTypeWitness) == 1)
  {
    (*(v61 + 8))(v41, AssociatedTypeWitness);
LABEL_14:
    (*(v57 + 8))(v40, v60);
    return 0;
  }

  v43 = v40;
  v44 = v61;
  v45 = v53;
  (*(v61 + 32))(v53, &v43[v37], AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v44 + 8);
  v47(v45, AssociatedTypeWitness);
  v47(v41, AssociatedTypeWitness);
  (v56)(v43, v16);
  return (v46 & 1) != 0;
}

uint64_t WhitespaceRemovingFormatStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6156786966657270 && a2 == 0xEB0000000065756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6156786966667573 && a2 == 0xEB0000000065756CLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t WhitespaceRemovingFormatStyle.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 1702060386;
  }

  if (a1 == 1)
  {
    return 0x6156786966657270;
  }

  return 0x6156786966667573;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WhitespaceRemovingFormatStyle<A, B>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  EventListenerPhase.FailureReason.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WhitespaceRemovingFormatStyle<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WhitespaceRemovingFormatStyle.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance WhitespaceRemovingFormatStyle<A, B>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized TimeDataFormatting.Resolvable.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WhitespaceRemovingFormatStyle<A, B>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for WhitespaceRemovingFormatStyle<A, B>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WhitespaceRemovingFormatStyle<A, B>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for WhitespaceRemovingFormatStyle<A, B>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WhitespaceRemovingFormatStyle.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v18 = *(a2 + 16);
  v19[0] = v18;
  v4 = *(a2 + 32);
  v5 = *(a2 + 56);
  v6 = *(a2 + 64);
  v15 = v3;
  v19[1] = v3;
  v19[2] = v4;
  v14 = *(a2 + 40);
  v20 = v14;
  v21 = v5;
  v22 = v6;
  v16 = v6;
  v17 = v4;
  v7 = type metadata accessor for WhitespaceRemovingFormatStyle.CodingKeys(255, v19);
  swift_getWitnessTable(protocol conformance descriptor for WhitespaceRemovingFormatStyle<A, B>.CodingKeys, v7);
  v8 = type metadata accessor for KeyedEncodingContainer();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19[0]) = 0;
  v12 = v23;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    LOBYTE(v19[0]) = 1;
    swift_getAssociatedTypeWitness();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t WhitespaceRemovingFormatStyle.hash(into:)(uint64_t a1, void *a2)
{
  dispatch thunk of Hashable.hash(into:)();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  swift_getAssociatedConformanceWitness();
  Optional<A>.hash(into:)();
  return Optional<A>.hash(into:)();
}

Swift::Int WhitespaceRemovingFormatStyle.hashValue.getter(void *a1)
{
  Hasher.init(_seed:)();
  WhitespaceRemovingFormatStyle.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t WhitespaceRemovingFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v74 = a1;
  v49 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v49 - v19;
  v51 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a2;
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v71 = a6;
  v72 = a7;
  v73 = a8;
  v22 = type metadata accessor for WhitespaceRemovingFormatStyle.CodingKeys(255, &v67);
  swift_getWitnessTable(protocol conformance descriptor for WhitespaceRemovingFormatStyle<A, B>.CodingKeys, v22);
  v60 = v23;
  v59 = type metadata accessor for KeyedDecodingContainer();
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v25 = &v49 - v24;
  v57 = a2;
  v67 = a2;
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v26 = a7;
  v27 = AssociatedTypeWitness;
  v54 = v26;
  v55 = a4;
  v71 = a6;
  v72 = v26;
  v73 = a8;
  v28 = type metadata accessor for WhitespaceRemovingFormatStyle(0, &v67);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v49 - v31;
  v34 = *(*(v27 - 8) + 56);
  v66 = *(v33 + 76);
  v34(&v49 + v66 - v31, 1, 1, v27, v30);
  v63 = *(v28 + 80);
  (v34)(&v32[v63], 1, 1, v27);
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v58 = v25;
  v35 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v35)
  {
    v40 = v64;
    v39 = v65;
    __swift_destroy_boxed_opaque_existential_1(v74);
    v41 = *(v40 + 8);
    v41(&v32[v66], v39);
    return (v41)(&v32[v63], v39);
  }

  else
  {
    v60 = v29;
    v62 = v28;
    v36 = v52;
    LOBYTE(v67) = 0;
    v37 = v53;
    v38 = v57;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v51 + 32))(v32, v37, v38);
    LOBYTE(v67) = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v42 = v65;
    v43 = v36;
    v44 = *(v64 + 40);
    v44(&v32[v66], v43, v65);
    LOBYTE(v67) = 2;
    v45 = v50;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v56 + 8))(v58, v59);
    v44(&v32[v63], v45, v42);
    v46 = v60;
    v47 = v62;
    (*(v60 + 16))(v49, v32, v62);
    __swift_destroy_boxed_opaque_existential_1(v74);
    return (*(v46 + 8))(v32, v47);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WhitespaceRemovingFormatStyle<A, B>(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  WhitespaceRemovingFormatStyle.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t static WhitespaceRemovingFormatStyle<>.representation<A>(of:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _UNKNOWN **a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a9;
  v41 = a1;
  v38 = a6;
  v39 = a5;
  v17 = *(a6 + 8);
  v44 = a5;
  v45 = a3;
  v46 = a10;
  v47 = v17;
  v48 = &protocol witness table for AttributedString;
  v18 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v44);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v37 - v21;
  v23 = *a2;
  v24 = *(v17 + 8);
  v44 = a3;
  v45 = a4;
  v46 = v24;
  v47 = a7;
  v48 = a8;
  v49 = a11;
  v50 = a12;
  if (v23 > 1)
  {
    v32 = type metadata accessor for WhitespaceRemovingFormatStyle(255, &v44);
    v43 = v17;
    swift_getWitnessTable(protocol conformance descriptor for <> WhitespaceRemovingFormatStyle<A, B>, v32, &v43);
    v44 = v39;
    v45 = v32;
    v46 = a10;
    v47 = v33;
    v48 = &protocol witness table for AttributedString;
    v34 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v44);
    v35 = v40;
    v40[3] = v34;
    v35[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    return (*(*(v34 - 8) + 16))(boxed_opaque_existential_1, v41, v34);
  }

  else
  {
    v25 = v19;
    v26 = v20;
    v27 = type metadata accessor for WhitespaceRemovingFormatStyle(255, &v44);
    v42 = v17;
    swift_getWitnessTable(protocol conformance descriptor for <> WhitespaceRemovingFormatStyle<A, B>, v27, &v42);
    v28 = v39;
    v44 = v39;
    v45 = v27;
    v46 = a10;
    v47 = v29;
    v48 = &protocol witness table for AttributedString;
    v30 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v44);
    TimeDataFormatting.Resolvable.replacingFormat<A>(with:)(v41 + *(v30 + 60), v30, a3, v17, &protocol witness table for AttributedString, v22);
    LOBYTE(v44) = v23;
    (*(v38 + 24))(v22, &v44, v28, a10, a3);
    return (*(v26 + 8))(v22, v25);
  }
}

void instantiation function for generic protocol witness table for <> WhitespaceRemovingFormatStyle<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  swift_getWitnessTable(protocol conformance descriptor for <> WhitespaceRemovingFormatStyle<A, B>, a2, &v5);
  *(a1 + 8) = v4;
}

uint64_t type metadata completion function for WhitespaceRemovingFormatStyle(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for WhitespaceRemovingFormatStyle(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = a3[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = v10;
  v12 = v7 + v10;
  v13 = (v7 + v11) & ~v11;
  if (*(v9 + 84))
  {
    v14 = *(v9 + 64);
  }

  else
  {
    v14 = *(v9 + 64) + 1;
  }

  v15 = *(v6 + 80) | v10;
  v16 = (*(v6 + 80) | v10);
  v17 = v15 & 0x100000;
  if (v16 > 7 || v17 != 0 || ((v14 + v11 + v13) & ~v11) + v14 > 0x18)
  {
    v20 = *a2;
    *a1 = *a2;
    a1 = (v20 + ((v16 + 16) & ~v16));
  }

  else
  {
    v21 = AssociatedTypeWitness;
    v22 = ~v11;
    (*(v6 + 16))(a1, a2, v5);
    v23 = ((a1 + v12) & ~v11);
    v24 = ((a2 + v12) & ~v11);
    v25 = *(v9 + 48);
    if (v25(v24, 1, v21))
    {
      memcpy(v23, v24, v14);
    }

    else
    {
      (*(v9 + 16))(v23, v24, v21);
      (*(v9 + 56))(v23, 0, 1, v21);
    }

    v26 = &v23[v11 + v14];
    v27 = &v24[v11 + v14];
    if (v25((v27 & v22), 1, v21))
    {
      memcpy((v26 & v22), (v27 & v22), v14);
    }

    else
    {
      (*(v9 + 16))(v26 & v22, v27 & v22, v21);
      (*(v9 + 56))(v26 & v22, 0, 1, v21);
    }
  }

  return a1;
}

uint64_t destroy for WhitespaceRemovingFormatStyle(uint64_t a1, void *a2)
{
  v3 = *(a2[2] - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56) + a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = ~v7;
  v9 = (v4 + v7) & ~v7;
  v15 = v6;
  v10 = *(v6 + 48);
  if (!v10(v9, 1, AssociatedTypeWitness))
  {
    (*(v15 + 8))(v9, AssociatedTypeWitness);
  }

  v11 = *(v15 + 64);
  if (*(v15 + 84))
  {
    v12 = v9 + v7 + v11;
  }

  else
  {
    v12 = v9 + v7 + v11 + 1;
  }

  result = v10(v12 & v8, 1, AssociatedTypeWitness);
  if (!result)
  {
    v14 = *(v15 + 8);

    return v14(v12 & v8, AssociatedTypeWitness);
  }

  return result;
}

uint64_t initializeWithCopy for WhitespaceRemovingFormatStyle(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[2] - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v21 = a1;
  v10 = ~v9;
  v11 = ((v6 + v9 + a1) & ~v9);
  v12 = ((v6 + v9 + a2) & ~v9);
  v13 = *(v8 + 48);
  if (v13(v12, 1, AssociatedTypeWitness))
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
    if (v14)
    {
      v16 = *(v8 + 64);
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v11, v12, v16);
  }

  else
  {
    (*(v8 + 16))(v11, v12, AssociatedTypeWitness);
    (*(v8 + 56))(v11, 0, 1, AssociatedTypeWitness);
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  if (v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 + 1;
  }

  v18 = &v11[v9 + v17];
  v19 = &v12[v9 + v17];
  if (v13((v19 & v10), 1, AssociatedTypeWitness))
  {
    memcpy((v18 & v10), (v19 & v10), v17);
  }

  else
  {
    (*(v8 + 16))(v18 & v10, v19 & v10, AssociatedTypeWitness);
    (*(v8 + 56))(v18 & v10, 0, 1, AssociatedTypeWitness);
  }

  return v21;
}

uint64_t assignWithCopy for WhitespaceRemovingFormatStyle(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[2] - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v25 = a1;
  v10 = ~v9;
  v11 = ((v6 + v9 + a1) & ~v9);
  v12 = ((v6 + v9 + a2) & ~v9);
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, AssociatedTypeWitness);
  v15 = v13(v12, 1, AssociatedTypeWitness);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 16))(v11, v12, AssociatedTypeWitness);
      (*(v8 + 56))(v11, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 24))(v11, v12, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, AssociatedTypeWitness);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  v20 = &v11[v9 + v19];
  v21 = &v12[v9 + v19];
  v22 = v13((v20 & v10), 1, AssociatedTypeWitness);
  v23 = v13((v21 & v10), 1, AssociatedTypeWitness);
  if (!v22)
  {
    if (!v23)
    {
      (*(v8 + 24))(v20 & v10, v21 & v10, AssociatedTypeWitness);
      return v25;
    }

    (*(v8 + 8))(v20 & v10, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v23)
  {
LABEL_20:
    memcpy((v20 & v10), (v21 & v10), v19);
    return v25;
  }

  (*(v8 + 16))(v20 & v10, v21 & v10, AssociatedTypeWitness);
  (*(v8 + 56))(v20 & v10, 0, 1, AssociatedTypeWitness);
  return v25;
}

uint64_t initializeWithTake for WhitespaceRemovingFormatStyle(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[2] - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v21 = a1;
  v10 = ~v9;
  v11 = ((v6 + v9 + a1) & ~v9);
  v12 = ((v6 + v9 + a2) & ~v9);
  v13 = *(v8 + 48);
  if (v13(v12, 1, AssociatedTypeWitness))
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
    if (v14)
    {
      v16 = *(v8 + 64);
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v11, v12, v16);
  }

  else
  {
    (*(v8 + 32))(v11, v12, AssociatedTypeWitness);
    (*(v8 + 56))(v11, 0, 1, AssociatedTypeWitness);
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  if (v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 + 1;
  }

  v18 = &v11[v9 + v17];
  v19 = &v12[v9 + v17];
  if (v13((v19 & v10), 1, AssociatedTypeWitness))
  {
    memcpy((v18 & v10), (v19 & v10), v17);
  }

  else
  {
    (*(v8 + 32))(v18 & v10, v19 & v10, AssociatedTypeWitness);
    (*(v8 + 56))(v18 & v10, 0, 1, AssociatedTypeWitness);
  }

  return v21;
}

uint64_t assignWithTake for WhitespaceRemovingFormatStyle(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[2] - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v25 = a1;
  v10 = ~v9;
  v11 = ((v6 + v9 + a1) & ~v9);
  v12 = ((v6 + v9 + a2) & ~v9);
  v13 = *(v8 + 48);
  v14 = v13(v11, 1, AssociatedTypeWitness);
  v15 = v13(v12, 1, AssociatedTypeWitness);
  if (v14)
  {
    if (!v15)
    {
      (*(v8 + 32))(v11, v12, AssociatedTypeWitness);
      (*(v8 + 56))(v11, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 40))(v11, v12, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v8 + 8))(v11, AssociatedTypeWitness);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v11, v12, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  v20 = &v11[v9 + v19];
  v21 = &v12[v9 + v19];
  v22 = v13((v20 & v10), 1, AssociatedTypeWitness);
  v23 = v13((v21 & v10), 1, AssociatedTypeWitness);
  if (!v22)
  {
    if (!v23)
    {
      (*(v8 + 40))(v20 & v10, v21 & v10, AssociatedTypeWitness);
      return v25;
    }

    (*(v8 + 8))(v20 & v10, AssociatedTypeWitness);
    goto LABEL_20;
  }

  if (v23)
  {
LABEL_20:
    memcpy((v20 & v10), (v21 & v10), v19);
    return v25;
  }

  (*(v8 + 32))(v20 & v10, v21 & v10, AssociatedTypeWitness);
  (*(v8 + 56))(v20 & v10, 0, 1, AssociatedTypeWitness);
  return v25;
}

uint64_t getEnumTagSinglePayload for WhitespaceRemovingFormatStyle(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = a3[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v16 = ((v14 + v13 + (v15 & ~v13)) & ~v13) + v14;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v7 >= v11)
        {
          v25 = *(v6 + 48);

          return v25(a1, v7, v5);
        }

        else
        {
          v23 = (*(v9 + 48))((a1 + v15) & ~v13);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for WhitespaceRemovingFormatStyle(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[2];
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v8 + 64) + v15;
  if (v12)
  {
    v17 = *(v11 + 64);
  }

  else
  {
    v17 = *(v11 + 64) + 1;
  }

  v18 = ((v17 + v15 + (v16 & ~v15)) & ~v15) + v17;
  if (a3 <= v14)
  {
    goto LABEL_20;
  }

  if (v18 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v19))
    {
      v10 = 4;
      if (v14 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= 2)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

LABEL_20:
    if (v14 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v10 = 1;
  if (v14 >= a2)
  {
LABEL_30:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v18] = 0;
    }

    else if (v10)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v9 >= v13)
      {
        v28 = *(v30 + 56);

        v28(a1, a2, v9, v7);
      }

      else
      {
        v24 = (&a1[v16] & ~v15);
        if (v13 >= a2)
        {
          v29 = *(v11 + 56);

          v29(v24, (a2 + 1));
        }

        else
        {
          if (v17 <= 3)
          {
            v25 = ~(-1 << (8 * v17));
          }

          else
          {
            v25 = -1;
          }

          if (v17)
          {
            v26 = v25 & (~v13 + a2);
            if (v17 <= 3)
            {
              v27 = v17;
            }

            else
            {
              v27 = 4;
            }

            bzero(v24, v17);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v24 = v26;
                v24[2] = BYTE2(v26);
              }

              else
              {
                *v24 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v24 = v26;
            }

            else
            {
              *v24 = v26;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v21 = ~v14 + a2;
  if (v18 >= 4)
  {
    bzero(a1, ((v17 + v15 + (v16 & ~v15)) & ~v15) + v17);
    *a1 = v21;
    v22 = 1;
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v18)) + 1;
  if (!v18)
  {
LABEL_58:
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v18));
  bzero(a1, v18);
  if (v18 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v18 == 2)
  {
    *a1 = v23;
    if (v10 > 1)
    {
LABEL_62:
      if (v10 == 2)
      {
        *&a1[v18] = v22;
      }

      else
      {
        *&a1[v18] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v10 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v10)
  {
    a1[v18] = v22;
  }
}

uint64_t one-time initialization function for immersiveSpace()
{
  result = AGMakeUniqueID();
  static CoordinateSpace.ID.immersiveSpace = result;
  return result;
}

uint64_t one-time initialization function for worldReference()
{
  result = AGMakeUniqueID();
  static CoordinateSpace.ID.worldReference = result;
  return result;
}

double EnvironmentValues.init(_:tracker:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  if (a1)
  {
    v3 = *(a1 + 64);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a2 + 16);

  os_unfair_lock_lock((v4 + 16));
  *(v4 + 24) = v3;
  os_unfair_lock_unlock((v4 + 16));

  return result;
}

double EnvironmentValues.removingTracker()@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;

  return result;
}

uint64_t EnvironmentValues.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

void EnvironmentValues.plist.setter(uint64_t a1, __n128 a2)
{
  if (*v2)
  {
    v4 = *(*v2 + 64);
    if (!a1)
    {
      if (!v4)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v4 = 0;
  }

  if (v4 != *(a1 + 64))
  {
LABEL_11:
    if (v2[1])
    {
      PropertyList.Tracker.invalidateAllValues(from:to:)(*v2, a1);
    }

    *v2 = a1;
    return;
  }
}

void (*EnvironmentValues.plist.modify(void *a1))(uint64_t *a1, char a2, __n128 a3)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return EnvironmentValues.plist.modify;
}

void EnvironmentValues.plist.modify(uint64_t *a1, char a2, __n128 a3)
{
  v3 = *a1;
  if (a2)
  {

    EnvironmentValues.plist.setter(v4, v5);
LABEL_10:

    return;
  }

  v6 = a1[2];
  if (v6)
  {
    v7 = *(v6 + 64);
    if (!v3)
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v7 = 0;
  }

  if (v7 == *(v3 + 64))
  {
    goto LABEL_10;
  }

LABEL_13:
  v8 = a1[1];
  if (v8[1])
  {
    PropertyList.Tracker.invalidateAllValues(from:to:)(a1[2], v3);
  }

  *v8 = v3;
}

double EnvironmentValues.addDependencies(from:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);

    os_unfair_lock_lock((v3 + 16));
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    v10[0] = *(v3 + 24);
    v10[1] = v4;
    v10[2] = v5;
    v10[3] = v6;
    v11 = v7;
    v8 = *(v2 + 16);

    os_unfair_lock_lock(v8 + 4);
    TrackerData.formUnion(_:)(v10);

    os_unfair_lock_unlock(v8 + 4);

    os_unfair_lock_unlock((v3 + 16));
  }

  return result;
}

void (*EnvironmentValues.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
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
  EnvironmentValues.getValue<A>(for:)(v15, a3, a4);
  return EnvironmentValues.subscript.modify;
}

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
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
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
  EnvironmentValues.subscript.getter(a2, a3, a4);
  return EnvironmentValues.subscript.modify;
}

void EnvironmentValues.subscript.modify(uint64_t **a1, char a2)
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
    EnvironmentValues._set<A>(_:for:)(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    EnvironmentValues._set<A>(_:for:)((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

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
    specialized EnvironmentValues.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized EnvironmentValues.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t EnvironmentValues.description.getter()
{
  v1 = *v0;
  v6[0] = 91;
  v6[1] = 0xE100000000000000;
  v5 = 0;
  if (v1)
  {
    v4 = 0;

    specialized PropertyList.Element.forEach(filter:_:)(&v4, v1, &v5, v6, v2);
  }

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);

  return v6[0];
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EnvironmentValues()
{
  v1 = *v0;
  v6[0] = 91;
  v6[1] = 0xE100000000000000;
  v5 = 0;
  if (v1)
  {
    v4 = 0;

    specialized PropertyList.Element.forEach(filter:_:)(&v4, v1, &v5, v6, v2);
  }

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);

  return v6[0];
}

double EnvironmentValues.append(contentsOf:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  value = *a1;
  v6 = a1[1];
  v8 = *v4;
  if (!*a1)
  {

    value = v8;
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_12:
    if (!value)
    {
      goto LABEL_19;
    }

    v9 = 0;
    goto LABEL_14;
  }

  if (!v8)
  {

    goto LABEL_12;
  }

  if (value[3])
  {
    type metadata accessor for TypedElement<EmptyKey>(0, a2, a3, a4);
    swift_allocObject();

    value = PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, v8, value).value;
  }

  else
  {
    v10 = value[4];
    v11 = *(*value + 216);

    v13 = v11(v12, v10);

    value = v13;
  }

LABEL_8:
  v9 = *(v8 + 64);
  if (value)
  {
LABEL_14:
    if (v9 == value[8])
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (v5[1])
  {

    PropertyList.Tracker.invalidateAllValues(from:to:)(v8, value);
  }

  else
  {
  }

  *v5 = value;
LABEL_19:
  if (v6)
  {
    v14 = v5[1];
    if (v14)
    {
      v15 = *(v6 + 16);

      os_unfair_lock_lock((v15 + 16));
      v16 = *(v15 + 32);
      v17 = *(v15 + 40);
      v18 = *(v15 + 48);
      v19 = *(v15 + 56);
      v22[0] = *(v15 + 24);
      v22[1] = v16;
      v22[2] = v17;
      v22[3] = v18;
      v23 = v19;
      v20 = *(v14 + 16);

      os_unfair_lock_lock(v20 + 4);
      TrackerData.formUnion(_:)(v22);

      os_unfair_lock_unlock(v20 + 4);

      os_unfair_lock_unlock((v15 + 16));
    }
  }

  return result;
}

void EnvironmentValues.init(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;

  *a2 = v3;
  a2[1] = 0;
}

void type metadata accessor for TypedElement<EmptyKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for TypedElement<EmptyKey>)
  {
    v4 = type metadata accessor for TypedElement(0, &type metadata for EmptyKey, &protocol witness table for EmptyKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TypedElement<EmptyKey>);
    }
  }
}

uint64_t static ScrollViewDragAutoScrollKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    result = a2();
  }

  *a1 = result & 1;
  return result;
}

void static DynamicTypeSize.systemDefault.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x78);
  v1 = static CoreGlue2.shared;
  v0();
}

Swift::Int DynamicTypeSize.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void (*EnvironmentValues.dynamicTypeSize.modify(char **a1))(uint64_t *a1)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 3;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.dynamicTypeSize.modify;
}

void EnvironmentValues.dynamicTypeSize.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015DynamicTypeSizeF033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015DynamicTypeSizeK033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

unsigned __int8 *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance DynamicTypeSizeCollection(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = *result;
  if (v2 < *a2 || v2 >= a2[1])
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *result;
  if (v2 < *a2 || a2[1] < v2)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance DynamicTypeSizeCollection()
{
  v0 = specialized Collection.count.getter();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15DynamicTypeSizeO_Tt1g5(v0, 0);
  if (specialized Sequence._copySequenceContents(initializing:)(&v4, (v2 + 4), v1) != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

void lazy protocol witness table accessor for type [DynamicTypeSize] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [DynamicTypeSize] and conformance [A])
  {
    type metadata accessor for [DynamicTypeSize](255, &lazy cache variable for type metadata for [DynamicTypeSize], MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [DynamicTypeSize] and conformance [A]);
  }
}

void lazy protocol witness table accessor for type IndexingIterator<DynamicTypeSizeCollection> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for IndexingIterator<DynamicTypeSizeCollection>(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void type metadata accessor for IndexingIterator<DynamicTypeSizeCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection();
    v7 = a3(a1, &unk_1F0091B00, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t DelayAnimation.shouldMerge<A, B>(base:previous:previousBase:value:time:context:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3 != a1)
  {
    return 0;
  }

  v19 = specialized Animation.init<A>(_:)(a5, a9);
  v20.n128_f64[0] = a2 - a3;
  if (a2 - a3 <= 0.0)
  {
    v20.n128_f64[0] = 0.0;
  }

  v21 = (*(a11 + 32))(v19, a6, a7, a8, a10, a9, a11, v20);

  return v21 & 1;
}

double protocol witness for CustomAnimationModifier.function(base:) in conformance DelayAnimation@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  *(v11 + 48) = v8;
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  *a2 = v11;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 7;

  return outlined copy of Animation.Function(v5, v6, v7, v8, v9, v10);
}

void *protocol witness for ProtobufEncodableMessage.encode(to:) in conformance DelayAnimation(void *result)
{
  v2 = *v1;
  if (*v1 != 0.0)
  {
    v3 = result;
    ProtobufEncoder.encodeVarint(_:)(0x21uLL);
    v4 = v3[1];
    v5 = v4 + 8;
    if (__OFADD__(v4, 8))
    {
      __break(1u);
    }

    else if (v3[2] >= v5)
    {
      v3[1] = v5;
      result = (*v3 + v4);
LABEL_5:
      *result = v2;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(v5);
    goto LABEL_5;
  }

  return result;
}

uint64_t (*_ScrollClipEffect.animatableData.modify(void *a1, uint64_t a2))()
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
  v9 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v7[3] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v7[5] = v13;
  (*(v9 + 24))(v8, v9);
  return _ScrollClipEffect.animatableData.modify;
}

void *static _ScrollClipEffect._makeView(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 48);
  v47 = *(a2 + 32);
  v48 = v9;
  v49 = *(a2 + 64);
  v10 = *(a2 + 16);
  v46[0] = *a2;
  v46[1] = v10;
  v50 = *(a2 + 80);
  v44 = v46[0];
  v45 = v10;
  v11 = v47;
  v42 = *(a2 + 36);
  v43 = *(a2 + 52);
  v18 = *(a2 + 64);
  v19 = *(a2 + 80);
  outlined init with copy of _ViewInputs(v46, v35);
  LODWORD(v35[0]) = AGGraphCreateOffsetAttribute2();
  *(v35 + 4) = __PAIR64__(DWORD2(v49), v49);
  HIDWORD(v35[0]) = HIDWORD(v48);
  v21 = type metadata accessor for _ScrollClipEffect.ChildTransform(0, a5, a6, v12);
  swift_getWitnessTable(protocol conformance descriptor for _ScrollClipEffect<A>.ChildTransform, v21);
  v22 = v13;
  type metadata accessor for Attribute<ViewTransform>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v35, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_4, v20, v21, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  LODWORD(a6) = v33[0];
  v29[0] = v44;
  v29[1] = v45;
  *&v30[4] = v42;
  *&v30[20] = v43;
  *v30 = v11 | 4;
  *&v30[28] = v33[0];
  v31 = v18;
  v32 = v19;
  v25 = *v30;
  v26 = *&v30[16];
  v27 = v18;
  v28 = v19;
  v23 = v44;
  v24 = v45;
  v16 = outlined init with copy of _ViewInputs(v29, v35);
  a3(v16, &v23);
  v33[2] = v25;
  v33[3] = v26;
  v33[4] = v27;
  v34 = v28;
  v33[0] = v23;
  v33[1] = v24;
  outlined destroy of _ViewInputs(v33);
  v35[0] = v44;
  v35[1] = v45;
  v37 = v42;
  v38 = v43;
  v36 = v11 | 4;
  v39 = a6;
  v40 = v18;
  v41 = v19;
  return outlined destroy of _ViewInputs(v35);
}

void _ScrollClipEffect.ChildTransform.value.getter(unint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  GeometryEffectTransform.transform.getter(&v41);
  v11 = v41;
  v12 = v42;
  v13 = v43;
  v14 = v44;
  v15 = v45;
  v16 = v46;
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v18 = *Value;
  v19 = *(Value + 8);
  v20 = v15 - (*Value - v13);
  *(a5 + 32) = v20;
  *a5 = v11;
  *(a5 + 8) = v12;
  v21 = v16 - (v19 - v14);
  *(a5 + 40) = v21;
  *(a5 + 16) = v18;
  *(a5 + 24) = v19;

  v22 = AGGraphGetValue();
  (*(v8 + 16))(v10, v22, a3);
  v23 = AGGraphGetValue();
  v24 = Shape.effectivePath(in:)(a3, a4, &v41, *v23);
  (*(v8 + 8))(v10, a3, v24);
  v25 = v41;
  if (LOBYTE(v45) <= 2u)
  {
    if (LOBYTE(v45) && LOBYTE(v45) != 1)
    {
      x = v41[2];
      y = v41[3];
      width = v41[4];
      height = v41[5];
    }

    else
    {
      x = *&v41;
      y = v42;
      width = v43;
      height = v44;
    }

    goto LABEL_17;
  }

  if (LOBYTE(v45) == 5)
  {
    if (*(v41 + 16))
    {
      if (*(v41 + 16) == 1)
      {

        RBPathGetBoundingRect();
      }

      else
      {

        v30 = MEMORY[0x193AC3640](v25 + 3);
      }

      x = v30;
      y = v31;
      width = v32;
      height = v33;
    }

    else
    {
      v34 = *(v41 + 3);
      if (!v34)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v35 = v34;

      PathBoundingBox = CGPathGetPathBoundingBox(v35);
      x = PathBoundingBox.origin.x;
      y = PathBoundingBox.origin.y;
      width = PathBoundingBox.size.width;
      height = PathBoundingBox.size.height;
    }

    outlined destroy of Path(&v41);
LABEL_17:
    type metadata accessor for Element<ViewTransform.ScrollGeometryItem>(0);
    v36 = swift_allocObject();
    v37 = v36;
    *(v36 + 32) = v20;
    *(v36 + 40) = v21;
    *(v36 + 48) = x;
    *(v36 + 56) = y;
    *(v36 + 64) = vdupq_n_s64(0x7FF0000000000000uLL);
    *(v36 + 80) = 0u;
    *(v36 + 96) = 0u;
    *(v36 + 112) = width;
    *(v36 + 120) = height;
    *(v36 + 128) = x;
    *(v36 + 136) = y;
    *(v36 + 144) = width;
    *(v36 + 152) = height;
    v38 = 1;
    *(v36 + 160) = 1;
    *(v36 + 16) = v11;
    if (!v11 || (v39 = *(v11 + 3), v40 = __OFADD__(v39, 1), v38 = v39 + 1, !v40))
    {
      *(v36 + 24) = v38;
      outlined destroy of Path(&v41);

      *a5 = v37;
      *(a5 + 32) = 0;
      *(a5 + 40) = 0;
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (LOBYTE(v45) == 6)
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_17;
  }

LABEL_22:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ScrollClipEffect<A>(void *a1, uint64_t a2))()
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
  *v6 = v2;
  v6[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
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
  _ScrollClipEffect.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _ScrollClipEffect<A>;
}

uint64_t _ScrollClipEffect.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized _EnabledScrollClipEffect.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t (*_EnabledScrollClipEffect.animatableData.modify(void *a1, uint64_t a2))()
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
  v9 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v7[3] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v7[5] = v13;
  (*(v9 + 24))(v8, v9);
  return _EnabledScrollClipEffect.animatableData.modify;
}

void _ScrollClipEffect.animatableData.modify(uint64_t **a1, char a2)
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
    specialized _EnabledScrollClipEffect.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _EnabledScrollClipEffect.animatableData.setter((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *static _EnabledScrollClipEffect._makeView(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v57 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 48);
  v53 = *(a2 + 32);
  v54 = v9;
  v55 = *(a2 + 64);
  v10 = *(a2 + 16);
  v52[0] = *a2;
  v52[1] = v10;
  v56 = *(a2 + 80);
  v50 = v52[0];
  v51 = v10;
  v11 = v53;
  v48 = *(a2 + 36);
  v49 = *(a2 + 52);
  v27 = *(a2 + 64);
  v28 = *(a2 + 80);
  if (*(*(a5 - 8) + 64))
  {
    outlined init with copy of _ViewInputs(v52, &v40);
    closure #1 in static _EnabledScrollClipEffect._makeView(modifier:inputs:body:)(1, a5, a6, v12);
  }

  else
  {
    outlined init with copy of _ViewInputs(v52, &v40);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  closure #2 in static _EnabledScrollClipEffect._makeView(modifier:inputs:body:)(1, a5, a6, v14);
  v15 = AGGraphCreateOffsetAttribute2();
  *&v40 = __PAIR64__(v15, OffsetAttribute2);
  *(&v40 + 1) = __PAIR64__(DWORD2(v55), v55);
  LODWORD(v41) = HIDWORD(v54);
  MEMORY[0x1EEE9AC00](v15);
  v24 = type metadata accessor for _EnabledScrollClipEffect.ChildTransform(0, a5, a6, v16);
  swift_getWitnessTable(protocol conformance descriptor for _EnabledScrollClipEffect<A>.ChildTransform, v24);
  v25 = v17;
  type metadata accessor for Attribute<ViewTransform>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v40, closure #1 in Attribute.init<A>(_:)partial apply, &v23, v24, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  v20 = v38[0];
  v35[0] = v50;
  v35[1] = v51;
  *(v36 + 4) = v48;
  *(&v36[1] + 4) = v49;
  LODWORD(v36[0]) = v11 | 4;
  HIDWORD(v36[1]) = v38[0];
  v36[2] = v27;
  v37 = v28;
  v31 = v36[0];
  v32 = v36[1];
  v33 = v27;
  v34 = v28;
  v29 = v50;
  v30 = v51;
  v21 = outlined init with copy of _ViewInputs(v35, &v40);
  a3(v21, &v29);
  v38[2] = v31;
  v38[3] = v32;
  v38[4] = v33;
  v39 = v34;
  v38[0] = v29;
  v38[1] = v30;
  outlined destroy of _ViewInputs(v38);
  v40 = v50;
  v41 = v51;
  v43 = v48;
  v44 = v49;
  v42 = v11 | 4;
  v45 = v20;
  v46 = v27;
  v47 = v28;
  return outlined destroy of _ViewInputs(&v40);
}

uint64_t closure #1 in static _EnabledScrollClipEffect._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for _EnabledScrollClipEffect(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #2 in static _EnabledScrollClipEffect._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _EnabledScrollClipEffect(0, a2, a3, a4);
  v6 = *(v5 + 36);
  v11[2] = v5;
  v7 = MEMORY[0x1E69E6370];
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_6, v11, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

double _EnabledScrollClipEffect.ChildTransform.transform.getter@<D0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  *a2 = *Value;
  *(a2 + 8) = v4;
  v5 = *(Value + 32);
  *(a2 + 16) = *(Value + 16);
  *(a2 + 32) = v5;

  return result;
}

_BYTE *_EnabledScrollClipEffect.ChildTransform.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _EnabledScrollClipEffect.ChildTransform.transform.getter(&v42);
  v12 = v42;
  v11 = v43;
  v13 = v44;
  v14 = v45;
  v15 = v46;
  v16 = v47;
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v18 = *Value;
  v19 = *(Value + 8);
  v20 = v15 - (*Value - v13);
  v21 = v16 - (v19 - v14);
  result = AGGraphGetValue();
  if (*result != 1)
  {
    goto LABEL_21;
  }

  v23 = AGGraphGetValue();
  (*(v8 + 16))(v10, v23, a3);
  v24 = AGGraphGetValue();
  v25 = Shape.effectivePath(in:)(a3, a4, &v42, *v24);
  (*(v8 + 8))(v10, a3, v25);
  v26 = v42;
  if (LOBYTE(v46) <= 2u)
  {
    if (LOBYTE(v46) && LOBYTE(v46) != 1)
    {
      x = v42[2];
      y = v42[3];
      width = v42[4];
      height = v42[5];
    }

    else
    {
      x = *&v42;
      y = v43;
      width = v44;
      height = v45;
    }

    goto LABEL_18;
  }

  if (LOBYTE(v46) == 5)
  {
    if (*(v42 + 16))
    {
      if (*(v42 + 16) == 1)
      {

        RBPathGetBoundingRect();
      }

      else
      {

        v31 = MEMORY[0x193AC3640](v26 + 3);
      }

      x = v31;
      y = v32;
      width = v33;
      height = v34;
    }

    else
    {
      v35 = *(v42 + 3);
      if (!v35)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v36 = v35;

      PathBoundingBox = CGPathGetPathBoundingBox(v36);
      x = PathBoundingBox.origin.x;
      y = PathBoundingBox.origin.y;
      width = PathBoundingBox.size.width;
      height = PathBoundingBox.size.height;
    }

    outlined destroy of Path(&v42);
LABEL_18:
    type metadata accessor for Element<ViewTransform.ScrollGeometryItem>(0);
    v37 = swift_allocObject();
    v38 = v37;
    *(v37 + 32) = v20;
    *(v37 + 40) = v21;
    *(v37 + 48) = x;
    *(v37 + 56) = y;
    *(v37 + 64) = vdupq_n_s64(0x7FF0000000000000uLL);
    *(v37 + 80) = 0u;
    *(v37 + 96) = 0u;
    *(v37 + 112) = width;
    *(v37 + 120) = height;
    *(v37 + 128) = x;
    *(v37 + 136) = y;
    *(v37 + 144) = width;
    *(v37 + 152) = height;
    v39 = 1;
    *(v37 + 160) = 1;
    *(v37 + 16) = v12;
    if (!v12 || (v40 = *(v12 + 3), v41 = __OFADD__(v40, 1), v39 = v40 + 1, !v41))
    {
      *(v37 + 24) = v39;
      result = outlined destroy of Path(&v42);
      v20 = 0.0;
      v12 = v38;
      v21 = 0.0;
LABEL_21:
      *a5 = v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v18;
      *(a5 + 24) = v19;
      *(a5 + 32) = v20;
      *(a5 + 40) = v21;
      return result;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (LOBYTE(v46) == 6)
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_18;
  }

LABEL_24:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _EnabledScrollClipEffect<A>(void *a1, uint64_t a2))()
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
  *v6 = v2;
  v6[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
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
  _ScrollClipEffect.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance _EnabledScrollClipEffect<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance _ScrollClipEffect<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 8);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    specialized _EnabledScrollClipEffect.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _EnabledScrollClipEffect.animatableData.setter(*(*a1 + 40), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t View.scrollClipShape<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ScrollClipEffect(0, v8, v10, v9);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v5 + 16))(v7, a1, a3, v13);
  (*(v5 + 32))(v15, v7, a3);
  View.modifier<A>(_:)();
  return (*(v12 + 8))(v15, v11);
}

uint64_t specialized _EnabledScrollClipEffect.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(v4 + 32))(v8, v3, v4);
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

uint64_t type metadata completion function for _EnabledScrollClipEffect(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for Element<ViewTransform.ScrollGeometryItem>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Element<ViewTransform.ScrollGeometryItem>)
  {
    lazy protocol witness table accessor for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem();
    v4 = type metadata accessor for Element(a1, &type metadata for ViewTransform.ScrollGeometryItem, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for Element<ViewTransform.ScrollGeometryItem>);
    }
  }
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = type metadata accessor for Optional();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = dispatch thunk of Sequence.underestimatedCount.getter();
  v63 = ContiguousArray.init()();
  v58 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  dispatch thunk of IteratorProtocol.next()();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}