uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x2667538A0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x2667538A0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for MetricCollector.Event(0);
    v19 = *(v12 - 8);
    outlined init with take of MetricCollector.Event(v11 + *(v19 + 72) * v8, a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for MetricCollector.Event(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for UUID();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for UUID();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v14 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v14;
    }

    *a5 = *(*(v12 + 56) + 16 * v10);
    specialized _NativeDictionary._delete(at:)(v10, v12);
    *v6 = v12;
  }

  else
  {
    result = 0.0;
    *a5 = xmmword_2651B5F50;
  }

  return result;
}

{
  v6 = v5;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v17 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v17;
    }

    v13 = *(v12 + 48) + 32 * v10;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);

    outlined consume of Data._Representation(v14, v15);
    *a5 = *(*(v12 + 56) + 16 * v10);
    specialized _NativeDictionary._delete(at:)(v10, v12);
    *v6 = v12;
  }

  else
  {
    result = 0.0;
    *a5 = xmmword_2651B5F50;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of MLS.KeyUpdatePolicy((*(v10 + 56) + 40 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of MLS.KeyUpdatePolicy((*(v10 + 56) + 40 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void specialized Dictionary._Variant.removeValue(forKey:)(void *a1@<X8>)
{
  v2 = v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    __src[0] = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v8 = __src[0];
    }

    memmove(a1, (*(v8 + 56) + 296 * v6), 0x128uLL);
    specialized _NativeDictionary._delete(at:)(v6, v8);
    *v2 = v8;
    destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
  }

  else
  {
    _s15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVSgWOi0_(__src);
    memcpy(a1, __src, 0x128uLL);
  }
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v14 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v8 = v14;
    }

    v9 = (*(v8 + 56) + 112 * v6);
    v10 = v9[5];
    a1[4] = v9[4];
    a1[5] = v10;
    a1[6] = v9[6];
    v11 = v9[1];
    *a1 = *v9;
    a1[1] = v11;
    v12 = v9[3];
    a1[2] = v9[2];
    a1[3] = v12;
    specialized _NativeDictionary._delete(at:)(v6, v8);
    *v2 = v8;
  }

  else
  {
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    *&result = 255;
    a1[6] = xmmword_2651D3E10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x266754DC0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 32 * v3);
        v13 = (v11 + 32 * v6);
        if (v3 != v6 || v12 >= v13 + 2)
        {
          v14 = v13[1];
          *v12 = *v13;
          v12[1] = v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 32 * v3);
        v13 = (v11 + 32 * v6);
        if (v3 != v6 || v12 >= v13 + 2)
        {
          v14 = v13[1];
          *v12 = *v13;
          v12[1] = v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = MEMORY[0x266754DC0](*(a2 + 40), *v12);
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v29 = v2;
    v30 = v4;
    do
    {
      v9 = (*(v2 + 48) + 48 * v6);
      v10 = v9[2];
      v11 = v9[3];
      v12 = v7;
      v13 = v9[4];
      v14 = v9[5];
      Hasher.init(_seed:)();

      outlined copy of Data._Representation(v10, v11);
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      Data.hash(into:)();
      v15 = v13;
      v7 = v12;
      MEMORY[0x266754E10](v15);
      MEMORY[0x266754E10](v14);
      v16 = Hasher._finalize()();

      result = outlined consume of Data._Representation(v10, v11);
      v17 = v16 & v12;
      if (v3 >= v8)
      {
        if (v17 < v8)
        {
          v2 = v29;
          v4 = v30;
        }

        else
        {
          v2 = v29;
          v4 = v30;
          if (v3 >= v17)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = v29;
        v4 = v30;
        if (v17 >= v8 || v3 >= v17)
        {
LABEL_11:
          v18 = *(v2 + 48);
          v19 = (v18 + 48 * v3);
          v20 = (v18 + 48 * v6);
          if (v3 != v6 || v19 >= v20 + 3)
          {
            v21 = *v20;
            v22 = v20[2];
            v19[1] = v20[1];
            v19[2] = v22;
            *v19 = v21;
          }

          v23 = *(v2 + 56);
          v24 = (v23 + 16 * v3);
          v25 = (v23 + 16 * v6);
          if (v3 != v6 || v24 >= v25 + 1)
          {
            *v24 = *v25;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(v2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v28;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48) + 32 * v6;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      Hasher.init(_seed:)();

      outlined copy of Data._Representation(v10, v11);
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      Data.hash(into:)();
      v12 = Hasher._finalize()();

      result = outlined consume of Data._Representation(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v17 = v16[1];
          *v15 = *v16;
          v15[1] = v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for MetricCollector.Event(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x266754DC0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for XPCUtils.XPCInterfaceRequest(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for UUID() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

char *specialized _NativeDictionary._delete(at:)(char *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v21 = v2;
    v22 = v4;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          v2 = v21;
          v4 = v22;
        }

        else
        {
          v2 = v21;
          v4 = v22;
          if (v3 >= v10)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = v21;
        v4 = v22;
        if (v10 >= v8 || v3 >= v10)
        {
LABEL_11:
          v11 = *(v2 + 48);
          v12 = (v11 + 48 * v3);
          v13 = (v11 + 48 * v6);
          if (v3 != v6 || v12 >= v13 + 3)
          {
            v14 = *v13;
            v15 = v13[2];
            v12[1] = v13[1];
            v12[2] = v15;
            *v12 = v14;
          }

          v16 = *(v2 + 56);
          result = (v16 + 296 * v3);
          v17 = (v16 + 296 * v6);
          if (v3 != v6 || result >= v17 + 296)
          {
            result = memmove(result, v17, 0x128uLL);
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(v2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v20;
    ++*(v2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v21 = v2;
    v22 = v4;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          v2 = v21;
          v4 = v22;
        }

        else
        {
          v2 = v21;
          v4 = v22;
          if (v3 >= v10)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = v21;
        v4 = v22;
        if (v10 >= v8 || v3 >= v10)
        {
LABEL_11:
          v11 = *(v2 + 48);
          v12 = (v11 + 48 * v3);
          v13 = (v11 + 48 * v6);
          if (v3 != v6 || v12 >= v13 + 3)
          {
            v14 = *v13;
            v15 = v13[2];
            v12[1] = v13[1];
            v12[2] = v15;
            *v12 = v14;
          }

          v16 = *(v2 + 56);
          result = (v16 + 112 * v3);
          v17 = (v16 + 112 * v6);
          if (v3 != v6 || result >= v17 + 112)
          {
            result = memmove(result, v17, 0x70uLL);
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(v2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v20;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for MLS.EventQueue.Event(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return outlined destroy of NSObject?(a4, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMR);
  }

  if (v17 < 1)
  {
    return outlined destroy of NSObject?(a4, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMR);
  }

  result = outlined init with copy of MLS.EventQueue.Event(a4, v15);
  if (v12 >= v17)
  {
    return outlined destroy of NSObject?(a4, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMR);
  }

LABEL_23:
  __break(1u);
  return result;
}

char *specialized MutableCollection<>.sort(by:)(char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v4;
  return result;
}

char *specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return result;
}

char *specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(char *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 + 296 * a3 - 296;
    v7 = &result[-a3 + 1];
LABEL_5:
    v14 = a3;
    v8 = v7;
    for (i = v6; ; i -= 296)
    {
      memcpy(__dst, (i + 296), sizeof(__dst));
      memcpy(v13, i, 0x128uLL);
      outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dst, __src);
      outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v13, __src);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v13);
      result = outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(__dst);
      if (__dst[36] >= v13[36])
      {
LABEL_4:
        a3 = v14 + 1;
        v6 += 296;
        --v7;
        if (v14 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      memcpy(__src, (i + 296), sizeof(__src));
      memcpy((i + 296), i, 0x128uLL);
      result = memcpy(i, __src, 0x128uLL);
      if (!v8)
      {
        goto LABEL_4;
      }

      ++v8;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v81 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_103:
    v10 = *v81;
    if (!*v81)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_135:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v91 = v9;
    v75 = *(v9 + 2);
    if (v75 >= 2)
    {
      while (*a3)
      {
        v76 = *&v9[16 * v75];
        v77 = *&v9[16 * v75 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 296 * v76), (*a3 + 296 * *&v9[16 * v75 + 16]), (*a3 + 296 * v77), v10, a5);
        if (v6)
        {
        }

        if (v77 < v76)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v75 - 2 >= *(v9 + 2))
        {
          goto LABEL_129;
        }

        v78 = &v9[16 * v75];
        *v78 = v76;
        *(v78 + 1) = v77;
        v91 = v9;
        result = specialized Array.remove(at:)(v75 - 1);
        v9 = v91;
        v75 = *(v91 + 2);
        if (v75 <= 1)
        {
        }
      }

      goto LABEL_139;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      ++v8;
    }

    else
    {
      v12 = *a3;
      memcpy(__dst, (*a3 + 296 * v11), sizeof(__dst));
      memcpy(v90, (v12 + 296 * v10), 0x128uLL);
      outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dst, __src);
      outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v90, __src);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v82 = v10;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v90);
      result = outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(__dst);
      v13 = __dst[36];
      v14 = v90[36];
      v15 = (v82 + 2);
      if (v82 + 2 >= v7)
      {
        v8 = v82 + 2;
        if (__dst[36] >= v90[36])
        {
          goto LABEL_29;
        }
      }

      else
      {
        v16 = v12 + 296 * v82 + 296;
        while (1)
        {
          v8 = v15;
          memcpy(v87, (v16 + 296), sizeof(v87));
          memcpy(__src, v16, sizeof(__src));
          outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v87, v86);
          outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__src, v86);
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(__src);
          result = outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v87);
          if (v13 < v14 == v87[36] >= __src[36])
          {
            break;
          }

          v15 = (v8 + 1);
          v16 += 296;
          if (v7 == v8 + 1)
          {
            v11 = v8;
            v8 = v7;
            if (v13 < v14)
            {
              goto LABEL_21;
            }

            goto LABEL_29;
          }
        }

        v11 = v8 - 1;
        if (v13 >= v14)
        {
          goto LABEL_29;
        }
      }

LABEL_21:
      v10 = v82;
      if (v8 < v82)
      {
        goto LABEL_132;
      }

      if (v82 <= v11)
      {
        v17 = 296 * v8 - 296;
        v18 = 296 * v82;
        v19 = v82;
        v20 = v8;
        do
        {
          if (v19 != --v20)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_138;
            }

            memcpy(__src, (v21 + v18), sizeof(__src));
            memmove((v21 + v18), (v21 + v17), 0x128uLL);
            result = memcpy((v21 + v17), __src, 0x128uLL);
          }

          ++v19;
          v17 -= 296;
          v18 += 296;
        }

        while (v19 < v20);
LABEL_29:
        v10 = v82;
      }
    }

    v22 = a3[1];
    if (v8 < v22)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_131;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v8 < v10)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v30 = *(v9 + 2);
    v29 = *(v9 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v31;
    v32 = &v9[16 * v30];
    *(v32 + 4) = v10;
    *(v32 + 5) = v8;
    v33 = *v81;
    if (!*v81)
    {
      goto LABEL_140;
    }

    if (v30)
    {
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v9 + 4);
          v36 = *(v9 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_72:
          if (v38)
          {
            goto LABEL_119;
          }

          v51 = &v9[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_122;
          }

          v57 = &v9[16 * v34 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_126;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v61 = &v9[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_86:
        if (v56)
        {
          goto LABEL_121;
        }

        v64 = &v9[16 * v34];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_124;
        }

        if (v67 < v55)
        {
          goto LABEL_3;
        }

LABEL_93:
        v72 = v34 - 1;
        if (v34 - 1 >= v31)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v73 = *&v9[16 * v72 + 32];
        v10 = *&v9[16 * v34 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 296 * v73), (*a3 + 296 * *&v9[16 * v34 + 32]), (*a3 + 296 * v10), v33, a5);
        if (v6)
        {
        }

        if (v10 < v73)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v72 >= *(v9 + 2))
        {
          goto LABEL_116;
        }

        v74 = &v9[16 * v72];
        *(v74 + 4) = v73;
        *(v74 + 5) = v10;
        v91 = v9;
        result = specialized Array.remove(at:)(v34);
        v9 = v91;
        v31 = *(v91 + 2);
        if (v31 <= 1)
        {
          goto LABEL_3;
        }
      }

      v39 = &v9[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_117;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_118;
      }

      v46 = &v9[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_120;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_123;
      }

      if (v50 >= v42)
      {
        v68 = &v9[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_127;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_103;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_133;
  }

  v79 = v6;
  if (v10 + a4 >= v22)
  {
    v6 = a3[1];
  }

  else
  {
    v6 = v10 + a4;
  }

  if (v6 < v10)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v8 == v6)
  {
LABEL_51:
    v6 = v79;
    goto LABEL_52;
  }

  v23 = *a3;
  v24 = v10;
  v25 = *a3 + 296 * v8 - 296;
  v83 = v24;
  v26 = &v24[-v8 + 1];
LABEL_41:
  v27 = v26;
  for (i = v25; ; i -= 296)
  {
    memcpy(__dst, (i + 296), sizeof(__dst));
    memcpy(v90, i, 0x128uLL);
    outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dst, __src);
    outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v90, __src);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v90);
    result = outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(__dst);
    if (__dst[36] >= v90[36])
    {
LABEL_40:
      ++v8;
      v25 += 296;
      --v26;
      if (v8 != v6)
      {
        goto LABEL_41;
      }

      v8 = v6;
      v10 = v83;
      goto LABEL_51;
    }

    if (!v23)
    {
      break;
    }

    memcpy(__src, (i + 296), sizeof(__src));
    memcpy((i + 296), i, 0x128uLL);
    memcpy(i, __src, 0x128uLL);
    if (!v27)
    {
      goto LABEL_40;
    }

    ++v27;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v117 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_101:
    v9 = *v117;
    if (!*v117)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_133:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v146 = v7;
    v112 = *(v7 + 2);
    if (v112 >= 2)
    {
      while (*a3)
      {
        v113 = *&v7[16 * v112];
        v114 = *&v7[16 * v112 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 112 * v113), (*a3 + 112 * *&v7[16 * v112 + 16]), (*a3 + 112 * v114), v9);
        if (v4)
        {
        }

        if (v114 < v113)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v112 - 2 >= *(v7 + 2))
        {
          goto LABEL_127;
        }

        v115 = &v7[16 * v112];
        *v115 = v113;
        *(v115 + 1) = v114;
        v146 = v7;
        result = specialized Array.remove(at:)(v112 - 1);
        v7 = v146;
        v112 = *(v146 + 2);
        if (v112 <= 1)
        {
        }
      }

      goto LABEL_137;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      ++v6;
      goto LABEL_30;
    }

    v10 = *a3;
    v11 = (*a3 + 112 * v9);
    v12 = *v11;
    v13 = v11[2];
    v133 = v11[1];
    v134 = v13;
    v132 = v12;
    v14 = v11[3];
    v15 = v11[4];
    v16 = v11[6];
    v137 = v11[5];
    v138 = v16;
    v135 = v14;
    v136 = v15;
    v17 = (v10 + 112 * v8);
    v18 = v17[6];
    v20 = v17[3];
    v19 = v17[4];
    v144 = v17[5];
    v145 = v18;
    v142 = v20;
    v143 = v19;
    v21 = *v17;
    v22 = v17[2];
    v140 = v17[1];
    v141 = v22;
    v139 = v21;
    outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v132, &v125);
    outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v139, &v125);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v118 = v8;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v139);
    result = outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v132);
    v23 = *(&v138 + 1);
    v24 = *(&v145 + 1);
    v25 = v118 + 2;
    if (v118 + 2 < v5)
    {
      v26 = (v10 + 112 * v118 + 224);
      while (1)
      {
        v6 = v25;
        v27 = *v26;
        v28 = v26[2];
        v123[1] = v26[1];
        v123[2] = v28;
        v123[0] = v27;
        v29 = v26[3];
        v30 = v26[4];
        v31 = v26[6];
        v123[5] = v26[5];
        v124 = v31;
        v123[3] = v29;
        v123[4] = v30;
        v32 = *(v26 - 1);
        v34 = *(v26 - 4);
        v33 = *(v26 - 3);
        v130 = *(v26 - 2);
        v131 = v32;
        v128 = v34;
        v129 = v33;
        v35 = *(v26 - 7);
        v36 = *(v26 - 5);
        v126 = *(v26 - 6);
        v127 = v36;
        v125 = v35;
        outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(v123, v122);
        outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v125, v122);
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v125);
        result = outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(v123);
        if (v23 < v24 == *(&v124 + 1) >= *(&v131 + 1))
        {
          break;
        }

        v25 = v6 + 1;
        v26 += 7;
        if (v5 == v6 + 1)
        {
          v9 = v6;
          v6 = v5;
          if (v23 < v24)
          {
            goto LABEL_21;
          }

          goto LABEL_29;
        }
      }

      v9 = v6 - 1;
      if (v23 >= v24)
      {
        goto LABEL_29;
      }

LABEL_21:
      v8 = v118;
      if (v6 < v118)
      {
        goto LABEL_130;
      }

      if (v118 > v9)
      {
        goto LABEL_30;
      }

      v9 = 112 * v6 - 112;
      v37 = 112 * v118;
      v38 = v118;
      v39 = v6;
      do
      {
        if (v38 != --v39)
        {
          v41 = *a3;
          if (!*a3)
          {
            goto LABEL_136;
          }

          v40 = (v41 + v9);
          v128 = *(v41 + v37 + 48);
          v129 = *(v41 + v37 + 64);
          v130 = *(v41 + v37 + 80);
          v131 = *(v41 + v37 + 96);
          v125 = *(v41 + v37);
          v126 = *(v41 + v37 + 16);
          v127 = *(v41 + v37 + 32);
          result = memmove((v41 + v37), (v41 + v9), 0x70uLL);
          v40[3] = v128;
          v40[4] = v129;
          v40[5] = v130;
          v40[6] = v131;
          *v40 = v125;
          v40[1] = v126;
          v40[2] = v127;
        }

        ++v38;
        v9 -= 112;
        v37 += 112;
      }

      while (v38 < v39);
      goto LABEL_29;
    }

    v6 = v118 + 2;
    if (*(&v138 + 1) < *(&v145 + 1))
    {
      goto LABEL_21;
    }

LABEL_29:
    v8 = v118;
LABEL_30:
    v42 = a3[1];
    if (v6 < v42)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_129;
      }

      if (v6 - v8 < a4)
      {
        v43 = v8 + a4;
        if (__OFADD__(v8, a4))
        {
          goto LABEL_131;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v8)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v6 != v43)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v6 < v8)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v9 = *(v7 + 2);
    v67 = *(v7 + 3);
    v68 = v9 + 1;
    if (v9 >= v67 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v9 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v68;
    v69 = &v7[16 * v9];
    *(v69 + 4) = v8;
    *(v69 + 5) = v6;
    v70 = *v117;
    if (!*v117)
    {
      goto LABEL_138;
    }

    if (v9)
    {
      while (1)
      {
        v71 = v68 - 1;
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v72 = *(v7 + 4);
          v73 = *(v7 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_70:
          if (v75)
          {
            goto LABEL_117;
          }

          v88 = &v7[16 * v68];
          v90 = *v88;
          v89 = *(v88 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_120;
          }

          v94 = &v7[16 * v71 + 32];
          v96 = *v94;
          v95 = *(v94 + 1);
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_124;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              v71 = v68 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v98 = &v7[16 * v68];
        v100 = *v98;
        v99 = *(v98 + 1);
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_84:
        if (v93)
        {
          goto LABEL_119;
        }

        v101 = &v7[16 * v71];
        v103 = *(v101 + 4);
        v102 = *(v101 + 5);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_122;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_91:
        v9 = v71 - 1;
        if (v71 - 1 >= v68)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v109 = *&v7[16 * v9 + 32];
        v110 = *&v7[16 * v71 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 112 * v109), (*a3 + 112 * *&v7[16 * v71 + 32]), (*a3 + 112 * v110), v70);
        if (v4)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v9 >= *(v7 + 2))
        {
          goto LABEL_114;
        }

        v111 = &v7[16 * v9];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v146 = v7;
        result = specialized Array.remove(at:)(v71);
        v7 = v146;
        v68 = *(v146 + 2);
        if (v68 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = &v7[16 * v68 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_115;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_116;
      }

      v83 = &v7[16 * v68];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_118;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_121;
      }

      if (v87 >= v79)
      {
        v105 = &v7[16 * v71 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_125;
        }

        if (v74 < v108)
        {
          v71 = v68 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_101;
    }
  }

  v44 = *a3;
  v45 = *a3 + 112 * v6;
  v119 = v8;
  v120 = v43;
  v9 = v8 - v6 + 1;
LABEL_40:
  v46 = v9;
  for (i = v45; ; i -= 7)
  {
    v48 = *i;
    v49 = i[2];
    v133 = i[1];
    v134 = v49;
    v132 = v48;
    v50 = i[3];
    v51 = i[4];
    v52 = i[6];
    v137 = i[5];
    v138 = v52;
    v135 = v50;
    v136 = v51;
    v53 = *(i - 1);
    v55 = *(i - 4);
    v54 = *(i - 3);
    v144 = *(i - 2);
    v145 = v53;
    v142 = v55;
    v143 = v54;
    v56 = *(i - 7);
    v57 = *(i - 5);
    v140 = *(i - 6);
    v141 = v57;
    v139 = v56;
    outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v132, &v125);
    outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v139, &v125);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v139);
    result = outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v132);
    if (*(&v138 + 1) >= *(&v145 + 1))
    {
LABEL_39:
      ++v6;
      v45 += 112;
      --v9;
      if (v6 != v120)
      {
        goto LABEL_40;
      }

      v6 = v120;
      v8 = v119;
      goto LABEL_50;
    }

    if (!v44)
    {
      break;
    }

    v58 = i - 7;
    v128 = i[3];
    v129 = i[4];
    v130 = i[5];
    v131 = i[6];
    v125 = *i;
    v126 = i[1];
    v127 = i[2];
    v59 = *(i - 6);
    *i = *(i - 7);
    i[1] = v59;
    v60 = *(i - 1);
    i[5] = *(i - 2);
    i[6] = v60;
    v61 = *(i - 3);
    i[3] = *(i - 4);
    i[4] = v61;
    i[2] = *(i - 5);
    v62 = v125;
    v63 = v127;
    v58[1] = v126;
    v58[2] = v63;
    *v58 = v62;
    v64 = v128;
    v65 = v129;
    v66 = v131;
    v58[5] = v130;
    v58[6] = v66;
    v58[3] = v64;
    v58[4] = v65;
    if (!v46)
    {
      goto LABEL_39;
    }

    ++v46;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, char *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = (__dst - __src) / 296;
  v11 = a3 - __dst;
  v12 = (a3 - __dst) / 296;
  if (v10 >= v12)
  {
    if (a4 != __dst || &__dst[296 * v12] <= a4)
    {
      memmove(a4, __dst, 296 * v12);
    }

    v13 = &v5[296 * v12];
    if (v11 >= 296 && v7 > v8)
    {
LABEL_25:
      v16 = v7 - 296;
      v6 -= 296;
      v17 = v13;
      do
      {
        v13 = v17;
        v17 -= 296;
        memcpy(__dsta, v17, sizeof(__dsta));
        memcpy(v22, v7 - 296, 0x128uLL);
        outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dsta, v20);
        outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v22, v20);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v22);
        outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(__dsta);
        if (__dsta[36] < v22[36])
        {
          if (v6 + 296 < v7 || v6 >= v7 || v6 + 296 != v7)
          {
            memmove(v6, v7 - 296, 0x128uLL);
          }

          if (v13 <= v5 || (v7 -= 296, v16 <= v8))
          {
            v7 = v16;
            goto LABEL_46;
          }

          goto LABEL_25;
        }

        if ((v6 + 296) < v13 || v6 >= v13 || v6 + 296 != v13)
        {
          memmove(v6, v17, 0x128uLL);
        }

        v6 -= 296;
      }

      while (v17 > v5);
      v13 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[296 * v10] <= a4)
    {
      memmove(a4, __src, 296 * v10);
    }

    v13 = &v5[296 * v10];
    if (v9 >= 296 && v7 < v6)
    {
      while (1)
      {
        memcpy(__dsta, v7, sizeof(__dsta));
        memcpy(v22, v5, 0x128uLL);
        outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dsta, v20);
        outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v22, v20);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v22);
        outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(__dsta);
        if (__dsta[36] >= v22[36])
        {
          break;
        }

        v14 = v7;
        v15 = v8 == v7;
        v7 += 296;
        if (!v15)
        {
          goto LABEL_16;
        }

LABEL_17:
        v8 += 296;
        if (v5 >= v13 || v7 >= v6)
        {
          goto LABEL_44;
        }
      }

      v14 = v5;
      v15 = v8 == v5;
      v5 += 296;
      if (v15)
      {
        goto LABEL_17;
      }

LABEL_16:
      memmove(v8, v14, 0x128uLL);
      goto LABEL_17;
    }

LABEL_44:
    v7 = v8;
  }

LABEL_46:
  v18 = (v13 - v5) / 296;
  if (v7 != v5 || v7 >= &v5[296 * v18])
  {
    memmove(v7, v5, 296 * v18);
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = (__dst - __src) / 112;
  v11 = a3 - __dst;
  v12 = (a3 - __dst) / 112;
  if (v10 >= v12)
  {
    if (a4 != __dst || &__dst[112 * v12] <= a4)
    {
      memmove(a4, __dst, 112 * v12);
    }

    v13 = &v5[112 * v12];
    if (v11 >= 112 && v7 > v8)
    {
      v53 = v4;
      do
      {
        v26 = v7 - 112;
        v6 -= 112;
        v27 = v13;
        while (1)
        {
          v13 = v27;
          v28 = *(v27 - 112);
          v29 = *(v27 - 80);
          v40 = *(v27 - 96);
          v41 = v29;
          v39 = v28;
          v30 = *(v27 - 64);
          v31 = *(v27 - 48);
          v32 = *(v27 - 16);
          v44 = *(v27 - 32);
          v45 = v32;
          v42 = v30;
          v43 = v31;
          v33 = *(v7 - 2);
          v50 = *(v7 - 3);
          v51 = v33;
          v52 = *(v7 - 1);
          v34 = *(v7 - 6);
          v46 = *v26;
          v47 = v34;
          v35 = *(v7 - 4);
          v48 = *(v7 - 5);
          v49 = v35;
          outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v39, v38);
          outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v46, v38);
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v46);
          outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v39);
          if (*(&v45 + 1) < *(&v52 + 1))
          {
            break;
          }

          v27 -= 112;
          if ((v6 + 112) < v13 || v6 >= v13 || v6 + 112 != v13)
          {
            memmove(v6, (v13 - 112), 0x70uLL);
          }

          v6 -= 112;
          if (v27 <= v5)
          {
            v13 -= 112;
            goto LABEL_49;
          }
        }

        if (v6 + 112 < v7 || v6 >= v7 || v6 + 112 != v7)
        {
          memmove(v6, v7 - 112, 0x70uLL);
        }

        if (v27 <= v5)
        {
          break;
        }

        v7 -= 112;
      }

      while (v26 > v8);
      v7 = v26;
    }
  }

  else
  {
    if (a4 != __src || &__src[112 * v10] <= a4)
    {
      memmove(a4, __src, 112 * v10);
    }

    v13 = &v5[112 * v10];
    if (v9 >= 112 && v7 < v6)
    {
      v53 = v4;
      while (1)
      {
        v14 = *v7;
        v15 = *(v7 + 2);
        v40 = *(v7 + 1);
        v41 = v15;
        v39 = v14;
        v16 = *(v7 + 3);
        v17 = *(v7 + 4);
        v18 = *(v7 + 6);
        v44 = *(v7 + 5);
        v45 = v18;
        v42 = v16;
        v43 = v17;
        v19 = *(v5 + 6);
        v21 = *(v5 + 3);
        v20 = *(v5 + 4);
        v51 = *(v5 + 5);
        v52 = v19;
        v49 = v21;
        v50 = v20;
        v22 = *v5;
        v23 = *(v5 + 2);
        v47 = *(v5 + 1);
        v48 = v23;
        v46 = v22;
        outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v39, v38);
        outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v46, v38);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v46);
        outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v39);
        if (*(&v45 + 1) >= *(&v52 + 1))
        {
          break;
        }

        v24 = v7;
        v25 = v8 == v7;
        v7 += 112;
        if (!v25)
        {
          goto LABEL_17;
        }

LABEL_18:
        v8 += 112;
        if (v5 >= v13 || v7 >= v6)
        {
          v7 = v8;
          goto LABEL_49;
        }
      }

      v24 = v5;
      v25 = v8 == v5;
      v5 += 112;
      if (v25)
      {
        goto LABEL_18;
      }

LABEL_17:
      memmove(v8, v24, 0x70uLL);
      goto LABEL_18;
    }

    v7 = v8;
  }

LABEL_49:
  v36 = (v13 - v5) / 112;
  if (v7 != v5 || v7 >= &v5[112 * v36])
  {
    memmove(v7, v5, 112 * v36);
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v8 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2, a3);
  if (v3)
  {

    return v4;
  }

  v46 = a3;
  if (v10)
  {
    v4 = *(v8 + 16);
LABEL_7:

    return v4;
  }

  v4 = result;
  v11 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v13 = (v8 + 16);
    v12 = *(v8 + 16);
    if (v11 == v12)
    {
      goto LABEL_7;
    }

    v32 = a1;
    v14 = 32 * result + 89;
    while (v11 < v12)
    {
      v15 = v8 + v14;
      v16 = *(v8 + v14 - 17);
      v17 = *(v8 + v14 - 9);
      v18 = *(v8 + v14);
      v19 = *(v8 + v14 - 1);
      v41 = *(v8 + v14 - 25);
      v42 = v16;
      v43 = v17;
      v44 = v19;
      v45 = v18;
      outlined copy of MLS.AllMember(v41, v16);
      v20 = v6;
      v21 = closure #6 in MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(&v41, v6, v46);
      result = outlined consume of MLS.AllMember(v41, v42);
      if (!v21)
      {
        if (v11 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          if (v4 >= *v13)
          {
            goto LABEL_25;
          }

          if (v11 >= *v13)
          {
            goto LABEL_26;
          }

          v22 = v8 + 32 + 32 * v4;
          v36 = *(v22 + 25);
          v37 = *(v22 + 24);
          v23 = *(v15 - 25);
          v24 = *(v15 - 17);
          v39 = 32 * v4;
          v40 = *(v15 - 9);
          v25 = *(v15 - 1);
          v38 = *(v8 + v14);
          v34 = *(v22 + 8);
          v35 = *v22;
          v33 = *(v22 + 16);
          outlined copy of MLS.AllMember(*v22, v34);
          outlined copy of MLS.AllMember(v23, v24);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
            v8 = result;
          }

          if (v4 >= *(v8 + 16))
          {
            goto LABEL_27;
          }

          v26 = v8 + v39;
          v27 = *(v8 + v39 + 32);
          v28 = *(v8 + v39 + 40);
          *(v26 + 32) = v23;
          *(v26 + 40) = v24;
          *(v26 + 48) = v40;
          *(v26 + 56) = v25;
          *(v26 + 57) = v38;
          result = outlined consume of MLS.AllMember(v27, v28);
          if (v11 >= *(v8 + 16))
          {
            goto LABEL_28;
          }

          v29 = (v8 + v14);
          v30 = *(v8 + v14 - 25);
          v31 = *(v8 + v14 - 17);
          *(v29 - 25) = v35;
          *(v29 - 17) = v34;
          *(v29 - 9) = v33;
          *(v29 - 1) = v37;
          *v29 = v36;
          result = outlined consume of MLS.AllMember(v30, v31);
          *v32 = v8;
        }

        ++v4;
      }

      v6 = v20;
      ++v11;
      v13 = (v8 + 16);
      v12 = *(v8 + 16);
      v14 += 32;
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v7 = a2;
  v9 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2, a3, a4);
  if (v4)
  {
  }

  if (v11)
  {
    v12 = *(v9 + 16);

    return v12;
  }

  v13 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v15 = (v9 + 16);
    v14 = *(v9 + 16);
    v52 = result;
    if (v13 == v14)
    {
LABEL_7:

      return v52;
    }

    v37 = a1;
    v46 = a3;
    v16 = 32 * result + 89;
    while (v13 < v14)
    {
      v17 = v9 + v16;
      v18 = *(v9 + v16 - 17);
      v19 = *(v9 + v16 - 9);
      v20 = *(v9 + v16);
      v21 = *(v9 + v16 - 1);
      v47 = *(v9 + v16 - 25);
      v48 = v18;
      v49 = v19;
      v50 = v21;
      v51 = v20;
      outlined copy of MLS.AllMember(v47, v18);
      v22 = v7;
      v23 = v7;
      v24 = v5;
      v25 = closure #5 in MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(&v47, v23, v46, v5);
      result = outlined consume of MLS.AllMember(v47, v48);
      if (!v25)
      {
        v26 = v52;
        if (v13 != v52)
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v52 >= *v15)
          {
            goto LABEL_24;
          }

          if (v13 >= *v15)
          {
            goto LABEL_25;
          }

          v27 = v9 + 32 + 32 * v52;
          v41 = *(v27 + 25);
          v42 = *(v27 + 24);
          v28 = *(v17 - 25);
          v29 = *(v17 - 17);
          v44 = 32 * v52;
          v45 = *(v17 - 9);
          v30 = *(v17 - 1);
          v43 = *(v9 + v16);
          v39 = *(v27 + 8);
          v40 = *v27;
          v38 = *(v27 + 16);
          outlined copy of MLS.AllMember(*v27, v39);
          outlined copy of MLS.AllMember(v28, v29);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
            v9 = result;
          }

          if (v52 >= *(v9 + 16))
          {
            goto LABEL_26;
          }

          v31 = v9 + v44;
          v32 = *(v9 + v44 + 32);
          v33 = *(v9 + v44 + 40);
          *(v31 + 32) = v28;
          *(v31 + 40) = v29;
          *(v31 + 48) = v45;
          *(v31 + 56) = v30;
          *(v31 + 57) = v43;
          result = outlined consume of MLS.AllMember(v32, v33);
          if (v13 >= *(v9 + 16))
          {
            goto LABEL_27;
          }

          v34 = (v9 + v16);
          v35 = *(v9 + v16 - 25);
          v36 = *(v9 + v16 - 17);
          *(v34 - 25) = v40;
          *(v34 - 17) = v39;
          *(v34 - 9) = v38;
          *(v34 - 1) = v42;
          *v34 = v41;
          result = outlined consume of MLS.AllMember(v35, v36);
          *v37 = v9;
          v26 = v52;
        }

        v52 = v26 + 1;
      }

      v5 = v24;
      ++v13;
      v15 = (v9 + 16);
      v14 = *(v9 + 16);
      v16 += 32;
      v7 = v22;
      if (v13 == v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_15i16Messaging3MLSO17lmn3C20opq17IDV_10Foundation4T4VTG5ARxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAnQIsgnndzo_Tf1nc_n04_s15i16Messaging3MLSO17lmn56C5write18swiftMLSGroupWrite16clientIdentifieryAC0J9Groupt33V_AC012UniqueClientL0VtYaKFSbAE20opQ38IDV3key_10Foundation0N0V5valuet_tXEfU_AJ010WriteGroupT0VTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    outlined init with copy of MLS.WriteGroupData(a4, v9);
    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);

    outlined destroy of MLS.WriteGroupData(a4);
    outlined destroy of MLS.WriteGroupData(a4);
    return v8;
  }

  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v8 = a2;
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v38 = a2;
  v39 = v4;
  v40 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v41 = (v10 - 1) & v10;
    v42 = v5;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = (*(v4 + 48) + 48 * v16);
    v18 = *v17;
    v19 = v17[1];
    v21 = v17[2];
    v20 = v17[3];
    v23 = v17[4];
    v22 = v17[5];
    v24 = (*(v4 + 56) + 16 * v16);
    v26 = *v24;
    v25 = v24[1];
    Hasher.init(_seed:)();

    outlined copy of Data._Representation(v21, v20);
    outlined copy of Data._Representation(v26, v25);
    String.hash(into:)();
    String.hash(into:)();
    MEMORY[0x266754DE0](0);
    Data.hash(into:)();
    MEMORY[0x266754E10](v23);
    MEMORY[0x266754E10](v22);
    result = Hasher._finalize()();
    v9 = v40;
    v27 = -1 << *(v40 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v12 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v40 + 48) + 48 * v30);
    *v35 = v18;
    v35[1] = v19;
    v35[2] = v21;
    v35[3] = v20;
    v35[4] = v23;
    v35[5] = v22;
    v36 = (*(v40 + 56) + 16 * v30);
    *v36 = v26;
    v36[1] = v25;
    ++*(v40 + 16);
    v5 = v42 - 1;
    if (__OFSUB__(v42, 1))
    {
      goto LABEL_32;
    }

    v8 = v38;
    v4 = v39;
    v10 = v41;
    if (v42 == 1)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v41 = (v15 - 1) & v15;
      v42 = v5;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x2667538A0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static MLS.InMemoryPersister.GroupStoreID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t specialized static MLS.InMemoryPersister.GroupEventStoreID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL specialized static MLS.InMemoryPersister.SwiftMLSEpochStoreID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v10 & 1) != 0))
  {
    v12 = specialized static Data.== infix(_:_:)(v2, v3, v6, v7) && v4 == v9;
    return v5 == v8 && v12;
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for MLS.EventQueue.Event);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for MLS.PersistenceQueue.QueueItem);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t specialized MLS.OutgoingEventType.storageIdentifier.getter()
{
  v1 = *(v0 + 144);
  v8[8] = *(v0 + 128);
  v8[9] = v1;
  v8[10] = *(v0 + 160);
  v9 = *(v0 + 176);
  v2 = *(v0 + 80);
  v8[4] = *(v0 + 64);
  v8[5] = v2;
  v3 = *(v0 + 112);
  v8[6] = *(v0 + 96);
  v8[7] = v3;
  v4 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v4;
  v5 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v5;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v8);
  destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
  destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
  return *(v6 + 16);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  v14 = 32 * v12;
  v15 = v13 + 32 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  for (i = (a1 + 57); ; i += 32)
  {
    v9 = *(i - 17);
    v10 = *(i - 9);
    v11 = *i;
    v12 = *(i - 1);
    v15 = *(i - 25);
    v16 = v9;
    v17 = v10;
    v18 = v12;
    v19 = v11;
    outlined copy of MLS.AllMember(v15, v9);
    v13 = closure #6 in MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(&v15, a2, a3);
    outlined consume of MLS.AllMember(v15, v16);
    if (v3 || v13)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = 0;
  for (i = (a1 + 57); ; i += 32)
  {
    v11 = *(i - 17);
    v12 = *(i - 9);
    v13 = *i;
    v14 = *(i - 1);
    v17 = *(i - 25);
    v18 = v11;
    v19 = v12;
    v20 = v14;
    v21 = v13;
    outlined copy of MLS.AllMember(v17, v11);
    v15 = closure #5 in MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(&v17, a2, a3, a4);
    outlined consume of MLS.AllMember(v17, v18);
    if (v4 || v15)
    {
      break;
    }

    if (v5 == ++v9)
    {
      return 0;
    }
  }

  return v9;
}

Swift::Int specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a3;
  v57 = 0;
  v7 = 0;
  v64[2] = *MEMORY[0x277D85DE8];
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v11)
        {
          v13 = __clz(__rbit64(v11));
          v62 = (v11 - 1) & v11;
          goto LABEL_11;
        }

        v14 = v7;
        do
        {
          v7 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          if (v7 >= v12)
          {
            return specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v57, v6);
          }

          v15 = *(v8 + 8 * v7);
          ++v14;
        }

        while (!v15);
        v13 = __clz(__rbit64(v15));
        v62 = (v15 - 1) & v15;
LABEL_11:
        v16 = v13 | (v7 << 6);
        v17 = *(v6 + 48) + 48 * v16;
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        v58 = v16;
        v20 = (*(v6 + 56) + 16 * v16);
        v22 = *v20;
        v21 = v20[1];

        outlined copy of Data._Representation(v18, v19);
        v60 = v22;
        v61 = v21;
        outlined copy of Data._Representation(v22, v21);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v23 = *a4;
        v24 = a4[1];
        v25 = v19 >> 62;
        v26 = v24 >> 62;
        if (v19 >> 62 == 3)
        {
          if (v18)
          {
            v27 = 0;
          }

          else
          {
            v27 = v19 == 0xC000000000000000;
          }

          v28 = 0;
          v29 = v27 && v24 >> 62 == 3;
          if (v29 && !v23 && v24 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(v60, v61);

            v30 = 0;
            v31 = 0xC000000000000000;
            goto LABEL_53;
          }

LABEL_37:
          if (v26 <= 1)
          {
LABEL_38:
            if (!v26)
            {
              v35 = BYTE6(v24);
              goto LABEL_45;
            }

            LODWORD(v35) = HIDWORD(v23) - v23;
            if (!__OFSUB__(HIDWORD(v23), v23))
            {
              v35 = v35;
              goto LABEL_45;
            }

LABEL_81:
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
LABEL_88:
            __break(1u);
          }
        }

        else if (v25 > 1)
        {
          if (v25 == 2)
          {
            v33 = *(v18 + 16);
            v32 = *(v18 + 24);
            v34 = __OFSUB__(v32, v33);
            v28 = v32 - v33;
            if (!v34)
            {
              goto LABEL_37;
            }

            goto LABEL_82;
          }

          v28 = 0;
          if (v26 <= 1)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v25)
          {
            LODWORD(v28) = HIDWORD(v18) - v18;
            if (!__OFSUB__(HIDWORD(v18), v18))
            {
              v28 = v28;
              goto LABEL_37;
            }

            goto LABEL_83;
          }

          v28 = BYTE6(v19);
          if (v26 <= 1)
          {
            goto LABEL_38;
          }
        }

        if (v26 == 2)
        {
          break;
        }

        if (!v28)
        {
          goto LABEL_52;
        }

LABEL_74:
        outlined consume of Data._Representation(v60, v61);

        outlined consume of Data._Representation(v18, v19);
        v11 = v62;
LABEL_75:
        *(a1 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
        v34 = __OFADD__(v57++, 1);
        if (v34)
        {
          goto LABEL_88;
        }
      }

      v37 = *(v23 + 16);
      v36 = *(v23 + 24);
      v34 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v34)
      {
        goto LABEL_80;
      }

LABEL_45:
      if (v28 != v35)
      {
        goto LABEL_74;
      }

      if (v28 >= 1)
      {
        break;
      }

LABEL_52:
      outlined consume of Data._Representation(v60, v61);

      v30 = v18;
      v31 = v19;
LABEL_53:
      outlined consume of Data._Representation(v30, v31);
      v11 = v62;
    }

    if (v25 <= 1)
    {
      break;
    }

    if (v25 == 2)
    {
      v52 = *(v18 + 16);
      v53 = v5;
      v50 = *(v18 + 24);
      outlined copy of Data._Representation(v23, v24);
      v39 = __DataStorage._bytes.getter();
      v49 = v23;
      if (v39)
      {
        v40 = v39;
        v41 = __DataStorage._offset.getter();
        v42 = v52;
        if (__OFSUB__(v52, v41))
        {
          goto LABEL_86;
        }

        v43 = v52 - v41 + v40;
      }

      else
      {
        v43 = 0;
        v42 = v52;
      }

      if (__OFSUB__(v50, v42))
      {
        goto LABEL_85;
      }

      MEMORY[0x2667538A0]();
      v47 = v43;
      v23 = v49;
LABEL_69:
      closure #1 in static Data.== infix(_:_:)(v47, v23, v24, v64);
      if (v53)
      {
        goto LABEL_89;
      }

      v5 = 0;
      outlined consume of Data._Representation(v23, v24);
      outlined consume of Data._Representation(v60, v61);

      outlined consume of Data._Representation(v18, v19);
      v38 = v64[0];
LABEL_71:
      v6 = a3;
      goto LABEL_72;
    }

    memset(v64, 0, 14);
    outlined copy of Data._Representation(v23, v24);
    closure #1 in static Data.== infix(_:_:)(v64, v23, v24, &v63);
    if (v5)
    {
      goto LABEL_89;
    }

    v5 = 0;
    outlined consume of Data._Representation(v23, v24);
    outlined consume of Data._Representation(v60, v61);

    outlined consume of Data._Representation(v18, v19);
    v38 = v63;
LABEL_72:
    v11 = v62;
    if ((v38 & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  if (v25)
  {
    v53 = v5;
    if (v18 >> 32 < v18)
    {
      goto LABEL_84;
    }

    outlined copy of Data._Representation(v23, v24);
    v44 = __DataStorage._bytes.getter();
    if (v44)
    {
      v51 = v44;
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v18, v45))
      {
        goto LABEL_87;
      }

      v46 = v18 - v45 + v51;
    }

    else
    {
      v46 = 0;
    }

    MEMORY[0x2667538A0]();
    v47 = v46;
    goto LABEL_69;
  }

  v64[0] = v18;
  LOWORD(v64[1]) = v19;
  BYTE2(v64[1]) = BYTE2(v19);
  BYTE3(v64[1]) = BYTE3(v19);
  BYTE4(v64[1]) = BYTE4(v19);
  BYTE5(v64[1]) = BYTE5(v19);
  outlined copy of Data._Representation(v23, v24);
  closure #1 in static Data.== infix(_:_:)(v64, v23, v24, &v63);
  if (!v5)
  {
    v5 = 0;
    outlined consume of Data._Representation(v23, v24);
    outlined consume of Data._Representation(v60, v61);

    outlined consume of Data._Representation(v18, v19);
    v38 = v63;
    goto LABEL_71;
  }

LABEL_89:
  result = outlined consume of Data._Representation(v23, v24);
  __break(1u);
  return result;
}

Swift::Int specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    outlined init with copy of MLS.WriteGroupData(a2, v12);
    outlined init with copy of MLS.WriteGroupData(a2, v12);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v10 = swift_slowAlloc();
      outlined init with copy of MLS.WriteGroupData(a2, v12);
      v9 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_15i16Messaging3MLSO17lmn3C20opq17IDV_10Foundation4T4VTG5ARxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAnQIsgnndzo_Tf1nc_n04_s15i16Messaging3MLSO17lmn56C5write18swiftMLSGroupWrite16clientIdentifieryAC0J9Groupt33V_AC012UniqueClientL0VtYaKFSbAE20opQ38IDV3key_10Foundation0N0V5valuet_tXEfU_AJ010WriteGroupT0VTf1nnc_n(v10, v6, a1, a2);
      MEMORY[0x266755550](v10, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of MLS.WriteGroupData(a2, v12);
    v8 = outlined init with copy of MLS.WriteGroupData(a2, v12);
  }

  MEMORY[0x28223BE20](v8);
  bzero(&v12[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0)], v7);
  outlined init with copy of MLS.WriteGroupData(a2, v12);
  v9 = specialized closure #1 in _NativeDictionary.filter(_:)(&v12[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0)], v6, a1, a2);
  outlined destroy of MLS.WriteGroupData(a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_8:
  outlined destroy of MLS.WriteGroupData(a2);
  outlined destroy of MLS.WriteGroupData(a2);
  return v9;
}

unint64_t specialized MLS.InMemoryPersister.State.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_10Foundation4DataVTt0g5Tf4g_n(v2);
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVTt0g5Tf4g_n(v2);
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_10Foundation4DataVTt0g5Tf4g_n(v2);
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_SayAE15PersistedMemberVGTt0g5Tf4g_n(v2);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_SayAE15PersistedMemberVGTt0g5Tf4g_n(v2);
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_SayAE15PersistedMemberVGTt0g5Tf4g_n(v2);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDV_SiTt0g5Tf4g_n(v2);
  UpdateVTt0g5Tf4g_n = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_AE21EventsSinceLastUpdateVTt0g5Tf4g_n(v2);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AG08IncomingJ5EntryVTt0g5Tf4g_n(v2);
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AG08OutgoingJ5EntryVTt0g5Tf4g_n(v2);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_AC4DataVTt0g5Tf4g_n(v2);
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV_10Foundation4DataVTt0g5Tf4g_n(v2);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV_10Foundation4DataVTt0g5Tf4g_n(v2);
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v14;
  a1[3] = v13;
  a1[4] = v12;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = UpdateVTt0g5Tf4g_n;
  a1[9] = 0;
  a1[10] = v7;
  a1[11] = v8;
  a1[12] = v9;
  a1[13] = v10;
  a1[14] = result;
  return result;
}

uint64_t outlined consume of MLS.InMemoryPersister.State?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_265078FA8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for closure #1 in MLS.InMemoryPersister.persisterQueue.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.InMemoryPersister.persisterQueue.getter(v0);
}

uint64_t partial apply for closure #2 in MLS.InMemoryPersister.persisterQueue.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.InMemoryPersister.persisterQueue.getter(v0);
}

uint64_t partial apply for closure #3 in MLS.InMemoryPersister.persisterQueue.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #3 in MLS.InMemoryPersister.persisterQueue.getter(v0);
}

unint64_t lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError()
{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError);
  }

  return result;
}

double _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = -1;
  return result;
}

uint64_t _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgWOg(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 0x10)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister()
{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister)
  {
    type metadata accessor for MLS.SwiftMLSPersister();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.InMemoryPersister.GroupStoreID and conformance MLS.InMemoryPersister.GroupStoreID()
{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupStoreID and conformance MLS.InMemoryPersister.GroupStoreID;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupStoreID and conformance MLS.InMemoryPersister.GroupStoreID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupStoreID and conformance MLS.InMemoryPersister.GroupStoreID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.InMemoryPersister.GroupMessageStoreID and conformance MLS.InMemoryPersister.GroupMessageStoreID()
{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupMessageStoreID and conformance MLS.InMemoryPersister.GroupMessageStoreID;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupMessageStoreID and conformance MLS.InMemoryPersister.GroupMessageStoreID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupMessageStoreID and conformance MLS.InMemoryPersister.GroupMessageStoreID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.InMemoryPersister.GroupEventStoreID and conformance MLS.InMemoryPersister.GroupEventStoreID()
{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupEventStoreID and conformance MLS.InMemoryPersister.GroupEventStoreID;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupEventStoreID and conformance MLS.InMemoryPersister.GroupEventStoreID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupEventStoreID and conformance MLS.InMemoryPersister.GroupEventStoreID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.InMemoryPersister.SwiftMLSGroupStoreID and conformance MLS.InMemoryPersister.SwiftMLSGroupStoreID()
{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersister.SwiftMLSGroupStoreID and conformance MLS.InMemoryPersister.SwiftMLSGroupStoreID;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersister.SwiftMLSGroupStoreID and conformance MLS.InMemoryPersister.SwiftMLSGroupStoreID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersister.SwiftMLSGroupStoreID and conformance MLS.InMemoryPersister.SwiftMLSGroupStoreID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.InMemoryPersister.SwiftMLSEpochStoreID and conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID()
{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersister.SwiftMLSEpochStoreID and conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersister.SwiftMLSEpochStoreID and conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersister.SwiftMLSEpochStoreID and conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID);
  }

  return result;
}

uint64_t sub_265079734@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_265079780(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 120);

  return v2(v3);
}

double sub_2650797D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 136))(v7);
  v3 = v11;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *(a2 + 96) = v12;
  *(a2 + 112) = v13;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_26507985C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 96);
  v10[5] = *(a1 + 80);
  v10[6] = v3;
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v10[1] = v4;
  v10[2] = v5;
  v11 = *(a1 + 112);
  v10[3] = v6;
  v10[4] = v2;
  v7 = *(**a2 + 144);
  outlined init with copy of MLS.InMemoryPersister.State(v10, v9);
  return v7(v10);
}

double sub_2650798EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 160))(v7);
  v3 = v11;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *(a2 + 96) = v12;
  *(a2 + 112) = v13;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_265079974(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 96);
  v10[5] = *(a1 + 80);
  v10[6] = v3;
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v10[1] = v4;
  v10[2] = v5;
  v11 = *(a1 + 112);
  v10[3] = v6;
  v10[4] = v2;
  v7 = *(**a2 + 168);
  outlined init with copy of MLS.OutgoingEventState?(v10, v9, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  return v7(v10);
}

uint64_t sub_265079A14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_265079A60(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 192);

  return v2(v3);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.committedState.setter(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 112);
  v5 = *(*v1 + 144);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v7 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v7;
  v11 = v2;
  v12 = v3;
  v8 = *(a1 + 96);
  v13 = *(a1 + 80);
  v14 = v8;
  v15 = v4;
  return v5(v10);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.transactionState.setter(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(*v1 + 168);
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v6 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v6;
  v8[6] = *(a1 + 96);
  v9 = v2;
  return v3(v8);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.atomically<A>(with:do:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 216) + **(*v8 + 216));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 224) + **(*v4 + 224));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 232) + **(*v5 + 232));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 240) + **(*v4 + 240));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.deleteGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 248) + **(*v3 + 248));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 256) + **(*v3 + 256));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 264) + **(*v5 + 264));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 272) + **(*v3 + 272));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 280) + **(*v3 + 280));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of MLS.SwiftMLSPersister.readEpochData(groupID:epochID:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 288) + **(*v5 + 288));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 296) + **(*v3 + 296));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 304) + **(*v4 + 304));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 312) + **(*v4 + 312));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.delete(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 320) + **(*v4 + 320));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 328) + **(*v4 + 328));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 336) + **(*v4 + 336));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadClientIdentifiersWithEvents()()
{
  v4 = (*(*v0 + 344) + **(*v0 + 344));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v4();
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadEvents(clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 352) + **(*v2 + 352));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadRetriableEventStates(clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 360) + **(*v2 + 360));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(swiftMLSClientID:forIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 368) + **(*v2 + 368));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadSwiftMLSClientID(identifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 376) + **(*v2 + 376));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 384) + **(*v5 + 384));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = dispatch thunk of MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(retryCount:forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 392) + **(*v6 + 392));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.read(clientUUID:)(uint64_t a1)
{
  v6 = (*(*v1 + 400) + **(*v1 + 400));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 408) + **(*v3 + 408));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 416) + **(*v2 + 416));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 424) + **(*v2 + 424));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.write(swiftMLSGroupWrite:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 432) + **(*v2 + 432));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.getSwiftMLSPersister(forClientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 440) + **(*v2 + 440));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.InMemoryPersister.IncomingEventEntry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 112))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 96);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.InMemoryPersister.IncomingEventEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSg(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 0x10)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for MLS.InMemoryPersister.OutgoingEventEntry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 296))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 192);
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

uint64_t storeEnumTagSinglePayload for MLS.InMemoryPersister.OutgoingEventEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 0;
    }

    if (a2)
    {
      *(result + 192) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.InMemoryPersister.GroupMessageStoreID(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MLS.InMemoryPersister.GroupMessageStoreID(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.InMemoryPersister.State(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for MLS.InMemoryPersister.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVSgWOi0_(uint64_t a1)
{
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = 1;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  result = a1 + 200;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8SwiftMLS0E0O5GroupO6MemberVG_AH8IdentityO10CredentialOs5NeverOTg5026_s15SecureMessaging3MLSO25d120MLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0y7_AC9Allg12OG_SSAC0hmO0y45_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_0dC0ABO8h3O10I17OA_0K0O0S0VXEfU0_Tf1cn_nTm(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  v25 = type metadata accessor for MLS.Identity.SigningIdentity();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v23 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MLS.Identity.Credential();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20[0] = v2;
    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v27;
    v11 = *(type metadata accessor for MLS.Group.Member() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    if (one-time initialization token for shared != -1)
    {
      v19 = v11;
      swift_once();
      v11 = v19;
    }

    v26 = static MLSActor.shared;
    v13 = (v4 + 8);
    v21 = *(v11 + 72);
    v22 = v6 + 32;
    do
    {
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v14 = v23;
      MLS.Group.Member.identity.getter();
      MLS.Identity.SigningIdentity.credential.getter();
      (*v13)(v14, v25);
      v27 = v10;
      v15 = v8;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v10 = v27;
      }

      *(v10 + 16) = v17 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v15, v24);
      v12 += v21;
      --v9;
      v8 = v15;
    }

    while (v9);
  }

  return v10;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d129Messaging3MLSO25SwiftMLSClientCoordinatorC17addPendingMembers33_4A5F1255AF5325EF77C6CF0723488492LL10identifier05otherI0ySS_ShyAC9gh11OGtYaKFAC09I10S0VAKXEfU_Tf1cn_nTm(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v34 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v34;
  v6 = v5 + 56;
  result = _HashTable.startBucket.getter();
  v8 = result;
  v9 = 0;
  v26 = v5 + 64;
  v28 = v5 + 56;
  v29 = v5;
  v27 = v3;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_25;
    }

    v31 = v9;
    v32 = *(v5 + 36);
    v12 = *(v5 + 48) + 32 * v8;
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 24);
    v33 = *(v12 + 16);
    outlined copy of MLS.AllMember(*v12, v13);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    result = swift_task_isCurrentExecutor();
    if ((result & 1) == 0)
    {
      result = swift_task_reportUnexpectedExecutor();
    }

    v17 = *(v34 + 16);
    v16 = *(v34 + 24);
    if (v17 >= v16 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
    }

    *(v34 + 16) = v17 + 1;
    v18 = v34 + 32 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
    *(v18 + 48) = v33;
    *(v18 + 56) = v15;
    *(v18 + 57) = a3;
    v5 = v29;
    v10 = 1 << *(v29 + 32);
    if (v8 >= v10)
    {
      goto LABEL_26;
    }

    v6 = v28;
    v19 = *(v28 + 8 * v11);
    if ((v19 & (1 << v8)) == 0)
    {
      goto LABEL_27;
    }

    if (v32 != *(v29 + 36))
    {
      goto LABEL_28;
    }

    v20 = v19 & (-2 << (v8 & 0x3F));
    if (v20)
    {
      v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v11 << 6;
      v22 = v11 + 1;
      v23 = (v26 + 8 * v11);
      while (v22 < (v10 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v8, v32, 0);
          v10 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v8, v32, 0);
    }

LABEL_4:
    v9 = v31 + 1;
    v8 = v10;
    if (v31 + 1 == v27)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8SwiftMLS0E0O5GroupO12MemberUpdateVG_AH8IdentityO10CredentialOs5NeverOTg5026_s15SecureMessaging3MLSO25d120MLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0z7_AC9Allg12OG_SSAC0hmO0z45_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_0dC0ABO8i3O10j10OA_0K0O0S6H7VXEfU2_Tf1cn_n(uint64_t a1)
{
  v28 = type metadata accessor for MLS.Identity.SigningIdentity();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MLS.Group.Member();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MLS.Identity.Credential();
  v29 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v21 = v1;
    v31 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v31;
    v11 = *(type metadata accessor for MLS.Group.MemberUpdate() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    if (one-time initialization token for shared != -1)
    {
      v20 = v11;
      swift_once();
      v11 = v20;
    }

    v30 = static MLSActor.shared;
    v13 = (v5 + 8);
    v14 = (v3 + 8);
    v22 = *(v11 + 72);
    v23 = v29 + 32;
    do
    {
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v15 = v25;
      MLS.Group.MemberUpdate.new.getter();
      v16 = v27;
      MLS.Group.Member.identity.getter();
      (*v13)(v15, v26);
      MLS.Identity.SigningIdentity.credential.getter();
      (*v14)(v16, v28);
      v31 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v10 = v31;
      }

      *(v10 + 16) = v18 + 1;
      (*(v29 + 32))(v10 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v18, v8, v24);
      v12 += v22;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t specialized MLS.IncomingMessage.description.getter()
{
  _StringGuts.grow(_:)(80);
  MEMORY[0x2667545A0](0xD00000000000001CLL, 0x80000002651E8570);
  MEMORY[0x2667545A0](v0[2], v0[3]);
  MEMORY[0x2667545A0](0x7265646E6573202CLL, 0xEA0000000000203ALL);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x2667545A0](0x67617373656D202CLL, 0xEF203A6570795465);
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x2667545A0](0xD000000000000012, 0x80000002651E8590);
  v2 = *v0;
  v3 = v0[1] >> 62;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_9;
    }

    v4 = v2 + 16;
    v2 = *(v2 + 16);
    if (!__OFSUB__(*(v4 + 8), v2))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v2), v2))
  {
LABEL_9:
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v5);

    MEMORY[0x2667545A0](41, 0xE100000000000000);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t MLS.SwiftMLSClientPicker.client.getter@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of MLS.SwiftMLSClientPicker(v1, v11);
  if (v12)
  {
    return outlined init with take of MLS.KeyUpdatePolicy(v11, a1);
  }

  outlined init with take of MLS.KeyUpdatePolicy(v11, v8);
  v4 = v9;
  v5 = v10;
  v6 = __swift_project_boxed_opaque_existential_1(v8, v9);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

void specialized MLS.OutgoingEventType.commit.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 144);
  v12[8] = *(v1 + 128);
  v12[9] = v3;
  v12[10] = *(v1 + 160);
  v13 = *(v1 + 176);
  v4 = *(v1 + 80);
  v12[4] = *(v1 + 64);
  v12[5] = v4;
  v5 = *(v1 + 112);
  v12[6] = *(v1 + 96);
  v12[7] = v5;
  v6 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v6;
  v7 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v7;
  switch(_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v12))
  {
    case 3u:
    case 6u:
    case 7u:
    case 0xAu:
    case 0xFu:
    case 0x10u:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      *a1 = 0u;
      *(a1 + 16) = 0u;
      break;
    default:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
      v9 = v8[8];
      v10 = v8[9];
      v11 = v8[10];
      *a1 = v8[7];
      *(a1 + 8) = v9;
      *(a1 + 16) = v10;
      *(a1 + 24) = v11;

      outlined copy of Data._Representation(v10, v11);
      break;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLS.SwiftMLSClientCoordinatorError.ErrorType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MLS.SwiftMLSClientCoordinatorError.ErrorType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance MLS.SwiftMLSClientCoordinatorError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SwiftMLSClientCoordinatorError.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30SwiftMLSClientCoordinatorErrorV10CodingKeys33_4A5F1255AF5325EF77C6CF0723488492LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30SwiftMLSClientCoordinatorErrorV10CodingKeys33_4A5F1255AF5325EF77C6CF0723488492LLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.SwiftMLSClientCoordinatorError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.SwiftMLSClientCoordinatorError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MLS.SwiftMLSClientCoordinatorError@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized MLS.SwiftMLSClientCoordinatorError.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v7 = a5[1];
  v6[6] = *a5;
  v6[7] = v7;
  return MEMORY[0x2822009F8](static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:), 0, 0);
}

void static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v9 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  _StringGuts.grow(_:)(19);

  MEMORY[0x2667545A0](v2, v1);
  *(v0 + 64) = 0x80000002651E9F90;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v9;
  *(v5 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  MLS.Persister.atomically<A>(with:do:)(v8, 0xD00000000000001BLL, 0x80000002651E9F90, &async function pointer to partial apply for closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:), v5, ObjectType, &type metadata for MLS.SwiftMLSClientPicker, v7);
}

uint64_t static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v8 = type metadata accessor for MLS.Client.Configuration();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v6[28] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:), v9, 0);
}

uint64_t closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)()
{
  v1 = v0[10];
  v0[2] = v0[9];
  v0[3] = v1;

  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  v3 = v0[27];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];

  return static MLS.swiftMLSConfiguration(uniqueClientIdentifier:persister:testCertAnchors:)(v3, v0 + 2, v6, v4, v5);
}

{
  v2 = *v1;
  v2[30] = v0;

  if (v0)
  {
    v3 = v2[28];

    return MEMORY[0x2822009F8](closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:), v3, 0);
  }

  else
  {
    v12 = v2[12];
    v5 = v2[9];
    v4 = v2[10];
    ObjectType = swift_getObjectType();
    v2[4] = v5;
    v2[31] = ObjectType;
    v2[5] = v4;
    v11 = (*(v12 + 24) + **(v12 + 24));
    v7 = swift_task_alloc();
    v2[32] = v7;
    *v7 = v2;
    v7[1] = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
    v8 = v2[15];
    v9 = v2[12];

    return v11(v8, v2 + 4, ObjectType, v9);
  }
}

{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  else
  {
    v4 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of NSObject?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v4 = v0[27];
    v6 = v0[23];
    v5 = v0[24];
    v7 = v0[22];
    v8 = v0[16];
    v9 = v0[17];
    v10 = v0[14];
    v0[38] = type metadata accessor for MLS.RCSClient();
    (*(v6 + 16))(v5, v4, v7);
    (*(v9 + 56))(v10, 1, 1, v8);
    v11 = swift_task_alloc();
    v0[39] = v11;
    *v11 = v0;
    v11[1] = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
    v12 = v0[24];
    v13 = v0[14];

    return MEMORY[0x2821D00D8](v12, v13);
  }

  else
  {
    v15 = v0[26];
    v14 = v0[27];
    v16 = v0[22];
    v17 = v0[23];
    v19 = v0[20];
    v18 = v0[21];
    (*(v2 + 32))(v18, v3, v1);
    v0[34] = type metadata accessor for MLS.RCSClient();
    (*(v17 + 16))(v15, v14, v16);
    (*(v2 + 16))(v19, v18, v1);
    v20 = swift_task_alloc();
    v0[35] = v20;
    *v20 = v0;
    v20[1] = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
    v21 = v0[26];
    v22 = v0[20];

    return MEMORY[0x2821D00E0](v21, v22);
  }
}

{
  v1 = v0[36];
  if (v1)
  {
    v2 = v0[34];
    v3 = v0[21];
    v4 = v0[16];
    v5 = v0[17];
    v6 = v0[8];

    v6[3] = v2;
    v6[4] = &protocol witness table for MLS.RCSClient;
    *v6 = v1;
    (*(v5 + 8))(v3, v4);
    v7 = v0[8];
    (*(v0[23] + 8))(v0[27], v0[22]);
    *(v7 + 40) = 0;

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[17] + 8))(v0[21], v0[16]);
    v10 = v0[27];
    v12 = v0[23];
    v11 = v0[24];
    v13 = v0[22];
    v14 = v0[16];
    v15 = v0[17];
    v16 = v0[14];
    v0[38] = type metadata accessor for MLS.RCSClient();
    (*(v12 + 16))(v11, v10, v13);
    (*(v15 + 56))(v16, 1, 1, v14);
    v17 = swift_task_alloc();
    v0[39] = v17;
    *v17 = v0;
    v17[1] = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
    v18 = v0[24];
    v19 = v0[14];

    return MEMORY[0x2821D00D8](v18, v19);
  }
}

{
  v9 = v0[12];
  v2 = v0[9];
  v1 = v0[10];

  dispatch thunk of MLS.Client.Client.clientUUID.getter();

  v0[6] = v2;
  v0[7] = v1;
  v8 = (*(v9 + 16) + **(v9 + 16));
  v3 = swift_task_alloc();
  v0[42] = v3;
  *v3 = v0;
  v3[1] = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  v4 = v0[31];
  v5 = v0[18];
  v6 = v0[12];

  return v8(v5, v0 + 6, v4, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 344) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = *(v2 + 224);
    v7 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  else
  {
    v8 = *(v2 + 224);

    v7 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
    v6 = v8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = v0[40];
  v2 = v0[8];
  v2[3] = v0[38];
  v2[4] = &protocol witness table for MLS.RCSClient;
  *v2 = v1;
  v3 = v0[8];
  (*(v0[23] + 8))(v0[27], v0[22]);
  *(v3 + 40) = 0;

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  (*(v0[23] + 8))(v0[27], v0[22]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[23];
  (*(v0[17] + 8))(v0[21], v0[16]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

{
  (*(v0[23] + 8))(v0[27], v0[22]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[23];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 288) = a1;
  *(v4 + 296) = v1;

  v5 = *(v3 + 224);
  if (v1)
  {

    v6 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  else
  {
    v6 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = v1;

  v5 = *(v3 + 224);
  if (v1)
  {

    v6 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  else
  {
    v6 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  *a1 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  a1[1] = v2;

  return result;
}

uint64_t MLS.SwiftMLSClientCoordinator.selfMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
  v3 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
  v4 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
  v5 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return outlined copy of MLS.AllMember(v3, v4);
}

double MLS.SwiftMLSClientCoordinator.featureFlagsStore.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore);

  return result;
}

double MLS.SwiftMLSClientCoordinator.identifierToKeyUpdateTracker.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t MLS.SwiftMLSClientCoordinator.identifierToKeyUpdateTracker.setter(uint64_t a1)
{
  v3 = direct field offset for MLS.SwiftMLSClientCoordinator.identifierToKeyUpdateTracker;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MLS.SwiftMLSClientCoordinator.keyPackage.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;
  v2[4] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.keyPackage.getter, v3, 0);
}

void MLS.SwiftMLSClientCoordinator.keyPackage.getter()
{
  v1 = v0[3] + direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider;
  v2 = *(v1 + 56);
  ObjectType = swift_getObjectType();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = MLS.SwiftMLSClientCoordinator.keyPackage.getter;
  v6 = v0[2];

  MLS.Persister.atomically<A>(with:do:)(v6, 0x5079654B666C6573, 0xEE006567616B6361, &async function pointer to partial apply for closure #2 in MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:), v4, ObjectType, &type metadata for MLS.KeyPackageInfo, v2);
}

uint64_t MLS.SwiftMLSClientCoordinator.keyPackage.getter()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.keyPackage.getter, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.SwiftMLSClientCoordinator.signaturePublicKey.getter(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator signaturePublicKey loading key", v5, 2u);
    MEMORY[0x266755550](v5, -1, -1);
  }

  outlined init with copy of MLS.SwiftMLSClientPicker(v2 + 16, &v27);
  if (v29)
  {
    outlined init with take of MLS.KeyUpdatePolicy(&v27, v30);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy(&v27, v24);
    v6 = v25;
    v7 = v26;
    v8 = __swift_project_boxed_opaque_existential_1(v24, v25);
    v31 = v6;
    v32 = *(v7 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  v10 = v31;
  v11 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v11 + 8))(&v27, v10, v11);
  __swift_project_boxed_opaque_existential_1(&v27, v28);
  v12 = dispatch thunk of MLS.Cryptography.SerializablePublicKey.data.getter();
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  outlined copy of Data._Representation(v12, v14);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v12, v14);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v27 = v18;
    *v17 = 136315138;
    outlined copy of Data._Representation(v12, v14);
    v19 = Data.description.getter();
    v21 = v20;
    outlined consume of Data._Representation(v12, v14);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v27);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_264F1F000, v15, v16, "SwiftMLSClientCoordinator signaturePublicKey loaded key { key: %s }", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v17, -1, -1);
  }

  return v12;
}

uint64_t MLS.SwiftMLSClientCoordinator.__allocating_init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_allocObject();
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(v14, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 6664) = v8;
  *(v9 + 6656) = v19;
  *(v9 + 6648) = a8;
  *(v9 + 6640) = a7;
  *(v9 + 6632) = a6;
  *(v9 + 6624) = a5;
  *(v9 + 6616) = a4;
  *(v9 + 6608) = a3;
  *(v9 + 6600) = a2;
  *(v9 + 6672) = *v8;
  v10 = type metadata accessor for UUID();
  *(v9 + 6680) = v10;
  *(v9 + 6688) = *(v10 - 8);
  *(v9 + 6696) = swift_task_alloc();
  v11 = type metadata accessor for MLS.Group.GroupInfo();
  *(v9 + 6704) = v11;
  *(v9 + 6712) = *(v11 - 8);
  *(v9 + 6720) = swift_task_alloc();
  type metadata accessor for MLS.KeyPackageProvider(0);
  *(v9 + 6728) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v9 + 6736) = v12;
  v13 = *(v12 - 8);
  *(v9 + 6744) = v13;
  *(v9 + 6752) = *(v13 + 64);
  *(v9 + 6760) = swift_task_alloc();
  *(v9 + 6768) = swift_task_alloc();
  *(v9 + 6776) = swift_task_alloc();
  *(v9 + 6784) = *v17;
  *(v9 + 6800) = *(v17 + 16);
  *(v9 + 753) = *(v17 + 24);
  *(v9 + 6808) = *v18;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static MLSActor.shared;
  *(v9 + 6816) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v14, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  v102 = v0;
  v83 = (v0 + 5800);
  v94 = (v0 + 5848);
  v71 = (v0 + 6016);
  v70 = (v0 + 6056);
  v69 = (v0 + 6176);
  v67 = (v0 + 6256);
  v79 = (v0 + 6376);
  Logger.init(subsystem:category:)();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *&v99 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v99);
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator initializing { clientIdentifier: %s }", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x266755550](v4, -1, -1);
    MEMORY[0x266755550](v3, -1, -1);
  }

  v81 = *(v0 + 6808);
  v90 = *(v0 + 6800);
  v5 = *(v0 + 6792);
  v6 = *(v0 + 6784);
  v85 = *(v0 + 6776);
  v7 = *(v0 + 6744);
  v77 = *(v0 + 6736);
  v66 = *(v0 + 6728);
  v91 = *(v0 + 6672);
  v8 = *(v0 + 6664);
  v65 = *(v0 + 6656);
  v75 = *(v0 + 6648);
  v89 = *(v0 + 6640);
  v9 = *(v0 + 6632);
  v82 = v9;
  v10 = *(v0 + 6624);
  v88 = v10;
  v72 = *(v0 + 6616);
  v11 = *(v0 + 6608);
  v12 = *(v0 + 6600);
  v87 = v12;
  v13 = *(v0 + 753);
  v86 = v13;
  outlined init with copy of MLS.SwiftMLSClientPicker(v75, (v8 + 16));
  v14 = &v8[direct field offset for MLS.SwiftMLSClientCoordinator.selfMember];
  *v14 = v6;
  *(v14 + 1) = v5;
  *(v14 + 2) = v90;
  v14[24] = v13;
  *(v8 + 8) = v12;
  *(v8 + 9) = v11;
  *(v8 + 10) = v72;
  *(v8 + 11) = v10;
  outlined init with copy of ServerBag.MLS(v9, (v8 + 104));
  *(v8 + 21) = &type metadata for MLS.DefaultKeyUpdatePolicy;
  *(v8 + 22) = &protocol witness table for MLS.DefaultKeyUpdatePolicy;
  *&v8[direct field offset for MLS.SwiftMLSClientCoordinator.identifierToKeyUpdateTracker] = MEMORY[0x277D84F98];
  outlined init with copy of MLS.KeyPackageProvider(v89, &v8[direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider]);
  v15 = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  v16 = *(v7 + 16);
  *(v0 + 6824) = v16;
  *(v0 + 6832) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(&v8[v15], v85, v77);
  v74 = &v8[direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier];
  *v74 = v6;
  v74[1] = v5;
  v17 = v5;
  outlined init with copy of MLS.SwiftMLSClientPicker(v75, v94);
  type metadata accessor for MLS.GroupLoader(0);
  v18 = swift_allocObject();
  swift_unknownObjectRetain();
  outlined copy of MLS.AllMember(v6, v17);
  outlined copy of MLS.AllMember(v6, v17);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v73 = v17;

  Logger.init(subsystem:category:)();
  v19 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_identifierToSwiftMLSGroup;
  *(v18 + v19) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v18 + 16) = v6;
  *(v18 + 24) = v17;
  *(v18 + 32) = v72;
  *(v18 + 40) = v10;
  *(v18 + 73) = *(v0 + 5873);
  v20 = *(v0 + 5864);
  *(v18 + 48) = *v94;
  *(v18 + 64) = v20;
  v78 = direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader;
  *&v8[direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader] = v18;
  v21 = v91[10];
  *(v0 + 6840) = v21;
  v22 = v91[11];
  *(v0 + 6848) = v22;
  v23 = v91[12];
  *(v0 + 6856) = v23;
  *&v20 = v23;
  *(&v20 + 1) = v91[13];
  v92 = v20;
  *(v0 + 6864) = *(&v20 + 1);
  *&v24 = v21;
  *(&v24 + 1) = v22;
  v95 = v24;
  *v79 = v24;
  *(v0 + 6392) = v20;
  v80 = type metadata accessor for MLS.EventSender(0, v79);
  outlined init with copy of ServerBag.MLS(v65, v67);
  v25 = v74[1];
  *&v99 = *v74;
  *(&v99 + 1) = v25;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v64 = MLS.EventSender.__allocating_init(eventDeliverer:bag:persister:groupLoader:clientIdentifier:)(v87, v11, v67, v72, v10, v18, &v99);
  *(v8 + 12) = v64;
  *&v8[direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore] = v81;
  outlined init with copy of ServerBag.MLS(v65, &v8[direct field offset for MLS.SwiftMLSClientCoordinator.bag]);
  v68 = type metadata accessor for MLS.GroupHealer(0);
  v96 = v81;
  outlined init with copy of MLS.SwiftMLSClientPicker(v75, v83);
  v76 = *&v8[v78];
  outlined init with copy of MLS.KeyPackageProvider(v89, v66);
  outlined init with copy of ServerBag.MLS(v82, v69);
  *&v99 = v6;
  *(&v99 + 1) = v17;
  v100 = v90;
  v101 = v86;
  v26 = v74[1];
  v97 = *v74;
  v98 = v26;

  outlined copy of MLS.AllMember(v6, v17);
  swift_unknownObjectRetain();

  v27 = specialized MLS.GroupHealer.__allocating_init(featureFlagsStore:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(&v96, v83, v76, v72, v10, v64, v66, v69, &v99, &v97, v68, v80, &protocol witness table for MLS.EventSender<A, B>);
  v28 = direct field offset for MLS.SwiftMLSClientCoordinator.groupHealer;
  *&v8[direct field offset for MLS.SwiftMLSClientCoordinator.groupHealer] = v27;
  v84 = type metadata accessor for MLS.OperationRunner(0);
  v29 = *(v8 + 12);
  outlined init with copy of ServerBag.MLS(v82, v70);
  v30 = *&v8[v78];
  type metadata accessor for MLS.KeyPackageFetcher(0);
  v31 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  Logger.init(subsystem:category:)();
  *(v31 + 16) = v87;
  *(v31 + 24) = v11;
  outlined init with copy of MLS.KeyPackageProvider(v89, v66);
  outlined init with copy of ServerBag.MLS((v8 + 144), v71);
  v32 = *&v8[v28];
  v33 = *v74;
  v34 = v74[1];
  v96 = v81;
  v97 = v33;
  v98 = v34;
  *&v99 = v6;
  *(&v99 + 1) = v73;
  v100 = v90;
  v101 = v86;

  v35 = specialized MLS.OperationRunner.__allocating_init(eventSender:credentialProvider:groupLoader:persister:keyPackageFetcher:keyPackageProvider:keyUpdatePolicy:groupHealer:featureFlagsStore:uniqueClientIdentifier:selfMember:)(v29, v70, v30, v72, v88, v31, v66, v71, v32, &v96, &v97, &v99, v84, v80, &protocol witness table for MLS.EventSender<A, B>);
  *&v8[direct field offset for MLS.SwiftMLSClientCoordinator.runner] = v35;
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v95;
  *(v37 + 32) = v92;
  *(v37 + 48) = v36;
  v38 = *(*v35 + 192);

  v38(&async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v37);

  v39 = *(v8 + 12);
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  *(v41 + 16) = v95;
  *(v41 + 32) = v92;
  *(v41 + 48) = v40;
  v42 = *(*v39 + 240);

  v42(&async function pointer to partial apply for closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v41);

  v43 = *(v8 + 12);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = v95;
  *(v45 + 32) = v92;
  *(v45 + 48) = v44;
  v46 = *(*v43 + 288);

  v46(&async function pointer to partial apply for closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v45);

  v47 = *(v8 + 12);
  v48 = swift_allocObject();
  swift_weakInit();

  v49 = swift_allocObject();
  *(v49 + 16) = v95;
  *(v49 + 32) = v92;
  *(v49 + 48) = v48;
  v50 = *(*v47 + 264);

  v50(&async function pointer to partial apply for closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v49);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v99 = v54;
    *v53 = 136315138;
    *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v99);
    _os_log_impl(&dword_264F1F000, v51, v52, "SwiftMLSClientCoordinator loading stored events { clientIdentifier: %s }", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x266755550](v54, -1, -1);
    MEMORY[0x266755550](v53, -1, -1);
  }

  v55 = *(v0 + 6664);
  v56 = *(v8 + 11);
  ObjectType = swift_getObjectType();
  v58 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 6872) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v59 = (v55 + v58);
  v60 = v59[1];
  *(v0 + 6576) = *v59;
  *(v0 + 6584) = v60;
  v61 = *(v56 + 160);

  v93 = (v61 + *v61);
  v62 = swift_task_alloc();
  *(v0 + 6880) = v62;
  *v62 = v0;
  v62[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v93(v0 + 6560, v0 + 6576, ObjectType, v56);
}

{
  v2 = *v1;
  *(*v1 + 6888) = v0;

  v3 = *(v2 + 6816);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 6560);
  *(v0 + 6896) = v1;
  v2 = *(v0 + 6568);
  *(v0 + 6904) = v2;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v49 = v6;
    *v5 = 136315650;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v49);
    *(v5 + 12) = 2048;
    *(v5 + 14) = *(v1 + 16);
    *(v5 + 22) = 2048;
    *(v5 + 24) = *(v2 + 16);

    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator loaded events { clientIdentifier: %s, outgoingEventCount: %ld, incomingEventCount: %ld }", v5, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 6664);
  v8 = *(v1 + 32);
  *(v0 + 754) = v8;
  v9 = -1;
  v10 = -1 << v8;
  if (-(-1 << v8) < 64)
  {
    v9 = ~(-1 << -(-1 << v8));
  }

  v11 = v9 & *(v1 + 64);
  v12 = direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader;
  *(v0 + 6912) = direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader;

  if (v11)
  {
    v13 = 0;
    v14 = *(v0 + 6896);
LABEL_11:
    *(v0 + 6928) = v13;
    *(v0 + 6920) = v11;
    v16 = __clz(__rbit64(v11)) | (v13 << 6);
    v17 = (*(v14 + 48) + 16 * v16);
    *(v0 + 6936) = *v17;
    *(v0 + 6944) = v17[1];
    *(v0 + 6952) = *(*(v14 + 56) + 8 * v16);
    v18 = *(**(v7 + v12) + 192);

    v46 = v18 + *v18;
    v19 = swift_task_alloc();
    *(v0 + 6960) = v19;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    *v19 = v0;
    v19[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
LABEL_12:

    __asm { BRAA            X8, X16 }
  }

  v15 = 0;
  v14 = *(v0 + 6896);
  while (((63 - v10) >> 6) - 1 != v15)
  {
    v13 = v15 + 1;
    v11 = *(v14 + 8 * v15++ + 72);
    if (v11)
    {
      goto LABEL_11;
    }
  }

  v20 = *(v0 + 6904);

  v21 = *(v20 + 32);
  *(v0 + 755) = v21;
  v22 = -1;
  v23 = -1 << v21;
  if (-(-1 << v21) < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & *(v20 + 64);

  if (v24)
  {
    v25 = 0;
    v26 = *(v0 + 6904);
LABEL_22:
    *(v0 + 7024) = v25;
    *(v0 + 7016) = v24;
    v28 = *(v0 + 6912);
    v29 = *(v0 + 6664);
    v30 = __clz(__rbit64(v24)) | (v25 << 6);
    v31 = (*(v26 + 48) + 16 * v30);
    *(v0 + 7032) = *v31;
    *(v0 + 7040) = v31[1];
    *(v0 + 7048) = *(*(v26 + 56) + 8 * v30);
    v32 = *(**(v29 + v28) + 192);

    v46 = v32 + *v32;
    v33 = swift_task_alloc();
    *(v0 + 7056) = v33;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    *v33 = v0;
    v33[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    goto LABEL_12;
  }

  v27 = 0;
  v26 = *(v0 + 6904);
  while (((63 - v23) >> 6) - 1 != v27)
  {
    v25 = v27 + 1;
    v24 = *(v26 + 8 * v27++ + 72);
    if (v24)
    {
      goto LABEL_22;
    }
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v49 = v37;
    *v36 = 136315138;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v49);
    _os_log_impl(&dword_264F1F000, v34, v35, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266755550](v37, -1, -1);
    MEMORY[0x266755550](v36, -1, -1);
  }

  v38 = *(v0 + 6664);
  v39 = (v38 + *(v0 + 6872));
  v40 = *(v38 + 88);
  ObjectType = swift_getObjectType();
  v42 = v39[1];
  *(v0 + 6528) = *v39;
  *(v0 + 6536) = v42;
  v43 = *(v40 + 168);

  v47 = (v43 + *v43);
  v44 = swift_task_alloc();
  *(v0 + 7400) = v44;
  *v44 = v0;
  v44[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v47(v0 + 6592, v0 + 6528, ObjectType, v40);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 6816);

    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 6816);
    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = *(v0 + 6952);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 6336), v0 + 5896);
  v2 = *(v1 + 16);
  *(v0 + 6968) = v2;
  v3 = *(v0 + 6952);
  if (v2)
  {
    *(v0 + 6976) = 0;
    v4 = *(v0 + 6664);
    memcpy((v0 + 16), (v3 + 32), 0x118uLL);
    v184 = *(v0 + 272);
    v183 = *(v0 + 280);
    v182 = *(v0 + 288);
    *(v0 + 5728) = *(v3 + 216);
    v5 = *(v3 + 248);
    v6 = *(v3 + 264);
    v7 = *(v3 + 232);
    *(v0 + 5792) = *(v3 + 280);
    *(v0 + 5760) = v5;
    *(v0 + 5776) = v6;
    *(v0 + 5744) = v7;
    v8 = *(v3 + 80);
    v10 = *(v3 + 32);
    v9 = *(v3 + 48);
    *(v0 + 3184) = *(v3 + 64);
    *(v0 + 3200) = v8;
    *(v0 + 3152) = v10;
    *(v0 + 3168) = v9;
    v11 = *(v3 + 144);
    v13 = *(v3 + 96);
    v12 = *(v3 + 112);
    *(v0 + 3248) = *(v3 + 128);
    *(v0 + 3264) = v11;
    *(v0 + 3216) = v13;
    *(v0 + 3232) = v12;
    v15 = *(v3 + 176);
    v14 = *(v3 + 192);
    v16 = *(v3 + 160);
    *(v0 + 3328) = *(v3 + 208);
    *(v0 + 3296) = v15;
    *(v0 + 3312) = v14;
    *(v0 + 3280) = v16;
    v17 = *(v4 + 96);
    v18 = *(v3 + 32);
    v19 = *(v3 + 48);
    v20 = *(v3 + 80);
    *(v0 + 3000) = *(v3 + 64);
    *(v0 + 3016) = v20;
    *(v0 + 2968) = v18;
    *(v0 + 2984) = v19;
    v21 = *(v3 + 96);
    v22 = *(v3 + 112);
    v23 = *(v3 + 144);
    *(v0 + 3064) = *(v3 + 128);
    *(v0 + 3080) = v23;
    *(v0 + 3032) = v21;
    *(v0 + 3048) = v22;
    v24 = *(v3 + 160);
    v25 = *(v3 + 176);
    v26 = *(v3 + 192);
    *(v0 + 3144) = *(v3 + 208);
    *(v0 + 3112) = v25;
    *(v0 + 3128) = v26;
    *(v0 + 3096) = v24;
    v186 = v17;
    switch(_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v0 + 2968))
    {
      case 1u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v101 = *(v0 + 160);
        *(v0 + 2728) = *(v0 + 144);
        *(v0 + 2744) = v101;
        *(v0 + 2760) = *(v0 + 176);
        *(v0 + 2776) = *(v0 + 192);
        v102 = *(v0 + 96);
        *(v0 + 2664) = *(v0 + 80);
        *(v0 + 2680) = v102;
        v103 = *(v0 + 128);
        *(v0 + 2696) = *(v0 + 112);
        *(v0 + 2712) = v103;
        v104 = *(v0 + 32);
        *(v0 + 2600) = *(v0 + 16);
        *(v0 + 2616) = v104;
        v105 = *(v0 + 64);
        *(v0 + 2632) = *(v0 + 48);
        *(v0 + 2648) = v105;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 2u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v81 = *(v0 + 160);
        *(v0 + 2912) = *(v0 + 144);
        *(v0 + 2928) = v81;
        *(v0 + 2944) = *(v0 + 176);
        *(v0 + 2960) = *(v0 + 192);
        v82 = *(v0 + 96);
        *(v0 + 2848) = *(v0 + 80);
        *(v0 + 2864) = v82;
        v83 = *(v0 + 128);
        *(v0 + 2880) = *(v0 + 112);
        *(v0 + 2896) = v83;
        v84 = *(v0 + 32);
        *(v0 + 2784) = *(v0 + 16);
        *(v0 + 2800) = v84;
        v85 = *(v0 + 64);
        *(v0 + 2816) = *(v0 + 48);
        *(v0 + 2832) = v85;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 3u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v91 = *(v0 + 160);
        *(v0 + 3648) = *(v0 + 144);
        *(v0 + 3664) = v91;
        *(v0 + 3680) = *(v0 + 176);
        *(v0 + 3696) = *(v0 + 192);
        v92 = *(v0 + 96);
        *(v0 + 3584) = *(v0 + 80);
        *(v0 + 3600) = v92;
        v93 = *(v0 + 128);
        *(v0 + 3616) = *(v0 + 112);
        *(v0 + 3632) = v93;
        v94 = *(v0 + 32);
        *(v0 + 3520) = *(v0 + 16);
        *(v0 + 3536) = v94;
        v95 = *(v0 + 64);
        *(v0 + 3552) = *(v0 + 48);
        *(v0 + 3568) = v95;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 4u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v66 = *(v0 + 160);
        *(v0 + 888) = *(v0 + 144);
        *(v0 + 904) = v66;
        *(v0 + 920) = *(v0 + 176);
        *(v0 + 936) = *(v0 + 192);
        v67 = *(v0 + 96);
        *(v0 + 824) = *(v0 + 80);
        *(v0 + 840) = v67;
        v68 = *(v0 + 128);
        *(v0 + 856) = *(v0 + 112);
        *(v0 + 872) = v68;
        v69 = *(v0 + 32);
        *(v0 + 760) = *(v0 + 16);
        *(v0 + 776) = v69;
        v70 = *(v0 + 64);
        *(v0 + 792) = *(v0 + 48);
        *(v0 + 808) = v70;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 5u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v106 = *(v0 + 160);
        *(v0 + 704) = *(v0 + 144);
        *(v0 + 720) = v106;
        *(v0 + 736) = *(v0 + 176);
        *(v0 + 752) = *(v0 + 192);
        v107 = *(v0 + 96);
        *(v0 + 640) = *(v0 + 80);
        *(v0 + 656) = v107;
        v108 = *(v0 + 128);
        *(v0 + 672) = *(v0 + 112);
        *(v0 + 688) = v108;
        v109 = *(v0 + 32);
        *(v0 + 576) = *(v0 + 16);
        *(v0 + 592) = v109;
        v110 = *(v0 + 64);
        *(v0 + 608) = *(v0 + 48);
        *(v0 + 624) = v110;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 6u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v116 = *(v0 + 160);
        *(v0 + 4200) = *(v0 + 144);
        *(v0 + 4216) = v116;
        *(v0 + 4232) = *(v0 + 176);
        *(v0 + 4248) = *(v0 + 192);
        v117 = *(v0 + 96);
        *(v0 + 4136) = *(v0 + 80);
        *(v0 + 4152) = v117;
        v118 = *(v0 + 128);
        *(v0 + 4168) = *(v0 + 112);
        *(v0 + 4184) = v118;
        v119 = *(v0 + 32);
        *(v0 + 4072) = *(v0 + 16);
        *(v0 + 4088) = v119;
        v120 = *(v0 + 64);
        *(v0 + 4104) = *(v0 + 48);
        *(v0 + 4120) = v120;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 7u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v96 = *(v0 + 160);
        *(v0 + 1072) = *(v0 + 144);
        *(v0 + 1088) = v96;
        *(v0 + 1104) = *(v0 + 176);
        *(v0 + 1120) = *(v0 + 192);
        v97 = *(v0 + 96);
        *(v0 + 1008) = *(v0 + 80);
        *(v0 + 1024) = v97;
        v98 = *(v0 + 128);
        *(v0 + 1040) = *(v0 + 112);
        *(v0 + 1056) = v98;
        v99 = *(v0 + 32);
        *(v0 + 944) = *(v0 + 16);
        *(v0 + 960) = v99;
        v100 = *(v0 + 64);
        *(v0 + 976) = *(v0 + 48);
        *(v0 + 992) = v100;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 8u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v126 = *(v0 + 160);
        *(v0 + 1256) = *(v0 + 144);
        *(v0 + 1272) = v126;
        *(v0 + 1288) = *(v0 + 176);
        *(v0 + 1304) = *(v0 + 192);
        v127 = *(v0 + 96);
        *(v0 + 1192) = *(v0 + 80);
        *(v0 + 1208) = v127;
        v128 = *(v0 + 128);
        *(v0 + 1224) = *(v0 + 112);
        *(v0 + 1240) = v128;
        v129 = *(v0 + 32);
        *(v0 + 1128) = *(v0 + 16);
        *(v0 + 1144) = v129;
        v130 = *(v0 + 64);
        *(v0 + 1160) = *(v0 + 48);
        *(v0 + 1176) = v130;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 9u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v76 = *(v0 + 160);
        *(v0 + 1440) = *(v0 + 144);
        *(v0 + 1456) = v76;
        *(v0 + 1472) = *(v0 + 176);
        *(v0 + 1488) = *(v0 + 192);
        v77 = *(v0 + 96);
        *(v0 + 1376) = *(v0 + 80);
        *(v0 + 1392) = v77;
        v78 = *(v0 + 128);
        *(v0 + 1408) = *(v0 + 112);
        *(v0 + 1424) = v78;
        v79 = *(v0 + 32);
        *(v0 + 1312) = *(v0 + 16);
        *(v0 + 1328) = v79;
        v80 = *(v0 + 64);
        *(v0 + 1344) = *(v0 + 48);
        *(v0 + 1360) = v80;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 0xAu:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v121 = *(v0 + 160);
        *(v0 + 1624) = *(v0 + 144);
        *(v0 + 1640) = v121;
        *(v0 + 1656) = *(v0 + 176);
        *(v0 + 1672) = *(v0 + 192);
        v122 = *(v0 + 96);
        *(v0 + 1560) = *(v0 + 80);
        *(v0 + 1576) = v122;
        v123 = *(v0 + 128);
        *(v0 + 1592) = *(v0 + 112);
        *(v0 + 1608) = v123;
        v124 = *(v0 + 32);
        *(v0 + 1496) = *(v0 + 16);
        *(v0 + 1512) = v124;
        v125 = *(v0 + 64);
        *(v0 + 1528) = *(v0 + 48);
        *(v0 + 1544) = v125;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 0xBu:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v61 = *(v0 + 160);
        *(v0 + 1808) = *(v0 + 144);
        *(v0 + 1824) = v61;
        *(v0 + 1840) = *(v0 + 176);
        *(v0 + 1856) = *(v0 + 192);
        v62 = *(v0 + 96);
        *(v0 + 1744) = *(v0 + 80);
        *(v0 + 1760) = v62;
        v63 = *(v0 + 128);
        *(v0 + 1776) = *(v0 + 112);
        *(v0 + 1792) = v63;
        v64 = *(v0 + 32);
        *(v0 + 1680) = *(v0 + 16);
        *(v0 + 1696) = v64;
        v65 = *(v0 + 64);
        *(v0 + 1712) = *(v0 + 48);
        *(v0 + 1728) = v65;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 0xCu:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v71 = *(v0 + 160);
        *(v0 + 1992) = *(v0 + 144);
        *(v0 + 2008) = v71;
        *(v0 + 2024) = *(v0 + 176);
        *(v0 + 2040) = *(v0 + 192);
        v72 = *(v0 + 96);
        *(v0 + 1928) = *(v0 + 80);
        *(v0 + 1944) = v72;
        v73 = *(v0 + 128);
        *(v0 + 1960) = *(v0 + 112);
        *(v0 + 1976) = v73;
        v74 = *(v0 + 32);
        *(v0 + 1864) = *(v0 + 16);
        *(v0 + 1880) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1896) = *(v0 + 48);
        *(v0 + 1912) = v75;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 0xDu:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v111 = *(v0 + 160);
        *(v0 + 2176) = *(v0 + 144);
        *(v0 + 2192) = v111;
        *(v0 + 2208) = *(v0 + 176);
        *(v0 + 2224) = *(v0 + 192);
        v112 = *(v0 + 96);
        *(v0 + 2112) = *(v0 + 80);
        *(v0 + 2128) = v112;
        v113 = *(v0 + 128);
        *(v0 + 2144) = *(v0 + 112);
        *(v0 + 2160) = v113;
        v114 = *(v0 + 32);
        *(v0 + 2048) = *(v0 + 16);
        *(v0 + 2064) = v114;
        v115 = *(v0 + 64);
        *(v0 + 2080) = *(v0 + 48);
        *(v0 + 2096) = v115;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 0xEu:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v56 = *(v0 + 160);
        *(v0 + 2360) = *(v0 + 144);
        *(v0 + 2376) = v56;
        *(v0 + 2392) = *(v0 + 176);
        *(v0 + 2408) = *(v0 + 192);
        v57 = *(v0 + 96);
        *(v0 + 2296) = *(v0 + 80);
        *(v0 + 2312) = v57;
        v58 = *(v0 + 128);
        *(v0 + 2328) = *(v0 + 112);
        *(v0 + 2344) = v58;
        v59 = *(v0 + 32);
        *(v0 + 2232) = *(v0 + 16);
        *(v0 + 2248) = v59;
        v60 = *(v0 + 64);
        *(v0 + 2264) = *(v0 + 48);
        *(v0 + 2280) = v60;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 0xFu:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v86 = *(v0 + 160);
        *(v0 + 3832) = *(v0 + 144);
        *(v0 + 3848) = v86;
        *(v0 + 3864) = *(v0 + 176);
        *(v0 + 3880) = *(v0 + 192);
        v87 = *(v0 + 96);
        *(v0 + 3768) = *(v0 + 80);
        *(v0 + 3784) = v87;
        v88 = *(v0 + 128);
        *(v0 + 3800) = *(v0 + 112);
        *(v0 + 3816) = v88;
        v89 = *(v0 + 32);
        *(v0 + 3704) = *(v0 + 16);
        *(v0 + 3720) = v89;
        v90 = *(v0 + 64);
        *(v0 + 3736) = *(v0 + 48);
        *(v0 + 3752) = v90;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      case 0x10u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v51 = *(v0 + 160);
        *(v0 + 3464) = *(v0 + 144);
        *(v0 + 3480) = v51;
        *(v0 + 3496) = *(v0 + 176);
        *(v0 + 3512) = *(v0 + 192);
        v52 = *(v0 + 96);
        *(v0 + 3400) = *(v0 + 80);
        *(v0 + 3416) = v52;
        v53 = *(v0 + 128);
        *(v0 + 3432) = *(v0 + 112);
        *(v0 + 3448) = v53;
        v54 = *(v0 + 32);
        *(v0 + 3336) = *(v0 + 16);
        *(v0 + 3352) = v54;
        v55 = *(v0 + 64);
        *(v0 + 3368) = *(v0 + 48);
        *(v0 + 3384) = v55;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
      default:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        v27 = *(v0 + 160);
        *(v0 + 2544) = *(v0 + 144);
        *(v0 + 2560) = v27;
        *(v0 + 2576) = *(v0 + 176);
        *(v0 + 2592) = *(v0 + 192);
        v28 = *(v0 + 96);
        *(v0 + 2480) = *(v0 + 80);
        *(v0 + 2496) = v28;
        v29 = *(v0 + 128);
        *(v0 + 2512) = *(v0 + 112);
        *(v0 + 2528) = v29;
        v30 = *(v0 + 32);
        *(v0 + 2416) = *(v0 + 16);
        *(v0 + 2432) = v30;
        v31 = *(v0 + 64);
        *(v0 + 2448) = *(v0 + 48);
        *(v0 + 2464) = v31;
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
        break;
    }

    v180 = v32[1];
    v181 = *v32;

    v177 = *(v0 + 6936);
    v178 = *(v0 + 6944);
    v131 = *(v0 + 6768);
    v132 = *(v0 + 6752);
    v133 = *(v0 + 6744);
    v134 = *(v0 + 6736);
    v179 = *(v0 + 6664);
    v174 = *(v0 + 6856);
    v175 = *(v0 + 6840);
    (*(v0 + 6824))(v131, *(v0 + 6776), v134);
    outlined init with copy of ServerBag.MLS(v0 + 5896, v0 + 6136);
    v135 = (*(v133 + 80) + 48) & ~*(v133 + 80);
    v136 = (v135 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
    v137 = (v135 + v132 + 191) & 0xFFFFFFFFFFFFFFF8;
    v138 = (v137 + 23) & 0xFFFFFFFFFFFFFFF8;
    v139 = (v138 + 79) & 0xFFFFFFFFFFFFFFF8;
    v176 = (v139 + 31) & 0xFFFFFFFFFFFFFFF8;
    v140 = swift_allocObject();
    *(v0 + 6992) = v140;
    *(v140 + 16) = v175;
    *(v140 + 32) = v174;
    (*(v133 + 32))(v140 + v135, v131, v134);
    v141 = v140 + v136;
    v142 = *(v0 + 3264);
    *(v141 + 96) = *(v0 + 3248);
    *(v141 + 112) = v142;
    v143 = *(v0 + 3232);
    *(v141 + 64) = *(v0 + 3216);
    *(v141 + 80) = v143;
    *(v141 + 176) = *(v0 + 3328);
    v144 = *(v0 + 3312);
    *(v141 + 144) = *(v0 + 3296);
    *(v141 + 160) = v144;
    *(v141 + 128) = *(v0 + 3280);
    v145 = *(v0 + 3168);
    *v141 = *(v0 + 3152);
    *(v141 + 16) = v145;
    v146 = *(v0 + 3200);
    *(v141 + 32) = *(v0 + 3184);
    *(v141 + 48) = v146;
    v147 = (v140 + v137);
    *v147 = v177;
    v147[1] = v178;
    v148 = v140 + v138;
    *(v148 + 64) = *(v0 + 5792);
    v149 = *(v0 + 5776);
    *(v148 + 32) = *(v0 + 5760);
    *(v148 + 48) = v149;
    v150 = *(v0 + 5744);
    *v148 = *(v0 + 5728);
    *(v148 + 16) = v150;
    v151 = v140 + v139;
    *v151 = v184;
    *(v151 + 8) = v183;
    *(v151 + 16) = v182;
    *(v140 + v176) = v179;
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 6136), v140 + ((v176 + 15) & 0xFFFFFFFFFFFFFFF8));
    v152 = *(*v186 + 320);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 296, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 3888, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 5368, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    v185 = (v152 + *v152);
    v153 = swift_task_alloc();
    *(v0 + 7000) = v153;
    *v153 = v0;
    v153[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v154 = *(v0 + 6944);
    v155 = *(v0 + 6936);

    return (v185)(v155, v154, v181, v180, 0, &async function pointer to partial apply for closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v140);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5896));
    v33 = *(v0 + 6928);
    v34 = (*(v0 + 6920) - 1) & *(v0 + 6920);
    if (v34)
    {
      v35 = *(v0 + 6896);
      goto LABEL_10;
    }

    while (1)
    {
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        JUMPOUT(0x265082858);
      }

      if (v36 >= (((1 << *(v0 + 754)) + 63) >> 6))
      {
        break;
      }

      v35 = *(v0 + 6896);
      v34 = *(v35 + 8 * v36 + 64);
      ++v33;
      if (v34)
      {
        v33 = v36;
LABEL_10:
        *(v0 + 6928) = v33;
        *(v0 + 6920) = v34;
        v37 = *(v0 + 6912);
        v38 = *(v0 + 6664);
        v39 = __clz(__rbit64(v34)) | (v33 << 6);
        v40 = (*(v35 + 48) + 16 * v39);
        *(v0 + 6936) = *v40;
        *(v0 + 6944) = v40[1];
        *(v0 + 6952) = *(*(v35 + 56) + 8 * v39);
        v41 = *(**(v38 + v37) + 192);

        v187 = v41 + *v41;
        v42 = swift_task_alloc();
        *(v0 + 6960) = v42;
        lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
        *v42 = v0;
        v43 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
LABEL_11:
        v42[1] = v43;

        __asm { BRAA            X8, X16 }
      }
    }

    v44 = *(v0 + 6904);

    v45 = *(v44 + 32);
    *(v0 + 755) = v45;
    v46 = -1;
    v47 = -1 << v45;
    if (-(-1 << v45) < 64)
    {
      v46 = ~(-1 << -v47);
    }

    v48 = v46 & *(v44 + 64);

    if (v48)
    {
      v49 = 0;
      v50 = *(v0 + 6904);
LABEL_40:
      *(v0 + 7024) = v49;
      *(v0 + 7016) = v48;
      v158 = *(v0 + 6912);
      v159 = *(v0 + 6664);
      v160 = __clz(__rbit64(v48)) | (v49 << 6);
      v161 = (*(v50 + 48) + 16 * v160);
      *(v0 + 7032) = *v161;
      *(v0 + 7040) = v161[1];
      *(v0 + 7048) = *(*(v50 + 56) + 8 * v160);
      v162 = *(**(v159 + v158) + 192);

      v187 = v162 + *v162;
      v42 = swift_task_alloc();
      *(v0 + 7056) = v42;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v42 = v0;
      v43 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      goto LABEL_11;
    }

    v157 = 0;
    v50 = *(v0 + 6904);
    while (((63 - v47) >> 6) - 1 != v157)
    {
      v49 = v157 + 1;
      v48 = *(v50 + 8 * v157++ + 72);
      if (v48)
      {
        goto LABEL_40;
      }
    }

    v163 = Logger.logObject.getter();
    v164 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v190 = v166;
      *v165 = 136315138;
      *(v165 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v190);
      _os_log_impl(&dword_264F1F000, v163, v164, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v165, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v166);
      MEMORY[0x266755550](v166, -1, -1);
      MEMORY[0x266755550](v165, -1, -1);
    }

    v167 = *(v0 + 6664);
    v168 = (v167 + *(v0 + 6872));
    v169 = *(v167 + 88);
    ObjectType = swift_getObjectType();
    v171 = v168[1];
    *(v0 + 6528) = *v168;
    *(v0 + 6536) = v171;
    v172 = *(v169 + 168);

    v188 = (v172 + *v172);
    v173 = swift_task_alloc();
    *(v0 + 7400) = v173;
    *v173 = v0;
    v173[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

    return v188(v0 + 6592, v0 + 6528, ObjectType, v169);
  }
}

{
  v2 = *v1;
  *(*v1 + 7008) = v0;

  v3 = *(v2 + 6816);

  if (v0)
  {

    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 6968);
  v2 = *(v0 + 6976) + 1;
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (v2 != v1)
  {
    v6 = *(v0 + 6952);
    v7 = *(v0 + 6976) + 1;
    if (v7 < *(v6 + 16))
    {
      *(v0 + 6976) = v7;
      v8 = *(v0 + 6664);
      v9 = v6 + 280 * v7;
      memcpy((v0 + 16), (v9 + 32), 0x118uLL);
      v185 = *(v0 + 272);
      v184 = *(v0 + 280);
      v183 = *(v0 + 288);
      *(v0 + 5728) = *(v9 + 216);
      v10 = *(v9 + 248);
      v11 = *(v9 + 264);
      v12 = *(v9 + 232);
      *(v0 + 5792) = *(v9 + 280);
      *(v0 + 5760) = v10;
      *(v0 + 5776) = v11;
      *(v0 + 5744) = v12;
      v13 = *(v9 + 80);
      v15 = *(v9 + 32);
      v14 = *(v9 + 48);
      *(v0 + 3184) = *(v9 + 64);
      *(v0 + 3200) = v13;
      *(v0 + 3152) = v15;
      *(v0 + 3168) = v14;
      v16 = *(v9 + 144);
      v18 = *(v9 + 96);
      v17 = *(v9 + 112);
      *(v0 + 3248) = *(v9 + 128);
      *(v0 + 3264) = v16;
      *(v0 + 3216) = v18;
      *(v0 + 3232) = v17;
      v20 = *(v9 + 176);
      v19 = *(v9 + 192);
      v21 = *(v9 + 160);
      *(v0 + 3328) = *(v9 + 208);
      *(v0 + 3296) = v20;
      *(v0 + 3312) = v19;
      *(v0 + 3280) = v21;
      v22 = *(v8 + 96);
      v23 = *(v9 + 32);
      v24 = *(v9 + 48);
      v25 = *(v9 + 80);
      *(v0 + 3000) = *(v9 + 64);
      *(v0 + 3016) = v25;
      *(v0 + 2968) = v23;
      *(v0 + 2984) = v24;
      v26 = *(v9 + 96);
      v27 = *(v9 + 112);
      v28 = *(v9 + 144);
      *(v0 + 3064) = *(v9 + 128);
      *(v0 + 3080) = v28;
      *(v0 + 3032) = v26;
      *(v0 + 3048) = v27;
      v29 = *(v9 + 160);
      v30 = *(v9 + 176);
      v31 = *(v9 + 192);
      *(v0 + 3144) = *(v9 + 208);
      *(v0 + 3112) = v30;
      *(v0 + 3128) = v31;
      *(v0 + 3096) = v29;
      v187 = v22;
      switch(_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v0 + 2968))
      {
        case 1u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v109 = *(v0 + 160);
          *(v0 + 2728) = *(v0 + 144);
          *(v0 + 2744) = v109;
          *(v0 + 2760) = *(v0 + 176);
          *(v0 + 2776) = *(v0 + 192);
          v110 = *(v0 + 96);
          *(v0 + 2664) = *(v0 + 80);
          *(v0 + 2680) = v110;
          v111 = *(v0 + 128);
          *(v0 + 2696) = *(v0 + 112);
          *(v0 + 2712) = v111;
          v112 = *(v0 + 32);
          *(v0 + 2600) = *(v0 + 16);
          *(v0 + 2616) = v112;
          v113 = *(v0 + 64);
          *(v0 + 2632) = *(v0 + 48);
          *(v0 + 2648) = v113;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 2u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v89 = *(v0 + 160);
          *(v0 + 2912) = *(v0 + 144);
          *(v0 + 2928) = v89;
          *(v0 + 2944) = *(v0 + 176);
          *(v0 + 2960) = *(v0 + 192);
          v90 = *(v0 + 96);
          *(v0 + 2848) = *(v0 + 80);
          *(v0 + 2864) = v90;
          v91 = *(v0 + 128);
          *(v0 + 2880) = *(v0 + 112);
          *(v0 + 2896) = v91;
          v92 = *(v0 + 32);
          *(v0 + 2784) = *(v0 + 16);
          *(v0 + 2800) = v92;
          v93 = *(v0 + 64);
          *(v0 + 2816) = *(v0 + 48);
          *(v0 + 2832) = v93;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 3u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v99 = *(v0 + 160);
          *(v0 + 3648) = *(v0 + 144);
          *(v0 + 3664) = v99;
          *(v0 + 3680) = *(v0 + 176);
          *(v0 + 3696) = *(v0 + 192);
          v100 = *(v0 + 96);
          *(v0 + 3584) = *(v0 + 80);
          *(v0 + 3600) = v100;
          v101 = *(v0 + 128);
          *(v0 + 3616) = *(v0 + 112);
          *(v0 + 3632) = v101;
          v102 = *(v0 + 32);
          *(v0 + 3520) = *(v0 + 16);
          *(v0 + 3536) = v102;
          v103 = *(v0 + 64);
          *(v0 + 3552) = *(v0 + 48);
          *(v0 + 3568) = v103;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 4u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v74 = *(v0 + 160);
          *(v0 + 888) = *(v0 + 144);
          *(v0 + 904) = v74;
          *(v0 + 920) = *(v0 + 176);
          *(v0 + 936) = *(v0 + 192);
          v75 = *(v0 + 96);
          *(v0 + 824) = *(v0 + 80);
          *(v0 + 840) = v75;
          v76 = *(v0 + 128);
          *(v0 + 856) = *(v0 + 112);
          *(v0 + 872) = v76;
          v77 = *(v0 + 32);
          *(v0 + 760) = *(v0 + 16);
          *(v0 + 776) = v77;
          v78 = *(v0 + 64);
          *(v0 + 792) = *(v0 + 48);
          *(v0 + 808) = v78;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 5u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v114 = *(v0 + 160);
          *(v0 + 704) = *(v0 + 144);
          *(v0 + 720) = v114;
          *(v0 + 736) = *(v0 + 176);
          *(v0 + 752) = *(v0 + 192);
          v115 = *(v0 + 96);
          *(v0 + 640) = *(v0 + 80);
          *(v0 + 656) = v115;
          v116 = *(v0 + 128);
          *(v0 + 672) = *(v0 + 112);
          *(v0 + 688) = v116;
          v117 = *(v0 + 32);
          *(v0 + 576) = *(v0 + 16);
          *(v0 + 592) = v117;
          v118 = *(v0 + 64);
          *(v0 + 608) = *(v0 + 48);
          *(v0 + 624) = v118;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 6u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v124 = *(v0 + 160);
          *(v0 + 4200) = *(v0 + 144);
          *(v0 + 4216) = v124;
          *(v0 + 4232) = *(v0 + 176);
          *(v0 + 4248) = *(v0 + 192);
          v125 = *(v0 + 96);
          *(v0 + 4136) = *(v0 + 80);
          *(v0 + 4152) = v125;
          v126 = *(v0 + 128);
          *(v0 + 4168) = *(v0 + 112);
          *(v0 + 4184) = v126;
          v127 = *(v0 + 32);
          *(v0 + 4072) = *(v0 + 16);
          *(v0 + 4088) = v127;
          v128 = *(v0 + 64);
          *(v0 + 4104) = *(v0 + 48);
          *(v0 + 4120) = v128;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 7u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v104 = *(v0 + 160);
          *(v0 + 1072) = *(v0 + 144);
          *(v0 + 1088) = v104;
          *(v0 + 1104) = *(v0 + 176);
          *(v0 + 1120) = *(v0 + 192);
          v105 = *(v0 + 96);
          *(v0 + 1008) = *(v0 + 80);
          *(v0 + 1024) = v105;
          v106 = *(v0 + 128);
          *(v0 + 1040) = *(v0 + 112);
          *(v0 + 1056) = v106;
          v107 = *(v0 + 32);
          *(v0 + 944) = *(v0 + 16);
          *(v0 + 960) = v107;
          v108 = *(v0 + 64);
          *(v0 + 976) = *(v0 + 48);
          *(v0 + 992) = v108;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 8u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v134 = *(v0 + 160);
          *(v0 + 1256) = *(v0 + 144);
          *(v0 + 1272) = v134;
          *(v0 + 1288) = *(v0 + 176);
          *(v0 + 1304) = *(v0 + 192);
          v135 = *(v0 + 96);
          *(v0 + 1192) = *(v0 + 80);
          *(v0 + 1208) = v135;
          v136 = *(v0 + 128);
          *(v0 + 1224) = *(v0 + 112);
          *(v0 + 1240) = v136;
          v137 = *(v0 + 32);
          *(v0 + 1128) = *(v0 + 16);
          *(v0 + 1144) = v137;
          v138 = *(v0 + 64);
          *(v0 + 1160) = *(v0 + 48);
          *(v0 + 1176) = v138;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 9u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v84 = *(v0 + 160);
          *(v0 + 1440) = *(v0 + 144);
          *(v0 + 1456) = v84;
          *(v0 + 1472) = *(v0 + 176);
          *(v0 + 1488) = *(v0 + 192);
          v85 = *(v0 + 96);
          *(v0 + 1376) = *(v0 + 80);
          *(v0 + 1392) = v85;
          v86 = *(v0 + 128);
          *(v0 + 1408) = *(v0 + 112);
          *(v0 + 1424) = v86;
          v87 = *(v0 + 32);
          *(v0 + 1312) = *(v0 + 16);
          *(v0 + 1328) = v87;
          v88 = *(v0 + 64);
          *(v0 + 1344) = *(v0 + 48);
          *(v0 + 1360) = v88;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 0xAu:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v129 = *(v0 + 160);
          *(v0 + 1624) = *(v0 + 144);
          *(v0 + 1640) = v129;
          *(v0 + 1656) = *(v0 + 176);
          *(v0 + 1672) = *(v0 + 192);
          v130 = *(v0 + 96);
          *(v0 + 1560) = *(v0 + 80);
          *(v0 + 1576) = v130;
          v131 = *(v0 + 128);
          *(v0 + 1592) = *(v0 + 112);
          *(v0 + 1608) = v131;
          v132 = *(v0 + 32);
          *(v0 + 1496) = *(v0 + 16);
          *(v0 + 1512) = v132;
          v133 = *(v0 + 64);
          *(v0 + 1528) = *(v0 + 48);
          *(v0 + 1544) = v133;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 0xBu:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v69 = *(v0 + 160);
          *(v0 + 1808) = *(v0 + 144);
          *(v0 + 1824) = v69;
          *(v0 + 1840) = *(v0 + 176);
          *(v0 + 1856) = *(v0 + 192);
          v70 = *(v0 + 96);
          *(v0 + 1744) = *(v0 + 80);
          *(v0 + 1760) = v70;
          v71 = *(v0 + 128);
          *(v0 + 1776) = *(v0 + 112);
          *(v0 + 1792) = v71;
          v72 = *(v0 + 32);
          *(v0 + 1680) = *(v0 + 16);
          *(v0 + 1696) = v72;
          v73 = *(v0 + 64);
          *(v0 + 1712) = *(v0 + 48);
          *(v0 + 1728) = v73;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 0xCu:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v79 = *(v0 + 160);
          *(v0 + 1992) = *(v0 + 144);
          *(v0 + 2008) = v79;
          *(v0 + 2024) = *(v0 + 176);
          *(v0 + 2040) = *(v0 + 192);
          v80 = *(v0 + 96);
          *(v0 + 1928) = *(v0 + 80);
          *(v0 + 1944) = v80;
          v81 = *(v0 + 128);
          *(v0 + 1960) = *(v0 + 112);
          *(v0 + 1976) = v81;
          v82 = *(v0 + 32);
          *(v0 + 1864) = *(v0 + 16);
          *(v0 + 1880) = v82;
          v83 = *(v0 + 64);
          *(v0 + 1896) = *(v0 + 48);
          *(v0 + 1912) = v83;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 0xDu:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v119 = *(v0 + 160);
          *(v0 + 2176) = *(v0 + 144);
          *(v0 + 2192) = v119;
          *(v0 + 2208) = *(v0 + 176);
          *(v0 + 2224) = *(v0 + 192);
          v120 = *(v0 + 96);
          *(v0 + 2112) = *(v0 + 80);
          *(v0 + 2128) = v120;
          v121 = *(v0 + 128);
          *(v0 + 2144) = *(v0 + 112);
          *(v0 + 2160) = v121;
          v122 = *(v0 + 32);
          *(v0 + 2048) = *(v0 + 16);
          *(v0 + 2064) = v122;
          v123 = *(v0 + 64);
          *(v0 + 2080) = *(v0 + 48);
          *(v0 + 2096) = v123;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 0xEu:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v64 = *(v0 + 160);
          *(v0 + 2360) = *(v0 + 144);
          *(v0 + 2376) = v64;
          *(v0 + 2392) = *(v0 + 176);
          *(v0 + 2408) = *(v0 + 192);
          v65 = *(v0 + 96);
          *(v0 + 2296) = *(v0 + 80);
          *(v0 + 2312) = v65;
          v66 = *(v0 + 128);
          *(v0 + 2328) = *(v0 + 112);
          *(v0 + 2344) = v66;
          v67 = *(v0 + 32);
          *(v0 + 2232) = *(v0 + 16);
          *(v0 + 2248) = v67;
          v68 = *(v0 + 64);
          *(v0 + 2264) = *(v0 + 48);
          *(v0 + 2280) = v68;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 0xFu:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v94 = *(v0 + 160);
          *(v0 + 3832) = *(v0 + 144);
          *(v0 + 3848) = v94;
          *(v0 + 3864) = *(v0 + 176);
          *(v0 + 3880) = *(v0 + 192);
          v95 = *(v0 + 96);
          *(v0 + 3768) = *(v0 + 80);
          *(v0 + 3784) = v95;
          v96 = *(v0 + 128);
          *(v0 + 3800) = *(v0 + 112);
          *(v0 + 3816) = v96;
          v97 = *(v0 + 32);
          *(v0 + 3704) = *(v0 + 16);
          *(v0 + 3720) = v97;
          v98 = *(v0 + 64);
          *(v0 + 3736) = *(v0 + 48);
          *(v0 + 3752) = v98;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        case 0x10u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v59 = *(v0 + 160);
          *(v0 + 3464) = *(v0 + 144);
          *(v0 + 3480) = v59;
          *(v0 + 3496) = *(v0 + 176);
          *(v0 + 3512) = *(v0 + 192);
          v60 = *(v0 + 96);
          *(v0 + 3400) = *(v0 + 80);
          *(v0 + 3416) = v60;
          v61 = *(v0 + 128);
          *(v0 + 3432) = *(v0 + 112);
          *(v0 + 3448) = v61;
          v62 = *(v0 + 32);
          *(v0 + 3336) = *(v0 + 16);
          *(v0 + 3352) = v62;
          v63 = *(v0 + 64);
          *(v0 + 3368) = *(v0 + 48);
          *(v0 + 3384) = v63;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
        default:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          v32 = *(v0 + 160);
          *(v0 + 2544) = *(v0 + 144);
          *(v0 + 2560) = v32;
          *(v0 + 2576) = *(v0 + 176);
          *(v0 + 2592) = *(v0 + 192);
          v33 = *(v0 + 96);
          *(v0 + 2480) = *(v0 + 80);
          *(v0 + 2496) = v33;
          v34 = *(v0 + 128);
          *(v0 + 2512) = *(v0 + 112);
          *(v0 + 2528) = v34;
          v35 = *(v0 + 32);
          *(v0 + 2416) = *(v0 + 16);
          *(v0 + 2432) = v35;
          v36 = *(v0 + 64);
          *(v0 + 2448) = *(v0 + 48);
          *(v0 + 2464) = v36;
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
          break;
      }

      v181 = v37[1];
      v182 = *v37;

      v179 = *(v0 + 6944);
      v190 = *(v0 + 6936);
      v139 = *(v0 + 6768);
      v140 = *(v0 + 6752);
      v141 = *(v0 + 6744);
      v142 = *(v0 + 6736);
      v180 = *(v0 + 6664);
      v176 = *(v0 + 6856);
      v177 = *(v0 + 6840);
      (*(v0 + 6824))(v139, *(v0 + 6776), v142);
      outlined init with copy of ServerBag.MLS(v0 + 5896, v0 + 6136);
      v143 = (*(v141 + 80) + 48) & ~*(v141 + 80);
      v144 = (v143 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
      v145 = (v143 + v140 + 191) & 0xFFFFFFFFFFFFFFF8;
      v146 = (v145 + 23) & 0xFFFFFFFFFFFFFFF8;
      v147 = (v146 + 79) & 0xFFFFFFFFFFFFFFF8;
      v178 = (v147 + 31) & 0xFFFFFFFFFFFFFFF8;
      v148 = swift_allocObject();
      *(v0 + 6992) = v148;
      *(v148 + 16) = v177;
      *(v148 + 32) = v176;
      (*(v141 + 32))(v148 + v143, v139, v142);
      v149 = v148 + v144;
      v150 = *(v0 + 3264);
      *(v149 + 96) = *(v0 + 3248);
      *(v149 + 112) = v150;
      v151 = *(v0 + 3232);
      *(v149 + 64) = *(v0 + 3216);
      *(v149 + 80) = v151;
      *(v149 + 176) = *(v0 + 3328);
      v152 = *(v0 + 3312);
      *(v149 + 144) = *(v0 + 3296);
      *(v149 + 160) = v152;
      *(v149 + 128) = *(v0 + 3280);
      v153 = *(v0 + 3168);
      *v149 = *(v0 + 3152);
      *(v149 + 16) = v153;
      v154 = *(v0 + 3200);
      *(v149 + 32) = *(v0 + 3184);
      *(v149 + 48) = v154;
      v155 = (v148 + v145);
      *v155 = v190;
      v155[1] = v179;
      v156 = v148 + v146;
      *(v156 + 64) = *(v0 + 5792);
      v157 = *(v0 + 5776);
      *(v156 + 32) = *(v0 + 5760);
      *(v156 + 48) = v157;
      v158 = *(v0 + 5744);
      *v156 = *(v0 + 5728);
      *(v156 + 16) = v158;
      v159 = v148 + v147;
      *v159 = v185;
      *(v159 + 8) = v184;
      *(v159 + 16) = v183;
      *(v148 + v178) = v180;
      outlined init with take of MLS.KeyUpdatePolicy((v0 + 6136), v148 + ((v178 + 15) & 0xFFFFFFFFFFFFFFF8));
      v160 = *(*v187 + 320);

      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 296, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 3888, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 5368, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
      v186 = (v160 + *v160);
      v161 = swift_task_alloc();
      *(v0 + 7000) = v161;
      *v161 = v0;
      v161[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v162 = *(v0 + 6944);
      v163 = *(v0 + 6936);

      return (v186)(v163, v162, v182, v181, 0, &async function pointer to partial apply for closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v148);
    }

LABEL_48:
    __break(1u);
    JUMPOUT(0x265083A6CLL);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5896));
  v3 = *(v0 + 6928);
  v4 = (*(v0 + 6920) - 1) & *(v0 + 6920);
  if (v4)
  {
    v5 = *(v0 + 6896);
    goto LABEL_11;
  }

  while (1)
  {
    v38 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v38 >= (((1 << *(v0 + 754)) + 63) >> 6))
    {
      break;
    }

    v5 = *(v0 + 6896);
    v4 = *(v5 + 8 * v38 + 64);
    ++v3;
    if (v4)
    {
      v3 = v38;
LABEL_11:
      *(v0 + 6928) = v3;
      *(v0 + 6920) = v4;
      v39 = *(v0 + 6912);
      v40 = *(v0 + 6664);
      v41 = __clz(__rbit64(v4)) | (v3 << 6);
      v42 = (*(v5 + 48) + 16 * v41);
      *(v0 + 6936) = *v42;
      *(v0 + 6944) = v42[1];
      *(v0 + 6952) = *(*(v5 + 56) + 8 * v41);
      v43 = *(**(v40 + v39) + 192);

      v188 = v43 + *v43;
      v44 = swift_task_alloc();
      *(v0 + 6960) = v44;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v44 = v0;
      v45 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
LABEL_12:
      v44[1] = v45;

      __asm { BRAA            X8, X16 }
    }
  }

  v46 = *(v0 + 6904);

  v47 = *(v46 + 32);
  *(v0 + 755) = v47;
  v48 = -1;
  v49 = -1 << v47;
  if (-(-1 << v47) < 64)
  {
    v48 = ~(-1 << -v49);
  }

  v50 = v48 & *(v46 + 64);

  if (v50)
  {
    v51 = 0;
    v52 = *(v0 + 6904);
LABEL_22:
    *(v0 + 7024) = v51;
    *(v0 + 7016) = v50;
    v54 = *(v0 + 6912);
    v55 = *(v0 + 6664);
    v56 = __clz(__rbit64(v50)) | (v51 << 6);
    v57 = (*(v52 + 48) + 16 * v56);
    *(v0 + 7032) = *v57;
    *(v0 + 7040) = v57[1];
    *(v0 + 7048) = *(*(v52 + 56) + 8 * v56);
    v58 = *(**(v55 + v54) + 192);

    v188 = v58 + *v58;
    v44 = swift_task_alloc();
    *(v0 + 7056) = v44;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    *v44 = v0;
    v45 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    goto LABEL_12;
  }

  v53 = 0;
  v52 = *(v0 + 6904);
  while (((63 - v49) >> 6) - 1 != v53)
  {
    v51 = v53 + 1;
    v50 = *(v52 + 8 * v53++ + 72);
    if (v50)
    {
      goto LABEL_22;
    }
  }

  v165 = Logger.logObject.getter();
  v166 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v192 = v168;
    *v167 = 136315138;
    *(v167 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v192);
    _os_log_impl(&dword_264F1F000, v165, v166, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v167, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v168);
    MEMORY[0x266755550](v168, -1, -1);
    MEMORY[0x266755550](v167, -1, -1);
  }

  v169 = *(v0 + 6664);
  v170 = (v169 + *(v0 + 6872));
  v171 = *(v169 + 88);
  ObjectType = swift_getObjectType();
  v173 = v170[1];
  *(v0 + 6528) = *v170;
  *(v0 + 6536) = v173;
  v174 = *(v171 + 168);

  v189 = (v174 + *v174);
  v175 = swift_task_alloc();
  *(v0 + 7400) = v175;
  *v175 = v0;
  v175[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v189(v0 + 6592, v0 + 6528, ObjectType, v171);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 6816);

    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 6816);
    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = *(v0 + 7048);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 6216), v0 + 6296);
  v2 = *(v1 + 16);
  *(v0 + 7064) = v2;
  if (v2)
  {
    v3 = *(v0 + 7048);
    *(v0 + 7160) = vextq_s8(*(v0 + 7072), *(v0 + 7072), 8uLL);
    *(v0 + 7144) = vextq_s8(*(v0 + 7088), *(v0 + 7088), 8uLL);
    *(v0 + 7128) = vextq_s8(*(v0 + 7104), *(v0 + 7104), 8uLL);
    *(v0 + 7120) = 0;
    v5 = *(v3 + 48);
    v4 = *(v3 + 64);
    *(v0 + 4880) = *(v3 + 32);
    *(v0 + 4896) = v5;
    *(v0 + 4912) = v4;
    v7 = *(v3 + 96);
    v6 = *(v3 + 112);
    v8 = *(v3 + 80);
    *(v0 + 4976) = *(v3 + 128);
    *(v0 + 4944) = v7;
    *(v0 + 4960) = v6;
    *(v0 + 4928) = v8;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 4880, v0 + 4984, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 4880, v0 + 5088, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 4880, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    if (os_log_type_enabled(v9, v10))
    {
      v52 = *(v0 + 7040);
      v11 = *(v0 + 7032);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v55 = v13;
      *v12 = 136315650;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v55);
      *(v12 + 12) = 2080;
      v14 = *(v0 + 4888);
      v15 = *(v0 + 4880);

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v55);

      *(v12 + 14) = v16;
      *(v12 + 22) = 2080;
      *(v12 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v52, &v55);
      _os_log_impl(&dword_264F1F000, v9, v10, "SwiftMLSClientCoordinator resending loaded incoming event { clientIdentifier: %s, event: %s, group: %s }", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v13, -1, -1);
      MEMORY[0x266755550](v12, -1, -1);
    }

    v17 = *(v0 + 6664);
    v18 = (v17 + *(v0 + 6872));
    *(v0 + 7176) = v17[12];
    v19 = *(v0 + 4960);
    *(v0 + 5256) = *(v0 + 4944);
    *(v0 + 5272) = v19;
    *(v0 + 5288) = *(v0 + 4976);
    v20 = *(v0 + 4896);
    *(v0 + 5192) = *(v0 + 4880);
    *(v0 + 5208) = v20;
    v21 = *(v0 + 4928);
    *(v0 + 5224) = *(v0 + 4912);
    *(v0 + 5240) = v21;
    outlined init with copy of ServerBag.MLS(v0 + 6296, v0 + 6096);
    *(v0 + 7184) = v17[10];
    *(v0 + 7192) = v17[11];
    *(v0 + 7200) = *v18;
    *(v0 + 7208) = v18[1];
    swift_unknownObjectRetain();
    v22 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v23 = 0;
    v24 = 0;

    return MEMORY[0x2822009F8](v22, v23, v24);
  }

  else
  {

    v25 = *(v0 + 7112);
    v26 = *(v0 + 7104);
    v49 = *(v0 + 7088);
    v53 = *(v0 + 7072);
    v22 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6296));
    v27 = *(v0 + 7024);
    v28 = *(v0 + 7016);
    *(v0 + 7112) = v25;
    *(v0 + 7104) = v26;
    *(v0 + 7088) = v49;
    *(v0 + 7072) = v53;
    v29 = (v28 - 1) & v28;
    if (v29)
    {
      v22 = *(v0 + 6904);
      goto LABEL_13;
    }

    while (1)
    {
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v22, v23, v24);
      }

      v22 = *(v0 + 6904);
      if (v30 >= (((1 << *(v0 + 755)) + 63) >> 6))
      {
        break;
      }

      v29 = *(v22 + 8 * v30 + 64);
      ++v27;
      if (v29)
      {
        v27 = v30;
LABEL_13:
        *(v0 + 7024) = v27;
        *(v0 + 7016) = v29;
        v31 = *(v0 + 6912);
        v32 = *(v0 + 6664);
        v33 = __clz(__rbit64(v29)) | (v27 << 6);
        v34 = (*(v22 + 48) + 16 * v33);
        *(v0 + 7032) = *v34;
        *(v0 + 7040) = v34[1];
        *(v0 + 7048) = *(*(v22 + 56) + 8 * v33);
        v35 = *(**(v32 + v31) + 192);

        v50 = v35 + *v35;
        v36 = swift_task_alloc();
        *(v0 + 7056) = v36;
        lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
        *v36 = v0;
        v36[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

        __asm { BRAA            X8, X16 }
      }
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v55 = v40;
      *v39 = 136315138;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v55);
      _os_log_impl(&dword_264F1F000, v37, v38, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x266755550](v40, -1, -1);
      MEMORY[0x266755550](v39, -1, -1);
    }

    v41 = *(v0 + 6664);
    v42 = (v41 + *(v0 + 6872));
    v43 = *(v41 + 88);
    ObjectType = swift_getObjectType();
    v45 = v42[1];
    *(v0 + 6528) = *v42;
    *(v0 + 6536) = v45;
    v46 = *(v43 + 168);

    v51 = (v46 + *v46);
    v47 = swift_task_alloc();
    *(v0 + 7400) = v47;
    *v47 = v0;
    v47[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

    return v51(v0 + 6592, v0 + 6528, ObjectType, v43);
  }
}

{
  v1 = v0[765];
  v2 = v0[766];
  __swift_project_boxed_opaque_existential_1(v0 + 762, v1);
  v3 = *(v2 + 32);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[902] = v4;
  *v4 = v0;
  v4[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v6(v1, v2);
}

{
  v1 = v0[765];
  v2 = v0[766];
  __swift_project_boxed_opaque_existential_1(v0 + 762, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[905] = v3;
  *v3 = v0;
  v3[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v5(v1, v2);
}

{
  swift_unknownObjectRelease();
  v0[924] = v0[903];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 762);

  v1 = v0[852];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v1, 0);
}

{
  *(*v1 + 7264) = v0;

  if (v0)
  {

    v2 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v2 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[765];
  v2 = v0[766];
  __swift_project_boxed_opaque_existential_1(v0 + 762, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[914] = v3;
  *v3 = v0;
  v3[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v5(v1, v2);
}

{
  swift_unknownObjectRelease();
  v0[924] = v0[908];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 762);

  v1 = v0[852];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v1, 0);
}

{
  swift_unknownObjectRelease();
  v1 = v0[913];
  v2 = v0[910];
  v3 = v0[909];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[913];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[912];
  }

  v0[924] = v0[915];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 762);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v6 = v0[852];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v6, 0);
}

{
  v1 = *(v0 + 7360);
  v17 = *(v0 + 7336);
  v18 = *(v0 + 7368);
  v2 = *(v0 + 7328);
  v3 = *(v0 + 7304);
  v4 = *(v0 + 7280);
  v5 = *(v0 + 7272);
  v6 = *(v0 + 7248);
  v7 = *(v0 + 7232);
  v19 = *(v0 + 7176);
  v8 = *(v0 + 7040);
  v14 = v8;
  v9 = *(v0 + 7032);
  v15 = v9;
  v16 = *(v0 + 7296);
  swift_unknownObjectRelease();
  *(v0 + 4464) = v9;
  *(v0 + 4472) = v8;
  if (v2 >> 60 == 15)
  {
    v2 = 0xC000000000000000;
    v10 = 0;
  }

  else
  {
    v10 = v17;
  }

  if (v3 >> 60 == 15)
  {
    v3 = 0xC000000000000000;
    v11 = 0;
  }

  else
  {
    v11 = v16;
  }

  if ((v7 & 0x100000000) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  *(v0 + 4480) = v7;
  *(v0 + 4488) = v7;
  *(v0 + 4496) = v6;
  *(v0 + 4504) = v5;
  *(v0 + 4512) = v4;
  *(v0 + 4520) = v11;
  *(v0 + 4528) = v3;
  *(v0 + 4536) = v10;
  *(v0 + 4544) = v2;
  *(v0 + 4552) = v18;
  *(v0 + 4560) = v1;
  outlined init with copy of MLS.Group(v0 + 4464, v0 + 4568);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6096));
  *(v0 + 4360) = v15;
  *(v0 + 4368) = v14;
  *(v0 + 4376) = v7;
  *(v0 + 4384) = v7;
  *(v0 + 4392) = v6;
  *(v0 + 4400) = v5;
  *(v0 + 4408) = v4;
  *(v0 + 4416) = v11;
  *(v0 + 4424) = v3;
  *(v0 + 4432) = v10;
  *(v0 + 4440) = v2;
  *(v0 + 4448) = v18;
  *(v0 + 4456) = v1;
  outlined destroy of MLS.Group(v0 + 4360);
  *(v0 + 4704) = *(v0 + 4496);
  *(v0 + 4688) = *(v0 + 4480);
  *(v0 + 4672) = *(v0 + 4464);
  *(v0 + 4768) = *(v0 + 4560);
  *(v0 + 4752) = *(v0 + 4544);
  *(v0 + 4736) = *(v0 + 4528);
  *(v0 + 4720) = *(v0 + 4512);
  v20 = (*(*v19 + 384) + **(*v19 + 384));
  v12 = swift_task_alloc();
  *(v0 + 7376) = v12;
  *v12 = v0;
  v12[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v20(v0 + 5192, v0 + 4672, 0, 0);
}

{
  v2 = *v1;
  v3 = *v1 + 4672;
  *(*v1 + 7384) = v0;

  if (v0)
  {
    v4 = *(v2 + 6816);
    v6 = *(v3 + 64);
    v5 = *(v3 + 80);
    v7 = *(v3 + 48);
    *(v2 + 4872) = *(v3 + 96);
    v9 = *(v3 + 16);
    v8 = *(v3 + 32);
    *(v2 + 4776) = *v3;
    *(v2 + 4792) = v9;
    *(v2 + 4808) = v8;
    *(v2 + 4824) = v7;
    *(v2 + 4840) = v6;
    *(v2 + 4856) = v5;
    outlined destroy of MLS.Group(v2 + 4776);

    v10 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v11 = v4;
  }

  else
  {
    v12 = *(v2 + 6816);
    v14 = *(v3 + 16);
    v13 = *(v3 + 32);
    *(v2 + 4256) = *v3;
    *(v2 + 4272) = v14;
    *(v2 + 4288) = v13;
    v16 = *(v3 + 64);
    v15 = *(v3 + 80);
    v17 = *(v3 + 96);
    *(v2 + 4304) = *(v3 + 48);
    *(v2 + 4352) = v17;
    *(v2 + 4336) = v15;
    *(v2 + 4320) = v16;
    outlined destroy of MLS.Group(v2 + 4256);
    v10 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

{
  swift_unknownObjectRelease();
  v1 = v0[916];
  v2 = v0[913];
  v3 = v0[910];
  v4 = v0[909];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[916];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[917];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[913];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[912];
  }

  v0[924] = v0[919];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 762);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v9 = v0[852];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v9, 0);
}

{
  v9 = v0[847];
  v1 = v0[843];
  v2 = v0[842];
  v3 = v0[832];
  v4 = v0[831];
  v5 = v0[830];
  v6 = v0[829];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  outlined destroy of MLS.SwiftMLSClientPicker(v4);
  outlined destroy of MLS.KeyPackageProvider(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 787);
  (*(v1 + 8))(v9, v2);
  outlined destroy of NSObject?((v0 + 610), &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = (v0 + 4880);
  v2 = *(v0 + 7064);
  v3 = *(v0 + 7120) + 1;
  v4 = outlined destroy of NSObject?(v0 + 4880, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (v3 == v2)
  {

    v7 = *(v0 + 7328);
    v8 = *(v0 + 7304);
    v9 = *(v0 + 7280);
    v10 = *(v0 + 7272);
    if (v7 >> 60 == 15)
    {
      v11 = 0xC000000000000000;
    }

    else
    {
      v11 = *(v0 + 7328);
    }

    if (v7 >> 60 == 15)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v0 + 7336);
    }

    if (v8 >> 60 == 15)
    {
      v13 = 0xC000000000000000;
    }

    else
    {
      v13 = *(v0 + 7304);
    }

    if (v8 >> 60 == 15)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v0 + 7296);
    }

    v4 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6296));
    v15 = *(v0 + 7024);
    v16 = *(v0 + 7016);
    *(v0 + 7112) = v11;
    *(v0 + 7104) = v12;
    *(v0 + 7096) = v13;
    *(v0 + 7088) = v14;
    *(v0 + 7080) = v9;
    *(v0 + 7072) = v10;
    v17 = (v16 - 1) & v16;
    if (v17)
    {
      v4 = *(v0 + 6904);
      goto LABEL_28;
    }

    while (1)
    {
      v45 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      v4 = *(v0 + 6904);
      if (v45 >= (((1 << *(v0 + 755)) + 63) >> 6))
      {
        break;
      }

      v17 = *(v4 + 8 * v45 + 64);
      ++v15;
      if (v17)
      {
        v15 = v45;
LABEL_28:
        *(v0 + 7024) = v15;
        *(v0 + 7016) = v17;
        v46 = *(v0 + 6912);
        v47 = *(v0 + 6664);
        v48 = __clz(__rbit64(v17)) | (v15 << 6);
        v49 = (*(v4 + 48) + 16 * v48);
        *(v0 + 7032) = *v49;
        *(v0 + 7040) = v49[1];
        *(v0 + 7048) = *(*(v4 + 56) + 8 * v48);
        v50 = *(**(v47 + v46) + 192);

        v65 = v50 + *v50;
        v51 = swift_task_alloc();
        *(v0 + 7056) = v51;
        lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
        *v51 = v0;
        v51[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

        __asm { BRAA            X8, X16 }
      }
    }

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v69 = v55;
      *v54 = 136315138;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v69);
      _os_log_impl(&dword_264F1F000, v52, v53, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x266755550](v55, -1, -1);
      MEMORY[0x266755550](v54, -1, -1);
    }

    v56 = *(v0 + 6664);
    v57 = (v56 + *(v0 + 6872));
    v58 = *(v56 + 88);
    ObjectType = swift_getObjectType();
    v60 = v57[1];
    *(v0 + 6528) = *v57;
    *(v0 + 6536) = v60;
    v61 = *(v58 + 168);

    v66 = (v61 + *v61);
    v62 = swift_task_alloc();
    *(v0 + 7400) = v62;
    *v62 = v0;
    v62[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

    return v66(v0 + 6592, v0 + 6528, ObjectType, v58);
  }

  else
  {
    v18 = *(v0 + 7048);
    v19 = *(v0 + 7120) + 1;
    if (v19 >= *(v18 + 16))
    {
LABEL_37:
      __break(1u);
    }

    else
    {
      v20 = *(v0 + 7304);
      v21 = *(v0 + 7296);
      v22 = *(v0 + 7280);
      *(v0 + 7168) = *(v0 + 7272);
      *(v0 + 7160) = v22;
      v23 = *(v0 + 7328);
      v24 = vdupq_lane_s64(v23.i64[0], 0);
      v24.i64[0] = v20;
      *v24.i8 = vmovn_s64(vcgtq_u64(v24, vdupq_n_s64(0xEFFFFFFFFFFFFFFFLL)));
      v25 = vdup_lane_s32(*v24.i8, 1);
      if (v24.i8[0])
      {
        v20 = 0xC000000000000000;
        v21 = 0;
      }

      *(v0 + 7152) = v21;
      *(v0 + 7144) = v20;
      v26.i64[0] = v25.i32[0];
      v26.i64[1] = v25.i32[1];
      *(v0 + 7128) = vbslq_s8(v26, xmmword_2651CBF00, v23);
      *(v0 + 7120) = v19;
      v27 = v18 + 104 * v19;
      v29 = *(v27 + 48);
      v28 = *(v27 + 64);
      *v1 = *(v27 + 32);
      *(v0 + 4896) = v29;
      *(v0 + 4912) = v28;
      v31 = *(v27 + 96);
      v30 = *(v27 + 112);
      v32 = *(v27 + 80);
      *(v0 + 4976) = *(v27 + 128);
      *(v0 + 4944) = v31;
      *(v0 + 4960) = v30;
      *(v0 + 4928) = v32;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 4880, v0 + 4984, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

      outlined init with copy of MLS.OutgoingEventState?(v0 + 4880, v0 + 5088, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      outlined destroy of NSObject?(v0 + 4880, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

      if (os_log_type_enabled(v33, v34))
      {
        v64 = *(v0 + 7032);
        v67 = *(v0 + 7040);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v69 = v36;
        *v35 = 136315650;
        *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v69);
        *(v35 + 12) = 2080;
        v37 = *(v0 + 4888);
        v38 = *(v0 + 4880);

        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v69);

        *(v35 + 14) = v39;
        *(v35 + 22) = 2080;
        *(v35 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v67, &v69);
        _os_log_impl(&dword_264F1F000, v33, v34, "SwiftMLSClientCoordinator resending loaded incoming event { clientIdentifier: %s, event: %s, group: %s }", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v36, -1, -1);
        MEMORY[0x266755550](v35, -1, -1);
      }

      v40 = *(v0 + 6664);
      v41 = (v40 + *(v0 + 6872));
      *(v0 + 7176) = v40[12];
      v42 = *(v0 + 4960);
      *(v0 + 5256) = *(v0 + 4944);
      *(v0 + 5272) = v42;
      *(v0 + 5288) = *(v0 + 4976);
      v43 = *(v0 + 4896);
      *(v0 + 5192) = *v1;
      *(v0 + 5208) = v43;
      v44 = *(v0 + 4928);
      *(v0 + 5224) = *(v0 + 4912);
      *(v0 + 5240) = v44;
      outlined init with copy of ServerBag.MLS(v0 + 6296, v0 + 6096);
      *(v0 + 7184) = v40[10];
      *(v0 + 7192) = v40[11];
      *(v0 + 7200) = *v41;
      *(v0 + 7208) = v41[1];
      swift_unknownObjectRetain();
      v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v5 = 0;
      v6 = 0;
    }

    return MEMORY[0x2822009F8](v4, v5, v6);
  }
}

{
  v2 = *v1;
  *(*v1 + 7408) = v0;

  if (v0)
  {
    v3 = *(v2 + 6816);

    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 6816);

    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v2 = *v1;
  *(*v1 + 7480) = v0;

  v3 = *(v2 + 6816);
  if (v0)
  {
    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *v1;
  *(*v1 + 7512) = v0;

  if (v0)
  {
    v3 = *(v2 + 6816);

    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 6816);

    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = (v0 + 5296);
  v2 = *(v0 + 7464);
  v3 = *(v0 + 7488) + 1;
  result = outlined destroy of MLS.OutgoingEventState(v0 + 5296);
  if (v3 == v2)
  {

    v5 = *(*(v0 + 6664) + *(v0 + 6912));
    v47 = *(*v5 + 192) + **(*v5 + 192);
    v6 = swift_task_alloc();
    *(v0 + 7472) = v6;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    *v6 = v0;
    v6[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

    __asm { BRAA            X8, X16 }
  }

  v7 = *(v0 + 7488) + 1;
  *(v0 + 7488) = v7;
  v8 = *(v0 + 7456);
  if (v7 >= *(v8 + 16))
  {
    __break(1u);
  }

  else
  {
    v9 = v8 + 72 * v7;
    *v1 = *(v9 + 32);
    v11 = *(v9 + 64);
    v10 = *(v9 + 80);
    v12 = *(v9 + 48);
    *(v0 + 5360) = *(v9 + 96);
    *(v0 + 5328) = v11;
    *(v0 + 5344) = v10;
    *(v0 + 5312) = v12;
    outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5656);

    outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5584);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    outlined destroy of MLS.OutgoingEventState(v0 + 5296);

    if (os_log_type_enabled(v13, v14))
    {
      v46 = *(v0 + 7440);
      v48 = *(v0 + 7448);
      v15 = *(v0 + 5336);
      v16 = *(v0 + 5344);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v51 = v18;
      *v17 = 136315650;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v51);
      *(v17 + 12) = 2080;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v51);

      *(v17 + 14) = v19;
      *(v17 + 22) = 2080;
      *(v17 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v51);
      _os_log_impl(&dword_264F1F000, v13, v14, "SwiftMLSClientCoordinator enqueueing loaded outgoing event state { clientIdentifier: %s, event: %s, group: %s }", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v18, -1, -1);
      MEMORY[0x266755550](v17, -1, -1);
    }

    v44 = *(v0 + 7448);
    v49 = *(v0 + 7440);
    v20 = *(v0 + 6824);
    v21 = *(v0 + 6776);
    v22 = *(v0 + 6760);
    v23 = *(v0 + 6752);
    v24 = *(v0 + 6744);
    v25 = *(v0 + 6736);
    v43 = *(v0 + 6664);
    v42 = *(v43 + 96);
    v26 = *(v0 + 5344);
    *(v0 + 5544) = *(v0 + 5328);
    *(v0 + 5560) = v26;
    *(v0 + 5576) = *(v0 + 5360);
    v27 = *(v0 + 5312);
    *(v0 + 5512) = *v1;
    *(v0 + 5528) = v27;
    v40 = *(v0 + 6856);
    v41 = *(v0 + 6840);
    v20(v22, v21, v25);
    v28 = (*(v24 + 80) + 48) & ~*(v24 + 80);
    v29 = (v23 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 79) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v0 + 7496) = v31;
    *(v31 + 16) = v41;
    *(v31 + 32) = v40;
    (*(v24 + 32))(v31 + v28, v22, v25);
    v32 = v31 + v29;
    *(v32 + 64) = *(v0 + 5360);
    v33 = *(v0 + 5344);
    *(v32 + 32) = *(v0 + 5328);
    *(v32 + 48) = v33;
    v34 = *(v0 + 5312);
    *v32 = *v1;
    *(v32 + 16) = v34;
    v35 = (v31 + v30);
    *v35 = v49;
    v35[1] = v44;
    *(v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8)) = v43;
    v36 = *(*v42 + 352);

    outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5440);
    v45 = (v36 + *v36);
    v37 = swift_task_alloc();
    *(v0 + 7504) = v37;
    *v37 = v0;
    v37[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v38 = *(v0 + 7448);
    v39 = *(v0 + 7440);

    return v45(v0 + 5512, v39, v38, &async function pointer to partial apply for closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v31);
  }

  return result;
}

{
  v18 = v0;
  v1 = *(v0 + 6696);
  v2 = *(v0 + 6688);
  v3 = *(v0 + 6680);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 5936), v0 + 5976);
  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  *(v0 + 7520) = v4;
  *(v0 + 7528) = v5;
  (*(v2 + 8))(v1, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 7448);
    v10 = *(v0 + 7440);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v17);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v17);
    _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator dequeuing loaded group version { group: %s, identifier: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v13 = *(v0 + 6664);
  *(v0 + 7536) = v13[12];
  v16 = (*(*v13 + 344) + **(*v13 + 344));
  v14 = swift_task_alloc();
  *(v0 + 7544) = v14;
  *v14 = v0;
  v14[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v16(v0 + 6480, v0 + 5976);
}

{
  v2 = *v1;
  *(*v1 + 7552) = v0;

  if (v0)
  {
    v3 = *(v2 + 6816);

    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 6816);
    v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = v0[847];
  v2 = v0[843];
  v3 = v0[842];
  v4 = v0[832];
  v5 = v0[831];
  v6 = v0[830];
  v7 = v0[829];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  outlined destroy of MLS.SwiftMLSClientPicker(v5);
  outlined destroy of MLS.KeyPackageProvider(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

{
  v9 = v0[847];
  v1 = v0[843];
  v2 = v0[842];
  v3 = v0[832];
  v4 = v0[831];
  v5 = v0[830];
  v6 = v0[829];

  outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  outlined destroy of MLS.SwiftMLSClientPicker(v4);
  outlined destroy of MLS.KeyPackageProvider(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 737);
  (*(v1 + 8))(v9, v2);

  v7 = v0[1];

  return v7();
}

{
  v9 = v0[847];
  v1 = v0[843];
  v2 = v0[842];
  v3 = v0[832];
  v4 = v0[831];
  v5 = v0[830];
  v6 = v0[829];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  outlined destroy of MLS.SwiftMLSClientPicker(v4);
  outlined destroy of MLS.KeyPackageProvider(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 787);
  (*(v1 + 8))(v9, v2);
  outlined destroy of NSObject?((v0 + 610), &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[847];
  v2 = v0[843];
  v3 = v0[842];
  v4 = v0[832];
  v5 = v0[831];
  v6 = v0[830];
  v7 = v0[829];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  outlined destroy of MLS.SwiftMLSClientPicker(v5);
  outlined destroy of MLS.KeyPackageProvider(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

{
  v9 = v0[847];
  v1 = v0[843];
  v2 = v0[842];
  v3 = v0[832];
  v4 = v0[831];
  v5 = v0[830];
  v6 = v0[829];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  outlined destroy of MLS.SwiftMLSClientPicker(v4);
  outlined destroy of MLS.KeyPackageProvider(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  (*(v1 + 8))(v9, v2);
  outlined destroy of MLS.OutgoingEventState((v0 + 662));

  v7 = v0[1];

  return v7();
}

uint64_t MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 7224) = v1;

  if (v1)
  {

    v5 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    *(v4 + 7232) = a1;
    v5 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  *(*v1 + 7248) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
}

{
  v2 = v1[840];
  v3 = v1[839];
  v4 = v1[838];
  v1[909] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[910] = v5;
  (*(v3 + 8))(v2, v4);
  v6 = v1[765];
  v7 = v1[766];
  __swift_project_boxed_opaque_existential_1(v1 + 762, v6);
  v10 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  v1[911] = v8;
  *v8 = v1;
  v8[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v10(v6, v7);
}

void MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  if ((v0[906] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[765];
    v2 = v0[766];
    __swift_project_boxed_opaque_existential_1(v0 + 762, v1);
    v5 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    v0[907] = v3;
    *v3 = v0;
    v3[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v4 = v0[840];

    v5(v4, v1, v2);
  }
}

{
  v1 = *(v0 + 6592);
  *(v0 + 7416) = v1;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 6896);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v76 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v76);
    *(v6 + 12) = 2048;
    v8 = *(v5 + 16);

    *(v6 + 14) = v8;

    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator loaded event states { clientIdentifier: %s, outgoingEventStateCount: %ld }", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v9 = *(v1 + 32);
  *(v0 + 756) = v9;
  v10 = -1;
  v11 = -1 << v9;
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v1 + 64);
  if (v12)
  {
    v13 = 0;
    v14 = *(v0 + 7416);
LABEL_11:
    *(v0 + 7432) = v13;
    *(v0 + 7424) = v12;
    v17 = __clz(__rbit64(v12)) | (v13 << 6);
    v18 = (*(v14 + 48) + 16 * v17);
    *(v0 + 7440) = *v18;
    *(v0 + 7448) = v18[1];
    v19 = *(*(v14 + 56) + 8 * v17);
    *(v0 + 7456) = v19;
    v20 = *(v19 + 16);
    *(v0 + 7464) = v20;
    if (!v20)
    {
      v53 = *(v0 + 6912);
      v54 = *(v0 + 6664);

      v74 = *(**(v54 + v53) + 192) + **(**(v54 + v53) + 192);
      v55 = swift_task_alloc();
      *(v0 + 7472) = v55;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v55 = v0;
      v55[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

      __asm { BRAA            X8, X16 }
    }

    *(v0 + 7488) = 0;
    v21 = *(v19 + 16);

    if (v21)
    {
      v22 = (v0 + 5296);
      *(v0 + 5296) = *(v19 + 32);
      v24 = *(v19 + 64);
      v23 = *(v19 + 80);
      v25 = *(v19 + 48);
      *(v0 + 5360) = *(v19 + 96);
      *(v0 + 5328) = v24;
      *(v0 + 5344) = v23;
      *(v0 + 5312) = v25;
      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5656);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5584);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v0 + 5296);

      if (os_log_type_enabled(v26, v27))
      {
        v71 = *(v0 + 7440);
        v72 = *(v0 + 7448);
        v28 = *(v0 + 5336);
        v29 = *(v0 + 5344);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v76 = v31;
        *v30 = 136315650;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v76);
        *(v30 + 12) = 2080;

        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v76);

        *(v30 + 14) = v32;
        *(v30 + 22) = 2080;
        *(v30 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v76);
        _os_log_impl(&dword_264F1F000, v26, v27, "SwiftMLSClientCoordinator enqueueing loaded outgoing event state { clientIdentifier: %s, event: %s, group: %s }", v30, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v31, -1, -1);
        MEMORY[0x266755550](v30, -1, -1);
      }

      v69 = *(v0 + 7448);
      v73 = *(v0 + 7440);
      v33 = *(v0 + 6824);
      v34 = *(v0 + 6776);
      v35 = *(v0 + 6760);
      v36 = *(v0 + 6752);
      v37 = *(v0 + 6744);
      v38 = *(v0 + 6736);
      v68 = *(v0 + 6664);
      v67 = *(v68 + 96);
      v39 = *(v0 + 5344);
      *(v0 + 5544) = *(v0 + 5328);
      *(v0 + 5560) = v39;
      *(v0 + 5576) = *(v0 + 5360);
      v40 = *(v0 + 5312);
      *(v0 + 5512) = *v22;
      *(v0 + 5528) = v40;
      v65 = *(v0 + 6856);
      v66 = *(v0 + 6840);
      v33(v35, v34, v38);
      v41 = (*(v37 + 80) + 48) & ~*(v37 + 80);
      v42 = (v36 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = (v42 + 79) & 0xFFFFFFFFFFFFFFF8;
      v44 = swift_allocObject();
      *(v0 + 7496) = v44;
      *(v44 + 16) = v66;
      *(v44 + 32) = v65;
      (*(v37 + 32))(v44 + v41, v35, v38);
      v45 = v44 + v42;
      *(v45 + 64) = *(v0 + 5360);
      v46 = *(v0 + 5344);
      *(v45 + 32) = *(v0 + 5328);
      *(v45 + 48) = v46;
      v47 = *(v0 + 5312);
      *v45 = *v22;
      *(v45 + 16) = v47;
      v48 = (v44 + v43);
      *v48 = v73;
      v48[1] = v69;
      *(v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8)) = v68;
      v49 = *(*v67 + 352);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5440);
      v70 = (v49 + *v49);
      v50 = swift_task_alloc();
      *(v0 + 7504) = v50;
      *v50 = v0;
      v50[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v51 = *(v0 + 7448);
      v52 = *(v0 + 7440);

      v70(v0 + 5512, v52, v51, &async function pointer to partial apply for closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v44);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = 0;
    v16 = ((63 - v11) >> 6) - 1;
    while (v16 != v15)
    {
      v13 = v15 + 1;
      v14 = *(v0 + 7416);
      v12 = *(v14 + 8 * v15++ + 72);
      if (v12)
      {
        goto LABEL_11;
      }
    }

    v56 = *(v0 + 6776);
    v57 = *(v0 + 6744);
    v58 = *(v0 + 6736);
    v59 = *(v0 + 6656);
    v60 = *(v0 + 6648);
    v61 = *(v0 + 6640);
    v62 = *(v0 + 6632);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    outlined destroy of MLS.SwiftMLSClientPicker(v60);
    outlined destroy of MLS.KeyPackageProvider(v61);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    (*(v57 + 8))(v56, v58);

    v63 = *(v0 + 8);
    v64 = *(v0 + 6664);

    v63(v64);
  }
}

{
  v1 = *(v0 + 7536);
  v2 = *(v0 + 7528);
  v3 = *(v0 + 7520);
  v4 = *(v0 + 7448);
  v5 = *(v0 + 7440);
  v6 = *(v0 + 6488);
  v7 = *(v0 + 6496);
  *(v0 + 6504) = *(v0 + 6480);
  *(v0 + 6512) = v6;
  *(v0 + 6520) = v7;
  (*(*v1 + 360))(v0 + 6504, v5, v4, v3, v2, 0);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));
  v8 = *(v0 + 7432);
  v9 = (*(v0 + 7424) - 1) & *(v0 + 7424);
  if (v9)
  {
    v10 = *(v0 + 7416);
LABEL_7:
    *(v0 + 7432) = v8;
    *(v0 + 7424) = v9;
    v12 = __clz(__rbit64(v9)) | (v8 << 6);
    v13 = (*(v10 + 48) + 16 * v12);
    *(v0 + 7440) = *v13;
    *(v0 + 7448) = v13[1];
    v14 = *(*(v10 + 56) + 8 * v12);
    *(v0 + 7456) = v14;
    v15 = *(v14 + 16);
    *(v0 + 7464) = v15;
    if (!v15)
    {
      v48 = *(v0 + 6912);
      v49 = *(v0 + 6664);

      v69 = *(**(v49 + v48) + 192) + **(**(v49 + v48) + 192);
      v50 = swift_task_alloc();
      *(v0 + 7472) = v50;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v50 = v0;
      v50[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

      __asm { BRAA            X8, X16 }
    }

    *(v0 + 7488) = 0;
    v16 = *(v14 + 16);

    if (v16)
    {
      v17 = (v0 + 5296);
      *(v0 + 5296) = *(v14 + 32);
      v19 = *(v14 + 64);
      v18 = *(v14 + 80);
      v20 = *(v14 + 48);
      *(v0 + 5360) = *(v14 + 96);
      *(v0 + 5328) = v19;
      *(v0 + 5344) = v18;
      *(v0 + 5312) = v20;
      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5656);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5584);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v0 + 5296);

      if (os_log_type_enabled(v21, v22))
      {
        v66 = *(v0 + 7440);
        v67 = *(v0 + 7448);
        v23 = *(v0 + 5336);
        v24 = *(v0 + 5344);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v71 = v26;
        *v25 = 136315650;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v71);
        *(v25 + 12) = 2080;

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v71);

        *(v25 + 14) = v27;
        *(v25 + 22) = 2080;
        *(v25 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v71);
        _os_log_impl(&dword_264F1F000, v21, v22, "SwiftMLSClientCoordinator enqueueing loaded outgoing event state { clientIdentifier: %s, event: %s, group: %s }", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v26, -1, -1);
        MEMORY[0x266755550](v25, -1, -1);
      }

      v64 = *(v0 + 7448);
      v68 = *(v0 + 7440);
      v28 = *(v0 + 6824);
      v29 = *(v0 + 6776);
      v30 = *(v0 + 6760);
      v31 = *(v0 + 6752);
      v32 = *(v0 + 6744);
      v33 = *(v0 + 6736);
      v63 = *(v0 + 6664);
      v62 = *(v63 + 96);
      v34 = *(v0 + 5344);
      *(v0 + 5544) = *(v0 + 5328);
      *(v0 + 5560) = v34;
      *(v0 + 5576) = *(v0 + 5360);
      v35 = *(v0 + 5312);
      *(v0 + 5512) = *v17;
      *(v0 + 5528) = v35;
      v60 = *(v0 + 6856);
      v61 = *(v0 + 6840);
      v28(v30, v29, v33);
      v36 = (*(v32 + 80) + 48) & ~*(v32 + 80);
      v37 = (v31 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
      v38 = (v37 + 79) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      *(v0 + 7496) = v39;
      *(v39 + 16) = v61;
      *(v39 + 32) = v60;
      (*(v32 + 32))(v39 + v36, v30, v33);
      v40 = v39 + v37;
      *(v40 + 64) = *(v0 + 5360);
      v41 = *(v0 + 5344);
      *(v40 + 32) = *(v0 + 5328);
      *(v40 + 48) = v41;
      v42 = *(v0 + 5312);
      *v40 = *v17;
      *(v40 + 16) = v42;
      v43 = (v39 + v38);
      *v43 = v68;
      v43[1] = v64;
      *(v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8)) = v63;
      v44 = *(*v62 + 352);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5440);
      v65 = (v44 + *v44);
      v45 = swift_task_alloc();
      *(v0 + 7504) = v45;
      *v45 = v0;
      v45[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v46 = *(v0 + 7448);
      v47 = *(v0 + 7440);

      v65(v0 + 5512, v47, v46, &async function pointer to partial apply for closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v39);
    }

    else
    {
LABEL_21:
      __break(1u);
    }
  }

  else
  {
    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v11 >= (((1 << *(v0 + 756)) + 63) >> 6))
      {
        break;
      }

      v10 = *(v0 + 7416);
      v9 = *(v10 + 8 * v11 + 64);
      ++v8;
      if (v9)
      {
        v8 = v11;
        goto LABEL_7;
      }
    }

    v51 = *(v0 + 6776);
    v52 = *(v0 + 6744);
    v53 = *(v0 + 6736);
    v54 = *(v0 + 6656);
    v55 = *(v0 + 6648);
    v56 = *(v0 + 6640);
    v57 = *(v0 + 6632);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    outlined destroy of MLS.SwiftMLSClientPicker(v55);
    outlined destroy of MLS.KeyPackageProvider(v56);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    (*(v52 + 8))(v51, v53);

    v58 = *(v0 + 8);
    v59 = *(v0 + 6664);

    v58(v59);
  }
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 6944);
  if (v3)
  {
    v5 = *(v0 + 6936);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v47 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v47);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator loaded outgoing events cannot find group context { group: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 6928);
  v10 = (*(v0 + 6920) - 1) & *(v0 + 6920);
  if (v10)
  {
    v11 = *(v0 + 6896);
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= (((1 << *(v0 + 754)) + 63) >> 6))
    {
      break;
    }

    v11 = *(v0 + 6896);
    v10 = *(v11 + 8 * v12 + 64);
    ++v9;
    if (v10)
    {
      v9 = v12;
LABEL_10:
      *(v0 + 6928) = v9;
      *(v0 + 6920) = v10;
      v13 = *(v0 + 6912);
      v14 = *(v0 + 6664);
      v15 = __clz(__rbit64(v10)) | (v9 << 6);
      v16 = (*(v11 + 48) + 16 * v15);
      *(v0 + 6936) = *v16;
      *(v0 + 6944) = v16[1];
      *(v0 + 6952) = *(*(v11 + 56) + 8 * v15);
      v17 = *(**(v14 + v13) + 192);

      v44 = v17 + *v17;
      v18 = swift_task_alloc();
      *(v0 + 6960) = v18;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v18 = v0;
      v19 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
LABEL_11:
      v18[1] = v19;

      __asm { BRAA            X8, X16 }
    }
  }

  v20 = *(v0 + 6904);

  v21 = *(v20 + 32);
  *(v0 + 755) = v21;
  v22 = -1;
  v23 = -1 << v21;
  if (-(-1 << v21) < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & *(v20 + 64);

  if (v24)
  {
    v25 = 0;
    v26 = *(v0 + 6904);
LABEL_21:
    *(v0 + 7024) = v25;
    *(v0 + 7016) = v24;
    v28 = *(v0 + 6912);
    v29 = *(v0 + 6664);
    v30 = __clz(__rbit64(v24)) | (v25 << 6);
    v31 = (*(v26 + 48) + 16 * v30);
    *(v0 + 7032) = *v31;
    *(v0 + 7040) = v31[1];
    *(v0 + 7048) = *(*(v26 + 56) + 8 * v30);
    v32 = *(**(v29 + v28) + 192);

    v44 = v32 + *v32;
    v18 = swift_task_alloc();
    *(v0 + 7056) = v18;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    *v18 = v0;
    v19 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    goto LABEL_11;
  }

  v27 = 0;
  v26 = *(v0 + 6904);
  while (((63 - v23) >> 6) - 1 != v27)
  {
    v25 = v27 + 1;
    v24 = *(v26 + 8 * v27++ + 72);
    if (v24)
    {
      goto LABEL_21;
    }
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v47 = v36;
    *v35 = 136315138;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v47);
    _os_log_impl(&dword_264F1F000, v33, v34, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x266755550](v36, -1, -1);
    MEMORY[0x266755550](v35, -1, -1);
  }

  v37 = *(v0 + 6664);
  v38 = (v37 + *(v0 + 6872));
  v39 = *(v37 + 88);
  ObjectType = swift_getObjectType();
  v41 = v38[1];
  *(v0 + 6528) = *v38;
  *(v0 + 6536) = v41;
  v42 = *(v39 + 168);

  v45 = (v42 + *v42);
  v43 = swift_task_alloc();
  *(v0 + 7400) = v43;
  *v43 = v0;
  v43[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  v45(v0 + 6592, v0 + 6528, ObjectType, v39);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 7040);
  if (v3)
  {
    v5 = *(v0 + 7032);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33 = v7;
    *v6 = 136315138;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v33);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_264F1F000, v1, v2, "SwiftMLSClientCoordinator loaded incoming events cannot find group context { group: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 7024);
  v10 = (*(v0 + 7016) - 1) & *(v0 + 7016);
  if (v10)
  {
    v11 = *(v0 + 6904);
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    v11 = *(v0 + 6904);
    if (v12 >= (((1 << *(v0 + 755)) + 63) >> 6))
    {
      break;
    }

    v10 = *(v11 + 8 * v12 + 64);
    ++v9;
    if (v10)
    {
      v9 = v12;
LABEL_10:
      *(v0 + 7024) = v9;
      *(v0 + 7016) = v10;
      v13 = *(v0 + 6912);
      v14 = *(v0 + 6664);
      v15 = __clz(__rbit64(v10)) | (v9 << 6);
      v16 = (*(v11 + 48) + 16 * v15);
      *(v0 + 7032) = *v16;
      *(v0 + 7040) = v16[1];
      *(v0 + 7048) = *(*(v11 + 56) + 8 * v15);
      v17 = *(**(v14 + v13) + 192);

      v30 = v17 + *v17;
      v18 = swift_task_alloc();
      *(v0 + 7056) = v18;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v18 = v0;
      v18[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

      __asm { BRAA            X8, X16 }
    }
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v33);
    _os_log_impl(&dword_264F1F000, v19, v20, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x266755550](v22, -1, -1);
    MEMORY[0x266755550](v21, -1, -1);
  }

  v23 = *(v0 + 6664);
  v24 = (v23 + *(v0 + 6872));
  v25 = *(v23 + 88);
  ObjectType = swift_getObjectType();
  v27 = v24[1];
  *(v0 + 6528) = *v24;
  *(v0 + 6536) = v27;
  v28 = *(v25 + 168);

  v31 = (v28 + *v28);
  v29 = swift_task_alloc();
  *(v0 + 7400) = v29;
  *v29 = v0;
  v29[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  v31(v0 + 6592, v0 + 6528, ObjectType, v25);
}

{
  v1 = v0 + 4096;
  v2 = *(v0 + 6456);
  v3 = *(v0 + 6464);
  v4 = *(v0 + 6472);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  v5 = swift_allocError();
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 7448);
  if (v9)
  {
    v11 = *(v0 + 7440);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v80 = v13;
    *v12 = 136315138;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v80);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator loaded outgoing event states cannot find group context { group: %s }", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);

    if (*(v0 + 7480))
    {
      goto LABEL_6;
    }
  }

  else
  {

    if (*(v0 + 7480))
    {
      goto LABEL_6;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));
LABEL_6:
  v15 = *(v0 + 7432);
  v16 = (*(v0 + 7424) - 1) & *(v0 + 7424);
  if (v16)
  {
    v17 = *(v0 + 7416);
LABEL_12:
    *(v0 + 7432) = v15;
    *(v0 + 7424) = v16;
    v19 = __clz(__rbit64(v16)) | (v15 << 6);
    v20 = (*(v17 + 48) + 16 * v19);
    *(v0 + 7440) = *v20;
    *(v0 + 7448) = v20[1];
    v21 = *(*(v17 + 56) + 8 * v19);
    *(v0 + 7456) = v21;
    v22 = *(v21 + 16);
    *(v0 + 7464) = v22;
    if (!v22)
    {
      v57 = *(v0 + 6912);
      v58 = *(v0 + 6664);

      v78 = *(**(v58 + v57) + 192) + **(**(v58 + v57) + 192);
      v59 = swift_task_alloc();
      *(v0 + 7472) = v59;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v59 = v0;
      v59[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

      __asm { BRAA            X8, X16 }
    }

    *(v0 + 7488) = 0;
    v23 = *(v21 + 16);

    if (v23)
    {
      v24 = (v0 + 5296);
      *(v0 + 5296) = *(v21 + 32);
      v26 = *(v21 + 64);
      v25 = *(v21 + 80);
      v27 = *(v21 + 48);
      *(v0 + 5360) = *(v21 + 96);
      *(v0 + 5328) = v26;
      *(v0 + 5344) = v25;
      *(v0 + 5312) = v27;
      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5656);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5584);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v0 + 5296);

      if (os_log_type_enabled(v28, v29))
      {
        v75 = *(v0 + 7440);
        v76 = *(v0 + 7448);
        v30 = *(v0 + 5336);
        v31 = *(v0 + 5344);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v80 = v33;
        *v32 = 136315650;
        *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v80);
        *(v32 + 12) = 2080;

        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v80);
        v1 = v0 + 4096;

        *(v32 + 14) = v34;
        *(v32 + 22) = 2080;
        *(v32 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v80);
        _os_log_impl(&dword_264F1F000, v28, v29, "SwiftMLSClientCoordinator enqueueing loaded outgoing event state { clientIdentifier: %s, event: %s, group: %s }", v32, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v33, -1, -1);
        MEMORY[0x266755550](v32, -1, -1);
      }

      v73 = *(v0 + 7448);
      v77 = *(v0 + 7440);
      v35 = (v1 + 2760);
      v36 = (v1 + 2744);
      v37 = *(v0 + 6824);
      v38 = *(v0 + 6776);
      v39 = *(v0 + 6760);
      v40 = *(v0 + 6752);
      v41 = *(v0 + 6744);
      v42 = *(v0 + 6736);
      v72 = *(v0 + 6664);
      v71 = *(v72 + 96);
      v43 = *(v0 + 5344);
      *(v0 + 5544) = *(v0 + 5328);
      *(v0 + 5560) = v43;
      *(v0 + 5576) = *(v0 + 5360);
      v44 = *(v0 + 5312);
      *(v0 + 5512) = *v24;
      *(v0 + 5528) = v44;
      v69 = *v35;
      v70 = *v36;
      v37(v39, v38, v42);
      v45 = (*(v41 + 80) + 48) & ~*(v41 + 80);
      v46 = (v40 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = (v46 + 79) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      *(v0 + 7496) = v48;
      *(v48 + 16) = v70;
      *(v48 + 32) = v69;
      (*(v41 + 32))(v48 + v45, v39, v42);
      v49 = v48 + v46;
      *(v49 + 64) = *(v0 + 5360);
      v50 = *(v0 + 5344);
      *(v49 + 32) = *(v0 + 5328);
      *(v49 + 48) = v50;
      v51 = *(v0 + 5312);
      *v49 = *v24;
      *(v49 + 16) = v51;
      v52 = (v48 + v47);
      *v52 = v77;
      v52[1] = v73;
      *(v48 + ((v47 + 23) & 0xFFFFFFFFFFFFFFF8)) = v72;
      v53 = *(*v71 + 352);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5440);
      v74 = (v53 + *v53);
      v54 = swift_task_alloc();
      *(v0 + 7504) = v54;
      *v54 = v0;
      v54[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v55 = *(v0 + 7448);
      v56 = *(v0 + 7440);

      v74(v0 + 5512, v56, v55, &async function pointer to partial apply for closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v48);
    }

    else
    {
LABEL_26:
      __break(1u);
    }
  }

  else
  {
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v18 >= (((1 << *(v0 + 756)) + 63) >> 6))
      {
        break;
      }

      v17 = *(v0 + 7416);
      v16 = *(v17 + 8 * v18 + 64);
      ++v15;
      if (v16)
      {
        v15 = v18;
        goto LABEL_12;
      }
    }

    v60 = *(v0 + 6776);
    v61 = *(v0 + 6744);
    v62 = *(v0 + 6736);
    v63 = *(v0 + 6656);
    v64 = *(v0 + 6648);
    v65 = *(v0 + 6640);
    v66 = *(v0 + 6632);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    outlined destroy of MLS.SwiftMLSClientPicker(v64);
    outlined destroy of MLS.KeyPackageProvider(v65);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    (*(v61 + 8))(v60, v62);

    v67 = *(v0 + 8);
    v68 = *(v0 + 6664);

    v67(v68);
  }
}

{
  v1 = *(v0 + 7552);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 7448);
  if (v4)
  {
    v6 = *(v0 + 7440);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v73 = v8;
    *v7 = 136315138;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v73);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator loaded outgoing event states cannot find group context { group: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);

    if (*(v0 + 7480))
    {
      goto LABEL_6;
    }
  }

  else
  {

    if (*(v0 + 7480))
    {
      goto LABEL_6;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));
LABEL_6:
  v10 = *(v0 + 7432);
  v11 = (*(v0 + 7424) - 1) & *(v0 + 7424);
  if (v11)
  {
    v12 = *(v0 + 7416);
LABEL_12:
    *(v0 + 7432) = v10;
    *(v0 + 7424) = v11;
    v14 = __clz(__rbit64(v11)) | (v10 << 6);
    v15 = (*(v12 + 48) + 16 * v14);
    *(v0 + 7440) = *v15;
    *(v0 + 7448) = v15[1];
    v16 = *(*(v12 + 56) + 8 * v14);
    *(v0 + 7456) = v16;
    v17 = *(v16 + 16);
    *(v0 + 7464) = v17;
    if (!v17)
    {
      v50 = *(v0 + 6912);
      v51 = *(v0 + 6664);

      v71 = *(**(v51 + v50) + 192) + **(**(v51 + v50) + 192);
      v52 = swift_task_alloc();
      *(v0 + 7472) = v52;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v52 = v0;
      v52[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

      __asm { BRAA            X8, X16 }
    }

    *(v0 + 7488) = 0;
    v18 = *(v16 + 16);

    if (v18)
    {
      v19 = (v0 + 5296);
      *(v0 + 5296) = *(v16 + 32);
      v21 = *(v16 + 64);
      v20 = *(v16 + 80);
      v22 = *(v16 + 48);
      *(v0 + 5360) = *(v16 + 96);
      *(v0 + 5328) = v21;
      *(v0 + 5344) = v20;
      *(v0 + 5312) = v22;
      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5656);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5584);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v0 + 5296);

      if (os_log_type_enabled(v23, v24))
      {
        v68 = *(v0 + 7440);
        v69 = *(v0 + 7448);
        v25 = *(v0 + 5336);
        v26 = *(v0 + 5344);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v73 = v28;
        *v27 = 136315650;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v73);
        *(v27 + 12) = 2080;

        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v73);

        *(v27 + 14) = v29;
        *(v27 + 22) = 2080;
        *(v27 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v73);
        _os_log_impl(&dword_264F1F000, v23, v24, "SwiftMLSClientCoordinator enqueueing loaded outgoing event state { clientIdentifier: %s, event: %s, group: %s }", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v28, -1, -1);
        MEMORY[0x266755550](v27, -1, -1);
      }

      v66 = *(v0 + 7448);
      v70 = *(v0 + 7440);
      v30 = *(v0 + 6824);
      v31 = *(v0 + 6776);
      v32 = *(v0 + 6760);
      v33 = *(v0 + 6752);
      v34 = *(v0 + 6744);
      v35 = *(v0 + 6736);
      v65 = *(v0 + 6664);
      v64 = *(v65 + 96);
      v36 = *(v0 + 5344);
      *(v0 + 5544) = *(v0 + 5328);
      *(v0 + 5560) = v36;
      *(v0 + 5576) = *(v0 + 5360);
      v37 = *(v0 + 5312);
      *(v0 + 5512) = *v19;
      *(v0 + 5528) = v37;
      v62 = *(v0 + 6856);
      v63 = *(v0 + 6840);
      v30(v32, v31, v35);
      v38 = (*(v34 + 80) + 48) & ~*(v34 + 80);
      v39 = (v33 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = (v39 + 79) & 0xFFFFFFFFFFFFFFF8;
      v41 = swift_allocObject();
      *(v0 + 7496) = v41;
      *(v41 + 16) = v63;
      *(v41 + 32) = v62;
      (*(v34 + 32))(v41 + v38, v32, v35);
      v42 = v41 + v39;
      *(v42 + 64) = *(v0 + 5360);
      v43 = *(v0 + 5344);
      *(v42 + 32) = *(v0 + 5328);
      *(v42 + 48) = v43;
      v44 = *(v0 + 5312);
      *v42 = *v19;
      *(v42 + 16) = v44;
      v45 = (v41 + v40);
      *v45 = v70;
      v45[1] = v66;
      *(v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) = v65;
      v46 = *(*v64 + 352);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5440);
      v67 = (v46 + *v46);
      v47 = swift_task_alloc();
      *(v0 + 7504) = v47;
      *v47 = v0;
      v47[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v48 = *(v0 + 7448);
      v49 = *(v0 + 7440);

      v67(v0 + 5512, v49, v48, &async function pointer to partial apply for closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v41);
    }

    else
    {
LABEL_26:
      __break(1u);
    }
  }

  else
  {
    while (1)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v13 >= (((1 << *(v0 + 756)) + 63) >> 6))
      {
        break;
      }

      v12 = *(v0 + 7416);
      v11 = *(v12 + 8 * v13 + 64);
      ++v10;
      if (v11)
      {
        v10 = v13;
        goto LABEL_12;
      }
    }

    v53 = *(v0 + 6776);
    v54 = *(v0 + 6744);
    v55 = *(v0 + 6736);
    v56 = *(v0 + 6656);
    v57 = *(v0 + 6648);
    v58 = *(v0 + 6640);
    v59 = *(v0 + 6632);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    outlined destroy of MLS.SwiftMLSClientPicker(v57);
    outlined destroy of MLS.KeyPackageProvider(v58);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    (*(v54 + 8))(v53, v55);

    v60 = *(v0 + 8);
    v61 = *(v0 + 6664);

    v60(v61);
  }
}