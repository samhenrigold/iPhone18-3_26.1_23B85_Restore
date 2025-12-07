void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v8;
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v48 = v12;
    v40 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v13;
    v43 = v10;
    v45 = (v10 + 32);
    v22 = v14 + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v9);
        v46 = *(*(v13 + 56) + 8 * v27);
      }

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v45)((*(v15 + 48) + v47 * v23), v48, v9);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v13 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, void *a2, char a3)
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
      type metadata accessor for InactiveAppearanceAnimation(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 40 * v8);
    __swift_destroy_boxed_opaque_existential_0Tm_2(v19);

    return outlined init with take of Cancellable(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
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
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm_2(v22);

    outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = v10;
      specialized _NativeDictionary.copy()();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v10);
    *(v21 + 8 * v10) = a1;

    return;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  v23 = (v20[6] + 16 * v10);
  *v23 = a2;
  v23[1] = a3;
  *(v20[7] + 8 * v10) = a1;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
  v26 = a3;

  v27 = a2;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 < v16 || (a2 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a2 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a3;
    v22[1] = a4;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  *(v21[6] + 8 * v11) = a1;
  v23 = (v21[7] + 16 * v11);
  *v23 = a3;
  v23[1] = a4;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v25;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a3;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)();
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
    v8 = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for NSAttributedStringKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0Tm_2(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a4;
  v28 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v27, v28);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1, v27, v28);
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      specialized _NativeDictionary._insert(at:key:value:)(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = a2;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)();
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for UUID();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return specialized _NativeDictionary._insert(at:key:value:)(v10, v6, a1, v16);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Cancellable(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for UUID();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9WorkoutUI0C9ViewStyleO12CoreGraphics7CGFloatVGMd, &_ss18_DictionaryStorageCy9WorkoutUI0C9ViewStyleO12CoreGraphics7CGFloatVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9WorkoutUI0C24OnboardingAnalyticsEventV3Key33_33BBD532864AE50CBDA4CF2D5EA9A1C7LLOSo8NSObjectCGMd, &_ss18_DictionaryStorageCy9WorkoutUI0C24OnboardingAnalyticsEventV3Key33_33BBD532864AE50CBDA4CF2D5EA9A1C7LLOSo8NSObjectCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9WorkoutUI27InactiveAppearanceAnimationC7Combine11Cancellable_pGMd, &_ss18_DictionaryStorageCy9WorkoutUI27InactiveAppearanceAnimationC7Combine11Cancellable_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Cancellable(*(v2 + 56) + 40 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Cancellable(v20, *(v4 + 56) + 40 * v17);
        v19 = v18;
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9WorkoutUI25PickerEditingStateHandlerC0G0O05SwiftD07BindingVySbGGMd, &_ss18_DictionaryStorageCy9WorkoutUI25PickerEditingStateHandlerC0G0O05SwiftD07BindingVySbGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = v18;
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9WorkoutUI15EffortUtilitiesC0C14AndActivityKeyVAC0E16SampleCollectionCSgGMd, &_ss18_DictionaryStorageCy9WorkoutUI15EffortUtilitiesC0C14AndActivityKeyVAC0E16SampleCollectionCSgGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v21;
        v24 = v19;
        v25 = v20;
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9WorkoutUI22DemoTrainingLoadValuesVGMd, &_ss18_DictionaryStorageCySS9WorkoutUI22DemoTrainingLoadValuesVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7SwiftUI4FontVSo6CGSizeVGMd, &_ss18_DictionaryStorageCy7SwiftUI4FontVSo6CGSizeVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySd11WorkoutCore0C10DataBucketCGMd, &_ss18_DictionaryStorageCySd11WorkoutCore0C10DataBucketCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV11WorkoutCore0E13ConfigurationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11WorkoutCore0E13ConfigurationCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay11WorkoutCore0C13ConfigurationCGGMd, &_ss18_DictionaryStorageCySSSay11WorkoutCore0C13ConfigurationCGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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
}

{
  v1 = v0;
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v36 = *(View - 8);
  MEMORY[0x28223BE20](View - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DayIndex();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9HealthKit8DayIndexV9WorkoutUI21TrainingLoadViewModelV10ChartPointVGMd, &_ss18_DictionaryStorageCy9HealthKit8DayIndexV9WorkoutUI21TrainingLoadViewModelV10ChartPointVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        outlined init with copy of TrainingLoadViewModel.ChartPoint(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        outlined init with take of TrainingLoadViewModel.ChartPoint(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

{
  v1 = v0;
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v44 = *(SampleDaySummary - 8);
  MEMORY[0x28223BE20](SampleDaySummary);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DayIndex();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9HealthKit8DayIndexV0C7Balance018TrainingLoadSampleE7SummaryVGMd, &_ss18_DictionaryStorageCy9HealthKit8DayIndexV0C7Balance018TrainingLoadSampleE7SummaryVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = SampleDaySummary;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, SampleDaySummary);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17HKWorkoutActivityCSo10HKQuantityCSgGMd, &_ss18_DictionaryStorageCySo17HKWorkoutActivityCSo10HKQuantityCSgGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v19;
        v21 = v18;
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
}

{
  v1 = v0;
  v29 = type metadata accessor for UUID();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9WorkoutUI29TrainingLoadViewModelProviderC8TaskType33_D5277829893C0F285DEBDE28ED765EEDLLO10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCy9WorkoutUI29TrainingLoadViewModelProviderC8TaskType33_D5277829893C0F285DEBDE28ED765EEDLLO10Foundation4UUIDVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    v26 = v31 + 32;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
      (*(v19 + 32))(*(v23 + 56) + v20, v22, v21);
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v32, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v37 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v7 + 48) + v25, v36);
        v28 = *(*(v7 + 56) + 8 * v23);
        (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + 8 * v23) = v28;
        v29 = v28;
        v17 = v39;
      }

      while (v39);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v31;
        v9 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo10MKMapPointaGMd, &_ss23_ContiguousArrayStorageCySo10MKMapPointaGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMd, &_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9WorkoutUI0D9ViewStyleOGMd, &_ss23_ContiguousArrayStorageCy9WorkoutUI0D9ViewStyleOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9WorkoutUI0D22ChartLinearDataElementVGMd, &_ss23_ContiguousArrayStorageCy9WorkoutUI0D22ChartLinearDataElementVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySnySdGGMd, &_ss23_ContiguousArrayStorageCySnySdGGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMd, &_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9WorkoutUI22AlertConfigurationTypeOGMd, &_ss23_ContiguousArrayStorageCy9WorkoutUI22AlertConfigurationTypeOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo18_HKWorkoutGoalTypeVGMd, &_ss23_ContiguousArrayStorageCySo18_HKWorkoutGoalTypeVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9WorkoutUI16RangedAlertStyleOGMd, &_ss23_ContiguousArrayStorageCy9WorkoutUI16RangedAlertStyleOGMR);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore14RaceChartPointVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore14RaceChartPointVGMR, MEMORY[0x277D7DFF0]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D23ConfigurationFilterTypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D23ConfigurationFilterTypeOGMR, MEMORY[0x277D7DC60]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9WorkoutUI21TrainingLoadViewModelVGMd, &_ss23_ContiguousArrayStorageCy9WorkoutUI21TrainingLoadViewModelVGMR, type metadata accessor for TrainingLoadViewModel);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo18_HKWorkoutGoalTypeVGMd, &_ss23_ContiguousArrayStorageCySo18_HKWorkoutGoalTypeVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9WorkoutUI22AlertConfigurationTypeOGMd, &_ss23_ContiguousArrayStorageCy9WorkoutUI22AlertConfigurationTypeOGMR);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_4(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_4(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_4(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_4(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_4(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9WorkoutUI13ArtworkBridgeC_Tt1g5Tm(v15, result + 1, a4, a5, a6);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          specialized _NativeSet.resize(capacity:)(v28 + 1, a4, a5);
        }

        v29 = v16;
        specialized _NativeSet._unsafeInsertNew(_:)(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9WorkoutUI13ArtworkBridgeC_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v21 = v8;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          specialized _NativeSet.resize(capacity:)(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = NSObject._rawHashValue(seed:)(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18NLWorkoutAlertTypeVGMd, &_ss11_SetStorageCySo18NLWorkoutAlertTypeVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x20F30CD90](v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9WorkoutUI25PickerEditingStateHandlerC0G0OGMd, &_ss11_SetStorageCy9WorkoutUI25PickerEditingStateHandlerC0G0OGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x20F30CD90](v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](result);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for NLWorkoutAlertType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v4);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    specialized _NativeSet.resize(capacity:)(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      specialized _NativeSet.copy()(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18NLWorkoutAlertTypeVGMd, &_ss11_SetStorageCySo18NLWorkoutAlertTypeVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9WorkoutUI25PickerEditingStateHandlerC0G0OGMd, &_ss11_SetStorageCy9WorkoutUI25PickerEditingStateHandlerC0G0OGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18NLWorkoutAlertTypeVGMd, &_ss11_SetStorageCySo18NLWorkoutAlertTypeVGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x20F30CD90](v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9WorkoutUI25PickerEditingStateHandlerC0G0OGMd, &_ss11_SetStorageCy9WorkoutUI25PickerEditingStateHandlerC0G0OGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x20F30CD90](v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v34 = type metadata accessor for UUID();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(v18);
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v28;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9WorkoutUI0C9ViewStyleO_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9WorkoutUI0C9ViewStyleO12CoreGraphics7CGFloatVGMd, &_ss18_DictionaryStorageCy9WorkoutUI0C9ViewStyleO12CoreGraphics7CGFloatVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26UIFontDescriptorFeatureKeyaSiGMd, &_ss18_DictionaryStorageCySo26UIFontDescriptorFeatureKeyaSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMd, &_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      _s10Foundation4UUIDVSgWOcTm_1(v4, &v11, &_sSo29UIFontDescriptorAttributeNamea_yptMd, &_sSo29UIFontDescriptorAttributeNamea_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      _s10Foundation4UUIDVSgWOcTm_1(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9WorkoutUI0C24OnboardingAnalyticsEventV3Key33_33BBD532864AE50CBDA4CF2D5EA9A1C7LLO_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9WorkoutUI0C24OnboardingAnalyticsEventV3Key33_33BBD532864AE50CBDA4CF2D5EA9A1C7LLOSo8NSObjectCGMd, &_ss18_DictionaryStorageCy9WorkoutUI0C24OnboardingAnalyticsEventV3Key33_33BBD532864AE50CBDA4CF2D5EA9A1C7LLOSo8NSObjectCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9WorkoutUI25PickerEditingStateHandlerC0G0O_05SwiftD07BindingVySbGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9WorkoutUI25PickerEditingStateHandlerC0G0O05SwiftD07BindingVySbGGMd, &_ss18_DictionaryStorageCy9WorkoutUI25PickerEditingStateHandlerC0G0O05SwiftD07BindingVySbGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v6;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + v10) = v4;
    v13 = v3[7] + 24 * v10;
    *v13 = result;
    *(v13 + 8) = v5;
    *(v13 + 16) = v7 & 1;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 32;
    v4 = *(v12 - 24);
    v19 = *(v12 - 2);
    v18 = *(v12 - 1);
    v7 = *v12;

    v10 = specialized __RawDictionaryStorage.find<A>(_:)();
    v12 = v17;
    v5 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static EffortUtilities.WorkoutAndActivityKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v48 - v20;
  v22 = *(a1 + 8);
  v24 = *a2;
  v23 = *(a2 + 8);
  v54 = *a1;
  v55 = v24;
  v51 = v23;
  v52 = v22;
  v25 = [v54 fiui_finalWorkoutUUID];
  if (v25)
  {
    v26 = v25;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = *(v5 + 56);
    v27(v21, 0, 1, v4);
  }

  else
  {
    v27 = *(v5 + 56);
    v27(v21, 1, 1, v4);
  }

  v28 = [v55 fiui_finalWorkoutUUID];
  if (v28)
  {
    v29 = v28;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v27(v17, v30, 1, v4);
  v31 = *(v9 + 48);
  _s10Foundation4UUIDVSgWOcTm_1(v21, v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  _s10Foundation4UUIDVSgWOcTm_1(v17, &v11[v31], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v32 = *(v5 + 48);
  v33 = v32(v11, 1, v4);
  v50 = v5;
  if (v33 != 1)
  {
    _s10Foundation4UUIDVSgWOcTm_1(v11, v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v32(&v11[v31], 1, v4) != 1)
    {
      v35 = &v11[v31];
      v36 = v53;
      (*(v5 + 32))(v53, v35, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v5 + 8);
      v37(v36, v4);
      _s10Foundation4UUIDVSgWOhTm_0(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      _s10Foundation4UUIDVSgWOhTm_0(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v37(v14, v4);
      _s10Foundation4UUIDVSgWOhTm_0(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_14;
    }

    _s10Foundation4UUIDVSgWOhTm_0(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _s10Foundation4UUIDVSgWOhTm_0(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v14, v4);
    goto LABEL_12;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v32(&v11[v31], 1, v4) != 1)
  {
LABEL_12:
    _s10Foundation4UUIDVSgWOhTm_0(v11, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v34 = 0;
    goto LABEL_14;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v34 = 1;
LABEL_14:
  if ([v54 workoutActivityType] == 82 && objc_msgSend(v55, sel_workoutActivityType) == 82 && v52)
  {
    v38 = v51;
    v39 = (v51 == 0) & v34;
    if (v51 && ((v34 ^ 1) & 1) == 0)
    {
      v40 = v52;
      v41 = v38;
      v42 = [v40 UUID];
      v43 = v53;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = [v41 UUID];
      v45 = v49;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = static UUID.== infix(_:_:)();
      v46 = *(v50 + 8);
      v46(v45, v4);
      v46(v43, v4);
    }
  }

  else
  {
    v39 = v34;
  }

  return v39 & 1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9WorkoutUI15EffortUtilitiesC0C14AndActivityKeyV_AC0E16SampleCollectionCSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9WorkoutUI15EffortUtilitiesC0C14AndActivityKeyVAC0E16SampleCollectionCSgGMd, &_ss18_DictionaryStorageCy9WorkoutUI15EffortUtilitiesC0C14AndActivityKeyVAC0E16SampleCollectionCSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v5 = *(i - 1);
      v7 = *i;
      v8 = *i;
      v9 = v6;
      v10 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v9, v5);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v9;
      v13[1] = v5;
      *(v3[7] + 8 * result) = v7;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4FontV_So6CGSizeVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7SwiftUI4FontVSo6CGSizeVGMd, &_ss18_DictionaryStorageCy7SwiftUI4FontVSo6CGSizeVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      _s10Foundation4UUIDVSgWOcTm_1(v4, &v11, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSd_11WorkoutCore0C10DataBucketCTt0g5Tf4g_n(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySd11WorkoutCore0C10DataBucketCGMd, &_ss18_DictionaryStorageCySd11WorkoutCore0C10DataBucketCGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = *(a1 + 5);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo6HKUnitC_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo6HKUnitCSdGMd, &_ss18_DictionaryStorageCySo6HKUnitCSdGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore23QueriedExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore23QueriedExternalProviderCSayAC0C13ConfigurationCGGMd, &_ss18_DictionaryStorageCy11WorkoutCore23QueriedExternalProviderCSayAC0C13ConfigurationCGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo38UIApplicationOpenExternalURLOptionsKeyaypGMd, &_ss18_DictionaryStorageCySo38UIApplicationOpenExternalURLOptionsKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      _s10Foundation4UUIDVSgWOcTm_1(v4, &v11, &_sSo38UIApplicationOpenExternalURLOptionsKeya_yptMd, &_sSo38UIApplicationOpenExternalURLOptionsKeya_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So10HKQuantityCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So10HKQuantityCtMd, &_s10Foundation4UUIDV_So10HKQuantityCtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo10HKQuantityCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo10HKQuantityCGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      _s10Foundation4UUIDVSgWOcTm_1(v9, v5, &_s10Foundation4UUIDV_So10HKQuantityCtMd, &_s10Foundation4UUIDV_So10HKQuantityCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo17HKWorkoutActivityC_So10HKQuantityCSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17HKWorkoutActivityCSo10HKQuantityCSgGMd, &_ss18_DictionaryStorageCySo17HKWorkoutActivityCSo10HKQuantityCSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9WorkoutUI27InactiveAppearanceAnimationC_7Combine11Cancellable_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9WorkoutUI27InactiveAppearanceAnimationC7Combine11Cancellable_pGMd, &_ss18_DictionaryStorageCy9WorkoutUI27InactiveAppearanceAnimationC7Combine11Cancellable_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      _s10Foundation4UUIDVSgWOcTm_1(v4, &v11, &_s9WorkoutUI27InactiveAppearanceAnimationC_7Combine11Cancellable_ptMd, &_s9WorkoutUI27InactiveAppearanceAnimationC_7Combine11Cancellable_ptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Cancellable(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo18NLWorkoutAlertTypeV_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for NLWorkoutAlertType(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type NLWorkoutAlertType and conformance NLWorkoutAlertType, type metadata accessor for NLWorkoutAlertType, &protocol conformance descriptor for NLWorkoutAlertType);
  result = MEMORY[0x20F30BF10](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

id specialized static EffortUtilities.createRatingSample(quantity:workout:workoutActivity:)(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  if (!a3)
  {
    goto LABEL_5;
  }

  v17 = a3;
  v18 = [v17 endDate];
  if (!v18)
  {

LABEL_5:
    v21 = [a2 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = [a2 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_6;
  }

  v19 = v18;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v7 + 32))(v12, v9, v6);
  v20 = [v17 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_6:
  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v22 = MEMORY[0x20F30C0E0](*MEMORY[0x277CCCCD8]);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v24 = Date._bridgeToObjectiveC()().super.isa;
  v25 = [objc_opt_self() quantitySampleWithType:v22 quantity:a1 startDate:isa endDate:v24];

  v26 = *(v7 + 8);
  v26(v12, v6);
  v26(v16, v6);
  return v25;
}

uint64_t specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v4[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4[24] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:), 0, 0);
}

uint64_t specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:)()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = specialized static EffortUtilities.createRatingSample(quantity:workout:workoutActivity:)(v0[19], v3, v1);
  v0[33] = v4;
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:);
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  v0[13] = &block_descriptor_64;
  v0[14] = v5;
  [v2 relateWorkoutEffortSample:v4 withWorkout:v3 activity:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:);
  }

  else
  {
    v2 = specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:)(uint64_t a1)
{
  v73 = v1;
  v2 = *(v1 + 280);
  if (v2 == 1)
  {
    v4 = *(v1 + 160);
    v3 = *(v1 + 168);
    v5 = *(v1 + 152);
    static WOLog.trainingLoad.getter();
    v6 = v5;
    v7 = v4;
    v8 = v3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v1 + 208);
      v11 = *(v1 + 216);
      v13 = *(v1 + 200);
      v14 = *(v1 + 160);
      v66 = *(v1 + 168);
      v15 = *(v1 + 152);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72 = v69;
      *v16 = 138412802;
      *(v16 + 4) = v15;
      *v17 = v15;
      *(v16 + 12) = 2082;
      v18 = v15;
      v19 = [v14 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v12 + 8))(v11, v13);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v72);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      if (v66)
      {
        v24 = [*(v1 + 168) UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = 0;
      }

      else
      {
        v25 = 1;
      }

      v52 = *(v1 + 256);
      v53 = *(v1 + 232);
      v65 = *(v1 + 264);
      v68 = *(v1 + 224);
      v54 = *(v1 + 192);
      (*(*(v1 + 208) + 56))(v54, v25, 1, *(v1 + 200));
      v55 = Optional.description.getter();
      v57 = v56;
      _s10Foundation4UUIDVSgWOhTm_0(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v72);

      *(v16 + 24) = v58;
      _os_log_impl(&dword_20C66F000, v9, v10, "Successfully stored perceived effort %@ to workout %{public}s with activity %{public}s", v16, 0x20u);
      _s10Foundation4UUIDVSgWOhTm_0(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F30E080](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v69, -1, -1);
      MEMORY[0x20F30E080](v16, -1, -1);

      (*(v53 + 8))(v52, v68);
      v2 = 1;
    }

    else
    {
      v49 = *(v1 + 256);
      v50 = *(v1 + 224);
      v51 = *(v1 + 232);

      (*(v51 + 8))(v49, v50);
    }
  }

  else
  {
    v26 = *(v1 + 152);
    v27 = *(v1 + 160);
    static WOLog.trainingLoad.getter();
    v28 = v26;
    v29 = v27;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v1 + 248);
    v35 = *(v1 + 224);
    v34 = *(v1 + 232);
    if (v32)
    {
      v67 = *(v1 + 224);
      v70 = *(v1 + 248);
      v37 = *(v1 + 208);
      v36 = *(v1 + 216);
      v61 = *(v1 + 200);
      v38 = *(v1 + 152);
      v39 = *(v1 + 160);
      v64 = *(v1 + 264);
      v71 = v2;
      v40 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v72 = v63;
      *v40 = 138412546;
      *(v40 + 4) = v38;
      *v62 = v38;
      *(v40 + 12) = 2082;
      v41 = v38;
      v42 = [v39 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v37 + 8))(v36, v61);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v72);

      *(v40 + 14) = v46;
      _os_log_impl(&dword_20C66F000, v30, v31, "Failed to store perceived effort %@ to workout %{public}s with no error.", v40, 0x16u);
      _s10Foundation4UUIDVSgWOhTm_0(v62, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F30E080](v62, -1, -1);
      v47 = __swift_destroy_boxed_opaque_existential_0Tm_2(v63);
      MEMORY[0x20F30E080](v63, -1, -1, v47);
      v48 = v40;
      v2 = v71;
      MEMORY[0x20F30E080](v48, -1, -1);

      (*(v34 + 8))(v70, v67);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }
  }

  v59 = *(v1 + 8);

  return v59(v2);
}

{
  v40 = v1;
  v2 = *(v1 + 272);
  v4 = *(v1 + 152);
  v3 = *(v1 + 160);
  swift_willThrow();
  static WOLog.trainingLoad.getter();
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v33 = *(v1 + 272);
    v35 = *(v1 + 264);
    v36 = *(v1 + 232);
    v10 = *(v1 + 216);
    v37 = *(v1 + 224);
    v38 = *(v1 + 240);
    v11 = *(v1 + 200);
    v12 = *(v1 + 208);
    v14 = *(v1 + 152);
    v13 = *(v1 + 160);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39[0] = v34;
    *v15 = 138412802;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2082;
    v17 = v14;
    v18 = [v13 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v12 + 8))(v10, v11);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v39);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2082;
    *(v1 + 144) = v33;
    v23 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v39);

    *(v15 + 24) = v26;
    _os_log_impl(&dword_20C66F000, v8, v9, "Failed to store effort %@ to workout %{public}s : %{public}s", v15, 0x20u);
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v34, -1, -1);
    MEMORY[0x20F30E080](v15, -1, -1);

    (*(v36 + 8))(v38, v37);
  }

  else
  {
    v27 = *(v1 + 272);
    v29 = *(v1 + 232);
    v28 = *(v1 + 240);
    v30 = *(v1 + 224);

    (*(v29 + 8))(v28, v30);
  }

  v31 = *(v1 + 8);

  return v31(0);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x20F30BF10](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

id specialized static EffortUtilities.effortSampleCollection(for:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_26:
    v5 = 0;
    v24 = 0;
LABEL_27:
    v22 = type metadata accessor for EffortSampleCollection();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR___WOEffortSampleCollection_effortSample] = v24;
    *&v23[OBJC_IVAR___WOEffortSampleCollection_estimatedEffortSample] = v5;
    v28.receiver = v23;
    v28.super_class = v22;
    return objc_msgSendSuper2(&v28, sel_init);
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_26;
  }

LABEL_3:
  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  result = type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v24 = 0;
    v26 = v1 & 0xC000000000000001;
    v27 = *MEMORY[0x277CCCB68];
    v25 = *MEMORY[0x277CCCCD8];
    v6 = v1;
    while (1)
    {
      if (v26)
      {
        v8 = MEMORY[0x20F30C990](v4, v1);
      }

      else
      {
        v8 = *(v1 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = [v8 quantityType];
      v11 = MEMORY[0x20F30C0E0](v27);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        [v9 _creationTimestamp];
        v14 = v13;
        if (v5)
        {
          [v5 _creationTimestamp];
          if (v15 < v14)
          {

LABEL_16:
            v5 = v9;
LABEL_6:
            v1 = v6;
            v7 = v2;
            goto LABEL_7;
          }
        }

        else if (v13 > 0.0)
        {
          goto LABEL_16;
        }
      }

      v16 = [v9 quantityType];
      v17 = MEMORY[0x20F30C0E0](v25);
      v18 = static NSObject.== infix(_:_:)();

      if ((v18 & 1) == 0)
      {

        goto LABEL_6;
      }

      [v9 _creationTimestamp];
      v20 = v19;
      v1 = v6;
      if (v24)
      {
        [v24 _creationTimestamp];
        v7 = v2;
        if (v21 >= v20)
        {

          goto LABEL_7;
        }
      }

      else
      {
        v7 = v2;
        if (v19 <= 0.0)
        {

          v24 = 0;
          goto LABEL_7;
        }
      }

      v24 = v9;
LABEL_7:
      if (v7 == ++v4)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
  return result;
}

id specialized static EffortUtilities.sampleCollectionForRelationships(_:activity:)(unint64_t a1, char *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v56);
  v55 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v58 = &v45 - v16;
  v67 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v57 = v13;
    v18 = 0;
    v63 = a1 & 0xC000000000000001;
    v51 = a1 & 0xFFFFFFFFFFFFFF8;
    v49 = v10;
    v50 = a1 + 32;
    v53 = (v5 + 56);
    v13 = v5 + 48;
    v46 = (v5 + 32);
    v48 = (v5 + 8);
    v10 = MEMORY[0x277D84F90];
    v59 = a2;
    v60 = i;
    v61 = a1;
    v54 = v4;
    v52 = (v5 + 48);
    while (1)
    {
      if (v63)
      {
        v20 = MEMORY[0x20F30C990](v18, a1, v15);
      }

      else
      {
        if (v18 >= *(v51 + 16))
        {
          goto LABEL_51;
        }

        v20 = *(v50 + 8 * v18);
      }

      v19 = v20;
      if (__OFADD__(v18++, 1))
      {
        break;
      }

      v22 = [v20 samples];
      if (!v22)
      {
        goto LABEL_8;
      }

      v23 = v22;
      v65 = v19;
      type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKSample, 0x277CCD8A8);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = v10;
      if (v13 >> 62)
      {
        v5 = __CocoaSet.count.getter();
        if (!v5)
        {
LABEL_32:
          v64 = v10;
          goto LABEL_33;
        }
      }

      else
      {
        v5 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          goto LABEL_32;
        }
      }

      a2 = 0;
      v64 = v10;
      do
      {
        v10 = a2;
        while (1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x20F30C990](v10, v13);
          }

          else
          {
            if (v10 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v24 = *(v13 + 8 * v10 + 32);
          }

          a1 = v24;
          a2 = (v10 + 1);
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (v25)
          {
            break;
          }

          ++v10;
          if (a2 == v5)
          {
            goto LABEL_33;
          }
        }

        v4 = v25;
        MEMORY[0x20F30BCF0]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          a1 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v64 = v66;
      }

      while (a2 != v5);
LABEL_33:

      a2 = v59;
      if (!v59)
      {
        v5 = v65;
        v32 = [v65 activity];
        i = v60;
        a1 = v61;
        if (v32)
        {
          v19 = v32;
        }

        else
        {
          specialized Array.append<A>(contentsOf:)(v64);
          v19 = v5;
        }

        v10 = MEMORY[0x277D84F90];
        goto LABEL_8;
      }

      v26 = v59;
      v27 = [v65 activity];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 UUID];

        v30 = v58;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = 0;
      }

      else
      {
        v31 = 1;
        v30 = v58;
      }

      v33 = v54;
      v34 = *v53;
      (*v53)(v30, v31, 1, v54);
      v62 = v26;
      v35 = [v26 UUID];
      v36 = v57;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v34(v36, 0, 1, v33);
      v4 = v55;
      v5 = *(v56 + 48);
      _s10Foundation4UUIDVSgWOcTm_1(v30, v55, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      _s10Foundation4UUIDVSgWOcTm_1(v36, v4 + v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      a2 = v52;
      v37 = *v52;
      if ((*v52)(v4, 1, v33) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        _s10Foundation4UUIDVSgWOhTm_0(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v38 = v37(v4 + v5, 1, v33);
        v10 = MEMORY[0x277D84F90];
        if (v38 == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          i = v60;
          a1 = v61;
          v13 = v65;
          v19 = v62;
LABEL_44:
          specialized Array.append<A>(contentsOf:)(v64);
          v10 = MEMORY[0x277D84F90];
          goto LABEL_7;
        }

        goto LABEL_5;
      }

      v39 = v49;
      _s10Foundation4UUIDVSgWOcTm_1(v4, v49, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v37(v4 + v5, 1, v33) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v57, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        _s10Foundation4UUIDVSgWOhTm_0(v58, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        (*v48)(v39, v33);
        v10 = MEMORY[0x277D84F90];
LABEL_5:
        _s10Foundation4UUIDVSgWOhTm_0(v4, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
        i = v60;
        a1 = v61;
        v13 = v65;
        v19 = v62;
        goto LABEL_6;
      }

      v40 = v47;
      (*v46)(v47, v4 + v5, v33);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v5 = dispatch thunk of static Equatable.== infix(_:_:)();
      a2 = v48;
      v41 = *v48;
      (*v48)(v40, v33);
      _s10Foundation4UUIDVSgWOhTm_0(v57, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      _s10Foundation4UUIDVSgWOhTm_0(v58, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v41(v39, v33);
      _s10Foundation4UUIDVSgWOhTm_0(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v10 = MEMORY[0x277D84F90];
      i = v60;
      a1 = v61;
      v13 = v65;
      v19 = v62;
      if (v5)
      {
        goto LABEL_44;
      }

LABEL_6:

LABEL_7:

LABEL_8:
      if (v18 == i)
      {
        v42 = v67;
        goto LABEL_54;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v42 = MEMORY[0x277D84F90];
LABEL_54:
  v43 = specialized static EffortUtilities.effortSampleCollection(for:)(v42);

  return v43;
}

unint64_t lazy protocol witness table accessor for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey()
{
  result = lazy protocol witness table cache variable for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey;
  if (!lazy protocol witness table cache variable for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey;
  if (!lazy protocol witness table cache variable for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F30BF10](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9WorkoutUI13ArtworkBridgeC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for ArtworkBridge(0);
    v5 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ArtworkBridge and conformance NSObject, type metadata accessor for ArtworkBridge, MEMORY[0x277D85378]);
    result = MEMORY[0x20F30BF10](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F30C990](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9, type metadata accessor for ArtworkBridge, &_ss11_SetStorageCy9WorkoutUI13ArtworkBridgeCGMd, &_ss11_SetStorageCy9WorkoutUI13ArtworkBridgeCGMR, type metadata accessor for ArtworkBridge);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9WorkoutUI17MediaMomentBridgeC_SayAFGTt0g5Tf4g_n(unint64_t a1, __n128 a2)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v5 = type metadata accessor for MediaMomentBridge(0);
    v6 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MediaMomentBridge and conformance NSObject, type metadata accessor for MediaMomentBridge, MEMORY[0x277D85378]);
    result = MEMORY[0x20F30BF10](i, v5, v6);
    v13 = result;
    if (j)
    {
      break;
    }

    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F30C990](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * j + 32);
      }

      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v12, v10, type metadata accessor for MediaMomentBridge, &_ss11_SetStorageCy9WorkoutUI17MediaMomentBridgeCGMd, &_ss11_SetStorageCy9WorkoutUI17MediaMomentBridgeCGMR, type metadata accessor for MediaMomentBridge);

      if (v11 == v8)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v9 = result;
  v8 = __CocoaSet.count.getter();
  result = v9;
  if (v8)
  {
    goto LABEL_7;
  }

  return result;
}

void specialized static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:completion:)(void *a1, void *a2, void *a3, void *a4, void (*a5)(void, void), uint64_t a6)
{
  v63 = a4;
  v11 = type metadata accessor for Notification();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x28223BE20](v11);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v67 = *(v13 - 8);
  v68 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
  }

  else
  {
    v60 = a3;
    v61 = a5;
    v62 = a6;
    static WOLog.trainingLoad.getter();
    v21 = a2;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v58 = v24;
      v59 = swift_slowAlloc();
      *&aBlock = v59;
      *v24 = 136446210;
      v25 = [v21 UUID];
      v57 = v22;
      v26 = v25;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v27 = v68;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v67 + 8))(v15, v27);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &aBlock);

      v32 = v58;
      *(v58 + 1) = v31;
      v33 = v23;
      v34 = v57;
      v35 = v32;
      _os_log_impl(&dword_20C66F000, v57, v33, "Storing sentinel for skip for workout %{public}s", v32, 0xCu);
      v36 = v59;
      v37 = __swift_destroy_boxed_opaque_existential_0Tm_2(v59);
      MEMORY[0x20F30E080](v36, -1, -1, v37);
      MEMORY[0x20F30E080](v35, -1, -1);
    }

    else
    {
    }

    (*(v17 + 8))(v19, v16);
    v38 = [objc_opt_self() appleEffortScoreUnit];
    v39 = [objc_opt_self() quantityWithUnit:v38 doubleValue:0.0];

    v20 = v39;
    a5 = v61;
    a6 = v62;
    a3 = v60;
  }

  v40 = a1;
  v41 = specialized static DemoUtilities.effortValue(for:)(a2);
  if (v41)
  {

    if (one-time initialization token for demoOverrideEffortValues != -1)
    {
      swift_once();
    }

    v42 = [a2 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v43 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = static EffortUtilities.demoOverrideEffortValues;
    static EffortUtilities.demoOverrideEffortValues = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v15, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo10HKQuantityCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo10HKQuantityCGMR);
    (*(v67 + 8))(v15, v68);
    static EffortUtilities.demoOverrideEffortValues = v69;
    swift_endAccess();
    if (a5)
    {
      a5(1, 0);
    }

    v45 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for didUpdateDemoOverrideEffortValues != -1)
    {
      swift_once();
    }

    aBlock = 0u;
    v71 = 0u;
    v46 = static EffortUtilities.didUpdateDemoOverrideEffortValues;
    v47 = v64;
    Notification.init(name:object:userInfo:)();
    isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v65 + 8))(v47, v66);
    [v45 postNotification_];
  }

  else
  {
    v43 = specialized static EffortUtilities.createRatingSample(quantity:workout:workoutActivity:)(v20, a2, a3);
    v49 = swift_allocObject();
    v49[2] = v20;
    v49[3] = a2;
    v49[4] = a3;
    v49[5] = a5;
    v49[6] = a6;
    v72 = partial apply for closure #1 in static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:completion:);
    v73 = v49;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v71 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    *(&v71 + 1) = &block_descriptor_61;
    v50 = _Block_copy(&aBlock);
    v51 = a3;
    v52 = v50;
    v53 = v51;
    v54 = a2;
    v55 = v20;
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(a5, a6);

    [v63 relateWorkoutEffortSample:v43 withWorkout:v54 activity:v53 completion:v52];

    _Block_release(v52);
  }
}

id specialized static EffortUtilities.fetchDemoExertion(forWorkout:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v41[-v7];
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = [a1 metadata];
  if (!v14)
  {
    return 0;
  }

  v47 = v3;
  v15 = v14;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001FLL, 0x800000020CB958C0), (v18 & 1) == 0))
  {

    return 0;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v17, v49);

  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v46 = v48;
  static WOLog.trainingLoad.getter();
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v45 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v43 = v20;
    v24 = v23;
    v44 = swift_slowAlloc();
    v49[0] = v44;
    *v24 = 136315138;
    v25 = [v19 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v42 = v21;
    v29 = v47;
    (*(v47 + 8))(v8, v2);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v49);

    *(v24 + 4) = v30;
    v31 = v43;
    _os_log_impl(&dword_20C66F000, v43, v42, "Demo Data overriding effort value for workout %s", v24, 0xCu);
    v32 = v44;
    v33 = __swift_destroy_boxed_opaque_existential_0Tm_2(v44);
    MEMORY[0x20F30E080](v32, -1, -1, v33);
    MEMORY[0x20F30E080](v24, -1, -1);

    (*(v10 + 8))(v13, v9);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    v29 = v47;
  }

  if (one-time initialization token for demoOverrideEffortValues != -1)
  {
    swift_once();
  }

  v35 = [v45 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v36 = static EffortUtilities.demoOverrideEffortValues;
  if (*(static EffortUtilities.demoOverrideEffortValues + 2) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v38 & 1) != 0))
  {
    v39 = *(v36[7] + 8 * v37);
    swift_endAccess();
    v40 = v39;

    (*(v29 + 8))(v5, v2);
    return v40;
  }

  else
  {
    swift_endAccess();
    (*(v29 + 8))(v5, v2);
    return v46;
  }
}

double block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:completion:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  _Block_copy(a5);
  v15 = specialized static EffortUtilities.fetchDemoExertion(forWorkout:)(a1);
  if (v15)
  {
    v16 = a5[2];
    v34 = v15;
    v16(a5);

    v17 = v34;
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned HKQuantity?) -> ();
    *(v18 + 24) = v14;

    if ([a1 workoutActivityType] != 82 || a2)
    {
      v34 = a3;
      v19 = [a1 fiui_finalWorkoutUUID];
      if (v19)
      {
        v20 = v19;
        v21 = objc_opt_self();
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v11 + 8))(v13, v10);
        v23 = [v21 predicateForObjectWithUUID_];

        v24 = swift_allocObject();
        v25 = v33;
        v26 = v34;
        v24[2] = v34;
        v24[3] = closure #1 in static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:completion:)partial apply;
        v24[4] = v18;
        v24[5] = a1;
        v24[6] = v25;
        v24[7] = a2;
        v27 = objc_allocWithZone(MEMORY[0x277CCDC60]);
        aBlock[4] = closure #1 in static EffortUtilities.fetchExertionCollection(forWorkout:activity:healthStore:completion:)partial apply;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutEffortRelationshipQuery, @guaranteed [HKWorkoutEffortRelationship]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_51_0;
        v28 = _Block_copy(aBlock);
        v29 = a2;
        v30 = v26;

        v31 = a1;
        v32 = [v27 initWithPredicate:v23 anchor:0 options:0 resultsHandler:v28];
        _Block_release(v28);

        [v30 executeQuery_];
      }

      else
      {
        _Block_release(a5);
        __break(1u);
      }
    }

    else
    {
      (a5[2])(a5, 0);
    }
  }
}

void specialized static EffortUtilities.fetchExertionCollection(forWorkout:activity:healthStore:completion:)(void *a1, void *a2, void *a3, uint64_t a4, void (**a5)(void, void))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  _Block_copy(a5);
  if ([a1 workoutActivityType] == 82 && a2 == 0)
  {
    a5[2](a5, 0);
  }

  else
  {
    v29 = a4;
    v16 = [a1 fiui_finalWorkoutUUID];
    if (v16)
    {
      v17 = v16;
      v18 = objc_opt_self();
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v11 + 8))(v13, v10);
      v20 = [v18 predicateForObjectWithUUID_];

      v21 = swift_allocObject();
      v21[2] = a3;
      v21[3] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned EffortSampleCollection?) -> ();
      v21[4] = v14;
      v21[5] = a1;
      v21[6] = v29;
      v21[7] = a2;
      v22 = objc_allocWithZone(MEMORY[0x277CCDC60]);
      aBlock[4] = closure #1 in static EffortUtilities.fetchExertionCollection(forWorkout:activity:healthStore:completion:)partial apply;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutEffortRelationshipQuery, @guaranteed [HKWorkoutEffortRelationship]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_37;
      v23 = _Block_copy(aBlock);
      v24 = a2;
      v25 = a3;

      v26 = a1;
      v27 = [v22 initWithPredicate:v20 anchor:0 options:0 resultsHandler:v23];
      _Block_release(v23);

      [v25 executeQuery_];
    }

    else
    {
      _Block_release(a5);
      __break(1u);
    }
  }
}

uint64_t specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for Logger();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for HKWorkoutEffortRelationshipQueryDescriptor.Result();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  Descriptor = type metadata accessor for HKWorkoutEffortRelationshipQueryDescriptor();
  v3[17] = Descriptor;
  v3[18] = *(Descriptor - 8);
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:), 0, 0);
}

uint64_t specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:)()
{
  v1 = *(v0 + 56);
  if ([*(v0 + 48) workoutActivityType] == 82 && v1 == 0)
  {
    static WOLog.trainingLoad.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 96);
    v19 = *(v0 + 72);
    v20 = *(v0 + 80);
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20C66F000, v15, v16, "fetchEffortForWorkout was called with a multisport workout", v21, 2u);
      MEMORY[0x20F30E080](v21, -1, -1);
    }

    (*(v20 + 8))(v18, v19);
    v3 = 0;
  }

  else
  {
    v3 = specialized static EffortUtilities.fetchDemoExertion(forWorkout:)(*(v0 + 48));
    if (!v3)
    {
      v4 = [*(v0 + 48) fiui_finalWorkoutUUID];
      if (v4)
      {
        v6 = v4;
        v8 = *(v0 + 168);
        v7 = *(v0 + 176);
        v9 = *(v0 + 160);
        v10 = objc_opt_self();
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v8 + 8))(v7, v9);
        v12 = [v10 predicateForObjectWithUUID_];
        *(v0 + 184) = v12;

        v13 = v12;
        HKWorkoutEffortRelationshipQueryDescriptor.init(predicate:anchor:option:)();
        v14 = swift_task_alloc();
        *(v0 + 192) = v14;
        *v14 = v0;
        v14[1] = specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:);
        v4 = *(v0 + 128);
        v5 = *(v0 + 64);
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x282120520](v4, v5);
    }
  }

  v22 = *(v0 + 8);

  return v22(v3);
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:);
  }

  else
  {
    v2 = specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[7];
  v5 = HKWorkoutEffortRelationshipQueryDescriptor.Result.relationships.getter();
  (*(v2 + 8))(v1, v3);
  v6 = specialized static EffortUtilities.sampleCollectionForRelationships(_:activity:)(v5, v4);

  v7 = *&v6[OBJC_IVAR___WOEffortSampleCollection_effortSample];
  if (v7)
  {
    v8 = *&v6[OBJC_IVAR___WOEffortSampleCollection_effortSample];
LABEL_5:
    v10 = v7;
    v11 = [v8 quantity];

    goto LABEL_6;
  }

  v9 = *&v6[OBJC_IVAR___WOEffortSampleCollection_estimatedEffortSample];
  if (v9)
  {
    v8 = v9;
    v7 = 0;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:
  static WOLog.trainingLoad.getter();
  v12 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v12;
    *v16 = v11;
    v17 = v12;
    _os_log_impl(&dword_20C66F000, v13, v14, "Successfully Fetched Efforts quantity for workouts %{public}@", v15, 0xCu);
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v16, -1, -1);
    MEMORY[0x20F30E080](v15, -1, -1);
  }

  v18 = v0[23];
  v20 = v0[18];
  v19 = v0[19];
  v21 = v0[17];
  v22 = v0[13];
  v23 = v0[9];
  v24 = v0[10];

  (*(v24 + 8))(v22, v23);
  (*(v20 + 8))(v19, v21);

  v25 = v0[1];

  return v25(v11);
}

uint64_t specialized static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:)(uint64_t a1)
{
  v31 = v1;
  v2 = v1[25];
  static WOLog.trainingLoad.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[25];
    v7 = v1[18];
    v28 = v1[17];
    v29 = v1[19];
    v8 = v1[10];
    v26 = v1[23];
    v27 = v1[11];
    v25 = v1[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = Error.errorDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v30);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20C66F000, v4, v5, "Unable to fetch effort samples for workout: %{public}s", v9, 0xCu);
    v14 = __swift_destroy_boxed_opaque_existential_0Tm_2(v10);
    MEMORY[0x20F30E080](v10, -1, -1, v14);
    MEMORY[0x20F30E080](v9, -1, -1);

    (*(v8 + 8))(v27, v25);
    (*(v7 + 8))(v29, v28);
  }

  else
  {
    v15 = v1[25];
    v16 = v1[23];
    v18 = v1[18];
    v17 = v1[19];
    v19 = v1[17];
    v21 = v1[10];
    v20 = v1[11];
    v22 = v1[9];

    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
  }

  v23 = v1[1];

  return v23(0);
}

unint64_t lazy protocol witness table accessor for type HKWorkoutActivity and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type HKWorkoutActivity and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKWorkoutActivity and conformance NSObject)
  {
    type metadata accessor for HKWorkoutActivity(255, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HKWorkoutActivity and conformance NSObject);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EffortUtilities.WorkoutAndActivityKey(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for EffortUtilities.WorkoutAndActivityKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of Cancellable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of Cancellable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t objectdestroy_4Tm_0()
{

  return swift_deallocObject();
}

double outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

double __swift_destroy_boxed_opaque_existential_0Tm_2(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double outlined copy of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t _s10Foundation4UUIDVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for HKWorkoutActivity(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationRaceCompleteView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for WorkoutNotificationRaceCompleteView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WorkoutNotificationRaceCompleteView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMR);
  MEMORY[0x28223BE20](v32);
  v3 = &v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB00F22NotificationResultViewVyAA05EmptyI0VAA7ForEachVySnySiGSiAF0fg4UnitI0VGSgGAHyAA05TupleI0VyAO_AA08ModifiedD0VyAoA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGA0_tGSgAQG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB00F22NotificationResultViewVyAA05EmptyI0VAA7ForEachVySnySiGSiAF0fg4UnitI0VGSgGAHyAA05TupleI0VyAO_AA08ModifiedD0VyAoA30_EnvironmentKeyWritingModifierVyAF0fI5StyleOGGA0_tGSgAQG_GMR);
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMd, _s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMR);
  MEMORY[0x28223BE20](v30);
  v7 = &v28 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[3];
  v53 = v1[2];
  v54 = v13;
  v14 = *(v1 + 9);
  v55 = *(v1 + 8);
  v15 = v1[1];
  v51 = *v1;
  v52 = v15;
  v16 = *(v1 + 80);
  if ((v16 & 1) == 0)
  {
    v29 = v10;
    outlined copy of Environment<WorkoutViewStyle>.Content(v14, 0);
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v14, 0);
    (*(v9 + 8))(v12, v29);
    if (v41 != 11)
    {
      goto LABEL_3;
    }

LABEL_5:
    MetricPlatterConstants.init()(&v7[*(v30 + 56)]);
    v43 = v53;
    v44 = v54;
    v41 = v51;
    v42 = v52;
    *&v45 = v55;
    *(&v45 + 1) = v14;
    LOBYTE(v46) = v16;
    WorkoutNotificationRaceCompleteView.completionMessage.getter(v7);
    v23 = &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMd;
    v24 = _s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMR;
    outlined init with copy of WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>(v7, v31, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMd, _s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMd, _s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMR);
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMR);
    _ConditionalContent<>.init(storage:)();
    v25 = v7;
    return outlined destroy of WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>(v25, v23, v24);
  }

  if (v14 == 11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = v32;
  MetricPlatterConstants.init()(&v3[*(v32 + 56)]);
  v36 = v53;
  v37 = v54;
  v34 = v51;
  v35 = v52;
  v38 = v55;
  v39 = v14;
  v40 = v16;
  WorkoutNotificationRaceCompleteView.resultRow.getter(&v41);
  v18 = v46;
  *(v3 + 4) = v45;
  *(v3 + 5) = v18;
  v3[144] = v50;
  v19 = v49;
  *(v3 + 7) = v48;
  *(v3 + 8) = v19;
  *(v3 + 6) = v47;
  v20 = v44;
  *(v3 + 2) = v43;
  *(v3 + 3) = v20;
  v21 = v42;
  *v3 = v41;
  *(v3 + 1) = v21;
  v22 = *(v17 + 52);
  v36 = v53;
  v37 = v54;
  v34 = v51;
  v35 = v52;
  v38 = v55;
  v39 = v14;
  v40 = v16;
  WorkoutNotificationRaceCompleteView.completionMessage.getter(&v3[v22]);
  v23 = &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMd;
  v24 = &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMR;
  outlined init with copy of WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>(v3, v31, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMd, _s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMR);
  lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMR);
  _ConditionalContent<>.init(storage:)();
  v25 = v3;
  return outlined destroy of WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>(v25, v23, v24);
}

uint64_t WorkoutNotificationRaceCompleteView.completionMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSi07WorkoutB00E20NotificationUnitViewVGMd, &_s7SwiftUI7ForEachVySnySiGSi07WorkoutB00E20NotificationUnitViewVGMR);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-v5 - 8];
  v7 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v19[3] = v7;
  v19[4] = *(v1 + 64);
  v20 = *(v1 + 80);
  v8 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v8;
  if (*&v19[0] >> 62)
  {
    v15 = v4;
    v9 = __CocoaSet.count.getter();
    v4 = v15;
    if (v9 >= 4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((*&v19[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= 4)
    {
LABEL_3:
      v17 = 3;
      v18 = v9;
      v15 = v4;
      swift_getKeyPath();
      v10 = swift_allocObject();
      v11 = *(v1 + 48);
      *(v10 + 48) = *(v1 + 32);
      *(v10 + 64) = v11;
      *(v10 + 80) = *(v1 + 64);
      *(v10 + 96) = *(v1 + 80);
      v12 = *(v1 + 16);
      *(v10 + 16) = *v1;
      *(v10 + 32) = v12;
      outlined init with copy of WorkoutNotificationRaceCompleteView(v19, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
      lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
      lazy protocol witness table accessor for type WorkoutNotificationUnitView and conformance WorkoutNotificationUnitView();
      ForEach<>.init(_:id:content:)();
      (*(v15 + 32))(a1, v6, v3);
      return (*(v15 + 56))(a1, 0, 1, v3);
    }
  }

  v14 = *(v4 + 56);

  return v14(a1, 1, 1, v3);
}

void WorkoutNotificationRaceCompleteView.resultRow.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (!(*v1 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3)
    {
      goto LABEL_3;
    }

LABEL_13:
    _s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AA15ModifiedContentVyAfA30_EnvironmentKeyWritingModifierVyAD0eD5StyleOGGANtGSgWOi0_(&v33);
    goto LABEL_14;
  }

  if (__CocoaSet.count.getter() < 3)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F30C990](0, v3);
    KeyPath = swift_getKeyPath();
    v24 = v4;
    v8 = MEMORY[0x20F30C990](1, v3);
    goto LABEL_7;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(v3 + 32);

  v6 = swift_getKeyPath();
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  KeyPath = v6;
  v8 = *(v3 + 40);
  v9 = v4;

LABEL_7:
  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = v4;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x20F30C990](2, v3);
LABEL_11:
    v14 = swift_getKeyPath();
    v15 = swift_getKeyPath();
    v16 = v12;

    v17 = v16;
    outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);

    v18 = v17;
    outlined copy of Environment<WorkoutViewStyle>.Content(v10, 0);

    v19 = v18;
    outlined copy of Environment<WorkoutViewStyle>.Content(v14, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(v14, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(v10, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
    *&v25 = v5;
    *(&v25 + 1) = v19;
    *&v26 = 0;
    *(&v26 + 1) = KeyPath;
    LOBYTE(v27) = 0;
    *(&v27 + 1) = v8;
    *&v28 = v10;
    BYTE8(v28) = 0;
    *&v29 = v11;
    BYTE8(v29) = 2;
    *&v30 = v13;
    *(&v30 + 1) = v19;
    *&v31 = 0;
    *(&v31 + 1) = v14;
    LOBYTE(v32) = 0;
    *(&v32 + 1) = v15;
    _s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AA15ModifiedContentVyAfA30_EnvironmentKeyWritingModifierVyAD0eD5StyleOGGANtGSgWOi_();
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v42 = 2;
    v35 = v27;
    v36 = v19;
    v37 = v28;
    v38 = v29;
    v33 = v25;
    v34 = v26;
LABEL_14:
    v20 = v40;
    *(a1 + 96) = v39;
    *(a1 + 112) = v20;
    *(a1 + 128) = v41;
    *(a1 + 144) = v42;
    v21 = v36;
    *(a1 + 32) = v35;
    *(a1 + 48) = v21;
    v22 = v38;
    *(a1 + 64) = v37;
    *(a1 + 80) = v22;
    v23 = v34;
    *a1 = v33;
    *(a1 + 16) = v23;
    return;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v13 = *(v3 + 48);

    goto LABEL_11;
  }

LABEL_18:
  __break(1u);
}

unint64_t closure #1 in WorkoutNotificationRaceCompleteView.completionMessage.getter@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v6 = *a2;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x20F30C990](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(v6 + 8 * result + 32);

LABEL_5:
  v9 = a2[1];
  KeyPath = swift_getKeyPath();
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = KeyPath;
  *(a3 + 32) = 0;

  return v9;
}

uint64_t lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double _s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AA15ModifiedContentVyAfA30_EnvironmentKeyWritingModifierVyAD0eD5StyleOGGANtGSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E22NotificationResultViewVyAA05EmptyH0VAA7ForEachVySnySiGSiAD0ef4UnitH0VGSgGAFyAA05TupleH0VyAM_AA08ModifiedD0VyAmA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGAZtGSgAOGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E22NotificationResultViewVyAA05EmptyH0VAA7ForEachVySnySiGSiAD0ef4UnitH0VGSgGAFyAA05TupleH0VyAM_AA08ModifiedD0VyAmA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGAZtGSgAOGGMR);
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMd, _s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD7ForEachVySnySiGSiAA0ac4UnitE0VGSgGMR);
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AD15ModifiedContentVyAhD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGGAPtGSgAD7ForEachVySnySiGSiAHGSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, ModifiedContent<WorkoutNotificationUnitView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>?, ForEach<Range<Int>, Int, WorkoutNotificationUnitView>?>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t specialized static _HKWorkoutGoalType.< infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 < 4 && a2 < 4)
  {
    return qword_20CB7D1D0[a1] < qword_20CB7D1D0[a2];
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _HKWorkoutGoalType and conformance _HKWorkoutGoalType()
{
  result = lazy protocol witness table cache variable for type _HKWorkoutGoalType and conformance _HKWorkoutGoalType;
  if (!lazy protocol witness table cache variable for type _HKWorkoutGoalType and conformance _HKWorkoutGoalType)
  {
    type metadata accessor for _HKWorkoutGoalType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _HKWorkoutGoalType and conformance _HKWorkoutGoalType);
  }

  return result;
}

uint64_t (*SessionControlsCanonical.closure(for:)(uint64_t a1))()
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  outlined copy of SessionControl(v1, v2, v3, v4);
  return partial apply for closure #1 in SessionControlsCanonical.closure(for:);
}

uint64_t closure #1 in SessionControlsCanonical.closure(for:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.app.getter();
  outlined copy of SessionControl(a1, a2, a3, a4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  outlined consume of SessionControl(a1, a2, a3, a4);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21[0] = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v21[1] = a1;
    v21[2] = a2;
    v21[3] = a3;
    v22 = a4;
    outlined copy of SessionControl(a1, a2, a3, a4);
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_20C66F000, v12, v13, "Executing sessionControl=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F30E080](v16, -1, -1);
    MEMORY[0x20F30E080](v15, -1, -1);

    return (*(v9 + 8))(v11, v21[0]);
  }

  else
  {

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t (*protocol witness for SessionControls.closure(for:) in conformance SessionControlsCanonical(uint64_t a1))()
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  outlined copy of SessionControl(v1, v2, v3, v4);
  return closure #1 in SessionControlsCanonical.closure(for:)partial apply;
}

uint64_t objectdestroyTm_60()
{
  outlined consume of SessionControl(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for UnitSettingsEnergyUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnitSettingsEnergyUnit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitSettingsEnergyUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitSettingsEnergyUnit(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

void protocol witness for Identifiable.id.getter in conformance UnitSettingsEnergyUnit(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000029;
  v3 = "ERGY_UNITS_KILOJOULES_LABEL";
  v4 = 0xD00000000000002DLL;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000002BLL;
    v3 = "SessionControlsCanonical";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "ERGY_UNITS_KILOCALORIES_LABEL";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type [UnitSettingsEnergyUnit] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UnitSettingsEnergyUnit] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UnitSettingsEnergyUnit] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI018UnitSettingsEnergyC0OGMd, &_sSay9WorkoutUI018UnitSettingsEnergyC0OGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UnitSettingsEnergyUnit] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnitSettingsEnergyUnit and conformance UnitSettingsEnergyUnit()
{
  result = lazy protocol witness table cache variable for type UnitSettingsEnergyUnit and conformance UnitSettingsEnergyUnit;
  if (!lazy protocol witness table cache variable for type UnitSettingsEnergyUnit and conformance UnitSettingsEnergyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitSettingsEnergyUnit and conformance UnitSettingsEnergyUnit);
  }

  return result;
}

uint64_t specialized static UnitSettingsEnergyUnit.makeFromHKUnit(_:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 largeCalorieUnit];
  type metadata accessor for HKUnit();
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    return 0;
  }

  v6 = [v2 kilocalorieUnit];
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    return 1;
  }

  v8 = [v2 jouleUnitWithMetricPrefix_];
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    v10 = static os_log_type_t.error.getter();
    v11 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], v10))
    {
      v12 = v11;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = a1;
      *v14 = a1;
      v15 = a1;
      _os_log_impl(&dword_20C66F000, v12, v10, "Unexpected energy units %@. Setting energy units to kilojoules", v13, 0xCu);
      outlined destroy of NSObject?(v14);
      MEMORY[0x20F30E080](v14, -1, -1);
      MEMORY[0x20F30E080](v13, -1, -1);
    }
  }

  return 2;
}

uint64_t UnitsSettingsItemView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = type metadata accessor for AccessibilityTraits();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleM0VyAA014SelectionShapeS0VGGAA023AccessibilityAttachmentM0VGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleM0VyAA014SelectionShapeS0VGGAA023AccessibilityAttachmentM0VGSgtGGMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAMyAMyAMyAA5ImageVATyAA4FontVSgGGAA016_ForegroundStyleS0VyAA014SelectionShapeY0VGGAA0g10AttachmentS0VGSgtGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAMyAMyAMyAA5ImageVATyAA4FontVSgGGAA016_ForegroundStyleS0VyAA014SelectionShapeY0VGGAA0g10AttachmentS0VGSgtGG_Qo_MR);
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAKyAKyAKyAA5ImageVARyAA4FontVSgGGAA016_ForegroundStyleP0VyAA014SelectionShapeV0VGGAA023AccessibilityAttachmentP0VGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAKyAKyAKyAA5ImageVARyAA4FontVSgGGAA016_ForegroundStyleP0VyAA014SelectionShapeV0VGGAA023AccessibilityAttachmentP0VGSgtGGMR);
  closure #1 in UnitsSettingsItemView.body.getter(a1[2], a1[3], a1[4], &v10[*(v14 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v15 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleM0VyAA014SelectionShapeS0VGGAA023AccessibilityAttachmentM0VGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleM0VyAA014SelectionShapeS0VGGAA023AccessibilityAttachmentM0VGSgtGGMR, MEMORY[0x277CE1138]);
  v26 = v8;
  v24 = v15;
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v4);
  outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(v10, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleM0VyAA014SelectionShapeS0VGGAA023AccessibilityAttachmentM0VGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVAGyAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleM0VyAA014SelectionShapeS0VGGAA023AccessibilityAttachmentM0VGSgtGGMR);
  if (UnitsSettingsItemView.isSelected.getter(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI19AccessibilityTraitsVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI19AccessibilityTraitsVGMR);
    v16 = v29;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20CB5DA70;
    static AccessibilityTraits.isSelected.getter();
    v32 = v17;
    _s7SwiftUI19AccessibilityTraitsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI19AccessibilityTraitsVGMd, &_sSay7SwiftUI19AccessibilityTraitsVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [AccessibilityTraits] and conformance [A], &_sSay7SwiftUI19AccessibilityTraitsVGMd, &_sSay7SwiftUI19AccessibilityTraitsVGMR, MEMORY[0x277D83970]);
    v18 = v25;
    v19 = v31;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v16;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
    _s7SwiftUI19AccessibilityTraitsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI19AccessibilityTraitsVGMd, &_sSay7SwiftUI19AccessibilityTraitsVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [AccessibilityTraits] and conformance [A], &_sSay7SwiftUI19AccessibilityTraitsVGMd, &_sSay7SwiftUI19AccessibilityTraitsVGMR, MEMORY[0x277D83970]);
    v18 = v25;
    v19 = v31;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v29;
  }

  v32 = v26;
  v33 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  MEMORY[0x20F30A9C0](v18, v28, OpaqueTypeConformance2);
  (*(v20 + 8))(v18, v19);
  return (*(v27 + 8))(v13, v22);
}

uint64_t closure #1 in UnitsSettingsItemView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a1;
  v32 = a2;
  v33 = a4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGMR);
  MEMORY[0x28223BE20](v30);
  v6 = (&v30 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v30 - v21;
  v23 = type metadata accessor for UnitsSettingsItemView(0, v31, v32, a3);
  UnitsSettingsItemView.button.getter(v23, v22);
  v24 = UnitsSettingsItemView.isSelected.getter(v23);
  v25 = 1;
  if (v24)
  {
    UnitsSettingsItemView.checkmarkImageView.getter(v6);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>> and conformance <> ModifiedContent<A, B>();
    View.accessibilityHidden(_:)();
    outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(v6, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGMR);
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>(v10, v16);
    v25 = 0;
  }

  (*(v8 + 56))(v16, v25, 1, v7);
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v22, v19, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v16, v13, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMR);
  v26 = v33;
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v19, v33, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVACyACyACyAA5ImageVAJyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA014SelectionShapeP0VGGAA023AccessibilityAttachmentJ0VGSgtMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_AA6SpacerVACyACyACyAA5ImageVAJyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA014SelectionShapeP0VGGAA023AccessibilityAttachmentJ0VGSgtMR);
  v28 = v26 + *(v27 + 48);
  *v28 = 0;
  *(v28 + 8) = 1;
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v13, v26 + *(v27 + 64), &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(v16, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(v22, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(v13, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGSgMR);
  return outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(v19, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
}

uint64_t UnitsSettingsItemView.button.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  dispatch thunk of Identifiable.id.getter();
  v24 = LocalizedStringKey.init(stringLiteral:)();
  v10 = v9;
  v23 = v11;
  v13 = v12;
  (*(v4 + 16))(&v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a1);
  v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = *(a1 + 24);
  *(v15 + 2) = v7;
  *(v15 + 3) = v16;
  *(v15 + 4) = v8;
  (*(v4 + 32))(&v15[v14], &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  v17 = v25;
  v26 = v24;
  v27 = v10;
  v28 = v23 & 1;
  v29 = v13;
  Button.init(action:label:)();

  v18 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v21 = (v17 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v18;
  return result;
}

uint64_t UnitsSettingsItemView.isSelected.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Binding();
  MEMORY[0x20F30B100](v5);
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v2 + 8))(v4, v1);
  return v6 & 1;
}

uint64_t UnitsSettingsItemView.checkmarkImageView.getter@<X0>(uint64_t *a2@<X8>)
{
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v3 = Font.weight(_:)();

  v4 = Image.init(systemName:)();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGMR);
  result = SelectionShapeStyle.init()();
  *a2 = v4;
  a2[1] = KeyPath;
  a2[2] = v3;
  return result;
}

uint64_t closure #2 in UnitsSettingsItemView.button.getter@<X0>(uint64_t a5@<X8>)
{
  v6 = one-time initialization token for WorkoutUIBundle;

  if (v6 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = WorkoutUIBundle.super.isa;
  result = Text.init(_:tableName:bundle:comment:)();
  *a5 = result;
  *(a5 + 8) = v9;
  *(a5 + 16) = v10 & 1;
  *(a5 + 24) = v11;
  return result;
}

uint64_t UnitsSettingsItemView.init(item:dataProviderBinding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  v11 = *(type metadata accessor for UnitsSettingsItemView(0, a3, a4, a5) + 44);
  v12 = type metadata accessor for Binding();
  v13 = *(*(v12 - 8) + 32);

  return v13(a6 + v11, a2, v12);
}

uint64_t type metadata completion function for UnitsSettingsItemView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Binding();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnitsSettingsItemView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(v4 + 80);
  v9 = v8 | 7;
  v10 = (v8 | 7) + v6;
  v11 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v12 = ((v8 + 16) & ~v8) + v6 + (v10 & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 < 2)
    {
LABEL_26:
      if (v5 >= 0x7FFFFFFF)
      {
        return (*(v4 + 48))();
      }

      v18 = *((((a1 + v10) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_26;
  }

LABEL_15:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v7 + (v12 | v17) + 1;
}

char *storeEnumTagSinglePayload for UnitsSettingsItemView(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = *(v5 + 80);
  v10 = (v9 | 7) + v8;
  v11 = ((v9 + 16) & ~v9) + v8 + (v10 & ~(v9 | 7));
  v12 = a3 >= v7;
  v13 = a3 - v7;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v18 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v18))
      {
        v14 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v14 = v19;
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

  if (v7 < a2)
  {
    v15 = ~v7 + a2;
    if (v11 < 4)
    {
      v17 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v20 = v15 & ~(-1 << (8 * v11));
        v21 = result;
        bzero(result, v11);
        result = v21;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v21 = v20;
            if (v14 > 1)
            {
LABEL_47:
              if (v14 == 2)
              {
                *&result[v11] = v17;
              }

              else
              {
                *&result[v11] = v17;
              }

              return result;
            }
          }

          else
          {
            *v21 = v15;
            if (v14 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *v21 = v20;
        v21[2] = BYTE2(v20);
      }

      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v16 = result;
      bzero(result, v11);
      result = v16;
      *v16 = v15;
      v17 = 1;
      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v14)
    {
      result[v11] = v17;
    }

    return result;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v11] = 0;
  }

  else if (v14)
  {
    result[v11] = 0;
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
  if (v6 < 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *(((&result[v10] & ~(v9 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) = v23;
  }

  else
  {
    v22 = *(v5 + 56);

    return v22();
  }

  return result;
}