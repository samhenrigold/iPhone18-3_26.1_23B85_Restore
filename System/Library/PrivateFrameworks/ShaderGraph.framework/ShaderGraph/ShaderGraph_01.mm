uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
    v22 = v21[7] + 152 * v11;

    return outlined assign with take of NodeDef(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

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
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1, v21);
  }

  return result;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)();
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
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)();
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
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    v24 = *(a3 + 48);
    v27[2] = *(a3 + 32);
    v27[3] = v24;
    v28 = *(a3 + 64);
    v25 = *(a3 + 16);
    v27[0] = *a3;
    v27[1] = v25;
    specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v21);
    outlined init with copy of SGDataTypeStorage(v27, &v26);
  }
}

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
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
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
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 48 * v9);
    v21 = a1[1];
    *v20 = *a1;
    v20[1] = v21;
    v20[2] = a1[2];
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
    v17 = v9;
    specialized _NativeDictionary.copy()();
    v9 = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GMR);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {
    v20 = *(a2 + 16);
    v22 = *(a2 + 24);
    v23 = v20;
    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
    outlined init with copy of SGDataTypeGraph.PersonalityKind(&v23, v21);
    outlined init with copy of String(&v22, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = result;
      a4();
      result = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 8 * result) = a1;
  }

  else
  {

    return a6(result, a2, a1, v24);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)();
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
    v9 = specialized __RawDictionaryStorage.find<A>(_:)();
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
    v20 = v19[7] + 48 * v9;
    v21 = *v20;
    *(v20 + 25) = *(a1 + 25);
    v22 = a1[1];
    *v20 = *a1;
    *(v20 + 16) = v22;
    outlined consume of NodePersonality(v21);
  }

  else
  {
    v24 = *(a2 + 48);
    v27[2] = *(a2 + 32);
    v27[3] = v24;
    v28 = *(a2 + 64);
    v25 = *(a2 + 16);
    v27[0] = *a2;
    v27[1] = v25;
    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
    outlined init with copy of SGDataTypeStorage(v27, &v26);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
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
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
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
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v21);
  }
}

uint64_t specialized static NodePersonality.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 61;
  if ((a1 >> 61) > 3)
  {
    if (v2 > 5)
    {
      if (v2 == 6)
      {
        v13 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
        v37 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
        v38[0] = v13;
        *(v38 + 9) = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
        v14 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
        v33 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        v34 = v14;
        v15 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
        v35 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
        v36 = v15;
        v16 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v29 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v30 = v16;
        v17 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v31 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v32 = v17;
        if (a2 >> 61 != 6)
        {
          goto LABEL_56;
        }

        v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
        v46 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
        v47 = v18;
        v48[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
        *(v48 + 9) = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
        v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        v42 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v43 = v19;
        v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
        v44 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
        v45 = v20;
        v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v39 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v40 = v21;
        v41 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        outlined init with copy of UserGraph(&v39, &v28);
        v22 = specialized static UserGraph.== infix(_:_:)(&v29, &v39);
        outlined destroy of UserGraph(&v39);
        return v22 & 1;
      }

      v26 = 0xE000000000000000;
      if (a1 == 0xE000000000000000 || (v26 = 0xE000000000000008, a1 == 0xE000000000000008))
      {
        if (a2 != v26)
        {
          goto LABEL_56;
        }
      }

      else if (a2 != 0xE000000000000010)
      {
        goto LABEL_56;
      }

LABEL_53:
      v22 = 1;
      return v22 & 1;
    }

    if (v2 == 4)
    {
      if (a2 >> 61 != 4)
      {
        goto LABEL_56;
      }
    }

    else if (a2 >> 61 != 5)
    {
      goto LABEL_56;
    }
  }

  else
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (a2 >> 61 == 1)
        {
          v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v23 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return (*(*v5 + 128))(v7) & 1;
          }
        }
      }

      else
      {
        v3 = *(a1 + 64);
        v31 = *(a1 + 48);
        v32 = v3;
        LOBYTE(v33) = *(a1 + 80);
        v4 = *(a1 + 32);
        v29 = *(a1 + 16);
        v30 = v4;
        if (!(a2 >> 61))
        {
          v5 = *(a1 + 88);
          v6 = *(a2 + 48);
          v40 = *(a2 + 32);
          v41 = v6;
          v42 = *(a2 + 64);
          LOBYTE(v43) = *(a2 + 80);
          v39 = *(a2 + 16);
          v7 = *(a2 + 88);
          if (specialized static SGDataTypeStorage.== infix(_:_:)(&v29, &v39))
          {
            return (*(*v5 + 128))(v7) & 1;
          }
        }
      }

      goto LABEL_56;
    }

    if (v2 == 2)
    {
      if (a2 >> 61 == 2)
      {
        v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v8 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 0;
        if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
        {
          v9 = 0xD000000000000010;
        }

        else
        {
          v9 = 0x65636166727573;
        }

        if (v8)
        {
          v10 = 0xE700000000000000;
        }

        else
        {
          v10 = 0x8000000265F2BA10;
        }

        if (*((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
        {
          v11 = 0xD000000000000010;
        }

        else
        {
          v11 = 0x65636166727573;
        }

        if (*((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
        {
          v12 = 0x8000000265F2BA10;
        }

        else
        {
          v12 = 0xE700000000000000;
        }

        if (v9 == v11 && v10 == v12)
        {

          return (*(*v5 + 128))(v7) & 1;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v27)
        {
          return (*(*v5 + 128))(v7) & 1;
        }
      }

LABEL_56:
      v22 = 0;
      return v22 & 1;
    }

    if (a2 >> 61 != 3)
    {
      goto LABEL_56;
    }
  }

  if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
  {
    goto LABEL_53;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t specialized NodePersonalityType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NodePersonalityType.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t outlined copy of NodePersonality(unint64_t result)
{
  if ((result >> 61) <= 6)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t outlined consume of NodePersonality(unint64_t result)
{
  if ((result >> 61) <= 6)
  {
  }

  return result;
}

uint64_t specialized MetalShaderProgram.add<A>(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalLiteralValueNode();
  v13 = v8;
  v14 = &protocol witness table for MetalLiteralValueNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 120))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalLiteralValueNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalPassthroughNode();
  v13 = v8;
  v14 = &protocol witness table for MetalPassthroughNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 112))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalPassthroughNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalFunctionCallNode();
  v13 = v8;
  v14 = &protocol witness table for MetalFunctionCallNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 120))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalFunctionCallNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

{
  swift_beginAccess();
  v3 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v1 + 16) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v7 = type metadata accessor for RESurfaceShaderFunctionNode();
  v11 = v7;
  v12 = &protocol witness table for RESurfaceShaderFunctionNode;
  *&v10 = a1;
  v3[2] = v6 + 1;
  outlined init with take of MetalFunctionNode(&v10, &v3[5 * v6 + 4]);
  *(v1 + 16) = v3;
  swift_endAccess();
  swift_beginAccess();
  v8 = *(a1 + 88);
  v11 = v7;
  v12 = &protocol witness table for RESurfaceShaderFunctionNode;
  *&v10 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v10, v8);
  swift_endAccess();
  return a1;
}

{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalFunctionParameterNode();
  v13 = v8;
  v14 = &protocol witness table for MetalFunctionParameterNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 112))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalFunctionParameterNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalFunctionDefinitionNode();
  v13 = v8;
  v14 = &protocol witness table for MetalFunctionDefinitionNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 128))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalFunctionDefinitionNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalStructGetterNode();
  v13 = v8;
  v14 = &protocol witness table for MetalStructGetterNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 120))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalStructGetterNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph17MetalFunctionNode_pGMR, &_s11ShaderGraph17MetalFunctionNode_pMd, &_s11ShaderGraph17MetalFunctionNode_pMR);
  }

  v8 = type metadata accessor for MetalStructGetterOffsetNode();
  v13 = v8;
  v14 = &protocol witness table for MetalStructGetterOffsetNode;
  *&v12 = a1;
  v4[2] = v7 + 1;
  outlined init with take of MetalFunctionNode(&v12, &v4[5 * v7 + 4]);
  *(v2 + 16) = v4;
  v9 = swift_endAccess();
  v10 = (*(*a1 + 120))(v9);
  v13 = v8;
  v14 = &protocol witness table for MetalStructGetterOffsetNode;
  *&v12 = a1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v12, v10);
  swift_endAccess();
  return a1;
}

unint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph5InputVG_AH5input_AF17MetalFunctionNode_pSg01fJ0tsAE_pTg504_s11d9Graph0aB4j77V18mapConnectedInputs33_F5CF7A5B5C82F3474CCCF23EC0D47689LL7context4intoSayAA5f13V5input_AA013hI85C0_pSg01fC0tGAA04UserB8CompilerC14CompileContextVz_AA0tA7ProgramCztKFAiJ_AlMtAIKXEfU_AF04UserE8CompilerC14CompileContextVAF0deJ0VAF0hD7ProgramCTf1cn_nTf4nngXn_n(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = MEMORY[0x277D84F90];
  v90 = *(a1 + 16);
  if (!v90)
  {
    return v4;
  }

  v124 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90, 0);
  v7 = 0;
  v4 = v124;
  v89 = a1 + 32;
  v87 = a2;
  while (1)
  {
    v100 = v7;
    v8 = v89 + 56 * v7;
    v10 = *v8;
    v9 = *(v8 + 8);
    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
    v13 = *(v8 + 32);
    v14 = *(v8 + 40);
    v15 = *(v8 + 48);
    *&v125 = v10;
    *(&v125 + 1) = v9;
    v97 = v11;
    *&v126 = v11;
    *(&v126 + 1) = v12;
    v91 = v13;
    *&v127 = v13;
    v92 = v14;
    BYTE8(v127) = v14;
    v93 = v15;
    v128 = v15;
    v16 = a2[1];
    v114 = *a2;
    v115 = v16;
    v17 = a2[2];
    v18 = a2[3];
    v20 = a2[6];
    v19 = a2[7];
    v21 = a2[4];
    v119 = a2[5];
    v120 = v20;
    v117 = v18;
    v118 = v21;
    v116 = v17;
    v22 = a2[8];
    v23 = a2[9];
    *(v123 + 9) = *(a2 + 153);
    v122 = v22;
    v123[0] = v23;
    v121 = v19;
    v24 = v115;
    v25 = *(&v114 + 1) + 32;
    v26 = *(*(&v114 + 1) + 16);
    v129 = v12;
    if (v114)
    {
      break;
    }

    if (!v26)
    {
LABEL_5:

LABEL_46:
      v110 = v125;
      v111 = v126;
      v112 = v127;
      *v113 = v128;
      memset(&v113[8], 0, 40);
      goto LABEL_47;
    }

    result = 0;
    while (*(v25 + 8 * result) != v10)
    {
      if (v26 == ++result)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
    if (result >= *(v24 + 16))
    {
      goto LABEL_70;
    }

    v29 = (v24 + 48 * result);
    v31 = v29[7];
    v30 = v29[8];
    v32 = v29[9];
    v33 = *(v30 + 16);
    if (!v31)
    {

      v88 = v32;

      if (!v33)
      {
        outlined init with copy of UserGraph(&v114, v107);
LABEL_44:

        a2 = v87;
        goto LABEL_45;
      }

      v94 = v9;
      outlined init with copy of UserGraph(&v114, v107);
      v35 = 0;
      v36 = (v30 + 80);
      while (1)
      {
        if (*(v36 - 6) != v10)
        {
          goto LABEL_19;
        }

        v37 = *(v36 - 4);
        v38 = *(v36 - 3);
        v95 = *(v36 - 2);
        v39 = *(v36 - 8);
        v98 = *v36;
        v40 = *(**(v36 - 5) + 128);

        if ((v40(v94) & 1) == 0)
        {

          goto LABEL_19;
        }

        if (v37 == v97 && v38 == v129)
        {

          if (v39)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v42 & 1) == 0)
          {
            goto LABEL_19;
          }

          if (v39)
          {
LABEL_28:
            v43 = v92;
            if (v98 != v93)
            {
              v43 = 0;
            }

            if (v43)
            {
              goto LABEL_37;
            }

            goto LABEL_19;
          }
        }

        v44 = v92 ^ 1;
        if (v95 != v91)
        {
          v44 = 0;
        }

        if (v44 == 1 && v98 == v93)
        {
LABEL_37:
          a2 = v87;
          v9 = v94;
          goto LABEL_39;
        }

LABEL_19:
        v36 += 7;
        if (v33 == ++v35)
        {
          goto LABEL_44;
        }
      }
    }

    outlined init with copy of UserGraph(&v114, v107);
    result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v125, v30 + 32, v33, v31 + 16, v31 + 32);
    if (v34)
    {

LABEL_45:

      outlined destroy of UserGraph(&v114);
      goto LABEL_46;
    }

    v35 = result;
    v88 = v32;
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

LABEL_39:
    if (v35 >= *(v88 + 16))
    {
      goto LABEL_72;
    }

    v45 = (v88 + 56 * v35);
    v46 = v45[5];
    v47 = v45[7];
    v99 = v45[4];
    v96 = v45[6];
    outlined copy of Output?(v99, v46, v96, v47);

    if (!v46)
    {
      outlined destroy of UserGraph(&v114);
      goto LABEL_46;
    }

    outlined consume of Output?(v99, v46, v96, v47);
    v48 = *(*v9 + 144);

    v50 = v48(v49);
    if (v50)
    {
      v51 = v50;
    }

    else
    {
      v60 = (*(*v46 + 144))();
      if (!v60)
      {
        *&v107[0] = 0;
        *(&v107[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(61);
        MEMORY[0x266771550](0xD000000000000022, 0x8000000265F2D680);
        MEMORY[0x266771550](v97, v129);
        MEMORY[0x266771550](0x646F6E206E6F2027, 0xEB00000000272065);
        v101 = 1701080942;
        v102 = 0xE400000000000000;
        *&v106[0] = a3;
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v79);

        MEMORY[0x266771550](v101, v102);

        v80 = MEMORY[0x266771550](0x3D65707954202E27, 0xE900000000000027);
        v81 = (*(*v9 + 136))(v80);
        MEMORY[0x266771550](v81);

        MEMORY[0x266771550](39, 0xE100000000000000);
        v82 = v107[0];
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v83 = 38;
        *(v83 + 8) = v82;
        swift_willThrow();

        outlined destroy of UserGraph(&v114);

        return v4;
      }

      v51 = v60;
    }

    v61 = a2[3];
    v107[2] = a2[2];
    v107[3] = v61;
    v62 = a2[7];
    v107[6] = a2[6];
    v107[7] = v62;
    v63 = a2[5];
    v107[4] = a2[4];
    v107[5] = v63;
    v109 = *(a2 + 24);
    v64 = a2[11];
    v107[10] = a2[10];
    v108 = v64;
    v65 = a2[9];
    v107[8] = a2[8];
    v107[9] = v65;
    v66 = a2[1];
    v107[0] = *a2;
    v107[1] = v66;
    v67 = *a4;
    v68 = *(&v108 + 1);
    if (!*(*(&v108 + 1) + 16))
    {
      outlined init with copy of UserGraphCompiler.CompileContext(v107, &v101);

LABEL_60:
      v105 = 0;
      v103 = 0u;
      v104 = 0u;
LABEL_61:

      goto LABEL_62;
    }

    outlined init with copy of UserGraphCompiler.CompileContext(v107, &v101);

    v69 = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v70 & 1) == 0)
    {
      goto LABEL_60;
    }

    (*(*v67 + 272))(&v103, *(*(v68 + 56) + 8 * v69));
    if (!v85)
    {
      v85 = 0;
      goto LABEL_61;
    }

    v105 = 0;
    v103 = 0u;
    v104 = 0u;

    v85 = 0;
LABEL_62:
    outlined destroy of UserGraphCompiler.CompileContext(v107);
    if (!*(&v104 + 1))
    {
      result = outlined destroy of [Input](&v103, &_s11ShaderGraph17MetalFunctionNode_pSgMd, &_s11ShaderGraph17MetalFunctionNode_pSgMR);
      v71 = *(*a4 + 48);
      if (__OFADD__(v71, 1))
      {
        goto LABEL_73;
      }

      *(*a4 + 48) = v71 + 1;
      v72 = type metadata accessor for MetalPassthroughNode();
      v73 = swift_allocObject();
      v74 = MEMORY[0x277D84F90];
      *(v73 + 24) = v51;
      *(v73 + 32) = v74;
      *(v73 + 40) = 0;
      *(v73 + 16) = v71;

      v75 = specialized MetalShaderProgram.add<A>(_:)(v73);

      v77 = (*(*v75 + 112))(v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = *(a2 + 23);
      *(a2 + 23) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, &v125, isUniquelyReferenced_nonNull_native);
      *(a2 + 23) = v101;

      v110 = v125;
      v111 = v126;
      v112 = v127;
      *v113 = v128;
      *&v113[32] = v72;
      *&v113[40] = &protocol witness table for MetalPassthroughNode;

      outlined destroy of UserGraph(&v114);

      *&v113[8] = v75;

      v52 = v100;
      goto LABEL_48;
    }

    outlined destroy of UserGraph(&v114);

    outlined init with take of MetalFunctionNode(&v103, v106);
    v110 = v125;
    v111 = v126;
    v112 = v127;
    *v113 = v128;
    outlined init with take of MetalFunctionNode(v106, &v113[8]);
LABEL_47:
    v52 = v100;
LABEL_48:
    v124 = v4;
    v54 = *(v4 + 16);
    v53 = *(v4 + 24);
    if (v54 >= v53 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
      v52 = v100;
      v4 = v124;
    }

    v7 = v52 + 1;
    *(v4 + 16) = v54 + 1;
    v55 = (v4 + 96 * v54);
    v56 = v111;
    v55[2] = v110;
    v55[3] = v56;
    v57 = v112;
    v58 = *v113;
    v59 = *&v113[32];
    v55[6] = *&v113[16];
    v55[7] = v59;
    v55[4] = v57;
    v55[5] = v58;
    if (v7 == v90)
    {
      return v4;
    }
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v10, v25, v26, v114 + 16, v114 + 32);
  if (v28)
  {
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of [Input](uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of MetalFunctionNode(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError()
{
  result = lazy protocol witness table cache variable for type UserGraphError and conformance UserGraphError;
  if (!lazy protocol witness table cache variable for type UserGraphError and conformance UserGraphError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraphError and conformance UserGraphError);
  }

  return result;
}

uint64_t outlined destroy of [Input](uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodePersonality.ShaderType and conformance NodePersonality.ShaderType()
{
  result = lazy protocol witness table cache variable for type NodePersonality.ShaderType and conformance NodePersonality.ShaderType;
  if (!lazy protocol witness table cache variable for type NodePersonality.ShaderType and conformance NodePersonality.ShaderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodePersonality.ShaderType and conformance NodePersonality.ShaderType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodePersonality and conformance NodePersonality()
{
  result = lazy protocol witness table cache variable for type NodePersonality and conformance NodePersonality;
  if (!lazy protocol witness table cache variable for type NodePersonality and conformance NodePersonality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodePersonality and conformance NodePersonality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodePersonalityType and conformance NodePersonalityType()
{
  result = lazy protocol witness table cache variable for type NodePersonalityType and conformance NodePersonalityType;
  if (!lazy protocol witness table cache variable for type NodePersonalityType and conformance NodePersonalityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodePersonalityType and conformance NodePersonalityType);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph15NodePersonalityO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for NodePersonality(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 8))
  {
    return (*a1 + 121);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for NodePersonality(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for NodePersonality(void *result, uint64_t a2)
{
  if (a2 < 7)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NodePersonality.ShaderType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NodePersonality.ShaderType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NodePersonalityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NodePersonalityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SGDataType and conformance SGDataType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of MetalFunctionNode(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void outlined copy of Output?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void outlined consume of Output?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for SGBlending(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OrderedSet.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a4;
  v22 = a5;
  v8 = type metadata accessor for Mirror.AncestorRepresentation();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v24 = a1;
  v25 = a2;
  v23 = a2;
  v15 = *MEMORY[0x277D84BF0];
  v16 = type metadata accessor for Mirror.DisplayStyle();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  type metadata accessor for OrderedSet(0, a3, v21, v18);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  (*(v9 + 104))(v11, *MEMORY[0x277D84C38], v8);

  swift_retain_n();
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t default argument 3 of Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D84C38];
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

Swift::String __swiftcall NestedError.summarized()()
{
  v1 = v0;
  v21 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v2 = v21;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = (v3 + 16);

  outlined copy of NestedError(v1);
  swift_beginAccess();
  do
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      v5 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      *v4 = v6;
      v7 = v5;
      outlined copy of NestedError(v6);
      outlined consume of NestedError?(v1);
      v1 = v6;
    }

    else
    {
      *v4 = 0xF000000000000007;
      v1 = 0xF000000000000007;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v22 = v2;
    v11 = *(v2 + 16);
    v10 = *(v2 + 24);
    if (v11 >= v10 >> 1)
    {
      v20 = v8;
      v13 = v9;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v9 = v13;
      v8 = v20;
      v2 = v22;
    }

    *(v2 + 16) = v11 + 1;
    v12 = v2 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
  }

  while ((~v1 & 0xF000000000000007) != 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

void NestedError.last()(unint64_t a1)
{
  outlined copy of NestedError(a1);
  specialized Sequence.reversed()(a1);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
  }

  else
  {
    __break(1u);
  }
}

void specialized Sequence.reversed()(unint64_t a1)
{
  v1 = a1;
  outlined copy of NestedError(a1);
  swift_beginAccess();
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = (MEMORY[0x277D84F90] + 32);
  v34 = v1;
  do
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      v5 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = v5;
      outlined copy of NestedError(v6);
      outlined consume of NestedError?(v1);
      v1 = v6;
      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = v1;
      v1 = 0xF000000000000007;
      if (v2)
      {
LABEL_4:
        v8 = __OFSUB__(v2--, 1);
        if (v8)
        {
          goto LABEL_35;
        }

        goto LABEL_20;
      }
    }

    v9 = v3[3];
    if (((v9 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_36;
    }

    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Error_pGMd, &_ss23_ContiguousArrayStorageCys5Error_pGMR);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    v15 = v14 >> 3;
    v12[2] = v11;
    v12[3] = 2 * (v14 >> 3);
    v16 = (v12 + 4);
    v17 = v3[3] >> 1;
    if (v3[2])
    {
      v18 = v3 + 4;
      if (v12 != v3 || v16 >= v18 + 8 * v17)
      {
        memmove(v12 + 4, v18, 8 * v17);
      }

      v3[2] = 0;
    }

    v4 = (v16 + 8 * v17);
    v19 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;

    v3 = v12;
    v8 = __OFSUB__(v19, 1);
    v2 = v19 - 1;
    if (v8)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

LABEL_20:
    *v4++ = v5;
  }

  while ((~v1 & 0xF000000000000007) != 0);
  v20 = v3[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v8 = __OFSUB__(v21, v2);
    v22 = v21 - v2;
    if (v8)
    {
      goto LABEL_40;
    }

    v3[2] = v22;
  }

  outlined consume of NestedError(v34);
  v23 = v3[2];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v25 = v23 + 3;
    v26 = 4;
    do
    {
      if (v26 != v25)
      {
        v27 = v3[2];
        if (v26 - 4 >= v27)
        {
          goto LABEL_37;
        }

        if (v25 - 4 >= v27)
        {
          goto LABEL_38;
        }

        v28 = v3[v26];
        v29 = v3[v25];
        v30 = v28;
        v31 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }

        v32 = v3[v26];
        v3[v26] = v29;

        if (v25 - 4 >= v3[2])
        {
          goto LABEL_39;
        }

        v33 = v3[v25];
        v3[v25] = v28;
      }

      --v25;
      ++v26;
      --v24;
    }

    while (v24);
  }
}

unint64_t specialized Sequence.reversed()(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = __CocoaSet.count.getter();
    if (v19)
    {
      v20 = v19;
      v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5();
      specialized Array._copyContents(initializing:)(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = __CocoaSet.count.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x266772030]();
          v11 = MEMORY[0x266772030](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

id NestedError.first()(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v1 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  v2 = v1;
  return v1;
}

uint64_t NestedError.debugDescription.getter(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    a1 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NestedError()
{
  v1 = *v0;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    v1 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t NestedError.makeIterator()(unint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vys5Error_pGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vys5Error_pGGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in NestedError.makeIterator();
  *(v3 + 24) = v2;
  outlined copy of NestedError(a1);
  return v3;
}

void closure #1 in NestedError.makeIterator()(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = 0;
  v5 = *(a1 + 16);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      v4 = *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      swift_beginAccess();
      *(a1 + 16) = v6;
      v7 = v4;
      outlined copy of NestedError(v6);
      outlined consume of NestedError?(v5);
    }

    else
    {
      swift_beginAccess();
      *(a1 + 16) = 0xF000000000000007;
      v4 = v5;
    }
  }

  *a2 = v4;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance NestedError@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vys5Error_pGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vys5Error_pGGMR);
  result = swift_allocObject();
  *(result + 16) = closure #1 in NestedError.makeIterator()partial apply;
  *(result + 24) = v4;
  *a1 = result;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance NestedError()
{
  v1 = *v0;
  specialized _copySequenceToContiguousArray<A>(_:)(*v0);
  v3 = v2;
  outlined consume of NestedError(v1);
  return v3;
}

char *specialized ContiguousArray.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v5, 0);
  }

  return result;
}

unint64_t specialized NestedError.init(_:_:)(uint64_t a1, id a2)
{
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v7;
  }

  else
  {

    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  return v5 | 0x8000000000000000;
}

uint64_t sub_265D8E548()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    outlined consume of NestedError(v1);
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void outlined consume of NestedError(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
  }

  else
  {
  }
}

id outlined copy of NestedError(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
  }

  else
  {
    return a1;
  }
}

void outlined consume of NestedError?(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    outlined consume of NestedError(a1);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for NestedError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for NestedError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_265D8E788()
{
  outlined consume of NestedError(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t RESurfaceShaderMaterial.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RESurfaceShaderMaterial.surfaceShader.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  outlined copy of NodePersonality(v3);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
}

uint64_t RESurfaceShaderMaterial.debugHash.getter()
{
  v1 = *(v0 + 312);

  return v1;
}

__n128 RESurfaceShaderMaterial.init(name:surfaceShader:geometryModifier:graph:uniforms:textureAssignments:customUniformsType:debugHash:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v11 = *(a4 + 32);
  v12 = *(a4 + 40);
  v13 = *a3;
  v17 = a3[5] & 1;
  *&v16[119] = a5[7];
  *&v16[135] = a5[8];
  *&v16[151] = a5[9];
  *&v16[160] = *(a5 + 153);
  *&v16[55] = a5[3];
  *&v16[71] = a5[4];
  *&v16[87] = a5[5];
  *&v16[103] = a5[6];
  *&v16[7] = *a5;
  *&v16[23] = a5[1];
  *&v16[39] = a5[2];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v13;
  *(a9 + 24) = *(a3 + 1);
  *(a9 + 40) = *(a3 + 3);
  *(a9 + 56) = v17;
  v14 = *(a4 + 16);
  *(a9 + 64) = *a4;
  *(a9 + 80) = v14;
  *(a9 + 96) = v11;
  *(a9 + 104) = v12;
  *(a9 + 105) = *v16;
  *(a9 + 121) = *&v16[16];
  *(a9 + 137) = *&v16[32];
  *(a9 + 201) = *&v16[96];
  *(a9 + 185) = *&v16[80];
  *(a9 + 169) = *&v16[64];
  *(a9 + 153) = *&v16[48];
  result = *&v16[128];
  *(a9 + 265) = *&v16[160];
  *(a9 + 249) = *&v16[144];
  *(a9 + 233) = *&v16[128];
  *(a9 + 217) = *&v16[112];
  *(a9 + 288) = a6;
  *(a9 + 296) = a7;
  *(a9 + 304) = a8;
  *(a9 + 312) = a10;
  *(a9 + 320) = a11;
  return result;
}

void *RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  result = specialized RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(a2);
  if (!v2)
  {
    return memcpy(a1, __src, 0x148uLL);
  }

  return result;
}

uint64_t $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v28 = a3;
  v29 = a5;
  v8 = type metadata accessor for OSSignpostError();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v27 = static os_signpost_type_t.end.getter();
  v30 = a6;

  if (OS_os_log.signpostsEnabled.getter())
  {
    v16 = v12;
    v25 = v11;

    checkForErrorAndConsumeState(state:)();

    v17 = v26;
    if ((*(v26 + 88))(v10, v8) == *MEMORY[0x277D85B00])
    {
      v18 = 0;
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v17 + 8))(v10, v8);
      v19 = "%{private,mask.hash}s %s";
      v18 = 3;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = v18;
    *(v21 + 1) = v18;
    *(v21 + 2) = 2160;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, a4, &v31);
    *(v21 + 22) = 2080;
    *(v21 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v31);
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v15, v27, v23, "surfaceShaderMaterial", v19, v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266773120](v22, -1, -1);
    MEMORY[0x266773120](v21, -1, -1);

    return (*(v16 + 8))(v14, v25);
  }

  else
  {

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t UserGraph.surfaceNode()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v33 = v1[8];
  v34[0] = v2;
  *(v34 + 9) = *(v1 + 153);
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(&v33, &v32);
  v3 = v32;

  v5 = v3[2];
  if (v5)
  {
    v6 = 0;
    v7 = v3 + 9;
    v8 = MEMORY[0x277D84F90];
    v27 = v3[2];
    while (1)
    {
      v29 = v8;
      v9 = &v7[6 * v6];
      v10 = v5 - v6;
      while (1)
      {
        if (v6 >= v3[2])
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 - 5);
        if (v11 >> 61 == 5)
        {
          break;
        }

LABEL_4:
        v9 += 48;
        ++v6;
        if (!--v10)
        {
          v8 = v29;
          goto LABEL_17;
        }
      }

      v12 = *(v9 - 4);
      v13 = *(v9 - 3);
      v35 = *v9;
      v30 = *(v9 - 2);
      v31 = *(v9 - 1);
      v14 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      outlined copy of NodePersonality(v11);
      if (((1 << specialized Surface.init(nodeDefID:)(v14, v15)) & 0x28) != 0)
      {
        break;
      }

      v8 = v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      v32 = v29;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1);
        v8 = v32;
      }

      v17 = v8[2];
      v16 = v8[3];
      if (v17 >= v16 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v8 = v32;
      }

      ++v6;
      v8[2] = v17 + 1;
      v18 = &v8[6 * v17];
      v18[4] = v11;
      v18[5] = v12;
      v18[6] = v13;
      v18[7] = v30;
      v18[8] = v31;
      *(v18 + 72) = v35;
      v7 = v3 + 9;
      v5 = v27;
      if (v10 == 1)
      {
        goto LABEL_17;
      }
    }

    result = outlined consume of NodePersonality(v11);
    goto LABEL_4;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_17:

  if (v8[2])
  {
    v19 = v8[4];
    v20 = v8[5];
    v22 = v8[6];
    v21 = v8[7];
    v23 = v8;
    v24 = v8[8];
    v25 = *(v23 + 72);
    outlined copy of NodePersonality(v19);

    *a1 = v19;
    *(a1 + 8) = v20;
    *(a1 + 16) = v22;
    *(a1 + 24) = v21;
    *(a1 + 32) = v24;
    *(a1 + 40) = v25;
  }

  else
  {

    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v26 = 3;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t UserGraph.geometryModifierNode()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v37 = v1[8];
  v38[0] = v3;
  *(v38 + 9) = *(v1 + 153);
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(&v37, &v36);
  v4 = v36;

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v4 + 72;
    v9 = MEMORY[0x277D84F90];
    v31 = *(v4 + 16);
    v32 = a1;
    v30 = v4 + 72;
    v34 = v4;
    while (1)
    {
      v33 = v9;
      v10 = (v8 + 48 * v7);
      v11 = v6 - v7;
      while (1)
      {
        if (v7 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 - 5);
        if (v12 >> 61 == 5)
        {
          break;
        }

LABEL_4:
        v10 += 48;
        ++v7;
        if (!--v11)
        {
          a1 = v32;
          v9 = v33;
          goto LABEL_17;
        }
      }

      v13 = *(v10 - 4);
      v14 = *(v10 - 3);
      v15 = *v10;
      v16 = *(v10 - 2);
      v17 = *(v10 - 1);
      v18 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v35 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      outlined copy of NodePersonality(v12);
      if (specialized Surface.init(nodeDefID:)(v35, v18) != 3)
      {
        break;
      }

      v19 = v33;
      result = swift_isUniquelyReferenced_nonNull_native();
      v36 = v33;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1);
        v19 = v36;
      }

      v20 = v15;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v20 = v15;
        v19 = v36;
      }

      ++v7;
      *(v19 + 16) = v22 + 1;
      v23 = v19 + 48 * v22;
      *(v23 + 32) = v12;
      *(v23 + 40) = v13;
      *(v23 + 48) = v14;
      *(v23 + 56) = v16;
      *(v23 + 64) = v17;
      *(v23 + 72) = v20;
      v6 = v31;
      a1 = v32;
      v4 = v34;
      v9 = v19;
      v8 = v30;
      if (v11 == 1)
      {
        goto LABEL_17;
      }
    }

    result = outlined consume of NodePersonality(v12);
    v4 = v34;
    goto LABEL_4;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_17:

  if (*(v9 + 16))
  {
    v24 = *(v9 + 32);
    v25 = *(v9 + 40);
    v27 = *(v9 + 48);
    v26 = *(v9 + 56);
    v28 = *(v9 + 64);
    v29 = *(v9 + 72);
    outlined copy of NodePersonality(v24);
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v27 = 0;
    v26 = 0;
    v28 = 0;
    v29 = 0;
  }

  *a1 = v24;
  *(a1 + 8) = v25;
  *(a1 + 16) = v27;
  *(a1 + 24) = v26;
  *(a1 + 32) = v28;
  *(a1 + 40) = v29;
  return result;
}

uint64_t UserGraph.replaceRootNodeWithInternal(root:customUniformsType:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v4 = *a1;
  if (*a1 >> 61 != 5)
  {
    *&v74 = 0;
    *(&v74 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    MEMORY[0x266771550](0xD000000000000035, 0x8000000265F2D6B0);
    MEMORY[0x266771550](0xD000000000000022, 0x8000000265F2D6F0);
    v76 = v3[3];
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v21);

    MEMORY[0x266771550](1701080942, 0xE400000000000000);

    MEMORY[0x266771550](0xD000000000000012, 0x8000000265F2D720);
    v23 = 0xE000000000000000;
    v22 = 0;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v25 = 6;
    goto LABEL_27;
  }

  *&v72 = *a1;
  v6 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v7 = v6 == 0xD000000000000022 && 0x8000000265F2BBE0 == v5;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v8 = v6 == 0xD000000000000021 && 0x8000000265F2BC10 == v5;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v6 != 0xD00000000000001FLL || 0x8000000265F2BC40 != v5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v6 != 0xD000000000000021 || 0x8000000265F2D740 != v5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v6 == 0xD00000000000002BLL && 0x8000000265F2D770 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0xD00000000000002FLL && 0x8000000265F2D7A0 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (one-time initialization token for geometry_parameters_private != -1)
        {
          goto LABEL_64;
        }

        goto LABEL_52;
      }

      v57 = one-time initialization token for shared;

      if (v57 != -1)
      {
        swift_once();
      }

      if (!*(static NodeDefStore.shared + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v6, v5), (v58 & 1) == 0))
      {
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v59 = 28;
        *(v59 + 8) = v6;
        *(v59 + 16) = v5;
        return swift_willThrow();
      }

      _StringGuts.grow(_:)(36);

      *(&v74 + 1) = 0x8000000265F2D7D0;
      MEMORY[0x266771550](v6, v5);

      MEMORY[0x266771550](39, 0xE100000000000000);
      v23 = 0x8000000265F2D7D0;
      v22 = 0xD000000000000054;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      v25 = 29;
LABEL_27:
      *v24 = v25;
      *(v24 + 8) = v22;
      *(v24 + 16) = v23;
      return swift_willThrow();
    }
  }

  if (one-time initialization token for surface_parameters_private != -1)
  {
LABEL_56:
    swift_once();
  }

  v64 = 0;
  for (i = &static MetalDataType.re.surface_parameters_private; ; i = &static MetalDataType.re.geometry_parameters_private)
  {
    v10 = *i;

    v11 = v3[1];
    v141 = v11;
    v12 = *(v11 + 16);
    v73 = v10;
    v68 = v11;
    v70 = v3;
    if (v12)
    {
      *&v74 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      v13 = v74;
      v14 = (v11 + 56);
      do
      {
        v15 = *(v14 - 2);
        v16 = *(v14 - 1);
        v17 = *v14;
        *&v74 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);

        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v13 = v74;
        }

        *(v13 + 16) = v19 + 1;
        v20 = (v13 + 24 * v19);
        v20[4] = v16;
        v20[5] = v17;
        v20[6] = v15;
        v14 += 7;
        --v12;
      }

      while (v12);
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_265F1F670;
    *(v27 + 32) = 12324;
    *(v27 + 40) = 0xE200000000000000;
    *(v27 + 48) = v10;
    *&v74 = v27;
    swift_retain_n();
    specialized Array.append<A>(contentsOf:)(v13);
    v28 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_265F1F670;
    if (one-time initialization token for void != -1)
    {
      swift_once();
    }

    v30 = static MetalDataType.void;
    *(v29 + 32) = 7632239;
    *(v29 + 40) = 0xE300000000000000;
    *(v29 + 48) = v30;
    v65 = v30;
    swift_retain_n();
    v31 = v145;
    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v28, v29, v72, &v79);
    v32 = *(&v79 + 1);
    v33 = *v80;
    v62 = v79;
    v61 = *&v80[16];
    v60 = v80[24];
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v140 = v70[2];
    v3 = v140;
    outlined copy of NodePersonality(v72);
    outlined init with copy of [Input](&v141, &v74, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v140, &v74, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized Sequence.forEach(_:)(v32, v68, v31, specialized ShaderGraphNode.output(labeled:), UserGraph.moveEdge(from:to:));
    outlined consume of NodePersonality(v72);
    outlined destroy of [Input](&v141, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v140, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined copy of NodePersonality(v72);
    outlined init with copy of [Input](&v141, &v74, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v140, &v74, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized Sequence.forEach(_:)(v33, v3, v31, specialized ShaderGraphNode.output(labeled:), UserGraph.moveEdges(from:to:));
    outlined consume of NodePersonality(v72);
    outlined destroy of [Input](&v141, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v140, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v34 = v70[3];
    specialized UserGraph.removeEdges(connectedTo:)(v34);
    v35 = *(v31 + 64);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
      if ((v34 & 0x8000000000000000) != 0)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    if (v34 >= *(v35 + 2))
    {
      goto LABEL_55;
    }

    ShaderGraphNode.update(id:)(-7);
    *(v145 + 64) = v35;
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_265F1F670;
    *(v36 + 32) = 28265;
    *(v36 + 40) = 0xE200000000000000;
    *(v36 + 48) = v65;
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_265F1F670;
    *(v37 + 32) = 7632239;
    *(v37 + 40) = 0xE300000000000000;
    *(v37 + 48) = v65;
    v38 = swift_allocObject();
    *(v38 + 16) = v64;
    *(v38 + 24) = a2;

    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v36, v37, v38 | 0x4000000000000000, &v81);
    v72 = v82;
    v66 = v81;
    v69 = v84;
    v71 = v83;
    LODWORD(a2) = v85;

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_265F1F670;
    *(v39 + 32) = 7632239;
    *(v39 + 40) = 0xE300000000000000;
    *(v39 + 48) = v73;
    v40 = swift_allocObject();
    *(v40 + 16) = 12324;
    *(v40 + 24) = 0xE200000000000000;

    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(MEMORY[0x277D84F90], v39, v40 | 0x6000000000000000, &v86);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v139 = v87[0];
    specialized ShaderGraphNode.output(labeled:)(&v88, 7632239, 0xE300000000000000, v87[0]);
    if (!v89)
    {
      v77 = 0;
      v78 = 0xE000000000000000;
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v74 = v86;
      v75[0] = *v87;
      *(v75 + 9) = *(&v87[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v47 = v77;
      v48 = v78;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v49 = 14;
      *(v49 + 8) = v47;
      *(v49 + 16) = v48;
      swift_willThrow();

      v138 = v86;
      outlined destroy of NodePersonality(&v138);
      v137 = *(&v86 + 1);
      outlined destroy of [Input](&v137, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v139, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v136 = v81;
      outlined destroy of NodePersonality(&v136);
      v135 = v82;
      outlined destroy of [Input](&v135, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v134 = *(&v82 + 1);
      outlined destroy of [Input](&v134, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v133 = v79;
      outlined destroy of NodePersonality(&v133);
    }

    v111[0] = v88;
    v111[1] = v89;
    v112 = v90;
    v113 = v91;
    v114 = v92;
    v3 = v32;
    specialized ShaderGraphNode.output(labeled:)(&v93, 12324, 0xE200000000000000, v32);
    if (!v94)
    {
      v77 = 0;
      v78 = 0xE000000000000000;
      MEMORY[0x266771550](12324, 0xE200000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v74 = v79;
      v75[0] = *v80;
      *(v75 + 9) = *&v80[9];
      _print_unlocked<A, B>(_:_:)();
      v50 = v77;
      v51 = v78;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v52 = 11;
      *(v52 + 8) = v50;
      *(v52 + 16) = v51;
      swift_willThrow();

      v115 = v112;
      outlined destroy of String(&v115);
      v132 = v86;
      outlined destroy of NodePersonality(&v132);
      v131 = *(&v86 + 1);
      outlined destroy of [Input](&v131, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v139, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v130 = v81;
      outlined destroy of NodePersonality(&v130);
      v129 = v82;
      outlined destroy of [Input](&v129, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v128 = *(&v82 + 1);
      outlined destroy of [Input](&v128, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      v127 = v79;
      v53 = &v127;
      goto LABEL_43;
    }

    v107[0] = v93;
    v107[1] = v94;
    v108 = v95;
    v109 = v96;
    v110 = v97;
    UserGraph.connect(_:to:)(v111, v107);

    v117 = v108;
    outlined destroy of String(&v117);

    v116 = v112;
    outlined destroy of String(&v116);
    specialized ShaderGraphNode.output(labeled:)(&v98, 7632239, 0xE300000000000000, v33);
    if (!v99)
    {
      break;
    }

    v103[0] = v98;
    v103[1] = v99;
    v104 = v100;
    v105 = v101;
    v106 = v102;
    if (*(v72 + 16))
    {
      v41 = *(v72 + 40);
      v42 = *(v72 + 48);
      v43 = *(v72 + 56);
      v44 = *(v72 + 64);
      v45 = *(v72 + 72);
      v46 = *(v72 + 80);
      v142[0] = *(v72 + 32);
      v142[1] = v41;
      v142[2] = v42;
      v142[3] = v43;
      v142[4] = v44;
      v143 = v45;
      v144 = v46;

      UserGraph.connect(_:to:)(v103, v142);

      v118 = v104;
      outlined destroy of String(&v118);
      v120 = v86;
      outlined destroy of NodePersonality(&v120);
      v119 = *(&v86 + 1);
      outlined destroy of [Input](&v119, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      result = outlined destroy of [Input](&v139, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      *a3 = v62;
      *(a3 + 8) = v32;
      *(a3 + 16) = v33;
      *(a3 + 32) = v61;
      *(a3 + 40) = v60;
      *(a3 + 48) = v66;
      *(a3 + 56) = v72;
      *(a3 + 72) = v71;
      *(a3 + 80) = v69;
      *(a3 + 88) = a2;
      return result;
    }

    __break(1u);
LABEL_64:
    swift_once();
LABEL_52:
    v64 = 1;
  }

  v77 = 0;
  v78 = 0xE000000000000000;
  MEMORY[0x266771550](7632239, 0xE300000000000000);
  MEMORY[0x266771550](32, 0xE100000000000000);
  v74 = v79;
  v75[0] = *v80;
  *(v75 + 9) = *&v80[9];
  _print_unlocked<A, B>(_:_:)();
  v54 = v77;
  v55 = v78;
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v56 = 14;
  *(v56 + 8) = v54;
  *(v56 + 16) = v55;
  swift_willThrow();

  v126 = v86;
  outlined destroy of NodePersonality(&v126);
  v125 = *(&v86 + 1);
  outlined destroy of [Input](&v125, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v139, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v124 = v81;
  outlined destroy of NodePersonality(&v124);
  v123 = v82;
  outlined destroy of [Input](&v123, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v122 = *(&v82 + 1);
  outlined destroy of [Input](&v122, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v121 = v79;
  v53 = &v121;
LABEL_43:
  outlined destroy of NodePersonality(v53);
}

unint64_t *closure #2 in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(unint64_t *result)
{
  if (!(*result >> 61))
  {
    v1 = result[3];
    type metadata accessor for MaterialXDataType();
    result = swift_dynamicCastClass();
    if (result)
    {
      if (result[3])
      {
        v10[0] = 0;
        v10[1] = 0xE000000000000000;
        swift_retain_n();
        _StringGuts.grow(_:)(35);
        MEMORY[0x266771550](0xD000000000000011, 0x8000000265F2DA00);
        v10[3] = v1;
        v2 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v2);

        MEMORY[0x266771550](1701080942, 0xE400000000000000);

        MEMORY[0x266771550](0x6574614D20736920, 0xEE0020586C616972);
        _print_unlocked<A, B>(_:_:)();
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v3 = type metadata accessor for Logger();
        __swift_project_value_buffer(v3, logger);

        v4 = Logger.logObject.getter();
        v5 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          v10[0] = v7;
          *v6 = 136315138;
          v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v10);

          *(v6 + 4) = v8;
          _os_log_impl(&dword_265D7D000, v4, v5, "%s", v6, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v7);
          MEMORY[0x266773120](v7, -1, -1);
          MEMORY[0x266773120](v6, -1, -1);
        }

        else
        {
        }

        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v9 = 44;
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        swift_willThrow();
      }
    }
  }

  return result;
}

void *RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>, uint64_t a3@<X0>)
{
  specialized Dictionary<>.init(_:)(a1);
  result = specialized RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(a3);
  if (!v3)
  {
    return memcpy(a2, v7, 0x148uLL);
  }

  return result;
}

Swift::Bool __swiftcall RESurfaceShaderMaterial.surfaceShaderUsesCustomUniformType()()
{
  v1 = v0[16];
  v9[10] = v0[15];
  v10[0] = v1;
  *(v10 + 9) = *(v0 + 265);
  v2 = v0[12];
  v9[6] = v0[11];
  v9[7] = v2;
  v3 = v0[14];
  v9[8] = v0[13];
  v9[9] = v3;
  v4 = v0[8];
  v9[2] = v0[7];
  v9[3] = v4;
  v5 = v0[10];
  v9[4] = v0[9];
  v9[5] = v5;
  v6 = v0[2];
  v8 = v0[1];
  v9[0] = v6;
  *(v9 + 9) = *(v0 + 41);
  return UserGraph.uniqueArgumentCount(for:)(&v8) > 1;
}

uint64_t UserGraph.uniqueArgumentCount(for:)(uint64_t *a1)
{
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(a1, &v15);
  v1 = v15;

  v3 = 0;
  v4 = *(v1 + 16);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = 48 * v3 + 32;
  while (1)
  {
    if (v4 == v3)
    {

      v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

      v14 = *(v13 + 16);

      return v14;
    }

    if (v3 >= *(v1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(v1 + v6);
    v6 += 48;
    if (v7 >> 61 == 3)
    {
      v9 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall RESurfaceShaderMaterial.geometryModifierUsesCustomUniformType()()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v7[0] = v4;
  v7[1] = v1;
  v7[2] = v3;
  v8 = *(v0 + 88);
  v9 = v2 & 1;
  outlined copy of NodePersonality(v4);

  v5 = UserGraph.uniqueArgumentCount(for:)(v7);
  outlined consume of NodePersonality(v4);

  return v5 > 1;
}

uint64_t UserGraph.firstSurfaceOfType(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v2[9];
  v38 = v2[8];
  v39[0] = v4;
  *(v39 + 9) = *(v2 + 153);
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(&v38, &v37);
  v5 = v37;

  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 53;
    if (a1)
    {
      v9 = 54;
    }

    v35 = v9;
    v10 = v5 + 72;
    v34 = MEMORY[0x277D84F90];
    v32 = *(v5 + 16);
    while (1)
    {
      v11 = (v10 + 48 * v8);
      v12 = v7 - v8;
      while (1)
      {
        if (v8 >= *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        v14 = *(v11 - 5);
        if (v14 >> 61 == 5)
        {
          break;
        }

LABEL_9:
        v11 += 48;
        ++v8;
        if (!--v12)
        {
          goto LABEL_24;
        }
      }

      v15 = *(v11 - 4);
      v16 = *(v11 - 3);
      v36 = *(v11 - 1);
      v17 = *v11;
      v18 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      outlined copy of NodePersonality(v14);
      v20 = specialized Surface.init(nodeDefID:)(v18, v19);
      if (v20 <= 2)
      {
        goto LABEL_6;
      }

      if (v20 != 3)
      {
        break;
      }

      v13 = 54;
LABEL_7:
      if (v13 != v35)
      {
        goto LABEL_8;
      }

      v21 = v34;
      result = swift_isUniquelyReferenced_nonNull_native();
      v37 = v34;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 16) + 1, 1);
        v21 = v37;
      }

      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v24 = v23 + 1;
        v21 = v37;
      }

      ++v8;
      *(v21 + 16) = v24;
      v34 = v21;
      v25 = v21 + 48 * v23;
      *(v25 + 32) = v14;
      *(v25 + 40) = v15;
      *(v25 + 48) = v16;
      *(v25 + 56) = v36;
      *(v25 + 72) = v17;
      v10 = v5 + 72;
      v7 = v32;
      if (v12 == 1)
      {
        goto LABEL_24;
      }
    }

    if (v20 != 4)
    {
LABEL_8:

      result = outlined consume of NodePersonality(v14);
      goto LABEL_9;
    }

LABEL_6:
    v13 = 53;
    goto LABEL_7;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_24:

  if (*(v34 + 16))
  {
    v26 = *(v34 + 32);
    v27 = *(v34 + 40);
    v29 = *(v34 + 48);
    v28 = *(v34 + 56);
    v30 = *(v34 + 64);
    v31 = *(v34 + 72);
    outlined copy of NodePersonality(v26);
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v29 = 0;
    v28 = 0;
    v30 = 0;
    v31 = 0;
  }

  *a2 = v26;
  *(a2 + 8) = v27;
  *(a2 + 16) = v29;
  *(a2 + 24) = v28;
  *(a2 + 32) = v30;
  *(a2 + 40) = v31;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UserGraph.replaceInvalidImageNodes()()
{
  v2 = *(*(v0 + 64) + 16);

  v16 = v3;
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    while (v4 < v2)
    {
      v7 = v5 + 48 * v4;
      v8 = *(v7 + 24);
      if (v8 == -7)
      {
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_15;
        }

        v9 = *(v7 + 8);
        v10 = *(v7 + 16);
        v11 = *v7;
        v12 = *(v7 + 40);
        v13 = *(v7 + 32);
        v14[0] = v11;
        v14[1] = v9;
        v14[2] = v10;
        v14[3] = v8;
        v14[4] = v13;
        v15 = v12;
        outlined copy of NodePersonality(v11);

        closure #1 in UserGraph.replaceInvalidImageNodes()(v14, v0);
        outlined consume of NodePersonality(v11);
        if (v1)
        {

          goto LABEL_12;
        }
      }

      if (v4 >= v2)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

void closure #1 in UserGraph.replaceInvalidImageNodes()(uint64_t a1, _OWORD *a2)
{
  v129 = *a1;
  if (*a1 >> 61 != 5)
  {
    return;
  }

  v2 = &v153;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v127 = *(a1 + 24);
  v123 = *(a1 + 32);
  v125 = *(a1 + 40);

  v5._object = 0x8000000265F2D870;
  v5._countAndFlagsBits = 0xD000000000000013;
  v6 = String.hasPrefix(_:)(v5);

  v255 = v4;
  if (!v6)
  {
    v121 = v3;

    v19._countAndFlagsBits = 0x6567616D695F444ELL;
    v19._object = 0xE800000000000000;
    v20 = String.hasPrefix(_:)(v19);

    if (!v20)
    {

      v21._countAndFlagsBits = 0xD000000000000017;
      v21._object = 0x8000000265F2D850;
      v22 = String.hasPrefix(_:)(v21);

      if (!v22)
      {

        v23._countAndFlagsBits = 0xD000000000000014;
        v23._object = 0x8000000265F2D830;
        v24 = String.hasPrefix(_:)(v23);

        if (!v24)
        {
          return;
        }
      }
    }

    v133 = *(v4 + 16);
    if (!v133)
    {
      return;
    }

    v7 = 0;
    for (i = (v4 + 80); ; i += 7)
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_71:
        v134 = 0;
        v135 = 0xE000000000000000;
        MEMORY[0x266771550](7632239, 0xE300000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v141 = v7;
        v142 = v4;
        v143 = v3;
        v144 = v120;
        v145 = v118;
        v146 = v119;
        _print_unlocked<A, B>(_:_:)();
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v106 = 14;
        *(v106 + 8) = 0;
        *(v106 + 16) = 0xE000000000000000;
        swift_willThrow();

        outlined destroy of String(&v237);

        *(v2 + 71) = *(i + 1);
        outlined destroy of String(v231);
        outlined destroy of [Input](v152, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);

        outlined consume of NodePersonality(v7);

        outlined destroy of Edge(v136);

        *(v2 + 67) = v195;
        outlined destroy of String(v227);
        return;
      }

      v26 = *(i - 5);
      *v130 = *(i - 6);
      v3 = *(i - 4);
      v27 = *(i - 3);
      v28 = *(i - 2);
      v29 = *(i - 8);
      v2 = *i;
      v30 = one-time initialization token for filename;

      if (v30 != -1)
      {
        swift_once();
      }

      if ((*(*v26 + 128))(static MaterialXDataType.filename))
      {
        break;
      }

      ++v7;

      v4 = v255;
      if (v133 == v7)
      {
        return;
      }
    }

    v250[2] = v3;
    v250[3] = v27;
    v250[4] = v28;
    v251 = v29;
    v252 = v2;
    v250[1] = v26;
    v250[0] = *v130;
    v31 = a2[8];
    v32 = a2[9];
    v33 = a2[6];
    v253[7] = a2[7];
    v253[8] = v31;
    v254[0] = v32;
    *(v254 + 9) = *(a2 + 153);
    v34 = a2[5];
    v253[4] = a2[4];
    v253[5] = v34;
    v253[6] = v33;
    v35 = a2[1];
    v253[0] = *a2;
    v253[1] = v35;
    v36 = a2[3];
    v253[2] = a2[2];
    v253[3] = v36;
    outlined init with copy of UserGraph(v253, &v141);
    UserGraph.node(connectedTo:)(v250, &v168);
    outlined destroy of UserGraph(v253);
    v37 = v169;
    if (!v169)
    {

LABEL_79:

      return;
    }

    v38 = v170;
    v206 = v168;
    if (v168 >> 61 || *(v168 + 80) != 6)
    {

      outlined destroy of NodePersonality(&v206);
      v207 = v37;
      outlined destroy of [Input](&v207, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v208 = v38;
      outlined destroy of [Input](&v208, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      return;
    }

    v40 = *(v168 + 64);
    v39 = *(v168 + 72);
    v41 = *(v168 + 48);
    v42 = *(v168 + 56);
    v43 = *(v168 + 40);
    *v131 = *(v168 + 32);
    v45 = *(v168 + 16);
    v44 = *(v168 + 24);
    outlined copy of SGDataTypeStorage(v45, v44, v131[0], v43, v41, v42, v40, v39, 6);
    outlined destroy of NodePersonality(&v206);
    v209 = v37;
    outlined destroy of [Input](&v209, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v210 = v38;
    outlined destroy of [Input](&v210, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined consume of SGDataTypeStorage(v45, v44, v131[0], v43, v41, v42, v40, v39, 6);
    v46 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v46 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {
      v47 = v255;
      specialized ShaderGraphNode.output(labeled:)(&v171, 0x746C7561666564, 0xE700000000000000, v255);
      if (v172)
      {
        v202[0] = v171;
        v202[1] = v172;
        v203 = v173;
        v204 = v174;
        v205 = v175;
        v48 = a2[8];
        v49 = a2[9];
        v50 = a2[6];
        v248[7] = a2[7];
        v248[8] = v48;
        v249[0] = v49;
        *(v249 + 9) = *(a2 + 153);
        v51 = a2[5];
        v248[4] = a2[4];
        v248[5] = v51;
        v248[6] = v50;
        v52 = a2[1];
        v248[0] = *a2;
        v248[1] = v52;
        v53 = a2[3];
        v248[2] = a2[2];
        v248[3] = v53;
        outlined init with copy of UserGraph(v248, &v141);
        UserGraph.edge(to:)(v202, &v176);
        outlined destroy of UserGraph(v248);
        if (v177)
        {
          v214[0] = v176;
          v214[1] = v177;
          v215 = v178;
          v216 = v179;
          v217 = v180;
          v218 = v178;

          outlined init with copy of String(&v218, &v141);
          outlined destroy of [Input](&v176, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
          specialized ShaderGraphNode.output(labeled:)(&v181, 7632239, 0xE300000000000000, v121);
          if (!v182)
          {
            *&v136[0] = 0;
            *(&v136[0] + 1) = 0xE000000000000000;
            MEMORY[0x266771550](7632239, 0xE300000000000000);
            MEMORY[0x266771550](32, 0xE100000000000000);
            v141 = v129;
            v142 = v47;
            v143 = v121;
            v144 = v127;
            v145 = v123;
            v146 = v125;
            _print_unlocked<A, B>(_:_:)();
            v114 = v136[0];
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v115 = 14;
            *(v115 + 8) = v114;
            swift_willThrow();

            outlined destroy of String(&v218);

            v212 = v203;
            outlined destroy of String(&v212);

            return;
          }

          v198[0] = v181;
          v198[1] = v182;
          v199 = v183;
          v200 = v184;
          v201 = v185;
          UserGraph.moveEdges(from:to:)(v198, v214);

          v219 = v199;
          outlined destroy of String(&v219);
          specialized UserGraph.prune(_:)(v47, v121, v127);

          outlined destroy of String(&v218);

          v213 = v203;
          outlined destroy of String(&v213);
          goto LABEL_78;
        }

        v211 = v203;
        outlined destroy of String(&v211);
      }

      else
      {
        *&v136[0] = 0;
        *(&v136[0] + 1) = 0xE000000000000000;
        MEMORY[0x266771550](0x746C7561666564, 0xE700000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v141 = v129;
        v142 = v47;
        v143 = v121;
        v144 = v127;
        v145 = v123;
        v146 = v125;
        _print_unlocked<A, B>(_:_:)();
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v107 = type metadata accessor for Logger();
      __swift_project_value_buffer(v107, logger);
      outlined copy of NodePersonality(v129);

      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();
      outlined consume of NodePersonality(v129);

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *&v136[0] = v111;
        *v110 = 136315138;
        v141 = 1701080942;
        v142 = 0xE400000000000000;
        v134 = v127;
        v112 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v112);

        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, v136);

        *(v110 + 4) = v113;
        _os_log_impl(&dword_265D7D000, v108, v109, "Could not replace image node '%s' with an invalid asset name by its default value because its default input is not connected to anything.", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        MEMORY[0x266773120](v111, -1, -1);
        MEMORY[0x266773120](v110, -1, -1);
      }
    }

LABEL_78:

    goto LABEL_79;
  }

  specialized ShaderGraphNode.output(labeled:)(&v147, 7632239, 0xE300000000000000, v3);
  v7 = v3;
  if (!v148)
  {
    goto LABEL_30;
  }

  v194[0] = v147;
  v194[1] = v148;
  v195 = v149;
  v196 = v150;
  v197 = v151;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[6];
  v246[7] = a2[7];
  v246[8] = v8;
  v247[0] = v9;
  *(v247 + 9) = *(a2 + 153);
  v11 = a2[5];
  v246[4] = a2[4];
  v246[5] = v11;
  v246[6] = v10;
  v12 = a2[1];
  v246[0] = *a2;
  v246[1] = v12;
  v13 = a2[3];
  v246[2] = a2[2];
  v246[3] = v13;
  outlined init with copy of UserGraph(v246, &v141);
  v14 = UserGraph.edges(from:)(v194);
  outlined destroy of UserGraph(v246);
  if (!*(v14 + 16))
  {

    v220 = v195;
    v18 = &v220;
    goto LABEL_29;
  }

  v15 = *(v14 + 96);
  v137 = *(v14 + 80);
  v138 = v15;
  v16 = *(v14 + 128);
  v139 = *(v14 + 112);
  v140 = v16;
  v17 = *(v14 + 48);
  v136[0] = *(v14 + 32);
  v136[1] = v17;
  v136[2] = *(v14 + 64);
  outlined init with copy of Edge(v136, &v141);

  if (*(&v137 + 1) == -7)
  {
    outlined destroy of Edge(v136);

    v221 = v195;
    v18 = &v221;
LABEL_29:
    outlined destroy of String(v18);
LABEL_30:
    if (one-time initialization token for logger == -1)
    {
LABEL_31:
      v54 = type metadata accessor for Logger();
      __swift_project_value_buffer(v54, logger);
      outlined copy of NodePersonality(v129);

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      outlined consume of NodePersonality(v129);

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v136[0] = v58;
        *v57 = 136315138;
        v141 = 1701080942;
        v142 = 0xE400000000000000;
        v134 = v127;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266771550](v59);

        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, v136);

        *(v57 + 4) = v60;
        _os_log_impl(&dword_265D7D000, v55, v56, "Unable to find sample node connected to %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        MEMORY[0x266773120](v58, -1, -1);
        MEMORY[0x266773120](v57, -1, -1);
      }

      return;
    }

LABEL_82:
    swift_once();
    goto LABEL_31;
  }

  if ((*(&v137 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_84;
  }

  v122 = v3;
  v61 = *(a2 + 8);
  if (*(&v137 + 1) >= *(v61 + 16))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
LABEL_65:
    v99 = type metadata accessor for Logger();
    __swift_project_value_buffer(v99, logger);
    outlined copy of NodePersonality(v7);

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();
    outlined consume of NodePersonality(v7);

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v102 = 136315138;
      v141 = 1701080942;
      v142 = 0xE400000000000000;
      v134 = v103;
      v104 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v104);

      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, &v134);

      *(v102 + 4) = v105;
      _os_log_impl(&dword_265D7D000, v100, v101, "Could not replace image node '%s' with an invalid asset name by its default value because its default input is not connected to anything.", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      MEMORY[0x266773120](v103, -1, -1);
      MEMORY[0x266773120](v102, -1, -1);

      v228 = v195;
      outlined destroy of String(&v228);
      outlined consume of NodePersonality(v7);

      outlined destroy of [Input](v152, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);

      outlined destroy of Edge(v136);
    }

    else
    {

      v229 = v195;
      outlined destroy of String(&v229);
      outlined destroy of [Input](v152, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);

      outlined destroy of Edge(v136);
      outlined consume of NodePersonality(v7);

LABEL_68:
    }

    return;
  }

  v62 = v61 + 48 * *(&v137 + 1);
  v63 = *(v62 + 40);
  v64 = *(v62 + 48);
  v120 = *(v62 + 56);
  v118 = *(v62 + 64);
  v119 = *(v62 + 72);
  v65 = *(v4 + 16);
  v126 = *(v62 + 32);
  outlined copy of NodePersonality(v126);
  v129 = v63;

  v124 = v64;

  *v132 = v65;
  if (!v65)
  {
LABEL_44:
    outlined consume of NodePersonality(v126);

    outlined destroy of Edge(v136);

    v222 = v195;
    v76 = &v222;
    goto LABEL_45;
  }

  v66 = 0;
  v67 = (v4 + 80);
  while (1)
  {
    if (v66 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_82;
    }

    v69 = *(v67 - 6);
    v68 = *(v67 - 5);
    v71 = *(v67 - 4);
    v70 = *(v67 - 3);
    v72 = *(v67 - 2);
    v73 = *(v67 - 8);
    v74 = *v67;
    v75 = one-time initialization token for filename;

    if (v75 != -1)
    {
      swift_once();
    }

    if ((*(*v68 + 128))(static MaterialXDataType.filename))
    {
      break;
    }

    ++v66;

    v67 += 7;
    v4 = v255;
    if (*v132 == v66)
    {
      goto LABEL_44;
    }
  }

  v241[2] = v71;
  v241[3] = v70;
  v241[4] = v72;
  v242 = v73;
  v243 = v74;
  v241[1] = v68;
  v241[0] = v69;
  v77 = a2[8];
  v78 = a2[9];
  v79 = a2[6];
  v244[7] = a2[7];
  v244[8] = v77;
  v245[0] = v78;
  *(v245 + 9) = *(a2 + 153);
  v80 = a2[5];
  v244[4] = a2[4];
  v244[5] = v80;
  v244[6] = v79;
  v81 = a2[1];
  v244[0] = *a2;
  v244[1] = v81;
  v82 = a2[3];
  v244[2] = a2[2];
  v244[3] = v82;
  outlined init with copy of UserGraph(v244, &v141);
  UserGraph.node(connectedTo:)(v241, v152);
  v83 = v152[0];
  v84 = v152[1];
  outlined destroy of UserGraph(v244);
  v2 = &v153;
  v4 = v129;
  if (!v84)
  {
    goto LABEL_55;
  }

  if (v83 >> 61)
  {
    outlined copy of NodePersonality(v83);

    v98 = &v223;
LABEL_62:

    *v98 = v195;
    outlined destroy of String(v98);

    outlined destroy of Edge(v136);
    outlined destroy of [Input](v152, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
    outlined consume of NodePersonality(v126);

    outlined consume of NodePersonality(v83);

    goto LABEL_68;
  }

  if (*(v83 + 80) != 6)
  {
    outlined init with copy of [Input](v152, &v141, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
    v98 = &v224;
    goto LABEL_62;
  }

  v116 = *(v83 + 72);
  *v117 = *(v83 + 64);
  v85 = *(v83 + 48);
  v86 = *(v83 + 56);
  v88 = *(v83 + 32);
  v87 = *(v83 + 40);
  v90 = *(v83 + 16);
  v89 = *(v83 + 24);
  outlined init with copy of [Input](v152, &v141, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
  outlined copy of SGDataTypeStorage(v90, v89, v88, v87, v85, v86, v117[0], v116, 6);
  outlined consume of NodePersonality(v83);

  v91 = v86;
  v4 = v129;
  outlined consume of SGDataTypeStorage(v90, v89, v88, v87, v85, v91, v117[0], v116, 6);
  v92 = HIBYTE(v89) & 0xF;
  v2 = &v153;
  if ((v89 & 0x2000000000000000) == 0)
  {
    v92 = v90 & 0xFFFFFFFFFFFFLL;
  }

  if (v92)
  {
    outlined destroy of [Input](v152, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);

    outlined consume of NodePersonality(v126);

    outlined destroy of Edge(v136);

    v225 = v195;
    v76 = &v225;
    goto LABEL_45;
  }

LABEL_55:
  specialized ShaderGraphNode.output(labeled:)(&v153, 0x746C7561666564, 0xE700000000000000, v4);
  v7 = v126;
  if (!v154)
  {
    v134 = 0;
    v135 = 0xE000000000000000;
    MEMORY[0x266771550](0x746C7561666564, 0xE700000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v141 = v126;
    v142 = v4;
    v143 = v124;
    v144 = v120;
    v145 = v118;
    v146 = v119;
    _print_unlocked<A, B>(_:_:)();

    goto LABEL_64;
  }

  v190[0] = v153;
  v190[1] = v154;
  i = v190;
  v191 = v155;
  v192 = v156;
  v193 = v157;
  v93 = a2[6];
  v239[7] = a2[7];
  v94 = a2[9];
  v239[8] = a2[8];
  v240[0] = v94;
  *(v240 + 9) = *(a2 + 153);
  v95 = a2[5];
  v239[4] = a2[4];
  v239[5] = v95;
  v239[6] = v93;
  v96 = a2[1];
  v239[0] = *a2;
  v239[1] = v96;
  v97 = a2[3];
  v239[2] = a2[2];
  v239[3] = v97;
  outlined init with copy of UserGraph(v239, &v141);
  UserGraph.edge(to:)(v190, &v158);
  outlined destroy of UserGraph(v239);
  if (!v159)
  {

    v230 = v191;
    outlined destroy of String(&v230);
LABEL_64:
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_65;
    }

    goto LABEL_85;
  }

  v233[0] = v158;
  v233[1] = v159;
  v234 = v160;
  v235 = v161;
  v236 = v162;
  v237 = v160;

  outlined init with copy of String(&v237, &v141);
  outlined destroy of [Input](&v158, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
  v3 = v124;
  specialized ShaderGraphNode.output(labeled:)(&v163, 7632239, 0xE300000000000000, v124);
  if (!v164)
  {
    goto LABEL_71;
  }

  v186[0] = v163;
  v186[1] = v164;
  v187 = v165;
  v188 = v166;
  v189 = v167;
  UserGraph.moveEdges(from:to:)(v186, v233);
  specialized UserGraph.prune(_:)(v255, v122, v127);

  v238 = v187;
  outlined destroy of String(&v238);

  outlined destroy of String(&v237);

  v232 = v191;
  outlined destroy of String(&v232);
  outlined destroy of [Input](v152, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);

  outlined consume of NodePersonality(v126);

  outlined destroy of Edge(v136);

  v226 = v195;
  v76 = &v226;
LABEL_45:
  outlined destroy of String(v76);
}

uint64_t UserGraphCompiler.compiledShaderProgram(for:)(uint64_t a1)
{
  type metadata accessor for MetalShaderProgram();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  v3[2] = MEMORY[0x277D84F90];
  v3[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_AC05MetaleF0_pTt0g5Tf4g_n(v4);
  v3[4] = v4;
  v3[5] = v4;
  v3[6] = 1;
  v5 = (*(*v1 + 120))(a1, v3);

  return v5;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v14;
    v4 = a1 + 64;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS_11ShaderGraph13MetalDataTypeCttMd, &_sSS_SS_11ShaderGraph13MetalDataTypeCttMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typettMd, &_sSS_SS19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typettMR);
      swift_dynamicCast();
      v5 = v13;
      v7 = *(v14 + 16);
      v6 = *(v14 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = v13;
      }

      *(v14 + 16) = v7 + 1;
      v8 = v14 + 40 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v11;
      *(v8 + 48) = v12;
      *(v8 + 56) = v5;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
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
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph7NodeDefVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 176);
  v42 = *(a1 + 160);
  v43 = v4;
  v44 = *(a1 + 192);
  v5 = *(a1 + 112);
  v38 = *(a1 + 96);
  v39 = v5;
  v6 = *(a1 + 144);
  v40 = *(a1 + 128);
  v41 = v6;
  v7 = *(a1 + 48);
  v34 = *(a1 + 32);
  v35 = v7;
  v8 = *(a1 + 80);
  v36 = *(a1 + 64);
  v37 = v8;
  v10 = *(&v34 + 1);
  v9 = v34;
  outlined init with copy of [Input](&v34, v33, &_sSS_11ShaderGraph7NodeDefVtMd, &_sSS_11ShaderGraph7NodeDefVtMR);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = (a1 + 200);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v3[6] + 16 * result);
    *v14 = v9;
    v14[1] = v10;
    v15 = v3[7] + 152 * result;
    v16 = v36;
    *v15 = v35;
    *(v15 + 16) = v16;
    v17 = v37;
    v18 = v38;
    v19 = v40;
    *(v15 + 64) = v39;
    *(v15 + 80) = v19;
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    v20 = v41;
    v21 = v42;
    v22 = v43;
    *(v15 + 144) = v44;
    *(v15 + 112) = v21;
    *(v15 + 128) = v22;
    *(v15 + 96) = v20;
    v23 = v3[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v3[2] = v25;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v26 = (v13 + 168);
    v27 = v13[9];
    v42 = v13[8];
    v43 = v27;
    v44 = *(v13 + 20);
    v28 = v13[5];
    v38 = v13[4];
    v39 = v28;
    v29 = v13[7];
    v40 = v13[6];
    v41 = v29;
    v30 = v13[1];
    v34 = *v13;
    v35 = v30;
    v31 = v13[3];
    v36 = v13[2];
    v37 = v31;
    v10 = *(&v34 + 1);
    v9 = v34;
    outlined init with copy of [Input](&v34, v33, &_sSS_11ShaderGraph7NodeDefVtMd, &_sSS_11ShaderGraph7NodeDefVtMR);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
    v13 = v26;
    if (v32)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph11GeomPropDefVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27[0] = v5;
  *(v27 + 9) = *(a1 + 89);
  v7 = *(&v24 + 1);
  v6 = v24;
  outlined init with copy of [Input](&v24, v23, &_sSS_11ShaderGraph11GeomPropDefVtMd, &_sSS_11ShaderGraph11GeomPropDefVtMR);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v27[0];
    *(v12 + 41) = *(v27 + 9);
    v12[1] = v14;
    v12[2] = v15;
    *v12 = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27[0] = v21;
    *(v27 + 9) = *(v10 + 57);
    v7 = *(&v24 + 1);
    v6 = v24;
    outlined init with copy of [Input](&v24, v23, &_sSS_11ShaderGraph11GeomPropDefVtMd, &_sSS_11ShaderGraph11GeomPropDefVtMR);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph9InputSpecVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph9InputSpecVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph9InputSpecVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph0cD4NodeV2IDVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph0cD4NodeV2IDVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph0cD4NodeV2IDVGMR);
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

void _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_G_AC0cdE0V2IDVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GAC0cdE0V2IDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GAC0cdE0V2IDVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = a1 + 56; ; i += 48)
    {
      v5 = *(i - 8);
      v15 = *(i - 24);
      v16 = v5;
      v6 = *(i + 16);
      v17 = *(i + 8);
      v18 = *i;
      v19 = v5;
      outlined init with copy of SGDataTypeGraph.PersonalityKind(&v19, v14);
      outlined init with copy of String(&v18, v14);
      specialized __RawDictionaryStorage.find<A>(_:)(&v15);
      if (v8)
      {
        break;
      }

      *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
      v9 = v3[6] + 40 * v7;
      v10 = v16;
      *v9 = v15;
      *(v9 + 16) = v10;
      *(v9 + 32) = v17;
      *(v3[7] + 8 * v7) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_9;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
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

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
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
      outlined init with copy of [Input](v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
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

void *specialized Sequence.forEach(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  return specialized Sequence.forEach(_:)(a1, a2, a3, specialized ShaderGraphNode.output(labeled:), UserGraph.moveEdge(from:to:));
}

{
  return specialized Sequence.forEach(_:)(a1, a2, a3, specialized ShaderGraphNode.output(labeled:), UserGraph.moveEdges(from:to:));
}

void *specialized Sequence.forEach(_:)(void *result, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr), void (*a5)(uint64_t *, void *))
{
  v27 = a5;
  v5 = result[2];
  if (v5)
  {
    v7 = result + 10;
    do
    {
      v8 = *v7;
      v9 = *(v7 - 8);
      v11 = *(v7 - 3);
      v10 = *(v7 - 2);
      v13 = *(v7 - 5);
      v12 = *(v7 - 4);
      v24[0] = *(v7 - 6);
      v24[1] = v13;
      v24[2] = v12;
      v24[3] = v11;
      v24[4] = v10;
      v25 = v9;
      v26 = v8;
      result = a4(&v14);
      if (v15)
      {
        v19[0] = v14;
        v19[1] = v15;
        v20 = v16;
        v21 = v17;
        v22 = v18;

        v27(v19, v24);

        v23 = v20;
        outlined destroy of String(&v23);
      }

      v7 += 7;
      --v5;
    }

    while (v5);
  }

  return result;
}

unint64_t specialized UserGraph.transformMaterialXImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(result + 16);
  if (!v5)
  {
    return result;
  }

  v6 = 0;
  v7 = result + 32;
  v200 = result + 32;
  v201 = *(result + 16);
  while (1)
  {
    v8 = v7 + 48 * v6;
    v9 = *v8;
    if (*v8 >> 61 != 5)
    {
      goto LABEL_5;
    }

    v203 = v6;
    v11 = *(v8 + 8);
    v10 = *(v8 + 16);
    v12 = *(v8 + 24);
    v13 = *(v8 + 32);
    v14 = *(v8 + 40);
    outlined copy of NodePersonality(v9);

    v15._countAndFlagsBits = 0x6567616D695F444ELL;
    v15._object = 0xE800000000000000;
    v16 = String.hasPrefix(_:)(v15);

    if (v16)
    {
      break;
    }

    outlined consume of NodePersonality(v9);

LABEL_4:
    v7 = v200;
    v5 = v201;
    v6 = v203;
LABEL_5:
    if (++v6 == v5)
    {
      return result;
    }
  }

  specialized ShaderGraphNode.output(labeled:)(&v219, 7632239, 0xE300000000000000, v10);
  v17 = v220;
  if (!v220)
  {
    v209 = 0;
    v210 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *&v211 = v9;
    *(&v211 + 1) = v11;
    *v212 = v10;
    *&v212[8] = v12;
    *&v212[16] = v13;
    v212[24] = v14;
    _print_unlocked<A, B>(_:_:)();
    v137 = v209;
    v138 = v210;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v140 = 14;
LABEL_159:
    *v139 = v140;
    *(v139 + 8) = v137;
    *(v139 + 16) = v138;
    swift_willThrow();
LABEL_161:
    outlined consume of NodePersonality(v9);
LABEL_168:
  }

  v374 = v221;
  v18 = outlined destroy of String(&v374);
  v19 = (*(*v17 + 144))(v18);

  if (!v19)
  {
    v209 = 0;
    v210 = 0xE000000000000000;
    *&v211 = v9;
    *(&v211 + 1) = v11;
    *v212 = v10;
    *&v212[8] = v12;
    *&v212[16] = v13;
    v212[24] = v14;
    _print_unlocked<A, B>(_:_:)();
    v137 = v209;
    v138 = v210;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    v140 = 8;
    goto LABEL_159;
  }

  specialized ShaderGraphNode.metalTextureType.getter(v9);

  UserGraph.insertImageNode(metalTextureType:resultType:)(v20, v19, &v222);

  specialized ShaderGraphNode.output(labeled:)(&v224, 7632239, 0xE300000000000000, v10);
  if (!v225)
  {
    v209 = 0;
    v210 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    *&v211 = v9;
    *(&v211 + 1) = v11;
    *v212 = v10;
    *&v212[8] = v12;
    *&v212[16] = v13;
    v212[24] = v14;
    _print_unlocked<A, B>(_:_:)();
    v141 = v209;
    v142 = v210;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v143 = 14;
    *(v143 + 8) = v141;
    *(v143 + 16) = v142;
    swift_willThrow();
    v448 = v222;
    outlined destroy of NodePersonality(&v448);
    v447 = *(&v222 + 1);
    outlined destroy of [Input](&v447, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v446 = v223[0];
    outlined destroy of [Input](&v446, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    goto LABEL_161;
  }

  v370[0] = v224;
  v370[1] = v225;
  v371 = v226;
  v372 = v227;
  v373 = v228;
  v445 = v223[0];
  specialized ShaderGraphNode.output(labeled:)(&v229, 7632239, 0xE300000000000000, v223[0]);
  if (!v230)
  {
    v209 = 0;
    v210 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v211 = v222;
    *v212 = *v223;
    *&v212[9] = *(&v223[1] + 1);
    _print_unlocked<A, B>(_:_:)();
    v144 = v209;
    v145 = v210;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v146 = 14;
    *(v146 + 8) = v144;
    *(v146 + 16) = v145;
    swift_willThrow();

    v375 = v371;
    outlined destroy of String(&v375);
    v444 = v222;
    outlined destroy of NodePersonality(&v444);
    v443 = *(&v222 + 1);
    outlined destroy of [Input](&v443, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    goto LABEL_166;
  }

  v366[0] = v229;
  v366[1] = v230;
  v367 = v231;
  v368 = v232;
  v369 = v233;
  UserGraph.moveEdges(from:to:)(v370, v366);

  v377 = v367;
  outlined destroy of String(&v377);

  v376 = v371;
  outlined destroy of String(&v376);
  *&v211 = 0;
  *(&v211 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  *&v211 = 0xD000000000000018;
  *(&v211 + 1) = 0x8000000265F2D8E0;
  v209 = 1701080942;
  v210 = 0xE400000000000000;
  v218 = v12;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v21);

  MEMORY[0x266771550](v209, v210);

  MEMORY[0x266771550](39, 0xE100000000000000);
  specialized UserGraph.insertCreateSampler(label:)(&v234);

  v442 = v235[0];
  specialized ShaderGraphNode.output(labeled:)(&v236, 7632239, 0xE300000000000000, v235[0]);
  if (!v237)
  {
    v209 = 0;
    v210 = 0xE000000000000000;
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v211 = v234;
    *v212 = *v235;
    *&v212[9] = *(&v235[1] + 1);
    _print_unlocked<A, B>(_:_:)();
    v147 = v209;
    v148 = v210;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v149 = 14;
    *(v149 + 8) = v147;
    *(v149 + 16) = v148;
    swift_willThrow();
    v441 = v234;
    outlined destroy of NodePersonality(&v441);
    v440 = *(&v234 + 1);
    outlined destroy of [Input](&v440, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v439 = v222;
    outlined destroy of NodePersonality(&v439);
    v438 = *(&v222 + 1);
    v150 = &v438;
LABEL_165:
    outlined destroy of [Input](v150, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
LABEL_166:
    outlined destroy of [Input](&v445, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
LABEL_167:

    outlined consume of NodePersonality(v9);
    goto LABEL_168;
  }

  v362[0] = v236;
  v362[1] = v237;
  v363 = v238;
  v364 = v239;
  v365 = v240;
  v437 = *(&v222 + 1);
  v208 = *(&v222 + 1);
  specialized ShaderGraphNode.output(labeled:)(&v241, 115, 0xE100000000000000, *(&v222 + 1));
  if (!v242)
  {
    v209 = 0;
    v210 = 0xE000000000000000;
    MEMORY[0x266771550](115, 0xE100000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v211 = v222;
    *v212 = *v223;
    *&v212[9] = *(&v223[1] + 1);
    _print_unlocked<A, B>(_:_:)();
    v151 = v209;
    v152 = v210;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v153 = 11;
    *(v153 + 8) = v151;
    *(v153 + 16) = v152;
    swift_willThrow();

    v378 = v363;
    outlined destroy of String(&v378);
    v436 = v234;
    outlined destroy of NodePersonality(&v436);
    v435 = *(&v234 + 1);
    outlined destroy of [Input](&v435, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v434 = v222;
    outlined destroy of NodePersonality(&v434);
    v150 = &v437;
    goto LABEL_165;
  }

  v358[0] = v241;
  v358[1] = v242;
  v359 = v243;
  v360 = v244;
  v361 = v245;
  UserGraph.connect(_:to:)(v362, v358);

  v380 = v359;
  outlined destroy of String(&v380);

  v379 = v363;
  outlined destroy of String(&v379);
  v206 = *(v11 + 16);
  if (!v206)
  {
    v405 = v222;

    outlined destroy of NodePersonality(&v405);
    outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v445, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v404 = v234;
    outlined destroy of NodePersonality(&v404);
    v403 = *(&v234 + 1);
    v129 = &v403;
LABEL_151:
    outlined destroy of [Input](v129, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined consume of NodePersonality(v9);

    result = swift_bridgeObjectRelease_n();
    goto LABEL_4;
  }

  v207 = v11 + 32;

  v22 = 0;
  v195 = v11;
  v196 = v9;
  while (1)
  {
    if (v22 >= *(v11 + 16))
    {
      __break(1u);
LABEL_172:

      v209 = 0;
      v210 = 0xE000000000000000;
      MEMORY[0x266771550](0x7365726464615F73, 0xE900000000000073);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v211 = v234;
      *v212 = *v235;
      *&v212[9] = *(&v235[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v157 = v209;
      v158 = v210;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v159 = 11;
      *(v159 + 8) = v157;
      *(v159 + 16) = v158;
      swift_willThrow();
      v422 = v222;
      outlined destroy of NodePersonality(&v422);
      outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v445, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v421 = v234;
      outlined destroy of NodePersonality(&v421);
      v136 = &v423;
      goto LABEL_155;
    }

    v23 = v207 + 56 * v22;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 24);
    v28 = *(v23 + 32);
    v29 = *(v23 + 40);
    v30 = *(v23 + 48);
    *&v449 = v25;
    *(&v449 + 1) = v24;
    *&v450 = v26;
    *(&v450 + 1) = v27;
    *&v451 = v28;
    BYTE8(v451) = v29;
    v452 = v30;
    v31 = v26 == 1701603686 && v27 == 0xE400000000000000;
    if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      specialized ShaderGraphNode.output(labeled:)(&v246, 1701603686, 0xE400000000000000, v208);
      if (!v247)
      {

        v209 = 0;
        v210 = 0xE000000000000000;
        MEMORY[0x266771550](1701603686, 0xE400000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v211 = v222;
        *v212 = *v223;
        *&v212[9] = *(&v223[1] + 1);
        _print_unlocked<A, B>(_:_:)();
        v130 = v209;
        v131 = v210;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v132 = 11;
        *(v132 + 8) = v130;
        *(v132 + 16) = v131;
        swift_willThrow();
        v414 = v222;
        outlined destroy of NodePersonality(&v414);
        outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v445, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v413 = v234;
        outlined destroy of NodePersonality(&v413);
        v412 = *(&v234 + 1);
        outlined destroy of [Input](&v412, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        goto LABEL_156;
      }

      v320[0] = v246;
      v320[1] = v247;
      v321 = v248;
      v322 = v249;
      v323 = v250;

      UserGraph.convertFilenameInput(_:movingTo:textureAssignments:customUniformsType:)(&v449, v320, a2, a3);
      if (v4)
      {
        outlined consume of NodePersonality(v9);

        v411 = v222;
        outlined destroy of NodePersonality(&v411);
        outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v445, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v410 = v234;
        outlined destroy of NodePersonality(&v410);
        v409 = *(&v234 + 1);
        outlined destroy of [Input](&v409, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v402 = v321;
        outlined destroy of String(&v402);
      }

      v401 = v321;
      v32 = &v401;
LABEL_25:
      outlined destroy of String(v32);
LABEL_66:

      goto LABEL_67;
    }

    v33 = v26 == 0x746C7561666564 && v27 == 0xE700000000000000;
    v202 = v27;
    if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      specialized ShaderGraphNode.output(labeled:)(&v251, 0x56746C7561666564, 0xEA00000000006C61, v208);
      if (!v252)
      {

        v209 = 0;
        v210 = 0xE000000000000000;
        MEMORY[0x266771550](0x56746C7561666564, 0xEA00000000006C61);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v211 = v222;
        *v212 = *v223;
        *&v212[9] = *(&v223[1] + 1);
        _print_unlocked<A, B>(_:_:)();
        v133 = v209;
        v134 = v210;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v135 = 11;
        *(v135 + 8) = v133;
        *(v135 + 16) = v134;
        swift_willThrow();
        v417 = v222;
        outlined destroy of NodePersonality(&v417);
        outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v445, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v416 = v234;
        outlined destroy of NodePersonality(&v416);
        v415 = *(&v234 + 1);
        v136 = &v415;
        goto LABEL_155;
      }

      v34 = v251;
      v330[0] = v251;
      v330[1] = v252;
      v331 = v253;
      v332 = v254;
      v333 = v255;
      specialized OrderedDictionary.subscript.getter(v25, *v466, v466[1], v466[2], &v256);
      v35 = v257;
      if (v257)
      {
        v193 = v25;
        v197 = v4;
        v36 = v261;
        v37 = v260;
        v38 = v259;
        v39 = v258;
        v40 = v256;

        specialized OrderedDictionary.subscript.getter(&v449, v38, v37, v36, &v262);
        v41 = v39;
        v42 = v37;
        v11 = v195;
        v9 = v196;
        v43 = v36;
        v4 = v197;
        outlined consume of UserGraph.Adjacent?(v40, v35, v41, v38, v42, v43);
        v44 = v263;
        if (v263 > 1)
        {
          v45 = v264;
          v46 = v265;
          v47 = v266;
          v48 = v268;
          v186 = v262;
          v324[0] = v262;
          v324[1] = v263;
          v325 = v264;
          v326 = v265;
          v327 = v266;
          *v328 = *v267;
          *&v328[3] = *&v267[3];
          v329 = v268;
          v49 = specialized OrderedDictionary.subscript.modify(&v211, v34);
          if (*(v50 + 8))
          {
            v396 = v253;
            v400 = v325;
            v455[0] = v186;
            v455[1] = v44;
            v456 = v45;
            v457 = v46;
            v458 = v47 & 1;
            v459 = v48;
            v51 = v49;

            outlined init with copy of String(&v396, &v209);

            outlined init with copy of String(&v400, &v209);
            specialized OrderedDictionary.subscript.setter(v455, v330);
            v51(&v211, 0);
          }

          else
          {
            v49(&v211, 0);
          }

          v54 = specialized OrderedDictionary.subscript.modify(&v211, v193);
          v11 = v195;
          v9 = v196;
          v4 = v197;
          if (*(v55 + 8))
          {
            *v453 = xmmword_265F1F680;
            memset(&v453[2], 0, 32);
            v454 = 0;

            specialized OrderedDictionary.subscript.setter(v453, &v449);
          }

          v54(&v211, 0);
          v56 = v324[0];
          v57 = specialized OrderedDictionary.subscript.modify(&v211, v324[0]);
          if (*(v58 + 8))
          {
            v59 = specialized OrderedDictionary.subscript.modify(&v209, v324);
            if (*(v60 + 8))
            {
              specialized OrderedSet.remove(_:)(&v449, v269);
              outlined destroy of [Input](v269, &_s11ShaderGraph5InputVSgMd, &_s11ShaderGraph5InputVSgMR);
            }

            v59(&v209, 0);
          }

          v57(&v211, 0);
          v61 = specialized OrderedDictionary.subscript.modify(&v211, v56);
          if (*(v62 + 8))
          {
            v63 = specialized OrderedDictionary.subscript.modify(&v209, v324);
            if (*(v64 + 8))
            {
              specialized OrderedSet._append(_:)(v330);
              v63(&v209, 0);
              v61(&v211, 0);

              v399 = v325;
              v65 = &v399;
            }

            else
            {
              v63(&v209, 0);
              v61(&v211, 0);

              v398 = v325;
              v65 = &v398;
            }
          }

          else
          {
            v61(&v211, 0);

            v397 = v325;
            v65 = &v397;
          }

          outlined destroy of String(v65);
        }
      }

      else
      {
      }

      v395 = v331;
      outlined destroy of String(&v395);
      goto LABEL_66;
    }

    v52 = v26 == 0x64726F6F63786574 && v27 == 0xE800000000000000;
    if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      specialized ShaderGraphNode.output(labeled:)(&v270, 0x64726F6F63786574, 0xE800000000000000, v208);
      if (!v271)
      {

        v209 = 0;
        v210 = 0xE000000000000000;
        MEMORY[0x266771550](0x64726F6F63786574, 0xE800000000000000);
        MEMORY[0x266771550](32, 0xE100000000000000);
        v211 = v222;
        *v212 = *v223;
        *&v212[9] = *(&v223[1] + 1);
        _print_unlocked<A, B>(_:_:)();
        v154 = v209;
        v155 = v210;
        lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
        swift_allocError();
        *v156 = 11;
        *(v156 + 8) = v154;
        *(v156 + 16) = v155;
        swift_willThrow();
        v420 = v222;
        outlined destroy of NodePersonality(&v420);
        outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined destroy of [Input](&v445, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

        v419 = v234;
        outlined destroy of NodePersonality(&v419);
        v418 = *(&v234 + 1);
        v136 = &v418;
        goto LABEL_155;
      }

      v334[0] = v270;
      v334[1] = v271;
      v335 = v272;
      v336 = v273;
      v337 = v274;

      UserGraph.moveEdge(from:to:)(&v449, v334);

      v394 = v335;
      v53 = &v394;
      goto LABEL_44;
    }

    v66 = v26 == 0x7373657264646175 && v27 == 0xEC00000065646F6DLL;
    if (!v66 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    v423 = *(&v234 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v275, 0x7365726464615F73, 0xE900000000000073, *(&v234 + 1));
    if (!v276)
    {
      goto LABEL_172;
    }

    v338[0] = v275;
    v338[1] = v276;
    v339 = v277;
    v340 = v278;
    v341 = v279;

    UserGraph.moveEdge(from:to:)(&v449, v338);

    v393 = v339;
    v53 = &v393;
LABEL_44:
    outlined destroy of String(v53);

LABEL_67:
    if (++v22 == v206)
    {
      v408 = v222;
      outlined destroy of NodePersonality(&v408);
      outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v445, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v407 = v234;
      outlined destroy of NodePersonality(&v407);
      v406 = *(&v234 + 1);
      v129 = &v406;
      goto LABEL_151;
    }
  }

  if (v26 == 0x7373657264646176 && v27 == 0xEC00000065646F6DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v426 = *(&v234 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v280, 0x7365726464615F74, 0xE900000000000073, *(&v234 + 1));
    if (!v281)
    {

      v209 = 0;
      v210 = 0xE000000000000000;
      MEMORY[0x266771550](0x7365726464615F74, 0xE900000000000073);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v211 = v234;
      *v212 = *v235;
      *&v212[9] = *(&v235[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v160 = v209;
      v161 = v210;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v162 = 11;
      *(v162 + 8) = v160;
      *(v162 + 16) = v161;
      swift_willThrow();
      v425 = v222;
      outlined destroy of NodePersonality(&v425);
      outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v445, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v424 = v234;
      outlined destroy of NodePersonality(&v424);
      v136 = &v426;
      goto LABEL_155;
    }

    v342[0] = v280;
    v342[1] = v281;
    v343 = v282;
    v344 = v283;
    v345 = v284;

    UserGraph.moveEdge(from:to:)(&v449, v342);

    v392 = v343;
    v53 = &v392;
    goto LABEL_44;
  }

  if ((v26 != 0x79747265746C6966 || v27 != 0xEA00000000006570) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if ((v26 != 0x726579616CLL || v27 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v26 != 0x6E6172656D617266 || v27 != 0xEA00000000006567) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v26 != 0x66666F656D617266 || v27 != 0xEB00000000746573))
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v26 == 0x646E65656D617266 && v27 == 0xEE006E6F69746361 || (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v9 = v196;
      }

      else
      {
        v123 = one-time initialization token for logger;

        if (v123 != -1)
        {
          swift_once();
        }

        v124 = type metadata accessor for Logger();
        __swift_project_value_buffer(v124, logger);

        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          *&v211 = v128;
          *v127 = 136315138;
          *(v127 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v202, &v211);
          _os_log_impl(&dword_265D7D000, v125, v126, "Ignoring unexpected image node input '%s'", v127, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v128);
          MEMORY[0x266773120](v128, -1, -1);
          MEMORY[0x266773120](v127, -1, -1);
        }

        else
        {
        }

        v9 = v196;
      }
    }

    goto LABEL_67;
  }

  v433 = *(&v234 + 1);
  v194 = *(&v234 + 1);
  specialized ShaderGraphNode.output(labeled:)(v285, 0x746C69665F67616DLL, 0xEA00000000007265, *(&v234 + 1));
  if (!*(&v285[0] + 1))
  {

    v209 = 0;
    v210 = 0xE000000000000000;
    MEMORY[0x266771550](0x746C69665F67616DLL, 0xEA00000000007265);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v211 = v234;
    *v212 = *v235;
    *&v212[9] = *(&v235[1] + 1);
    _print_unlocked<A, B>(_:_:)();
    v163 = v209;
    v164 = v210;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v165 = 11;
    *(v165 + 8) = v163;
    *(v165 + 16) = v164;
    swift_willThrow();
    v432 = v222;
    outlined destroy of NodePersonality(&v432);
    outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v445, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v431 = v234;
    v166 = &v431;
    goto LABEL_177;
  }

  result = *&v285[0];
  v354 = v285[0];
  v355 = v285[1];
  v356 = v285[2];
  v357 = v286;
  v67 = v466[1];
  v68 = v466[2];
  v69 = v67 + 32;
  v70 = *(v67 + 16);
  v190 = *v466;
  if (!*v466)
  {
    if (!v70)
    {
      goto LABEL_89;
    }

    v72 = 0;
    while (*(v69 + 8 * v72) != *&v285[0])
    {
      if (v70 == ++v72)
      {
        goto LABEL_89;
      }
    }

LABEL_81:
    v184 = v67;
    if (v72 >= *(v68 + 16))
    {
      goto LABEL_179;
    }

    v183 = v68;
    v73 = (v68 + 48 * v72);
    v75 = v73[7];
    v74 = v73[8];
    v76 = v73[9];
    v187 = *(v74 + 16);
    v198 = v4;
    if (v75)
    {

      result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v354, v74 + 32, v187, v75 + 16, v75 + 32);
      v77 = v76;
      if ((v78 & 1) == 0)
      {
LABEL_105:
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_183;
        }

        if (result >= *(v77 + 16))
        {
          goto LABEL_182;
        }

        v80 = (v77 + 56 * result);
        v81 = v80[5];
        v180 = v80[8];
        v182 = v80[4];
        v176 = v80[7];
        v178 = v80[6];
        v174 = v80[9];
        v188 = v80[10];
        outlined copy of Output?(v182, v81, v178, v176);

        if (v81)
        {

          outlined consume of Output?(v182, v81, v178, v176);
          LOBYTE(v209) = v174 & 1;
          v214 = v354;
          v215 = v355;
          v216 = v356;
          v217 = v357;
          *&v211 = v182;
          *(&v211 + 1) = v81;
          *v212 = v178;
          *&v212[8] = v176;
          *&v212[16] = v180;
          v212[24] = v174 & 1;
          v213 = v188;
          outlined destroy of Edge(&v211);
          goto LABEL_114;
        }

        goto LABEL_109;
      }
    }

    else
    {

      result = specialized Collection<>.firstIndex(of:)(&v354, v74 + 32, v187);
      v77 = v76;
      if ((v79 & 1) == 0)
      {
        goto LABEL_105;
      }
    }

LABEL_109:
    v68 = v183;
    v67 = v184;
    goto LABEL_110;
  }

  result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(*&v285[0], v69, v70, *v466 + 16, *v466 + 32);
  if (v71)
  {
LABEL_89:
    v198 = v4;

LABEL_110:
    specialized OrderedDictionary.subscript.getter(v25, v190, v67, v68, &v307);
    v82 = v308;
    if (v308 && (v83 = v312, v84 = v311, v85 = v310, v86 = v309, v385 = v307, , , , outlined destroy of [Input](&v385, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR), v384 = v82, outlined destroy of [Input](&v384, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR), v383 = v86, outlined destroy of [Input](&v383, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR), , , , specialized OrderedDictionary.subscript.getter(&v449, v85, v84, v83, &v313), , , , v87 = v314, v314 >= 2))
    {
      v191 = v319;
      v88 = v318;
      v89 = v317;
      v90 = v316;
      v91 = v315;
      v92 = v313;

      outlined destroy of [Input](&v313, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
      LOBYTE(v209) = v88 & 1;
      v214 = v449;
      v215 = v450;
      v216 = v451;
      v217 = v452;
      *&v211 = v92;
      *(&v211 + 1) = v87;
      *v212 = v91;
      *&v212[8] = v90;
      *&v212[16] = v89;
      v212[24] = v88 & 1;
      v213 = v191;
      v463[0] = v92;
      v463[1] = v87;
      v9 = v196;
      v463[2] = v91;
      v463[3] = v90;
      v463[4] = v89;
      v464 = v88 & 1;
      v465 = v191;

      outlined destroy of Edge(&v211);
      UserGraph.connect(_:to:)(v463, &v354);

      v381 = v355;
      outlined destroy of String(&v381);
    }

    else
    {

      v382 = v355;
      outlined destroy of String(&v382);
    }

LABEL_114:
    specialized ShaderGraphNode.output(labeled:)(v287, 0x746C69665F70696DLL, 0xEA00000000007265, v194);
    if (!*(&v287[0] + 1))
    {

      v209 = 0;
      v210 = 0xE000000000000000;
      MEMORY[0x266771550](0x746C69665F70696DLL, 0xEA00000000007265);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v211 = v234;
      *v212 = *v235;
      *&v212[9] = *(&v235[1] + 1);
      _print_unlocked<A, B>(_:_:)();
      v167 = v209;
      v168 = v210;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v169 = 11;
      *(v169 + 8) = v167;
      *(v169 + 16) = v168;
      swift_willThrow();
      v430 = v222;
      outlined destroy of NodePersonality(&v430);
      outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v445, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v429 = v234;
      outlined destroy of NodePersonality(&v429);
      outlined destroy of [Input](&v433, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      goto LABEL_156;
    }

    result = *&v287[0];
    v350 = v287[0];
    v351 = v287[1];
    v352 = v287[2];
    v353 = v288;
    v93 = *v466;
    v94 = v466[1];
    v95 = v466[2];
    v96 = v94 + 32;
    v97 = *(v94 + 16);
    if (*v466)
    {
      v98 = v466[2];
      result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(*&v287[0], v96, v97, v93 + 16, v93 + 32);
      if (v99)
      {
        v95 = v98;
LABEL_138:
        specialized OrderedDictionary.subscript.getter(v25, v93, v94, v95, &v294);
        v111 = v295;
        if (v295 && (v112 = v299, v113 = v298, v114 = v297, v115 = v296, v390 = v294, , , , outlined destroy of [Input](&v390, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR), v389 = v111, outlined destroy of [Input](&v389, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR), v388 = v115, outlined destroy of [Input](&v388, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR), , , , specialized OrderedDictionary.subscript.getter(&v449, v114, v113, v112, &v300), , , , v116 = v301, v301 >= 2))
        {
          v117 = v306;
          v118 = v305;
          v119 = v304;
          v120 = v303;
          v121 = v302;
          v122 = v300;

          outlined destroy of [Input](&v300, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
          LOBYTE(v209) = v118 & 1;
          v214 = v449;
          v215 = v450;
          v216 = v451;
          v217 = v452;
          *&v211 = v122;
          *(&v211 + 1) = v116;
          *v212 = v121;
          *&v212[8] = v120;
          *&v212[16] = v119;
          v212[24] = v118 & 1;
          v213 = v117;
          v460[0] = v122;
          v460[1] = v116;
          v460[2] = v121;
          v460[3] = v120;
          v9 = v196;
          v460[4] = v119;
          v461 = v118 & 1;
          v462 = v117;

          outlined destroy of Edge(&v211);
          UserGraph.connect(_:to:)(v460, &v350);

          v386 = v351;
          outlined destroy of String(&v386);

          v4 = v198;
        }

        else
        {

          v387 = v351;
          outlined destroy of String(&v387);
          v4 = v198;
        }

        goto LABEL_142;
      }

      v100 = result;
      v192 = v94;
      v4 = v198;
      v95 = v98;
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_180;
      }
    }

    else
    {
      if (!v97)
      {
        goto LABEL_138;
      }

      v100 = 0;
      while (*(v96 + 8 * v100) != *&v287[0])
      {
        if (v97 == ++v100)
        {
          goto LABEL_138;
        }
      }

      v192 = v466[1];
      v4 = v198;
    }

    v189 = v93;
    if (v100 >= *(v95 + 16))
    {
      goto LABEL_181;
    }

    v185 = v95;
    v101 = (v95 + 48 * v100);
    v103 = v101[7];
    v102 = v101[8];
    v104 = v101[9];
    v105 = *(v102 + 16);
    if (v103)
    {

      result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v350, v102 + 32, v105, v103 + 16, v103 + 32);
      if ((v106 & 1) == 0)
      {
        v199 = v104;
LABEL_132:
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_184;
        }

        if (result >= *(v199 + 16))
        {
          goto LABEL_185;
        }

        v108 = (v199 + 56 * result);
        v109 = v108[5];
        v110 = v108[9];
        v179 = v108[10];
        v181 = v108[4];
        v173 = v108[7];
        v175 = v108[6];
        v177 = v108[8];
        outlined copy of Output?(v181, v109, v175, v173);

        if (v109)
        {

          outlined consume of Output?(v181, v109, v175, v173);
          v214 = v350;
          LOBYTE(v209) = v110 & 1;
          v215 = v351;
          v216 = v352;
          v217 = v353;
          *&v211 = v181;
          *(&v211 + 1) = v109;
          *v212 = v175;
          *&v212[8] = v173;
          *&v212[16] = v177;
          v212[24] = v110 & 1;
          v213 = v179;
          outlined destroy of Edge(&v211);
LABEL_142:
          specialized ShaderGraphNode.output(labeled:)(&v289, 0x746C69665F6E696DLL, 0xEA00000000007265, v194);
          if (!v290)
          {

            v209 = 0;
            v210 = 0xE000000000000000;
            MEMORY[0x266771550](0x746C69665F6E696DLL, 0xEA00000000007265);
            MEMORY[0x266771550](32, 0xE100000000000000);
            v211 = v234;
            *v212 = *v235;
            *&v212[9] = *(&v235[1] + 1);
            _print_unlocked<A, B>(_:_:)();
            v170 = v209;
            v171 = v210;
            lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
            swift_allocError();
            *v172 = 11;
            *(v172 + 8) = v170;
            *(v172 + 16) = v171;
            swift_willThrow();
            v428 = v222;
            outlined destroy of NodePersonality(&v428);
            outlined destroy of [Input](&v437, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            outlined destroy of [Input](&v445, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

            v427 = v234;
            v166 = &v427;
LABEL_177:
            outlined destroy of NodePersonality(v166);
            v136 = &v433;
LABEL_155:
            outlined destroy of [Input](v136, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            outlined destroy of [Input](&v442, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
LABEL_156:

            goto LABEL_167;
          }

          v346[0] = v289;
          v346[1] = v290;
          v347 = v291;
          v348 = v292;
          v349 = v293;
          UserGraph.moveEdge(from:to:)(&v449, v346);

          v391 = v347;
          v32 = &v391;
          goto LABEL_25;
        }

        v198 = v4;
        v95 = v185;
        goto LABEL_137;
      }
    }

    else
    {

      v199 = v104;

      result = specialized Collection<>.firstIndex(of:)(&v350, v102 + 32, v105);
      if ((v107 & 1) == 0)
      {
        goto LABEL_132;
      }
    }

    v198 = v4;

    v95 = v185;
LABEL_137:
    v94 = v192;
    v93 = v189;
    goto LABEL_138;
  }

  v72 = result;
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_81;
  }

  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
  return result;
}

unint64_t specialized UserGraph.transformMaterialXCubeimageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  for (i = result + 72; ; i += 48)
  {
    result = *(i - 40);
    if (result >> 61 != 5)
    {
      goto LABEL_4;
    }

    v5 = *(i - 32);
    v6 = *(i - 24);
    v269 = *(i - 40);
    outlined copy of NodePersonality(result);

    v7._object = 0x8000000265F2D850;
    v7._countAndFlagsBits = 0xD000000000000017;
    v8 = String.hasPrefix(_:)(v7);

    if (v8)
    {
      break;
    }

LABEL_3:
    outlined consume of NodePersonality(v269);

LABEL_4:
    if (!--v3)
    {
      return result;
    }
  }

  specialized ShaderGraphNode.output(labeled:)(&v45, 7632239, 0xE300000000000000, v6);
  v9 = v46;
  if (!v46)
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v16 = v269;
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v17 = 14;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0xE000000000000000;
    swift_willThrow();
    v18 = v16;
    goto LABEL_46;
  }

  v178 = v47;
  v10 = outlined destroy of String(&v178);
  v11 = (*(*v9 + 144))(v10);

  if (!v11)
  {
    _StringGuts.grow(_:)(40);

    *&v44 = 0xD000000000000025;
    *(&v44 + 1) = 0x8000000265F2D890;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v19);

    MEMORY[0x266771550](1701080942, 0xE400000000000000);

    MEMORY[0x266771550](39, 0xE100000000000000);
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v20 = 2;
    *(v20 + 8) = v44;
    swift_willThrow();
LABEL_43:
    v18 = v269;
    goto LABEL_46;
  }

  v42 = v6;
  _StringGuts.grow(_:)(31);

  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v12);

  MEMORY[0x266771550](1701080942, 0xE400000000000000);

  MEMORY[0x266771550](39, 0xE100000000000000);
  specialized UserGraph.insertCreateSampler(label:)(&v48);

  specialized ShaderGraphNode.output(labeled:)(&v50, 0x79747265746C6966, 0xEA00000000006570, v5);
  if (!v51)
  {
    MEMORY[0x266771550](0x79747265746C6966, 0xEA00000000006570);
    MEMORY[0x266771550](32, 0xE100000000000000);
    v21 = v269;
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v22 = 11;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0xE000000000000000;
    swift_willThrow();
    v268[0] = v48;
    outlined destroy of NodePersonality(v268);
    v267 = *(&v48 + 1);
    outlined destroy of [Input](&v267, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v266 = v49[0];
    outlined destroy of [Input](&v266, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v18 = v21;
    goto LABEL_46;
  }

  v174[0] = v50;
  v174[1] = v51;
  v175 = v52;
  v176 = v53;
  v177 = v54;
  v13 = *(&v48 + 1);
  v265 = *(&v48 + 1);
  specialized ShaderGraphNode.output(labeled:)(&v55, 0x746C69665F67616DLL, 0xEA00000000007265, *(&v48 + 1));
  if (!v56)
  {
    MEMORY[0x266771550](0x746C69665F67616DLL, 0xEA00000000007265);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v23 = 11;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0xE000000000000000;
    swift_willThrow();

    v193 = v175;
    outlined destroy of String(&v193);
    v264 = v48;
    outlined destroy of NodePersonality(&v264);
    outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v263 = v49[0];
    v24 = &v263;
    goto LABEL_42;
  }

  v170[0] = v55;
  v170[1] = v56;
  v171 = v57;
  v172 = v58;
  v173 = v59;
  UserGraph.copyEdge(originalDestination:newDestination:)(v174, v170);

  v194 = v171;
  outlined destroy of String(&v194);
  specialized ShaderGraphNode.output(labeled:)(&v60, 0x746C69665F70696DLL, 0xEA00000000007265, v13);
  if (!v61)
  {
    MEMORY[0x266771550](0x746C69665F70696DLL, 0xEA00000000007265);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v25 = 11;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0xE000000000000000;
    swift_willThrow();

    v192 = v175;
    outlined destroy of String(&v192);
    v262 = v48;
    outlined destroy of NodePersonality(&v262);
    outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v261 = v49[0];
    v24 = &v261;
    goto LABEL_42;
  }

  v166[0] = v60;
  v166[1] = v61;
  v167 = v62;
  v168 = v63;
  v169 = v64;
  UserGraph.copyEdge(originalDestination:newDestination:)(v174, v166);

  v195 = v167;
  outlined destroy of String(&v195);
  specialized ShaderGraphNode.output(labeled:)(&v65, 0x746C69665F6E696DLL, 0xEA00000000007265, v13);
  if (!v66)
  {
    MEMORY[0x266771550](0x746C69665F6E696DLL, 0xEA00000000007265);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v26 = 11;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0xE000000000000000;
    swift_willThrow();

    v191 = v175;
    outlined destroy of String(&v191);
    v260 = v48;
    outlined destroy of NodePersonality(&v260);
    outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v259 = v49[0];
    v24 = &v259;
    goto LABEL_42;
  }

  v162[0] = v65;
  v162[1] = v66;
  v163 = v67;
  v164 = v68;
  v165 = v69;
  UserGraph.moveEdge(from:to:)(v174, v162);

  v196 = v163;
  outlined destroy of String(&v196);
  specialized ShaderGraphNode.metalTextureType.getter(v269);

  UserGraph.insertCubeimageNode(metalTextureType:resultType:)(v14, v11, &v70);

  specialized ShaderGraphNode.output(labeled:)(&v72, 1701603686, 0xE400000000000000, v5);
  if (v73)
  {
    v158[0] = v72;
    v158[1] = v73;
    v159 = v74;
    v160 = v75;
    v161 = v76;
    v15 = *(&v70 + 1);
    v253 = *(&v70 + 1);
    specialized ShaderGraphNode.output(labeled:)(&v77, 1701603686, 0xE400000000000000, *(&v70 + 1));
    if (!v78)
    {
      MEMORY[0x266771550](1701603686, 0xE400000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v30 = 11;
      *(v30 + 8) = 0;
      *(v30 + 16) = 0xE000000000000000;
      swift_willThrow();

      v199 = v159;
      outlined destroy of String(&v199);
      v252 = v70;
      outlined destroy of NodePersonality(&v252);
      outlined destroy of [Input](&v253, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v251 = v71[0];
      outlined destroy of [Input](&v251, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v189 = v175;
      outlined destroy of String(&v189);
      v250 = v48;
      outlined destroy of NodePersonality(&v250);
      outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v249 = v49[0];
      v24 = &v249;
      goto LABEL_42;
    }

    v154[0] = v77;
    v154[1] = v78;
    v155 = v79;
    v156 = v80;
    v157 = v81;
    UserGraph.convertFilenameInput(_:movingTo:textureAssignments:customUniformsType:)(v158, v154, a2, a3);
    if (v43)
    {

      v200 = v155;
      outlined destroy of String(&v200);

      v197 = v159;
      outlined destroy of String(&v197);
      v248 = v70;
      outlined destroy of NodePersonality(&v248);
      outlined destroy of [Input](&v253, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v247 = v71[0];
      outlined destroy of [Input](&v247, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v188 = v175;
      outlined destroy of String(&v188);
      v246 = v48;
      outlined destroy of NodePersonality(&v246);
      outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v245 = v49[0];
      outlined destroy of [Input](&v245, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      goto LABEL_43;
    }

    v201 = v155;
    outlined destroy of String(&v201);

    v198 = v159;
    outlined destroy of String(&v198);
    specialized ShaderGraphNode.output(labeled:)(&v82, 0x746C7561666564, 0xE700000000000000, v5);
    if (!v83)
    {
      MEMORY[0x266771550](0x746C7561666564, 0xE700000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v27 = v269;
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v31 = 11;
      *(v31 + 8) = 0;
      *(v31 + 16) = 0xE000000000000000;
      swift_willThrow();
      v244 = v70;
      outlined destroy of NodePersonality(&v244);
      outlined destroy of [Input](&v253, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v243 = v71[0];
      outlined destroy of [Input](&v243, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v187 = v175;
      outlined destroy of String(&v187);
      v242 = v48;
      outlined destroy of NodePersonality(&v242);
      outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v241 = v49[0];
      v29 = &v241;
      goto LABEL_45;
    }

    v150[0] = v82;
    v150[1] = v83;
    v151 = v84;
    v152 = v85;
    v153 = v86;
    specialized ShaderGraphNode.output(labeled:)(&v87, 0x56746C7561666564, 0xEA00000000006C61, v15);
    if (!v88)
    {
      MEMORY[0x266771550](0x56746C7561666564, 0xEA00000000006C61);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v32 = 11;
      *(v32 + 8) = 0;
      *(v32 + 16) = 0xE000000000000000;
      swift_willThrow();

      v202 = v151;
      outlined destroy of String(&v202);
      v240 = v70;
      outlined destroy of NodePersonality(&v240);
      outlined destroy of [Input](&v253, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v239 = v71[0];
      outlined destroy of [Input](&v239, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v186 = v175;
      outlined destroy of String(&v186);
      v238 = v48;
      outlined destroy of NodePersonality(&v238);
      outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v237 = v49[0];
      v24 = &v237;
LABEL_42:
      outlined destroy of [Input](v24, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      goto LABEL_43;
    }

    v146[0] = v87;
    v146[1] = v88;
    v147 = v89;
    v148 = v90;
    v149 = v91;
    UserGraph.moveEdge(from:to:)(v150, v146);

    v204 = v147;
    outlined destroy of String(&v204);

    v203 = v151;
    outlined destroy of String(&v203);
    specialized ShaderGraphNode.output(labeled:)(&v92, 0x64726F6F63786574, 0xE800000000000000, v5);
    if (!v93)
    {
      MEMORY[0x266771550](0x64726F6F63786574, 0xE800000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v27 = v269;
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v33 = 11;
      *(v33 + 8) = 0;
      *(v33 + 16) = 0xE000000000000000;
      swift_willThrow();
      v236 = v70;
      outlined destroy of NodePersonality(&v236);
      outlined destroy of [Input](&v253, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v235 = v71[0];
      outlined destroy of [Input](&v235, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v185 = v175;
      outlined destroy of String(&v185);
      v234 = v48;
      outlined destroy of NodePersonality(&v234);
      outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v233 = v49[0];
      v29 = &v233;
      goto LABEL_45;
    }

    v142[0] = v92;
    v142[1] = v93;
    v143 = v94;
    v144 = v95;
    v145 = v96;
    specialized ShaderGraphNode.output(labeled:)(&v97, 0x64726F6F63786574, 0xE800000000000000, v15);
    if (!v98)
    {
      MEMORY[0x266771550](0x64726F6F63786574, 0xE800000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v34 = 11;
      *(v34 + 8) = 0;
      *(v34 + 16) = 0xE000000000000000;
      swift_willThrow();

      v205 = v143;
      outlined destroy of String(&v205);
      v232 = v70;
      outlined destroy of NodePersonality(&v232);
      outlined destroy of [Input](&v253, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v231 = v71[0];
      outlined destroy of [Input](&v231, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v184 = v175;
      outlined destroy of String(&v184);
      v230 = v48;
      outlined destroy of NodePersonality(&v230);
      outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v229 = v49[0];
      v24 = &v229;
      goto LABEL_42;
    }

    v138[0] = v97;
    v138[1] = v98;
    v139 = v99;
    v140 = v100;
    v141 = v101;
    UserGraph.moveEdge(from:to:)(v142, v138);

    v207 = v139;
    outlined destroy of String(&v207);

    v206 = v143;
    outlined destroy of String(&v206);
    v228 = v49[0];
    specialized ShaderGraphNode.output(labeled:)(&v102, 7632239, 0xE300000000000000, v49[0]);
    if (!v103)
    {
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v35 = 14;
      *(v35 + 8) = 0;
      *(v35 + 16) = 0xE000000000000000;
      swift_willThrow();
      v227 = v70;
      outlined destroy of NodePersonality(&v227);
      outlined destroy of [Input](&v253, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v226 = v71[0];
      outlined destroy of [Input](&v226, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v183 = v175;
      outlined destroy of String(&v183);
      v225 = v48;
      v36 = &v225;
LABEL_41:
      outlined destroy of NodePersonality(v36);
      outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v24 = &v228;
      goto LABEL_42;
    }

    v134[0] = v102;
    v134[1] = v103;
    v135 = v104;
    v136 = v105;
    v137 = v106;
    specialized ShaderGraphNode.output(labeled:)(&v107, 0x72656C706D6173, 0xE700000000000000, v15);
    if (!v108)
    {
      MEMORY[0x266771550](0x72656C706D6173, 0xE700000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v37 = 11;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0xE000000000000000;
      swift_willThrow();

      v208 = v135;
      outlined destroy of String(&v208);
      v224 = v70;
      outlined destroy of NodePersonality(&v224);
      outlined destroy of [Input](&v253, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v223 = v71[0];
      outlined destroy of [Input](&v223, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v182 = v175;
      outlined destroy of String(&v182);
      v222 = v48;
      v36 = &v222;
      goto LABEL_41;
    }

    v130[0] = v107;
    v130[1] = v108;
    v131 = v109;
    v132 = v110;
    v133 = v111;
    UserGraph.connect(_:to:)(v134, v130);

    v210 = v131;
    outlined destroy of String(&v210);

    v209 = v135;
    outlined destroy of String(&v209);
    specialized ShaderGraphNode.output(labeled:)(&v112, 7632239, 0xE300000000000000, v42);
    if (!v113)
    {
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      v27 = v269;
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v38 = 14;
      *(v38 + 8) = 0;
      *(v38 + 16) = 0xE000000000000000;
      swift_willThrow();
      v221 = v70;
      outlined destroy of NodePersonality(&v221);
      outlined destroy of [Input](&v253, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v220 = v71[0];
      outlined destroy of [Input](&v220, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v181 = v175;
      outlined destroy of String(&v181);
      v219 = v48;
      outlined destroy of NodePersonality(&v219);
      outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v29 = &v228;
      goto LABEL_45;
    }

    v126[0] = v112;
    v126[1] = v113;
    v127 = v114;
    v128 = v115;
    v129 = v116;
    v218 = v71[0];
    specialized ShaderGraphNode.output(labeled:)(&v117, 7632239, 0xE300000000000000, v71[0]);
    if (!v118)
    {
      MEMORY[0x266771550](7632239, 0xE300000000000000);
      MEMORY[0x266771550](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v39 = 14;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0xE000000000000000;
      swift_willThrow();

      v211 = v127;
      outlined destroy of String(&v211);
      v217 = v70;
      outlined destroy of NodePersonality(&v217);
      outlined destroy of [Input](&v253, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v218, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      v179 = v175;
      outlined destroy of String(&v179);
      v216 = v48;
      outlined destroy of NodePersonality(&v216);
      outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v228, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      goto LABEL_43;
    }

    v122[0] = v117;
    v122[1] = v118;
    v123 = v119;
    v124 = v120;
    v125 = v121;
    UserGraph.moveEdges(from:to:)(v126, v122);

    v213 = v123;
    outlined destroy of String(&v213);

    v212 = v127;
    outlined destroy of String(&v212);
    v215 = v70;
    outlined destroy of NodePersonality(&v215);
    outlined destroy of [Input](&v253, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v218, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    v180 = v175;
    outlined destroy of String(&v180);
    v214 = v48;
    outlined destroy of NodePersonality(&v214);
    outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v228, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    goto LABEL_3;
  }

  MEMORY[0x266771550](1701603686, 0xE400000000000000);
  MEMORY[0x266771550](32, 0xE100000000000000);
  v27 = v269;
  _print_unlocked<A, B>(_:_:)();
  lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
  swift_allocError();
  *v28 = 11;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0xE000000000000000;
  swift_willThrow();
  v258 = v70;
  outlined destroy of NodePersonality(&v258);
  v257 = *(&v70 + 1);
  outlined destroy of [Input](&v257, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v256 = v71[0];
  outlined destroy of [Input](&v256, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  v190 = v175;
  outlined destroy of String(&v190);
  v255 = v48;
  outlined destroy of NodePersonality(&v255);
  outlined destroy of [Input](&v265, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v254 = v49[0];
  v29 = &v254;
LABEL_45:
  outlined destroy of [Input](v29, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

  v18 = v27;
LABEL_46:
  outlined consume of NodePersonality(v18);
}

uint64_t specialized UserGraph.mapImageNodes(connectedTo:paramType:textureAssignments:customUniformsType:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 64);
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    while (v8 < v6)
    {
      v10 = v5 + 32 + 48 * v8;
      v11 = *(v10 + 24);
      if (v11 == -7)
      {
        v9 = __OFADD__(v8++, 1);
        if (v9)
        {
          goto LABEL_42;
        }

        if (v8 >= v6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v9 = __OFADD__(v8++, 1);
        if (v9)
        {
          goto LABEL_43;
        }

        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        v14 = *v10;
        v15 = *(v10 + 40);
        v16 = *(v10 + 32);
        v60 = v14;
        v61 = v12;
        v62 = v13;
        *&v63 = v11;
        *(&v63 + 1) = v16;
        LOBYTE(v64) = v15;
        outlined copy of NodePersonality(v14);

        closure #1 in UserGraph.replaceInvalidImageNodes()(&v60, v75);
        outlined consume of NodePersonality(v14);
        if (v4)
        {
LABEL_22:
        }

        if (v8 >= v6)
        {
          goto LABEL_10;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_10:

  v17 = v75[9];
  v73 = v75[8];
  v74[0] = v17;
  *(v74 + 9) = *(v75 + 153);
  v18 = v75[5];
  v69 = v75[4];
  v70 = v18;
  v19 = v75[7];
  v71 = v75[6];
  v72 = v19;
  v20 = v75[1];
  v65 = *v75;
  v66 = v20;
  v21 = v75[3];
  v67 = v75[2];
  v68 = v21;
  UserGraph.connectedUpstreamSubgraph(rootedAt:)(a1, &v60);
  v22 = v60;

  v23 = *(v22 + 16);
  v54 = v22;
  if (v23)
  {
    v24 = v22 + 40;
    do
    {
      v25 = *(v24 - 8);
      if (v25 >> 61 == 5)
      {
        v26 = *v24;
        v27 = *(v24 + 8);
        v59 = *(v24 + 16);
        v28 = *(v24 + 32);
        outlined copy of NodePersonality(v25);

        v29._object = 0x8000000265F2D870;
        v29._countAndFlagsBits = 0xD000000000000013;
        v30 = String.hasPrefix(_:)(v29);

        if (v30)
        {
          v60 = v25;
          v61 = v26;
          v62 = v27;
          v63 = v59;
          LOBYTE(v64) = v28;
          closure #2 in UserGraph.transformGetTextureNodes<A>(_:textureAssignments:customUniformsType:)(&v60, v75, a2, a3);
          outlined consume of NodePersonality(v25);
          if (v4)
          {
            goto LABEL_22;
          }
        }

        else
        {
          outlined consume of NodePersonality(v25);
        }
      }

      v24 += 48;
      --v23;
    }

    while (v23);
  }

  specialized UserGraph.transformMaterialXImageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(v22, a2, a3);
  if (v4)
  {
  }

  result = specialized UserGraph.transformMaterialXCubeimageNodes<A>(_:paramType:textureAssignments:customUniformsType:)(v22, a2, a3);
  v31 = *(v22 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = v22 + 72;
    v34 = MEMORY[0x277D84F90];
    v50 = *(v54 + 16);
LABEL_26:
    v51 = v34;
    v35 = (v33 + 48 * v32);
    v36 = v31 - v32;
    while (v32 < *(v54 + 16))
    {
      v37 = *(v35 - 5);
      if (v37 >> 61 == 5)
      {
        v38 = *(v35 - 4);
        v39 = *(v35 - 3);
        v57 = *v35;
        v52 = *(v35 - 2);
        v53 = *(v35 - 1);
        outlined copy of NodePersonality(v37);

        outlined copy of NodePersonality(v37);

        v40._countAndFlagsBits = 0xD000000000000014;
        v40._object = 0x8000000265F2D830;
        v41 = String.hasPrefix(_:)(v40);

        outlined consume of NodePersonality(v37);

        if (v41)
        {
          v42 = v51;
          result = swift_isUniquelyReferenced_nonNull_native();
          v60 = v51;
          if ((result & 1) == 0)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 16) + 1, 1);
            v42 = v60;
          }

          v43 = v57;
          v45 = v52;
          v44 = v53;
          v47 = *(v42 + 16);
          v46 = *(v42 + 24);
          v48 = v47 + 1;
          if (v47 >= v46 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
            v48 = v47 + 1;
            v45 = v52;
            v44 = v53;
            v43 = v57;
            v42 = v60;
          }

          ++v32;
          *(v42 + 16) = v48;
          v49 = v42 + 48 * v47;
          *(v49 + 32) = v37;
          *(v49 + 40) = v38;
          *(v49 + 48) = v39;
          *(v49 + 56) = v45;
          *(v49 + 64) = v44;
          *(v49 + 72) = v43;
          v34 = v42;
          v33 = v54 + 72;
          v31 = v50;
          if (v36 != 1)
          {
            goto LABEL_26;
          }

          goto LABEL_40;
        }

        outlined consume of NodePersonality(v37);
      }

      v35 += 48;
      ++v32;
      if (!--v36)
      {
        v34 = v51;
        goto LABEL_40;
      }
    }

LABEL_44:
    __break(1u);
    return result;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_40:

  specialized Sequence.forEach(_:)(v34);
}

void *specialized RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v564 = v1;
  v3 = v2;
  v377 = v4;
  v384 = v6;
  v385 = v5;
  v386 = v7;
  v374 = v8;
  v379 = v9;
  v11 = v10;
  v369 = v12;
  v13 = type metadata accessor for OSSignpostID();
  v383 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v338 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v338 - v17);
  v19 = type metadata accessor for OSSignposter();
  v371 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v338 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v11 + 32);
  v376 = *(v11 + 24);
  v382 = v11;
  v380 = v22;
  swift_bridgeObjectRetain_n();
  v378 = v3;
  v23 = v19;

  OSSignposter.init(subsystem:category:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v373 = v21;
  v24 = OSSignposter.logHandle.getter();
  v25 = static os_signpost_type_t.begin.getter();
  v26 = OS_os_log.signpostsEnabled.getter();
  v375 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v24, v25, v28, "surfaceShaderMaterial", "", v27, 2u);
    MEMORY[0x266773120](v27, -1, -1);
  }

  v29 = *(v383 + 16);
  v381 = v18;
  v372 = v13;
  v29(v15, v18, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v370 = OSSignpostIntervalState.init(id:isOpen:)();
  v30 = v382;
  v31 = *(v382 + 6);
  v520 = v31;
  v32 = v382[8];
  v418 = v382[7];
  v419 = v32;
  v420[0] = v382[9];
  *(v420 + 9) = *(v382 + 153);
  v33 = v382[3];
  v34 = v382[5];
  v35 = v382[6];
  v415 = v382[4];
  v416 = v34;
  v417 = v35;
  v36 = v382[1];
  v411 = *v382;
  v412 = v36;
  v413 = v382[2];
  v414 = v33;
  outlined init with copy of [Input](&v520, &v397, &_sSay11ShaderGraph9InputSpecVGMd, &_sSay11ShaderGraph9InputSpecVGMR);
  outlined init with copy of UserGraph(v30, &v397);
  UserGraph.flatten()();
  if (one-time initialization token for debugMode == -1)
  {
    goto LABEL_4;
  }

  while (2)
  {
    swift_once();
LABEL_4:
    swift_beginAccess();
    v37 = static DebugConfig.debugMode;

    v38 = specialized Set.contains(_:)(3, v37);

    v368 = v31;
    if (v38 & 1) != 0 || (v39 = static DebugConfig.debugMode, , v40 = specialized Set.contains(_:)(6, v39), , (v40))
    {
      v562[7] = v418;
      v562[8] = v419;
      v563[0] = v420[0];
      *(v563 + 9) = *(v420 + 9);
      v562[4] = v415;
      v562[5] = v416;
      v562[6] = v417;
      v562[0] = v411;
      v562[1] = v412;
      v562[2] = v413;
      v562[3] = v414;
      v41 = v564;
      createDotText(representing:)(v562);
      v44 = v41;
      if (v41)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        __swift_project_value_buffer(v45, logger);
        v46 = v41;
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *&v397 = v50;
          *v49 = 136315138;
          swift_getErrorValue();
          v51 = Error.localizedDescription.getter();
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v397);

          *(v49 + 4) = v53;
          _os_log_impl(&dword_265D7D000, v47, v48, "%s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v50);
          MEMORY[0x266773120](v50, -1, -1);
          MEMORY[0x266773120](v49, -1, -1);
        }

        else
        {
        }

        v44 = 0;
        v56 = v381;
      }

      else
      {
        *&v397 = v376;
        *(&v397 + 1) = v380;
        v54 = v42;
        v55 = v43;

        MEMORY[0x266771550](95, 0xE100000000000000);
        MEMORY[0x266771550](v377, v378);
        MEMORY[0x266771550](0x617267726573755FLL, 0xEA00000000006870);
        specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v54, v55, v397, *(&v397 + 1), 7630692, 0xE300000000000000);

        v56 = v381;
      }
    }

    else
    {
      v56 = v381;
      v44 = v564;
    }

    v57 = &v411;
    v560[9] = v418;
    v560[10] = v419;
    v561[0] = v420[0];
    *(v561 + 9) = *(v420 + 9);
    v560[6] = v415;
    v560[7] = v416;
    v560[8] = v417;
    v560[2] = v411;
    v560[3] = v412;
    v560[4] = v413;
    v560[5] = v414;
    v58 = v559;
    UserGraph.surfaceNode()(v426);
    if (v44)
    {
      v564 = v44;

      *&v402[32] = v419;
      *&v402[48] = v420[0];
      *&v402[57] = *(v420 + 9);
      v400 = v415;
      v401 = v416;
      *v402 = v417;
      *&v402[16] = v418;
      v397 = v411;
      v398 = v412;
      v399[0] = v413;
      v399[1] = v414;
      outlined destroy of UserGraph(&v397);
      v59 = v373;
      $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v373, v370, v376, v380, v377, v378);

      outlined destroy of UserGraph(v382);
      v60 = 0;
      v61 = v56;
      v62 = v375;
      goto LABEL_18;
    }

    v519 = v426[0];
    v518 = v426[1];
    v517 = v426[2];
    v559[7] = v418;
    v559[8] = v419;
    v560[0] = v420[0];
    *(v560 + 9) = *(v420 + 9);
    v559[4] = v415;
    v559[5] = v416;
    v559[6] = v417;
    v559[0] = v411;
    v559[1] = v412;
    v559[2] = v413;
    v559[3] = v414;
    outlined init with copy of NodePersonality(&v519, &v397);
    outlined init with copy of [Input](&v518, &v397, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v517, &v397, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    UserGraph.geometryModifierNode()(v427);
    specialized UserGraph.splitSharedNodes(nodeDefStore:surfaceShader:geometryModifier:)(v426, v427);
    v564 = 0;
    v64 = v380;
    v31 = v555;
    outlined destroy of NodePersonality(&v519);
    outlined destroy of [Input](&v518, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v517, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v65 = static DebugConfig.debugMode;

    v66 = specialized Set.contains(_:)(3, v65);

    if (v66)
    {
      v557[7] = v418;
      v557[8] = v419;
      v558[0] = v420[0];
      *(v558 + 9) = *(v420 + 9);
      v557[4] = v415;
      v557[5] = v416;
      v557[6] = v417;
      v557[0] = v411;
      v557[1] = v412;
      v557[2] = v413;
      v557[3] = v414;
      v67 = v564;
      createDotText(representing:)(v557);
      v564 = v67;
      if (v67)
      {
        if (one-time initialization token for logger != -1)
        {
          goto LABEL_213;
        }

        goto LABEL_24;
      }

      *&v397 = 0;
      *(&v397 + 1) = 0xE000000000000000;
      v77 = v68;
      v31 = v69;
      _StringGuts.grow(_:)(25);

      *&v397 = v376;
      *(&v397 + 1) = v64;
      MEMORY[0x266771550](95, 0xE100000000000000);
      MEMORY[0x266771550](v377, v378);
      MEMORY[0x266771550](0xD000000000000014, 0x8000000265F2D9C0);
      specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v77, v31, v397, *(&v397 + 1), 7630692, 0xE300000000000000);
    }

LABEL_29:
    v78 = v415;
    v79 = *(v415 + 16);

    if (v79)
    {
      v81 = 0;
      v57 = 48;
      while (v81 < v79)
      {
        v83 = v78 + 32 + 48 * v81;
        v84 = *(v83 + 24);
        if (v84 == -7)
        {
          v82 = __OFADD__(v81++, 1);
          if (v82)
          {
            goto LABEL_143;
          }

          if (v81 >= v79)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v82 = __OFADD__(v81++, 1);
          if (v82)
          {
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            outlined consume of NodePersonality(v80);

            outlined destroy of [Input](&v431, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
            v501 = v428;
            outlined destroy of NodePersonality(&v501);
            v500 = v429;
            outlined destroy of [Input](&v500, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v499 = v430;
            v110 = &v499;
LABEL_61:
            outlined destroy of [Input](v110, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
            *&v402[32] = v419;
            *&v402[48] = v420[0];
            *&v402[57] = *(v420 + 9);
            v400 = v415;
            v401 = v416;
            *v402 = v417;
            *&v402[16] = v418;
            v397 = v411;
            v398 = v412;
            v399[0] = v413;
            v399[1] = v414;
            goto LABEL_62;
          }

          v85 = *v83;
          v58 = *(v83 + 8);
          v31 = *(v83 + 16);
          v86 = *(v83 + 40);
          v87 = *(v83 + 32);
          *v396 = v85;
          *&v396[8] = v58;
          *&v396[16] = v31;
          *&v396[24] = v84;
          *&v396[32] = v87;
          v396[40] = v86;
          outlined copy of NodePersonality(v85);

          v88 = v564;
          specialized closure #1 in UserGraph.mapStringInputs(nodeDefStore:)(v396, v386);
          v564 = v88;
          if (v88)
          {
            goto LABEL_60;
          }

          outlined consume of NodePersonality(v85);

          if (v81 >= v79)
          {
            goto LABEL_38;
          }
        }
      }

      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      v181 = v374;
      v62 = v375;
      v90 = v378;
      v108 = v379;
      v180 = v380;
      v179 = v381;
      goto LABEL_151;
    }

LABEL_38:

    v89 = v415;
    v90 = *(v415 + 16);

    if (v90)
    {
      v93 = 0;
      v57 = v89 + 32;
      while (v93 < v90)
      {
        v94 = v57 + 48 * v93;
        v95 = *(v94 + 24);
        if (v95 == -7)
        {
          v82 = __OFADD__(v93++, 1);
          if (v82)
          {
            goto LABEL_147;
          }

          if (v93 >= v90)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v82 = __OFADD__(v93++, 1);
          if (v82)
          {
            goto LABEL_148;
          }

          v85 = *v94;
          v58 = *(v94 + 8);
          v31 = *(v94 + 16);
          v96 = *(v94 + 40);
          v97 = *(v94 + 32);
          *v396 = v85;
          *&v396[8] = v58;
          *&v396[16] = v31;
          *&v396[24] = v95;
          *&v396[32] = v97;
          v396[40] = v96;
          outlined copy of NodePersonality(v85);

          v98 = v564;
          closure #1 in UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(v396, v386, v385, v384, &v411);
          v564 = v98;
          if (v98)
          {
LABEL_60:
            outlined consume of NodePersonality(v85);

            outlined destroy of [Input](v427, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
            outlined destroy of NodePersonality(&v519);
            outlined destroy of [Input](&v518, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v110 = &v517;
            goto LABEL_61;
          }

          outlined consume of NodePersonality(v85);

          if (v93 >= v90)
          {
            goto LABEL_47;
          }
        }
      }

      __break(1u);
      continue;
    }

    break;
  }

LABEL_47:

  v99 = v415;
  v90 = *(v415 + 16);

  if (v90)
  {
    v93 = 0;
    v57 = 48;
    do
    {
      while (1)
      {
        if (v93 >= v90)
        {
          goto LABEL_138;
        }

        v100 = v99 + 32 + 48 * v93;
        v101 = *(v100 + 24);
        v82 = __OFADD__(v93++, 1);
        v102 = v82;
        if (v101 == -7)
        {
          break;
        }

        if (v102)
        {
          goto LABEL_146;
        }

        v103 = *(v100 + 40);
        v104 = *(v100 + 32);
        v106 = *(v100 + 8);
        v105 = *(v100 + 16);
        *&v397 = *v100;
        v58 = v397;
        *(&v397 + 1) = v106;
        *&v398 = v105;
        *(&v398 + 1) = v101;
        *&v399[0] = v104;
        BYTE8(v399[0]) = v103;
        outlined copy of NodePersonality(v397);

        v107 = v564;
        closure #1 in UserGraph.resolvingNodegraphImplementations(nodeDefStore:)(&v397, v386, v385, v384, &v411);
        v564 = v107;
        outlined consume of NodePersonality(v58);

        if (v93 >= v90)
        {
          goto LABEL_58;
        }
      }

      if (v102)
      {
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }
    }

    while (v93 < v90);
  }

LABEL_58:

  v108 = &v411;
  v555[7] = v418;
  v555[8] = v419;
  v556[0] = v420[0];
  *(v556 + 9) = *(v420 + 9);
  v555[4] = v415;
  v555[5] = v416;
  v555[6] = v417;
  v555[0] = v411;
  v555[1] = v412;
  v555[2] = v413;
  v555[3] = v414;
  v109 = v564;
  UserGraph.surfaceNode()(&v428);
  v564 = v109;
  if (v109)
  {

    outlined destroy of [Input](v427, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
    outlined destroy of NodePersonality(&v519);
    outlined destroy of [Input](&v518, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v517, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    *&v402[32] = v419;
    *&v402[48] = v420[0];
    *&v402[57] = *(v420 + 9);
    v400 = v415;
    v401 = v416;
    *v402 = v417;
    *&v402[16] = v418;
    v397 = v411;
    v398 = v412;
    v399[0] = v413;
    v399[1] = v414;
LABEL_62:
    outlined destroy of UserGraph(&v397);
    v59 = v373;
    $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v373, v370, v376, v380, v377, v378);

    outlined destroy of UserGraph(v382);
    v60 = 0;
    goto LABEL_63;
  }

  outlined destroy of NodePersonality(&v519);
  outlined destroy of [Input](&v518, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v517, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v552 = v418;
  v553 = v419;
  v554[0] = v420[0];
  *(v554 + 9) = *(v420 + 9);
  v549 = v415;
  v550 = v416;
  v551 = v417;
  v548[2] = v411;
  v548[3] = v412;
  v548[4] = v413;
  v548[5] = v414;
  UserGraph.geometryModifierNode()(&v431);
  v364 = v431;
  *&v365 = v432;
  v366 = *&v433[0];
  outlined destroy of [Input](v427, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
  v111 = static DebugConfig.debugMode;

  v112 = specialized Set.contains(_:)(3, v111);

  v113 = v378;
  if (v112)
  {
    v547[7] = v418;
    v547[8] = v419;
    v548[0] = v420[0];
    *(v548 + 9) = *(v420 + 9);
    v547[4] = v415;
    v547[5] = v416;
    v547[6] = v417;
    v547[0] = v411;
    v547[1] = v412;
    v547[2] = v413;
    v547[3] = v414;
    v114 = v415;
    v115 = v564;
    createDotText(representing:)(v547);
    v564 = v115;
    if (v115)
    {
      if (one-time initialization token for logger != -1)
      {
        goto LABEL_226;
      }

      goto LABEL_67;
    }

    v125 = v117;
    *&v397 = 0;
    *(&v397 + 1) = 0xE000000000000000;
    v112 = v116;
    _StringGuts.grow(_:)(32);
    v126 = v380;

    *&v397 = v376;
    *(&v397 + 1) = v126;
    MEMORY[0x266771550](95, 0xE100000000000000);
    MEMORY[0x266771550](v377, v113);
    MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2D9A0);
    specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v112, v125, v397, *(&v397 + 1), 7630692, 0xE300000000000000);
  }

  else
  {
    v114 = v549;
  }

  while (1)
  {
    v127 = v381;
    isa = v114[2].isa;

    if (isa)
    {
      v108 = 0;
      v57 = 48;
      v131 = v127;
      while (1)
      {
        while (1)
        {
          if (v108 >= isa)
          {
            __break(1u);
            goto LABEL_162;
          }

          v132 = &v114[6 * v108 + 4];
          v133 = *(v132 + 24);
          if (v133 == -7)
          {
            break;
          }

          v82 = __OFADD__(v108++, 1);
          if (v82)
          {
            goto LABEL_168;
          }

          v112 = *v132;
          v134 = *(v132 + 8);
          v135 = *(v132 + 16);
          v136 = *(v132 + 40);
          v137 = *(v132 + 32);
          *v396 = v112;
          *&v396[8] = v134;
          *&v396[16] = v135;
          *&v396[24] = v133;
          *&v396[32] = v137;
          v396[40] = v136;
          outlined copy of NodePersonality(v112);

          v138 = v564;
          closure #1 in UserGraph.insertMaterialXDefaultValues(nodeDefStore:)(v396, v386, v385, v384, &v411);
          v564 = v138;
          if (v138)
          {
            outlined consume of NodePersonality(v112);

            outlined destroy of [Input](&v431, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
            v516 = v428;
            outlined destroy of NodePersonality(&v516);
            v515 = v429;
            outlined destroy of [Input](&v515, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v514 = v430;
            v110 = &v514;
            goto LABEL_61;
          }

          outlined consume of NodePersonality(v112);

          v131 = v381;
          if (v108 >= isa)
          {
            goto LABEL_85;
          }
        }

        v82 = __OFADD__(v108++, 1);
        if (v82)
        {
          break;
        }

        if (v108 >= isa)
        {
          goto LABEL_85;
        }
      }

      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    v131 = v127;
LABEL_85:
    v114 = v131;

    v139 = *(v415 + 16);

    v367 = v129;
    if (v139)
    {
      v140 = 0;
      v141 = v129 + 32;
      v57 = 48;
      while (v140 < v139)
      {
        v142 = v141 + 48 * v140;
        v143 = *(v142 + 24);
        if (v143 == -7)
        {
          v82 = __OFADD__(v140++, 1);
          if (v82)
          {
            goto LABEL_169;
          }

          if (v140 >= v139)
          {
            goto LABEL_95;
          }
        }

        else
        {
          v82 = __OFADD__(v140++, 1);
          if (v82)
          {
            goto LABEL_170;
          }

          v112 = *v142;
          v144 = *(v142 + 8);
          v108 = *(v142 + 16);
          v145 = *(v142 + 40);
          v146 = *(v142 + 32);
          *v396 = v112;
          *&v396[8] = v144;
          *&v396[16] = v108;
          *&v396[24] = v143;
          *&v396[32] = v146;
          v396[40] = v145;
          outlined copy of NodePersonality(v112);

          v147 = v564;
          closure #1 in UserGraph.replaceMultiOutputNodes()(v396, &v411);
          v564 = v147;
          if (v147)
          {
            outlined consume of NodePersonality(v112);

            outlined destroy of [Input](&v431, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
            v513 = v428;
            outlined destroy of NodePersonality(&v513);
            v512 = v429;
            outlined destroy of [Input](&v512, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v511 = v430;
            v110 = &v511;
            goto LABEL_61;
          }

          outlined consume of NodePersonality(v112);

          v114 = v381;
          if (v140 >= v139)
          {
            goto LABEL_95;
          }
        }
      }

LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

LABEL_95:

    v148 = v386;
    v149 = v564;
    specialized UserGraph.removePassthroughNodes(nodeDefStore:)(v386);
    v62 = v375;
    v564 = v149;
    if (v149)
    {

      outlined destroy of [Input](&v431, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
      v510 = v428;
      outlined destroy of NodePersonality(&v510);
      v509 = v429;
      outlined destroy of [Input](&v509, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v508 = v430;
      outlined destroy of [Input](&v508, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      *&v402[32] = v419;
      *&v402[48] = v420[0];
      *&v402[57] = *(v420 + 9);
      v400 = v415;
      v401 = v416;
      *v402 = v417;
      *&v402[16] = v418;
      v397 = v411;
      v398 = v412;
      v399[0] = v413;
      v399[1] = v414;
      outlined destroy of UserGraph(&v397);
      v59 = v373;
      $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v373, v370, v376, v380, v377, v378);

      outlined destroy of UserGraph(v382);
      v60 = 0;
      v61 = v114;
      goto LABEL_18;
    }

    v150 = *(v415 + 16);
    v151 = v415 + 32;
    v367 = v415;

    if (v150)
    {
      v152 = 0;
      while (v152 < v150)
      {
        v153 = (v151 + 48 * v152);
        if (v153[3] == -7)
        {
          v82 = __OFADD__(v152++, 1);
          if (v82)
          {
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
            goto LABEL_197;
          }
        }

        else
        {
          v82 = __OFADD__(v152++, 1);
          if (v82)
          {
            goto LABEL_196;
          }

          if (*v153 >> 61 == 5)
          {
            v112 = v153[1];
            v148 = *((*v153 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

            v154._countAndFlagsBits = 0x6567616D695F444ELL;
            v154._object = 0xE800000000000000;
            v57 = String.hasPrefix(_:)(v154);

            if (v57)
            {
              v148 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of closure #1 in UserGraph.removeEdgesToExplicitlyIgnoredInputs());
              swift_arrayDestroy();

              v155 = v564;
              specialized Sequence.forEach(_:)(v112, v148, &v411);
              v564 = v155;
              v129 = swift_bridgeObjectRelease_n();
            }

            v114 = v381;
          }
        }

        if (v152 >= v150)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_171;
    }

LABEL_108:
    v112 = v367;

    v156 = *(v112 + 16);

    if (v156)
    {
      v150 = 0;
      v57 = 48;
      v157 = v114;
      while (1)
      {
        while (1)
        {
          if (v150 >= v156)
          {
            __break(1u);
            goto LABEL_195;
          }

          v158 = (v151 + 48 * v150);
          if (v158[3] == -7)
          {
            break;
          }

          v82 = __OFADD__(v150++, 1);
          if (v82)
          {
            goto LABEL_212;
          }

          v112 = *v158;
          v148 = v158[1];
          outlined copy of NodePersonality(*v158);

          v159 = v564;
          specialized Sequence.forEach(_:)(v148, &v411);
          v564 = v159;
          if (v159)
          {
            outlined consume of NodePersonality(v112);

            outlined destroy of [Input](&v431, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
            v507 = v428;
            outlined destroy of NodePersonality(&v507);
            v506 = v429;
            outlined destroy of [Input](&v506, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
            v505 = v430;
            v110 = &v505;
            goto LABEL_61;
          }

          outlined consume of NodePersonality(v112);

          v157 = v381;
          if (v150 >= v156)
          {
            goto LABEL_122;
          }
        }

        v82 = __OFADD__(v150++, 1);
        if (v82)
        {
          break;
        }

        if (v150 >= v156)
        {
          goto LABEL_122;
        }
      }

      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      swift_once();
LABEL_24:
      v70 = type metadata accessor for Logger();
      __swift_project_value_buffer(v70, logger);
      v71 = v564;
      v72 = v564;
      v58 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v58, v31))
      {
        v57 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *&v397 = v73;
        *v57 = 136315138;
        swift_getErrorValue();
        v74 = Error.localizedDescription.getter();
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v397);

        *(v57 + 4) = v76;
        _os_log_impl(&dword_265D7D000, v58, v31, "%s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        MEMORY[0x266773120](v73, -1, -1);
        MEMORY[0x266773120](v57, -1, -1);
      }

      else
      {
      }

      v564 = 0;
      goto LABEL_29;
    }

    v157 = v114;
LABEL_122:
    v160 = v157;

    v161 = v564;
    specialized UserGraph.resolveSwizzleNodes(nodeDefStore:)();
    v564 = v161;
    if (v161)
    {

      outlined destroy of [Input](&v431, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
      v504 = v428;
      outlined destroy of NodePersonality(&v504);
      v503 = v429;
      outlined destroy of [Input](&v503, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v502 = v430;
      outlined destroy of [Input](&v502, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      *&v402[32] = v419;
      *&v402[48] = v420[0];
      *&v402[57] = *(v420 + 9);
      v400 = v415;
      v401 = v416;
      *v402 = v417;
      *&v402[16] = v418;
      v397 = v411;
      v398 = v412;
      v399[0] = v413;
      v399[1] = v414;
      outlined destroy of UserGraph(&v397);
      v59 = v373;
      $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v373, v370, v376, v380, v377, v378);

      outlined destroy of UserGraph(v382);
      v60 = 0;
      v61 = v160;
      v62 = v375;
      goto LABEL_18;
    }

    v162 = v415;
    v163 = *(v415 + 16);

    if (!v163)
    {
      break;
    }

    v164 = 0;
    v114 = v162 + 4;
    v57 = 48;
    while (1)
    {
      while (1)
      {
        if (v164 >= v163)
        {
          __break(1u);
          goto LABEL_217;
        }

        v165 = &v114[6 * v164];
        v166 = v165[3];
        if (v166 == -7)
        {
          break;
        }

        v82 = __OFADD__(v164++, 1);
        if (v82)
        {
          goto LABEL_225;
        }

        v112 = *v165;
        v167 = v165[1];
        v168 = v165[2];
        v169 = *(v165 + 40);
        v170 = v165[4];
        *v396 = v112;
        *&v396[8] = v167;
        *&v396[16] = v168;
        *&v396[24] = v166;
        *&v396[32] = v170;
        v396[40] = v169;
        outlined copy of NodePersonality(v112);

        v171 = v564;
        closure #1 in UserGraph.resolveEnvironmentRadianceNode()(v396, &v411);
        v564 = v171;
        v80 = v112;
        if (v171)
        {
          goto LABEL_144;
        }

        outlined consume of NodePersonality(v112);

        if (v164 >= v163)
        {
          goto LABEL_133;
        }
      }

      v82 = __OFADD__(v164++, 1);
      if (v82)
      {
        break;
      }

      if (v164 >= v163)
      {
        goto LABEL_133;
      }
    }

    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    swift_once();
LABEL_67:
    v118 = type metadata accessor for Logger();
    __swift_project_value_buffer(v118, logger);
    v119 = v564;
    v120 = v564;
    v108 = Logger.logObject.getter();
    v121 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v108, v121))
    {
      v57 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *&v397 = v112;
      *v57 = 136315138;
      swift_getErrorValue();
      v122 = Error.localizedDescription.getter();
      v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, &v397);

      *(v57 + 4) = v124;
      _os_log_impl(&dword_265D7D000, v108, v121, "%s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v112);
      MEMORY[0x266773120](v112, -1, -1);
      MEMORY[0x266773120](v57, -1, -1);
    }

    else
    {
    }

    v564 = 0;
  }

LABEL_133:

  v172 = static DebugConfig.debugMode;

  v173 = specialized Set.contains(_:)(3, v172);

  if ((v173 & 1) == 0)
  {
    goto LABEL_139;
  }

  v545[7] = v418;
  v545[8] = v419;
  v546[0] = v420[0];
  *(v546 + 9) = *(v420 + 9);
  v545[4] = v415;
  v545[5] = v416;
  v545[6] = v417;
  v545[0] = v411;
  v545[1] = v412;
  v545[2] = v413;
  v545[3] = v414;
  v174 = v564;
  createDotText(representing:)(v545);
  v58 = v174;
  v90 = v378;
  v57 = v379;
  v93 = v380;
  if (v174)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v175 = swift_allocObject();
    *(v175 + 16) = xmmword_265F1F670;
    swift_getErrorValue();
    v176 = v387;
    v177 = v388;
    *(v175 + 56) = v388;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v175 + 32));
    (*(*(v177 - 8) + 16))(boxed_opaque_existential_0, v176, v177);
    print(_:separator:terminator:)();

    v564 = 0;
    v179 = v381;
    v108 = v57;
    v180 = v93;
    goto LABEL_150;
  }

LABEL_149:
  v564 = v58;
  *&v397 = 0;
  *(&v397 + 1) = 0xE000000000000000;
  v182 = v91;
  v183 = v92;
  _StringGuts.grow(_:)(30);

  *&v397 = v376;
  *(&v397 + 1) = v93;
  MEMORY[0x266771550](95, 0xE100000000000000);
  MEMORY[0x266771550](v377, v90);
  MEMORY[0x266771550](0xD000000000000019, 0x8000000265F2D980);
  specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v182, v183, v397, *(&v397 + 1), 7630692, 0xE300000000000000);
  v180 = v93;

  v179 = v381;
  v108 = v57;
LABEL_150:
  v181 = v374;
  v62 = v375;
LABEL_151:
  v59 = v373;
  v184 = one-time initialization token for surface_parameters_private;

  if (v184 != -1)
  {
    swift_once();
  }

  v185 = v564;
  specialized UserGraph.mapImageNodes(connectedTo:paramType:textureAssignments:customUniformsType:)(&v428, v181, v108);
  v564 = v185;
  if (v185)
  {

    outlined destroy of [Input](&v431, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
    v498 = v428;
    outlined destroy of NodePersonality(&v498);
    v497 = v429;
    outlined destroy of [Input](&v497, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v496 = v430;
    outlined destroy of [Input](&v496, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    *&v402[32] = v419;
    *&v402[48] = v420[0];
    *&v402[57] = *(v420 + 9);
    v400 = v415;
    v401 = v416;
    *v402 = v417;
    *&v402[16] = v418;
    v397 = v411;
    v398 = v412;
    v399[0] = v413;
    v399[1] = v414;
    outlined destroy of UserGraph(&v397);
    $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v59, v370, v376, v180, v377, v90);

    outlined destroy of UserGraph(v382);
    v60 = 1;
    v61 = v179;
    goto LABEL_18;
  }

  if (v432)
  {
    v460 = v431;
    v461 = v432;
    v462[0] = v433[0];
    *(v462 + 9) = *(v433 + 9);
    outlined copy of NodePersonality(v364);
    v186 = one-time initialization token for geometry_parameters_private;

    if (v186 != -1)
    {
      swift_once();
    }

    v187 = v564;
    specialized UserGraph.mapImageNodes(connectedTo:paramType:textureAssignments:customUniformsType:)(&v460, v181, v108);
    v564 = v187;
    if (v187)
    {

      v466 = v460;
      outlined destroy of NodePersonality(&v466);
      v467 = v461;
      outlined destroy of [Input](&v467, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v468 = *&v462[0];
      outlined destroy of [Input](&v468, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

      outlined destroy of [Input](&v431, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
      v495 = v428;
      outlined destroy of NodePersonality(&v495);
      v494 = v429;
      outlined destroy of [Input](&v494, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      v493 = v430;
      outlined destroy of [Input](&v493, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      *&v402[32] = v419;
      *&v402[48] = v420[0];
      *&v402[57] = *(v420 + 9);
      v400 = v415;
      v401 = v416;
      *v402 = v417;
      *&v402[16] = v418;
      v397 = v411;
      v398 = v412;
      v399[0] = v413;
      v399[1] = v414;
      outlined destroy of UserGraph(&v397);
      $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v59, v370, v376, v180, v377, v90);

      outlined destroy of UserGraph(v382);
      v60 = 1;
      v61 = v381;
      goto LABEL_18;
    }

LABEL_163:

    v463 = v460;
    outlined destroy of NodePersonality(&v463);
    v464 = v461;
    outlined destroy of [Input](&v464, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v465 = *&v462[0];
    outlined destroy of [Input](&v465, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  }

  else
  {
  }

  v188 = (2 * *(v415 + 16)) | 1;
  v544[0] = 0;
  v544[1] = v415;
  v544[2] = v415 + 32;
  v544[3] = 0;
  v544[4] = v188;
  v544[5] = closure #1 in UserGraph.nodes.getter;
  v544[6] = 0;
  v544[7] = closure #1 in UserGraph.transformSamplerNodes();
  v544[8] = 0;

  v189 = v564;
  specialized Sequence.forEach(_:)(v544, &v411);
  v114 = v189;
  outlined destroy of [Input](v544, &_ss18LazyFilterSequenceVy11ShaderGraph04UserE0V8IteratorVy_AC0dE4NodeVGGMd, &_ss18LazyFilterSequenceVy11ShaderGraph04UserE0V8IteratorVy_AC0dE4NodeVGGMR);
  v190 = static DebugConfig.debugMode;

  v191 = specialized Set.contains(_:)(3, v190);

  if (v191)
  {
    v57 = v108;
    v542[8] = v419;
    v543[0] = v420[0];
    *(v543 + 9) = *(v420 + 9);
    v542[4] = v415;
    v542[5] = v416;
    v542[6] = v417;
    v542[7] = v418;
    v542[0] = v411;
    v542[1] = v412;
    v542[2] = v413;
    v542[3] = v414;
    createDotText(representing:)(v542);
    if (v189)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v192 = swift_allocObject();
      *(v192 + 16) = xmmword_265F1F670;
      swift_getErrorValue();
      v193 = v389;
      v194 = v390;
      *(v192 + 56) = v390;
      v195 = __swift_allocate_boxed_opaque_existential_0((v192 + 32));
      (*(*(v194 - 8) + 16))(v195, v193, v194);
      print(_:separator:terminator:)();

      v114 = 0;
      goto LABEL_173;
    }

LABEL_172:
    v196 = v129;
    v197 = v130;
    *&v397 = 0;
    *(&v397 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    v198 = v380;

    *&v397 = v376;
    *(&v397 + 1) = v198;
    MEMORY[0x266771550](95, 0xE100000000000000);
    MEMORY[0x266771550](v377, v378);
    MEMORY[0x266771550](0xD000000000000014, 0x8000000265F2D960);
    specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v196, v197, v397, *(&v397 + 1), 7630692, 0xE300000000000000);

LABEL_173:
    v108 = v57;
  }

  UserGraph.replaceRootNodeWithInternal(root:customUniformsType:)(&v428, v108, &v397);
  v564 = v114;
  if (v114)
  {

    v492 = v428;
    outlined destroy of NodePersonality(&v492);
    v491 = v429;
    outlined destroy of [Input](&v491, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v490 = v430;
    outlined destroy of [Input](&v490, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    outlined destroy of [Input](&v431, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
LABEL_176:
    *&v402[32] = v419;
    *&v402[48] = v420[0];
    *&v402[57] = *(v420 + 9);
    v400 = v415;
    v401 = v416;
    *v402 = v417;
    *&v402[16] = v418;
    v397 = v411;
    v398 = v412;
    v399[0] = v413;
    v399[1] = v414;
    outlined destroy of UserGraph(&v397);
    v59 = v373;
    $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v373, v370, v376, v380, v377, v378);

    outlined destroy of UserGraph(v382);
    v60 = 1;
    v62 = v375;
    v61 = v381;
    goto LABEL_18;
  }

  v150 = *(&v397 + 1);
  v199 = v397;
  v200 = v398;
  v201 = *&v399[0];
  v202 = BYTE8(v399[0]);
  v57 = *(&v399[1] + 1);
  v363 = *&v399[1];
  v367 = v400;
  v356 = v401;
  v357 = *(&v400 + 1);
  v355 = BYTE8(v401);
  v489 = v428;
  outlined destroy of NodePersonality(&v489);
  v488 = v429;
  outlined destroy of [Input](&v488, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v487 = v430;
  outlined destroy of [Input](&v487, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v361 = v199;
  v362 = v200;
  v525 = __PAIR128__(v150, v199);
  v526[0] = v200;
  *&v526[1] = v201;
  BYTE8(v526[1]) = v202;
  v112 = v432;
  if (!v432)
  {
    v364 = v57;
    v360 = v150;
    if (one-time initialization token for geometry_parameters_private != -1)
    {
      swift_once();
    }

    v204 = static MetalDataType.re.geometry_parameters_private;
    v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
    v205 = swift_allocObject();
    v365 = xmmword_265F1F670;
    *(v205 + 16) = xmmword_265F1F670;
    *(v205 + 32) = 12324;
    *(v205 + 40) = 0xE200000000000000;
    *(v205 + 48) = v204;
    v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph10OutputSpecVGMR);
    v206 = swift_allocObject();
    *(v206 + 16) = v365;
    v207 = one-time initialization token for void;
    v343 = v204;

    if (v207 != -1)
    {
      swift_once();
    }

    v208 = static MetalDataType.void;
    *(v206 + 32) = 7632239;
    *(v206 + 40) = 0xE300000000000000;
    *(v206 + 48) = v208;
    v209 = swift_allocObject();
    *(v209 + 16) = 0xD00000000000001FLL;
    *(v209 + 24) = 0x8000000265F2D920;
    *(v209 + 32) = v208;
    v210 = *(&v413 + 1);
    v211 = v415;
    v212 = *(v415 + 16);
    v348 = v208;
    swift_retain_n();

    v346 = v209;
    v358 = v210;
    specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)(v212, v210, 0, v205, v206, v209 | 0x2000000000000000, &v434);
    v349 = *(&v435[0] + 1);
    v350 = *&v435[1];
    v351 = BYTE8(v435[1]);
    v352 = v434;
    v353 = *&v435[0];
    v354 = *(&v434 + 1);
    v485 = *(&v434 + 1);
    v486 = v434;
    v484 = *&v435[0];
    outlined init with copy of NodePersonality(&v486, &v397);
    outlined init with copy of [Input](&v485, &v397, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v484, &v397, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v366 = v211;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v366 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v366 + 2) + 1, 1, v366);
    }

    v214 = *(v366 + 2);
    v213 = *(v366 + 3);
    if (v214 >= v213 >> 1)
    {
      v366 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v213 > 1), v214 + 1, 1, v366);
    }

    v215 = v485;
    v216 = v484;
    v217 = v366;
    *(v366 + 2) = v214 + 1;
    v218 = &v217[48 * v214];
    v219 = v435[0];
    v220 = v434;
    *(v218 + 57) = *(v435 + 9);
    *(v218 + 2) = v220;
    *(v218 + 3) = v219;
    *&v415 = v217;
    *(&v345 + 1) = *(&v435[0] + 1);
    outlined init with copy of NodePersonality(&v486, &v397);
    outlined init with copy of [Input](&v485, &v397, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v484, &v397, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized UserGraph.Adjacent.init(_:)(v215, v216, &v436);
    v221 = v436;
    v222 = v438;
    outlined destroy of NodePersonality(&v486);
    outlined destroy of [Input](&v485, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v484, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v539 = v437;
    v538 = v221;
    v540 = v222;
    v541 = v439;
    specialized OrderedDictionary.subscript.setter(&v538, *(&v345 + 1));

    v223 = swift_allocObject();
    *(v223 + 16) = v365;
    *(v223 + 32) = 28265;
    *(v223 + 40) = 0xE200000000000000;
    v224 = v348;
    *(v223 + 48) = v348;
    v225 = swift_allocObject();
    *(v225 + 16) = v365;
    v341 = 7632239;
    *(v225 + 32) = 7632239;
    *(v225 + 40) = 0xE300000000000000;
    *(v225 + 48) = v224;
    v226 = swift_allocObject();
    *(v226 + 16) = 1;
    *(v226 + 24) = v379;
    v227 = *(v217 + 2);

    v342 = v226;
    specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)(v227, v358, 0, v223, v225, v226 | 0x4000000000000000, &v440);
    v345 = v441[0];
    v346 = *&v441[1];
    LODWORD(v347) = BYTE8(v441[1]);
    v344 = *(&v440 + 1);
    v228 = v440;
    v482 = v228 >> 64;
    v348 = v228;
    v483 = v440;
    v481 = *&v441[0];
    outlined init with copy of NodePersonality(&v483, &v397);
    outlined init with copy of [Input](&v482, &v397, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v481, &v397, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v230 = *(v217 + 2);
    v229 = *(v217 + 3);
    if (v230 >= v229 >> 1)
    {
      v366 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v229 > 1), v230 + 1, 1, v366);
    }

    v231 = v482;
    v232 = v481;
    v233 = v366;
    *(v366 + 2) = v230 + 1;
    v234 = &v233[48 * v230];
    v235 = v441[0];
    v236 = v440;
    *(v234 + 57) = *(v441 + 9);
    *(v234 + 2) = v236;
    *(v234 + 3) = v235;
    *&v415 = v233;
    v340 = *(&v441[0] + 1);
    outlined init with copy of NodePersonality(&v483, &v397);
    outlined init with copy of [Input](&v482, &v397, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v481, &v397, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v339 = v231;
    specialized UserGraph.Adjacent.init(_:)(v231, v232, &v442);
    v237 = v442;
    v238 = v444;
    outlined destroy of NodePersonality(&v483);
    outlined destroy of [Input](&v482, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v481, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v535 = v443;
    v534 = v237;
    v536 = v238;
    v537 = v445;
    specialized OrderedDictionary.subscript.setter(&v534, v340);

    v239 = swift_allocObject();
    *(v239 + 16) = v365;
    *(v239 + 32) = v341;
    *(v239 + 40) = 0xE300000000000000;
    *(v239 + 48) = v343;
    v240 = swift_allocObject();
    *(v240 + 16) = 12324;
    *(v240 + 24) = 0xE200000000000000;
    v241 = *(v233 + 2);

    *&v365 = v240;
    specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)(v241, v358, 0, MEMORY[0x277D84F90], v239, v240 | 0x6000000000000000, &v446);
    v479 = *(&v446 + 1);
    v480 = v446;
    v478 = *&v447[0];
    outlined init with copy of NodePersonality(&v480, &v397);
    outlined init with copy of [Input](&v479, &v397, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v478, &v397, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v243 = *(v233 + 2);
    v242 = *(v233 + 3);
    if (v243 >= v242 >> 1)
    {
      v366 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v242 > 1), v243 + 1, 1, v366);
    }

    v244 = v479;
    v245 = v478;
    v246 = v366;
    *(v366 + 2) = v243 + 1;
    v247 = &v246[48 * v243];
    v248 = v447[0];
    v249 = v446;
    *(v247 + 57) = *(v447 + 9);
    *(v247 + 2) = v249;
    *(v247 + 3) = v248;
    *&v415 = v246;
    v250 = *(&v447[0] + 1);
    outlined init with copy of NodePersonality(&v480, &v397);
    outlined init with copy of [Input](&v479, &v397, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v478, &v397, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized UserGraph.Adjacent.init(_:)(v244, v245, &v448);
    v251 = v448;
    v252 = v450;
    outlined destroy of NodePersonality(&v480);
    outlined destroy of [Input](&v479, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v478, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    v531 = v449;
    v530 = v251;
    v532 = v252;
    v533 = v451;
    specialized OrderedDictionary.subscript.setter(&v530, v250);

    v253 = v564;
    ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v452);
    v564 = v253;
    if (!v253)
    {
      ShaderGraphNode.subscript.getter(12324, 0xE200000000000000, v454);
      v564 = 0;
      UserGraph.connect(_:to:)(v452, v454);

      v477 = v455;
      outlined destroy of String(&v477);

      v476 = v453;
      outlined destroy of String(&v476);
      v272 = v564;
      result = ShaderGraphNode.subscript.getter(7632239, 0xE300000000000000, v456);
      v564 = v272;
      if (!v272)
      {
        if (*(v339 + 16))
        {
          v273 = *(v339 + 40);
          v274 = *(v339 + 48);
          v275 = *(v339 + 56);
          v276 = *(v339 + 64);
          v277 = *(v339 + 72);
          v278 = *(v339 + 80);
          v527[0] = *(v339 + 32);
          v527[1] = v273;
          v527[2] = v274;
          v527[3] = v275;
          v527[4] = v276;
          v528 = v277;
          v529 = v278;

          UserGraph.connect(_:to:)(v456, v527);

          v475 = v457;
          outlined destroy of String(&v475);
          outlined destroy of NodePersonality(&v480);
          outlined destroy of [Input](&v479, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
          v254 = &_sSay11ShaderGraph6OutputVGMd;
          v255 = &_sSay11ShaderGraph6OutputVGMR;
          v256 = &v478;
          goto LABEL_198;
        }

        goto LABEL_277;
      }
    }

    outlined consume of NodePersonality(v363);

    outlined destroy of NodePersonality(&v486);
    outlined destroy of [Input](&v485, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v484, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    outlined destroy of NodePersonality(&v480);
    outlined destroy of [Input](&v479, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v478, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    outlined destroy of NodePersonality(&v483);
    outlined destroy of [Input](&v482, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined destroy of [Input](&v481, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
LABEL_215:
    outlined consume of NodePersonality(v361);

    *&v402[32] = v419;
    *&v402[48] = v420[0];
    *&v402[57] = *(v420 + 9);
    v400 = v415;
    v401 = v416;
    *v402 = v417;
    *&v402[16] = v418;
    v397 = v411;
    v398 = v412;
    v399[0] = v413;
    v399[1] = v414;
    outlined destroy of UserGraph(&v397);
    v59 = v373;
    $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v373, v370, v376, v380, v377, v378);

    outlined destroy of UserGraph(v382);
    v60 = 1;
    goto LABEL_63;
  }

  v148 = v431;
  v458[0] = v431;
  v458[1] = v432;
  v459[0] = v433[0];
  *(v459 + 9) = *(v433 + 9);
  outlined copy of NodePersonality(v364);

  v203 = v564;
  UserGraph.replaceRootNodeWithInternal(root:customUniformsType:)(v458, v108, &v397);
  v564 = v203;
  if (v203)
  {

    outlined consume of NodePersonality(v363);

    v472 = v148;
    outlined destroy of NodePersonality(&v472);
    v473 = v112;
    outlined destroy of [Input](&v473, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v474 = *&v459[0];
    outlined destroy of [Input](&v474, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);

    outlined destroy of [Input](&v431, &_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
    outlined consume of NodePersonality(v361);

    goto LABEL_176;
  }

LABEL_197:
  v364 = v57;
  v360 = v150;
  v354 = *(&v397 + 1);
  v352 = v397;
  v349 = *(&v398 + 1);
  v353 = v398;
  v350 = *&v399[0];
  v351 = BYTE8(v399[0]);
  v344 = *(&v399[1] + 1);
  v348 = *&v399[1];
  v345 = v400;
  v346 = v401;
  LODWORD(v347) = BYTE8(v401);
  v469 = v148;
  outlined destroy of NodePersonality(&v469);
  v470 = v112;
  outlined destroy of [Input](&v470, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  v471 = *&v459[0];
  outlined destroy of [Input](&v471, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v254 = &_s11ShaderGraph0aB4NodeVSgMd;
  v255 = &_s11ShaderGraph0aB4NodeVSgMR;
  v256 = &v431;
LABEL_198:
  outlined destroy of [Input](v256, v254, v255);
  v257 = v415;
  v258 = *(v415 + 16);

  if (v258)
  {
    v259 = 0;
    while (1)
    {
      while (1)
      {
        if (v259 >= v258)
        {
          __break(1u);
          goto LABEL_255;
        }

        v260 = v257 + 32 + 48 * v259;
        v261 = *(v260 + 24);
        v82 = __OFADD__(v259++, 1);
        v262 = v82;
        if (v261 == -7)
        {
          break;
        }

        if (v262)
        {
          goto LABEL_268;
        }

        v263 = *(v260 + 40);
        v264 = *(v260 + 32);
        v266 = *(v260 + 8);
        v265 = *(v260 + 16);
        *&v397 = *v260;
        v267 = v397;
        *(&v397 + 1) = v266;
        *&v398 = v265;
        *(&v398 + 1) = v261;
        *&v399[0] = v264;
        BYTE8(v399[0]) = v263;
        outlined copy of NodePersonality(v397);

        v268 = v564;
        specialized closure #1 in UserGraph.transformGeomPropValueNodes(surface:geometryModifier:nodeDefStore:)(&v397, v386, v385, &v411);
        v564 = v268;
        outlined consume of NodePersonality(v267);

        if (v259 >= v258)
        {
          goto LABEL_209;
        }
      }

      if (v262)
      {
        break;
      }

      if (v259 >= v258)
      {
        goto LABEL_209;
      }
    }

    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    outlined consume of ShaderGraphNode?(v348, v344, v345);
    outlined consume of NodePersonality(v363);
LABEL_273:

    goto LABEL_274;
  }

LABEL_209:

  v269 = v564;
  specialized UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(&v525, 0);
  v564 = v269;
  if (v269)
  {

    outlined consume of NodePersonality(v361);

    outlined consume of ShaderGraphNode?(v348, v344, v345);
    outlined consume of NodePersonality(v363);

    outlined consume of ShaderGraphNode?(v352, v354, v353);
    goto LABEL_220;
  }

LABEL_217:
  v523[0] = v352;
  v523[1] = v354;
  v523[2] = v353;
  v523[3] = v349;
  v523[4] = v350;
  v524 = v351;
  outlined copy of NodePersonality(v352);

  v270 = v564;
  specialized UserGraph.insertParamsInputs(surface:type:nodeDefStore:)(v523, 1);
  v564 = v270;
  if (!v270)
  {
    outlined consume of NodePersonality(v352);

    v279 = v415;
    v280 = *(v415 + 16);

    if (v280)
    {
      v282 = 0;
      while (1)
      {
        while (1)
        {
          if (v282 >= v280)
          {
            __break(1u);
            goto LABEL_272;
          }

          v283 = (v279 + 32 + 48 * v282);
          if (v283[3] == -7)
          {
            break;
          }

          v82 = __OFADD__(v282++, 1);
          if (v82)
          {
            goto LABEL_276;
          }

          v285 = *v283;
          v284 = v283[1];
          outlined copy of NodePersonality(*v283);

          v286 = v564;
          specialized Sequence.forEach(_:)(v284, &v411);
          v564 = v286;
          if (v286)
          {
            outlined consume of NodePersonality(v285);

            goto LABEL_250;
          }

          outlined consume of NodePersonality(v285);

          if (v282 >= v280)
          {
            goto LABEL_236;
          }
        }

        v82 = __OFADD__(v282++, 1);
        if (v82)
        {
          break;
        }

        if (v282 >= v280)
        {
          goto LABEL_236;
        }
      }

      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
      goto LABEL_278;
    }

LABEL_236:

    v287 = v564;
    UserGraph.rewireUniformInputs(customUniformsType:)(v379);
    v564 = v287;
    if (!v287)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVSgGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVSgGMR);
      v288 = swift_allocObject();
      v289 = v363;
      v290 = v364;
      *(v288 + 32) = v363;
      *&v365 = v288 + 32;
      v291 = v367;
      *(v288 + 40) = v290;
      *(v288 + 48) = v291;
      v292 = v356;
      *(v288 + 56) = v357;
      *(v288 + 64) = v292;
      *(v288 + 72) = v355;
      v294 = v344;
      v293 = v345;
      *(v288 + 80) = v348;
      *(v288 + 88) = v294;
      v296 = *(&v345 + 1);
      v295 = v346;
      *(v288 + 96) = v293;
      *(v288 + 104) = v296;
      *(v288 + 112) = v295;
      *(v288 + 120) = v347;
      outlined copy of NodePersonality(v289);
      v364 = v290;

      outlined copy of ShaderGraphNode?(v348, v294, v293);
      v297 = 0;
      v366 = (v288 + 16);
      v298 = MEMORY[0x277D84F90];
LABEL_239:
      v299 = &v366[48 * v297];
      while (++v297 != 3)
      {
        v300 = v299 + 48;
        v301 = *(v299 + 3);
        v299 += 48;
        if (v301)
        {
          v302 = *(v300 - 4);
          v359 = *v300;
          LODWORD(v358) = v300[8];
          v303 = *(v300 - 2);
          v357 = *(v300 - 1);
          outlined copy of NodePersonality(v302);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v298 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v298 + 2) + 1, 1, v298);
          }

          v305 = *(v298 + 2);
          v304 = *(v298 + 3);
          if (v305 >= v304 >> 1)
          {
            v298 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v304 > 1), v305 + 1, 1, v298);
          }

          *(v298 + 2) = v305 + 1;
          v306 = &v298[48 * v305];
          *(v306 + 4) = v302;
          *(v306 + 5) = v301;
          v307 = v357;
          *(v306 + 6) = v303;
          *(v306 + 7) = v307;
          *(v306 + 8) = v359;
          v306[72] = v358 & 1;
          goto LABEL_239;
        }
      }

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph0aB4NodeVSgMd, &_s11ShaderGraph0aB4NodeVSgMR);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      UserGraph.removeUnconnectedNodesAndEdges(roots:)(v298);

      v308 = v564;
      UserGraph.resolveMaterialXNodeDefs(connectedTo:nodeDefStore:shaderType:)(&v525, v386, v385, v384, 0);
      v564 = v308;
      if (v308)
      {
        outlined consume of ShaderGraphNode?(v352, v354, v353);
        outlined consume of ShaderGraphNode?(v348, v344, v345);
        outlined consume of NodePersonality(v363);
      }

      else
      {
        outlined copy of ShaderGraphNode?(v352, v354, v353);
        v309 = v564;
        UserGraph.resolveMaterialXNodeDefs(connectedTo:nodeDefStore:shaderType:)(v523, v386, v385, v384, 1);
        v564 = v309;
        if (!v309)
        {
LABEL_255:

          outlined consume of NodePersonality(v352);

          v311 = v415;
          v312 = *(v415 + 16);

          if (!v312)
          {
LABEL_264:

            v409[7] = v418;
            v409[8] = v419;
            v410[0] = v420[0];
            *(v410 + 9) = *(v420 + 9);
            v409[4] = v415;
            v409[5] = v416;
            v409[6] = v417;
            v409[0] = v411;
            v409[1] = v412;
            v409[2] = v413;
            v409[3] = v414;
            *(&v422[7] + 7) = v418;
            *(&v422[8] + 7) = v419;
            *(&v422[9] + 7) = v420[0];
            v422[10] = *(v420 + 9);
            *(&v422[3] + 7) = v414;
            *(&v422[4] + 7) = v415;
            *(&v422[5] + 7) = v416;
            *(&v422[6] + 7) = v417;
            *(v422 + 7) = v411;
            *(&v422[1] + 7) = v412;
            *(&v422[2] + 7) = v413;
            v424 = v525;
            v425[0] = v526[0];
            *(v425 + 9) = *(v526 + 9);
            v322 = static DebugConfig.debugMode;
            outlined init with copy of UserGraph(v409, &v397);

            v323 = specialized Set.contains(_:)(3, v322);

            if ((v323 & 1) == 0)
            {
              goto LABEL_269;
            }

            v521[7] = v418;
            v521[8] = v419;
            v522[0] = v420[0];
            *(v522 + 9) = *(v420 + 9);
            v521[4] = v415;
            v521[5] = v416;
            v521[6] = v417;
            v521[0] = v411;
            v521[1] = v412;
            v521[2] = v413;
            v521[3] = v414;
            v324 = v564;
            createDotText(representing:)(v521);
            v564 = v324;
            if (!v324)
            {
LABEL_272:
              v330 = result;
              v331 = v281;
              *&v397 = 0;
              *(&v397 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(21);
              v332 = v380;

              *&v397 = v376;
              *(&v397 + 1) = v332;
              MEMORY[0x266771550](95, 0xE100000000000000);
              MEMORY[0x266771550](v377, v378);
              MEMORY[0x266771550](0xD000000000000010, 0x8000000265F2D940);
              specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v330, v331, v397, *(&v397 + 1), 7630692, 0xE300000000000000);
              outlined consume of ShaderGraphNode?(v348, v344, v345);
              outlined consume of NodePersonality(v363);

              goto LABEL_273;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
            v325 = swift_allocObject();
            *(v325 + 16) = xmmword_265F1F670;
            v326 = v564;
            swift_getErrorValue();
            v327 = v391;
            v328 = v392;
            *(v325 + 56) = v392;
            v329 = __swift_allocate_boxed_opaque_existential_0((v325 + 32));
            (*(*(v328 - 8) + 16))(v329, v327, v328);
            print(_:separator:terminator:)();
            outlined consume of ShaderGraphNode?(v348, v344, v345);
            outlined consume of NodePersonality(v363);

            v564 = 0;
LABEL_274:
            v394[8] = v419;
            v395[0] = v420[0];
            *(v395 + 9) = *(v420 + 9);
            v394[4] = v415;
            v394[5] = v416;
            v394[6] = v417;
            v394[7] = v418;
            v394[0] = v411;
            v394[1] = v412;
            v394[2] = v413;
            v394[3] = v414;
            outlined destroy of UserGraph(v394);
            v333 = v373;
            v335 = v376;
            v334 = v377;
            v336 = v380;
            v337 = v378;
            $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v373, v370, v376, v380, v377, v378);

            outlined destroy of UserGraph(v382);
            (*(v383 + 8))(v381, v372);
            (*(v371 + 8))(v333, v375);
            *&v396[16] = v424;
            *&v396[32] = v425[0];
            *&v396[41] = *(v425 + 9);
            *&v396[265] = v422[10];
            *&v396[217] = v422[7];
            *&v396[233] = v422[8];
            *&v396[249] = v422[9];
            *&v396[153] = v422[3];
            *&v396[169] = v422[4];
            *&v396[185] = v422[5];
            *&v396[201] = v422[6];
            *&v396[105] = v422[0];
            *&v396[121] = v422[1];
            *&v396[137] = v422[2];
            v398 = v424;
            v399[0] = v425[0];
            *(v399 + 9) = *(v425 + 9);
            *&v402[169] = v422[10];
            *&v402[121] = v422[7];
            *&v402[137] = v422[8];
            *&v402[153] = v422[9];
            *&v402[57] = v422[3];
            *&v402[73] = v422[4];
            *&v402[89] = v422[5];
            *&v402[105] = v422[6];
            *&v402[9] = v422[0];
            *&v402[25] = v422[1];
            *&v396[57] = *v423;
            *&v396[281] = v421[0];
            *v396 = v335;
            *&v396[8] = v336;
            *&v396[60] = *&v423[3];
            *&v396[64] = v352;
            *&v396[72] = v354;
            *&v396[80] = v353;
            *&v396[88] = v349;
            *&v396[96] = v350;
            v396[104] = v351;
            *&v396[284] = *(v421 + 3);
            *&v396[288] = v368;
            *&v396[296] = v374;
            *&v396[304] = v379;
            *&v396[312] = v334;
            *&v396[320] = v337;
            *&v397 = v335;
            *(&v397 + 1) = v336;
            HIDWORD(v399[1]) = *&v423[3];
            *(&v399[1] + 9) = *v423;
            *&v400 = v352;
            *(&v400 + 1) = v354;
            *&v401 = v353;
            *(&v401 + 1) = v349;
            *v402 = v350;
            v402[8] = v351;
            *&v402[41] = v422[2];
            *v403 = v421[0];
            *&v403[3] = *(v421 + 3);
            v404 = v368;
            v405 = v374;
            v406 = v379;
            v407 = v334;
            v408 = v337;
            outlined init with copy of RESurfaceShaderMaterial(v396, &v393);
            outlined destroy of RESurfaceShaderMaterial(&v397);
            return memcpy(v369, v396, 0x148uLL);
          }

          v313 = 0;
          while (v313 < v312)
          {
            v314 = v311 + 32 + 48 * v313;
            v315 = *(v314 + 24);
            if (v315 == -7)
            {
              v82 = __OFADD__(v313++, 1);
              if (v82)
              {
                goto LABEL_279;
              }

              if (v313 >= v312)
              {
                goto LABEL_264;
              }
            }

            else
            {
              v82 = __OFADD__(v313++, 1);
              if (v82)
              {
                goto LABEL_280;
              }

              v316 = *v314;
              v317 = *(v314 + 8);
              v318 = *(v314 + 16);
              v319 = *(v314 + 40);
              v320 = *(v314 + 32);
              *v396 = v316;
              *&v396[8] = v317;
              *&v396[16] = v318;
              *&v396[24] = v315;
              *&v396[32] = v320;
              v396[40] = v319;
              outlined copy of NodePersonality(v316);

              v321 = v564;
              closure #2 in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v396);
              v564 = v321;
              if (v321)
              {
                outlined consume of NodePersonality(v363);

                outlined consume of NodePersonality(v361);

                outlined consume of ShaderGraphNode?(v352, v354, v353);
                outlined consume of ShaderGraphNode?(v348, v344, v345);

                outlined consume of NodePersonality(v316);

                goto LABEL_219;
              }

              outlined consume of NodePersonality(v316);

              if (v313 >= v312)
              {
                goto LABEL_264;
              }
            }
          }

LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
          return result;
        }

        v310 = v352;
        outlined consume of ShaderGraphNode?(v352, v354, v353);
        outlined consume of ShaderGraphNode?(v348, v344, v345);
        outlined consume of NodePersonality(v363);

        outlined consume of NodePersonality(v310);
      }

      outlined consume of NodePersonality(v361);

      goto LABEL_219;
    }

LABEL_250:
    outlined consume of ShaderGraphNode?(v352, v354, v353);
    outlined consume of ShaderGraphNode?(v348, v344, v345);
    outlined consume of NodePersonality(v363);

    goto LABEL_215;
  }

  v271 = v352;
  outlined consume of ShaderGraphNode?(v352, v354, v353);

  outlined consume of NodePersonality(v361);

  outlined consume of ShaderGraphNode?(v348, v344, v345);
  outlined consume of NodePersonality(v363);

  outlined consume of NodePersonality(v271);

LABEL_219:

LABEL_220:
  *&v402[32] = v419;
  *&v402[48] = v420[0];
  *&v402[57] = *(v420 + 9);
  v400 = v415;
  v401 = v416;
  *v402 = v417;
  *&v402[16] = v418;
  v397 = v411;
  v398 = v412;
  v399[0] = v413;
  v399[1] = v414;
  outlined destroy of UserGraph(&v397);
  v59 = v373;
  $defer #1 () in RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v373, v370, v376, v380, v377, v378);

  outlined destroy of UserGraph(v382);
  v60 = 1;
LABEL_63:
  v62 = v375;
  v61 = v381;
LABEL_18:
  (*(v383 + 8))(v61, v372);
  (*(v371 + 8))(v59, v62);

  outlined destroy of [Input](&v520, &_sSay11ShaderGraph9InputSpecVGMd, &_sSay11ShaderGraph9InputSpecVGMR);

  if (v60)
  {
  }

  return result;
}