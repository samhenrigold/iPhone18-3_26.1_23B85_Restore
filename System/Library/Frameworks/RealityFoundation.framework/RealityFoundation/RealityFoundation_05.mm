unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySSs13OpaquePointerVGMR);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
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
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
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

{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
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
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
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
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return outlined consume of Data._Representation(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, char a3)
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
    goto LABEL_15;
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
        type metadata accessor for Entity();
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
  if (v15)
  {
    *(v19[7] + v9) = a1 & 1;
    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + v9) = a1 & 1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1, a5, a6);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      specialized _NativeDictionary.copy()(a5, a6);
      result = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * result) = a1;
    return result;
  }

  v25[(result >> 6) + 8] |= 1 << result;
  v26 = (v25[6] + 16 * result);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * result) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v28;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, int a2, uint64_t a3, int a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 0xFFFF0001, a3, a4 & 0xFFFF01);
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
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 0xFFFF0001, a3, a4 & 0xFFFF01);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v13, a2 & 0xFFFF0001, a3, a4 & 0xFFFF01, a1, v23);
  }
}

{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 0xFFFF0001, a3, a4 & 0xFFFF01);
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
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 0xFFFF0001, a3, a4 & 0xFFFF01);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v13, a2 & 0xFFFF0001, a3, a4 & 0xFFFF01, a1, v23);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, char a3)
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
    *(v19[6] + 8 * result) = a2;
    v21 = v19[7] + (result << 7);
    v22 = *a1;
    v23 = a1[1];
    v24 = a1[3];
    *(v21 + 32) = a1[2];
    *(v21 + 48) = v24;
    *v21 = v22;
    *(v21 + 16) = v23;
    v25 = a1[4];
    v26 = a1[5];
    v27 = a1[6];
    *(v21 + 112) = *(a1 + 14);
    *(v21 + 80) = v26;
    *(v21 + 96) = v27;
    *(v21 + 64) = v25;
    v28 = v19[2];
    v13 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v13)
    {
      v19[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + (result << 7);

  return outlined assign with take of PhotogrammetrySession.Pose(a1, v20);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), uint64_t *a5, uint64_t *a6, unint64_t a7)
{
  v11 = v7;
  v15 = *v7;
  result = a4(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 < v21 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, a3 & 1, a5, a6);
      result = a4(a2);
      if ((v22 & 1) != (v25 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v24 = result;
      specialized _NativeDictionary.copy()(a5, a6);
      result = v24;
    }
  }

  v26 = *v11;
  if ((v22 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + 8 * result) = a2;
    *(v26[7] + 8 * result) = a1;
    v27 = v26[2];
    v20 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v20)
    {
      v26[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  *(v26[7] + 8 * result) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySS17RealityFoundation16ReferenceImageARVGMd, &_ss18_DictionaryStorageCySS17RealityFoundation16ReferenceImageARVGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySS17RealityFoundation17ReferenceObjectARVGMd, &_ss18_DictionaryStorageCySS17RealityFoundation17ReferenceObjectARVGMR);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1, a5, a6);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v23 = v15;
      specialized _NativeDictionary.copy()(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a4 + 48);
  a5[(result >> 6) + 8] |= 1 << result;
  v6 = (a5[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a5[7] + 56 * result;
  v8 = *(a4 + 16);
  *v7 = *a4;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a4 + 32);
  *(v7 + 48) = v5;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of ForceEffectBase(a3, a4[7] + 40 * a1);
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 80 * result);
  *(v6 + 57) = *(a4 + 57);
  v7 = a4[3];
  v6[2] = a4[2];
  v6[3] = v7;
  v8 = a4[1];
  *v6 = *a4;
  v6[1] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of __RealityFileURLResolver.Weak<__RealityFileURLResolver>(a3, a4[7] + 8 * a1);
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

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of __RKEntityAction.ActionStateObservation(a3, a4[7] + 16 * a1);
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
  v8 = a4[6];
  v9 = type metadata accessor for ALCService.GenerationOption();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 6 * result;
  *v4 = a2 & 1;
  *(v4 + 2) = WORD1(a2);
  *(v4 + 4) = BYTE4(a2);
  *(v4 + 5) = BYTE5(a2);
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2 & 1;
  *(v6 + 2) = HIWORD(a2);
  *(v6 + 8) = a3;
  *(v6 + 16) = a4 & 1;
  *(v6 + 17) = BYTE1(a4);
  *(v6 + 18) = BYTE2(a4);
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  Trace = type metadata accessor for LoadTrace(0);
  result = outlined init with take of LoadTrace(a3, v7 + *(*(Trace - 8) + 72) * a1);
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

void *specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySOs6UInt64VGMd, &_ss18_DictionaryStorageCySOs6UInt64VGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_SeSEpXpGMd, &_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_SeSEpXpGMR);
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
    for (i = (v9 + 63) >> 6; v11; v20[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 32 * v14);
      v18 = *v17;
      v19 = v17[1];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = (*(v4 + 56) + 32 * v14);
      *v20 = v18;
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySOSDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGGMd, &_ss18_DictionaryStorageCySOSDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGMd, &_ss18_DictionaryStorageCy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertGMd, &_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertGMR);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 56;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 48);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        v26 = *(v22 + 16);
        v27 = *(v22 + 32);
        *v24 = v21;
        v24[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v25;
        *(v28 + 16) = v26;
        *(v28 + 32) = v27;
        *(v28 + 48) = v23;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_pXpGMd, &_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_pXpGMR);
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

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySV17RealityFoundation21ActionHandlerProtocol_pGMd, &_ss18_DictionaryStorageCySV17RealityFoundation21ActionHandlerProtocol_pGMR);
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
        outlined init with copy of __REAssetService(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = outlined init with take of ForceEffectBase(v19, *(v4 + 56) + 40 * v17);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo19REComponentClassPtra10RealityKit9Component_pXpGMd, &_ss18_DictionaryStorageCySo19REComponentClassPtra10RealityKit9Component_pXpGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSo19REComponentClassPtraGMd, &_ss18_DictionaryStorageCySOSo19REComponentClassPtraGMR);
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
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys6UInt64VSayAD16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlF0tGGMd, &_ss18_DictionaryStorageCys6UInt64VSayAD16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlF0tGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation13AudioMixGroupVGMd, &_ss18_DictionaryStorageCySS17RealityFoundation13AudioMixGroupVGMR);
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
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of AudioMixGroup(&v31, &v30))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = *(v2 + 56);
      v19 = (*(v2 + 48) + 16 * v16);
      v21 = *v19;
      v20 = v19[1];
      v16 *= 80;
      v23 = *(v18 + v16 + 16);
      v22 = *(v18 + v16 + 32);
      v24 = *(v18 + v16 + 48);
      *(v34 + 9) = *(v18 + v16 + 57);
      v34[0] = v24;
      v31 = *(v18 + v16);
      v32 = v23;
      v33 = v22;
      v25 = (*(v4 + 48) + v17);
      *v25 = v21;
      v25[1] = v20;
      v26 = (*(v4 + 56) + v16);
      *v26 = v31;
      v27 = v32;
      v28 = v33;
      v29 = v34[0];
      *(v26 + 57) = *(v34 + 9);
      v26[2] = v28;
      v26[3] = v29;
      v26[1] = v27;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy17RealityFoundation11IKComponentV6SolverC2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation11IKComponentV6SolverC2IDVSiGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverC4Weak013_E37E9A4A00F7L18D3DDD061C85B1FFBD5LLVy_AGGGMd, &_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverC4Weak013_E37E9A4A00F7L18D3DDD061C85B1FFBD5LLVy_AGGGMR);
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        outlined init with copy of [String : String](*(v2 + 56) + v17, v19, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
        *(*(v4 + 48) + v17) = v18;
        result = outlined init with take of __RealityFileURLResolver.Weak<__RealityFileURLResolver>(v19, *(v4 + 56) + v17);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySOs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G3SetVGMd, &_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G3SetVGMR);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v29 = (*(v4 + 56) + v17);
        *v29 = v23;
        v29[1] = v24;
        v29[2] = v25;
        v29[3] = v26;
        v29[4] = v27;
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS17RealityFoundation18MaterialParametersV5ValueOGMd, &_ss18_DictionaryStorageCySS17RealityFoundation18MaterialParametersV5ValueOGMR, outlined init with copy of MaterialParameters.Value);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation10REEventBusC16DispatcherHandle33_C907048D367572FD9E6EC4CB4F65EE59LLVypGMd, "$M\a");
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
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *(v19 + 32);
        v23 = *(v19 + 16);
        v24 = *v19;
        v21 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v22 = *(v4 + 48) + v18;
        *v22 = v24;
        *(v22 + 16) = v23;
        *(v22 + 32) = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v21));
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO10RealityKit16__RKEntityActionC0F16StateObservationVGMd, &_ss18_DictionaryStorageCySO10RealityKit16__RKEntityActionC0F16StateObservationVGMR);
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
        outlined init with copy of __RKEntityAction.ActionStateObservation(*(v2 + 56) + 16 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = outlined init with take of __RKEntityAction.ActionStateObservation(v19, *(v4 + 56) + 16 * v17);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit6EntityCSayAC34__RKEntityInteractionSpecificationVGGMd, &_ss18_DictionaryStorageCy10RealityKit6EntityCSayAC34__RKEntityInteractionSpecificationVGGMR);
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

  return result;
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
}

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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSs5Int64VGMd, &_ss18_DictionaryStorageCySSs5Int64VGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySis5Int64VGMd, &_ss18_DictionaryStorageCySis5Int64VGMR);
}

{
  v1 = v0;
  v26 = type metadata accessor for ALCService.GenerationOption();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16AlchemistService10ALCServiceC16GenerationOptionOypGMd, &_ss18_DictionaryStorageCy16AlchemistService10ALCServiceC16GenerationOptionOypGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        outlined init with copy of Any(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = outlined init with take of Any(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
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

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation15EmitterAssetKey33_FBB855774C32D6121558AC20A575B6E9LLVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation15EmitterAssetKey33_FBB855774C32D6121558AC20A575B6E9LLVSiGMR);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 24 * v17;
        *v21 = *v18;
        *(v21 + 16) = v19;
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy17RealityFoundation5IKRigV5JointV2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV5JointV2IDVSiGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVSiGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss18_DictionaryStorageCySS17RealityFoundation29StateMachineParameterProtocol_pGMR);
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
        v22 = 40 * v17;
        outlined init with copy of __REAssetService(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of ForceEffectBase(v25, *(v4 + 56) + v22);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10RealityKit15TextureResourceCSgGMd, &_ss18_DictionaryStorageCySS10RealityKit15TextureResourceCSgGMR);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS10RealityKit26__RKMaterialParameterBlockV0F0OGMd, &_ss18_DictionaryStorageCySS10RealityKit26__RKMaterialParameterBlockV0F0OGMR, outlined init with copy of __RKMaterialParameterBlock.Parameter);
}

{
  v1 = v0;
  Trace = type metadata accessor for LoadTrace(0);
  v24 = *(Trace - 8);
  MEMORY[0x1EEE9AC00](Trace - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32V17RealityFoundation9LoadTraceVGMd, &_ss18_DictionaryStorageCys6UInt32V17RealityFoundation9LoadTraceVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 4 * v20);
        v22 = *(v24 + 72) * v20;
        outlined init with copy of LoadTrace(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + 4 * v20) = v21;
        result = outlined init with take of LoadTrace(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G0VGMd, &_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G0VGMR);
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
  v29 = type metadata accessor for URL();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation3URLVGMd, &_ss18_DictionaryStorageCySi10Foundation3URLVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
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
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi17RealityFoundation21PhotogrammetrySessionC4PoseVGMd, &_ss18_DictionaryStorageCySi17RealityFoundation21PhotogrammetrySessionC4PoseVGMR);
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
        result = outlined init with copy of PhotogrammetrySession.Pose(*(v2 + 56) + (v17 << 7), v26);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = *(v4 + 56) + (v17 << 7);
        v20 = v26[3];
        v22 = v26[0];
        v21 = v26[1];
        *(v19 + 32) = v26[2];
        *(v19 + 48) = v20;
        *v19 = v22;
        *(v19 + 16) = v21;
        v23 = v26[4];
        v24 = v26[5];
        v25 = v26[6];
        *(v19 + 112) = v27;
        *(v19 + 80) = v24;
        *(v19 + 96) = v25;
        *(v19 + 64) = v23;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSo13simd_float4x4aSgGMd, &_ss18_DictionaryStorageCySiSo13simd_float4x4aSgGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(v23 + 16) = v21)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 80 * v14;
      v18 = *(v17 + 32);
      v19 = *(v17 + 48);
      v20 = *(v17 + 64);
      v22 = *v17;
      v21 = *(v17 + 16);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v23 = *(v4 + 56) + 80 * v14;
      *(v23 + 64) = v20;
      *(v23 + 32) = v18;
      *(v23 + 48) = v19;
      *v23 = v22;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation11MeshBuffersO10IdentifierVAC0E12BufferErased_pGMd, &_ss18_DictionaryStorageCy17RealityFoundation11MeshBuffersO10IdentifierVAC0E12BufferErased_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v25 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v26 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v27 = (v11 - 1) & v11;
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 24 * v16;
        v18 = *(v2 + 48) + 24 * v16;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 17);
        v23 = 40 * v16;
        outlined init with copy of __REAssetService(*(v2 + 56) + 40 * v16, v28);
        v24 = *(v26 + 48) + v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v21;
        *(v24 + 17) = v22;
        outlined init with take of ForceEffectBase(v28, *(v26 + 56) + v23);

        v11 = v27;
      }

      while (v27);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v25;
        v4 = v26;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v27 = (v15 - 1) & v15;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi17RealityFoundation16BufferDescriptorVGMd, &_ss18_DictionaryStorageCySi17RealityFoundation16BufferDescriptorVGMR);
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
        v18 = *(v2 + 56) + 24 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 17);
        v23 = *(v18 + 18);
        LOBYTE(v18) = *(v18 + 20);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = *(v4 + 56) + 24 * v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v21;
        *(v24 + 17) = v22;
        *(v24 + 18) = v23;
        *(v24 + 20) = v18;
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySiSSGMd, &_ss18_DictionaryStorageCySiSSGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys13OpaquePointerVSiGMd, &_ss18_DictionaryStorageCys13OpaquePointerVSiGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys13OpaquePointerVSSGMd, &_ss18_DictionaryStorageCys13OpaquePointerVSSGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerVs5Int32VGMd, &_ss18_DictionaryStorageCys13OpaquePointerVs5Int32VGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation23ExtrudedGlyphDescriptorV4InfoVAEGMd, &_ss18_DictionaryStorageCy17RealityFoundation23ExtrudedGlyphDescriptorV4InfoVAEGMR);
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
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of ExtrudedGlyphDescriptor(&v39, v34))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 56 * v16;
      v18 = *(v2 + 56);
      v19 = *(v2 + 48) + 56 * v16;
      v21 = *(v19 + 16);
      v20 = *(v19 + 32);
      v22 = *v19;
      v38 = *(v19 + 48);
      v36 = v21;
      v37 = v20;
      v35 = v22;
      v16 *= 72;
      v24 = *(v18 + v16 + 32);
      v23 = *(v18 + v16 + 48);
      v25 = *(v18 + v16 + 16);
      v43 = *(v18 + v16 + 64);
      v41 = v24;
      v42 = v23;
      v40 = v25;
      v39 = *(v18 + v16);
      v26 = *(v4 + 48) + v17;
      v27 = v35;
      v28 = v36;
      v29 = v37;
      *(v26 + 48) = v38;
      *(v26 + 16) = v28;
      *(v26 + 32) = v29;
      *v26 = v27;
      v30 = *(v4 + 56) + v16;
      *v30 = v39;
      v31 = v40;
      v32 = v41;
      v33 = v42;
      *(v30 + 64) = v43;
      *(v30 + 32) = v32;
      *(v30 + 48) = v33;
      *(v30 + 16) = v31;
      outlined init with copy of ExtrudedGlyphDescriptor.Info(&v35, v34);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs5Int32VGMd, &_ss18_DictionaryStorageCySSs5Int32VGMR);
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
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5Int32VSo10simd_quatfaGMd, &_ss18_DictionaryStorageCys5Int32VSo10simd_quatfaGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys6UInt64Vs13OpaquePointerVGMd, &_ss18_DictionaryStorageCys6UInt64Vs13OpaquePointerVGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay17RealityFoundation22StateMachineTransitionVGGMd, &_ss18_DictionaryStorageCySSSay17RealityFoundation22StateMachineTransitionVGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo5RESRTaGMd, &_ss18_DictionaryStorageCySSSo5RESRTaGMR);
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 48;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v24 = *(v19 + v17 + 32);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;
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

void specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcGMd, &_ss18_DictionaryStorageCySO17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcGMR);
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
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverCGMd, &_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySays4Int8VG9REECSCore23ObservationKeyPathTableV5ValueVGMd, &_ss18_DictionaryStorageCySays4Int8VG9REECSCore23ObservationKeyPathTableV5ValueVGMR);
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
        v18 = *(v2 + 56) + 32 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 32 * v17;
        *v22 = v21;
        *(v22 + 16) = v19;
        *(v22 + 24) = v20;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerV9REECSCore23ObservationKeyPathTableV5ValueVGMd, &_ss18_DictionaryStorageCys13OpaquePointerV9REECSCore23ObservationKeyPathTableV5ValueVGMR);
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
        v18 = *(v2 + 56) + 32 * v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 32 * v17;
        *v22 = v21;
        *(v22 + 16) = v20;
        *(v22 + 24) = v19;
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
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS10RealityKit17AnimationResourceCGMd, &_ss18_DictionaryStorageCySS10RealityKit17AnimationResourceCGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS10RealityKit13AudioResourceCGMd, &_ss18_DictionaryStorageCySS10RealityKit13AudioResourceCGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation31__USDARReferenceProvidingPluginCGMd, &_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation31__USDARReferenceProvidingPluginCGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation02__E30FileARReferenceProvidingPluginCGMd, &_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation02__E30FileARReferenceProvidingPluginCGMR);
}

{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit6EntityCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit6EntityCGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit6EntityCSbGMd, &_ss18_DictionaryStorageCy10RealityKit6EntityCSbGMR);
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
        v18 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + v17) = v18;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation14CustomMaterialV0E16ShaderParametersVScTy0C3Kit02__F8ResourceCs5Error_pGGMd, &_ss18_DictionaryStorageCy17RealityFoundation14CustomMaterialV0E16ShaderParametersVScTy0C3Kit02__F8ResourceCs5Error_pGGMR);
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
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 8 * v16;
      v16 *= 120;
      v18 = (*(v2 + 48) + v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = v18[2];
      v27[3] = v18[3];
      v22 = v18[4];
      v23 = v18[5];
      v24 = v18[6];
      v28 = *(v18 + 14);
      v27[5] = v23;
      v27[6] = v24;
      v27[4] = v22;
      v27[0] = v20;
      v27[1] = v19;
      v27[2] = v21;
      v25 = *(*(v2 + 56) + v17);
      memmove((*(v4 + 48) + v16), v18, 0x78uLL);
      *(*(v4 + 56) + v17) = v25;
      outlined init with copy of CustomMaterial.CustomShaderParameters(v27, v26);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation14CustomMaterialV0E16ShaderParametersV0C3Kit02__F8ResourceCGMd, &_ss18_DictionaryStorageCy17RealityFoundation14CustomMaterialV0E16ShaderParametersV0C3Kit02__F8ResourceCGMR);
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
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 8 * v16;
      v16 *= 120;
      v18 = (*(v2 + 48) + v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = v18[2];
      v27[3] = v18[3];
      v22 = v18[4];
      v23 = v18[5];
      v24 = v18[6];
      v28 = *(v18 + 14);
      v27[5] = v23;
      v27[6] = v24;
      v27[4] = v22;
      v27[0] = v20;
      v27[1] = v19;
      v27[2] = v21;
      v25 = *(*(v2 + 56) + v17);
      memmove((*(v4 + 48) + v16), v18, 0x78uLL);
      *(*(v4 + 56) + v17) = v25;
      outlined init with copy of CustomMaterial.CustomShaderParameters(v27, v26);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation11ShaderCacheCyAE14CustomMaterialV0iG10ParametersVGGMd, &_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation11ShaderCacheCyAE14CustomMaterialV0iG10ParametersVGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation11ShaderCacheCy0E3Kit13UnlitMaterialV0jG10ParametersVGGMd, &_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation11ShaderCacheCy0E3Kit13UnlitMaterialV0jG10ParametersVGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation11ShaderCacheCyAE23PhysicallyBasedMaterialV19PBRShaderParametersVGGMd, &_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation11ShaderCacheCyAE23PhysicallyBasedMaterialV19PBRShaderParametersVGGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys6UInt64V10RealityKit23AudioPlaybackControllerC0D10FoundationE8InternalCGMd, &_ss18_DictionaryStorageCys6UInt64V10RealityKit23AudioPlaybackControllerC0D10FoundationE8InternalCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMd, &_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMR);
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
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit14SimpleMaterialV0gH7MappingCGMd, &_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit14SimpleMaterialV0gH7MappingCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVAC02__F8ResourceCGMd, &_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVAC02__F8ResourceCGMR);
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
        v18 = *(v2 + 48) + 6 * v17;
        v19 = *v18;
        LODWORD(v18) = *(v18 + 2);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 6 * v17;
        *v21 = v19;
        *(v21 + 2) = v18;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV0C3Kit02__G8ResourceCGMd, &_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV0C3Kit02__G8ResourceCGMR);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 2);
        v21 = *(v18 + 8);
        v22 = *(v18 + 16);
        LOWORD(v18) = *(v18 + 17);
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = *(v4 + 48) + 24 * v17;
        *v24 = v19;
        *(v24 + 2) = v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        *(v24 + 17) = v18;
        *(*(v4 + 56) + 8 * v17) = v23;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersVScTy0C3Kit02__G8ResourceCs5Error_pGGMd, &_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersVScTy0C3Kit02__G8ResourceCs5Error_pGGMR);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 2);
        v21 = *(v18 + 8);
        v22 = *(v18 + 16);
        LOWORD(v18) = *(v18 + 17);
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = *(v4 + 48) + 24 * v17;
        *v24 = v19;
        *(v24 + 2) = v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        *(v24 + 17) = v18;
        *(*(v4 + 56) + 8 * v17) = v23;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        outlined copy of Data._Representation(v22, *(&v22 + 1));
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
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G8SetCacheCGMd, &_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G8SetCacheCGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G15CollectionCacheCGMd, &_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G15CollectionCacheCGMR);
}

{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation21__ARReferenceProviderCGMd, &_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation21__ARReferenceProviderCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVScTyAC02__F8ResourceCs5Error_pGGMd, &_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVScTyAC02__F8ResourceCs5Error_pGGMR);
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
        v18 = *(v2 + 48) + 6 * v17;
        v19 = *v18;
        LODWORD(v18) = *(v18 + 2);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 6 * v17;
        *v21 = v19;
        *(v21 + 2) = v18;
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

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v21 = (*(v4 + 56) + 80 * v19);
        v23 = v21[1];
        v22 = v21[2];
        v24 = v21[4];
        v33 = v21[3];
        v34 = v24;
        v30 = *v21;
        v31 = v23;
        v32 = v22;
        *(*(v6 + 48) + 8 * v19) = v20;
        v25 = (*(v6 + 56) + 80 * v19);
        *v25 = v30;
        v26 = v31;
        v27 = v32;
        v28 = v34;
        v25[3] = v33;
        v25[4] = v28;
        v25[1] = v26;
        v25[2] = v27;
        result = outlined init with copy of ComponentInfo(&v30, &v29);
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

      v18 = *(v4 + 64 + 8 * v10);
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

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 56) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        v23 = (*(v6 + 56) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
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

      v18 = *(v4 + 64 + 8 * v10);
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

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
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

      v18 = *(v4 + 64 + 8 * v10);
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

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 16 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 16 * v16);
      *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v38 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        result = (v28)(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
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

  return result;
}

{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo13USKObjectPathCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo13USKObjectPathCGMR);
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

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(__int128 *, uint64_t *))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v3;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = 16 * v21;
        v23 = (*(v6 + 48) + 16 * v21);
        v25 = *v23;
        v24 = v23[1];
        v21 *= 80;
        v26 = *(v6 + 56) + v21;
        v28 = *(v26 + 16);
        v27 = *(v26 + 32);
        v29 = *(v26 + 48);
        v40 = *(v26 + 64);
        v39 = v29;
        v36 = *v26;
        v37 = v28;
        v38 = v27;
        v30 = (*(v8 + 48) + v22);
        *v30 = v25;
        v30[1] = v24;
        v31 = *(v8 + 56) + v21;
        *v31 = v36;
        v32 = v37;
        v33 = v38;
        v34 = v39;
        *(v31 + 64) = v40;
        *(v31 + 32) = v33;
        *(v31 + 48) = v34;
        *(v31 + 16) = v32;

        result = a3(&v36, &v35);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
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

        result = v20;
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

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

  return result;
}

uint64_t specialized static InternalBindPath.entityNameFromKey(_:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    return 0;
  }

  v21[2] = a1;
  v21[3] = a2;
  v21[0] = 0x7365697469746E65;
  v21[1] = 0xE90000000000005BLL;
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.range<A>(of:options:range:locale:)();
  v11 = v10;
  v13 = v12;
  outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v14 = String.index(before:)();
  if ((v13 & 1) != 0 || v9 >> 14)
  {
    goto LABEL_14;
  }

  v15 = v14;
  if (String.subscript.getter() == 93 && v16 == 0xE100000000000000)
  {

    goto LABEL_12;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
LABEL_14:

    return a1;
  }

LABEL_12:
  if (v15 >> 14 >= v11 >> 14)
  {
    v19 = String.subscript.getter();
    MEMORY[0x1C68F3380](v19);

    String.utf8CString.getter();

    v20 = REBindKeyUnescape();

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t specialized static BindPath.Part.== infix(_:_:)(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (v4 <= 6)
  {
    if (*(a1 + 16) <= 1u)
    {
      if (*(a1 + 16))
      {
        if (v7 != 1)
        {
          goto LABEL_76;
        }

        if (v2 == v5 && v3 == v6)
        {
          v11 = 1;
          outlined copy of BindPath.Part(*a1, v3, 1u);
          outlined copy of BindPath.Part(v2, v3, 1u);
          outlined consume of BindPath.Part(v2, v3, 1u);
          outlined consume of BindPath.Part(v2, v3, 1u);
          return v11 & 1;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of BindPath.Part(v2, v3, 1u);
        outlined copy of BindPath.Part(v5, v6, 1u);
        outlined consume of BindPath.Part(v2, v3, 1u);
        v16 = v5;
        v17 = v6;
        v18 = 1;
      }

      else
      {
        if (*(a2 + 16))
        {
          goto LABEL_76;
        }

        if (v2 == v5 && v3 == v6)
        {
          outlined copy of BindPath.Part(*a1, v3, 0);
          outlined copy of BindPath.Part(v2, v3, 0);
          outlined consume of BindPath.Part(v2, v3, 0);
          v12 = v2;
          v13 = v3;
          v14 = 0;
          goto LABEL_75;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of BindPath.Part(v2, v3, 0);
        outlined copy of BindPath.Part(v5, v6, 0);
        outlined consume of BindPath.Part(v2, v3, 0);
        v16 = v5;
        v17 = v6;
        v18 = 0;
      }
    }

    else if (v4 == 2)
    {
      if (v7 != 2)
      {
        goto LABEL_76;
      }

      if (v2 == v5 && v3 == v6)
      {
        outlined copy of BindPath.Part(*a1, v3, 2u);
        outlined copy of BindPath.Part(v2, v3, 2u);
        outlined consume of BindPath.Part(v2, v3, 2u);
        v12 = v2;
        v13 = v3;
        v14 = 2;
        goto LABEL_75;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of BindPath.Part(v2, v3, 2u);
      outlined copy of BindPath.Part(v5, v6, 2u);
      outlined consume of BindPath.Part(v2, v3, 2u);
      v16 = v5;
      v17 = v6;
      v18 = 2;
    }

    else
    {
      if (v4 != 3)
      {
        if (v4 == 6 && v7 == 6)
        {
          outlined consume of BindPath.Part(*a1, v3, 6u);
          outlined consume of BindPath.Part(v5, v6, 6u);
          if (v3)
          {
            v11 = v6;
          }

          else
          {
            v11 = (v2 == v5) & ~v6;
          }

          return v11 & 1;
        }

        goto LABEL_76;
      }

      if (v7 != 3)
      {
LABEL_76:
        outlined copy of BindPath.Part(*a1, v3, v4);
        outlined copy of BindPath.Part(v5, v6, v7);
        outlined consume of BindPath.Part(v2, v3, v4);
        outlined consume of BindPath.Part(v5, v6, v7);
        v11 = 0;
        return v11 & 1;
      }

      if (v2 == v5 && v3 == v6)
      {
        outlined copy of BindPath.Part(*a1, v3, 3u);
        outlined copy of BindPath.Part(v2, v3, 3u);
        outlined consume of BindPath.Part(v2, v3, 3u);
        v12 = v2;
        v13 = v3;
        v14 = 3;
        goto LABEL_75;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of BindPath.Part(v2, v3, 3u);
      outlined copy of BindPath.Part(v5, v6, 3u);
      outlined consume of BindPath.Part(v2, v3, 3u);
      v16 = v5;
      v17 = v6;
      v18 = 3;
    }
  }

  else
  {
    if (*(a1 + 16) <= 9u)
    {
      if (v4 == 7)
      {
        if (v7 == 7)
        {
          outlined consume of BindPath.Part(*a1, v3, 7u);
          v8 = v5;
          v9 = v6;
          v10 = 7;
          goto LABEL_51;
        }
      }

      else if (v4 == 8)
      {
        if (v7 == 8)
        {
          outlined consume of BindPath.Part(*a1, v3, 8u);
          v8 = v5;
          v9 = v6;
          v10 = 8;
          goto LABEL_51;
        }
      }

      else if (v4 == 9 && v7 == 9)
      {
        outlined consume of BindPath.Part(*a1, v3, 9u);
        v8 = v5;
        v9 = v6;
        v10 = 9;
LABEL_51:
        outlined consume of BindPath.Part(v8, v9, v10);
        v11 = v2 == v5;
        return v11 & 1;
      }

      goto LABEL_76;
    }

    switch(v4)
    {
      case 0xAu:
        if (v7 != 10)
        {
          goto LABEL_76;
        }

        if (v2 == v5 && v3 == v6)
        {
          outlined copy of BindPath.Part(*a1, v3, 0xAu);
          outlined copy of BindPath.Part(v2, v3, 0xAu);
          outlined consume of BindPath.Part(v2, v3, 0xAu);
          v12 = v2;
          v13 = v3;
          v14 = 10;
          goto LABEL_75;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of BindPath.Part(v2, v3, 0xAu);
        outlined copy of BindPath.Part(v5, v6, 0xAu);
        outlined consume of BindPath.Part(v2, v3, 0xAu);
        v16 = v5;
        v17 = v6;
        v18 = 10;
        break;
      case 0xBu:
        if (v7 != 11)
        {
          goto LABEL_76;
        }

        if (v2 == v5 && v3 == v6)
        {
          outlined copy of BindPath.Part(*a1, v3, 0xBu);
          outlined copy of BindPath.Part(v2, v3, 0xBu);
          outlined consume of BindPath.Part(v2, v3, 0xBu);
          v12 = v2;
          v13 = v3;
          v14 = 11;
          goto LABEL_75;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of BindPath.Part(v2, v3, 0xBu);
        outlined copy of BindPath.Part(v5, v6, 0xBu);
        outlined consume of BindPath.Part(v2, v3, 0xBu);
        v16 = v5;
        v17 = v6;
        v18 = 11;
        break;
      case 0xCu:
        if (v2 > 1)
        {
          if (v2 ^ 2 | v3)
          {
            if (v2 ^ 4 | v3 || v7 != 12 || v5 != 4 || v6)
            {
              goto LABEL_76;
            }

            outlined consume of BindPath.Part(*a1, v3, 0xCu);
            v12 = 4;
          }

          else
          {
            if (v7 != 12 || v5 != 2 || v6)
            {
              goto LABEL_76;
            }

            outlined consume of BindPath.Part(*a1, v3, 0xCu);
            v12 = 2;
          }
        }

        else
        {
          if (v2 | v3)
          {
            if (v2 ^ 1 | v3 || v7 != 12 || v5 != 1 || v6)
            {
              goto LABEL_76;
            }

            outlined consume of BindPath.Part(*a1, v3, 0xCu);
            v11 = 1;
            outlined consume of BindPath.Part(1, 0, 0xCu);
            return v11 & 1;
          }

          if (v7 != 12 || v6 | v5)
          {
            goto LABEL_76;
          }

          outlined consume of BindPath.Part(*a1, v3, 0xCu);
          v12 = 0;
        }

        v13 = 0;
        v14 = 12;
LABEL_75:
        outlined consume of BindPath.Part(v12, v13, v14);
        v11 = 1;
        return v11 & 1;
      default:
        goto LABEL_76;
    }
  }

  outlined consume of BindPath.Part(v16, v17, v18);
  return v15 & 1;
}

uint64_t specialized static BindTarget.== infix(_:_:)(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 2)
  {
    if (*(a1 + 16))
    {
      if (v4 == 1)
      {
        if (v7 == 1)
        {
          if (v3 == v5 && v2 == v6)
          {
            v8 = 1;
            outlined copy of BindTarget(*a1, v2, 1u);
            outlined copy of BindTarget(v3, v2, 1u);
            outlined consume of BindTarget(v3, v2, 1u);
            outlined consume of BindTarget(v3, v2, 1u);
            return v8 & 1;
          }

          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of BindTarget(v5, v6, 1u);
          outlined copy of BindTarget(v3, v2, 1u);
          outlined consume of BindTarget(v3, v2, 1u);
          v16 = v5;
          v17 = v6;
          v18 = 1;
          goto LABEL_46;
        }
      }

      else if (v7 == 2)
      {
        outlined copy of BindTarget(*a2, *(a2 + 8), 2u);
        outlined copy of BindTarget(v3, v2, 2u);
        v15 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ17RealityFoundation8BindPathV4PartO_Tt1g5(v3, v5);
        outlined consume of BindTarget(v3, v2, 2u);
        v16 = v5;
        v17 = v6;
        v18 = 2;
        goto LABEL_46;
      }
    }

    else if (!*(a2 + 16))
    {
      v12 = String.lowercased()();
      v13 = String.lowercased()();
      if (v12._countAndFlagsBits == v13._countAndFlagsBits && v12._object == v13._object)
      {
        v8 = 1;
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      outlined copy of BindTarget(v5, v6, 0);
      outlined copy of BindTarget(v3, v2, 0);

      outlined consume of BindTarget(v3, v2, 0);
      outlined consume of BindTarget(v5, v6, 0);
      return v8 & 1;
    }

    goto LABEL_29;
  }

  if (*(a1 + 16) > 4u)
  {
    if (v4 == 5)
    {
      if (v7 != 5)
      {
        goto LABEL_29;
      }

      if (v3 != v5 || v2 != v6)
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of BindTarget(v5, v6, 5u);
        outlined copy of BindTarget(v3, v2, 5u);
        outlined consume of BindTarget(v3, v2, 5u);
        v16 = v5;
        v17 = v6;
        v18 = 5;
        goto LABEL_46;
      }

      outlined copy of BindTarget(*a1, v2, 5u);
      outlined copy of BindTarget(v3, v2, 5u);
      outlined consume of BindTarget(v3, v2, 5u);
      v9 = v3;
      v10 = v2;
      v11 = 5;
    }

    else
    {
      if (v3 <= 1)
      {
        if (v3 | v2)
        {
          if (v7 == 6 && v5 == 1 && !v6)
          {
            outlined consume of BindTarget(*a1, v2, 6u);
            v8 = 1;
            outlined consume of BindTarget(1, 0, 6u);
            return v8 & 1;
          }

          goto LABEL_30;
        }

        if (v7 != 6 || v6 | v5)
        {
LABEL_30:
          outlined copy of BindTarget(v5, v6, v7);
          outlined consume of BindTarget(v3, v2, v4);
          outlined consume of BindTarget(v5, v6, v7);
          v8 = 0;
          return v8 & 1;
        }

        outlined consume of BindTarget(*a1, v2, 6u);
        v9 = 0;
      }

      else if (v3 ^ 2 | v2)
      {
        if (v3 ^ 3 | v2)
        {
          if (v7 != 6 || v5 != 4 || v6)
          {
            goto LABEL_30;
          }

          outlined consume of BindTarget(*a1, v2, 6u);
          v9 = 4;
        }

        else
        {
          if (v7 != 6 || v5 != 3 || v6)
          {
            goto LABEL_30;
          }

          outlined consume of BindTarget(*a1, v2, 6u);
          v9 = 3;
        }
      }

      else
      {
        if (v7 != 6 || v5 != 2 || v6)
        {
          goto LABEL_30;
        }

        outlined consume of BindTarget(*a1, v2, 6u);
        v9 = 2;
      }

      v10 = 0;
      v11 = 6;
    }

LABEL_56:
    outlined consume of BindTarget(v9, v10, v11);
    v8 = 1;
    return v8 & 1;
  }

  if (v4 == 3)
  {
    if (v7 == 3)
    {
      outlined consume of BindTarget(*a1, v2, 3u);
      outlined consume of BindTarget(v5, v6, 3u);
      v8 = v3 == v5;
      return v8 & 1;
    }

    goto LABEL_30;
  }

  if (v7 != 4)
  {
LABEL_29:

    goto LABEL_30;
  }

  if (v3 == v5 && v2 == v6)
  {
    outlined copy of BindTarget(*a1, v2, 4u);
    outlined copy of BindTarget(v3, v2, 4u);
    outlined consume of BindTarget(v3, v2, 4u);
    v9 = v3;
    v10 = v2;
    v11 = 4;
    goto LABEL_56;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of BindTarget(v5, v6, 4u);
  outlined copy of BindTarget(v3, v2, 4u);
  outlined consume of BindTarget(v3, v2, 4u);
  v16 = v5;
  v17 = v6;
  v18 = 4;
LABEL_46:
  outlined consume of BindTarget(v16, v17, v18);
  return v15 & 1;
}

unint64_t specialized static InternalBindPath.pathFromTarget(_:_:)(uint64_t a1, char a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 <= 2)
  {
    if (*(a1 + 16))
    {
      if (v5 != 1)
      {
        v60 = 0;
        v10 = *(v4 + 16);
        if (!v10)
        {
          return 0;
        }

        v11 = (v4 + 48);
        v12 = 1;
        do
        {
          v16 = *(v11 - 2);
          v17 = *(v11 - 1);
          v18 = *v11;
          outlined copy of BindPath.Part(v16, v17, *v11);
          if ((v12 & 1) == 0)
          {
            MEMORY[0x1C68F3410](46, 0xE100000000000000);
          }

          v11 += 24;
          switch(v18)
          {
            case 1:
              if (v12)
              {

                v60 = 0x2F2F3A656E656373;
              }

              if (a2)
              {
                String.utf8CString.getter();
                v50 = REBindKeyEscape();

                v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v53 = v52;

                MEMORY[0x1C68F3410](v51, v53);

                MEMORY[0x1C68F3410](93, 0xE100000000000000);
                v33 = 0x7365697469746E65;
                v34 = 0xE90000000000005BLL;
              }

              else
              {

                v33 = v16;
                v34 = v17;
              }

              MEMORY[0x1C68F3410](v33, v34);
              v13 = v16;
              v14 = v17;
              v15 = 1;
              goto LABEL_18;
            case 2:
              if (a2)
              {
                String.utf8CString.getter();
                v41 = REBindKeyEscape();

                v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v44 = v43;

                MEMORY[0x1C68F3410](v42, v44);

                MEMORY[0x1C68F3410](93, 0xE100000000000000);
                v27 = 0x7365697469746E65;
                v28 = 0xE90000000000005BLL;
              }

              else
              {

                v27 = v16;
                v28 = v17;
              }

              MEMORY[0x1C68F3410](v27, v28);
              v13 = v16;
              v14 = v17;
              v15 = 2;
              goto LABEL_18;
            case 3:
              _StringGuts.grow(_:)(26);

              if (a2)
              {
                String.utf8CString.getter();
                v45 = REBindKeyEscape();

                v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v30 = v47;

                v29 = v46;
              }

              else
              {

                v29 = v16;
                v30 = v17;
              }

              MEMORY[0x1C68F3410](v29, v30);

              MEMORY[0x1C68F3410](93, 0xE100000000000000);
              MEMORY[0x1C68F3410](0xD000000000000017, 0x80000001C18DE510);
              v13 = v16;
              v14 = v17;
              v15 = 3;
              goto LABEL_18;
            case 4:
              _StringGuts.grow(_:)(34);

              v58 = 0xD00000000000001FLL;
              v23 = 0x80000001C18DE460;
              goto LABEL_34;
            case 5:
              _StringGuts.grow(_:)(34);

              MEMORY[0x1C68F3410](v16, v17);
              MEMORY[0x1C68F3410](93, 0xE100000000000000);
              MEMORY[0x1C68F3410](0xD00000000000001FLL, 0x80000001C18DE460);
              v13 = v16;
              v14 = v17;
              v15 = 5;
              goto LABEL_18;
            case 6:
              _StringGuts.grow(_:)(34);

              v58 = 0xD00000000000001ELL;
              v59 = 0x80000001C18DE420;
              v35 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x1C68F3410](v35);

              v36 = 23849;
              v37 = 0xE200000000000000;
              goto LABEL_49;
            case 7:
              v58 = 0;
              v59 = 0xE000000000000000;
              v31 = 0x5B73746567726174;
              v32 = 0xE800000000000000;
              goto LABEL_47;
            case 8:
              v58 = 0;
              v59 = 0xE000000000000000;
              _StringGuts.grow(_:)(17);
              v31 = 0x615474416B6F6F6CLL;
              v32 = 0xEE005B7374656772;
LABEL_47:
              MEMORY[0x1C68F3410](v31, v32);
              _print_unlocked<A, B>(_:_:)();
              goto LABEL_48;
            case 9:
              _StringGuts.grow(_:)(31);

              v58 = 0xD00000000000001CLL;
              v23 = 0x80000001C18DE400;
LABEL_34:
              v59 = v23;
              v26 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x1C68F3410](v26);

LABEL_48:
              v36 = 93;
              v37 = 0xE100000000000000;
LABEL_49:
              MEMORY[0x1C68F3410](v36, v37);
              MEMORY[0x1C68F3410](v58, v59);
              goto LABEL_19;
            case 10:

              MEMORY[0x1C68F3410](v16, v17);
              outlined consume of BindPath.Part(v16, v17, 0xAu);
              outlined consume of BindPath.Part(v16, v17, 0xAu);
              break;
            case 11:
              _StringGuts.grow(_:)(30);

              if (a2)
              {
                String.utf8CString.getter();
                v38 = REBindKeyEscape();

                v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v22 = v40;

                v21 = v39;
              }

              else
              {

                v21 = v16;
                v22 = v17;
              }

              MEMORY[0x1C68F3410](v21, v22);

              MEMORY[0x1C68F3410](93, 0xE100000000000000);
              MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18DE4B0);
              v13 = v16;
              v14 = v17;
              v15 = 11;
LABEL_18:
              outlined consume of BindPath.Part(v13, v14, v15);
LABEL_19:

              break;
            case 12:
              if (v16 <= 1)
              {
                if (v16 | v17)
                {
                  v24 = 0xD00000000000001DLL;
                  v25 = "SkeletalPose.skeletalPoses[";
                }

                else
                {
                  v24 = 0xD000000000000013;
                  v25 = "SkeletalPose.skeletalPoses[0]";
                }
              }

              else if (v16 ^ 2 | v17)
              {
                if (v16 ^ 3 | v17)
                {
                  v24 = 0xD000000000000015;
                  v25 = "IKParametersComponent.solvers[";
                }

                else
                {
                  v24 = 0xD000000000000021;
                  v25 = "BlendShapeWeights.blendWeights[";
                }
              }

              else
              {
                v24 = 0xD000000000000018;
                v25 = ") is not an entity.";
              }

              MEMORY[0x1C68F3410](v24, v25 | 0x8000000000000000);
              break;
            default:

              if (a2)
              {
                String.utf8CString.getter();
                v48 = REBindKeyEscape();

                v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v20 = v49;
              }

              else
              {

                v19 = v16;
                v20 = v17;
              }

              MEMORY[0x1C68F3410](v19, v20);

              outlined consume of BindPath.Part(v16, v17, 0);
              v60 = 0x3A65636976726573;
              break;
          }

          v12 = 0;
          --v10;
        }

        while (v10);
        return v60;
      }

      _StringGuts.grow(_:)(26);

      v60 = 0xD000000000000017;
      if (a2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (*(a1 + 16) <= 4u)
    {
      if (v5 != 3)
      {
        _StringGuts.grow(_:)(34);

        v60 = 0xD00000000000001FLL;
        MEMORY[0x1C68F3410](v4, v3);
        goto LABEL_67;
      }

      _StringGuts.grow(_:)(34);

      v60 = 0xD00000000000001FLL;
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_13:
      MEMORY[0x1C68F3410](v6, v7);

LABEL_67:
      MEMORY[0x1C68F3410](93, 0xE100000000000000);
      return v60;
    }

    if (v5 == 5)
    {
      _StringGuts.grow(_:)(30);

      v60 = 0xD00000000000001BLL;
      if (a2)
      {
LABEL_11:
        String.utf8CString.getter();
        v8 = REBindKeyEscape();

        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = v9;

        goto LABEL_12;
      }

LABEL_8:

LABEL_12:
      v6 = v4;
      v7 = v3;
      goto LABEL_13;
    }

    if (v4 <= 1)
    {
      v55 = v4 | v3;
      v56 = 0xD000000000000013;
      v57 = 0xD00000000000001DLL;
    }

    else
    {
      v55 = v4 ^ 2 | v3;
      v56 = 0xD000000000000018;
      v57 = 0xD000000000000015;
      if (!(v4 ^ 3 | v3))
      {
        v57 = 0xD000000000000021;
      }
    }

    if (v55)
    {
      return v57;
    }

    else
    {
      return v56;
    }
  }

  return v4;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t specialized ParameterSet.subscript.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a2;
  v6 = a5;
  v49 = a3;
  v42 = a6;
  v8 = type metadata accessor for BindableValue(255, a5, a6, a4);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = *(v6 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v10 + 16);
  v48 = a1;
  v46 = v22;
  (v22)(v16, a1, v9, v19);
  v23 = *(v8 - 8);
  v47 = *(v23 + 48);
  v24 = v47(v16, 1, v8);
  v45 = v23;
  if (v24 == 1)
  {
    (*(v10 + 8))(v16, v9);
LABEL_6:
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v26 = v48;
    v25 = v49;
    v27 = v50;
    v28 = v47;
    goto LABEL_7;
  }

  (*(v17 + 16))(v21, v16, v6);
  (*(v23 + 8))(v16, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20BindableDataInternal_pMd, &_s17RealityFoundation20BindableDataInternal_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v26 = v48;
  v25 = v49;
  v27 = v50;
  v28 = v47;
  if (*(&v52 + 1))
  {
    outlined init with take of ForceEffectBase(&v51, v54);
    v40 = v9;
    v29 = v6;
    v31 = v56;
    v30 = v57;
    __swift_project_boxed_opaque_existential_1(v54, v56);
    v32 = v30;
    v6 = v29;
    v33 = v31;
    v27 = v50;
    v9 = v40;
    (*(v32 + 56))(v44, v25, *v43, v33);
    __swift_destroy_boxed_opaque_existential_1(v54);
    goto LABEL_8;
  }

LABEL_7:
  outlined destroy of BodyTrackingComponent?(&v51, &_s17RealityFoundation20BindableDataInternal_pSgMd, &_s17RealityFoundation20BindableDataInternal_pSgMR);
LABEL_8:
  if (v28(v26, 1, v8) != 1)
  {
    v46(v27, v26, v9);
    result = v28(v27, 1, v8);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v35 = BindableValue.isOverriden.getter(v8);
    (*(v45 + 8))(v27, v8);
    if (v35)
    {
      v36 = *v43;
      v37 = v41;
      v46(v41, v26, v9);
      v54[0] = v44;
      v54[1] = v25;
      v55 = 1;
      *&v51 = v36;

      BindableValuesReference.subscript.setter(v37, v54, v38, v6, v42);
    }
  }
}

uint64_t outlined copy of BindPath.Part(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBu && ((1 << a3) & 0xC2F) != 0)
  {
  }

  return result;
}

uint64_t outlined consume of BindPath.Part(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBu && ((1 << a3) & 0xC2F) != 0)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation8BindPathV4PartO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xB)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BindPath.Part(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 17))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for BindPath.Part(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for BindPath.Part(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    LOBYTE(a2) = 12;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation10BindTargetO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t getEnumTagSinglePayload for BindTarget(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BindTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for BindTarget(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BindTarget.TextureCoordinateTransformPath(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BindTarget.TextureCoordinateTransformPath(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for InternalBindPath(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for InternalBindPath(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata completion function for BindableValue(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BindableValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5)
  {
    v7 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v9 = v7 + ((v6 + *(v4 + 80)) & ~*(v4 + 80));
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

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

  return v5 + (v9 | v13) + 1;
}

char *storeEnumTagSinglePayload for BindableValue(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = (v7 + *(v5 + 80)) & ~*(v5 + 80);
  if (!v6)
  {
    ++v7;
  }

  v9 = v7 + v8;
  v10 = a3 >= v6;
  v11 = a3 - v6;
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

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
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
LABEL_41:
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
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_41;
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
        goto LABEL_41;
      }
    }

LABEL_38:
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

      goto LABEL_30;
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

    goto LABEL_30;
  }

  if (!a2)
  {
    return result;
  }

LABEL_30:
  v20 = *(v5 + 56);

  return v20();
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for BindPath(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for BindPath(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of LoadTrace(uint64_t a1, uint64_t a2)
{
  Trace = type metadata accessor for LoadTrace(0);
  (*(*(Trace - 8) + 40))(a2, a1, Trace);
  return a2;
}

uint64_t outlined init with copy of LoadTrace(uint64_t a1, uint64_t a2)
{
  Trace = type metadata accessor for LoadTrace(0);
  (*(*(Trace - 8) + 16))(a2, a1, Trace);
  return a2;
}

uint64_t outlined init with take of LoadTrace(uint64_t a1, uint64_t a2)
{
  Trace = type metadata accessor for LoadTrace(0);
  (*(*(Trace - 8) + 32))(a2, a1, Trace);
  return a2;
}

void outlined consume of __MaterialResource.CoreMaterialFunction?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a3)
  {
  }
}

double outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t outlined assign with take of __RealityFileURLResolver.Weak<__RealityFileURLResolver>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of __RealityFileURLResolver.Weak<__RealityFileURLResolver>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E67D0], MEMORY[0x1E69E67B0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E67E8], MEMORY[0x1E69E67B0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static ForceEffectLogger.logger);
  __swift_project_value_buffer(v0, static ForceEffectLogger.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static AnimationLogger.logger);
  __swift_project_value_buffer(v0, static AnimationLogger.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static BlendShapeLogger.logger);
  __swift_project_value_buffer(v0, static BlendShapeLogger.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

_BYTE *_Proto_MeshDeformation_v1.CustomDeformerSpec.init(cadence:inputSpec:outputSpec:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = v5;
  return result;
}

uint64_t static _Proto_MeshDeformation_v1.CustomDeformerTraits.deformer.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(a1 + 8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t static _Proto_MeshDeformation_v1.CustomDeformerComponent.deformer.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponent.getData(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = (*(a3 + 48))(a2, a3);
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  outlined copy of _Proto_MeshScope_v1(v3, v4, v5, v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  MEMORY[0x1C68F31A0](&v15, &v11, v7, &type metadata for _Proto_MeshScope_v1, AssociatedTypeWitness, v9);

  outlined consume of _Proto_MeshScope_v1(v11, v12, v13, v14);
  return v15;
}

void outlined copy of _Proto_MeshScope_v1(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1;
  if (!lazy protocol witness table cache variable for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshScope_v1, &type metadata for _Proto_MeshScope_v1, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1;
  if (!lazy protocol witness table cache variable for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshScope_v1, &type metadata for _Proto_MeshScope_v1, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1);
  }

  return result;
}

void outlined consume of _Proto_MeshScope_v1(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }
}

Swift::Void __swiftcall _Proto_MeshDeformation_v1.CustomDeformerComponent.forceDeform()()
{
  v2 = v1;
  v19 = v0;
  v3 = (*(v1 + 48))();
  lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  v4 = 0;
  v6 = v3 + 64;
  v5 = *(v3 + 64);
  v21 = v3;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  v20 = v2;
  if ((v8 & v5) != 0)
  {
    do
    {
      v11 = v4;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = *(v21 + 48) + ((v11 << 11) | (32 * v12));
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v22 = *(v20 + 88);
      outlined copy of _Proto_MeshScope_v1(*v13, v15, v16, *(v13 + 24));
      v18 = v22(v23, v19, v20);
      specialized Set._Variant.insert(_:)(v24, v14, v15, v16, v17);
      outlined consume of _Proto_MeshScope_v1(v24[0], v24[1], v24[2], v25);
      v18(v23, 0);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v11);
    ++v4;
    if (v9)
    {
      v4 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponent.setTargetDatum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v20 = a2;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v10 = *(a4 + 64);
  outlined copy of _Proto_MeshScope_v1(v6, v7, v8, v9);
  swift_unknownObjectRetain();
  v11 = v10(v15, a3, a4);
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  v11(v15, 0);
  v12 = *(a4 + 88);
  outlined copy of _Proto_MeshScope_v1(v6, v7, v8, v9);
  v13 = v12(v15, a3, a4);
  specialized Set._Variant.insert(_:)(&v16, v6, v7, v8, v9);
  outlined consume of _Proto_MeshScope_v1(v16, v17, v18, v19);
  return v13(v15, 0);
}

void _Proto_MeshDeformation_v1.CustomDeformerComponentStorage.init(targetData:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = 1;
  *&v19 = a1;
  *(&v19 + 1) = MEMORY[0x1E69E7CD0];
  lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(a1 + 48) + ((v8 << 11) | (32 * v9));
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    outlined copy of _Proto_MeshScope_v1(*v10, v12, v13, *(v10 + 24));
    specialized Set._Variant.insert(_:)(v17, v11, v12, v13, v14);
    outlined consume of _Proto_MeshScope_v1(v17[0], v17[1], v17[2], v18);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v15 = v20;
      *a2 = v19;
      *(a2 + 16) = v15;
      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall _Proto_MeshDeformation_v1.CustomDeformerComponentStorage.forceDeform()()
{
  v1 = *v0;
  lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_9:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = *(v1 + 48) + ((v7 << 11) | (32 * v8));
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      outlined copy of _Proto_MeshScope_v1(*v9, v11, v12, *(v9 + 24));
      specialized Set._Variant.insert(_:)(v14, v10, v11, v12, v13);
      outlined consume of _Proto_MeshScope_v1(v14[0], v14[1], v14[2], v15);
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }
}

void _Proto_MeshDeformation_v1.CustomDeformerComponentStorage.setTargetDatum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v11 = a2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  outlined copy of _Proto_MeshScope_v1(v3, v4, v5, v6);
  lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  type metadata accessor for Dictionary();
  swift_unknownObjectRetain();
  Dictionary.subscript.setter();
  outlined copy of _Proto_MeshScope_v1(v3, v4, v5, v6);
  specialized Set._Variant.insert(_:)(&v7, v3, v4, v5, v6);
  outlined consume of _Proto_MeshScope_v1(v7, v8, v9, v10);
}

uint64_t (*_Proto_MeshDeformation_v1.CustomDeformerComponentGPU.targetData.modify(uint64_t *a1))()
{
  *a1 = *v1;
  a1[1] = v1;

  return _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.targetData.modify;
}

uint64_t (*_Proto_MeshDeformation_v1.CustomDeformerComponentGPU.dirtyTargets.modify(void *a1))()
{
  *a1 = *(v1 + 8);
  a1[1] = v1;

  return _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.dirtyTargets.modify;
}

uint64_t (*_Proto_MeshDeformation_v1.CustomDeformerComponentGPU.cadenceDirty.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.cadenceDirty.modify;
}

uint64_t (*protocol witness for _Proto_MeshDeformation_v1.CustomDeformerComponent.targetData.modify in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.targetData.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for _Proto_MeshDeformation_v1.CustomDeformerComponent.dirtyTargets.modify in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.dirtyTargets.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for _Proto_MeshDeformation_v1.CustomDeformerComponent.cadenceDirty.modify in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.cadenceDirty.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

void static _Proto_MeshDeformation_v1.CustomDeformerComponent.__fromCore(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  REEngineGetServiceLocator();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v5 = static Array._allocateUninitialized(_:)();
  v58 = lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  v6 = specialized Dictionary.init(dictionaryLiteral:)(v5, &type metadata for _Proto_MeshScope_v1, AssociatedTypeWitness, v58);

  v68 = v6;
  v53 = a3;
  v55 = swift_getAssociatedTypeWitness();
  v54 = *(swift_getAssociatedConformanceWitness() + 8);
  (v54)(v55);
  String.utf8CString.getter();

  RECustomDeformerComponentGetDeformationIndex();

  DeformationIndexInputObjectCount = RECustomDeformerComponentGetDeformationIndexInputObjectCount();
  if (DeformationIndexInputObjectCount < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  else
  {
    v8 = DeformationIndexInputObjectCount;
    if (DeformationIndexInputObjectCount)
    {
      v9 = 0;
      v57 = DeformationIndexInputObjectCount;
      do
      {
        if (RECustomDeformerComponentGetDeformationIndexInputObject())
        {
          RECustomDeformerComponentGetDeformationIndexInputMeshID();
          v64 = v65;
          if (v65 - 1 < 2)
          {
            v12 = v66;
            v63 = String.init(cString:)();
            if (v12)
            {
              v62 = v13;
              v56 = String.init(cString:)();
              v15 = v14;
              v16 = v68 + 64;
              v17 = 1 << *(v68 + 32);
              if (v17 < 64)
              {
                v18 = ~(-1 << v17);
              }

              else
              {
                v18 = -1;
              }

              v19 = v18 & *(v68 + 64);
              v20 = (v17 + 63) >> 6;

              v22 = 0;
              v59 = v21;
              for (i = v9; ; v9 = i)
              {
                do
                {
                  if (!v19)
                  {
                    while (1)
                    {
                      v23 = v22 + 1;
                      if (__OFADD__(v22, 1))
                      {
                        break;
                      }

                      if (v23 >= v20)
                      {

                        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
                        inited = swift_initStackObject();
                        *(inited + 16) = xmmword_1C1887600;
                        *(inited + 32) = v56;
                        *(inited + 40) = v15;

                        v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
                        swift_setDeallocating();
                        outlined destroy of String(inited + 32);
                        static _Proto_MeshScope_v1.fromCore(_:_:_:)(v64, v63, v62, v11, &v65);

                        swift_unknownObjectRetain();

                        swift_dynamicCast();
                        type metadata accessor for Dictionary();
                        Dictionary.subscript.setter();
                        swift_unknownObjectRelease();
                        v8 = v57;
                        goto LABEL_5;
                      }

                      v19 = *(v16 + 8 * v23);
                      ++v22;
                      if (v19)
                      {
                        v22 = v23;
                        goto LABEL_21;
                      }
                    }

                    __break(1u);
                    goto LABEL_48;
                  }

LABEL_21:
                  v24 = __clz(__rbit64(v19));
                  v19 &= v19 - 1;
                  v25 = *(v21 + 48) + 32 * (v24 | (v22 << 6));
                  v26 = *(v25 + 24);
                }

                while (v64 != ((0x30102u >> (8 * v26)) & 3));
                if (v26 > 1)
                {
                  goto LABEL_49;
                }

                v27 = *(v25 + 24);
                v28 = *v25;
                v29 = *(v25 + 8);
                v30 = *(v25 + 16);

                if (v28 == v63 && v62 == v29)
                {
                  swift_unknownObjectRetain();
                  v51 = v30;
                  v52 = v27;
                  outlined copy of _Proto_MeshScope_v1(v63, v29, v30, v27);

                  goto LABEL_44;
                }

                v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
                swift_unknownObjectRetain();
                outlined copy of _Proto_MeshScope_v1(v28, v29, v30, v27);

                if (v61)
                {
                  break;
                }

                swift_unknownObjectRelease();
                outlined consume of _Proto_MeshScope_v1(v28, v29, v30, v27);
                v21 = v59;
              }

              v63 = v28;
              v51 = v30;
              v52 = v27;
LABEL_44:
              *&v65 = v63;
              *(&v65 + 1) = v29;
              v66 = v51;
              v67 = v52;
              type metadata accessor for Dictionary();
              Dictionary.removeValue(forKey:)();
              swift_unknownObjectRelease();
              _Proto_MeshScope_v1.appendPart(_:)(v56, v15, &v65);
              outlined consume of _Proto_MeshScope_v1(v63, v29, v51, v52);
              v8 = v57;
              v9 = i;
              if (v67 == 255)
              {
                goto LABEL_50;
              }

              Dictionary.subscript.setter();

              swift_unknownObjectRelease();
              goto LABEL_5;
            }

            static _Proto_MeshScope_v1.fromCore(_:_:_:)(v64, v63, v13, MEMORY[0x1E69E7CD0], &v65);
            swift_unknownObjectRetain();

            swift_dynamicCast();
            type metadata accessor for Dictionary();
            goto LABEL_40;
          }

          if (v65)
          {
            if (v65 == 3)
            {
              swift_unknownObjectRetain();
              swift_dynamicCast();
              v65 = 0uLL;
              v66 = 0;
              v67 = 2;
              type metadata accessor for Dictionary();
LABEL_40:
              Dictionary.subscript.setter();
              goto LABEL_41;
            }

            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v44 = type metadata accessor for Logger();
            __swift_project_value_buffer(v44, logger);
            v33 = Logger.logObject.getter();
            v45 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v33, v45))
            {
              goto LABEL_38;
            }

            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *&v65 = v36;
            *v35 = 136315138;
            v46 = v54();
            v48 = v9;
            v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v65);

            *(v35 + 4) = v49;
            v9 = v48;
            v41 = v45;
            v42 = v33;
            v43 = "unknown mesh scope type returned from Core in CustomDeformerComponent id:%s";
          }

          else
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v32 = type metadata accessor for Logger();
            __swift_project_value_buffer(v32, logger);
            v33 = Logger.logObject.getter();
            v34 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v33, v34))
            {
LABEL_38:

LABEL_41:
              swift_unknownObjectRelease();
              goto LABEL_5;
            }

            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *&v65 = v36;
            *v35 = 136315138;
            v37 = v54();
            v39 = v9;
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v65);

            *(v35 + 4) = v40;
            v9 = v39;
            v41 = v34;
            v42 = v33;
            v43 = "invalid mesh scope type returned from Core in CustomDeformerComponent id:%s";
          }

          _os_log_impl(&dword_1C1358000, v42, v41, v43, v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v36);
          v50 = v36;
          v8 = v57;
          MEMORY[0x1C6902A30](v50, -1, -1);
          MEMORY[0x1C6902A30](v35, -1, -1);

          swift_unknownObjectRelease();
        }

LABEL_5:
        ++v9;
      }

      while (v9 != v8);
    }

    (*(v53 + 120))(v68);
  }
}

void protocol witness for Component.__toCore(_:) in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>(uint64_t *a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>);

  _Proto_MeshDeformation_v1.CustomDeformerComponent.__toCore(_:)(a1, a2, WitnessTable);
}

void _Proto_MeshDeformation_v1.CustomDeformerComponent.__toCore(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  REEngineGetServiceLocator();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&v124, AssociatedTypeWitness, AssociatedConformanceWitness);
  v109 = *(a3 + 48);
  v7 = v109(a2, a3);
  v108 = swift_getAssociatedTypeWitness();
  v107 = lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  v8 = 0;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v123 = AssociatedConformanceWitness;
  v13 = v7 + 64;
  v114 = a3;
  v115 = a2;
  v116 = v12;
  v110 = v7 + 64;
  v112 = v7;
  if (v11)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_8:
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_78;
    }

    if (v14 >= v12)
    {

      v34 = *(a3 + 72);
      v35 = *(v34(v115, a3) + 16);

      if (!v35)
      {
        return;
      }

      v36 = v34(v115, a3);
      v37 = v36;
      v38 = 0;
      v39 = v36 + 56;
      v40 = 1 << *(v36 + 32);
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v42 = v41 & *(v36 + 56);
      v43 = (v40 + 63) >> 6;
      v102 = v36;
      v104 = v43;
      v106 = v36 + 56;
      while (1)
      {
        if (v42)
        {
          v44 = v38;
        }

        else
        {
          do
          {
            v44 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_80;
            }

            if (v44 >= v43)
            {

              return;
            }

            v42 = *(v39 + 8 * v44);
            ++v38;
          }

          while (!v42);
        }

        v45 = *(v37 + 48) + ((v44 << 11) | (32 * __clz(__rbit64(v42))));
        v46 = *v45;
        v47 = *(v45 + 8);
        v48 = *(v45 + 16);
        v49 = *(v45 + 24);
        outlined copy of _Proto_MeshScope_v1(*v45, v47, v48, *(v45 + 24));
        v50 = v109(v115, v114);
        v124 = v46;
        v125 = v47;
        v126 = v48;
        v127 = v49;
        v122 = v46;
        v121 = v48;
        outlined copy of _Proto_MeshScope_v1(v46, v47, v48, v49);
        MEMORY[0x1C68F31A0](&v128, &v124, v50, &type metadata for _Proto_MeshScope_v1, v108, v107);

        outlined consume of _Proto_MeshScope_v1(v124, v125, v126, v127);
        if (!v128)
        {
          goto LABEL_81;
        }

        v42 &= v42 - 1;
        if (v49 >= 2)
        {
          break;
        }

        v51 = v48;
        v111 = v49;
        if (*(v48 + 16))
        {
          v52 = v48 + 56;
          v53 = 1 << *(v48 + 32);
          if (v53 < 64)
          {
            v54 = ~(-1 << v53);
          }

          else
          {
            v54 = -1;
          }

          v55 = v54 & *(v48 + 56);
          v56 = (v53 + 63) >> 6;

          v57 = 0;
          v117 = v56;
          v113 = v42;
          if (v55)
          {
            goto LABEL_50;
          }

          while (1)
          {
LABEL_51:
            v58 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_79;
            }

            if (v58 >= v56)
            {
              break;
            }

            v55 = *(v52 + 8 * v58);
            ++v57;
            if (v55)
            {
              while (1)
              {
                v59 = __clz(__rbit64(v55));
                v55 &= v55 - 1;
                v60 = (*(v51 + 48) + ((v58 << 10) | (16 * v59)));
                v61 = *v60;
                v62 = v60[1];
                v63 = *(v123 + 8);

                v63();
                String.utf8CString.getter();
                swift_unknownObjectRetain();

                String.utf8CString.getter();
                v118 = v61;
                String.utf8CString.getter();
                LOBYTE(v61) = RECustomDeformerComponentSetCustomDeformationInputObject();
                swift_unknownObjectRelease();

                if (v61)
                {
                  break;
                }

                if (one-time initialization token for logger != -1)
                {
                  swift_once();
                }

                v64 = type metadata accessor for Logger();
                __swift_project_value_buffer(v64, logger);
                outlined copy of _Proto_MeshScope_v1(v122, v47, v121, v111);
                v65 = v62;

                v51 = v121;
                v66 = Logger.logObject.getter();
                v67 = static os_log_type_t.error.getter();
                outlined consume of _Proto_MeshScope_v1(v122, v47, v121, v111);

                v103 = v67;
                v68 = os_log_type_enabled(v66, v67);
                v42 = v113;
                if (v68)
                {
                  log = v66;
                  v69 = swift_slowAlloc();
                  v101 = swift_slowAlloc();
                  v128 = v101;
                  *v69 = 136315394;
                  v124 = v122;
                  v125 = v47;
                  v126 = v121;
                  v127 = v111;
                  outlined copy of _Proto_MeshScope_v1(v122, v47, v121, v111);
                  v70 = _Proto_MeshScope_v1.description.getter();
                  v72 = v71;
                  outlined consume of _Proto_MeshScope_v1(v124, v125, v126, v127);
                  v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v128);

                  *(v69 + 4) = v73;
                  *(v69 + 12) = 2080;
                  v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v65, &v128);

                  *(v69 + 14) = v74;
                  v51 = v121;
                  _os_log_impl(&dword_1C1358000, log, v103, "failed to set target datum for target: %s, on part:%s", v69, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1C6902A30](v101, -1, -1);
                  MEMORY[0x1C6902A30](v69, -1, -1);
                }

                else
                {
                }

                v57 = v58;
                v52 = v121 + 56;
                v56 = v117;
                if (!v55)
                {
                  goto LABEL_51;
                }

LABEL_50:
                v58 = v57;
              }

              v57 = v58;
              v51 = v121;
              v56 = v117;
              v42 = v113;
              if (v55)
              {
                goto LABEL_50;
              }
            }
          }

          swift_unknownObjectRelease();

          outlined consume of _Proto_MeshScope_v1(v122, v47, v51, v111);

          v38 = v44;
          v37 = v102;
LABEL_35:
          v43 = v104;
          v39 = v106;
        }

        else
        {
          (*(v123 + 8))();
          String.utf8CString.getter();
          swift_unknownObjectRetain();

          String.utf8CString.getter();

          v87 = RECustomDeformerComponentSetCustomDeformationInputObject();
          swift_unknownObjectRelease();

          if (v87)
          {
            swift_unknownObjectRelease();
            outlined consume of _Proto_MeshScope_v1(v122, v47, v48, v49);
            v38 = v44;
            v43 = v104;
            v39 = v106;
          }

          else
          {
            v43 = v104;
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            __swift_project_value_buffer(v88, logger);
            outlined copy of _Proto_MeshScope_v1(v122, v47, v48, v49);
            v89 = Logger.logObject.getter();
            v90 = static os_log_type_t.error.getter();
            outlined consume of _Proto_MeshScope_v1(v122, v47, v121, v49);
            v120 = v90;
            v91 = v90;
            v92 = v89;
            if (os_log_type_enabled(v89, v91))
            {
              v93 = v47;
              v94 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              v128 = v95;
              *v94 = 136315138;
              v124 = v122;
              v125 = v93;
              v126 = v121;
              v127 = v111;
              v96 = _Proto_MeshScope_v1.description.getter();
              v98 = v97;
              outlined consume of _Proto_MeshScope_v1(v124, v125, v126, v127);
              v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v128);

              *(v94 + 4) = v99;
              v37 = v102;
              _os_log_impl(&dword_1C1358000, v92, v120, "failed to set target datum for target: %s", v94, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v95);
              MEMORY[0x1C6902A30](v95, -1, -1);
              MEMORY[0x1C6902A30](v94, -1, -1);

              swift_unknownObjectRelease();
              v38 = v44;
              v39 = v106;
            }

            else
            {

              swift_unknownObjectRelease();
              outlined consume of _Proto_MeshScope_v1(v122, v47, v121, v49);
              v38 = v44;
              v39 = v106;
              v37 = v102;
            }
          }
        }
      }

      (*(v123 + 8))();
      String.utf8CString.getter();
      swift_unknownObjectRetain();

      v75 = RECustomDeformerComponentSetCustomDeformationInputObject();
      swift_unknownObjectRelease();

      if ((v75 & 1) == 0)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v76 = type metadata accessor for Logger();
        __swift_project_value_buffer(v76, logger);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v81 = v47;
          v82 = v80;
          v128 = v80;
          *v79 = 136315138;
          v124 = v122;
          v125 = v81;
          v126 = v121;
          v127 = 2;
          v83 = _Proto_MeshScope_v1.description.getter();
          v85 = v84;
          outlined consume of _Proto_MeshScope_v1(v124, v125, v126, v127);
          v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v128);

          *(v79 + 4) = v86;
          v37 = v102;
          _os_log_impl(&dword_1C1358000, v77, v78, "failed to set target datum for target: %s", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v82);
          MEMORY[0x1C6902A30](v82, -1, -1);
          MEMORY[0x1C6902A30](v79, -1, -1);
        }
      }

      swift_unknownObjectRelease();
      v38 = v44;
      goto LABEL_35;
    }

    v11 = *(v13 + 8 * v14);
    ++v8;
  }

  while (!v11);
  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(v7 + 48) + ((v14 << 11) | (32 * v15));
    v17 = *(v16 + 24);
    if (v17 >= 2)
    {
      (*(v123 + 8))();
      String.utf8CString.getter();

      RECustomDeformerComponentForceContinuousDeformations();

      v8 = v14;
      v12 = v116;
      if (!v11)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v19 = *v16;
    v18 = *(v16 + 8);
    v20 = *(v16 + 16);

    if (*(v20 + 16))
    {
      break;
    }

    v33 = *(v123 + 8);
    outlined copy of _Proto_MeshScope_v1(v19, v18, v20, v17);
    v33();
    outlined consume of _Proto_MeshScope_v1(v19, v18, v20, v17);
    String.utf8CString.getter();

    String.utf8CString.getter();

    RECustomDeformerComponentForceContinuousDeformations();

    v8 = v14;
LABEL_26:
    v13 = v110;
    v7 = v112;
    v12 = v116;
    if (!v11)
    {
      goto LABEL_8;
    }

LABEL_7:
    v14 = v8;
  }

  v21 = v20;
  v24 = *(v20 + 56);
  v23 = v20 + 56;
  v22 = v24;
  v25 = 1 << *(v21 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v22;
  v119 = v19;
  outlined copy of _Proto_MeshScope_v1(v19, v18, v21, v17);
  v28 = (v25 + 63) >> 6;

  v29 = v17;
  v30 = 0;
  v105 = v29;
  if (v27)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v28)
    {

      outlined consume of _Proto_MeshScope_v1(v119, v18, v21, v105);

      v8 = v14;
      a3 = v114;
      goto LABEL_26;
    }

    v27 = *(v23 + 8 * v31);
    ++v30;
    if (v27)
    {
      v30 = v31;
      do
      {
LABEL_22:
        v27 &= v27 - 1;
        v32 = *(v123 + 8);

        v32();
        String.utf8CString.getter();

        String.utf8CString.getter();
        String.utf8CString.getter();

        RECustomDeformerComponentForceContinuousDeformations();
      }

      while (v27);
      continue;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
}

uint64_t static _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.makeRuntime()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, char *, uint64_t, void *))
{
  v13 = (*(a4 + 8))(a2, a4);
  v15 = v14;
  (*(a4 + 16))(&v23, a2, a4);
  v21 = v23;
  v22 = *(&v23 + 1);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v17 = a8(v13, v15, &v21, a7, v16);

  return v17;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.targetData.getter()
{
  _s17RealityFoundation25_Proto_MeshDeformation_v1V26CustomDeformerComponentGPUV10targetDataSDyAA01_c1_d6Scope_F0OxGvgTf4n_g_0();
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.targetData.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*_Proto_MeshDeformation_v1.CustomDeformerComponentCPU.targetData.modify(uint64_t *a1))()
{
  *a1 = *v1;
  a1[1] = v1;

  return _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.targetData.modify;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.targetData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    *v3 = v2;
  }

  else
  {

    *v3 = v2;
  }

  return result;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.dirtyTargets.getter()
{
  _s17RealityFoundation25_Proto_MeshDeformation_v1V26CustomDeformerComponentGPUV12dirtyTargetsShyAA01_c1_d6Scope_F0OGvgTf4n_g_0();
}

uint64_t key path getter for _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.targetData : <A, B, C>_Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, _OWORD *)@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v8 = *(a2 + a3 - 8);
  v9 = *(a1 + 16);
  v15 = *a1;
  v16 = v9;
  v10 = *(a2 + a3 - 24);
  v13[0] = *(a2 + a3 - 40);
  v13[1] = v10;
  v14 = v8;
  v11 = a4(0, v13);
  *a6 = a5(v11);
}

uint64_t key path setter for _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.targetData : <A, B, C>_Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, _OWORD *), uint64_t (*a6)(uint64_t))
{
  v8 = a3 + a4;
  v9 = *(a3 + a4 - 8);
  v10 = *a1;

  v11 = *(v8 - 24);
  v13[0] = *(v8 - 40);
  v13[1] = v11;
  v14 = v9;
  a5(0, v13);
  return a6(v10);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.dirtyTargets.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*_Proto_MeshDeformation_v1.CustomDeformerComponentCPU.dirtyTargets.modify(void *a1))()
{
  *a1 = *(v1 + 8);
  a1[1] = v1;

  return _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.dirtyTargets.modify;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.dirtyTargets.modify(void *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    *(v3 + 8) = v2;
  }

  else
  {

    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t key path getter for _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.cadenceDirty : <A, B, C>_Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, _OWORD *)@<X3>, uint64_t (*a5)(uint64_t)@<X4>, _BYTE *a6@<X8>)
{
  v8 = *(a2 + a3 - 8);
  v9 = *(a1 + 16);
  v15 = *a1;
  v16 = v9;
  v10 = *(a2 + a3 - 24);
  v13[0] = *(a2 + a3 - 40);
  v13[1] = v10;
  v14 = v8;
  v11 = a4(0, v13);
  result = a5(v11);
  *a6 = result & 1;
  return result;
}

uint64_t key path setter for _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.cadenceDirty : <A, B, C>_Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, _OWORD *), uint64_t (*a6)(uint64_t))
{
  v7 = *(a3 + a4 - 8);
  v8 = *a1;
  v9 = *(a3 + a4 - 24);
  v11[0] = *(a3 + a4 - 40);
  v11[1] = v9;
  v12 = v7;
  a5(0, v11);
  return a6(v8);
}

uint64_t (*_Proto_MeshDeformation_v1.CustomDeformerComponentCPU.cadenceDirty.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.cadenceDirty.modify;
}

double _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.init(targetData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _Proto_MeshDeformation_v1.CustomDeformerComponentStorage.init(targetData:)(a1, &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.storage.setter(__n128 *a1)
{
  v3 = a1[1].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v3;
  return result;
}

uint64_t (*protocol witness for _Proto_MeshDeformation_v1.CustomDeformerComponent.targetData.modify in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentCPU<A, B, C>(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.targetData.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for _Proto_MeshDeformation_v1.CustomDeformerComponent.dirtyTargets.modify in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentCPU<A, B, C>(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.dirtyTargets.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for _Proto_MeshDeformation_v1.CustomDeformerComponent.cadenceDirty.modify in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentCPU<A, B, C>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.cadenceDirty.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

void protocol witness for Component.__toCore(_:) in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentCPU<A, B, C>(uint64_t *a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.CustomDeformerComponentCPU<A, B, C>);

  _Proto_MeshDeformation_v1.CustomDeformerComponent.__toCore(_:)(a1, a2, WitnessTable);
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}