uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 24 * v8);
  specialized _NativeDictionary._delete(at:)(v8, v10);
  *v5 = v10;
  return v11;
}

char *specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v11;
    }

    outlined destroy of IdentifiedDocumentGroupConfiguration(*(v10 + 48) + (v8 << 7));
    outlined init with take of WeakBox<Swift.AnyObject>(*(v10 + 56) + 8 * v8, a2, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78], type metadata accessor for SceneStorage<TabSidebarCustomization>);
    result = specialized _NativeDictionary._delete(at:)(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v15;
    }

    outlined destroy of TableRowID(*(v9 + 48) + 48 * v7);
    v10 = *(v9 + 56) + 56 * v7;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v13 = *(v10 + 48);
    *a2 = *v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v13;
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    *(a2 + 49) = 0;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 256;
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
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
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      if ((v9 - 2) >= 3)
      {
        MEMORY[0x18D00F6F0](0);
        v10 = v9 & 1;
      }

      else
      {
        v10 = v9 - 1;
      }

      MEMORY[0x18D00F6F0](v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v11)
      {
LABEL_13:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
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
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v11);
      if ((v12 - 2) >= 3)
      {
        MEMORY[0x18D00F6F0](0);
        v13 = v12 & 1;
      }

      else
      {
        v13 = v12 - 1;
      }

      MEMORY[0x18D00F6F0](v13);
      result = Hasher._finalize()();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v14)
      {
LABEL_13:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + v9);
        if (16 * v3 != v9 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
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
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v12);
      MEMORY[0x18D00F6F0](v13);
      result = Hasher._finalize()();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 40 * v3;
        v20 = (v18 + 40 * v6);
        if (v3 != v6 || v19 >= v20 + 40)
        {
          v9 = *v20;
          v10 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v9;
          *(v19 + 16) = v10;
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
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v31 = v4;
    do
    {
      v11 = v7;
      v12 = v2;
      v13 = *(v2 + 48) + 48 * v6;
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v15);
      if (v16 == 6)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x18D00F6F0](v14);
        MEMORY[0x18D00F6F0](v16);
        MEMORY[0x18D00F6F0](v17);
      }

      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v7 = v11;
      v19 = result & v11;
      v2 = v12;
      if (v3 >= v8)
      {
        v4 = v31;
        if (v19 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v31;
        if (v19 >= v8)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v19)
      {
LABEL_13:
        v20 = *(v12 + 48);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (v3 != v6 || v21 >= v22 + 3)
        {
          v23 = *v22;
          v24 = v22[2];
          v21[1] = v22[1];
          v21[2] = v24;
          *v21 = v23;
        }

        v25 = *(v12 + 56);
        v26 = v25 + 40 * v3;
        v27 = (v25 + 40 * v6);
        if (v3 != v6 || v26 >= v27 + 40)
        {
          v9 = *v27;
          v10 = v27[1];
          *(v26 + 32) = *(v27 + 4);
          *v26 = v9;
          *(v26 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
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
    v28 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v29 = v4;
    do
    {
      v8 = v7;
      v9 = v2;
      v10 = *(v2 + 48) + 48 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v12);
      if (v13 == 6)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x18D00F6F0](v11);
        MEMORY[0x18D00F6F0](v13);
        MEMORY[0x18D00F6F0](v14);
      }

      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v7 = v8;
      v16 = result & v8;
      v2 = v9;
      if (v3 >= v28)
      {
        v4 = v29;
        if (v16 < v28)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v29;
        if (v16 >= v28)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v16)
      {
LABEL_13:
        v17 = *(v9 + 48);
        v18 = (v17 + 48 * v3);
        v19 = (v17 + 48 * v6);
        if (v3 != v6 || v18 >= v19 + 3)
        {
          v20 = *v19;
          v21 = v19[2];
          v18[1] = v19[1];
          v18[2] = v21;
          *v18 = v20;
        }

        v22 = *(v9 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
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
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v10);
      MEMORY[0x18D00F6F0](v11);
      result = Hasher._finalize()();
      v12 = result & v7;
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
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
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
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v28 = v4;
    do
    {
      v9 = v2;
      v10 = (*(v2 + 48) + 16 * v6);
      v11 = v7;
      v12 = *v10;
      v13 = v10[1];
      v14 = v10[2];
      v15 = v10[3];
      v16 = v8;
      Hasher.init(_seed:)();
      v17 = v12;
      v7 = v11;
      Hasher._combine(_:)(v17);
      Hasher._combine(_:)(v13);
      Hasher._combine(_:)(v14);
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v8 = v16;
      v18 = result & v11;
      if (v3 >= v16)
      {
        if (v18 < v16)
        {
          v4 = v28;
          v2 = v9;
        }

        else
        {
          v4 = v28;
          v2 = v9;
          if (v3 >= v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v28;
        v2 = v9;
        if (v18 >= v8 || v3 >= v18)
        {
LABEL_11:
          v19 = *(v2 + 48);
          v20 = (v19 + 16 * v3);
          v21 = (v19 + 16 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
          }

          v22 = *(v2 + 56);
          v23 = (v22 + 16 * v3);
          v24 = (v22 + 16 * v6);
          if (v3 != v6 || v23 >= v24 + 1)
          {
            *v23 = *v24;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v11;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
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
      v9 = *(*(a2 + 48) + 4 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
        v12 = (v11 + 4 * v3);
        v13 = (v11 + 4 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
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
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v11);
      result = Hasher._finalize()();
      v12 = result & v7;
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
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (40 * v3 < (40 * v6) || v17 >= v18 + 40 || v3 != v6)
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
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
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
      Selector.hash(into:)();
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 40 * v3;
        v17 = (v15 + 40 * v6);
        if (v3 != v6 || v16 >= v17 + 40)
        {
          v9 = *v17;
          v10 = v17[1];
          *(v16 + 32) = *(v17 + 4);
          *v16 = v9;
          *(v16 + 16) = v10;
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
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v27 = v4;
    do
    {
      v10 = 32 * v6;
      v11 = v2;
      v12 = *(v2 + 48) + 32 * v6;
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      v15 = v8;
      Hasher.init(_seed:)();
      String.hash(into:)();
      MEMORY[0x18D00F6F0](v13);
      MEMORY[0x18D00F6F0](v14);
      result = Hasher._finalize()();
      v8 = v15;
      v16 = result & v7;
      if (v3 >= v15)
      {
        if (v16 < v15)
        {
          v4 = v27;
          v2 = v11;
        }

        else
        {
          v4 = v27;
          v2 = v11;
          if (v3 >= v16)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v27;
        v2 = v11;
        if (v16 >= v8 || v3 >= v16)
        {
LABEL_11:
          v17 = *(v2 + 48);
          v18 = (v17 + 32 * v3);
          v19 = (v17 + v10);
          if (32 * v3 != v10 || v18 >= v19 + 2)
          {
            v20 = v19[1];
            *v18 = *v19;
            v18[1] = v20;
          }

          v21 = *(v2 + 56);
          v22 = v21 + 24 * v3;
          v23 = (v21 + 24 * v6);
          if (v3 != v6 || v22 >= v23 + 24)
          {
            v9 = *v23;
            *(v22 + 16) = *(v23 + 2);
            *v22 = v9;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(v2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v26;
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
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
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
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = *(v9 + 1);
      Hasher.init(_seed:)();
      if (v10 == 3)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x18D00F6F0](v10);
      }

      MEMORY[0x18D00F6F0](v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v12)
      {
LABEL_13:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
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
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v11);
      MEMORY[0x18D00F6F0](v12);
      result = Hasher._finalize()();
      v13 = result & v7;
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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
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

void *specialized _NativeDictionary._delete(at:)(void *result, uint64_t a2)
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
      outlined init with copy of AccessibilityRelationshipScope.Key(*(a2 + 48) + 48 * v6, v22);
      Hasher.init(_seed:)();
      AnyHashable.hash(into:)();
      MEMORY[0x18D00F6F0](v22[5]);
      v9 = Hasher._finalize()();
      result = outlined destroy of AccessibilityRelationshipScope.Key(v22);
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

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
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
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v28 = v4;
    do
    {
      v9 = v7;
      v10 = v2;
      v11 = *(v2 + 48) + 48 * v6;
      v13 = *v11;
      v12 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v16 = *(v11 + 32);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v13);
      if (v14 == 6)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x18D00F6F0](v12);
        MEMORY[0x18D00F6F0](v14);
        MEMORY[0x18D00F6F0](v15);
      }

      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v7 = v9;
      v17 = result & v9;
      v2 = v10;
      if (v3 >= v8)
      {
        v4 = v28;
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v28;
        if (v17 >= v8)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v17)
      {
LABEL_13:
        v18 = *(v10 + 48);
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

        v23 = *(v10 + 56);
        result = v23 + 72 * v3;
        v24 = (v23 + 72 * v6);
        if (v3 != v6 || result >= v24 + 72)
        {
          result = memmove(result, v24, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
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
      v9 = *(a2 + 48) + 24 * v6;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v10);
      MEMORY[0x18D00F6F0](v11);
      MEMORY[0x18D00F6F0](v12);
      result = Hasher._finalize()();
      v13 = result & v7;
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
        v15 = v14 + 24 * v3;
        v16 = (v14 + 24 * v6);
        if (v3 != v6 || v15 >= v16 + 24)
        {
          v17 = *v16;
          *(v15 + 16) = *(v16 + 2);
          *v15 = v17;
        }

        v18 = *(a2 + 56);
        result = v18 + 360 * v3;
        v19 = (v18 + 360 * v6);
        if (360 * v3 < (360 * v6) || result >= v19 + 360 || v3 != v6)
        {
          result = memmove(result, v19, 0x168uLL);
          v3 = v6;
        }
      }

LABEL_4:
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
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 96 * v3;
        v15 = (v14 + 96 * v6);
        if (96 * v3 < (96 * v6) || result >= v15 + 96 || v3 != v6)
        {
          result = memmove(result, v15, 0x60uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
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
      v9 = *(*(a2 + 48) + 4 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
      v12 = (v11 + 4 * v3);
      v13 = (v11 + 4 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      result = v14 + 184 * v3;
      if (184 * v3 < (184 * v6) || result >= v14 + 184 * v6 + 184)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
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
        goto LABEL_18;
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

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
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
      outlined init with copy of NavigationLinkSelectionIdentifier(*(a2 + 48) + (v6 << 6), v30);
      Hasher.init(_seed:)();
      outlined init with copy of WeakBox<Swift.AnyObject>(v30, &v27, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
      if (*(&v28 + 1))
      {
        v24 = v27;
        v25 = v28;
        v26 = v29;
        Hasher._combine(_:)(1u);
        v9 = *(&v25 + 1);
        v10 = v26;
        __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
        (*(v10 + 24))(v23, v9, v10);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v23);
        outlined destroy of AnyNavigationLinkPresentedValue(&v24);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (*(&v31 + 1) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v27 = v31;
        Hasher._combine(_:)(1u);

        _ViewList_ID.Canonical.hash(into:)();
      }

      MEMORY[0x18D00F6F0](v32);
      v11 = Hasher._finalize()();
      result = outlined destroy of NavigationLinkSelectionIdentifier(v30);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_16;
      }

LABEL_17:
      v13 = *(a2 + 48);
      v14 = (v13 + (v3 << 6));
      v15 = (v13 + (v6 << 6));
      if (v3 != v6 || v14 >= v15 + 4)
      {
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[3];
        v14[2] = v15[2];
        v14[3] = v18;
        *v14 = v16;
        v14[1] = v17;
      }

      v19 = *(a2 + 56);
      result = v19 + 192 * v3;
      if (v3 < v6 || result >= v19 + 192 * v6 + 192)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
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
        goto LABEL_24;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_16:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_24:
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
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 96 * v3;
        v15 = (v14 + 96 * v6);
        if (96 * v3 < (96 * v6) || result >= v15 + 96 || v3 != v6)
        {
          result = memmove(result, v15, 0x60uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
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
      v9 = *(*(a2 + 48) + 4 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
        v12 = (v11 + 4 * v3);
        v13 = (v11 + 4 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 120 * v3;
        v15 = (v14 + 120 * v6);
        if (v3 != v6 || result >= v15 + 120)
        {
          result = memmove(result, v15, 0x78uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
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
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      result = v14 + 8 * v3;
      if (v3 < v6 || result >= v14 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
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
        goto LABEL_18;
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

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
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
    v32 = v2;
    v33 = v4;
    v31 = v7;
    do
    {
      v34 = 48 * v6;
      v9 = *(v2 + 48) + 48 * v6;
      v10 = v8;
      v11 = *v9;
      v12 = *(v9 + 8);
      v13 = *(v9 + 16);
      v14 = *(v9 + 24);
      v15 = *(v9 + 32);
      v16 = v3;
      v17 = *(v9 + 40);
      Hasher.init(_seed:)();
      v18 = v11;
      v8 = v10;
      MEMORY[0x18D00F6F0](v18);
      MEMORY[0x18D00F6F0](v12);
      MEMORY[0x18D00F6F0](v13);
      MEMORY[0x18D00F6F0](v14);
      MEMORY[0x18D00F6F0](v15);
      v19 = v17;
      v3 = v16;
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v20 = result & v31;
      if (v16 >= v10)
      {
        if (v20 < v10)
        {
          v2 = v32;
          v4 = v33;
          goto LABEL_4;
        }

        v2 = v32;
        if (v16 >= v20)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v2 = v32;
        if (v20 >= v10 || v16 >= v20)
        {
LABEL_11:
          v21 = *(v2 + 48);
          v22 = (v21 + 48 * v16);
          v23 = (v21 + v34);
          if (48 * v16 < v34 || v22 >= v23 + 3 || v16 != v6)
          {
            v24 = *v23;
            v25 = v23[2];
            v22[1] = v23[1];
            v22[2] = v25;
            *v22 = v24;
          }

          v26 = *(v2 + 56);
          result = v26 + 176 * v16;
          v27 = (v26 + 176 * v6);
          v4 = v33;
          if (176 * v16 < (176 * v6) || result >= v27 + 176 || v16 != v6)
          {
            result = memmove(result, v27, 0xB0uLL);
            v3 = v6;
          }

          goto LABEL_4;
        }
      }

      v4 = v33;
LABEL_4:
      v6 = (v6 + 1) & v31;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x18D00F6C0](*(a2 + 40), *v10);
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
          result = v15 + 192 * v3;
          v16 = (v15 + 192 * v6);
          if (192 * v3 < (192 * v6) || result >= v16 + 192 || v3 != v6)
          {
            result = memmove(result, v16, 0xC0uLL);
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
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

char *specialized _NativeDictionary._delete(at:)(char *result, uint64_t a2)
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
      outlined init with copy of ToolbarPlacement.Role(*(a2 + 48) + 40 * v6, v27);
      Hasher.init(_seed:)();
      outlined init with copy of ToolbarPlacement.Role(v27, &v24);
      if (*(&v25 + 1) <= 2)
      {
        if (*(&v25 + 1))
        {
          if (*(&v25 + 1) == 1)
          {
            v9 = 1;
          }

          else
          {
            if (*(&v25 + 1) != 2)
            {
              goto LABEL_17;
            }

            v9 = 2;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else if (*(&v25 + 1) > 4)
      {
        if (*(&v25 + 1) == 5)
        {
          v9 = 5;
        }

        else
        {
          if (*(&v25 + 1) != 6)
          {
LABEL_17:
            v22[0] = v24;
            v22[1] = v25;
            v23 = v26;
            MEMORY[0x18D00F6F0](6);
            AnyHashable.hash(into:)();
            outlined destroy of AnyHashable(v22);
            goto LABEL_22;
          }

          v9 = 7;
        }
      }

      else if (*(&v25 + 1) == 3)
      {
        v9 = 3;
      }

      else
      {
        v9 = 4;
      }

      MEMORY[0x18D00F6F0](v9);
LABEL_22:
      v10 = Hasher._finalize()();
      result = outlined destroy of ToolbarPlacement.Role(v27);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_27;
      }

      if (v3 >= v11)
      {
LABEL_27:
        v12 = *(a2 + 48);
        v13 = v12 + 40 * v3;
        v14 = (v12 + 40 * v6);
        if (v3 != v6 || v13 >= v14 + 40)
        {
          v15 = *v14;
          v16 = v14[1];
          *(v13 + 32) = *(v14 + 4);
          *v13 = v15;
          *(v13 + 16) = v16;
        }

        v17 = *(a2 + 56);
        result = (v17 + 80 * v3);
        v18 = (v17 + 80 * v6);
        if (80 * v3 < (80 * v6) || result >= v18 + 80 || v3 != v6)
        {
          result = memmove(result, v18, 0x50uLL);
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
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 288 * v3);
        v15 = (v14 + 288 * v6);
        if (288 * v3 < (288 * v6) || result >= v15 + 288 || v3 != v6)
        {
          result = memmove(result, v15, 0x120uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
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
      v9 = v6 << 7;
      outlined init with copy of IdentifiedDocumentGroupConfiguration(*(a2 + 48) + (v6 << 7), v18);
      Hasher.init(_seed:)();
      v10 = v20;
      if (v21)
      {
        MEMORY[0x18D00F6F0](v19);
        Hasher._combine(_:)(v10);
      }

      else
      {
        String.hash(into:)();
      }

      v11 = Hasher._finalize()();
      result = outlined destroy of IdentifiedDocumentGroupConfiguration(v18);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_13;
      }

LABEL_14:
      v13 = *(a2 + 48);
      result = (v13 + (v3 << 7));
      v14 = (v13 + v9);
      if (v3 << 7 != v9 || result >= v14 + 128)
      {
        result = memmove(result, v14, 0x80uLL);
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        type metadata accessor for SceneStorage<TabSidebarCustomization>(0, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78]);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        type metadata accessor for SceneStorage<TabSidebarCustomization>(0, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78]);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_21:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
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
      v9 = v6 << 7;
      outlined init with copy of IdentifiedDocumentGroupConfiguration(*(a2 + 48) + (v6 << 7), v21);
      Hasher.init(_seed:)();
      v10 = v23;
      if (v24)
      {
        MEMORY[0x18D00F6F0](v22);
        Hasher._combine(_:)(v10);
      }

      else
      {
        String.hash(into:)();
      }

      v11 = Hasher._finalize()();
      result = outlined destroy of IdentifiedDocumentGroupConfiguration(v21);
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
        goto LABEL_13;
      }

      if (v3 >= v12)
      {
LABEL_13:
        v13 = *(a2 + 48);
        result = (v13 + (v3 << 7));
        v14 = (v13 + v9);
        if (v3 << 7 != v9 || result >= v14 + 128)
        {
          result = memmove(result, v14, 0x80uLL);
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

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
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
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 48 * v3);
          v22 = (v20 + 48 * v6);
          if (v3 != v6 || v21 >= v22 + 3)
          {
            v9 = *v22;
            v10 = v22[2];
            v21[1] = v22[1];
            v21[2] = v10;
            *v21 = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v12 = v11;
      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 40 * v3;
        v20 = (v18 + 40 * v6);
        if (v3 != v6 || v19 >= v20 + 40)
        {
          v9 = *v20;
          v10 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v9;
          *(v19 + 16) = v10;
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
}

{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v38 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = *(v14 + 56);
    v36 = (v14 - 8);
    v37 = v15;
    do
    {
      v16 = v8;
      v17 = v39 * v10;
      v18 = v13;
      v19 = v14;
      v37(v7, *(a2 + 48) + v39 * v10, v4);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v36)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v38)
      {
        if (v21 >= v38 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v39 * a1;
          v26 = v24 + v17 + v39;
          v27 = v39 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v39 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v10);
          if (a1 != v10 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v38 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

{
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v7);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = v13 & v9;
      if (v4 >= v10)
      {
        if (v14 < v10 || v4 < v14)
        {
          goto LABEL_5;
        }
      }

      else if (v14 < v10 && v4 < v14)
      {
        goto LABEL_5;
      }

      v17 = *(a2 + 48);
      v18 = (v17 + 8 * v4);
      v19 = (v17 + 8 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      v23 = v20 + v21 * v4;
      v24 = v21 * v7;
      v25 = v20 + v21 * v7 + v21;
      if (v22 < v24 || v23 >= v25)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v24)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

void specialized _NativeDictionary.copy()(void (*a1)(void, double), void (*a2)(_BYTE *, unint64_t))
{
  v37 = a2;
  v4 = v2;
  v36 = type metadata accessor for CodingUserInfoKey();
  v39 = *(v36 - 8);
  v5 = MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0, v5);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v32 = v4;
    v10 = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v12)
    {
      memmove(v10, (v7 + 64), 8 * v12);
    }

    v14 = 0;
    v15 = *(v7 + 16);
    v38 = v9;
    *(v9 + 16) = v15;
    v16 = 1 << *(v7 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v7 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v35;
        v27 = v36;
        (*(v39 + 16))(v35, *(v7 + 48) + v25, v36);
        v23 *= 32;
        outlined init with copy of Any(*(v7 + 56) + v23, v41);
        v28 = v7;
        v29 = v38;
        (*(v24 + 32))(*(v38 + 48) + v25, v26, v27);
        v30 = *(v29 + 56);
        v7 = v28;
        v37(v41, v30 + v23);
        v18 = v40;
      }

      while (v40);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v4 = v32;
        v9 = v38;
        goto LABEL_21;
      }

      v22 = *(v11 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v40 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v9;
  }
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x18D00F6F0](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *v5;
      v5 += 24;
      MEMORY[0x18D00F6F0](v6);

      String.hash(into:)();
      result = outlined consume of TabCustomizationID.Base();
      --v3;
    }

    while (v3);
  }

  return result;
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x18D00F6F0](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v6));
      --v3;
    }

    while (v3);
  }
}

uint64_t specialized TabSidebarCustomizationTransform.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for TabSidebarCustomization?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TabSidebarCustomization(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v27);
  v14 = swift_dynamicCast();
  v15 = *(v11 + 56);
  if (v14)
  {
    v15(v9, 0, 1, v10);
    outlined init with take of TabSidebarCustomization(v9, v13, type metadata accessor for TabSidebarCustomization);
    TabViewCustomization.removeTransientIdentifiers()();
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabSidebarCustomization and conformance TabSidebarCustomization, type metadata accessor for TabSidebarCustomization, protocol conformance descriptor for TabSidebarCustomization);
    v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v20 = v19;

    v23 = a3;
    v24 = a4;

    AnyHashable.init<A>(_:)();
    if (v20 >> 60 == 15)
    {
      v18 = 0;
      v20 = 0;
      v21 = 0;
      v25 = 0;
    }

    else
    {
      v21 = MEMORY[0x1E6969080];
    }

    v23 = v18;
    v24 = v20;
    v26 = v21;
    specialized Dictionary.subscript.setter(&v23, v27);
    v16 = type metadata accessor for TabSidebarCustomization;
    v17 = v13;
  }

  else
  {
    v15(v9, 1, 1, v10);
    v16 = type metadata accessor for TabSidebarCustomization?;
    v17 = v9;
  }

  return outlined destroy of TabSidebarCustomization(v17, v16);
}

uint64_t specialized static TabSidebarCustomizationTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28[0] = a2;
  type metadata accessor for TabSidebarCustomization?(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - v14;
  outlined init with copy of WeakBox<Swift.AnyObject>(a1, v29, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (v30)
  {
    v16 = type metadata accessor for TabSidebarCustomization(0);
    v17 = swift_dynamicCast();
    (*(*(v16 - 8) + 56))(v15, v17 ^ 1u, 1, v16);
  }

  else
  {
    outlined destroy of Any?(v29);
    v16 = type metadata accessor for TabSidebarCustomization(0);
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  type metadata accessor for TabSidebarCustomization(0);
  v18 = *(*(v16 - 8) + 48);
  if (!v18(v15, 1, v16))
  {
    TabViewCustomization.removeTransientIdentifiers()();
  }

  outlined init with copy of TabSidebarCustomization(v15, v12, type metadata accessor for TabSidebarCustomization?);
  v19 = v18(v12, 1, v16);
  outlined destroy of TabSidebarCustomization(v12, type metadata accessor for TabSidebarCustomization?);
  if (v19 == 1)
  {
    v20 = MEMORY[0x18D00C850](a3, a4);
    [v28[0] removeObjectForKey_];
  }

  else
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    outlined init with copy of TabSidebarCustomization(v15, v9, type metadata accessor for TabSidebarCustomization?);
    lazy protocol witness table accessor for type TabSidebarCustomization? and conformance <A> A?();
    v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v23 = v22;
    outlined destroy of TabSidebarCustomization(v9, type metadata accessor for TabSidebarCustomization?);

    outlined copy of Data._Representation(v21, v23);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v25.n128_f64[0] = outlined consume of Data._Representation(v21, v23);
    v26 = MEMORY[0x18D00C850](a3, a4, v25);
    [v28[0] setObject:isa forKey:v26];
    swift_unknownObjectRelease();

    outlined consume of Data?(v21, v23);
  }

  return outlined destroy of TabSidebarCustomization(v15, type metadata accessor for TabSidebarCustomization?);
}

unint64_t lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabSidebarCustomization.CodingKeys, &unk_1EFFBBD40, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabSidebarCustomization.CodingKeys, &unk_1EFFBBD40, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabSidebarCustomization.CodingKeys, &unk_1EFFBBD40, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabSidebarCustomization.CodingKeys, &unk_1EFFBBD40, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for TabSidebarCustomization(uint64_t a1)
{
  result = type metadata singleton initialization cache for TabSidebarCustomization;
  if (!type metadata singleton initialization cache for TabSidebarCustomization)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of TabViewCustomization(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabViewCustomization(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabGroupCustomizationEntry.CodingKeys, &unk_1EFFBBCB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabGroupCustomizationEntry.CodingKeys, &unk_1EFFBBCB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabGroupCustomizationEntry.CodingKeys, &unk_1EFFBBCB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabGroupCustomizationEntry.CodingKeys, &unk_1EFFBBCB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [TabCustomizationID] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [TabCustomizationID](255, &lazy cache variable for type metadata for [TabCustomizationID], &type metadata for TabCustomizationID, MEMORY[0x1E69E62F8]);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for <> AuxiliaryContent<A, B>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> AuxiliaryContent<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t associated type witness table accessor for TabContent.Body : TabContent in <> TabGroup<A, B, C, D>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 24);
  v5 = vextq_s8(*(a3 - 16), *(a3 - 16), 8uLL);
  v6 = v3;
  return swift_getWitnessTable(protocol conformance descriptor for <> TabGroup<A, B, C, D>, a1, &v5);
}

uint64_t instantiation function for generic protocol witness table for <> TabGroup<A, B, C, D>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *(a3 + 2);
  v6 = *a3;
  v7 = v4;
  result = swift_getWitnessTable(protocol conformance descriptor for <> TabGroup<A, B, C, D>, a2, &v6);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TabGroupCustomizationEntry and conformance TabGroupCustomizationEntry()
{
  result = lazy protocol witness table cache variable for type TabGroupCustomizationEntry and conformance TabGroupCustomizationEntry;
  if (!lazy protocol witness table cache variable for type TabGroupCustomizationEntry and conformance TabGroupCustomizationEntry)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabGroupCustomizationEntry, &type metadata for TabGroupCustomizationEntry, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabGroupCustomizationEntry and conformance TabGroupCustomizationEntry);
  }

  return result;
}

uint64_t type metadata completion function for AuxiliaryContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for TabGroup(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for TabSection(319, v4);
  if (v3 <= 0x3F)
  {
    *&v4[0] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TabGroup(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v6 = a3[4];
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = (v5 + v8) & ~v8;
  v11 = *(v7 + 64);
  v12 = *(v6 - 8);
  v13 = *(v12 + 80);
  v14 = v11 + v13;
  v15 = ((v11 + v13 + v10) & ~v13) + *(v12 + 64);
  v16 = (*(v7 + 80) | *(v4 + 80) | *(v12 + 80));
  if (v16 <= 7 && v15 <= 0x18 && ((*(v7 + 80) | *(v4 + 80) | *(v12 + 80)) & 0x100000) == 0)
  {
    v20 = ~v8;
    v21 = ~v13;
    v25 = a3[3];
    (*(v4 + 16))(a1);
    v23 = (a2 + v9) & v20;
    (*(v7 + 16))((v3 + v9) & v20, v23, v25);
    (*(v12 + 16))((((v3 + v9) & v20) + v14) & v21, (v23 + v14) & v21, v6);
  }

  else
  {
    v19 = *a2;
    *v3 = *a2;
    v3 = (v19 + ((v16 + 16) & ~v16));
  }

  return v3;
}

uint64_t destroy for TabGroup(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2[3] - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(a2[4] - 8);
  v10 = *(v9 + 8);
  v11 = (v8 + *(v7 + 56) + *(v9 + 80)) & ~*(v9 + 80);

  return v10(v11);
}

uint64_t initializeWithCopy for TabGroup(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 16))((*(v8 + 48) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 48) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t assignWithCopy for TabGroup(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 24))((*(v8 + 40) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 40) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t initializeWithTake for TabGroup(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 32))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 32))((*(v8 + 32) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 32) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t assignWithTake for TabGroup(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 40))((*(v8 + 24) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 24) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for TabGroup(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *storeEnumTagSinglePayload for TabGroup(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TabSidebarCustomization(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TabViewCustomization(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
    *(a1 + *(v6 + 24)) = *(a2 + *(v6 + 24));
  }

  return a1;
}

uint64_t destroy for TabSidebarCustomization(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(a1, v2);
  type metadata accessor for TabViewCustomization(0);
}

uint64_t initializeWithCopy for TabSidebarCustomization(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  v5 = type metadata accessor for TabViewCustomization(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));

  return a1;
}

uint64_t assignWithCopy for TabSidebarCustomization(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  v5 = type metadata accessor for TabViewCustomization(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));

  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));

  return a1;
}

uint64_t initializeWithTake for TabSidebarCustomization(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  v5 = type metadata accessor for TabViewCustomization(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));
  return a1;
}

uint64_t assignWithTake for TabSidebarCustomization(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  v5 = type metadata accessor for TabViewCustomization(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));

  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));

  return a1;
}

uint64_t type metadata completion function for TabSidebarCustomization(uint64_t a1)
{
  result = type metadata accessor for TabViewCustomization(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI10TabContentRzlAA08ModifiedcD0VyxAA13EmptyModifierVGAaBHPxAaBHD1__AfA04ViewG0HPyHCHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), const char *a3)
{
  v4 = a1[1];
  v5 = a2(255, *a1, MEMORY[0x1E697E108]);
  v7[0] = v4;
  v7[1] = MEMORY[0x1E697E100];
  return swift_getWitnessTable(a3, v5, v7);
}

unint64_t lazy protocol witness table accessor for type TabViewContentDisplayMode.ContentMode and conformance TabViewContentDisplayMode.ContentMode()
{
  result = lazy protocol witness table cache variable for type TabViewContentDisplayMode.ContentMode and conformance TabViewContentDisplayMode.ContentMode;
  if (!lazy protocol witness table cache variable for type TabViewContentDisplayMode.ContentMode and conformance TabViewContentDisplayMode.ContentMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabViewContentDisplayMode.ContentMode, &type metadata for TabViewContentDisplayMode.ContentMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewContentDisplayMode.ContentMode and conformance TabViewContentDisplayMode.ContentMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabItemKind.Item and conformance TabItemKind.Item()
{
  result = lazy protocol witness table cache variable for type TabItemKind.Item and conformance TabItemKind.Item;
  if (!lazy protocol witness table cache variable for type TabItemKind.Item and conformance TabItemKind.Item)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabItemKind.Item, &type metadata for TabItemKind.Item, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabItemKind.Item and conformance TabItemKind.Item);
  }

  return result;
}

uint64_t outlined destroy of TabSidebarCustomization(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of WeakBox<Swift.AnyObject>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for [TabCustomizationID](0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TabSidebarCustomization? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TabSidebarCustomization? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TabSidebarCustomization? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for TabSidebarCustomization?(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabSidebarCustomization and conformance TabSidebarCustomization, type metadata accessor for TabSidebarCustomization, protocol conformance descriptor for TabSidebarCustomization);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type TabSidebarCustomization? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<AnyHashable, Anchor<CGRect?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Anchor<CGRect?>>)
  {
    type metadata accessor for SceneStorage<TabSidebarCustomization>(255, &lazy cache variable for type metadata for Anchor<CGRect?>, type metadata accessor for CGRect?, MEMORY[0x1E6981798]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Anchor<CGRect?>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>)
  {
    type metadata accessor for [Binding<Bool>](255);
    lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ViewIdentity, (_:)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, (_:)>)
  {
    type metadata accessor for (_:)();
    lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, (_:)>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceDataSourceItem>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceDataSourceItem>)
  {
    type metadata accessor for IntelligenceDataSourceItem();
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem, MEMORY[0x1E69DBC58], MEMORY[0x1E69DBC60]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceDataSourceItem>);
    }
  }
}

uint64_t outlined init with copy of WeakBox<PlatformDocument>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for SceneStorage<TabSidebarCustomization>(0, a3, a4, MEMORY[0x1E6981A78]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for _DictionaryStorage<UIMenuIdentifier, UIMenuIdentifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UIMenuIdentifier, UIMenuIdentifier>)
  {
    type metadata accessor for UIMenuIdentifier(255);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type UIMenuIdentifier and conformance UIMenuIdentifier, type metadata accessor for UIMenuIdentifier, protocol conformance descriptor for UIMenuIdentifier);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<UIMenuIdentifier, UIMenuIdentifier>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<UIMenuIdentifier, [UIMenuElement]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UIMenuIdentifier, [UIMenuElement]>)
  {
    type metadata accessor for UIMenuIdentifier(255);
    _ss14PartialKeyPathCySo21UISplitViewControllerCGMaTm_0(255, &lazy cache variable for type metadata for [UIMenuElement], &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type UIMenuIdentifier and conformance UIMenuIdentifier, type metadata accessor for UIMenuIdentifier, protocol conformance descriptor for UIMenuIdentifier);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<UIMenuIdentifier, [UIMenuElement]>);
    }
  }
}

void _ss14PartialKeyPathCySo21UISplitViewControllerCGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for NSObject(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for _DictionaryStorage<UIMenuElement, CommandOperation>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UIMenuElement, CommandOperation>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
    type metadata accessor for CommandOperation(255);
    lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIMenuElement and conformance NSObject, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<UIMenuElement, CommandOperation>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<KeyCommandID, ()>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<KeyCommandID, ()>)
  {
    type metadata accessor for ()();
    lazy protocol witness table accessor for type KeyCommandID and conformance KeyCommandID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<KeyCommandID, ()>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Selector, CommandAction>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Selector, CommandAction>)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for CommandAction, &protocol descriptor for CommandAction);
    lazy protocol witness table accessor for type Selector and conformance Selector();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<Selector, CommandAction>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Selector and conformance Selector()
{
  result = lazy protocol witness table cache variable for type Selector and conformance Selector;
  if (!lazy protocol witness table cache variable for type Selector and conformance Selector)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E81B0], MEMORY[0x1E69E81A8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Selector and conformance Selector);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>)
  {
    type metadata accessor for (Int, (CountingIndex<Int>, CountingIndex<Int>))(255);
    lazy protocol witness table accessor for type TableRowID and conformance TableRowID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ContentToolbarPlacement.Placement, ToolbarContentDescription>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ContentToolbarPlacement.Placement, ToolbarContentDescription>)
  {
    type metadata accessor for ToolbarContentDescription(255);
    lazy protocol witness table accessor for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ContentToolbarPlacement.Placement, ToolbarContentDescription>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, WeakBox<PlatformDocument>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, WeakBox<PlatformDocument>>)
  {
    type metadata accessor for SceneStorage<TabSidebarCustomization>(255, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78]);
    lazy protocol witness table accessor for type IdentifiedDocumentGroupConfiguration and conformance IdentifiedDocumentGroupConfiguration();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, WeakBox<PlatformDocument>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, [WeakBox<DocumentViewController>]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, [WeakBox<DocumentViewController>]>)
  {
    type metadata accessor for SceneStorage<TabSidebarCustomization>(255, &lazy cache variable for type metadata for [WeakBox<DocumentViewController>], type metadata accessor for WeakBox<DocumentViewController>, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type IdentifiedDocumentGroupConfiguration and conformance IdentifiedDocumentGroupConfiguration();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, [WeakBox<DocumentViewController>]>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<CGPoint, Bool>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CGPoint, Bool>)
  {
    type metadata accessor for CGPoint(255);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint, MEMORY[0x1E695EFB0]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<CGPoint, Bool>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<NSAttributedStringKey, any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    type metadata accessor for any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>();
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>>);
    }
  }
}

unint64_t type metadata accessor for any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>()
{
  result = lazy cache variable for type metadata for any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>;
  if (!lazy cache variable for type metadata for any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>)
  {
    result = swift_getExtendedExistentialTypeMetadata_unique();
    atomic_store(result, &lazy cache variable for type metadata for any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<AnyHashable, _ScrollableLayoutProxy.SizeRecord>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, _ScrollableLayoutProxy.SizeRecord>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, _ScrollableLayoutProxy.SizeRecord>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableRowDescriptor>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableRowDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<TableRowDescriptor>, lazy protocol witness table accessor for type TableRowDescriptor and conformance TableRowDescriptor, &type metadata for TableRowDescriptor, MEMORY[0x1E697FAA8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableRowDescriptor>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableRowDescriptor and conformance TableRowDescriptor()
{
  result = lazy protocol witness table cache variable for type TableRowDescriptor and conformance TableRowDescriptor;
  if (!lazy protocol witness table cache variable for type TableRowDescriptor and conformance TableRowDescriptor)
  {
    result = swift_getWitnessTable("ɴ\tbhh\b", &type metadata for TableRowDescriptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableRowDescriptor and conformance TableRowDescriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyboardShortcut and conformance KeyboardShortcut()
{
  result = lazy protocol witness table cache variable for type KeyboardShortcut and conformance KeyboardShortcut;
  if (!lazy protocol witness table cache variable for type KeyboardShortcut and conformance KeyboardShortcut)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyboardShortcut, &type metadata for KeyboardShortcut, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyboardShortcut and conformance KeyboardShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyboardShortcut and conformance KeyboardShortcut;
  if (!lazy protocol witness table cache variable for type KeyboardShortcut and conformance KeyboardShortcut)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyboardShortcut, &type metadata for KeyboardShortcut, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyboardShortcut and conformance KeyboardShortcut);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableColumnDescriptor>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableColumnDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<TableColumnDescriptor>, lazy protocol witness table accessor for type TableColumnDescriptor and conformance TableColumnDescriptor, &type metadata for TableColumnDescriptor, MEMORY[0x1E697FAA8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableColumnDescriptor>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableColumnDescriptor and conformance TableColumnDescriptor()
{
  result = lazy protocol witness table cache variable for type TableColumnDescriptor and conformance TableColumnDescriptor;
  if (!lazy protocol witness table cache variable for type TableColumnDescriptor and conformance TableColumnDescriptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnDescriptor, &type metadata for TableColumnDescriptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnDescriptor and conformance TableColumnDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<HashableCommandGroupPlacementWrapper, CommandAccumulator>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<HashableCommandGroupPlacementWrapper, CommandAccumulator>)
  {
    type metadata accessor for HashableCommandGroupPlacementWrapper(255);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper, type metadata accessor for HashableCommandGroupPlacementWrapper, protocol conformance descriptor for HashableCommandGroupPlacementWrapper);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<HashableCommandGroupPlacementWrapper, CommandAccumulator>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<NavigationDestinationDescriptor>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<NavigationDestinationDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<NavigationDestinationDescriptor>, lazy protocol witness table accessor for type NavigationDestinationDescriptor and conformance NavigationDestinationDescriptor, &type metadata for NavigationDestinationDescriptor, MEMORY[0x1E697FAA8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<NavigationDestinationDescriptor>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type NavigationDestinationDescriptor and conformance NavigationDestinationDescriptor()
{
  result = lazy protocol witness table cache variable for type NavigationDestinationDescriptor and conformance NavigationDestinationDescriptor;
  if (!lazy protocol witness table cache variable for type NavigationDestinationDescriptor and conformance NavigationDestinationDescriptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationDestinationDescriptor, &type metadata for NavigationDestinationDescriptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDestinationDescriptor and conformance NavigationDestinationDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<AccessibilityRotorContentDescriptor>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<AccessibilityRotorContentDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<AccessibilityRotorContentDescriptor>, lazy protocol witness table accessor for type AccessibilityRotorContentDescriptor and conformance AccessibilityRotorContentDescriptor, &type metadata for AccessibilityRotorContentDescriptor, MEMORY[0x1E697FAA8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<AccessibilityRotorContentDescriptor>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityRotorContentDescriptor and conformance AccessibilityRotorContentDescriptor()
{
  result = lazy protocol witness table cache variable for type AccessibilityRotorContentDescriptor and conformance AccessibilityRotorContentDescriptor;
  if (!lazy protocol witness table cache variable for type AccessibilityRotorContentDescriptor and conformance AccessibilityRotorContentDescriptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityRotorContentDescriptor, &type metadata for AccessibilityRotorContentDescriptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityRotorContentDescriptor and conformance AccessibilityRotorContentDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<WidgetDescriptor>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<WidgetDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<WidgetDescriptor>, lazy protocol witness table accessor for type WidgetDescriptor and conformance WidgetDescriptor, &type metadata for WidgetDescriptor, MEMORY[0x1E697FAA8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<WidgetDescriptor>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WidgetDescriptor and conformance WidgetDescriptor()
{
  result = lazy protocol witness table cache variable for type WidgetDescriptor and conformance WidgetDescriptor;
  if (!lazy protocol witness table cache variable for type WidgetDescriptor and conformance WidgetDescriptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WidgetDescriptor, &type metadata for WidgetDescriptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetDescriptor and conformance WidgetDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<AccessibilityRelationshipScope.NodeRelation, Set<AccessibilityRelationshipScope.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AccessibilityRelationshipScope.NodeRelation, Set<AccessibilityRelationshipScope.Key>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for Set<AccessibilityRelationshipScope.Key>, lazy protocol witness table accessor for type AccessibilityRelationshipScope.Key and conformance AccessibilityRelationshipScope.Key, &type metadata for AccessibilityRelationshipScope.Key, MEMORY[0x1E69E64E8]);
    lazy protocol witness table accessor for type AccessibilityRelationshipScope.NodeRelation and conformance AccessibilityRelationshipScope.NodeRelation();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityRelationshipScope.NodeRelation, Set<AccessibilityRelationshipScope.Key>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<AccessibilityRelationshipScope.Relationship, [AccessibilityNode]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AccessibilityRelationshipScope.Relationship, [AccessibilityNode]>)
  {
    type metadata accessor for SceneStorage<TabSidebarCustomization>(255, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type AccessibilityRelationshipScope.Relationship and conformance AccessibilityRelationshipScope.Relationship();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityRelationshipScope.Relationship, [AccessibilityNode]>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<AGAttribute, (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])>)
  {
    type metadata accessor for AGAttribute(255);
    type metadata accessor for (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(255);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute, MEMORY[0x1E698D3E8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<AccessibilityFocus.Match, Set<UniqueID>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AccessibilityFocus.Match, Set<UniqueID>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for Set<UniqueID>, lazy protocol witness table accessor for type UniqueID and conformance UniqueID, MEMORY[0x1E6981D00], MEMORY[0x1E69E64E8]);
    lazy protocol witness table accessor for type AccessibilityFocus.Match and conformance AccessibilityFocus.Match();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityFocus.Match, Set<UniqueID>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<EventID, [KeyPress.Handler]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<EventID, [KeyPress.Handler]>)
  {
    type metadata accessor for SceneStorage<TabSidebarCustomization>(255, &lazy cache variable for type metadata for [KeyPress.Handler], type metadata accessor for KeyPress.Handler, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type EventID and conformance EventID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<EventID, [KeyPress.Handler]>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<AGAttribute, AGAttribute>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, AGAttribute>)
  {
    type metadata accessor for AGAttribute(255);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute, MEMORY[0x1E698D3E8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, AGAttribute>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<UniqueID, (_ViewList_ID.Canonical, AccessibilitySectionContext?)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UniqueID, (_ViewList_ID.Canonical, AccessibilitySectionContext?)>)
  {
    type metadata accessor for (_ViewList_ID.Canonical, AccessibilitySectionContext?)(255);
    lazy protocol witness table accessor for type UniqueID and conformance UniqueID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<UniqueID, (_ViewList_ID.Canonical, AccessibilitySectionContext?)>);
    }
  }
}

void type metadata accessor for (_ViewList_ID.Canonical, AccessibilitySectionContext?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (_ViewList_ID.Canonical, AccessibilitySectionContext?))
  {
    type metadata accessor for [TabCustomizationID](255, &lazy cache variable for type metadata for AccessibilitySectionContext?, MEMORY[0x1E6980778], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_ViewList_ID.Canonical, AccessibilitySectionContext?));
    }
  }
}

CGSize __swiftcall _ViewTest.initSize()()
{
  v0 = 100.0;
  v1 = 100.0;
  result.height = v1;
  result.width = v0;
  return result;
}

{
  v0 = 100.0;
  v1 = 100.0;
  result.height = v1;
  result.width = v0;
  return result;
}

Swift::Void __swiftcall _ViewTest.setUpTest()()
{
  v3 = v1;
  v4 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16[-v7];
  EnvironmentValues.init()();
  v20[0] = v20[2];
  v20[1] = v20[3];
  MEMORY[0x18D00B430](v20);

  v9 = (*(v3 + 48))(v4, v3);
  specialized _ViewTest.setSize(_:)(v9, v10);
  static EdgeInsets.zero.getter();
  specialized _ViewTest.setSafeAreaInsets(_:)(v11, v12, v13, v14);
  (*(v3 + 40))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _ViewTest.setRootTestView<A>(_:)(v8, v4, AssociatedTypeWitness, v3, AssociatedConformanceWitness);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  static TestRenderOptions.simple.getter();
  v17 = v4;
  v18 = v3;
  v19 = v2;
  withRenderOptions(_:_:)();
}

void _ViewTest.setRootTestView<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _ViewTest.findState()(a2, a4, &v13);
  v5 = v14;
  if (v14)
  {
    v6 = *&v13;
    v7 = v15;
    v8 = v16;
    if (static _TestApp.host.getter())
    {
      ObjectType = swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        v11 = *(v10 + 8);
        (*(v11 + 16))(&v13, ObjectType, v11);
        v13 = ceil(v13 + 1.0);
        (*(v11 + 24))(&v13, ObjectType, v11);
      }

      swift_unknownObjectRelease();
    }

    v13 = *&v6;
    v14 = v5;
    v15 = v7;
    v16 = v8;
    type metadata accessor for Binding<_TestApp.RootView.StateType>();
    MEMORY[0x18D00ACC0](&v12);
    _TestApp.RootView.StateType.setTestView<A>(_:)();
    dispatch thunk of AnyLocation.set(_:transaction:)();

    outlined consume of Binding<_TestApp.RootView.StateType>?(v6, v5, v7, v8);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall _ViewTest.tearDownTest()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x1EEE9AC00])();
  specialized _ViewTest.resetEvents()();
  _ViewTest.setRootTestView<A>(_:)(v7, v4, MEMORY[0x1E6981E70], v3, MEMORY[0x1E6981E60]);
  v8 = objc_opt_self();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v4);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  (*(v5 + 32))(v10 + v9, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in _ViewTest.tearDownTest();
  *(v11 + 24) = v10;
  aBlock[4] = partial apply for closure #1 in UIKitSearchScopeCoordinating<>.onChange(selectedScope:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_26;
  v12 = _Block_copy(aBlock);

  [v8 performWithoutAnimation_];
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _ViewTest.tearDownTestWithError()()
{
  v2 = v0;
  v3 = *(v0 - 8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  if (([v6 areAnimationsEnabled] & 1) == 0)
  {
    [v6 setAnimationsEnabled_];
    (*(v3 + 16))(v5, v1, v2);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    lazy protocol witness table accessor for type Error and conformance Error();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    *(v10 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t _ViewTest.findState()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for <<opaque return type of static _TestApp.rootViewIdentifier>>.0(0, a2);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static _TestApp.rootViewIdentifier.getter();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView();
  v16 = a1;
  v17 = v7;
  v18 = MEMORY[0x1E6981D30];
  v19 = MEMORY[0x1E6981D40];
  v20 = a2;
  v21 = OpaqueTypeConformance2;
  v22 = v12;
  v23 = v10;
  v13 = type metadata accessor for Binding();
  _ViewTest.withRenderIfNeeded<A>(_:)(partial apply for closure #1 in _ViewTest.stateForIdentifier<A, B, C>(_:type:in:), v13, a3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t _ViewTest.rootViewID.getter(uint64_t a1, uint64_t a2)
{
  result = _ViewTest.findState()(a1, a2, &v9);
  v3 = v10;
  if (v10)
  {
    v5 = v11;
    v4 = v12;
    v6 = v9;
    v8[2] = v9;
    v8[3] = v10;
    v8[4] = v11;
    v8[5] = v12;
    type metadata accessor for Binding<_TestApp.RootView.StateType>();
    MEMORY[0x18D00ACC0](v8);
    outlined consume of Binding<_TestApp.RootView.StateType>?(v6, v3, v5, v4);
    v7 = v8[0];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ViewTest.rootView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14[-1] - v8;
  v14[0] = _ViewTest.rootViewID.getter(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14[3] = a1;
  v14[4] = AssociatedTypeWitness;
  v14[5] = MEMORY[0x1E69E6530];
  v14[6] = a2;
  v14[7] = AssociatedConformanceWitness;
  v14[8] = MEMORY[0x1E69E6540];
  v14[9] = v14;
  v14[10] = AssociatedTypeWitness;
  _ViewTest.withRenderIfNeeded<A>(_:)(partial apply for closure #1 in _ViewTest.viewForIdentifier<A, B>(_:_:), AssociatedTypeWitness, v9);
  v11 = *(AssociatedTypeWitness - 8);
  result = (*(v11 + 48))(v9, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v11 + 32))(a3, v9, AssociatedTypeWitness);
  }

  __break(1u);
  return result;
}

void closure #1 in _ViewTest.viewForIdentifier<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (static _TestApp.host.getter())
  {
    swift_getObjectType();
    _BenchmarkHost.viewForIdentifier<A, B>(_:_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t _ViewTest.withRenderIfNeeded<A>(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  (a1)(v8);
  v11 = *(a2 - 8);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v7 + 8))(v10, v6);
    result = static _TestApp.host.getter();
    if (result)
    {
      v14 = v13;
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 8))(ObjectType, 0.0);
      v16 = swift_unknownObjectRelease();
      return a1(v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v11 + 32))(a3, v10, a2);
    return (*(v11 + 56))(a3, 0, 1, a2);
  }

  return result;
}

void closure #1 in _ViewTest.stateForIdentifier<A, B, C>(_:type:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (static _TestApp.host.getter())
  {
    swift_getObjectType();
    _BenchmarkHost.stateForIdentifier<A, B, C>(_:type:in:)();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

Swift::Bool __swiftcall _ViewTest.renderAsync(seconds:)(Swift::Double seconds)
{
  v2 = static _TestApp.host.getter();
  if (v2)
  {
    v6 = 2;
    v4 = specialized _ViewTest.render(host:seconds:options:)(seconds, v2, v3, &v6);
    swift_unknownObjectRelease();
    LOBYTE(v2) = v4 & 1;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

Swift::Void __swiftcall _ViewTest.renderRecursively(seconds:)(Swift::Double seconds)
{
  v2 = static _TestApp.host.getter();
  if (v2)
  {
    v4 = 1;
    specialized _ViewTest.render(host:seconds:options:)(seconds, v2, v3, &v4);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in _ViewTest.render(host:seconds:options:)(double a1, uint64_t a2, uint64_t a3, char *a4, char a5)
{
  ObjectType = swift_getObjectType();
  if ((a5 & 2) != 0)
  {
    result = (*(*(a3 + 8) + 16))(ObjectType, a1);
    if ((result & 1) == 0)
    {
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    result = (*(a3 + 128))(ObjectType, a3, a1);
  }

  v11 = *a4;
LABEL_6:
  *a4 = v11;
  return result;
}

Swift::Void __swiftcall _ViewTest.turnRunloop(times:)(Swift::Int times)
{
  v16 = type metadata accessor for Date();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (times < 0)
  {
    __break(1u);
  }

  else if (times)
  {
    v5 = objc_opt_self();
    v6 = *MEMORY[0x1E695D918];
    v7 = *MEMORY[0x1E695DA28];
    v8 = (v2 + 8);
    do
    {

      v17 = v6;
      v18 = v7;
      type metadata accessor for NSRunLoopMode(0);
      v9 = v6;
      v10 = v7;
      v11 = v9;
      swift_arrayDestroy();
      v12 = [v5 currentRunLoop];
      Date.init(timeIntervalSinceNow:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*v8)(v4, v16);
      v14 = [v12 runMode:v11 beforeDate:isa];

      if ((v14 & 1) == 0)
      {
        [objc_opt_self() sleepForTimeInterval_];
      }

      --times;
    }

    while (times);
  }
}

id _ViewTest.systemColorScheme.getter()
{
  result = static _TestApp.host.getter();
  if (result)
  {
    objc_opt_self();
    v1 = [swift_dynamicCastObjCClassUnconditional() window];
    swift_unknownObjectRelease();
    if (v1 && (v2 = [v1 windowScene], v1, v2))
    {
      v3 = [v2 _systemUserInterfaceStyle];

      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double _ViewTest.updateEnvironment(_:)(void (*a1)(uint64_t *))
{
  EnvironmentValues.init()();
  a1(v5);
  v3 = v5[0];
  v4 = v5[1];

  MEMORY[0x18D00B430](&v3);
  outlined consume of EnvironmentValues?(v3, v4);

  return result;
}

Swift::Void __swiftcall _ViewTest.loop()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  specialized _ViewTest.render(seconds:)(0.0166666667);
  v4 = objc_opt_self();

  v5 = *MEMORY[0x1E695DA28];
  v16[0] = *MEMORY[0x1E695D918];
  v16[1] = v5;
  v6 = (v1 + 8);
  v7 = v16[0];
  v8 = v5;
  v9 = 0;
  do
  {
    v11 = v16[v9 & 1];
    v12 = [v4 currentRunLoop];
    Date.init(timeIntervalSinceNow:)();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*v6)(v3, v0);
    v14 = [v12 runMode:v11 beforeDate:isa];

    if ((v14 & 1) == 0)
    {
      [objc_opt_self() sleepForTimeInterval_];
    }
  }

  while (!__OFADD__(v9++, 1));
  __break(1u);
}

uint64_t _ViewTest.rootState<A>(type:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Binding();
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18[-1] - v10;
  v18[0] = _ViewTest.rootViewID.getter(a1, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18[3] = a1;
  v18[4] = MEMORY[0x1E69E6530];
  v18[5] = a2;
  v18[6] = AssociatedTypeWitness;
  v18[7] = a3;
  v18[8] = MEMORY[0x1E69E6540];
  v18[9] = AssociatedConformanceWitness;
  v18[10] = v18;
  v14 = type metadata accessor for Binding();
  _ViewTest.withRenderIfNeeded<A>(_:)(partial apply for closure #1 in _ViewTest.stateForIdentifier<A, B, C>(_:type:in:), v14, v11);
  v15 = *(v8 - 8);
  result = (*(v15 + 48))(v11, 1, v8);
  if (result != 1)
  {
    return (*(v15 + 32))(a4, v11, v8);
  }

  __break(1u);
  return result;
}

uint64_t _ViewTest.rootState<A, B>(type:in:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Binding();
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v20[-1] - v14;
  v20[0] = _ViewTest.rootViewID.getter(a1, a4);
  v20[3] = a1;
  v20[4] = MEMORY[0x1E69E6530];
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = MEMORY[0x1E69E6540];
  v20[9] = a5;
  v20[10] = v20;
  v16 = type metadata accessor for Binding();
  _ViewTest.withRenderIfNeeded<A>(_:)(partial apply for closure #1 in _ViewTest.stateForIdentifier<A, B, C>(_:type:in:), v16, v15);
  v17 = *(v12 - 8);
  result = (*(v17 + 48))(v15, 1, v12);
  if (result != 1)
  {
    return (*(v17 + 32))(a6, v15, v12);
  }

  __break(1u);
  return result;
}

uint64_t _ViewTest.set<A>(_:to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v21 = a2;
  v5 = (*a1 + *MEMORY[0x1E69E6CE8]);
  v6 = *v5;
  v22 = *(*v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = type metadata accessor for Binding();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - v17;
  _ViewTest.rootState<A>(type:)(a3, v6, v20, &v20 - v17);
  (*(v11 + 16))(v14, v21, v10);
  MEMORY[0x18D00ACC0](v15);
  swift_setAtWritableKeyPath();
  dispatch thunk of AnyLocation.set(_:transaction:)();
  (*(v22 + 8))(v8, v6);
  return (*(v16 + 8))(v18, v15);
}

uint64_t _ViewTest.get<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v15[1] = a4;
  v6 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v15 - v8;
  v10 = type metadata accessor for Binding();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v15 - v12;
  _ViewTest.rootState<A>(type:)(a2, v6, a3, v15 - v12);
  MEMORY[0x18D00ACC0](v10);
  (*(v11 + 8))(v13, v10);
  swift_getAtKeyPath();
  return (*(v7 + 8))(v9, v6);
}

void specialized _ViewTest.sendEvents(_:)(uint64_t a1)
{
  if (static _TestApp.host.getter())
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 40))(a1, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void specialized _ViewTest.setSize(_:)(double a1, double a2)
{
  if (static _TestApp.host.getter())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(ObjectType, v5, a1, a2);
    swift_unknownObjectRelease();
    if (static _TestApp.comparisonHost.getter())
    {
      v8 = v7;
      v9 = swift_getObjectType();
      (*(v8 + 16))(v9, v8, a1, a2);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized _ViewTest.setSafeAreaInsets(_:)(double a1, double a2, double a3, double a4)
{
  if (static _TestApp.host.getter())
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(ObjectType, v9, a1, a2, a3, a4);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized _ViewTest.render(host:seconds:options:)(double a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  if (*a4)
  {
    ObjectType = swift_getObjectType();
    v10 = MEMORY[0x1EEE9AC00](ObjectType);
    (*(a3 + 120))(partial apply for closure #1 in _ViewTest.render(host:seconds:options:), v10);
    return 1;
  }

  else
  {
    v7 = swift_getObjectType();
    if ((v6 & 2) != 0)
    {
      return (*(*(a3 + 8) + 16))(v7, a1) & 1;
    }

    else
    {
      (*(a3 + 128))(v7, a3, a1);
      return 1;
    }
  }
}

void specialized _ViewTest.render(seconds:)(double a1)
{
  static _TestApp.renderOptions.getter();
  if ((v4 & 8) == 0)
  {
    v2 = static _TestApp.host.getter();
    if (v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v2 = static _TestApp.comparisonHost.getter();
  if (!v2)
  {
    __break(1u);
    return;
  }

LABEL_5:
  specialized _ViewTest.render(host:seconds:options:)(a1, v2, v3, &v4);

  swift_unknownObjectRelease();
}

void specialized _ViewTest.resetEvents()()
{
  if (static _TestApp.host.getter())
  {
    v1 = v0;
    ObjectType = swift_getObjectType();
    (*(v1 + 48))(ObjectType, v1);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type Error and conformance Error()
{
  result = lazy protocol witness table cache variable for type Error and conformance Error;
  if (!lazy protocol witness table cache variable for type Error and conformance Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Error, &unk_1EFFBBE80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Error and conformance Error);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Error(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of TabCustomizationID.Base();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for Error(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of TabCustomizationID.Base();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of TabCustomizationID.Base();
  return a1;
}

uint64_t assignWithTake for Error(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of TabCustomizationID.Base();
  return a1;
}

void type metadata accessor for Binding<_TestApp.RootView.StateType>()
{
  if (!lazy cache variable for type metadata for Binding<_TestApp.RootView.StateType>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<_TestApp.RootView.StateType>);
    }
  }
}

double outlined consume of Binding<_TestApp.RootView.StateType>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t *UIViewSnapshotResponder.hitTestPolicy(options:)@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  if (*(v2 + 264))
  {
    v4 = *result;
    type metadata accessor for DefaultLayoutViewResponder();
    v3 = method lookup function for ViewResponder();
    return v3(&v4);
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

double UIViewSnapshotResponder.transform.getter@<D0>(_OWORD *a2@<X8>)
{
  AGGraphClearUpdate();
  LOBYTE(v8) = 17;
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  AGGraphSetUpdate();
  if (v5 == 1)
  {
    ViewTransform.init()();
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v10 = v7;
  }

  ViewTransform.appendPosition(_:)(v2[15]);
  *a2 = v8;
  a2[1] = v9;
  result = *&v10;
  a2[2] = v10;
  return result;
}

uint64_t UIViewSnapshotResponder.contentPath.getter@<X0>(uint64_t a1@<X8>)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 6;
  (*(*v1 + class metadata base offset for UIViewSnapshotResponder + 88))(&v12);
  *&v9[0] = v1[27];
  v11 = 1;
  dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();
  outlined destroy of CoordinateSpace(v9);
  v7 = v13;
  v8 = v14;
  v9[0] = v13;
  v9[1] = v14;
  v3 = v15;
  v10 = v15;
  result = Path.isEmpty.getter();
  v5 = v7;
  v6 = v8;
  if (result)
  {
    result = outlined destroy of Path(v9);
    v3 = -1;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
  return result;
}

__C::CGRect __swiftcall UIViewSnapshotResponder.convertRectToTargetSpace(_:host:preferredContainer:)(__C::CGRect _, UIView *host, UIView_optional *preferredContainer)
{
  v32 = _;
  type metadata accessor for HostingScrollViewResponder(0);
  ResponderNode.firstAncestor<A>(ofType:)();
  if (!v27)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_9;
  }

  type metadata accessor for HostingScrollView.PlatformContainer();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

    goto LABEL_9;
  }

  v8 = *(v7 + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_scrollView);

  v9 = [(UIView *)v8 window];
  if (!v9)
  {

LABEL_9:
    hostingViewCoordinateSpace.getter();
    v31 = 1;
    AGGraphClearUpdate();
    LOBYTE(v27) = 17;
    type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
    static Update.dispatchImmediately<A>(reason:_:)();
    AGGraphSetUpdate();
    if (v24 == 1)
    {
      ViewTransform.init()();
    }

    else
    {
      v27 = v24;
      v28 = v25;
      v29 = v26;
    }

    ViewTransform.appendPosition(_:)(v3[15]);
    CGRect.convert(to:transform:)();

    outlined destroy of CoordinateSpace(v30);
    v8 = host;
    if (!preferredContainer)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  AGGraphClearUpdate();
  LOBYTE(v27) = 17;
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  AGGraphSetUpdate();
  if (v24 == 1)
  {
    ViewTransform.init()();
  }

  else
  {
    v27 = v24;
    v28 = v25;
    v29 = v26;
  }

  ViewTransform.appendPosition(_:)(v3[15]);
  v22 = v29;
  v23 = v28;
  static CoordinateSpace.scrollViewSafeArea.getter();
  CGRect.convert(to:transform:)();
  outlined destroy of CoordinateSpace(&v24);

  if (!preferredContainer)
  {
LABEL_16:

    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    goto LABEL_17;
  }

LABEL_13:
  [(UIView *)v8 convertRect:preferredContainer toCoordinateSpace:v32.origin.x, v32.origin.y, v32.size.width, v32.size.height, v22, v23];
  x = v10;
  y = v12;
  width = v14;
  height = v16;

LABEL_17:
  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

void closure #1 in closure #1 in UIViewSnapshotResponder.transform.getter(uint64_t a2@<X8>)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v4 = *WeakValue;
    v8 = *(WeakValue + 8);
    v9 = *(WeakValue + 24);
    v5 = *(WeakValue + 40);

    v6 = v8;
    v7 = v9;
  }

  else
  {
    v5 = 0;
    v6 = 0uLL;
    v4 = 1;
    v7 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 24) = v7;
  *(a2 + 40) = v5;
}

double UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(int8x16_t *a1, void *a2, char a3, id a4)
{
  if (a1[2].i8[0])
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  v9 = vdupq_n_s64(v8);
  v10 = vbicq_s8(a1[1], v9);
  v37.origin = vbicq_s8(*a1, v9);
  v37.size = v10;
  type metadata accessor for HostingScrollViewResponder(0);
  ResponderNode.firstAncestor<A>(ofType:)();
  if (!v32 || (swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), , !Strong))
  {
LABEL_12:
    hostingViewCoordinateSpace.getter();
    v36 = 1;
    AGGraphClearUpdate();
    LOBYTE(v32) = 17;
    type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
    static Update.dispatchImmediately<A>(reason:_:)();
    AGGraphSetUpdate();
    if (v29 == 1)
    {
      ViewTransform.init()();
    }

    else
    {
      v32 = v29;
      v33 = v30;
      v34 = v31;
    }

    ViewTransform.appendPosition(_:)(v4[15]);
    CGRect.convert(to:transform:)();

    outlined destroy of CoordinateSpace(v35);
    y = v37.origin.y;
    x = v37.origin.x;
    size = v37.size;
    v18 = x + CGRectGetWidth(v37) * 0.5;
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size = size;
    v19 = y + CGRectGetHeight(v38) * 0.5;
    v20 = a2;
    goto LABEL_16;
  }

  type metadata accessor for HostingScrollView.PlatformContainer();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
LABEL_11:

    goto LABEL_12;
  }

  v13 = *(v12 + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_scrollView);

  Strong = v13;
  v14 = [Strong window];
  if (!v14)
  {

    goto LABEL_11;
  }

  AGGraphClearUpdate();
  LOBYTE(v32) = 17;
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  AGGraphSetUpdate();
  if (v29 == 1)
  {
    ViewTransform.init()();
  }

  else
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  ViewTransform.appendPosition(_:)(v4[15]);
  static CoordinateSpace.scrollViewSafeArea.getter();
  CGRect.convert(to:transform:)();
  outlined destroy of CoordinateSpace(&v29);

  v24 = v37.origin.y;
  v23 = v37.origin.x;
  v25 = v37.size;
  v20 = Strong;
  v39.origin.x = v23;
  v39.origin.y = v24;
  v39.size = v25;
  v18 = v23 + CGRectGetWidth(v39) * 0.5;
  v40.origin.x = v23;
  v40.origin.y = v24;
  v40.size = v25;
  v19 = v24 + CGRectGetHeight(v40) * 0.5;
  if (a3)
  {
    v26 = [v20 superview];

    if (v26)
    {
      [v20 convertPoint:v26 toCoordinateSpace:{v18, v19}];
      v18 = v27;
      v19 = v28;

      v20 = v26;
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_16:
  if (a4 && v20 != a4)
  {
    [v20 convertPoint:a4 toCoordinateSpace:{v18, v19}];
    v18 = v21;
  }

  return v18;
}

float64_t closure #1 in closure #1 in UIViewSnapshotResponder.portalPreviewTarget<A>(inHost:portalResult:options:preferredContainer:)(char a1, uint64_t a2, CGPoint *a3, float64x2_t a4, float64_t a5)
{
  v10.f64[0] = a4.f64[0];
  v10.f64[1] = a5;
  if ((a1 & 2) == 0 && (*(a2 + 32) & 1) == 0)
  {
    a4.f64[1] = a5;
    v10 = vaddq_f64(*a2, a4);
  }

  hostingViewCoordinateSpace.getter();
  v9 = 1;
  AGGraphClearUpdate();
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  AGGraphSetUpdate();
  if (v7 == 1)
  {
    ViewTransform.init()();
  }

  ViewTransform.appendPosition(_:)(a3[15]);
  type metadata accessor for CGPoint(0);
  ApplyViewTransform.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v8);
  return v10.f64[0];
}

uint64_t closure #1 in UIViewSnapshotResponder.canPortal.getter@<X0>(BOOL *a2@<X8>)
{
  result = AGGraphGetWeakValue();
  if (result)
  {
    v4 = (*(result + 8) & 0x200) == 0;
  }

  else
  {
    v4 = 1;
  }

  *a2 = v4;
  return result;
}

void closure #1 in UIViewSnapshotResponder.snapshotView(host:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for DisplayList?, MEMORY[0x1E697DCB0], MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  if (v28)
  {
    v6 = WORD4(v28);
    v7 = HIDWORD(*(&v28 + 1));
    v8 = *(a1 + 224);
    v9 = *(a1 + 232);
    v10 = *(a1 + 280);
    v11 = *(a1 + 288);
    v12 = type metadata accessor for DisplayListView();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR____TtC7SwiftUI15DisplayListView_displayList];
    *v14 = v28;
    *(v14 + 4) = v6;
    *(v14 + 3) = v7;
    v15 = &v13[OBJC_IVAR____TtC7SwiftUI15DisplayListView_displayListPosition];
    *v15 = v10;
    *(v15 + 1) = v11;
    v24.receiver = v13;
    v24.super_class = v12;
    v16 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, v8, v9);
    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 clearColor];
    [v18 setBackgroundColor_];

LABEL_8:
    *a3 = v18;
    return;
  }

  v33 = 0.0;
  v34 = 0.0;
  v35 = *(a1 + 224);
  hostingViewCoordinateSpace.getter();
  v32 = 1;
  AGGraphClearUpdate();
  LOBYTE(v28) = 17;
  type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for ViewTransform?, MEMORY[0x1E697E228], MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  AGGraphSetUpdate();
  if (v25 == 1)
  {
    ViewTransform.init()();
  }

  else
  {
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  ViewTransform.appendPosition(_:)(*(a1 + 240));
  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v31);
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v23 = [a2 resizableSnapshotViewFromRect:0 afterScreenUpdates:v33 withCapInsets:{v34, v35, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  if (v23)
  {
    v18 = v23;
    [v23 setContentMode_];
    [v18 setFrame_];
    goto LABEL_8;
  }

  __break(1u);
}

void closure #1 in closure #1 in UIViewSnapshotResponder.snapshotView(host:)(uint64_t *a2@<X8>)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v4 = *(WeakValue + 8) | (*(WeakValue + 12) << 32);
  }

  else
  {
    v4 = 0;
  }

  *a2 = WeakValue;
  a2[1] = v4;
}

double UIViewSnapshotResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t UIViewSnapshotResponder.Transform.value.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
  type metadata accessor for CGPoint(0);

  v5 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v5);
  return ViewTransform.appendCoordinateSpace(id:)();
}

uint64_t closure #1 in DisplayListView.draw(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DisplayList.GraphicsRenderer();
  swift_allocObject();
  DisplayList.GraphicsRenderer.init(platformViewMode:)();
  GraphicsContext.translateBy(x:y:)();

  DisplayList.GraphicsRenderer.renderDisplayList(_:at:in:)();
}

void specialized DisplayListView.draw(_:)()
{
  v0 = UIGraphicsGetCurrentContext();
  if (v0)
  {
    v1 = v0;
    MEMORY[0x1EEE9AC00](v0);
    EnvironmentValues.init()();
    static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();
  }

  else
  {
    type metadata accessor for ViewTransform?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_18CD63400;
    _StringGuts.grow(_:)(38);

    *&v5 = 0xD00000000000001ELL;
    *(&v5 + 1) = 0x800000018CD48450;
    v3 = StaticString.description.getter();
    MEMORY[0x18D00C9B0](v3);

    MEMORY[0x18D00C9B0](58, 0xE100000000000000);
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v4);

    MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD400F0);
    *(v2 + 56) = MEMORY[0x1E69E6158];
    *(v2 + 32) = v5;
    print(_:separator:terminator:)();
  }
}

double View.textInputFormattingControlVisibility(_:for:)(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v5;
  View.transformEnvironment<A>(_:transform:)();

  return result;
}

void EnvironmentValues.textInputFormattingControlVisibility.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.textInputFormattingControlVisibility : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.textInputFormattingControlVisibility : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t *partial apply for closure #1 in View.textInputFormattingControlVisibility(_:for:)(uint64_t *result)
{
  v2 = *(v1 + 24);
  v3 = *result;
  if (*(v1 + 16) > 1u)
  {
    v4 = v3 & ~v2;
  }

  else
  {
    if ((v2 & ~v3) == 0)
    {
      return result;
    }

    v4 = v3 | v2;
  }

  *result = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set()
{
  result = lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set;
  if (!lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextInputFormattingControlPlacement.Set, &type metadata for TextInputFormattingControlPlacement.Set, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set;
  if (!lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextInputFormattingControlPlacement.Set, &type metadata for TextInputFormattingControlPlacement.Set, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set;
  if (!lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextInputFormattingControlPlacement.Set, &type metadata for TextInputFormattingControlPlacement.Set, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set;
  if (!lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextInputFormattingControlPlacement.Set, &type metadata for TextInputFormattingControlPlacement.Set, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextInputFormattingControlPlacement.Set and conformance TextInputFormattingControlPlacement.Set);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set>)
  {
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputFormattingControlVisibility>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputFormattingControlPlacement.Set> and conformance _EnvironmentKeyTransformModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t protocol witness for static _SceneModifier._makeScene(modifier:inputs:body:) in conformance _EnvironmentKeyTransformModifier<A>(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6980B28], a5);

  return static _SceneModifier<>._makeScene(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static _SceneModifier._makeScene(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v12 = a2[1];
  v40 = *a2;
  v41 = v12;
  v42[0] = a2[2];
  *(v42 + 12) = *(a2 + 44);
  static DynamicPropertyCache.fields(of:)();
  v13 = v46;
  v14 = v47;
  v37 = v40;
  v38 = v41;
  v39[0] = v42[0];
  *(v39 + 12) = *(v42 + 12);
  v24 = DWORD1(v47);
  v25 = v11;
  LODWORD(v33) = v11;
  v43 = v46;
  LOBYTE(v44) = v47;
  DWORD1(v44) = DWORD1(v47);
  outlined init with copy of _SceneInputs(&v40, &v46);
  static _SceneModifier.makeBody(modifier:inputs:fields:)(v36, &v46, &v33, &v37, &v43, a5, a6);
  v23 = v46;
  v26 = v47;
  *&v46 = a3;
  *(&v46 + 1) = a4;
  v16 = type metadata accessor for _SceneModifier_Content.BodyInput(0, a5, a6, v15);
  type metadata accessor for (_:_:)();
  swift_getWitnessTable(protocol conformance descriptor for _SceneModifier_Content<A>.BodyInput, v16);
  _SceneInputs.append<A, B>(_:to:)(&v46, v16, v16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = v37;
  v44 = v38;
  v45[0] = v39[0];
  *(v45 + 12) = *(v39 + 12);
  v33 = v37;
  v34 = v38;
  *v35 = v39[0];
  *&v35[12] = *(v39 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _SceneInputs(&v43, &v46);
  v19(&v28, v36, &v33, AssociatedTypeWitness, AssociatedConformanceWitness);
  v46 = v33;
  v47 = v34;
  v48[0] = *v35;
  *(v48 + 12) = *&v35[12];
  outlined destroy of _SceneInputs(&v46);
  v20 = v28;
  v21 = DWORD2(v28);
  if ((v26 & 1) == 0)
  {
    v32 = v23;
    v31 = v25;
    v28 = v13;
    v29 = v14;
    v30 = v24;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v33 = v37;
  v34 = v38;
  *v35 = v39[0];
  *&v35[12] = *(v39 + 12);
  outlined destroy of _SceneInputs(&v33);
  result = outlined consume of DynamicPropertyCache.Fields.Layout(v13, *(&v13 + 1), v14);
  *a7 = v20;
  *(a7 + 8) = v21;
  return result;
}

void _s7SwiftUI14_SceneModifierPAAE14sceneBodyErrors5NeverOyFAA05EmptyD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0x646F4D7974706D45, 0xED00007265696669);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI14_SceneModifierPAAE14sceneBodyErrors5NeverOyFAA017_AppearanceActionD0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x18D00C9B0](0xD000000000000019, 0x800000018CD485B0);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static EmptyModifier._makeScene(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return a3(a1, v5);
}

uint64_t protocol witness for static _SceneModifier._makeScene(modifier:inputs:body:) in conformance EmptyModifier(uint64_t a1, _OWORD *a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return a3(a1, v5);
}

void ModifiedContent<>.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized ModifiedContent<>.body.getter(*(a1 + 16), *(a1 + 24), a2, a3);
}

{
  specialized ModifiedContent<>.body.getter(*(a1 + 16), *(a1 + 24), a2, a3);
}

{
  specialized ModifiedContent<>.body.getter(*(a1 + 16), *(a1 + 24), a2, a3);
}

{
  specialized ModifiedContent<>.body.getter(*(a1 + 16), *(a1 + 24), a2, a3);
}

double static ModifiedContent<>._makeScene(modifier:inputs:body:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = a2[1];
  v21[0] = *a2;
  v21[1] = v15;
  v22[0] = a2[2];
  *(v22 + 12) = *(a2 + 44);
  v20 = v14;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = a7;
  *(v16 + 40) = a8;
  *(v16 + 48) = v14;
  *(v16 + 56) = a3;
  *(v16 + 64) = a4;
  v17 = *(a8 + 32);

  v17(v19, v21, partial apply for closure #2 in static ModifiedContent<>._makeScene(modifier:inputs:body:), v16, a6, a8);

  return result;
}

uint64_t closure #2 in static ModifiedContent<>._makeScene(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v18[0] = a2[2];
  *(v18 + 12) = *(a2 + 44);
  v16 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a8 + 32))(v15, v17, a4, a5, a6, a8);
}

uint64_t static _SceneModifier_Content._makeScene(scene:inputs:)(void x0_0, _OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v26[0] = *a1;
  v26[1] = v4;
  v6 = *a1;
  v5 = a1[1];
  v27[0] = a1[2];
  *(v27 + 12) = *(a1 + 44);
  v23 = v6;
  v24 = v5;
  v25[0] = a1[2];
  *(v25 + 12) = *(a1 + 44);
  v7 = type metadata accessor for _SceneModifier_Content.BodyInput(0, a2, a3, a3);
  outlined init with copy of _SceneInputs(v26, v19);
  type metadata accessor for (_:_:)();
  swift_getWitnessTable(protocol conformance descriptor for _SceneModifier_Content<A>.BodyInput, v7);
  _SceneInputs.popLast<A, B>(_:)();
  v8 = v21;
  if (v21)
  {
    v9 = v22;
    v15[0] = v23;
    v15[1] = v24;
    v16[0] = v25[0];
    *(v16 + 12) = *(v25 + 12);
    v12 = v23;
    v13 = v24;
    v14[0] = v25[0];
    *(v14 + 12) = *(v25 + 12);
    v10 = outlined init with copy of _SceneInputs(v15, v19);
    v8(v10, &v12);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v8, v9);
    v17[0] = v12;
    v17[1] = v13;
    v18[0] = v14[0];
    *(v18 + 12) = *(v14 + 12);
    outlined destroy of _SceneInputs(v17);
  }

  else
  {
    PreferencesOutputs.init()();
  }

  v19[0] = v23;
  v19[1] = v24;
  v20[0] = v25[0];
  *(v20 + 12) = *(v25 + 12);
  return outlined destroy of _SceneInputs(v19);
}

uint64_t static _SceneModifier_Content.BodyInput.defaultValue.getter()
{
  v0 = type metadata accessor for (_:_:)();

  return MEMORY[0x1EEDE4450](v0);
}

uint64_t static _SceneModifier.makeBody(modifier:inputs:fields:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (AGTypeID.isValueType.getter())
  {
    v10 = type metadata accessor for AppModifierBodyAccessor(0, a6, a7, v9);
    swift_getWitnessTable(protocol conformance descriptor for AppModifierBodyAccessor<A>, v10);
    return BodyAccessor.makeBody(container:inputs:fields:)();
  }

  else
  {
    _StringGuts.grow(_:)(39);

    v12 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t AppModifierBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    v4 = type metadata accessor for AppModifierBodyAccessor(0, v2, v3, v3);
    swift_getWitnessTable(protocol conformance descriptor for AppModifierBodyAccessor<A>, v4);
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

void specialized _SceneModifier.sceneBodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t type metadata accessor for (_:_:)()
{
  result = lazy cache variable for type metadata for (_:_:);
  if (!lazy cache variable for type metadata for (_:_:))
  {
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:);
  if (!lazy cache variable for type metadata for (_:_:))
  {
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:_:);
  if (!lazy cache variable for type metadata for (_:_:))
  {
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &lazy cache variable for type metadata for (_:_:));
  }

  return result;
}

void specialized ModifiedContent<>.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ModifiedContent();
  v7[0] = a3;
  v7[1] = a4;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v7);
  specialized Scene.sceneBodyError()(v6);
}

{
  v6 = type metadata accessor for ModifiedContent();
  v7[0] = a3;
  v7[1] = a4;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v7);
  specialized WidgetConfiguration.widgetConfigurationBodyError()(v6);
}

{
  v6 = type metadata accessor for ModifiedContent();
  v7[0] = a3;
  v7[1] = a4;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v7);
  specialized ControlWidgetConfiguration.controlWidgetConfigurationBodyError()(v6);
}

{
  v6 = type metadata accessor for ModifiedContent();
  v7[0] = a3;
  v7[1] = a4;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v7);
  specialized ControlWidgetTemplate.controlWidgetTemplateBodyError()(v6);
}

uint64_t instantiation function for generic protocol witness table for _SceneModifier_Content<A>.BodyInput(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for _SceneModifier_Content<A>.BodyInput);
  *(a1 + 8) = result;
  return result;
}

double specialized MutableCollection<>.sort(by:)(char **a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v7);
  }

  v8 = *(v7 + 2);
  v10[0] = (v7 + 32);
  v10[1] = v8;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, a2);
  *a1 = v7;

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void *a1, char a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = v4[2];
  v22[0] = (v4 + 4);
  v22[1] = v5;
  result = _minimumMergeRunLength(_:)(v5);
  if (result >= v5)
  {
    if (v5 >= 2)
    {
      v11 = -1;
      v12 = 1;
      v13 = v4 + 4;
      do
      {
        v14 = v4[2 * v12 + 4];
        v15 = v13;
        v16 = v11;
        do
        {
          v17 = (v14 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame);
          if (a2)
          {
            v17 = (v14 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 8);
          }

          v18 = (*v15 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame);
          if (a2)
          {
            ++v18;
          }

          if (*v17 >= *v18)
          {
            break;
          }

          v19 = v15[3];
          *(v15 + 1) = *v15;
          *v15 = v14;
          v15[1] = v19;
          v15 -= 2;
        }

        while (!__CFADD__(v16++, 1));
        ++v12;
        --v11;
        v13 += 2;
      }

      while (v12 != v5);
    }
  }

  else
  {
    v8 = result;
    v9 = v5 >> 1;
    if (v5 >= 2)
    {
      type metadata accessor for UIKitProxyFocusItem();
      v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v10 + 16) = v9;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v21[0] = v10 + 32;
    v21[1] = v9;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v21, v23, v22, v8, a2 & 1, v7);
    *(v10 + 16) = 0;
  }

  *a1 = v4;
  return result;
}

__n128 one-time initialization function for zero()
{
  static HostingScrollView.PlatformGroupContainer.Viewport.zero = 0u;
  *&qword_1EAB09D20 = 0u;
  result = *MEMORY[0x1E69DDCE0];
  v1 = *(MEMORY[0x1E69DDCE0] + 16);
  xmmword_1EAB09D30 = *MEMORY[0x1E69DDCE0];
  *&qword_1EAB09D40 = v1;
  return result;
}

double HostingScrollView.PlatformGroupContainer.visibleBounds.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v10.receiver = Strong;
    v10.super_class = type metadata accessor for HostingScrollView();
    objc_msgSendSuper2(&v10, sel_bounds);
    v2 = v1;
    [v2 contentOffset];
    v4 = v3;
    [v2 adjustedContentInset];
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v4 = *&qword_1EAB09D20;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for HostingScrollView();
    v11.receiver = v6;
    v11.super_class = v7;
    objc_msgSendSuper2(&v11, sel_bounds);
    v8 = v6;
    [v8 contentOffset];
    [v8 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  return v4;
}

double HostingScrollView.PlatformGroupContainer.pageBounds.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v36.receiver = Strong;
    v36.super_class = type metadata accessor for HostingScrollView();
    objc_msgSendSuper2(&v36, sel_bounds);
    v2 = v1;
    [v2 contentOffset];
    v35 = v3;
    [v2 adjustedContentInset];
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v35 = *&qword_1EAB09D20;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = type metadata accessor for HostingScrollView();
    v37.receiver = v5;
    v37.super_class = v6;
    objc_msgSendSuper2(&v37, sel_bounds);
    v7 = v5;
    [v7 contentOffset];
    [v7 adjustedContentInset];
    v9 = v8;
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v9 = *(&xmmword_1EAB09D30 + 1);
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = type metadata accessor for HostingScrollView();
    v38.receiver = v11;
    v38.super_class = v12;
    objc_msgSendSuper2(&v38, sel_bounds);
    v13 = v11;
    [v13 contentOffset];
    [v13 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = type metadata accessor for HostingScrollView();
    v39.receiver = v15;
    v39.super_class = v16;
    objc_msgSendSuper2(&v39, sel_bounds);
    v17 = v15;
    [v17 contentOffset];
    [v17 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    v20 = type metadata accessor for HostingScrollView();
    v40.receiver = v19;
    v40.super_class = v20;
    objc_msgSendSuper2(&v40, sel_bounds);
    v21 = v19;
    [v21 contentOffset];
    [v21 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    v24 = type metadata accessor for HostingScrollView();
    v41.receiver = v23;
    v41.super_class = v24;
    objc_msgSendSuper2(&v41, sel_bounds);
    v25 = v23;
    [v25 contentOffset];
    [v25 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    v28 = type metadata accessor for HostingScrollView();
    v42.receiver = v27;
    v42.super_class = v28;
    objc_msgSendSuper2(&v42, sel_bounds);
    v29 = v27;
    [v29 contentOffset];
    [v29 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    v32 = type metadata accessor for HostingScrollView();
    v43.receiver = v31;
    v43.super_class = v32;
    objc_msgSendSuper2(&v43, sel_bounds);
    v33 = v31;
    [v33 contentOffset];
    [v33 adjustedContentInset];
  }

  else if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  return v35 + v9;
}

void HostingScrollView.PlatformGroupContainer.updateFocusScrollBoundaryMetrics(_:for:)(void *a1, id a2)
{
  if ([a2 parentFocusEnvironment])
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      [a2 frame];
      v7 = [v6 convertRect:v2 toView:?];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v36 = 1;
      v35 = 1;
      v34 = 1;
      v33 = 1;
      MEMORY[0x1EEE9AC00](v7);
      static Update.ensure<A>(_:)();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        v32.receiver = Strong;
        v32.super_class = type metadata accessor for HostingScrollView();
        objc_msgSendSuper2(&v32, sel_bounds);
        v19 = v18;
        v20 = v17;
        [v20 contentOffset];
        v22 = v21;
        [v20 adjustedContentInset];
        v24 = v23;
        v26 = v25;
      }

      else
      {
        if (one-time initialization token for zero != -1)
        {
          swift_once();
        }

        v19 = *(&static HostingScrollView.PlatformGroupContainer.Viewport.zero + 1);
        v22 = *&qword_1EAB09D28;
        v24 = *&xmmword_1EAB09D30;
        v26 = *&qword_1EAB09D40;
      }

      v31 = v19 - (v24 + v26);
      if (v35)
      {
        v27 = 1;
        if (v33)
        {
          goto LABEL_19;
        }

LABEL_16:
        v39.origin.x = v9;
        v39.origin.y = v11;
        v39.size.width = v13;
        v39.size.height = v15;
        if (v19 + v22 - v26 <= CGRectGetMaxY(v39))
        {
          v42.origin.x = v9;
          v42.origin.y = v11;
          v42.size.width = v13;
          v42.size.height = v15;
          MinY = CGRectGetMinY(v42);
          [v2 bounds];
          v28 = CGRectGetMaxY(v43) - v31 <= MinY;
        }

        else
        {
          v28 = 0;
        }

        goto LABEL_21;
      }

      v38.origin.x = v9;
      v38.origin.y = v11;
      v38.size.width = v13;
      v38.size.height = v15;
      if (CGRectGetMinY(v38) <= v22 + v24)
      {
        v40.origin.x = v9;
        v40.origin.y = v11;
        v40.size.width = v13;
        v40.size.height = v15;
        MaxY = CGRectGetMaxY(v40);
        [v2 bounds];
        v27 = MaxY <= v31 + CGRectGetMinY(v41);
        if ((v33 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v27 = 0;
        if ((v33 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_19:
      v28 = 1;
LABEL_21:
      [a1 setIsMinX_];
      [a1 setIsMinY_];
      [a1 setIsMaxX_];
      [a1 setIsMaxY_];
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }
}

void closure #1 in HostingScrollView.PlatformGroupContainer.updateFocusScrollBoundaryMetrics(_:for:)(char *a1, BOOL *a2, BOOL *a3, BOOL *a4, BOOL *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  swift_beginAccess();
  type metadata accessor for FocusableBorder?(0, &lazy cache variable for type metadata for FocusableBorder?, MEMORY[0x1E697E768], MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue && (*(WeakValue + 64) & 1) == 0)
  {
    v42 = a9;
    v20 = *(WeakValue + 32);
    v19 = *(WeakValue + 40);
    v21 = *(WeakValue + 48);
    v22 = *(WeakValue + 56);
    v23 = [a1 traitCollection];
    [v23 displayScale];
    v25 = v24;

    v47 = v20;
    v48 = v22;
    v49 = v21;
    v26 = 1.0 / v25;
    FocusableBorder.bounds.getter();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v45 = v33;
    v50.origin.x = a6;
    v50.origin.y = a7;
    v50.size.width = a8;
    v50.size.height = v42;
    MinX = CGRectGetMinX(v50);
    if (v26 == 1.0)
    {
      v46 = ceil(MinX);
      v51.origin.x = a6;
      v51.origin.y = a7;
      v51.size.width = a8;
      v51.size.height = v42;
      v44 = ceil(CGRectGetMinY(v51));
      v52.origin.x = a6;
      v52.origin.y = a7;
      v52.size.width = a8;
      v52.size.height = v42;
      v41 = floor(CGRectGetMaxX(v52));
      v53.origin.x = a6;
      v53.origin.y = a7;
      v53.size.width = a8;
      v53.size.height = v42;
      v35 = floor(CGRectGetMaxY(v53));
    }

    else
    {
      v46 = v26 * ceil(MinX / v26);
      v54.origin.x = a6;
      v54.origin.y = a7;
      v54.size.width = a8;
      v54.size.height = v42;
      v44 = v26 * ceil(CGRectGetMinY(v54) / v26);
      v55.origin.x = a6;
      v55.origin.y = a7;
      v55.size.width = a8;
      v55.size.height = v42;
      v41 = v26 * floor(CGRectGetMaxX(v55) / v26);
      v56.origin.x = a6;
      v56.origin.y = a7;
      v56.size.width = a8;
      v56.size.height = v42;
      v35 = v26 * floor(CGRectGetMaxY(v56) / v26);
    }

    v43 = v35;
    v57.origin.x = v28;
    v57.origin.y = v30;
    v57.size.width = v32;
    v57.size.height = v45;
    v36 = v19 + CGRectGetMinX(v57);
    if (v26 == 1.0)
    {
      v37 = ceil(v36);
      v58.origin.x = v28;
      v58.origin.y = v30;
      v58.size.width = v32;
      v58.size.height = v45;
      v38 = ceil(v47 + CGRectGetMinY(v58));
      v59.origin.x = v28;
      v59.origin.y = v30;
      v59.size.width = v32;
      v59.size.height = v45;
      v39 = floor(CGRectGetMaxX(v59) - v48);
      v60.origin.x = v28;
      v60.origin.y = v30;
      v60.size.width = v32;
      v60.size.height = v45;
      v40 = floor(CGRectGetMaxY(v60) - v49);
    }

    else
    {
      v37 = v26 * ceil(v36 / v26);
      v61.origin.x = v28;
      v61.origin.y = v30;
      v61.size.width = v32;
      v61.size.height = v45;
      v38 = v26 * ceil((v47 + CGRectGetMinY(v61)) / v26);
      v62.origin.x = v28;
      v62.origin.y = v30;
      v62.size.width = v32;
      v62.size.height = v45;
      v39 = v26 * floor((CGRectGetMaxX(v62) - v48) / v26);
      v63.origin.x = v28;
      v63.origin.y = v30;
      v63.size.width = v32;
      v63.size.height = v45;
      v40 = v26 * floor((CGRectGetMaxY(v63) - v49) / v26);
    }

    *a2 = v41 <= v37;
    *a3 = v43 <= v38;
    *a4 = v39 <= v46;
    *a5 = v40 <= v44;
  }
}

double HostingScrollView.PlatformGroupContainer.preferredFocusEnvironments.getter(double result)
{
  v2 = *(v1 + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_requestedFocusItem);
  if (v2)
  {
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = *(v4 + 64);
      v6 = v4;
      swift_unknownObjectRetain_n();
      v5(ObjectType, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    type metadata accessor for FocusableBorder?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *&v8 = 1;
    *(v7 + 16) = xmmword_18CD69590;
    *(v7 + 32) = v2;
  }

  return v8;
}

uint64_t closure #1 in HostingScrollView.PlatformGroupContainer.focusItems(in:)@<X0>(void *a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v12 = a1;
  v48.receiver = a1;
  v48.super_class = type metadata accessor for HostingScrollView.PlatformGroupContainer();
  v14 = objc_msgSendSuper2(&v48, sel_focusItemsInRect_, a3, a4, a5, a6);
  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem, &protocolRef_UIFocusItem);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = MEMORY[0x1E69E7CC0];
  if (v15 >> 62)
  {
LABEL_16:
    v16 = __CocoaSet.count.getter();
    v45 = a2;
    v46 = v12;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = a2;
    v46 = v12;
    if (v16)
    {
LABEL_3:
      v44 = v7;
      v17 = 0;
      a2 = (v15 & 0xC000000000000001);
      v7 = v15 & 0xFFFFFFFFFFFFFF8;
      v49 = v15 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a2)
        {
          MEMORY[0x18D00E9C0](v17, v15);
          v12 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v12 = v46;
            v18 = v47;
            goto LABEL_18;
          }
        }

        else
        {
          if (v17 >= *(v7 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          swift_unknownObjectRetain();
          v12 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            goto LABEL_13;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v7 = v49;
        }

        ++v17;
        if (v12 == v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_18:

  *v45 = v18;
  v19 = specialized UIFocusEnvironment.nearestRenderer()();
  if (!v19)
  {
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  v21 = v19;
  v22 = v20;
  ObjectType = swift_getObjectType();
  v24 = (*(v22 + 24))(ObjectType, v22);
  if (v21 == v12)
  {
LABEL_25:
    swift_unknownObjectRelease();
    if (v24)
    {
      goto LABEL_42;
    }

LABEL_40:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  swift_getObjectType();
  v25 = swift_conformsToProtocol2();
  if (v25 && v12)
  {
    v26 = v25;
    v27 = swift_getObjectType();
    v28 = v12;
    v29 = UIFocusEnvironment.nearestRenderer()();
    if (v29)
    {
      v30 = v29;
      swift_unknownObjectRelease();
      if (v30 == v21)
      {
        v24 = (*(v26 + 56))(v27, v26);

        goto LABEL_25;
      }
    }

    v12 = v46;
  }

  for (i = v12; ; i = v38)
  {
    swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    if (v33)
    {
      if (i)
      {
        v34 = v33;
        v35 = swift_getObjectType();
        v36 = (*(v34 + 8))(v35, v34);
        if (v36)
        {
          break;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_37:
    v38 = [i parentFocusEnvironment];
    swift_unknownObjectRelease();
    if (!v38)
    {
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

    swift_unknownObjectRetain();
  }

  v24 = v36;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRelease();
  if (!Strong || (swift_unknownObjectRelease(), Strong != v21))
  {

    goto LABEL_37;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_42:
  v39 = v21 != v46;
  v40 = v46;
  v41 = specialized static FocusBridge.focusItems(responderNode:rect:host:skipRoot:)(v24, v40, v39, a3, a4, a5, a6);

  v31 = v41;
LABEL_43:
  specialized Array.append<A>(contentsOf:)(v31);
  v42 = HostingScrollView.PlatformGroupContainer.fillerFocusItems(in:)(a3, a4, a5, a6);
  return specialized Array.append<A>(contentsOf:)(v42);
}

unint64_t HostingScrollView.PlatformGroupContainer.fillerFocusItems(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = HostingScrollView.PlatformGroupContainer.fillerAxis.getter();
  v80 = v12;
  v13 = MEMORY[0x1E69E7CC0];
  if (v12 == 2)
  {
    return v13;
  }

  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  *(&v73 - 2) = v4;
  type metadata accessor for [FocusableBounds]?(0, &lazy cache variable for type metadata for [FocusableFillerBounds]?, &lazy cache variable for type metadata for [FocusableFillerBounds], MEMORY[0x1E697FC28], v14);
  static Update.ensure<A>(_:)();
  v15 = v87;
  if (!v87)
  {
    v15 = v13;
  }

  v75 = v15;
  v16 = *(v15 + 16);
  if (!v16)
  {

    goto LABEL_34;
  }

  v76 = v4;
  v74 = v11;
  v81 = v80 & 1;
  v84 = v16 - 1;
  for (i = (v75 + 72); ; i += 14)
  {
    v18 = *(i - 3);
    v101 = *(i - 5);
    v102 = v18;
    v20 = *(i - 1);
    v19 = *i;
    v22 = i[1];
    v21 = i[2];
    v23 = *(i + 24);
    v24 = *(i + 25);
    *(v100 + 3) = *(i + 7);
    v100[0] = v24;
    v26 = i[4];
    v25 = i[5];
    v28 = i[6];
    v27 = i[7];
    v29 = *(i + 64);
    v30 = *(i - 5);
    v88 = *(i - 3);
    v87 = v30;
    v89 = v20;
    v90 = v19;
    v91 = v22;
    v92 = v21;
    v93 = v23;
    v31 = *(i + 25);
    *&v94[3] = *(i + 7);
    *v94 = v31;
    v95 = v26;
    v96 = v25;
    v82 = v28;
    v97 = v28;
    v98 = v27;
    v83 = v27;
    v99 = v29;
    FocusableFillerBounds.bounds.getter();
    v105.origin.x = v32;
    v105.origin.y = v33;
    v105.size.width = v34;
    v105.size.height = v35;
    v103.origin.x = a1;
    v103.origin.y = a2;
    v103.size.width = a3;
    v103.size.height = a4;
    v104 = CGRectIntersection(v103, v105);
    if (CGRectIsEmpty(v104))
    {
      goto LABEL_30;
    }

    if (v80)
    {
      v36 = v29;
    }

    else
    {
      v36 = v23;
    }

    if ((v36 & 1) == 0)
    {
      if (v80)
      {
        v46 = v83;
      }

      else
      {
        v46 = v21;
      }

      *&v79 = v46;
      if (v80)
      {
        v47 = v82;
      }

      else
      {
        v47 = v22;
      }

      *&v78 = v47;
      if (v80)
      {
        v48 = v25;
      }

      else
      {
        v48 = v19;
      }

      *(&v77 + 1) = v48;
      if (v80)
      {
        v49 = v26;
      }

      else
      {
        v49 = v20;
      }

      *&v77 = v49;
      v87 = v101;
      v88 = v102;
      v89 = v20;
      v90 = v19;
      v91 = v22;
      v92 = v21;
      v93 = v23;
      *v94 = v100[0];
      *&v94[3] = *(v100 + 3);
      v95 = v26;
      v96 = v25;
      v97 = v82;
      v98 = v83;
      v99 = v29;
      FocusableFillerBounds.bounds.getter();
      v39 = v50;
      v41 = v51;
      v43 = v52;
      v45 = v53;
      v85 = v77;
      *&v86 = v78;
      *(&v86 + 1) = v79;
      goto LABEL_29;
    }

    if (v81)
    {
      v37 = v23;
    }

    else
    {
      v37 = v29;
    }

    if ((v37 & 1) == 0)
    {
      v87 = v101;
      v88 = v102;
      v89 = v20;
      v90 = v19;
      v91 = v22;
      v92 = v21;
      v93 = v23;
      *v94 = v100[0];
      *&v94[3] = *(v100 + 3);
      v95 = v26;
      v96 = v25;
      v97 = v82;
      v98 = v83;
      v99 = v29;
      FocusableFillerBounds.bounds.getter();
      default argument 2 of FocusableFillerBounds.Metrics.init(size:spacing:lowerInset:upperInset:)();
      default argument 3 of FocusableFillerBounds.Metrics.init(size:spacing:lowerInset:upperInset:)();
      FocusableFillerBounds.Metrics.init(size:spacing:lowerInset:upperInset:)();
      v79 = v85;
      v78 = v86;
      v87 = v101;
      v88 = v102;
      v89 = v20;
      v90 = v19;
      v91 = v22;
      v92 = v21;
      v93 = v23;
      *v94 = v100[0];
      *&v94[3] = *(v100 + 3);
      v95 = v26;
      v96 = v25;
      v97 = v82;
      v98 = v83;
      v99 = v29;
      FocusableFillerBounds.bounds.getter();
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v86 = v78;
      v85 = v79;
LABEL_29:
      HostingScrollView.PlatformGroupContainer.addFillerItems(in:bounds:axis:metrics:)(v81, &v85, a1, a2, a3, a4, v39, v41, v43, v45);
    }

LABEL_30:
    if (!v84)
    {
      break;
    }

    --v84;
  }

  v11 = v74;
  v4 = v76;
LABEL_34:
  HostingScrollView.PlatformGroupContainer.queryFillerItems(in:)(a1, a2, a3, a4);
  v13 = v54;
  static Log.focus.getter();
  v55 = type metadata accessor for Logger();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v11, 1, v55) == 1)
  {
    outlined destroy of Logger?(v11);
  }

  else
  {

    v57 = v4;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v74 = v11;
      v60 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v101 = v84;
      *v60 = 134218498;
      if (v13 >> 62)
      {
        v61 = __CocoaSet.count.getter();
      }

      else
      {
        v61 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v60 + 4) = v61;

      *(v60 + 12) = 2080;
      MEMORY[0x18D00DFC0](&v87, v62, a1, a2, a3, a4);
      v63 = LoggableRect.description.getter();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v101);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2080;
      v66 = v57;
      v67 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCAA17HostingScrollViewC22PlatformGroupContainerC_Tt0g5Tf4g_n();
      v69 = v68;

      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v101);

      *(v60 + 24) = v70;
      _os_log_impl(&dword_18BD4A000, v58, v59, "filler items queried: %ld in: %s for: %s", v60, 0x20u);
      v71 = v84;
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v71, -1, -1);
      MEMORY[0x18D0110E0](v60, -1, -1);

      v11 = v74;
    }

    else
    {
    }

    (*(v56 + 8))(v11, v55);
  }

  return v13;
}

uint64_t HostingScrollView.PlatformGroupContainer.fillerAxis.getter()
{
  [v0 bounds];
  Height = CGRectGetHeight(v4);
  v5.origin.x = HostingScrollView.PlatformGroupContainer.pageBounds.getter();
  if (CGRectGetHeight(v5) < Height)
  {
    return 1;
  }

  [v0 bounds];
  Width = CGRectGetWidth(v6);
  v7.origin.x = HostingScrollView.PlatformGroupContainer.pageBounds.getter();
  return 2 * (CGRectGetWidth(v7) >= Width);
}

void HostingScrollView.PlatformGroupContainer.addFillerItems(in:bounds:axis:metrics:)(char a1, uint64_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = v10;
  v131 = *a2;
  v130 = a2[1];
  v129 = a2[2];
  v128 = a2[3];
  v12 = a1 & 1;
  CGRect.range(in:)();
  v14 = v13;
  v16 = v15;
  CGRect.range(in:)();
  v126 = v18;
  v127 = v17;
  HostingScrollView.PlatformGroupContainer.visibleBounds.getter();
  CGRect.range(in:)();
  v20 = v19.n128_f64[0];
  v22 = v21;
  type metadata accessor for [FocusableBounds]?(0, &lazy cache variable for type metadata for [FocusableBounds]?, &lazy cache variable for type metadata for [FocusableBounds], MEMORY[0x1E697E780], v19);
  v23 = 0;
  static Update.ensure<A>(_:)();
  v24 = MEMORY[0x1E69E7CC0];
  if (v140)
  {
    v25 = v140;
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v145 = v25;
  CGRect.range(in:)();
  v134 = v14;
  if (v26 > v14)
  {
    v28 = v26;
  }

  else
  {
    v28 = v14;
  }

  v125 = v16;
  if (v16 >= v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v16;
  }

  if (v28 >= v29)
  {
    goto LABEL_162;
  }

  if (v28 > v29)
  {
    goto LABEL_167;
  }

  v144[0] = v24;
  v124 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_fillerItems;

  specialized _ArrayProtocol.filter(_:)(v30, &v145, v12, v144, v28, v29);
  v32 = v31;

  specialized MutableCollection<>.sort(by:)(v144, v12);
  v143 = v24;
  FocusableFillerBounds.Metrics.size.getter();
  v136 = v33;
  FocusableFillerBounds.Metrics.spacing.getter();
  v133 = v34;
  *&v140 = v131;
  *(&v140 + 1) = v130;
  *&v141 = v129;
  *(&v141 + 1) = v128;
  FocusableFillerBounds.Metrics.minSize.getter();
  v132 = v35;
  v23 = *(v145 + 2);
  if (v23)
  {
    v36 = v145 + 64;
    while (1)
    {
      v38 = *v36;
      v140 = *(v36 - 2);
      v141 = *(v36 - 1);
      v142 = v38;
      FocusableBounds.bounds.getter();
      CGRect.range(in:)();
      v41 = v39;
      v42 = v40;
      if (v39 <= v20)
      {
        v39 = v20;
      }

      if (v22 < v40)
      {
        v40 = v22;
      }

      if (v39 < v40)
      {
        break;
      }

      if ((v38 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_15:
      v36 += 40;
      if (!--v23)
      {
        goto LABEL_28;
      }
    }

    if (v39 > v40)
    {
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);

      __break(1u);
      return;
    }

LABEL_24:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
    }

    v44 = *(v24 + 2);
    v43 = *(v24 + 3);
    if (v44 >= v43 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v24);
    }

    *(v24 + 2) = v44 + 1;
    v37 = &v24[16 * v44];
    *(v37 + 4) = v41;
    *(v37 + 5) = v42;
    goto LABEL_15;
  }

LABEL_28:
  v23 = *(v24 + 2);
  if (v23)
  {
    v45 = (v24 + 32);
    v46 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (*v45 > v28)
      {
        v47 = *v45;
      }

      else
      {
        v47 = v28;
      }

      v48 = v45[1];
      if (v29 < v48)
      {
        v48 = v29;
      }

      if (v47 < v48)
      {
        if (v47 > v48)
        {
          goto LABEL_165;
        }

        v137 = *v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
        }

        v50 = *(v46 + 2);
        v49 = *(v46 + 3);
        v51 = v137;
        if (v50 >= v49 >> 1)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v46);
          v51 = v137;
          v46 = v52;
        }

        *(v46 + 2) = v50 + 1;
        *&v46[16 * v50 + 32] = v51;
      }

      v45 += 2;
      if (!--v23)
      {
        goto LABEL_44;
      }
    }
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_44:

  if (v28 >= v20)
  {
    goto LABEL_96;
  }

  *&v140 = v46;

  v23 = 0;
  specialized MutableCollection<>.sort(by:)(&v140);
  if (v20 >= v29)
  {
    v53 = v29;
  }

  else
  {
    v53 = v20;
  }

  if (v28 > v53)
  {
    goto LABEL_168;
  }

  v54 = v140;
  *&v140 = v131;
  *(&v140 + 1) = v130;
  *&v141 = v129;
  *(&v141 + 1) = v128;
  FocusableFillerBounds.Metrics.lowerInset.getter();
  v56 = floor((v28 - v134 - v55 - v136) / (v136 + v133) + 1.0);
  if (v56 <= 0.0)
  {
    v56 = 0.0;
  }

  v57 = v134 + v55 + (v136 + v133) * v56;
  if (v57 >= v53)
  {

LABEL_96:
    v58 = MEMORY[0x1E69E7CC0];
    if (v22 >= v29)
    {
      goto LABEL_150;
    }

    goto LABEL_97;
  }

  v58 = MEMORY[0x1E69E7CC0];
  v135 = v53;
  do
  {
    v61 = *(v54 + 2);
    if (!v61)
    {
LABEL_56:
      v62 = v136;
LABEL_57:
      if (v12)
      {
        v63 = v126 - v127;
      }

      else
      {
        v63 = v62;
      }

      if (v12)
      {
        v64 = v62;
      }

      else
      {
        v64 = v126 - v127;
      }

      if (v12)
      {
        v65 = 0.0;
      }

      else
      {
        v65 = v57;
      }

      if (v12)
      {
        v66 = v57;
      }

      else
      {
        v66 = 0.0;
      }

      v67 = v144[0];
      v68 = v144[0][2];
      if (v68)
      {
        v69 = v144[0][4];
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v68 - 1) > v67[3] >> 1)
        {
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v68, 1, v67);
          v144[0] = v67;
        }

        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
        v144[0] = v67;
      }

      else
      {
        v73 = type metadata accessor for UIKitFocusableFillerItem();
        v74 = objc_allocWithZone(v73);
        swift_unknownObjectWeakInit();
        v75 = &v74[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame];
        *v75 = 0u;
        v75[1] = 0u;
        v76 = &v74[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_focusableFrame];
        *v76 = 0u;
        *(v76 + 1) = 0u;
        v76[32] = 1;
        swift_unknownObjectWeakAssign();
        v74[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_axis] = v12;
        v138.receiver = v74;
        v138.super_class = v73;
        v77 = objc_msgSendSuper2(&v138, sel_init);
        swift_beginAccess();
        v69 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        }

        v79 = v58[2];
        v78 = v58[3];
        if (v79 >= v78 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v58);
        }

        v58[2] = v79 + 1;
        v80 = &v58[2 * v79];
        v80[4] = v69;
        v80[5] = &protocol witness table for UIKitFocusableFillerItem;
        v143 = v58;
        swift_endAccess();
      }

      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
      }

      v82 = v32[2];
      v81 = v32[3];
      if (v82 >= v81 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v32);
      }

      v32[2] = v82 + 1;
      v59 = &v32[2 * v82];
      v59[4] = v69;
      v59[5] = &protocol witness table for UIKitFocusableFillerItem;
      v60 = &v69[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame];
      *v60 = v65;
      v60[1] = v66;
      v60[2] = v63;
      v60[3] = v64;
      swift_unknownObjectRelease();
      v53 = v135;
      goto LABEL_54;
    }

    while (*(v54 + 5) <= v57)
    {
      v72 = swift_isUniquelyReferenced_nonNull_native();
      if (!v72 || (v61 - 1) > *(v54 + 3) >> 1)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v72, v61, 1, v54);
      }

      v71 = *(v54 + 2);
      memmove(v54 + 32, v54 + 48, 16 * v71 - 16);
      v61 = v71 - 1;
      *(v54 + 2) = v61;
      if (!v61)
      {
        goto LABEL_56;
      }
    }

    v62 = *(v54 + 4) - v133 - v57;
    if (v53 - v57 < v62)
    {
      v62 = v53 - v57;
    }

    if (v132 <= v62)
    {
      if (v136 < v62)
      {
        v62 = v136;
      }

      goto LABEL_57;
    }

LABEL_54:
    v57 = v136 + v133 + v57;
  }

  while (v57 < v53);

  if (v22 < v29)
  {
LABEL_97:
    *&v140 = v46;

    v23 = 0;
    specialized MutableCollection<>.sort(by:)(&v140);

    if (v28 > v22)
    {
      v83 = v28;
    }

    else
    {
      v83 = v22;
    }

    if (v83 > v29)
    {
      goto LABEL_169;
    }

    v23 = v140;
    *&v140 = v131;
    *(&v140 + 1) = v130;
    *&v141 = v129;
    *(&v141 + 1) = v128;
    FocusableFillerBounds.Metrics.upperInset.getter();
    v85 = v125 - v84;
    v86 = v136 + v133;
    v87 = floor((v85 - v29 - v136) / (v136 + v133) + 1.0);
    if (v87 <= 0.0)
    {
      v87 = 0.0;
    }

    v88 = v85 - v86 * v87;
    if (v83 >= v88)
    {

      goto LABEL_151;
    }

    do
    {
      v91 = v23 + 16;
      v92 = *(v23 + 2);
      if (v92)
      {
        while (v88 <= *&v91[2 * v92])
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
          }

          v91 = v23 + 16;
          v93 = *(v23 + 2);
          if (!v93)
          {
            __break(1u);
            goto LABEL_164;
          }

          v92 = v93 - 1;
          *v91 = v92;
          if (!v92)
          {
            goto LABEL_113;
          }
        }

        v94 = v88 - *&v91[2 * v92 + 1] - v133;
        if (v88 - v83 < v94)
        {
          v94 = v88 - v83;
        }

        if (v132 > v94)
        {
          goto LABEL_106;
        }

        if (v136 < v94)
        {
          v94 = v136;
        }
      }

      else
      {
LABEL_113:
        v94 = v136;
      }

      if (v12)
      {
        v95 = v126 - v127;
      }

      else
      {
        v95 = v94;
      }

      if (v12)
      {
        v96 = v94;
      }

      else
      {
        v96 = v126 - v127;
      }

      if (v12)
      {
        v97 = 0.0;
      }

      else
      {
        v97 = v88 - v94;
      }

      if (v12)
      {
        v98 = v88 - v94;
      }

      else
      {
        v98 = 0.0;
      }

      v99 = v144[0];
      if (v144[0][2])
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v100 = v99[2];
          if (!v100)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v99 = specialized _ArrayBuffer._consumeAndCreateNew()(v99);
          v100 = v99[2];
          if (!v100)
          {
            goto LABEL_166;
          }
        }

        v101 = v100 - 1;
        v102 = v99[2 * v101 + 4];
        v99[2] = v101;
        v144[0] = v99;
      }

      else
      {
        v103 = type metadata accessor for UIKitFocusableFillerItem();
        v104 = objc_allocWithZone(v103);
        swift_unknownObjectWeakInit();
        v105 = &v104[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame];
        *v105 = 0u;
        v105[1] = 0u;
        v106 = &v104[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_focusableFrame];
        *v106 = 0u;
        *(v106 + 1) = 0u;
        v106[32] = 1;
        swift_unknownObjectWeakAssign();
        v104[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_axis] = v12;
        v139.receiver = v104;
        v139.super_class = v103;
        v107 = objc_msgSendSuper2(&v139, sel_init);
        swift_beginAccess();
        v102 = v107;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        }

        v109 = v58[2];
        v108 = v58[3];
        if (v109 >= v108 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1, v58);
        }

        v58[2] = v109 + 1;
        v110 = &v58[2 * v109];
        v110[4] = v102;
        v110[5] = &protocol witness table for UIKitFocusableFillerItem;
        v143 = v58;
        swift_endAccess();
      }

      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
      }

      v112 = v32[2];
      v111 = v32[3];
      if (v112 >= v111 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v32);
      }

      v32[2] = v112 + 1;
      v89 = &v32[2 * v112];
      v89[4] = v102;
      v89[5] = &protocol witness table for UIKitFocusableFillerItem;
      v90 = &v102[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame];
      *v90 = v97;
      v90[1] = v98;
      v90[2] = v95;
      v90[3] = v96;
      swift_unknownObjectRelease();
LABEL_106:
      v88 = v88 - v86;
    }

    while (v83 < v88);
  }

LABEL_150:

LABEL_151:
  v113 = v144[0];
  v114 = v144[0][2];
  if (v114)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem, 0x1E69DCA38);
    v115 = v113 + 4;
    do
    {
      v116 = *v115;
      swift_unknownObjectRetain();
      v117 = static UIFocusSystem.focusSystem(for:)();
      if (v117)
      {
        v118 = v117;
        [v117 _focusEnvironmentWillDisappear_];
      }

      swift_unknownObjectRelease();
      v115 += 2;
      --v114;
    }

    while (v114);
  }

  *(v11 + v124) = v32;

  v119 = v58[2];
  if (v119)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFocusSystem, 0x1E69DCA38);
    v120 = v58 + 4;
    do
    {
      v121 = *v120;
      swift_unknownObjectRetain();
      v122 = static UIFocusSystem.focusSystem(for:)();
      if (v122)
      {
        v123 = v122;
        [v122 _focusEnvironmentDidAppear_];
      }

      swift_unknownObjectRelease();
      v120 += 2;
      --v119;
    }

    while (v119);
  }

LABEL_162:
}

void HostingScrollView.PlatformGroupContainer.queryFillerItems(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *(v4 + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_fillerItems);
  v10 = *(v9 + 16);

  if (v10)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      v13 = v11;
      while (1)
      {
        if (v13 >= *(v9 + 16))
        {
          __break(1u);
          return;
        }

        v11 = v13 + 1;
        v46 = *(v9 + 32 + 16 * v13);
        v14 = *(v46 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame);
        v15 = *(v46 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 8);
        v16 = *(v46 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 16);
        v17 = *(v46 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 24);
        swift_unknownObjectRetain();
        v47.origin.x = v14;
        v47.origin.y = v15;
        v47.size.width = v16;
        v47.size.height = v17;
        v50.origin.x = a1;
        v50.origin.y = a2;
        v50.size.width = a3;
        v50.size.height = a4;
        v48 = CGRectIntersection(v47, v50);
        if (!CGRectIsEmpty(v48))
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v13;
        if (v10 == v11)
        {
          goto LABEL_15;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
      }

      v18 = v46;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v18 = v46;
      }

      *(v12 + 16) = v20 + 1;
      *(v12 + 16 * v20 + 32) = v18;
    }

    while (v10 - 1 != v13);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  v21 = *(v12 + 16);
  if (v21)
  {
    v22 = (v12 + 32);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      v25 = *(v24 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_axis);
      v26 = *(v24 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame);
      v27 = *(v24 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 8);
      v28 = *(v24 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 16);
      v29 = *(v24 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame + 24);
      swift_unknownObjectRetain();
      v49.origin.x = a1;
      v49.origin.y = a2;
      v49.size.width = a3;
      v49.size.height = a4;
      v51.origin.x = v26;
      v51.origin.y = v27;
      v51.size.width = v28;
      v51.size.height = v29;
      CGRectIntersection(v49, v51);
      CGRect.range(in:)();
      v30 = a2;
      v31 = a4;
      v33 = v32;
      v34 = a1;
      v35 = a3;
      v37 = v36;
      CGRect.range(in:)();
      v39 = v37 - v33;
      a3 = v35;
      a1 = v34;
      v41 = v40 - v38;
      if (v25)
      {
        v42 = v38;
      }

      else
      {
        v42 = v33;
      }

      if (v25)
      {
        v38 = v33;
      }

      a4 = v31;
      a2 = v30;
      if (v25)
      {
        v43 = v41;
      }

      else
      {
        v43 = v39;
      }

      v44 = v23 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_focusableFrame;
      *v44 = v42;
      *(v44 + 8) = v38;
      if (v25)
      {
        v45 = v39;
      }

      else
      {
        v45 = v41;
      }

      *(v44 + 16) = v43;
      *(v44 + 24) = v45;
      *(v44 + 32) = 0;
      swift_unknownObjectRelease();
      --v21;
    }

    while (v21);
  }

  specialized _arrayForceCast<A, B>(_:)(v12);
}

void HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.searchRect.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  if ((*(v0 + 64) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v1 <= *(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  if (v2 > v1)
  {
    __break(1u);
LABEL_6:
    if (*(v0 + 24) < v2)
    {
      v2 = *(v0 + 24);
    }

    if (v2 > v1)
    {
      __break(1u);
    }
  }
}

uint64_t closure #1 in HostingScrollView.PlatformGroupContainer.pruneFillerItems()(uint64_t *a1, id a2, void **a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v12 = *a1;
  v13 = *a1 + OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  v17 = *(v13 + 24);
  [a2 bounds];
  v28.origin.x = v14;
  v28.origin.y = v15;
  v28.size.width = v16;
  v28.size.height = v17;
  v25 = CGRectIntersection(v24, v28);
  v29.origin.x = v14;
  v29.origin.y = v15;
  v29.size.width = v16;
  v29.size.height = v17;
  if (CGRectEqualToRect(v25, v29))
  {
    v26.origin.x = a4;
    v26.origin.y = a5;
    v26.size.width = a6;
    v26.size.height = a7;
    v30.origin.x = v14;
    v30.origin.y = v15;
    v30.size.width = v16;
    v30.size.height = v17;
    v27 = CGRectIntersection(v26, v30);
    if (CGRectIsEmpty(v27))
    {
      return 1;
    }
  }

  v19 = *a3;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
    *a3 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
    *a3 = v19;
  }

  result = 0;
  v19[2] = v22 + 1;
  v23 = &v19[2 * v22];
  v23[4] = v12;
  v23[5] = &protocol witness table for UIKitFocusableFillerItem;
  return result;
}

void HostingScrollView.PlatformGroupContainer.querySubstitute(for:)(unsigned __int8 *a1)
{
  v1 = a1[OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_axis];
  [a1 frame];
  CGRect.range(in:)();
  ClosedRange<>.meanBound.getter();
  v22 = v2;
  CGRect.range(in:)();
  v4 = v3;
  v6 = v5;
  HostingScrollView.PlatformGroupContainer.visibleBounds.getter();
  CGRect.range(in:)();
  v8 = v7;
  v10 = v9;
  HostingScrollView.PlatformGroupContainer.visibleBounds.getter();
  CGRect.range(in:)();
  v12 = v11;
  v14 = v13;
  ClosedRange<>.meanBound.getter();
  v16 = v15;
  ClosedRange<>.meanBound.getter();
  v18 = v17;
  LOBYTE(v25) = v1;
  *(&v25 + 1) = v4;
  *&v26 = v6;
  *(&v26 + 1) = v8;
  *&v27 = v10;
  *(&v27 + 1) = v12;
  *&v28 = v14;
  *(&v28 + 1) = v22;
  v29 = v16 >= v17;
  HostingScrollView.PlatformGroupContainer.queryDeepestFocusableItem(strategy:)(&v25);
  if (!v19)
  {
    if (v4 > v8)
    {
      v20 = v4;
    }

    else
    {
      v20 = v8;
    }

    if (v10 >= v6)
    {
      v21 = v6;
    }

    else
    {
      v21 = v10;
    }

    if (v20 < v21)
    {
      if (v20 > v21)
      {
        __break(1u);
      }

      else if ((v6 - v4) * 0.5 <= v21 - v20)
      {
        v23[0] = v25;
        v23[1] = v26;
        v23[2] = v27;
        v23[3] = v28;
        v24 = v16 < v18;
        HostingScrollView.PlatformGroupContainer.queryDeepestFocusableItem(strategy:)(v23);
      }
    }
  }
}

void HostingScrollView.PlatformGroupContainer.queryDeepestFocusableItem(strategy:)(unsigned __int8 *a1)
{
  v2 = v1;
  v77 = a1;
  HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.searchRect.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = specialized UIFocusEnvironment.nearestRenderer()();
  if (!v11)
  {
    goto LABEL_22;
  }

  v13 = v11;
  v14 = v12;
  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 24))(ObjectType, v14);
  if (v13 == v1)
  {
LABEL_8:
    swift_unknownObjectRelease();
    if (v16)
    {
      goto LABEL_74;
    }

LABEL_22:
    v30 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      goto LABEL_75;
    }

    goto LABEL_23;
  }

  swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v17 && v1)
  {
    v18 = v17;
    v19 = swift_getObjectType();
    v20 = v1;
    v21 = UIFocusEnvironment.nearestRenderer()();
    if (v21)
    {
      v22 = v21;
      swift_unknownObjectRelease();
      if (v22 == v13)
      {
        v16 = (*(v18 + 56))(v19, v18);

        goto LABEL_8;
      }
    }
  }

  for (i = v2; ; i = v29)
  {
    swift_getObjectType();
    v24 = swift_conformsToProtocol2();
    if (v24)
    {
      if (i)
      {
        v25 = v24;
        v26 = swift_getObjectType();
        v27 = (*(v25 + 8))(v26, v25);
        if (v27)
        {
          break;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_19:
    v29 = [i parentFocusEnvironment];
    swift_unknownObjectRelease();
    if (!v29)
    {
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    swift_unknownObjectRetain();
  }

  v16 = v27;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRelease();
  if (!Strong || (swift_unknownObjectRelease(), Strong != v13))
  {

    goto LABEL_19;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_74:
  v75 = v13 != v2;
  v76 = v2;
  v30 = specialized static FocusBridge.focusItems(responderNode:rect:host:skipRoot:)(v16, v76, v75, v4, v6, v8, v10);

  if (!(v30 >> 62))
  {
LABEL_23:
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_24;
  }

LABEL_75:
  v31 = __CocoaSet.count.getter();
LABEL_24:
  v32 = MEMORY[0x1E69E7CC0];
  if (!v31)
  {
LABEL_70:
    v80 = v32;

    specialized MutableCollection<>.sort(by:)(&v80, v77);

    if (*(v80 + 2))
    {
      swift_unknownObjectRetain();
    }

    return;
  }

  v78 = v10;
  v79 = v8;
  while (2)
  {
    v33 = v30 >> 62;
    if (v30 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_82;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_83;
      }

LABEL_28:
      if ((v30 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x18D00E9C0](0, v30);
        v35 = v30 & 0xFFFFFFFFFFFFFF8;
        if (!v33)
        {
LABEL_31:
          v36 = *(v35 + 16);
          if (!v36)
          {
            goto LABEL_80;
          }

          goto LABEL_40;
        }
      }

      else
      {
        if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v34 = *(v30 + 32);
        swift_unknownObjectRetain();
        v35 = v30 & 0xFFFFFFFFFFFFFF8;
        if (!v33)
        {
          goto LABEL_31;
        }
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_80;
      }

      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_81;
      }

      v36 = __CocoaSet.count.getter();
LABEL_40:
      v37 = v36 - 1;
      if (__OFSUB__(v36, 1))
      {
        goto LABEL_78;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v33)
        {
          v38 = (v30 & 0xFFFFFFFFFFFFFF8);
          if (v37 <= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }
      }

      else if (!v33)
      {
LABEL_47:
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v38 = (v30 & 0xFFFFFFFFFFFFFF8);
LABEL_48:
        swift_unknownObjectRelease();
        if (v30 >> 62)
        {
          v73 = __CocoaSet.count.getter();
          if (__OFSUB__(v73, 1))
          {
            goto LABEL_84;
          }

          memmove(v38 + 4, v38 + 5, 8 * (v73 - 1));
          v74 = __CocoaSet.count.getter();
          v40 = v74 - 1;
          if (__OFSUB__(v74, 1))
          {
            goto LABEL_79;
          }
        }

        else
        {
          v39 = v38[2];
          memmove(v38 + 4, v38 + 5, 8 * v39 - 8);
          v40 = v39 - 1;
          if (__OFSUB__(v39, 1))
          {
            goto LABEL_79;
          }
        }

        v38[2] = v40;
        v81 = v30;
        if (([swift_unknownObjectRetain() canBecomeFocused] & 1) != 0 && (v41 = objc_msgSend(v34, sel_parentFocusEnvironment)) != 0)
        {
          v42 = [v41 focusItemContainer];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v42)
          {
            v43 = v6;
            v44 = v4;
            v45 = [v42 coordinateSpace];
            [v34 frame];
            [v45 convertRect:objc_msgSend(v2 toCoordinateSpace:{sel_coordinateSpace), v46, v47, v48, v49}];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            CGRect.range(in:)();
            v51 = v50;
            v53 = v52;
            CGRect.range(in:)();
            v55 = v54;
            v57 = v56;
            swift_unknownObjectRelease();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
            }

            v59 = *(v32 + 2);
            v58 = *(v32 + 3);
            if (v59 >= v58 >> 1)
            {
              v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v32);
            }

            *(v32 + 2) = v59 + 1;
            v60 = &v32[40 * v59];
            *(v60 + 4) = v34;
            *(v60 + 5) = v51;
            *(v60 + 6) = v53;
            *(v60 + 7) = v55;
            *(v60 + 8) = v57;
            v4 = v44;
            v6 = v43;
            v10 = v78;
            v8 = v79;
            goto LABEL_62;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v61 = [v34 focusItemContainer];
        if (v61)
        {
          v62 = v61;
          [objc_msgSend(v61 coordinateSpace)];
          v64 = v63;
          v66 = v65;
          v68 = v67;
          v70 = v69;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v71 = [v62 focusItemsInRect_];
          type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem, &protocolRef_UIFocusItem);
          v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          specialized Array.append<A>(contentsOf:)(v72);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
LABEL_62:
        v30 = v81;
        if (v81 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_70;
          }
        }

        else if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        continue;
      }

      __CocoaSet.count.getter();
      goto LABEL_47;
    }

    break;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);

  __break(1u);
}

void closure #1 in HostingScrollView.PlatformGroupContainer.fillerFocusItems(in:)(unint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  swift_beginAccess();
  type metadata accessor for FocusableBorder?(0, a3, a4, MEMORY[0x1E69E62F8]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
  }

  *a5 = WeakValue;
}

uint64_t FocusableBoundsTransform.value.getter(unint64_t a1, unint64_t a2)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v13[10] = *Value;
  v13[11] = v3;
  v4 = *(Value + 32);
  v14 = *(Value + 16);
  v15 = v4;
  type metadata accessor for CGPoint(0);

  v5 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v5);
  v6 = AGGraphGetValue();
  v13[6] = 0;
  v13[7] = 0;
  v13[8] = MEMORY[0x18D00B390](v6, v7, v8, v9);
  v13[9] = v10;
  static CoordinateSpace.scrollViewContent.getter();

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v13);
  type metadata accessor for FocusableBorder?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusableBounds>, MEMORY[0x1E697E780], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18CD63400;
  FocusableBounds.init(bounds:isLazyContainer:)();

  return v11;
}

uint64_t protocol witness for Rule.value.getter in conformance FocusableBoundsTransform@<X0>(uint64_t *a1@<X8>)
{
  v3 = 0x100000000;
  if (!*(v1 + 12))
  {
    v3 = 0;
  }

  result = FocusableBoundsTransform.value.getter(*v1, v3 | *(v1 + 8));
  *a1 = result;
  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = a1[1];
  v8 = _minimumMergeRunLength(_:)(v7);
  if (v8 < v7)
  {
    if (v7 >= -1)
    {
      v9 = v8;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v12, v13, a1, v9, a2);
      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v7, 1, a1, a2);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = swift_allocObject();
  v11 = *(a5 + 48);
  *(v10 + 48) = *(a5 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a5 + 64);
  v12 = *(a5 + 16);
  *(v10 + 16) = *a5;
  *(v10 + 32) = v12;
  v13 = a3[1];
  v139 = a5;
  v141 = a3;
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v17 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    a4 = v15;
    v126 = swift_allocObject();
    v127 = *(a5 + 48);
    *(v126 + 48) = *(a5 + 32);
    *(v126 + 64) = v127;
    *(v126 + 80) = *(a5 + 64);
    v128 = *(a5 + 16);
    *(v126 + 16) = *a5;
    *(v126 + 32) = v128;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v129 = a4;
    }

    else
    {
LABEL_145:
      v129 = specialized _ArrayBuffer._consumeAndCreateNew()(a4, *&v12);
    }

    v130 = *(v129 + 2);
    if (v130 >= 2)
    {
      a4 = 40;
      while (*v141)
      {
        v131 = *&v129[16 * v130];
        v132 = v129;
        v133 = *&v129[16 * v130 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v141 + 40 * v131), (*v141 + 40 * *&v129[16 * v130 + 16]), *v141 + 40 * v133, v17, v139);
        if (v6)
        {
          goto LABEL_123;
        }

        if (v133 < v131)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = specialized _ArrayBuffer._consumeAndCreateNew()(v132, *&v12);
        }

        if (v130 - 2 >= *(v132 + 2))
        {
          goto LABEL_139;
        }

        v134 = &v132[16 * v130];
        *v134 = v131;
        *(v134 + 1) = v133;
        specialized Array.remove(at:)(v130 - 1);
        v129 = v132;
        v130 = *(v132 + 2);
        if (v130 <= 1)
        {
          goto LABEL_123;
        }
      }

      goto LABEL_149;
    }

LABEL_123:

    return;
  }

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v137 = a4;
  while (1)
  {
    v16 = v14;
    v17 = v14 + 1;
    v142 = v15;
    if (v14 + 1 < v13)
    {
      v18 = *a3;
      v19 = v14 + 1;
      v20 = v18 + 40 * v17;
      v17 = *v20;
      v21 = *(v20 + 16);
      v147 = *(v20 + 8);
      v22 = v18 + 40 * v16;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      ClosedRange<>.meanBound.getter();
      v25 = *(a5 + 56);
      v27 = vabdd_f64(v26, v25);
      ClosedRange<>.meanBound.getter();
      v29 = v28;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v145 = v25;
      *&v12 = vabdd_f64(v29, v25);
      v30 = *(a5 + 64);
      v135 = v6;
      v31 = v27 < *&v12;
      if (v30)
      {
        *&v12 = v147;
        v32 = v147 == v23;
        v33 = v147 < v23;
      }

      else
      {
        v33 = v24 < v21;
        v32 = v21 == v24;
      }

      if (v32)
      {
        v34 = v31;
      }

      else
      {
        v34 = v33;
      }

      v35 = 0;
      v36 = v16 + 2;
      a4 = v18 + 40 * v16 + 56;
      v37 = v19;
      do
      {
        v6 = v36;
        v41 = v37;
        v42 = v35;
        if (v36 >= v13)
        {
          break;
        }

        v17 = *(a4 + 24);
        v43 = *(a4 + 40);
        v148 = *(a4 + 32);
        v44 = *(a4 - 8);
        v45 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        ClosedRange<>.meanBound.getter();
        v47 = vabdd_f64(v46, v145);
        ClosedRange<>.meanBound.getter();
        v49 = v48;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *&v12 = vabdd_f64(v49, v145);
        v50 = v47 < *&v12;
        if (v30)
        {
          *&v12 = v148;
          v38 = v148 == v44;
          v39 = v148 < v44;
        }

        else
        {
          v39 = v45 < v43;
          v38 = v43 == v45;
        }

        v40 = v38 ? v50 : v39;
        v36 = v6 + 1;
        a4 += 40;
        v37 = v41 + 1;
        v35 = v42 + 40;
      }

      while (v34 == v40);
      if (v34)
      {
        if (v6 < v16)
        {
          goto LABEL_142;
        }

        if (v16 >= v6)
        {
          v17 = v6;
          v6 = v135;
          a4 = v137;
        }

        else
        {
          v51 = 0;
          v52 = v16;
          a4 = v137;
          do
          {
            if (v52 != v41)
            {
              if (!*v141)
              {
                goto LABEL_148;
              }

              v53 = *v141 + 40 * v16;
              v54 = v53 + v51;
              v55 = *(v53 + v51);
              v56 = v53 + v42;
              v12 = *(v54 + 8);
              v57 = *(v54 + 24);
              v58 = *(v56 + 72);
              v59 = *(v56 + 56);
              *v54 = *(v56 + 40);
              *(v54 + 16) = v59;
              *(v54 + 32) = v58;
              *(v56 + 40) = v55;
              *(v56 + 48) = v12;
              *(v56 + 64) = v57;
            }

            ++v52;
            v42 -= 40;
            v51 += 40;
          }

          while (v52 < v41--);
          v17 = v6;
          v6 = v135;
        }

        a5 = v139;
      }

      else
      {
        v17 = v6;
        v6 = v135;
        a4 = v137;
        a5 = v139;
      }

      a3 = v141;
    }

    v61 = a3[1];
    if (v17 < v61)
    {
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_141;
      }

      if ((v17 - v16) < a4)
      {
        v62 = v16 + a4;
        if (__OFADD__(v16, a4))
        {
          goto LABEL_143;
        }

        if (v62 >= v61)
        {
          v62 = a3[1];
        }

        if (v62 < v16)
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (v17 != v62)
        {
          break;
        }
      }
    }

LABEL_58:
    if (v17 < v16)
    {
      goto LABEL_140;
    }

    v144 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v142;
    }

    else
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v142 + 2) + 1, 1, v142);
    }

    a4 = *(v15 + 2);
    v82 = *(v15 + 3);
    v17 = a4 + 1;
    if (a4 >= v82 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v17;
    v83 = &v15[16 * a4];
    *(v83 + 4) = v16;
    *(v83 + 5) = v144;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (a4)
    {
      while (1)
      {
        v85 = v17 - 1;
        if (v17 >= 4)
        {
          break;
        }

        if (v17 == 3)
        {
          v86 = *(v15 + 4);
          v87 = *(v15 + 5);
          v96 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          v89 = v96;
LABEL_78:
          if (v89)
          {
            goto LABEL_129;
          }

          v102 = &v15[16 * v17];
          v104 = *v102;
          v103 = *(v102 + 1);
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_132;
          }

          v108 = &v15[16 * v85 + 32];
          v110 = *v108;
          v109 = *(v108 + 1);
          v96 = __OFSUB__(v109, v110);
          v111 = v109 - v110;
          if (v96)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v106, v111))
          {
            goto LABEL_136;
          }

          if (v106 + v111 >= v88)
          {
            if (v88 < v111)
            {
              v85 = v17 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v112 = &v15[16 * v17];
        v114 = *v112;
        v113 = *(v112 + 1);
        v96 = __OFSUB__(v113, v114);
        v106 = v113 - v114;
        v107 = v96;
LABEL_92:
        if (v107)
        {
          goto LABEL_131;
        }

        v115 = &v15[16 * v85];
        v117 = *(v115 + 4);
        v116 = *(v115 + 5);
        v96 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v96)
        {
          goto LABEL_134;
        }

        if (v118 < v106)
        {
          goto LABEL_3;
        }

LABEL_99:
        a4 = v85 - 1;
        if (v85 - 1 >= v17)
        {
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
LABEL_136:
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*a3)
        {
          goto LABEL_147;
        }

        v17 = v15;
        v123 = *&v15[16 * a4 + 32];
        v124 = *&v15[16 * v85 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * v123), (*a3 + 40 * *&v15[16 * v85 + 32]), *a3 + 40 * v124, v84, a5);
        if (v6)
        {

          return;
        }

        if (v124 < v123)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17, *&v12);
        }

        if (a4 >= *(v17 + 16))
        {
          goto LABEL_126;
        }

        v125 = v17 + 16 * a4;
        *(v125 + 32) = v123;
        *(v125 + 40) = v124;
        specialized Array.remove(at:)(v85);
        v15 = v17;
        v17 = *(v17 + 16);
        if (v17 <= 1)
        {
          goto LABEL_3;
        }
      }

      v90 = &v15[16 * v17 + 32];
      v91 = *(v90 - 64);
      v92 = *(v90 - 56);
      v96 = __OFSUB__(v92, v91);
      v93 = v92 - v91;
      if (v96)
      {
        goto LABEL_127;
      }

      v95 = *(v90 - 48);
      v94 = *(v90 - 40);
      v96 = __OFSUB__(v94, v95);
      v88 = v94 - v95;
      v89 = v96;
      if (v96)
      {
        goto LABEL_128;
      }

      v97 = &v15[16 * v17];
      v99 = *v97;
      v98 = *(v97 + 1);
      v96 = __OFSUB__(v98, v99);
      v100 = v98 - v99;
      if (v96)
      {
        goto LABEL_130;
      }

      v96 = __OFADD__(v88, v100);
      v101 = v88 + v100;
      if (v96)
      {
        goto LABEL_133;
      }

      if (v101 >= v93)
      {
        v119 = &v15[16 * v85 + 32];
        v121 = *v119;
        v120 = *(v119 + 1);
        v96 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v96)
        {
          goto LABEL_137;
        }

        if (v88 < v122)
        {
          v85 = v17 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

LABEL_3:
    v13 = a3[1];
    v14 = v144;
    a4 = v137;
    if (v144 >= v13)
    {
      goto LABEL_111;
    }
  }

  v136 = v6;
  v63 = *a3;
  v146 = *(a5 + 56);
  v64 = *(a5 + 64);
  a4 = *a3 + 40 * v17;
  v65 = v16 - v17;
  v140 = v62;
LABEL_44:
  v143 = v17;
  v66 = v63 + 40 * v17;
  v68 = *(v66 + 8);
  v67 = *(v66 + 16);
  v69 = v65;
  v70 = a4;
  while (1)
  {
    v71 = (v70 - 40);
    v72 = *(v70 - 24);
    v149 = *(v70 - 32);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    ClosedRange<>.meanBound.getter();
    v74 = vabdd_f64(v73, v146);
    ClosedRange<>.meanBound.getter();
    v76 = v75;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *&v12 = vabdd_f64(v76, v146);
    if (v64)
    {
      if (v68 != v149)
      {
        if (v68 >= v149)
        {
          goto LABEL_43;
        }

        goto LABEL_53;
      }

LABEL_50:
      if (v74 >= *&v12)
      {
        goto LABEL_43;
      }

      goto LABEL_53;
    }

    if (v67 == v72)
    {
      goto LABEL_50;
    }

    if (v72 >= v67)
    {
      goto LABEL_43;
    }

LABEL_53:
    if (!v63)
    {
      break;
    }

    v77 = *v70;
    v68 = *(v70 + 8);
    v67 = *(v70 + 16);
    v78 = *(v70 + 24);
    v79 = *(v70 + 32);
    v12 = *v71;
    v80 = *(v70 - 24);
    *v70 = *v71;
    *(v70 + 16) = v80;
    *(v70 + 32) = *(v70 - 8);
    *(v70 - 32) = v68;
    *(v70 - 24) = v67;
    *(v70 - 16) = v78;
    *(v70 - 8) = v79;
    *(v70 - 40) = v77;
    v70 -= 40;
    if (__CFADD__(v69++, 1))
    {
LABEL_43:
      v17 = v143 + 1;
      a4 += 40;
      --v65;
      if (v143 + 1 != v140)
      {
        goto LABEL_44;
      }

      v17 = v140;
      v6 = v136;
      a5 = v139;
      a3 = v141;
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}