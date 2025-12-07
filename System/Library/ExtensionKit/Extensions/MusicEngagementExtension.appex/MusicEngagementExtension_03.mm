uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
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

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
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
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  return outlined init with take of Any(a1, v17);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
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
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
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
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin();
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
      specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
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
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIView, UIView_ptr);
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
    __swift_destroy_boxed_opaque_existential_0Tm(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

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
      _sSo21NSAttributedStringKeyaMa_1(0);
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
    __swift_destroy_boxed_opaque_existential_0Tm(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
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
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8) + 72) * v14;

  return outlined assign with take of PushNotificationObserver.RegisteredHandler(a1, v22);
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
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
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd, &_sScS12ContinuationVySaySfG_GMR);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
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
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
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
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
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
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for MPCPlayerRequestTracklistRange(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerPath, MPCPlayerPath_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

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

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  result = outlined init with take of PushNotificationObserver.RegisteredHandler(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd, &_sScS12ContinuationVySaySfG_GMR);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MusicCore8MenuTypeOAC06ActionE0CGMd, &_ss18_DictionaryStorageCy9MusicCore8MenuTypeOAC06ActionE0CGMR);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryOs5Int64VGMd, &_ss18_DictionaryStorageCy9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryOs5Int64VGMR);
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

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySSypGGMd, &_ss18_DictionaryStorageCySSSDySSypGGMR);
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

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd_0, &_ss18_DictionaryStorageCySSypGMR_0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo30MPCPlayerRequestTracklistRangeaSiADSH9MusicCoreyHCg_GMd, &_ss18_DictionaryStorageCySo30MPCPlayerRequestTracklistRangeaSiADSH9MusicCoreyHCg_GMR);
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
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
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

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo13MPCPlayerPathCSo24OS_dispatch_source_timer_pGMd, &_ss18_DictionaryStorageCySo13MPCPlayerPathCSo24OS_dispatch_source_timer_pGMR);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin();
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo22UIViewPropertyAnimatorCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo22UIViewPropertyAnimatorCGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

  return result;
}

{
  v1 = v0;
  v35 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v34 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UUID();
  v36 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MusicCore24PushNotificationObserverC17RegisteredHandlerVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MusicCore24PushNotificationObserverC17RegisteredHandlerVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v30 = v36 + 32;
    v31 = v36 + 16;
    v16 = v32;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v36;
        v22 = *(v36 + 72) * v20;
        v23 = v33;
        (*(v36 + 16))(v16, *(v4 + 48) + v22, v33);
        v24 = v34;
        v25 = *(v35 + 72) * v20;
        outlined init with copy of PushNotificationObserver.RegisteredHandler(*(v4 + 56) + v25, v34);
        v26 = v37;
        (*(v21 + 32))(*(v37 + 48) + v22, v16, v23);
        result = outlined init with take of PushNotificationObserver.RegisteredHandler(v24, *(v26 + 56) + v25);
        v14 = v38;
      }

      while (v38);
    }

    v18 = v10;
    v6 = v37;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v28;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
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

  return result;
}

{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd, &_sScS12ContinuationVySaySfG_GMR);
  v44 = *(v41 - 8);
  __chkstk_darwin();
  v40 = &v30 - v2;
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVScS12ContinuationVySaySfG_GGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVScS12ContinuationVySaySfG_GGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
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
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
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

  return result;
}

{
  v1 = v0;
  v35 = type metadata accessor for SocialProfile();
  v37 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS16MusicKitInternal13SocialProfileVGMd, &_ss18_DictionaryStorageCySS16MusicKitInternal13SocialProfileVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo6UIViewCypGMd, &_ss18_DictionaryStorageCySo6UIViewCypGMR);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MusicCore14PlaylistCoversO10ExpressionOAE5CoverV14RepresentationVGMd, &_ss18_DictionaryStorageCy9MusicCore14PlaylistCoversO10ExpressionOAE5CoverV14RepresentationVGMR);
  v29 = v0;
  v1 = *v0;
  v30 = static _DictionaryStorage.copy(original:)();
  if (*(v1 + 16))
  {
    result = (v30 + 64);
    v3 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v30 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = *(v1 + 56) + 56 * v14;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v20 = *(v15 + 32);
        v21 = *(v15 + 40);
        v22 = *(v15 + 48);
        *(*(v30 + 48) + v14) = *(*(v1 + 48) + v14);
        v23 = *(v30 + 56) + 56 * v14;
        *v23 = v16;
        *(v23 + 8) = v17;
        *(v23 + 16) = v18;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 48) = v22;
        v24 = v17;
        v25 = v18;
        v26 = v19;
        v27 = v20;
        v28 = v21;
        result = v22;
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v3;
  v5 = *(*v3 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = __OFSUB__(1, v6);
  v8 = 1 - v6;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 + v8;
  if (__OFADD__(v5, v8))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v4 + 3) >> 1)
  {
    if (v5 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v3 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
  *v3 = v4;
  return result;
}

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

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v17[0] = (v2 + 32);
  v17[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if ((*v13 & (v11 ^ 1) & 1) == 0)
          {
            break;
          }

          v13[1] = *v13;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v15[0] = v7 + 4;
    v15[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v15, v16, v17, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v6 / 2;
      }

      v11[0] = v9 + 4;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t *sub_10003ABF8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 56 * a3);
    v8 = v6;
    result = v5;
    while (1)
    {
      v9 = &unk_1004F7470 + 8 * v7;
      if (v7 < 0)
      {
        v9 = &unk_1004F7610 + 8 * *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      }

      v10 = result + 7;
      v11 = *result;
      if (*result < 0)
      {
        v12 = &unk_1004F7610 + 8 * *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      }

      else
      {
        v12 = &unk_1004F7470 + 8 * v11;
      }

      if (*v9 >= *v12)
      {
LABEL_4:
        ++a3;
        v5 += 56;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = *(result + 4);
      v14 = *(result + 5);
      v15 = *(result + 6);
      v16 = *(result + 1);
      *v10 = *result;
      *(result + 9) = v16;
      *(result + 11) = *(result + 2);
      v17 = result[6];
      *result = v7;
      *(result + 1) = v13;
      *(result + 3) = v14;
      *(result + 5) = v15;
      result -= 7;
      v10[6] = v17;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10003ACE0(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_105:
    v5 = *v107;
    if (!*v107)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v102 = *(v10 + 2);
      if (v102 >= 2)
      {
        while (*a3)
        {
          v103 = *&v10[16 * v102];
          v104 = *&v10[16 * v102 + 24];
          sub_10003B3B4((*a3 + 56 * v103), (*a3 + 56 * *&v10[16 * v102 + 16]), *a3 + 56 * v104, v5);
          if (v6)
          {
          }

          if (v104 < v103)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v102 - 2 >= *(v10 + 2))
          {
            goto LABEL_131;
          }

          v105 = &v10[16 * v102];
          *v105 = v103;
          *(v105 + 1) = v104;
          result = specialized Array.remove(at:)(v102 - 1);
          v102 = *(v10 + 2);
          if (v102 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    v10 = result;
    goto LABEL_107;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_4:
  v11 = v9++;
  if (v9 >= v7)
  {
    goto LABEL_32;
  }

  v12 = *a3;
  v13 = *(*a3 + 56 * v9);
  if (v13 < 0)
  {
    v14 = &unk_1004F7610 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v14 = &unk_1004F7470 + 8 * v13;
  }

  v15 = *(v12 + 56 * v11);
  if (v15 < 0)
  {
    v16 = &unk_1004F7610 + 8 * *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v16 = &unk_1004F7470 + 8 * v15;
  }

  v17 = *v14;
  v18 = *v16;
  v19 = v11 + 2;
  if (v7 > v11 + 2)
  {
    v19 = v7;
  }

  v20 = v19 - v11 - 2;
  v21 = 56 * v11;
  v22 = (v12 + 56 * v11 + 112);
  while (v20)
  {
    v25 = *v22;
    if (*v22 < 0)
    {
      v26 = &unk_1004F7610 + 8 * *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      if ((v13 & 0x8000000000000000) == 0)
      {
LABEL_21:
        v23 = &unk_1004F7470 + 8 * v13;
        goto LABEL_15;
      }
    }

    else
    {
      v26 = &unk_1004F7470 + 8 * v25;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    v23 = &unk_1004F7610 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_15:
    v24 = (v17 < v18) ^ (*v26 >= *v23);
    --v20;
    v22 += 7;
    ++v9;
    v13 = v25;
    if ((v24 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v9 = v19;
LABEL_23:
  if (v17 < v18)
  {
    if (v9 < v11)
    {
      goto LABEL_134;
    }

    if (v11 < v9)
    {
      v27 = 56 * v9;
      v28 = v9;
      v29 = v11;
      do
      {
        if (v29 != --v28)
        {
          v39 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v30 = (v39 + v21);
          v31 = *(v39 + v21 + 48);
          v32 = v39 + v27;
          v33 = *v30;
          v34 = v30[1];
          v35 = v30[2];
          v36 = *(v32 - 40);
          v37 = *(v32 - 24);
          v38 = *(v32 - 56);
          *(v30 + 6) = *(v32 - 8);
          v30[1] = v36;
          v30[2] = v37;
          *v30 = v38;
          *(v32 - 56) = v33;
          *(v32 - 40) = v34;
          *(v32 - 24) = v35;
          *(v32 - 8) = v31;
        }

        ++v29;
        v27 -= 56;
        v21 += 56;
      }

      while (v29 < v28);
    }
  }

LABEL_32:
  v40 = a3[1];
  if (v9 >= v40)
  {
    goto LABEL_54;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_133;
  }

  if (v9 - v11 >= v8)
  {
    goto LABEL_54;
  }

  if (__OFADD__(v11, v8))
  {
    goto LABEL_135;
  }

  if (v11 + v8 < v40)
  {
    v40 = v11 + v8;
  }

  if (v40 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v9 == v40)
  {
    goto LABEL_54;
  }

  v41 = *a3;
  v42 = *a3 + 56 * v9 - 56;
  v43 = v11 - v9;
LABEL_42:
  v44 = *(v41 + 56 * v9);
  v45 = v43;
  v46 = v42;
  while (1)
  {
    v47 = &unk_1004F7470 + 8 * v44;
    if (v44 < 0)
    {
      v47 = &unk_1004F7610 + 8 * *((v44 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    }

    v49 = v46 + 56;
    v48 = *v46;
    if ((*v46 & 0x8000000000000000) != 0)
    {
      v50 = (&unk_1004F7610 + 8 * *((v48 & 0x7FFFFFFFFFFFFFFFLL) + 0x20));
    }

    else
    {
      v50 = (&unk_1004F7470 + 8 * v48);
    }

    result = *v50;
    if (*v47 >= result)
    {
LABEL_41:
      ++v9;
      v42 += 56;
      --v43;
      if (v9 == v40)
      {
        v9 = v40;
LABEL_54:
        if (v9 < v11)
        {
          goto LABEL_132;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
          v10 = result;
        }

        v5 = *(v10 + 2);
        v57 = *(v10 + 3);
        v58 = v5 + 1;
        if (v5 >= v57 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v5 + 1, 1, v10);
          v10 = result;
        }

        *(v10 + 2) = v58;
        v59 = &v10[16 * v5];
        *(v59 + 4) = v11;
        *(v59 + 5) = v9;
        v60 = *v107;
        if (!*v107)
        {
          goto LABEL_142;
        }

        if (!v5)
        {
LABEL_3:
          v7 = a3[1];
          v8 = a4;
          if (v9 >= v7)
          {
            goto LABEL_105;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v61 = v58 - 1;
          if (v58 >= 4)
          {
            break;
          }

          if (v58 == 3)
          {
            v62 = *(v10 + 4);
            v63 = *(v10 + 5);
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
LABEL_74:
            if (v65)
            {
              goto LABEL_121;
            }

            v78 = &v10[16 * v58];
            v80 = *v78;
            v79 = *(v78 + 1);
            v81 = __OFSUB__(v79, v80);
            v82 = v79 - v80;
            v83 = v81;
            if (v81)
            {
              goto LABEL_124;
            }

            v84 = &v10[16 * v61 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v72 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v72)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v82, v87))
            {
              goto LABEL_128;
            }

            if (v82 + v87 >= v64)
            {
              if (v64 < v87)
              {
                v61 = v58 - 2;
              }

              goto LABEL_95;
            }

            goto LABEL_88;
          }

          v88 = &v10[16 * v58];
          v90 = *v88;
          v89 = *(v88 + 1);
          v72 = __OFSUB__(v89, v90);
          v82 = v89 - v90;
          v83 = v72;
LABEL_88:
          if (v83)
          {
            goto LABEL_123;
          }

          v91 = &v10[16 * v61];
          v93 = *(v91 + 4);
          v92 = *(v91 + 5);
          v72 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v72)
          {
            goto LABEL_126;
          }

          if (v94 < v82)
          {
            goto LABEL_3;
          }

LABEL_95:
          v99 = v61 - 1;
          if (v61 - 1 >= v58)
          {
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

          if (!*a3)
          {
            goto LABEL_139;
          }

          v100 = *&v10[16 * v99 + 32];
          v5 = *&v10[16 * v61 + 40];
          sub_10003B3B4((*a3 + 56 * v100), (*a3 + 56 * *&v10[16 * v61 + 32]), *a3 + 56 * v5, v60);
          if (v6)
          {
          }

          if (v5 < v100)
          {
            goto LABEL_117;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v99 >= *(v10 + 2))
          {
            goto LABEL_118;
          }

          v101 = &v10[16 * v99];
          *(v101 + 4) = v100;
          *(v101 + 5) = v5;
          result = specialized Array.remove(at:)(v61);
          v58 = *(v10 + 2);
          if (v58 <= 1)
          {
            goto LABEL_3;
          }
        }

        v66 = &v10[16 * v58 + 32];
        v67 = *(v66 - 64);
        v68 = *(v66 - 56);
        v72 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (v72)
        {
          goto LABEL_119;
        }

        v71 = *(v66 - 48);
        v70 = *(v66 - 40);
        v72 = __OFSUB__(v70, v71);
        v64 = v70 - v71;
        v65 = v72;
        if (v72)
        {
          goto LABEL_120;
        }

        v73 = &v10[16 * v58];
        v75 = *v73;
        v74 = *(v73 + 1);
        v72 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v72)
        {
          goto LABEL_122;
        }

        v72 = __OFADD__(v64, v76);
        v77 = v64 + v76;
        if (v72)
        {
          goto LABEL_125;
        }

        if (v77 >= v69)
        {
          v95 = &v10[16 * v61 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v72 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v72)
          {
            goto LABEL_129;
          }

          if (v64 < v98)
          {
            v61 = v58 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

      goto LABEL_42;
    }

    if (!v41)
    {
      break;
    }

    v51 = *(v46 + 64);
    v52 = *(v46 + 80);
    v53 = *(v46 + 96);
    v54 = *(v46 + 16);
    *v49 = *v46;
    *(v46 + 72) = v54;
    *(v46 + 88) = *(v46 + 32);
    v55 = *(v46 + 48);
    *v46 = v44;
    *(v46 + 8) = v51;
    *(v46 + 24) = v52;
    *(v46 + 40) = v53;
    v46 -= 56;
    *(v49 + 48) = v55;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_10003B3B4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
      goto LABEL_42;
    }

LABEL_26:
    v22 = v6 - 56;
    v5 -= 56;
    v23 = v12;
    while (1)
    {
      v25 = *(v23 - 56);
      v23 -= 56;
      v24 = v25;
      if (v25 < 0)
      {
        v26 = &unk_1004F7610 + 8 * *((v24 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        v27 = *v22;
        if ((*v22 & 0x8000000000000000) != 0)
        {
LABEL_32:
          v28 = &unk_1004F7610 + 8 * *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
          goto LABEL_33;
        }
      }

      else
      {
        v26 = &unk_1004F7470 + 8 * v24;
        v27 = *v22;
        if ((*v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }
      }

      v28 = &unk_1004F7470 + 8 * v27;
LABEL_33:
      if (*v26 < *v28)
      {
        if ((v5 + 56) != v6)
        {
          v32 = *v22;
          v33 = *(v6 - 40);
          v34 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v33;
          *(v5 + 32) = v34;
          *v5 = v32;
        }

        if (v12 <= v4 || (v6 -= 56, v22 <= v7))
        {
          v6 = v22;
          goto LABEL_42;
        }

        goto LABEL_26;
      }

      if ((v5 + 56) != v12)
      {
        v29 = *v23;
        v30 = *(v23 + 16);
        v31 = *(v23 + 32);
        *(v5 + 48) = *(v23 + 48);
        *(v5 + 16) = v30;
        *(v5 + 32) = v31;
        *v5 = v29;
      }

      v5 -= 56;
      v12 = v23;
      if (v23 <= v4)
      {
        v12 = v23;
        goto LABEL_42;
      }
    }
  }

  if (a4 != __dst || &__dst[56 * v9] <= a4)
  {
    memmove(a4, __dst, 56 * v9);
  }

  v12 = &v4[56 * v9];
  if (v8 >= 56 && v6 < v5)
  {
    do
    {
      v13 = *v6;
      if ((*v6 & 0x8000000000000000) != 0)
      {
        v14 = &unk_1004F7610 + 8 * *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        v15 = *v4;
        if ((*v4 & 0x8000000000000000) == 0)
        {
LABEL_9:
          v16 = &unk_1004F7470 + 8 * v15;
          goto LABEL_12;
        }
      }

      else
      {
        v14 = &unk_1004F7470 + 8 * v13;
        v15 = *v4;
        if ((*v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v16 = &unk_1004F7610 + 8 * *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
LABEL_12:
      if (*v14 >= *v16)
      {
        v17 = v4;
        v18 = v7 == v4;
        v4 += 56;
        if (v18)
        {
          goto LABEL_18;
        }

LABEL_17:
        v19 = *v17;
        v20 = *(v17 + 1);
        v21 = *(v17 + 2);
        *(v7 + 6) = *(v17 + 6);
        *(v7 + 1) = v20;
        *(v7 + 2) = v21;
        *v7 = v19;
        goto LABEL_18;
      }

      v17 = v6;
      v18 = v7 == v6;
      v6 += 56;
      if (!v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 56;
    }

    while (v4 < v12 && v6 < v5);
  }

  v6 = v7;
LABEL_42:
  v35 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v36 = (v35 >> 4) + (v35 >> 63);
  if (v6 != v4 || v6 >= &v4[56 * v36])
  {
    memmove(v6, v4, 56 * v36);
  }

  return 1;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = Hasher._finalize()();

  return a3(a1, a2, v5);
}

uint64_t specialized static ActionMenu.Item.== infix(_:_:)(void *(*a1)(void *__return_ptr), uint64_t a2, void (*a3)(void *__return_ptr, void *))
{
  v4 = a1(v29);
  a3(v26, v4);
  v5 = v30;
  v6 = v31;
  __swift_project_boxed_opaque_existential_0Tm(v29, v30);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  v10 = v27;
  v11 = v28;
  __swift_project_boxed_opaque_existential_0Tm(v26, v27);
  if (v7 == (*(v11 + 8))(v10, v11) && v9 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = v30;
  v17 = v31;
  __swift_project_boxed_opaque_existential_0Tm(v29, v30);
  v18 = (*(v17 + 24))(v16, v17);
  v20 = v19;
  v21 = v27;
  v22 = v28;
  __swift_project_boxed_opaque_existential_0Tm(v26, v27);
  v23 = (*(v22 + 24))(v21, v22);
  if (v20)
  {
    if (v24)
    {
      if (v18 == v23 && v20 == v24)
      {

        v15 = 1;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!v24)
    {
      v15 = 1;
      goto LABEL_18;
    }

    v15 = 0;
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  return v15 & 1;
}

uint64_t sub_10003B950()
{

  return swift_deallocObject();
}

char *specialized Sequence.compactMap<A>(_:)(uint64_t a1, char **a2, uint64_t a3, int a4)
{
  v29 = a4;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = (a1 + 40);
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v8[5];
    v12 = *v8;
    LOBYTE(v25[0]) = *(v8 - 8);
    v25[1] = v12;
    v21 = *(v8 + 3);
    v26 = *(v8 + 1);
    v27 = v21;
    v28 = v11;

    closure #1 in ActionMenuBuilder.menu(excluding:includeUnsupported:)(v25, a2, a3, v29 & 1, v23);
    if (v4)
    {
      break;
    }

    if (*&v23[0] >> 60 != 15)
    {
      v22 = v23[0];
      v19 = v23[2];
      v20 = v23[1];
      v13 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      v16 = v22;
      if (v15 >= v14 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9);
        v16 = v22;
        v9 = v17;
      }

      *(v9 + 2) = v15 + 1;
      v10 = &v9[56 * v15];
      *(v10 + 2) = v16;
      *(v10 + 3) = v20;
      *(v10 + 4) = v19;
      *(v10 + 10) = v13;
    }

    v8 += 7;
    if (!--v5)
    {
      return v9;
    }
  }

  return v9;
}

char *specialized Array.replaceSubrange<A>(_:with:)(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd_0, &_ss18_DictionaryStorageCySSypGMR_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TaskPriority?(v4, &v13, &_sSS_yptMd_0, &_sSS_yptMR_0);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, char **a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = 0;
  v5 = result + 40;
  v6 = _swiftEmptyArrayStorage;
  v26 = *(result + 16);
  v24 = result + 40;
  do
  {
    v25 = v6;
    v7 = (v5 + 56 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      v9 = *(v7 - 1);
      v34 = v7[4];
      v10 = v7[5];
      v32 = v7[2];
      v33 = v7[3];
      v30 = *v7;
      v31 = v7[1];
      if (v9 < 0)
      {
        break;
      }

      v29 = v10;

      _StringGuts.grow(_:)(49);

      v11._countAndFlagsBits = ActionType.rawValue.getter(v9);
      String.append(_:)(v11);

      v12._object = 0x80000001004C5920;
      v12._countAndFlagsBits = 0xD00000000000002BLL;
      String.append(_:)(v12);
      v13 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v13;
      v15 = i + 1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
        *a2 = v13;
      }

      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v13);
        *a2 = v13;
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[16 * v17];
      *(v18 + 4) = 544743456;
      *(v18 + 5) = 0xE400000000000000;
      v19 = *a3;

      v20 = specialized Set.contains(_:)(v9, v19);

      v3 = v26;
      v4 = i + 1;
      v10 = v29;
      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      result = outlined consume of ActionMenu.Element(v9, v30, v31, v32, v33, v34, v29);
      v7 += 7;
      if (v15 == v26)
      {
        return v25;
      }
    }

LABEL_15:
    v6 = v25;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1);
      v6 = v25;
    }

    v5 = v24;
    v22 = v6[2];
    v21 = v6[3];
    if (v22 >= v21 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      v6 = v25;
    }

    v6[2] = v22 + 1;
    v23 = &v6[7 * v22];
    v23[4] = v9;
    v23[5] = v30;
    v23[6] = v31;
    v23[7] = v32;
    v23[8] = v33;
    v23[9] = v34;
    v23[10] = v10;
  }

  while (v4 != v3);
  return v6;
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(result, a2, 1, a3, a4);
  *v4 = v6;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MusicCore8MenuTypeO_AC06ActionE0CTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MusicCore8MenuTypeOAC06ActionE0CGMd, &_ss18_DictionaryStorageCy9MusicCore8MenuTypeOAC06ActionE0CGMR);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t outlined destroy of (MenuType, ActionMenu)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore8MenuTypeO_AA06ActionC0CtMd, &_s9MusicCore8MenuTypeO_AA06ActionC0CtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of ActionMenu.Element(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }
}

uint64_t outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003C45C()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ActionMenuItemImage.init(systemName:)()
{

  return Image.init(systemName:)();
}

uint64_t sub_10003C4F8()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ActionMenuItemImage.init(uiImage:)()
{
  result = (*(v0 + 16))();
  if (result)
  {
    return Image.init(uiImage:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionMenuItemStyle and conformance ActionMenuItemStyle()
{
  result = lazy protocol witness table cache variable for type ActionMenuItemStyle and conformance ActionMenuItemStyle;
  if (!lazy protocol witness table cache variable for type ActionMenuItemStyle and conformance ActionMenuItemStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionMenuItemStyle and conformance ActionMenuItemStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionMenuStyle and conformance ActionMenuStyle()
{
  result = lazy protocol witness table cache variable for type ActionMenuStyle and conformance ActionMenuStyle;
  if (!lazy protocol witness table cache variable for type ActionMenuStyle and conformance ActionMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionMenuStyle and conformance ActionMenuStyle);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionMenuBuilder(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ActionMenuBuilder(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ActionMenu.Item(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for ActionMenu.Item(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ActionMenuItemImage(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ActionMenuItemImage(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo13MPPropertySetCGMd, &_ss18_DictionaryStorageCySSSo13MPPropertySetCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TaskPriority?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryO_s5Int64VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryOs5Int64VGMd, &_ss18_DictionaryStorageCy9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryOs5Int64VGMR);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryO_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryOSSGMd, &_ss18_DictionaryStorageCy9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryOSSGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSypGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySSypGGMd, &_ss18_DictionaryStorageCySSSDySSypGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
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
    return _swiftEmptyDictionarySingleton;
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

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So22UIViewPropertyAnimatorCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So22UIViewPropertyAnimatorCtMd, &_s10Foundation4UUIDV_So22UIViewPropertyAnimatorCtMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo22UIViewPropertyAnimatorCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo22UIViewPropertyAnimatorCGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of TaskPriority?(v9, v5, &_s10Foundation4UUIDV_So22UIViewPropertyAnimatorCtMd, &_s10Foundation4UUIDV_So22UIViewPropertyAnimatorCtMR);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0gq5Tf4g_nTm(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, Swift::Int))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      outlined copy of Data._Representation(v9, v10);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, a2);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v2)
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MusicCore24PushNotificationObserverC17RegisteredHandlerVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MusicCore24PushNotificationObserverC17RegisteredHandlerVtMd, &_s10Foundation4UUIDV_9MusicCore24PushNotificationObserverC17RegisteredHandlerVtMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MusicCore24PushNotificationObserverC17RegisteredHandlerVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MusicCore24PushNotificationObserverC17RegisteredHandlerVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of TaskPriority?(v9, v5, &_s10Foundation4UUIDV_9MusicCore24PushNotificationObserverC17RegisteredHandlerVtMd, &_s10Foundation4UUIDV_9MusicCore24PushNotificationObserverC17RegisteredHandlerVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
      result = outlined init with take of PushNotificationObserver.RegisteredHandler(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13MPCPlayerPathC_So24OS_dispatch_source_timer_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo13MPCPlayerPathCSo24OS_dispatch_source_timer_pGMd, &_ss18_DictionaryStorageCySo13MPCPlayerPathCSo24OS_dispatch_source_timer_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_16MusicKitInternal13SocialProfileVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_16MusicKitInternal13SocialProfileVtMd, &_sSS_16MusicKitInternal13SocialProfileVtMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS16MusicKitInternal13SocialProfileVGMd, &_ss18_DictionaryStorageCySS16MusicKitInternal13SocialProfileVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of TaskPriority?(v9, v5, &_sSS_16MusicKitInternal13SocialProfileVtMd, &_sSS_16MusicKitInternal13SocialProfileVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for SocialProfile();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = a1 + 32;

    while (1)
    {
      outlined init with copy of TaskPriority?(v10, &v17, a4, a5);
      v11 = v17;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = outlined init with take of Any(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t outlined init with take of PushNotificationObserver.RegisteredHandler(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PushNotificationObserver.RegisteredHandler(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PushNotificationObserver.RegisteredHandler(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
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

  result = _CocoaArrayWrapper.endIndex.getter();
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
    v13 = _CocoaArrayWrapper.endIndex.getter();
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

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = a2(0);
  a5[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return outlined init with copy of PlaybackIntentDescriptor.IntentType(a1, boxed_opaque_existential_1, a4);
}

uint64_t specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  v1[2] = a1;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  v1[2] = a1;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 288) = swift_task_alloc();
  v3 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v3;
  *(v1 + 144) = *(a1 + 128);
  v4 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v4;
  v5 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v5;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

uint64_t specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  outlined init with copy of TaskPriority?(v4, v2, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  outlined init with take of URL?(v2, v7 + v6, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v7);

  v8 = v0[1];

  return v8();
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  outlined init with copy of TaskPriority?(v4, v2, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  outlined init with take of URL?(v2, v7 + v6, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v7);

  v8 = v0[1];

  return v8();
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  outlined init with copy of TaskPriority?(v4, v2, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  outlined init with take of URL?(v2, v7 + v6, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v7);

  v8 = v0[1];

  return v8();
}

{
  v1 = *(v0 + 288);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 128);
  *(v3 + 128) = *(v0 + 112);
  *(v3 + 144) = v4;
  *(v3 + 160) = *(v0 + 144);
  v5 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v5;
  v6 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v6;
  v7 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v7;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 152, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 208);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v4;
  v5 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v5;
  v6 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 112, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 128, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:), v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

uint64_t Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v55 = a7;
  v56 = a6;
  v53 = a4;
  v54 = a5;
  v49 = a2;
  v12 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin();
  v45 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v50 = v14;
  v52 = *(v14 - 8);
  v15 = v52;
  __chkstk_darwin();
  v48 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
  __chkstk_darwin();
  v51 = &v45 - v17;
  v18 = type metadata accessor for Actions.PlaybackContext(0);
  v19 = v18[5];
  (*(v15 + 56))(&a8[v19], 1, 1, v14);
  v20 = &a8[v18[6]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = &a8[v18[7]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *a8 = a1;
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(a2, &a8[v19], &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
  v23 = *v20;
  v22 = *(v20 + 1);
  v24 = *(v20 + 2);
  v25 = *(v20 + 3);
  v26 = a3;
  v27 = a3;
  v28 = v53;
  v29 = v54;
  v30 = v56;
  outlined copy of MPCPlaybackIntent.PlayActivityInformation?(v27, v53, v54, v56);
  v31 = v24;
  v32 = v49;
  outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v23, v22, v31, v25);
  v33 = v26;
  *v20 = v26;
  *(v20 + 1) = v28;
  *(v20 + 2) = v29;
  *(v20 + 3) = v30;
  v35 = v50;
  v34 = v51;
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v55, v21, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  outlined init with copy of TaskPriority?(v32, v34, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
  if ((*(v52 + 48))(v34, 1, v35) == 1)
  {
    outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v33, v28, v54, v56);
    outlined destroy of TaskPriority?(v55, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
    outlined destroy of TaskPriority?(v32, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
    v32 = v34;
  }

  else
  {
    v36 = v28;
    v37 = v48;
    outlined init with copy of PlaybackIntentDescriptor.IntentType(v34, v48, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v45;
      v39 = v46;
      v40 = v47;
      (*(v46 + 32))(v45, v37, v47);
      v41 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v39 + 8))(v38, v40);
    }

    else
    {
      v41 = *v37;
    }

    outlined destroy of PlaybackIntentDescriptor.IntentType(v34);
    v42 = v54;
    v43 = v56;
    specialized MPCPlaybackIntent.playActivityInformation.setter(v33, v36, v54, v56);
    outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v33, v36, v42, v43);

    outlined destroy of TaskPriority?(v55, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  }

  return outlined destroy of TaskPriority?(v32, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
}

uint64_t type metadata accessor for Actions.PlaybackContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for Actions.PlaybackContext;
  if (!type metadata singleton initialization cache for Actions.PlaybackContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void outlined copy of MPCPlaybackIntent.PlayActivityInformation?(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    outlined copy of Data?(a3, a4);
  }
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

void outlined consume of MPCPlaybackIntent.PlayActivityInformation?(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    outlined consume of Data?(a3, a4);
  }
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined assign with copy of PlaybackIntentDescriptor.IntentType?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of PlaybackIntentDescriptor.IntentType(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Actions.PlaybackContext.playActivityInformation.getter()
{
  v1 = v0 + *(type metadata accessor for Actions.PlaybackContext(0) + 24);
  v2 = *v1;
  outlined copy of MPCPlaybackIntent.PlayActivityInformation?(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

void Actions.PlaybackContext.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v6 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v27 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v27 - v13;
  v15 = type metadata accessor for Actions.PlaybackContext(0);
  v16 = v4 + *(v15 + 24);
  outlined consume of MPCPlaybackIntent.PlayActivityInformation?(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24));
  v17 = v28;
  v18 = v29;
  *v16 = a1;
  *(v16 + 8) = v17;
  v19 = v30;
  *(v16 + 16) = v18;
  *(v16 + 24) = v19;
  v20 = *(v15 + 20);
  if (!(*(v10 + 48))(v4 + v20, 1, v9))
  {
    v21 = v27;
    outlined init with copy of PlaybackIntentDescriptor.IntentType(v4 + v20, v14, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    outlined init with copy of PlaybackIntentDescriptor.IntentType(v14, v12, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v21 + 32))(v8, v12, v6);
      v22 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v21 + 8))(v8, v6);
      outlined destroy of PlaybackIntentDescriptor.IntentType(v14);
    }

    else
    {
      outlined destroy of PlaybackIntentDescriptor.IntentType(v14);
      v22 = *v12;
    }

    v23 = *v16;
    v24 = *(v16 + 8);
    v25 = *(v16 + 16);
    v26 = *(v16 + 24);
    outlined copy of MPCPlaybackIntent.PlayActivityInformation?(*v16, v24, v25, v26);
    specialized MPCPlaybackIntent.playActivityInformation.setter(v23, v24, v25, v26);
    outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v23, v24, v25, v26);
  }
}

void (*Actions.PlaybackContext.playActivityInformation.modify(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[3] = v7;
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  v10 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v4[7] = v11;
  v12 = type metadata accessor for Actions.PlaybackContext(0);
  v4[8] = v12;
  *(v4 + 18) = *(v12 + 24);
  return Actions.PlaybackContext.playActivityInformation.modify;
}

void Actions.PlaybackContext.playActivityInformation.modify(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *v2;
    v4 = *(v2[8] + 20);
    if (!(*(v2[5] + 48))(*v2 + v4, 1, v2[4]))
    {
      v6 = v2[6];
      v5 = v2[7];
      outlined init with copy of PlaybackIntentDescriptor.IntentType(v3 + v4, v5, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      outlined init with copy of PlaybackIntentDescriptor.IntentType(v5, v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v8 = v2[6];
      v9 = v2[7];
      if (EnumCaseMultiPayload == 1)
      {
        v11 = v2[2];
        v10 = v2[3];
        v12 = v2[1];
        (*(v11 + 32))(v10, v2[6], v12);
        v13 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v11 + 8))(v10, v12);
        outlined destroy of PlaybackIntentDescriptor.IntentType(v9);
      }

      else
      {
        outlined destroy of PlaybackIntentDescriptor.IntentType(v2[7]);
        v13 = *v8;
      }

      v14 = (*v2 + *(v2 + 18));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      outlined copy of MPCPlaybackIntent.PlayActivityInformation?(*v14, v16, v17, v18);
      specialized MPCPlaybackIntent.playActivityInformation.setter(v15, v16, v17, v18);
      outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v15, v16, v17, v18);
    }
  }

  v19 = v2[6];
  v20 = v2[3];
  free(v2[7]);
  free(v19);
  free(v20);

  free(v2);
}

uint64_t static MusicActions.queueActions(item:playbackContext:presentationSource:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  __chkstk_darwin();
  v9 = &v108 - v8;
  type metadata accessor for Actions.PlaybackContext(0);
  __chkstk_darwin();
  v11 = (&v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v12);
  v14 = __chkstk_darwin();
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v115 = type metadata accessor for Actions.PlaybackContext;
  outlined init with copy of PlaybackIntentDescriptor.IntentType(a2, v11, type metadata accessor for Actions.PlaybackContext);
  v18 = a3;
  v113 = a3;
  outlined init with copy of PresentationSource(a3, &v153);
  v19 = a4;
  v112 = a4;
  v109 = v9;
  outlined init with copy of TaskPriority?(a4, v9, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v16, 0, v11, &v153, v9, v12, v13, &v118);
  specialized static Actions.Queue.action(context:)(&v118, &v120);
  v169[0] = v118;
  outlined destroy of Player.InsertCommand.Location(v169);
  v168 = v119;
  outlined destroy of TaskPriority?(&v168, &_sSSSgMd, &_sSSSgMR);

  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMR);
  v20 = swift_allocObject();
  v116 = xmmword_1004F2400;
  *(v20 + 16) = xmmword_1004F2400;
  LOBYTE(a4) = BYTE8(v124);
  v21 = swift_allocObject();
  v22 = v127;
  *(v21 + 112) = v126;
  *(v21 + 128) = v22;
  *(v21 + 144) = v128;
  v23 = v123;
  *(v21 + 48) = v122;
  *(v21 + 64) = v23;
  v24 = v125;
  *(v21 + 80) = v124;
  *(v21 + 96) = v24;
  v25 = v121;
  *(v21 + 16) = v120;
  *(v21 + 32) = v25;
  v26 = swift_allocObject();
  v27 = v127;
  *(v26 + 112) = v126;
  *(v26 + 128) = v27;
  *(v26 + 144) = v128;
  v28 = v123;
  *(v26 + 48) = v122;
  *(v26 + 64) = v28;
  v29 = v125;
  *(v26 + 80) = v124;
  *(v26 + 96) = v29;
  v30 = v121;
  *(v26 + 16) = v120;
  *(v26 + 32) = v30;
  v31 = swift_allocObject();
  v32 = v127;
  *(v31 + 112) = v126;
  *(v31 + 128) = v32;
  *(v31 + 144) = v128;
  v33 = v123;
  *(v31 + 48) = v122;
  *(v31 + 64) = v33;
  v34 = v125;
  *(v31 + 80) = v124;
  *(v31 + 96) = v34;
  v35 = v121;
  *(v31 + 16) = v120;
  *(v31 + 32) = v35;
  v110 = v20;
  *(v20 + 32) = a4;
  *(v20 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v20 + 48) = v21;
  *(v20 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v20 + 64) = v26;
  *(v20 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v20 + 80) = v31;
  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v36);
  v38 = __chkstk_darwin();
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v40, v38);
  v42 = v111;
  v43 = v11;
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v111, v11, v115);
  outlined init with copy of PresentationSource(v18, &v142);
  v44 = v109;
  outlined init with copy of TaskPriority?(v19, v109, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  outlined init with copy of TaskPriority?(&v120, &v153, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  outlined init with copy of TaskPriority?(&v120, &v153, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v40, 2, v43, &v142, v44, v36, v37, &v129);
  specialized static Actions.Queue.action(context:)(&v129, &v131);
  v167 = v129;
  outlined destroy of Player.InsertCommand.Location(&v167);
  v166 = v130;
  outlined destroy of TaskPriority?(&v166, &_sSSSgMd, &_sSSSgMR);

  v45 = swift_allocObject();
  *(v45 + 16) = v116;
  LOBYTE(v40) = BYTE8(v135);
  v46 = swift_allocObject();
  v47 = v138;
  *(v46 + 112) = v137;
  *(v46 + 128) = v47;
  *(v46 + 144) = v139;
  v48 = v134;
  *(v46 + 48) = v133;
  *(v46 + 64) = v48;
  v49 = v136;
  *(v46 + 80) = v135;
  *(v46 + 96) = v49;
  v50 = v132;
  *(v46 + 16) = v131;
  *(v46 + 32) = v50;
  v51 = swift_allocObject();
  v52 = v138;
  *(v51 + 112) = v137;
  *(v51 + 128) = v52;
  *(v51 + 144) = v139;
  v53 = v134;
  *(v51 + 48) = v133;
  *(v51 + 64) = v53;
  v54 = v136;
  *(v51 + 80) = v135;
  *(v51 + 96) = v54;
  v55 = v132;
  *(v51 + 16) = v131;
  *(v51 + 32) = v55;
  v56 = swift_allocObject();
  v57 = v138;
  *(v56 + 112) = v137;
  *(v56 + 128) = v57;
  *(v56 + 144) = v139;
  v58 = v134;
  *(v56 + 48) = v133;
  *(v56 + 64) = v58;
  v59 = v136;
  *(v56 + 80) = v135;
  *(v56 + 96) = v59;
  v60 = v132;
  *(v56 + 16) = v131;
  *(v56 + 32) = v60;
  *(v45 + 32) = v40;
  *(v45 + 40) = closure #1 in static ActionBuilder.buildExpression<A, B>(_:)specialized partial apply;
  *(v45 + 48) = v46;
  *(v45 + 56) = closure #2 in static ActionBuilder.buildExpression<A, B>(_:)specialized partial apply;
  *(v45 + 64) = v51;
  *(v45 + 72) = &closure #3 in static ActionBuilder.buildExpression<A, B>(_:)specialized partial apply;
  *(v45 + 80) = v56;
  v61 = a1[3];
  v62 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v61);
  v63 = __chkstk_darwin();
  v65 = &v108 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v66 + 16))(v65, v63);
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v42, v43, v115);
  outlined init with copy of PresentationSource(v113, &v142);
  outlined init with copy of TaskPriority?(v112, v44, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  outlined init with copy of TaskPriority?(&v131, &v153, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  outlined init with copy of TaskPriority?(&v131, &v153, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v65, 1, v43, &v142, v44, v61, v62, &v140);
  specialized static Actions.Queue.action(context:)(&v140, &v142);
  v165 = v140;
  outlined destroy of Player.InsertCommand.Location(&v165);
  v164 = v141;
  outlined destroy of TaskPriority?(&v164, &_sSSSgMd, &_sSSSgMR);

  v67 = swift_allocObject();
  *(v67 + 16) = v116;
  LOBYTE(v19) = BYTE8(v146);
  v68 = swift_allocObject();
  v69 = v149;
  *(v68 + 112) = v148;
  *(v68 + 128) = v69;
  *(v68 + 144) = v150;
  v70 = v145;
  *(v68 + 48) = v144;
  *(v68 + 64) = v70;
  v71 = v147;
  *(v68 + 80) = v146;
  *(v68 + 96) = v71;
  v72 = v143;
  *(v68 + 16) = v142;
  *(v68 + 32) = v72;
  v73 = swift_allocObject();
  v74 = v149;
  *(v73 + 112) = v148;
  *(v73 + 128) = v74;
  *(v73 + 144) = v150;
  v75 = v145;
  *(v73 + 48) = v144;
  *(v73 + 64) = v75;
  v76 = v147;
  *(v73 + 80) = v146;
  *(v73 + 96) = v76;
  v77 = v143;
  *(v73 + 16) = v142;
  *(v73 + 32) = v77;
  v78 = swift_allocObject();
  v79 = v149;
  *(v78 + 112) = v148;
  *(v78 + 128) = v79;
  *(v78 + 144) = v150;
  v80 = v145;
  *(v78 + 48) = v144;
  *(v78 + 64) = v80;
  v81 = v147;
  *(v78 + 80) = v146;
  *(v78 + 96) = v81;
  v82 = v143;
  *(v78 + 16) = v142;
  *(v78 + 32) = v82;
  *(v67 + 32) = v19;
  *(v67 + 40) = closure #1 in static ActionBuilder.buildExpression<A, B>(_:)specialized partial apply;
  *(v67 + 48) = v68;
  *(v67 + 56) = closure #2 in static ActionBuilder.buildExpression<A, B>(_:)specialized partial apply;
  *(v67 + 64) = v73;
  *(v67 + 72) = &closure #3 in static ActionBuilder.buildExpression<A, B>(_:)specialized partial apply;
  *(v67 + 80) = v78;
  v83 = a1[3];
  v84 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v83);
  v85 = __chkstk_darwin();
  v87 = &v108 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v88 + 16))(v87, v85);
  outlined init with copy of PlaybackIntentDescriptor.IntentType(v111, v43, v115);
  outlined init with copy of PresentationSource(v113, v117);
  outlined init with copy of TaskPriority?(v112, v44, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  outlined init with copy of TaskPriority?(&v142, &v153, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  outlined init with copy of TaskPriority?(&v142, &v153, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v87, 3, v43, v117, v44, v83, v84, &v151);
  specialized static Actions.Queue.action(context:)(&v151, &v153);
  v163 = v151;
  outlined destroy of Player.InsertCommand.Location(&v163);
  v162 = v152;
  outlined destroy of TaskPriority?(&v162, &_sSSSgMd, &_sSSSgMR);

  v89 = swift_allocObject();
  *(v89 + 16) = v116;
  LOBYTE(v19) = BYTE8(v157);
  v90 = swift_allocObject();
  v91 = v160;
  *(v90 + 112) = v159;
  *(v90 + 128) = v91;
  *(v90 + 144) = v161;
  v92 = v156;
  *(v90 + 48) = v155;
  *(v90 + 64) = v92;
  v93 = v158;
  *(v90 + 80) = v157;
  *(v90 + 96) = v93;
  v94 = v154;
  *(v90 + 16) = v153;
  *(v90 + 32) = v94;
  v95 = swift_allocObject();
  v96 = v160;
  *(v95 + 112) = v159;
  *(v95 + 128) = v96;
  *(v95 + 144) = v161;
  v97 = v156;
  *(v95 + 48) = v155;
  *(v95 + 64) = v97;
  v98 = v158;
  *(v95 + 80) = v157;
  *(v95 + 96) = v98;
  v99 = v154;
  *(v95 + 16) = v153;
  *(v95 + 32) = v99;
  v100 = swift_allocObject();
  v101 = v160;
  *(v100 + 112) = v159;
  *(v100 + 128) = v101;
  *(v100 + 144) = v161;
  v102 = v156;
  *(v100 + 48) = v155;
  *(v100 + 64) = v102;
  v103 = v158;
  *(v100 + 80) = v157;
  *(v100 + 96) = v103;
  v104 = v154;
  *(v100 + 16) = v153;
  *(v100 + 32) = v104;
  *(v89 + 32) = v19;
  *(v89 + 40) = closure #1 in static ActionBuilder.buildExpression<A, B>(_:)specialized partial apply;
  *(v89 + 48) = v90;
  *(v89 + 56) = closure #2 in static ActionBuilder.buildExpression<A, B>(_:)specialized partial apply;
  *(v89 + 64) = v95;
  *(v89 + 72) = &closure #3 in static ActionBuilder.buildExpression<A, B>(_:)specialized partial apply;
  *(v89 + 80) = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd, &_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMR);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1004F2EE0;
  *(v105 + 32) = v110;
  *(v105 + 40) = v45;
  *(v105 + 48) = v67;
  *(v105 + 56) = v89;
  outlined init with copy of TaskPriority?(&v153, v117, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  outlined init with copy of TaskPriority?(&v153, v117, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  v106 = specialized static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore10ActionMenuC4ItemVGMd, &_sSay9MusicCore10ActionMenuC4ItemVGMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v106;
}

uint64_t static MusicActions.pinActions(item:library:presentationSource:metricsReportingContext:onFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v87 = a5;
  v88 = a6;
  v77 = a3;
  v78 = a4;
  v86 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v10 = *(v9 - 8);
  v79 = (v9 - 8);
  v83 = v10;
  v82 = *(v10 + 64);
  __chkstk_darwin();
  v85 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v68 - v12;
  __chkstk_darwin();
  v81 = &v68 - v13;
  __chkstk_darwin();
  v80 = &v68 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  __chkstk_darwin();
  v16 = &v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR) - 8;
  v70 = *v17;
  v18 = *(v70 + 64);
  __chkstk_darwin();
  v73 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v68 - v19;
  __chkstk_darwin();
  v69 = &v68 - v20;
  __chkstk_darwin();
  v22 = &v68 - v21;
  v76 = a1;
  v23 = a1[3];
  inited = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v23);
  v24 = __chkstk_darwin();
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v24);
  outlined init with copy of PresentationSource(a3, v90);
  v72 = v16;
  outlined init with copy of TaskPriority?(a4, v16, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v28 = v86;

  v30 = v87;
  v29 = v88;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v87, v88);
  Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v26, v28, v90, v16, v30, v29, v23, inited, v22);
  v22[*(v17 + 44)] = 7;
  *&v22[*(v17 + 52)] = 0x4014000000000000;
  v31 = &v22[*(v17 + 48)];
  *v31 = closure #1 in static Actions.Pin.action(context:);
  v31[1] = 0;
  v32 = &v22[*(v17 + 56)];
  *v32 = &async function pointer to closure #2 in static Actions.Pin.action(context:);
  *(v32 + 1) = 0;
  v33 = &v22[*(v17 + 60)];
  *v33 = &async function pointer to closure #3 in static Actions.Pin.action(context:);
  *(v33 + 1) = 0;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMR);
  inited = swift_initStackObject();
  v74 = xmmword_1004F2400;
  *(inited + 16) = xmmword_1004F2400;
  v34 = v69;
  outlined init with copy of TaskPriority?(v22, v69, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v35 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v36 = swift_allocObject();
  outlined init with take of URL?(v34, v36 + v35, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v37 = v71;
  outlined init with copy of TaskPriority?(v22, v71, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v38 = swift_allocObject();
  outlined init with take of URL?(v37, v38 + v35, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v39 = v73;
  outlined init with copy of TaskPriority?(v22, v73, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v40 = swift_allocObject();
  outlined init with take of URL?(v39, v40 + v35, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v41 = inited;
  *(inited + 32) = 7;
  v41[5] = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  v41[6] = v36;
  v41[7] = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  v41[8] = v38;
  v41[9] = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  v41[10] = v40;
  outlined destroy of TaskPriority?(v22, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v42 = v76[3];
  v43 = v76[4];
  __swift_project_boxed_opaque_existential_0Tm(v76, v42);
  v44 = __chkstk_darwin();
  (*(v46 + 16))(&v68 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
  outlined init with copy of PresentationSource(v77, v90);
  v47 = v72;
  outlined init with copy of TaskPriority?(v78, v72, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v48 = v86;

  v50 = v87;
  v49 = v88;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v87, v88);
  v51 = v80;
  Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v48, v90, v47, v50, v49, v42, v43, v80);
  v52 = v79;
  *(v51 + v79[11]) = 8;
  *(v51 + v52[13]) = 0x4014000000000000;
  v53 = (v51 + v52[12]);
  v54 = v51;
  *v53 = closure #1 in static Actions.Unpin.action(context:);
  v53[1] = 0;
  v55 = (v51 + v52[14]);
  *v55 = &async function pointer to closure #2 in static Actions.Unpin.action(context:);
  v55[1] = 0;
  v56 = (v51 + v52[15]);
  *v56 = &async function pointer to closure #3 in static Actions.Unpin.action(context:);
  v56[1] = 0;
  v57 = swift_initStackObject();
  *(v57 + 16) = v74;
  v58 = v81;
  outlined init with copy of TaskPriority?(v51, v81, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v59 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v88 = swift_allocObject();
  outlined init with take of URL?(v58, v88 + v59, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v60 = v84;
  outlined init with copy of TaskPriority?(v51, v84, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v61 = swift_allocObject();
  outlined init with take of URL?(v60, v61 + v59, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v62 = v85;
  outlined init with copy of TaskPriority?(v51, v85, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v63 = swift_allocObject();
  outlined init with take of URL?(v62, v63 + v59, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  *(v57 + 32) = 8;
  v64 = v88;
  *(v57 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v57 + 48) = v64;
  *(v57 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v57 + 64) = v61;
  *(v57 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v57 + 80) = v63;
  outlined destroy of TaskPriority?(v54, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd, &_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMR);
  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_1004F2EF0;
  *(v65 + 32) = inited;
  *(v65 + 40) = v57;
  v66 = specialized static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore10ActionMenuC4ItemVGMd, &_sSay9MusicCore10ActionMenuC4ItemVGMR);
  swift_arrayDestroy();
  return v66;
}

uint64_t static MusicActions.libraryActions(item:library:presentationSource:playlistPickerPresenter:observer:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v196 = a7;
  *&v197 = a6;
  v194 = a3;
  v195 = a5;
  v185 = a4;
  v9 = type metadata accessor for Playlist.Folder.Item();
  v181 = *(v9 - 8);
  v182 = v9;
  __chkstk_darwin();
  v183 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  __chkstk_darwin();
  v190 = (&v177 - v11);
  v12 = type metadata accessor for Playlist();
  v187 = *(v12 - 8);
  v188 = v12;
  __chkstk_darwin();
  v193 = &v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Album();
  v192 = *(v14 - 8);
  __chkstk_darwin();
  v16 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  __chkstk_darwin();
  v18 = &v177 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v21 = a1[5];
  __swift_project_boxed_opaque_existential_0Tm(a1, v20);
  v22 = __chkstk_darwin();
  v24 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  outlined init with copy of PresentationSource(v194, &v218);
  outlined init with copy of TaskPriority?(v196, v18, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v189 = v18;
  Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(v24, a2, &v218, v195, v197, v18, v20, v19, &v225, v21);
  LOBYTE(v228) = 0;
  *(&v228 + 1) = closure #1 in static Actions.AddToLibrary.action(context:);
  *&v229 = 0;
  *(&v229 + 1) = 0x4014000000000000;
  *&v230 = &async function pointer to closure #2 in static Actions.AddToLibrary.action(context:);
  *(&v230 + 1) = 0;
  *&v231 = &async function pointer to closure #3 in static Actions.AddToLibrary.action(context:);
  *(&v231 + 1) = 0;
  outlined init with copy of MusicLibraryAddable & MusicLibraryActionable(a1, &v218);
  swift_unknownObjectRetain();
  v191 = a2;

  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibraryAddable_0aB8Internal0aC10ActionablepMd, &_s8MusicKit0A14LibraryAddable_0aB8Internal0aC10ActionablepMR);
  if (swift_dynamicCast())
  {
    v26 = (*(v192 + 8))(v16, v14);
    v27 = (v225)(v26);
    if (v28 == 1)
    {
      v29 = 0;
      goto LABEL_6;
    }

    outlined consume of ActionCondition.Result(v27, v28);
  }

  v29 = 1;
LABEL_6:
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMR);
  v30 = swift_allocObject();
  v197 = xmmword_1004F2400;
  *(v30 + 16) = xmmword_1004F2400;
  v31 = v228;
  v32 = swift_allocObject();
  v33 = v230;
  v32[5] = v229;
  v32[6] = v33;
  v32[7] = v231;
  v34 = v226;
  v32[1] = v225;
  v32[2] = v34;
  v35 = v228;
  v32[3] = v227;
  v32[4] = v35;
  v36 = swift_allocObject();
  v37 = v230;
  v36[5] = v229;
  v36[6] = v37;
  v36[7] = v231;
  v38 = v226;
  v36[1] = v225;
  v36[2] = v38;
  v39 = v228;
  v36[3] = v227;
  v36[4] = v39;
  v40 = swift_allocObject();
  v41 = v230;
  v40[5] = v229;
  v40[6] = v41;
  v40[7] = v231;
  v42 = v226;
  v40[1] = v225;
  v40[2] = v42;
  v43 = v228;
  v40[3] = v227;
  v40[4] = v43;
  *(v30 + 32) = v31;
  *(v30 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v30 + 48) = v32;
  *(v30 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v30 + 64) = v36;
  *(v30 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v30 + 80) = v40;
  v186 = v30;
  if (v29)
  {
    v44 = a1[3];
    v45 = a1[4];
    v46 = a1[5];
    __swift_project_boxed_opaque_existential_0Tm(a1, v44);
    v47 = __chkstk_darwin();
    v49 = &v177 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v49, v47);
    v51 = v194;
    outlined init with copy of PresentationSource(v194, &v218);
    v52 = v196;
    v53 = v189;
    outlined init with copy of TaskPriority?(v196, v189, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
    Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v49, v191, &v218, v53, v44, v45, v46, &v211);
    v204 = v211;
    v205 = v212;
    v206 = v213;
    LOBYTE(v207) = 49;
    *(&v207 + 1) = closure #1 in static Actions.AddToLibrary.action(context:);
    *&v208 = 0;
    *(&v208 + 1) = 0x4014000000000000;
    *&v209 = &async function pointer to closure #2 in static Actions.DeleteFromLibrary.action(context:);
    *(&v209 + 1) = 0;
    *&v210 = &async function pointer to closure #3 in static Actions.DeleteFromLibrary.action(context:);
    *(&v210 + 1) = 0;
    v54 = swift_allocObject();
    *(v54 + 16) = v197;
    v55 = swift_allocObject();
    v56 = v209;
    v55[5] = v208;
    v55[6] = v56;
    v55[7] = v210;
    v57 = v205;
    v55[1] = v204;
    v55[2] = v57;
    v58 = v207;
    v55[3] = v206;
    v55[4] = v58;
    v59 = swift_allocObject();
    v60 = v209;
    v59[5] = v208;
    v59[6] = v60;
    v59[7] = v210;
    v61 = v205;
    v59[1] = v204;
    v59[2] = v61;
    v62 = v207;
    v59[3] = v206;
    v59[4] = v62;
    v63 = swift_allocObject();
    v64 = v209;
    v63[5] = v208;
    v63[6] = v64;
    v63[7] = v210;
    v65 = v205;
    v63[1] = v204;
    v63[2] = v65;
    v66 = v207;
    v63[3] = v206;
    v63[4] = v66;
    v184 = v54;
    *(v54 + 32) = 49;
    *(v54 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v54 + 48) = v55;
    *(v54 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v54 + 64) = v59;
    *(v54 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v54 + 80) = v63;
    v67 = a1[3];
    v68 = a1[4];
    v69 = a1[5];
    __swift_project_boxed_opaque_existential_0Tm(a1, v67);
    v70 = __chkstk_darwin();
    v72 = &v177 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v72, v70);
    outlined init with copy of PresentationSource(v51, &v218);
    v74 = v52;
    v75 = v53;
    outlined init with copy of TaskPriority?(v74, v53, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
    v76 = v191;
    Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v72, v191, 0, &v218, v75, v67, v68, v69, &v198);
    v211 = v198;
    v212 = v199;
    v213 = v200;
    LOBYTE(v214) = 48;
    *(&v214 + 1) = closure #1 in static Actions.AddToLibrary.action(context:);
    *&v215 = 0;
    *(&v215 + 1) = 0x4014000000000000;
    *&v216 = &async function pointer to closure #2 in static Actions.RemoveDownload.action(context:);
    *(&v216 + 1) = 0;
    *&v217 = &async function pointer to closure #3 in static Actions.RemoveDownload.action(context:);
    *(&v217 + 1) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v197;
    v78 = swift_allocObject();
    v79 = v216;
    v78[5] = v215;
    v78[6] = v79;
    v78[7] = v217;
    v80 = v212;
    v78[1] = v211;
    v78[2] = v80;
    v81 = v214;
    v78[3] = v213;
    v78[4] = v81;
    v82 = swift_allocObject();
    v83 = v216;
    v82[5] = v215;
    v82[6] = v83;
    v82[7] = v217;
    v84 = v212;
    v82[1] = v211;
    v82[2] = v84;
    v85 = v214;
    v82[3] = v213;
    v82[4] = v85;
    v86 = swift_allocObject();
    v87 = v216;
    v86[5] = v215;
    v86[6] = v87;
    v86[7] = v217;
    v88 = v212;
    v86[1] = v211;
    v86[2] = v88;
    v89 = v214;
    v86[3] = v213;
    v86[4] = v89;
    *(v77 + 32) = 48;
    *(v77 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v77 + 48) = v78;
    *(v77 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v77 + 64) = v82;
    *(v77 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v77 + 80) = v86;
    v90 = a1[3];
    v179 = a1[4];
    v180 = v77;
    v178 = a1[5];
    __swift_project_boxed_opaque_existential_0Tm(a1, v90);
    v177 = &v177;
    v91 = __chkstk_darwin();
    v93 = &v177 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v94 + 16))(v93, v91);
    outlined init with copy of PresentationSource(v51, &v198);
    outlined init with copy of TaskPriority?(v196, v75, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    outlined init with copy of TaskPriority?(&v225, &v218, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);

    outlined init with copy of TaskPriority?(&v225, &v218, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    outlined init with copy of TaskPriority?(&v204, &v218, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
    outlined init with copy of TaskPriority?(&v211, &v218, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);

    outlined init with copy of TaskPriority?(&v225, &v218, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    outlined init with copy of TaskPriority?(&v204, &v218, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
    outlined init with copy of TaskPriority?(&v211, &v218, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
    Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v93, v76, &v198, v189, v90, v179, v178, &v201);
    v218 = v201;
    v219 = v202;
    v220 = v203;
    LOBYTE(v221) = 1;
    *(&v221 + 1) = closure #1 in static Actions.AddToLibrary.action(context:);
    *&v222 = 0;
    *(&v222 + 1) = 0x4014000000000000;
    *&v223 = &async function pointer to closure #2 in static Actions.Download.action(context:);
    *(&v223 + 1) = 0;
    *&v224 = &async function pointer to closure #3 in static Actions.Download.action(context:);
    *(&v224 + 1) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v197;
    v96 = swift_allocObject();
    v97 = v223;
    v96[5] = v222;
    v96[6] = v97;
    v96[7] = v224;
    v98 = v219;
    v96[1] = v218;
    v96[2] = v98;
    v99 = v221;
    v96[3] = v220;
    v96[4] = v99;
    v100 = swift_allocObject();
    v101 = v223;
    v100[5] = v222;
    v100[6] = v101;
    v100[7] = v224;
    v102 = v219;
    v100[1] = v218;
    v100[2] = v102;
    v103 = v221;
    v100[3] = v220;
    v100[4] = v103;
    v104 = swift_allocObject();
    v105 = v223;
    v104[5] = v222;
    v104[6] = v105;
    v104[7] = v224;
    v106 = v219;
    v104[1] = v218;
    v104[2] = v106;
    v107 = v221;
    v104[3] = v220;
    v104[4] = v107;
    *(v95 + 32) = 1;
    *(v95 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v95 + 48) = v96;
    *(v95 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v95 + 64) = v100;
    *(v95 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v95 + 80) = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd, &_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMR);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_1004F2EB0;
    *(v108 + 32) = v184;
    *(v108 + 40) = v180;
    *(v108 + 48) = v95;
    outlined init with copy of TaskPriority?(&v218, &v198, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
    outlined init with copy of TaskPriority?(&v218, &v198, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
    v184 = specialized static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore10ActionMenuC4ItemVGMd, &_sSay9MusicCore10ActionMenuC4ItemVGMR);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    outlined init with copy of TaskPriority?(&v225, &v218, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    outlined init with copy of TaskPriority?(&v225, &v218, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    outlined init with copy of TaskPriority?(&v225, &v218, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    v184 = _swiftEmptyArrayStorage;
  }

  v109 = v187;
  v110 = v188;
  v111 = v193;
  outlined init with copy of MusicLibraryAddable & MusicLibraryActionable(a1, &v218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A15PlaylistAddable_0aB8Internal0A17LibraryActionablepMd, &_s8MusicKit0A15PlaylistAddable_0aB8Internal0A17LibraryActionablepMR);
  v112 = swift_dynamicCast();
  v113 = v190;
  if (v112)
  {
    _s8MusicKit0A15PlaylistAddable_0aB8Internal0A17LibraryActionablepWOb_0(&v211, &v204);
    outlined init with copy of TaskPriority?(v185, &v201, &_s9MusicCore24PlaylistPickerPresenting_pSgMd, &_s9MusicCore24PlaylistPickerPresenting_pSgMR);
    if (*(&v202 + 1))
    {
      outlined init with take of ActionPerforming(&v201, &v198);
      v114 = *(&v205 + 1);
      v187 = *(&v206 + 1);
      v188 = v206;
      v115 = __swift_project_boxed_opaque_existential_0Tm(&v204, *(&v205 + 1));
      v116 = v109;
      v117 = *(&v199 + 1);
      v118 = v200;
      v119 = a1;
      v120 = __swift_project_boxed_opaque_existential_0Tm(&v198, *(&v199 + 1));
      outlined init with copy of PresentationSource(v194, &v211);
      v121 = v110;
      v122 = v189;
      outlined init with copy of TaskPriority?(v196, v189, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
      v176 = v118;
      v109 = v116;
      v123 = v120;
      a1 = v119;
      v124 = v122;
      v110 = v121;
      v125 = v117;
      v111 = v193;
      specialized Actions.AddToPlaylist.Context.init<A, B>(item:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v115, &v211, v123, v124, v114, v125, v188, v187, &v218, v176);
      LOBYTE(v221) = 11;
      *(&v221 + 1) = closure #1 in static Actions.AddToLibrary.action(context:);
      *&v222 = 0;
      *(&v222 + 1) = 0x4014000000000000;
      *&v223 = &async function pointer to closure #2 in static Actions.AddToPlaylist.action(context:);
      *(&v223 + 1) = 0;
      *&v224 = &async function pointer to closure #3 in static Actions.AddToPlaylist.action(context:);
      *(&v224 + 1) = 0;
      v126 = swift_allocObject();
      *(v126 + 16) = v197;
      v127 = swift_allocObject();
      v128 = v223;
      v127[5] = v222;
      v127[6] = v128;
      v127[7] = v224;
      v129 = v219;
      v127[1] = v218;
      v127[2] = v129;
      v130 = v221;
      v127[3] = v220;
      v127[4] = v130;
      v131 = swift_allocObject();
      v132 = v223;
      v131[5] = v222;
      v131[6] = v132;
      v131[7] = v224;
      v133 = v219;
      v131[1] = v218;
      v131[2] = v133;
      v134 = v221;
      v131[3] = v220;
      v131[4] = v134;
      v135 = swift_allocObject();
      v136 = v223;
      v135[5] = v222;
      v135[6] = v136;
      v135[7] = v224;
      v137 = v219;
      v135[1] = v218;
      v135[2] = v137;
      v138 = v221;
      v135[3] = v220;
      v135[4] = v138;
      *(v126 + 32) = 11;
      *(v126 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
      *(v126 + 48) = v127;
      *(v126 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
      *(v126 + 64) = v131;
      *(v126 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
      *(v126 + 80) = v135;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd, &_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMR);
      v139 = swift_allocObject();
      *(v139 + 16) = v197;
      *(v139 + 32) = v126;
      v140 = v139 + 32;
      outlined init with copy of TaskPriority?(&v218, &v211, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
      outlined init with copy of TaskPriority?(&v218, &v211, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
      v141 = specialized static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      outlined destroy of TaskPriority?(v140, &_sSay9MusicCore10ActionMenuC4ItemVGMd, &_sSay9MusicCore10ActionMenuC4ItemVGMR);
      v113 = v190;
      swift_deallocClassInstance();
      __swift_destroy_boxed_opaque_existential_0Tm(&v198);
      __swift_destroy_boxed_opaque_existential_0Tm(&v204);
      goto LABEL_15;
    }

    outlined destroy of TaskPriority?(&v201, &_s9MusicCore24PlaylistPickerPresenting_pSgMd, &_s9MusicCore24PlaylistPickerPresenting_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v204);
  }

  else
  {
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    outlined destroy of TaskPriority?(&v211, &_s8MusicKit0A15PlaylistAddable_0aB8Internal0A17LibraryActionablepSgMd, &_s8MusicKit0A15PlaylistAddable_0aB8Internal0A17LibraryActionablepSgMR);
  }

  v141 = _swiftEmptyArrayStorage;
LABEL_15:
  outlined init with copy of MusicLibraryAddable & MusicLibraryActionable(a1, &v218);
  v142 = swift_dynamicCast();
  v143 = *(v109 + 56);
  if ((v142 & 1) == 0)
  {
    v143(v113, 1, 1, v110);
    v170 = &_s8MusicKit8PlaylistVSgMd;
    v171 = &_s8MusicKit8PlaylistVSgMR;
    v172 = v113;
LABEL_20:
    outlined destroy of TaskPriority?(v172, v170, v171);
    v169 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v143(v113, 0, 1, v110);
  (*(v109 + 32))(v111, v113, v110);
  outlined init with copy of TaskPriority?(v185, &v198, &_s9MusicCore24PlaylistPickerPresenting_pSgMd, &_s9MusicCore24PlaylistPickerPresenting_pSgMR);
  if (!*(&v199 + 1))
  {
    (*(v109 + 8))(v111, v110);
    v170 = &_s9MusicCore24PlaylistPickerPresenting_pSgMd;
    v171 = &_s9MusicCore24PlaylistPickerPresenting_pSgMR;
    v172 = &v198;
    goto LABEL_20;
  }

  outlined init with take of ActionPerforming(&v198, &v204);
  v144 = *(&v205 + 1);
  v145 = v206;
  v146 = __swift_project_boxed_opaque_existential_0Tm(&v204, *(&v205 + 1));
  v147 = *(v109 + 16);
  v148 = v109;
  v149 = v183;
  v147(v183, v111, v110);
  (*(v181 + 104))(v149, enum case for Playlist.Folder.Item.playlist(_:), v182);
  v150 = __chkstk_darwin();
  v152 = &v177 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v153 + 16))(v152, v146, v144, v150);
  Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v149, v191, v152, v144, v145, &v211);
  v218 = v211;
  v219 = v212;
  v220 = v213;
  LOBYTE(v221) = 20;
  *(&v221 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
  *&v222 = 0;
  *(&v222 + 1) = 0x4014000000000000;
  *&v223 = &async function pointer to closure #2 in static Actions.MoveToFolder.action(context:);
  *(&v223 + 1) = 0;
  *&v224 = &async function pointer to closure #3 in static Actions.MoveToFolder.action(context:);
  *(&v224 + 1) = 0;
  v154 = swift_allocObject();
  *(v154 + 16) = v197;
  v155 = swift_allocObject();
  v156 = v223;
  v155[5] = v222;
  v155[6] = v156;
  v155[7] = v224;
  v157 = v219;
  v155[1] = v218;
  v155[2] = v157;
  v158 = v221;
  v155[3] = v220;
  v155[4] = v158;
  v159 = swift_allocObject();
  v160 = v223;
  v159[5] = v222;
  v159[6] = v160;
  v159[7] = v224;
  v161 = v219;
  v159[1] = v218;
  v159[2] = v161;
  v162 = v221;
  v159[3] = v220;
  v159[4] = v162;
  v163 = swift_allocObject();
  v164 = v223;
  v163[5] = v222;
  v163[6] = v164;
  v163[7] = v224;
  v165 = v219;
  v163[1] = v218;
  v163[2] = v165;
  v166 = v221;
  v163[3] = v220;
  v163[4] = v166;
  *(v154 + 32) = 20;
  *(v154 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v154 + 48) = v155;
  *(v154 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v154 + 64) = v159;
  *(v154 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v154 + 80) = v163;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd, &_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMR);
  v167 = swift_allocObject();
  *(v167 + 16) = v197;
  *(v167 + 32) = v154;
  v168 = v167 + 32;
  outlined init with copy of TaskPriority?(&v218, &v211, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);

  outlined init with copy of TaskPriority?(&v218, &v211, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
  v169 = specialized static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v168, &_sSay9MusicCore10ActionMenuC4ItemVGMd, &_sSay9MusicCore10ActionMenuC4ItemVGMR);
  swift_deallocClassInstance();
  (*(v148 + 8))(v193, v110);
  __swift_destroy_boxed_opaque_existential_0Tm(&v204);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd, &_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMR);
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_1004F2EE0;
  *(v173 + 32) = v186;
  *(v173 + 40) = v184;
  *(v173 + 48) = v141;
  *(v173 + 56) = v169;
  v174 = specialized static ActionBuilder.buildBlock(_:)();
  outlined destroy of TaskPriority?(&v225, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore10ActionMenuC4ItemVGMd, &_sSay9MusicCore10ActionMenuC4ItemVGMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v174;
}

uint64_t static MusicActions.folderActions(folder:library:presentationSource:folderPickerPresenter:onCreateFolder:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v130 = a6;
  v115 = a4;
  v128 = a2;
  v120 = a1;
  v9 = type metadata accessor for Playlist.Folder.Item();
  v116 = *(v9 - 8);
  v117 = v9;
  __chkstk_darwin();
  v118 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Playlist.Folder();
  v126 = *(v11 - 8);
  v127 = v11;
  __chkstk_darwin();
  v122 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v12;
  __chkstk_darwin();
  v129 = &v109 - v13;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR) - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v119 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v109 - v16;
  outlined init with copy of TaskPriority?(a1, &v109 - v16, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR);
  v123 = a3;
  outlined init with copy of PresentationSource(a3, &v153);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  outlined init with take of URL?(v17, v21 + v18, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR);
  *(v21 + v19) = 0;
  v22 = (v21 + v20);
  v124 = a5;
  v23 = v130;
  *v22 = a5;
  v22[1] = v23;
  outlined init with take of PresentationSource(&v153, v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  *&v153 = partial apply for closure #1 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  *(&v153 + 1) = v128;
  *&v154 = &async function pointer to partial apply for closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  *(&v154 + 1) = v21;
  *&v155 = &async function pointer to closure #3 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  *(&v155 + 1) = 0;
  LOBYTE(v156) = 10;
  *(&v156 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
  *&v157 = 0;
  *(&v157 + 1) = 0x4014000000000000;
  *&v158 = &async function pointer to closure #2 in static Actions.CreateFolder.action(context:);
  *(&v158 + 1) = 0;
  *&v159 = &async function pointer to closure #3 in static Actions.CreateFolder.action(context:);
  *(&v159 + 1) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMR);
  v25 = swift_allocObject();
  v125 = xmmword_1004F2400;
  *(v25 + 16) = xmmword_1004F2400;
  v26 = swift_allocObject();
  v27 = v158;
  v26[5] = v157;
  v26[6] = v27;
  v26[7] = v159;
  v28 = v154;
  v26[1] = v153;
  v26[2] = v28;
  v29 = v156;
  v26[3] = v155;
  v26[4] = v29;
  v30 = swift_allocObject();
  v31 = v158;
  v30[5] = v157;
  v30[6] = v31;
  v30[7] = v159;
  v32 = v154;
  v30[1] = v153;
  v30[2] = v32;
  v33 = v156;
  v30[3] = v155;
  v30[4] = v33;
  v34 = swift_allocObject();
  v35 = v158;
  v34[5] = v157;
  v34[6] = v35;
  v34[7] = v159;
  v36 = v154;
  v34[1] = v153;
  v34[2] = v36;
  v37 = v156;
  v34[3] = v155;
  v34[4] = v37;
  *(v25 + 32) = 10;
  *(v25 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v25 + 48) = v26;
  *(v25 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v25 + 64) = v30;
  *(v25 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v25 + 80) = v34;
  v38 = v119;
  outlined init with copy of TaskPriority?(v120, v119, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR);
  v39 = v126;
  v40 = v127;
  if ((*(v126 + 48))(v38, 1) == 1)
  {
    outlined init with copy of TaskPriority?(&v153, &v146, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);

    outlined init with copy of TaskPriority?(&v153, &v146, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v124, v130);
    outlined destroy of TaskPriority?(v38, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR);
    v41 = _swiftEmptyArrayStorage;
  }

  else
  {
    v42 = *(v39 + 32);
    v43 = v129;
    v121 = v24;
    v42(v129, v38, v40);
    v112 = v42;
    v113 = v39 + 32;
    v44 = *(v39 + 16);
    v119 = v25;
    v120 = v39 + 16;
    v45 = v122;
    v46 = v40;
    v44(v122, v43, v40);
    v110 = v44;
    outlined init with copy of PresentationSource(v123, &v146);
    v47 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v111 = *(v39 + 80);
    v114 += 7;
    v48 = (v114 + v47) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    v50 = v46;
    v51 = v46;
    v25 = v119;
    v42((v49 + v47), v45, v50);
    outlined init with take of PresentationSource(&v146, v49 + v48);
    v52 = v128;
    *&v132 = partial apply for closure #1 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
    *(&v132 + 1) = v128;
    *&v133 = &async function pointer to partial apply for closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
    *(&v133 + 1) = v49;
    *&v134 = &async function pointer to closure #3 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
    *(&v134 + 1) = 0;
    LOBYTE(v135) = 19;
    *(&v135 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
    *&v136 = 0;
    *(&v136 + 1) = 0x4014000000000000;
    *&v137 = &async function pointer to closure #2 in static Actions.RenameFolder.action(context:);
    *(&v137 + 1) = 0;
    *&v138 = &async function pointer to closure #3 in static Actions.RenameFolder.action(context:);
    *(&v138 + 1) = 0;
    v53 = swift_allocObject();
    *(v53 + 16) = v125;
    v54 = swift_allocObject();
    v55 = v137;
    v54[5] = v136;
    v54[6] = v55;
    v54[7] = v138;
    v56 = v133;
    v54[1] = v132;
    v54[2] = v56;
    v57 = v135;
    v54[3] = v134;
    v54[4] = v57;
    v58 = swift_allocObject();
    v59 = v137;
    v58[5] = v136;
    v58[6] = v59;
    v58[7] = v138;
    v60 = v133;
    v58[1] = v132;
    v58[2] = v60;
    v61 = v135;
    v58[3] = v134;
    v58[4] = v61;
    v62 = swift_allocObject();
    v63 = v137;
    v62[5] = v136;
    v62[6] = v63;
    v62[7] = v138;
    v64 = v133;
    v62[1] = v132;
    v62[2] = v64;
    v65 = v135;
    v62[3] = v134;
    v62[4] = v65;
    *(v53 + 32) = 19;
    *(v53 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v53 + 48) = v54;
    *(v53 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v53 + 64) = v58;
    *(v53 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v53 + 80) = v62;
    v66 = v115[3];
    v67 = v115[4];
    v68 = __swift_project_boxed_opaque_existential_0Tm(v115, v66);
    v69 = v118;
    v44(v118, v129, v51);
    (*(v116 + 104))(v69, enum case for Playlist.Folder.Item.folder(_:), v117);
    v70 = __chkstk_darwin();
    v72 = &v109 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v72, v68, v66, v70);
    Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v69, v52, v72, v66, v67, &v146);
    v139 = v146;
    v140 = v147;
    v141 = v148;
    LOBYTE(v142) = 20;
    *(&v142 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
    *&v143 = 0;
    *(&v143 + 1) = 0x4014000000000000;
    *&v144 = &async function pointer to closure #2 in static Actions.MoveToFolder.action(context:);
    *(&v144 + 1) = 0;
    *&v145 = &async function pointer to closure #3 in static Actions.MoveToFolder.action(context:);
    *(&v145 + 1) = 0;
    v74 = swift_allocObject();
    *(v74 + 16) = v125;
    v75 = swift_allocObject();
    v76 = v144;
    v75[5] = v143;
    v75[6] = v76;
    v75[7] = v145;
    v77 = v140;
    v75[1] = v139;
    v75[2] = v77;
    v78 = v142;
    v75[3] = v141;
    v75[4] = v78;
    v79 = swift_allocObject();
    v80 = v144;
    v79[5] = v143;
    v79[6] = v80;
    v79[7] = v145;
    v81 = v140;
    v79[1] = v139;
    v79[2] = v81;
    v82 = v142;
    v79[3] = v141;
    v79[4] = v82;
    v83 = swift_allocObject();
    v84 = v144;
    v83[5] = v143;
    v83[6] = v84;
    v83[7] = v145;
    v85 = v140;
    v83[1] = v139;
    v83[2] = v85;
    v86 = v142;
    v83[3] = v141;
    v83[4] = v86;
    *(v74 + 32) = 20;
    *(v74 + 40) = closure #1 in static ActionBuilder.buildExpression<A, B>(_:)specialized partial apply;
    *(v74 + 48) = v75;
    *(v74 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v74 + 64) = v79;
    *(v74 + 72) = &closure #3 in static ActionBuilder.buildExpression<A, B>(_:)specialized partial apply;
    *(v74 + 80) = v83;
    v87 = v122;
    v88 = v127;
    v110(v122, v129, v127);
    outlined init with copy of PresentationSource(v123, &v146);
    v89 = (v111 + 24) & ~v111;
    v90 = (v114 + v89) & 0xFFFFFFFFFFFFFFF8;
    v91 = swift_allocObject();
    *(v91 + 16) = v52;

    v112(v91 + v89, v87, v88);
    outlined init with take of PresentationSource(&v146, v91 + v90);
    *&v146 = partial apply for closure #1 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
    *(&v146 + 1) = v52;
    *&v147 = &async function pointer to partial apply for closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
    *(&v147 + 1) = v91;
    *&v148 = &async function pointer to closure #3 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
    *(&v148 + 1) = 0;
    LOBYTE(v149) = 50;
    *(&v149 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
    *&v150 = 0;
    *(&v150 + 1) = 0x4014000000000000;
    *&v151 = &async function pointer to closure #2 in static Actions.DeleteFolder.action(context:);
    *(&v151 + 1) = 0;
    *&v152 = &async function pointer to closure #3 in static Actions.DeleteFolder.action(context:);
    *(&v152 + 1) = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = v125;
    v93 = swift_allocObject();
    v94 = v151;
    v93[5] = v150;
    v93[6] = v94;
    v93[7] = v152;
    v95 = v147;
    v93[1] = v146;
    v93[2] = v95;
    v96 = v149;
    v93[3] = v148;
    v93[4] = v96;
    v97 = swift_allocObject();
    v98 = v151;
    v97[5] = v150;
    v97[6] = v98;
    v97[7] = v152;
    v99 = v147;
    v97[1] = v146;
    v97[2] = v99;
    v100 = v149;
    v97[3] = v148;
    v97[4] = v100;
    v101 = swift_allocObject();
    v102 = v151;
    v101[5] = v150;
    v101[6] = v102;
    v101[7] = v152;
    v103 = v147;
    v101[1] = v146;
    v101[2] = v103;
    v104 = v149;
    v101[3] = v148;
    v101[4] = v104;
    *(v92 + 32) = 50;
    *(v92 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v92 + 48) = v93;
    *(v92 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v92 + 64) = v97;
    *(v92 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v92 + 80) = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd, &_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMR);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_1004F2EB0;
    *(v105 + 32) = v53;
    *(v105 + 40) = v74;
    *(v105 + 48) = v92;
    swift_retain_n();
    outlined init with copy of TaskPriority?(&v153, v131, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
    outlined init with copy of TaskPriority?(&v132, v131, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
    outlined init with copy of TaskPriority?(&v139, v131, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
    outlined init with copy of TaskPriority?(&v146, v131, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);

    outlined init with copy of TaskPriority?(&v153, v131, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
    outlined init with copy of TaskPriority?(&v132, v131, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
    outlined init with copy of TaskPriority?(&v139, v131, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
    outlined init with copy of TaskPriority?(&v146, v131, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v124, v130);
    v41 = specialized static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore10ActionMenuC4ItemVGMd, &_sSay9MusicCore10ActionMenuC4ItemVGMR);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v126 + 8))(v129, v127);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd, &_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMR);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1004F2EF0;
  *(v106 + 32) = v25;
  *(v106 + 40) = v41;
  v107 = specialized static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore10ActionMenuC4ItemVGMd, &_sSay9MusicCore10ActionMenuC4ItemVGMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v107;
}

uint64_t static MusicActions.tasteActions(item:library:alertPresenter:noticePresenting:ratingViewController:presentationSource:metricsReportingContext:onFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v149 = a7;
  v139 = a5;
  v140 = a6;
  v143 = a4;
  v144 = a2;
  v146 = a3;
  v151 = a9;
  v152 = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  __chkstk_darwin();
  v153 = &v138 - v16;
  v17 = a1;
  v150 = a1;
  v18 = a1[3];
  *&v154 = v17[4];
  __swift_project_boxed_opaque_existential_0Tm(v17, v18);
  v19 = __chkstk_darwin();
  v21 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  outlined init with copy of ActionPerforming(a3, &v182);
  outlined init with copy of TaskPriority?(a4, &v175, &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
  outlined init with copy of PresentationSource(a7, &v189);
  v23 = a8;
  v24 = v153;
  outlined init with copy of TaskPriority?(a8, v153, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v21, a2, &v182, &v175, &v189, v24, a9, a10, &v168, v18, v154);
  LOBYTE(v171) = 2;
  *(&v171 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
  *&v172 = 0;
  *(&v172 + 1) = 0x4014000000000000;
  *&v173 = &async function pointer to closure #2 in static Actions.Favorite.action(context:);
  *(&v173 + 1) = 0;
  *&v174 = &async function pointer to closure #3 in static Actions.Favorite.action(context:);
  *(&v174 + 1) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMR);
  v26 = swift_allocObject();
  v154 = xmmword_1004F2400;
  *(v26 + 16) = xmmword_1004F2400;
  v27 = swift_allocObject();
  v28 = v173;
  v27[5] = v172;
  v27[6] = v28;
  v27[7] = v174;
  v29 = v169;
  v27[1] = v168;
  v27[2] = v29;
  v30 = v171;
  v27[3] = v170;
  v27[4] = v30;
  v31 = swift_allocObject();
  v32 = v173;
  v31[5] = v172;
  v31[6] = v32;
  v31[7] = v174;
  v33 = v169;
  v31[1] = v168;
  v31[2] = v33;
  v34 = v171;
  v31[3] = v170;
  v31[4] = v34;
  v35 = swift_allocObject();
  v36 = v173;
  v35[5] = v172;
  v35[6] = v36;
  v35[7] = v174;
  v37 = v169;
  v35[1] = v168;
  v35[2] = v37;
  v38 = v171;
  v35[3] = v170;
  v35[4] = v38;
  *(v26 + 32) = 2;
  *(v26 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v26 + 48) = v27;
  *(v26 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v26 + 64) = v31;
  *(v26 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v26 + 80) = v35;
  v147 = v26;
  v39 = v150[3];
  v40 = v150[4];
  v41 = v150;
  __swift_project_boxed_opaque_existential_0Tm(v150, v39);
  v42 = __chkstk_darwin();
  v44 = &v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44, v42);
  outlined init with copy of ActionPerforming(v146, &v182);
  v46 = v143;
  outlined init with copy of TaskPriority?(v143, &v156, &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
  outlined init with copy of PresentationSource(v149, &v189);
  v142 = v23;
  v47 = v153;
  outlined init with copy of TaskPriority?(v23, v153, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v48 = v144;
  Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v44, v144, &v182, &v156, &v189, v47, v151, v152, &v175, v39, v40);
  LOBYTE(v178) = 3;
  *(&v178 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
  *&v179 = 0;
  *(&v179 + 1) = 0x4014000000000000;
  *&v180 = &async function pointer to closure #2 in static Actions.UndoFavorite.action(context:);
  *(&v180 + 1) = 0;
  *&v181 = &async function pointer to closure #3 in static Actions.UndoFavorite.action(context:);
  *(&v181 + 1) = 0;
  v148 = v25;
  v49 = swift_allocObject();
  *(v49 + 16) = v154;
  v50 = swift_allocObject();
  v51 = v180;
  v50[5] = v179;
  v50[6] = v51;
  v50[7] = v181;
  v52 = v176;
  v50[1] = v175;
  v50[2] = v52;
  v53 = v178;
  v50[3] = v177;
  v50[4] = v53;
  v54 = swift_allocObject();
  v55 = v180;
  v54[5] = v179;
  v54[6] = v55;
  v54[7] = v181;
  v56 = v176;
  v54[1] = v175;
  v54[2] = v56;
  v57 = v178;
  v54[3] = v177;
  v54[4] = v57;
  v58 = swift_allocObject();
  v59 = v180;
  v58[5] = v179;
  v58[6] = v59;
  v58[7] = v181;
  v60 = v176;
  v58[1] = v175;
  v58[2] = v60;
  v61 = v178;
  v58[3] = v177;
  v58[4] = v61;
  *(v49 + 32) = 3;
  *(v49 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v49 + 48) = v50;
  *(v49 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v49 + 64) = v54;
  *(v49 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v49 + 80) = v58;
  v146 = v49;
  v62 = v41[3];
  v63 = v41[4];
  __swift_project_boxed_opaque_existential_0Tm(v41, v62);
  v64 = __chkstk_darwin();
  v66 = &v138 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v67 + 16))(v66, v64);
  outlined init with copy of TaskPriority?(v46, &v189, &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
  v68 = v23;
  v69 = v153;
  outlined init with copy of TaskPriority?(v68, v153, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v66, v48, &v189, v69, v62, v63, &v182);
  LOBYTE(v185) = 36;
  *(&v185 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
  *&v186 = 0;
  *(&v186 + 1) = 0x4014000000000000;
  *&v187 = &async function pointer to closure #2 in static Actions.SuggestLess.action(context:);
  *(&v187 + 1) = 0;
  *&v188 = &async function pointer to closure #3 in static Actions.SuggestLess.action(context:);
  *(&v188 + 1) = 0;
  v70 = swift_allocObject();
  *(v70 + 16) = v154;
  v71 = swift_allocObject();
  v72 = v187;
  v71[5] = v186;
  v71[6] = v72;
  v71[7] = v188;
  v73 = v183;
  v71[1] = v182;
  v71[2] = v73;
  v74 = v185;
  v71[3] = v184;
  v71[4] = v74;
  v75 = swift_allocObject();
  v76 = v187;
  v75[5] = v186;
  v75[6] = v76;
  v75[7] = v188;
  v77 = v183;
  v75[1] = v182;
  v75[2] = v77;
  v78 = v185;
  v75[3] = v184;
  v75[4] = v78;
  v79 = swift_allocObject();
  v80 = v187;
  v79[5] = v186;
  v79[6] = v80;
  v79[7] = v188;
  v81 = v183;
  v79[1] = v182;
  v79[2] = v81;
  v82 = v185;
  v79[3] = v184;
  v79[4] = v82;
  *(v70 + 32) = 36;
  *(v70 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v70 + 48) = v71;
  *(v70 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v70 + 64) = v75;
  *(v70 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v70 + 80) = v79;
  v145 = v70;
  v83 = v41[3];
  v141 = v41[4];
  __swift_project_boxed_opaque_existential_0Tm(v41, v83);
  v84 = __chkstk_darwin();
  v86 = &v138 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v87 + 16))(v86, v84);
  outlined init with copy of TaskPriority?(v46, &v156, &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
  outlined init with copy of TaskPriority?(v142, v69, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v88 = v48;
  swift_retain_n();
  v90 = v151;
  v89 = v152;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v151, v152);
  outlined init with copy of TaskPriority?(&v168, &v189, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
  outlined init with copy of TaskPriority?(&v175, &v189, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
  outlined init with copy of TaskPriority?(&v182, &v189, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);

  outlined init with copy of TaskPriority?(&v168, &v189, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v90, v89);
  outlined init with copy of TaskPriority?(&v175, &v189, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
  outlined init with copy of TaskPriority?(&v182, &v189, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
  Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v86, v48, v153, v83, v141, &v189);
  LOBYTE(v192) = 37;
  *(&v192 + 1) = closure #1 in static Actions.RenameFolder.action(context:);
  *&v193 = 0;
  *(&v193 + 1) = 0x4014000000000000;
  *&v194 = &async function pointer to closure #2 in static Actions.UndoSuggestLess.action(context:);
  *(&v194 + 1) = 0;
  *&v195 = &async function pointer to closure #3 in static Actions.UndoSuggestLess.action(context:);
  *(&v195 + 1) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = v154;
  v92 = swift_allocObject();
  v93 = v194;
  v92[5] = v193;
  v92[6] = v93;
  v92[7] = v195;
  v94 = v190;
  v92[1] = v189;
  v92[2] = v94;
  v95 = v192;
  v92[3] = v191;
  v92[4] = v95;
  v96 = swift_allocObject();
  v97 = v194;
  v96[5] = v193;
  v96[6] = v97;
  v96[7] = v195;
  v98 = v190;
  v96[1] = v189;
  v96[2] = v98;
  v99 = v192;
  v96[3] = v191;
  v96[4] = v99;
  v100 = swift_allocObject();
  v101 = v194;
  v100[5] = v193;
  v100[6] = v101;
  v100[7] = v195;
  v102 = v190;
  v100[1] = v189;
  v100[2] = v102;
  v103 = v192;
  v100[3] = v191;
  v100[4] = v103;
  *(v91 + 32) = 37;
  *(v91 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v91 + 48) = v92;
  *(v91 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v91 + 64) = v96;
  *(v91 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
  *(v91 + 80) = v100;
  outlined init with copy of ActionPerforming(v150, &v163);
  outlined init with copy of TaskPriority?(&v189, &v156, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
  outlined init with copy of TaskPriority?(&v189, &v156, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal011FavoritableA4Item_pMd, &_s16MusicKitInternal011FavoritableA4Item_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A17LibraryActionable_AA0A11UserRatablepMd, &_s16MusicKitInternal0A17LibraryActionable_AA0A11UserRatablepMR);
  if (swift_dynamicCast())
  {
    _s8MusicKit0A15PlaylistAddable_0aB8Internal0A17LibraryActionablepWOb_0(v162, &v164);
    v104 = v165;
    v105 = v166;
    v106 = v167;
    __swift_project_boxed_opaque_existential_0Tm(&v164, v165);
    v107 = __chkstk_darwin();
    v109 = &v138 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v110 + 16))(v109, v107);
    outlined init with copy of PresentationSource(v149, &v156);
    v111 = swift_allocObject();
    v111[2] = v104;
    v111[3] = v105;
    v112 = v139;
    v113 = v140;
    v111[4] = v106;
    v111[5] = v112;
    v111[6] = v113;
    *&v156 = Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(v109, v88, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MusicUserRatable) -> (@owned RatingViewController), v111, &v156, v104, v105, v106);
    *(&v156 + 1) = v114;
    *&v157 = v115;
    *(&v157 + 1) = v116;
    LOBYTE(v158) = 38;
    *(&v158 + 1) = closure #1 in static Actions.AddToLibrary.action(context:);
    *&v159 = 0;
    *(&v159 + 1) = 0x4014000000000000;
    *&v160 = &async function pointer to closure #2 in static Actions.RateSong.action(context:);
    *(&v160 + 1) = 0;
    *&v161 = &async function pointer to closure #3 in static Actions.RateSong.action(context:);
    *(&v161 + 1) = 0;
    v117 = swift_allocObject();
    *(v117 + 16) = v154;
    v118 = swift_allocObject();
    v119 = v159;
    v118[3] = v158;
    v118[4] = v119;
    v120 = v161;
    v118[5] = v160;
    v118[6] = v120;
    v121 = v157;
    v118[1] = v156;
    v118[2] = v121;
    v122 = swift_allocObject();
    v123 = v159;
    v122[3] = v158;
    v122[4] = v123;
    v124 = v161;
    v122[5] = v160;
    v122[6] = v124;
    v125 = v157;
    v122[1] = v156;
    v122[2] = v125;
    v126 = swift_allocObject();
    v127 = v159;
    v126[3] = v158;
    v126[4] = v127;
    v128 = v161;
    v126[5] = v160;
    v126[6] = v128;
    v129 = v157;
    v126[1] = v156;
    v126[2] = v129;
    *(v117 + 32) = 38;
    *(v117 + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v117 + 48) = v118;
    *(v117 + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v117 + 64) = v122;
    *(v117 + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
    *(v117 + 80) = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd, &_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMR);
    v130 = swift_allocObject();
    *(v130 + 16) = v154;
    *(v130 + 32) = v117;
    v131 = v130 + 32;
    outlined init with copy of TaskPriority?(&v156, v155, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);

    outlined init with copy of TaskPriority?(&v156, v155, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);

    v132 = specialized static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v131, &_sSay9MusicCore10ActionMenuC4ItemVGMd, &_sSay9MusicCore10ActionMenuC4ItemVGMR);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_0Tm(&v164);
  }

  else
  {
    memset(v162, 0, sizeof(v162));
    outlined destroy of TaskPriority?(v162, &_s16MusicKitInternal0A17LibraryActionable_AA0A11UserRatablepSgMd, &_s16MusicKitInternal0A17LibraryActionable_AA0A11UserRatablepSgMR);
    v132 = _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd, &_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMR);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_1004F2F00;
  v134 = v146;
  *(v133 + 32) = v147;
  v135 = v145;
  *(v133 + 40) = v134;
  *(v133 + 48) = v135;
  *(v133 + 56) = v91;
  *(v133 + 64) = v132;
  v136 = specialized static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore10ActionMenuC4ItemVGMd, &_sSay9MusicCore10ActionMenuC4ItemVGMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v136;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed MusicUserRatable) -> (@owned RatingViewController)(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a4;
  v12[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v10 = a2(v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v10;
}

uint64_t specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[8];
  a2[3] = &type metadata for Actions.Queue.Context;
  a2[4] = &protocol witness table for Actions.Queue.Context;
  v9 = swift_allocObject();
  *a2 = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  v11 = *(a1 + 3);
  *(v9 + 48) = *(a1 + 2);
  *(v9 + 64) = v11;
  *(v9 + 80) = v8;
  outlined copy of Player.InsertCommand.Location(v4);
}

{
  v4 = *a1;
  v5 = a1[3];
  a2[3] = &type metadata for Actions.RateSong.Context;
  a2[4] = &protocol witness table for Actions.RateSong.Context;
  v6 = swift_allocObject();
  *a2 = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = *(a1 + 1);
  *(v6 + 40) = v5;
}

uint64_t specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v6;
  *(v4 + 144) = *(a4 + 128);
  v7 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v7;
  v8 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v8;
  v9 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = swift_task_alloc();
  *(v4 + 152) = v10;
  *v10 = v4;
  v10[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

uint64_t specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 208) = swift_task_alloc();
  v3 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v3;
  v4 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v4;
  v5 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:), 0, 0);
}

uint64_t specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v6 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v6;
  v7 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v7;
  v8 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v8;
  v9 = swift_task_alloc();
  *(v4 + 112) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized Action.execute(checkSupportedStatus:)(a1, 1);
}

uint64_t specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v8 = a1[5];
  a5[3] = a2;
  a5[4] = a3;
  v9 = swift_allocObject();
  *a5 = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = *(a1 + 1);
  *(v9 + 40) = *(a1 + 3);
  *(v9 + 56) = v8;
}

uint64_t outlined assign with take of PlaybackIntentDescriptor.IntentType?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)@<X0>(uint64_t *a1@<X8>)
{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), a1);
}

{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR) - 8);
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)), type metadata accessor for Actions.Pin.Context, &protocol witness table for Actions.Pin.Context, type metadata accessor for Actions.Pin.Context, a1);
}

{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR) - 8);
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)), type metadata accessor for Actions.Unpin.Context, &protocol witness table for Actions.Unpin.Context, type metadata accessor for Actions.Unpin.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.AddToLibrary.Context, &protocol witness table for Actions.AddToLibrary.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.MoveToFolder.Context, &protocol witness table for Actions.MoveToFolder.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.AddToPlaylist.Context, &protocol witness table for Actions.AddToPlaylist.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.DeleteFromLibrary.Context, &protocol witness table for Actions.DeleteFromLibrary.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.RemoveDownload.Context, &protocol witness table for Actions.RemoveDownload.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.Download.Context, &protocol witness table for Actions.Download.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.CreateFolder.Context, &protocol witness table for Actions.CreateFolder.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.RenameFolder.Context, &protocol witness table for Actions.RenameFolder.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.DeleteFolder.Context, &protocol witness table for Actions.DeleteFolder.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.Favorite.Context, &protocol witness table for Actions.Favorite.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.UndoFavorite.Context, &protocol witness table for Actions.UndoFavorite.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.SuggestLess.Context, &protocol witness table for Actions.SuggestLess.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), &type metadata for Actions.UndoSuggestLess.Context, &protocol witness table for Actions.UndoSuggestLess.Context, a1);
}

{
  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)((v1 + 16), a1);
}

{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:)(v4, a1);
}

uint64_t partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(v0 + 16);
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(v0 + v3);
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(v0 + v3);
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)((v0 + 16));
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(v0 + v3);
}

uint64_t partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:)()
{
  v1 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v1;
  v7[4] = *(v0 + 80);
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v2;
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = v5;
  v12 = *(v0 + 144);
  v8 = v4;
  v9 = v3;
  return v4(v7);
}

{
  return partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:)(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
}

{
  return partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:)(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
}

{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v7[2] = *(v0 + 48);
  v13 = *(v0 + 120);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v11 = *(v0 + 88);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v13 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v11 = *(v0 + 72);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:)(v2);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  return (*(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + *(v3 + 40)))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
}

uint64_t objectdestroy_48Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = type metadata accessor for MusicPin.Item();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t outlined init with copy of MusicLibraryAddable & MusicLibraryActionable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100047FC8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

void outlined consume of PresentationSource.Position.Source(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    swift_unknownObjectRelease();
  }

  else if (a6 <= 1u)
  {
  }
}

uint64_t partial apply for closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(v0 + v3, v6, v8, v9, v0 + v7);
}

uint64_t sub_1000483F8()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)()
{
  v2 = *(type metadata accessor for Playlist.Folder() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(v0 + v3, v0 + v4);
}

uint64_t sub_1000486B0()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)()
{
  v2 = *(type metadata accessor for Playlist.Folder() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(v5, v0 + v3, v0 + v4);
}

uint64_t objectdestroy_68Tm()
{

  return swift_deallocObject();
}

_OWORD *_s8MusicKit0A15PlaylistAddable_0aB8Internal0A17LibraryActionablepWOb_0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_100048DD4()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_225Tm()
{

  return swift_deallocObject();
}

uint64_t sub_100048FA4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100049074(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Actions.PlaybackContext(uint64_t a1)
{
  type metadata accessor for PlaybackController();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlaybackIntentDescriptor.IntentType?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MPCPlaybackIntent.PlayActivityInformation?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Player.CommandIssuer?(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for PlaybackIntentDescriptor.IntentType?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlaybackIntentDescriptor.IntentType?)
  {
    type metadata accessor for PlaybackIntentDescriptor.IntentType(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PlaybackIntentDescriptor.IntentType?);
    }
  }
}

void type metadata accessor for MPCPlaybackIntent.PlayActivityInformation?()
{
  if (!lazy cache variable for type metadata for MPCPlaybackIntent.PlayActivityInformation?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MPCPlaybackIntent.PlayActivityInformation?);
    }
  }
}

void type metadata accessor for Player.CommandIssuer?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Player.CommandIssuer?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore6PlayerC13CommandIssuer_pMd, &_s9MusicCore6PlayerC13CommandIssuer_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Player.CommandIssuer?);
    }
  }
}

uint64_t sub_1000492F4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, (v1 + 32));
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:)(a1, v4, v5, v1 + 32);
}

uint64_t sub_10004957C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000496A0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_252Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_258Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_369Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = type metadata accessor for MusicPin.Item();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t outlined init with copy of PlaybackIntentDescriptor.IntentType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004A5DC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10004A720()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

id outlined copy of Player.InsertCommand.Location(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

uint64_t Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t (**a9)()@<X8>, uint64_t a10)
{
  v37 = a8;
  v38 = a4;
  v40 = a3;
  v41 = a6;
  v39 = a5;
  v44 = a2;
  v36[0] = a1;
  v42 = a9;
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v43 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = v36 - v15;
  (*(v12 + 16))(v36 - v15, v14);
  v17 = *(v12 + 80);
  v18 = (v17 + 40) & ~v17;
  v36[1] = v17 | 7;
  v19 = v13 + 7;
  v20 = (v13 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a7;
  *(v21 + 3) = a8;
  *(v21 + 4) = a10;
  v22 = *(v12 + 32);
  v22(v21 + v18, v16, a7);
  v23 = v43;
  *(v21 + v20) = v44;
  v22(v23, v36[0], a7);
  v24 = (v17 + 56) & ~v17;
  v25 = (v19 + v24) & 0xFFFFFFFFFFFFFFF8;
  v36[0] = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v27 = (((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v26 + 80) + 96) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v29 = v37;
  v30 = v38;
  *(v28 + 2) = a7;
  *(v28 + 3) = v29;
  *(v28 + 4) = a10;
  *(v28 + 5) = v30;
  v31 = v39;
  *(v28 + 6) = v39;
  v22(v28 + v24, v43, a7);
  *(v28 + v25) = v44;
  outlined init with take of PresentationSource(v40, v28 + v36[0]);
  outlined init with take of URL?(v41, v28 + v27, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = &async function pointer to partial apply for closure #3 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  *(v33 + 24) = v32;
  swift_unknownObjectRetain();

  v35 = v42;
  *v42 = partial apply for closure #1 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  v35[1] = v21;
  v35[2] = &async function pointer to partial apply for closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:);
  v35[3] = v28;
  v35[4] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
  v35[5] = v33;
  return result;
}

uint64_t static Actions.AddToLibrary.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 0;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.AddToLibrary.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.AddToLibrary.action(context:);
  *(a2 + 104) = 0;
}

uint64_t closure #2 in static Actions.AddToLibrary.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return v5();
}

uint64_t closure #3 in static Actions.AddToLibrary.action(context:)(uint64_t a1)
{
  v4 = (*(a1 + 32) + **(a1 + 32));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v4();
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.AddToLibrary@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.AddToLibrary.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.AddToLibrary.action(context:);
  *(a2 + 104) = 0;
}

unint64_t closure #1 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v36 = a2;
  v32 = type metadata accessor for MusicLibrary.AddAction();
  v34 = *(v32 - 8);
  __chkstk_darwin();
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR);
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin();
  v11 = &v29 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  __chkstk_darwin();
  v13 = &v29 - v12;
  v14 = *(a3 - 8);
  __chkstk_darwin();
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Album();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin();
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v14 + 16);
  v33 = a1;
  v22(v16, a1, a3, v19);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if ((v23 & 1) == 0)
  {
    v24(v13, 1, 1, v17);
    outlined destroy of TaskPriority?(v13, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
    goto LABEL_5;
  }

  v24(v13, 0, 1, v17);
  (*(v18 + 32))(v21, v13, v17);
  v25 = Album.childrenAddStatus(_:)(v36);
  (*(v18 + 8))(v21, v17);
  if (v25 != 1)
  {
LABEL_5:
    static MusicLibraryAction<>.add.getter();
    v27 = v32;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v34 + 8))(v8, v27);
    v26 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
    (*(v30 + 8))(v11, v31);
    return v26;
  }

  return 0;
}

uint64_t sub_10004B34C()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t Album.childrenAddStatus(_:)(uint64_t a1)
{
  v39 = a1;
  v38 = type metadata accessor for MusicLibrary.AddAction();
  v1 = *(v38 - 8);
  __chkstk_darwin();
  v37 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR);
  v3 = *(v36 - 8);
  __chkstk_darwin();
  v35 = &v27 - v4;
  v34 = type metadata accessor for Track();
  v5 = *(v34 - 8);
  __chkstk_darwin();
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMR);
  __chkstk_darwin();
  v9 = &v27 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMR);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGMR);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v27 - v14;
  Album.tracks.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of TaskPriority?(v11, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMR);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  lazy protocol witness table accessor for type MusicItemCollection<Track> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Track> and conformance MusicItemCollection<A>, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v40[0] == v40[4])
  {
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v28 = v13;
  (*(v13 + 16))(v9, v15, v12);
  v17 = *(v7 + 36);
  v27 = v15;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v9[v17] == v40[0])
  {
LABEL_11:
    outlined destroy of TaskPriority?(v9, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMR);
    (*(v28 + 8))(v27, v12);
    return 2;
  }

  else
  {
    v31 = (v5 + 8);
    v32 = (v5 + 16);
    v29 = (v3 + 8);
    v30 = (v1 + 8);
    v18 = v33;
    while (1)
    {
      v19 = dispatch thunk of Collection.subscript.read();
      v20 = v34;
      (*v32)(v18);
      v19(v40, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v21 = v37;
      static MusicLibraryAction<>.add.getter();
      v22 = v35;
      v23 = v38;
      MusicLibrary.supportedStatus<A, B>(for:action:)();
      (*v31)(v18, v20);
      (*v30)(v21, v23);
      v24 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
      v26 = v25;
      (*v29)(v22, v36);
      if (v26 == 1)
      {
        break;
      }

      outlined consume of ActionCondition.Result(v24, v26);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v9[v17] == v40[0])
      {
        goto LABEL_11;
      }
    }

    outlined destroy of TaskPriority?(v9, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC5TrackOGGMR);
    (*(v28 + 8))(v27, v12);
    return 1;
  }
}

unint64_t MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v28 = *(v2 - 8);
  __chkstk_darwin();
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v27 - v4;
  v6 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin();
  v16 = &v27 - v15;
  (*(v13 + 16))(&v27 - v15, v1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    (*(v7 + 32))(v11, v16, v6);
    (*(v7 + 16))(v9, v11, v6);
    v18 = (*(v7 + 88))(v9, v6);
    if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v7 + 96))(v9, v6);
      v19 = v28;
      (*(v28 + 32))(v5, v9, v2);
      v20 = v27;
      (*(v19 + 16))(v27, v5, v2);
      v21 = (*(v19 + 88))(v20, v2);
      if (v21 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v21 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v21 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v29 = 0;
        v30 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v29 = 0xD000000000000016;
        v30 = 0x80000001004C5A10;
        lazy protocol witness table accessor for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
        v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v22);

        v23 = v29;
        v24 = *(v19 + 8);
        v24(v5, v2);
        (*(v7 + 8))(v11, v6);
        v24(v20, v2);
        return v23;
      }

      (*(v19 + 8))(v5, v2);
      (*(v7 + 8))(v11, v6);
      return 0;
    }

    if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      goto LABEL_10;
    }

    if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      (*(v7 + 8))(v11, v6);
      return 0xD000000000000012;
    }

    else
    {
      if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:))
      {
LABEL_10:
        (*(v7 + 8))(v11, v6);
        return 0xD000000000000010;
      }

      v26 = *(v7 + 8);
      v26(v11, v6);
      v26(v9, v6);
      return 0x206E776F6E6B6E55;
    }
  }

  else
  {
    if (v17 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      return 0;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v1 = type metadata accessor for MusicLibrary.ShareAction.UnsupportedReason();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v24 - v4;
  __chkstk_darwin();
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE11ShareActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE11ShareActionVGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v24 - v12;
  v14 = *(v8 + 16);
  v26 = v0;
  v14(&v24 - v12, v0, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v2 + 32))(v6, v13, v1);
    v16 = *(v2 + 16);
    v17 = v27;
    v16(v27, v6, v1);
    v18 = (*(v2 + 88))(v17, v1);
    if (v18 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedType(_:))
    {
      v19 = 0xD000000000000010;
LABEL_8:
      (*(v2 + 8))(v6, v1);
      return v19;
    }

    if (v18 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedItem(_:))
    {
      v19 = 0xD000000000000010;
      goto LABEL_8;
    }

    if (v18 != enum case for MusicLibrary.ShareAction.UnsupportedReason.canBecomeShareableOncePublic(_:))
    {
      if (v18 != enum case for MusicLibrary.ShareAction.UnsupportedReason.networkRequired(_:))
      {
        v28 = 0;
        v29 = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        v28 = 0x206E776F6E6B6E55;
        v29 = 0xEF206E6F73616572;
        v16(v25, v6, v1);
        v22._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v22);

        v19 = v28;
        v23 = *(v2 + 8);
        v23(v6, v1);
        v23(v27, v1);
        return v19;
      }

      v19 = 0xD000000000000010;
      goto LABEL_8;
    }

    (*(v2 + 8))(v6, v1);
  }

  else if (v15 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v28 = 0xD000000000000019;
    v29 = 0x80000001004C6D20;
    (v14)(v10, v26, v7);
    v20._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v20);

    v19 = v28;
    (*(v8 + 8))(v13, v7);
    return v19;
  }

  return 0;
}

{
  v1 = type metadata accessor for MusicLibrary.UnpinAction.UnsupportedReason();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v24 - v4;
  __chkstk_darwin();
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE11UnpinActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE11UnpinActionVGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v24 - v12;
  v14 = *(v8 + 16);
  v26 = v0;
  v14(&v24 - v12, v0, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v2 + 32))(v6, v13, v1);
    v16 = *(v2 + 16);
    v17 = v27;
    v16(v27, v6, v1);
    v18 = (*(v2 + 88))(v17, v1);
    if (v18 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.notPinned(_:))
    {
      (*(v2 + 8))(v6, v1);
      return 0x6E6E695020746F4ELL;
    }

    else if (v18 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.sharedLibrary(_:))
    {
      (*(v2 + 8))(v6, v1);
      return 0x6C20646572616853;
    }

    else if (v18 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.unknown(_:))
    {
      v19 = 0x206E776F6E6B6E55;
      (*(v2 + 8))(v6, v1);
    }

    else if (v18 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.unsupportedType(_:))
    {
      v19 = 0xD000000000000010;
      (*(v2 + 8))(v6, v1);
    }

    else
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v28 = 0x206E776F6E6B6E55;
      v29 = 0xEF206E6F73616572;
      v16(v25, v6, v1);
      v22._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v22);

      v19 = v28;
      v23 = *(v2 + 8);
      v23(v6, v1);
      v23(v27, v1);
    }
  }

  else if (v15 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v28 = 0xD000000000000019;
    v29 = 0x80000001004C6D20;
    (v14)(v10, v26, v7);
    v20._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v20);

    v19 = v28;
    (*(v8 + 8))(v13, v7);
  }

  return v19;
}

uint64_t closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[86] = v18;
  v8[85] = a8;
  v8[84] = a7;
  v8[83] = a6;
  v8[82] = a5;
  v8[81] = a4;
  v8[80] = a3;
  v8[79] = a2;
  v8[78] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();
  v8[95] = type metadata accessor for MetricsEvent.Click(0);
  v8[96] = swift_task_alloc();
  v8[97] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v8[101] = swift_task_alloc();
  v10 = type metadata accessor for Actions.MetricsReportingContext(0);
  v8[102] = v10;
  v8[103] = *(v10 - 8);
  v8[104] = swift_task_alloc();
  v8[105] = type metadata accessor for Notice.Variant(0);
  v8[106] = swift_task_alloc();
  v11 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v8[107] = v11;
  v8[108] = *(v11 - 8);
  v8[109] = swift_task_alloc();
  v8[110] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSg_AItMR);
  v8[111] = swift_task_alloc();
  v8[112] = swift_task_alloc();
  v12 = type metadata accessor for MusicLibrary.AddAction();
  v8[113] = v12;
  v8[114] = *(v12 - 8);
  v8[115] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR);
  v8[116] = v13;
  v8[117] = *(v13 - 8);
  v8[118] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGSgMR);
  v8[119] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5TrackOGMd, &_s8MusicKit0A14ItemCollectionVyAA5TrackOGMR);
  v8[120] = v14;
  v8[121] = *(v14 - 8);
  v8[122] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  v8[123] = swift_task_alloc();
  v8[124] = *(a7 - 8);
  v8[125] = swift_task_alloc();
  v15 = type metadata accessor for Album();
  v8[126] = v15;
  v8[127] = *(v15 - 8);
  v8[128] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO15UnaddableReasonOSgMR);
  v8[129] = swift_task_alloc();
  v8[130] = swift_task_alloc();
  v8[131] = swift_task_alloc();
  v8[132] = swift_task_alloc();
  v8[133] = swift_task_alloc();
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:), 0, 0);
}