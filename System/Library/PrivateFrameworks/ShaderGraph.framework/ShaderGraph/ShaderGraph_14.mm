unint64_t specialized OrderedSet._appendNew(_:in:)(void *a1, uint64_t a2)
{
  v4 = a1;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  v6 = *v2;
  v7 = *(v2[1] + 16);
  if (*v2)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v6[2] & 0x3FLL) >= v7)
    {
      result = swift_isUniquelyReferenced_native();
      v8 = *v2;
      if ((result & 1) == 0)
      {
        if (!v8)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v9 = v8[2];
        v10 = (v9 & 0x3F) << v9;
        v11 = __OFADD__(v10, 64);
        v12 = v10 + 64;
        if (v11)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        v14 = v12 - 1;
        v13 = v12 < 1;
        v15 = v12 + 62;
        if (!v13)
        {
          v15 = v14;
        }

        v16 = v15 >> 6;
        type metadata accessor for _HashTable.Storage(0);
        v17 = swift_allocObject();
        v18 = v8[3];
        v17[2] = v9;
        v17[3] = v18;
        memcpy(v17 + 4, v8 + 4, 8 * v16);

        *v2 = v17;
        v8 = v17;
      }

      if (v8)
      {
        v19 = *(v2[1] + 16) + ~(v8[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v8[2]) ^ ~(((v19 >> 63) & ~(-1 << v8[2])) + v19), a2, v8 + 2, (v8 + 4));
      }

      goto LABEL_15;
    }
  }

  else if (v7 < 0x10)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(_s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA6SGNodeCG_Tt2g5Tm);
}

unint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = v4 + 1;
  v10 = v4[1];
  outlined copy of TextureSource(a1, a2);
  result = swift_isUniquelyReferenced_nonNull_native();
  v4[1] = v10;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v13 + 1;
  v14 = v10 + 24 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3 & 1;
  v4[1] = v10;
  v15 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v15[2] & 0x3FLL) > v13)
    {
      result = swift_isUniquelyReferenced_native();
      v16 = *v4;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v17 = v16[2];
        v18 = (v17 & 0x3F) << v17;
        v19 = __OFADD__(v18, 64);
        v20 = v18 + 64;
        if (v19)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v22 = v20 - 1;
        v21 = v20 < 1;
        v23 = v20 + 62;
        if (!v21)
        {
          v23 = v22;
        }

        v24 = v23 >> 6;
        type metadata accessor for _HashTable.Storage(0);
        v25 = swift_allocObject();
        v26 = v16[3];
        v25[2] = v17;
        v25[3] = v26;
        memcpy(v25 + 4, v16 + 4, 8 * v24);

        *v4 = v25;
        v16 = v25;
      }

      if (v16)
      {
        v27 = *(*v9 + 16) + ~(v16[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v16[2]) ^ ~(((v27 >> 63) & ~(-1 << v16[2])) + v27), a4, v16 + 2, (v16 + 4));
      }

      goto LABEL_19;
    }
  }

  else if (v13 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA13TextureSourceOG_Tt2g5Tm);
}

unint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4 + 1;
  v10 = v4[1];

  result = swift_isUniquelyReferenced_nonNull_native();
  v4[1] = v10;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v13 + 1;
  v14 = (v10 + 24 * v13);
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v4[1] = v10;
  v15 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (specialized static _HashTable.maximumCapacity(forScale:)(v15[2] & 0x3FLL) > v13)
    {
      result = swift_isUniquelyReferenced_native();
      v16 = *v4;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v17 = v16[2];
        v18 = (v17 & 0x3F) << v17;
        v19 = __OFADD__(v18, 64);
        v20 = v18 + 64;
        if (v19)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v22 = v20 - 1;
        v21 = v20 < 1;
        v23 = v20 + 62;
        if (!v21)
        {
          v23 = v22;
        }

        v24 = v23 >> 6;
        type metadata accessor for _HashTable.Storage(0);
        v25 = swift_allocObject();
        v26 = v16[3];
        v25[2] = v17;
        v25[3] = v26;
        memcpy(v25 + 4, v16 + 4, 8 * v24);

        *v4 = v25;
        v16 = v25;
      }

      if (v16)
      {
        v27 = *(*v9 + 16) + ~(v16[3] >> 6);
        return _HashTable.UnsafeHandle.subscript.setter((-1 << v16[2]) ^ ~(((v27 >> 63) & ~(-1 << v16[2])) + v27), a4, v16 + 2, (v16 + 4));
      }

      goto LABEL_19;
    }
  }

  else if (v13 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = 0;
    v5 = *a1;
    v6 = (a2 + 24);
    v15 = *a1;
    do
    {
      if (*(v6 - 3) == v5)
      {
        v7 = a3;
        v8 = *(v6 - 1);
        v9 = *v6;
        v18 = *(v6 + 16);
        v16 = v6[1];
        v17 = v6[3];
        v10 = a1[1];
        v11 = *(**(v6 - 2) + 128);

        if (v11(v10))
        {
          if (v8 == a1[2] && v9 == a1[3])
          {

            a3 = v7;
            v5 = v15;
          }

          else
          {
            v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

            a3 = v7;
            v5 = v15;
            if ((v12 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v13 = *(a1 + 40);
          if (v18)
          {
            if (!*(a1 + 40))
            {
              goto LABEL_4;
            }
          }

          else
          {
            if (v16 != a1[4])
            {
              v13 = 1;
            }

            if (v13)
            {
              goto LABEL_4;
            }
          }

          if (v17 == a1[6])
          {
            return v4;
          }
        }

        else
        {

          a3 = v7;
          v5 = v15;
        }
      }

LABEL_4:
      v6 += 7;
      ++v4;
    }

    while (a3 != v4);
  }

  return 0;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  return specialized Collection<>.firstIndex(of:)(a1, a2, type metadata accessor for SGEdge);
}

{
  return specialized Collection<>.firstIndex(of:)(a1, a2, type metadata accessor for SGNode);
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x266772030](v7, a2);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    a3(0);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t specialized OrderedSet._append(_:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v2 + 32;
  v4 = *(v2 + 16);
  if (*v1)
  {
    v5 = a1;
    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v3, v4, (*v1 + 16), *v1 + 32);
    if (v6)
    {
      a1 = v5;
LABEL_9:
      specialized OrderedSet._appendNew(_:in:)(a1, v4, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      return 1;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v7 = 0;
    while (*(v3 + 8 * v7) != a1)
    {
      if (v4 == ++v7)
      {
        v4 = 0;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

{
  v2 = v1[1];
  v3 = v2 + 32;
  v4 = *(v2 + 16);
  if (*v1)
  {
    v5 = a1;
    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v3, v4, (*v1 + 16), *v1 + 32);
    if (v6)
    {
      a1 = v5;
LABEL_9:
      specialized OrderedSet._appendNew(_:in:)(a1, v4, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      return 1;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v7 = 0;
    while (*(v3 + 8 * v7) != a1)
    {
      if (v4 == ++v7)
      {
        v4 = 0;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

{
  v2 = v1;
  v4 = *v1;
  v5 = v2[1];
  v6 = v5 + 32;
  v7 = *(v5 + 16);
  if (!v4)
  {
    if (!v7)
    {
LABEL_14:
      v11 = 0;
      goto LABEL_15;
    }

    v13 = 0;
    while (1)
    {
      outlined init with copy of [Input](v6, v18, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
      Strong = swift_unknownObjectWeakLoadStrong();
      v15 = swift_unknownObjectWeakLoadStrong();
      v16 = v15;
      if (!Strong)
      {
        break;
      }

      if (!v15)
      {
        outlined destroy of [Input](v18, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
        v16 = Strong;
LABEL_7:

        goto LABEL_8;
      }

      type metadata accessor for SGEdge();
      v17 = static NSObject.== infix(_:_:)();
      outlined destroy of [Input](v18, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);

      if (v17)
      {
        return 0;
      }

LABEL_8:
      ++v13;
      v6 += 8;
      if (v7 == v13)
      {
        goto LABEL_14;
      }
    }

    outlined destroy of [Input](v18, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
    if (!v16)
    {
      return 0;
    }

    goto LABEL_7;
  }

  specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v6, v7, (v4 + 16), v4 + 32);
  v9 = v8;
  v11 = v10;

  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  specialized OrderedSet._appendNew(_:in:)(a1, v11);
  return 1;
}

{
  v2 = v1[1];
  v3 = v2 + 32;
  v4 = *(v2 + 16);
  if (*v1)
  {
    v5 = a1;
    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v3, v4, (*v1 + 16), *v1 + 32);
    if (v6)
    {
      a1 = v5;
LABEL_9:
      specialized OrderedSet._appendNew(_:in:)(a1, v4, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      return 1;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v7 = 0;
    while (*(v3 + 8 * v7) != a1)
    {
      if (v4 == ++v7)
      {
        v4 = 0;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

uint64_t specialized OrderedSet._append(_:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v4 + 16);
  if (*v1)
  {

    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v4 + 32, v5, (v3 + 16), v3 + 32);
    v7 = v6;
    v9 = v8;

    if ((v7 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    specialized OrderedSet._appendNew(_:in:)(a1, v9, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    return 1;
  }

  specialized Collection<>.firstIndex(of:)(a1, v4 + 32, *(v4 + 16));
  if (v10)
  {
    v9 = 0;
    goto LABEL_6;
  }

  return 0;
}

uint64_t specialized OrderedSet._append(_:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[1];
  v6 = v5 + 32;
  v7 = *(v5 + 16);
  if (v4)
  {

    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v6, v7, (v4 + 16), v4 + 32);
    v9 = v8;
    v11 = v10;

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v7)
    {
      type metadata accessor for SGNode();
      v13 = 0;
      do
      {
        v14 = *(v6 + 8 * v13);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          return 0;
        }
      }

      while (v7 != ++v13);
    }

    v11 = 0;
  }

  specialized OrderedSet._appendNew(_:in:)(a1, v11);
  return 1;
}

void *specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v8 = *v5;
    v9 = MEMORY[0x266772750](*v5, *(v7 + 8 * v6));
    v10 = (1 << v8) - 1;
    if (__OFSUB__(1 << v8, 1))
    {
      goto LABEL_38;
    }

    v11 = v10 & v9;
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v10 & v9, v5, a2))
    {
      break;
    }

LABEL_3:
    result = _HashTable.BucketIterator.currentValue.setter(v6++, 0);
    if (v6 == v3)
    {
      return result;
    }
  }

  v14 = 0;
  v15 = *v5 & 0x3FLL;
  v16 = 1 << *v5;
  v17 = v15 << *v5;
  v18 = v17 + 64;
  v19 = __OFADD__(v17, 64);
  v21 = v18 - 1;
  v20 = v18 < 1;
  v22 = v18 + 62;
  if (!v20)
  {
    v22 = v21;
  }

  v23 = v22 >> 6;
  while (1)
  {
    if (++v11 == v16)
    {
      if (v14)
      {
        goto LABEL_39;
      }

      v11 = 0;
      v14 = 1;
    }

    if (v13 >= v15)
    {
      break;
    }

    v24 = (v11 * v15) >> 6;
    if (v13)
    {
      if (v19)
      {
        goto LABEL_37;
      }

      if (v24 + 1 == v23)
      {
        v24 = 0;
      }

      else
      {
        ++v24;
      }
    }

    v25 = v15 - v13;
    if (__OFSUB__(v15, v13))
    {
      goto LABEL_35;
    }

    if (v24 == 2 && v15 == 5)
    {
      v27 = 32;
    }

    else
    {
      v27 = 64;
    }

    v28 = __OFSUB__(v27, v25);
    v29 = v27 - v25;
    if (v28)
    {
      goto LABEL_36;
    }

    v30 = *(a2 + 8 * v24);
    v31 = (v30 << v13) | v12;
    v12 = v30 >> v25;
    v13 = v29;
LABEL_12:
    if ((v31 & (v16 - 1)) == 0)
    {
      goto LABEL_3;
    }
  }

  v28 = __OFSUB__(v13, v15);
  v13 -= v15;
  if (!v28)
  {
    v31 = v12;
    v12 >>= v15;
    goto LABEL_12;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v8 = *(v7 + 8 * v6);
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v8);
    v9 = Hasher._finalize()();
    v10 = 1 << *v5;
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (v11)
    {
      goto LABEL_38;
    }

    v13 = v12 & v9;
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v12 & v9, v5, a2))
    {
      break;
    }

LABEL_3:
    result = _HashTable.BucketIterator.currentValue.setter(v6++, 0);
    if (v6 == v3)
    {
      return result;
    }
  }

  v16 = 0;
  v17 = *v5 & 0x3FLL;
  v18 = 1 << *v5;
  v19 = v17 << *v5;
  v20 = v19 + 64;
  v21 = __OFADD__(v19, 64);
  v23 = v20 - 1;
  v22 = v20 < 1;
  v24 = v20 + 62;
  if (!v22)
  {
    v24 = v23;
  }

  v25 = v24 >> 6;
  while (1)
  {
    if (++v13 == v18)
    {
      if (v16)
      {
        goto LABEL_39;
      }

      v13 = 0;
      v16 = 1;
    }

    if (v15 >= v17)
    {
      break;
    }

    v26 = (v13 * v17) >> 6;
    if (v15)
    {
      if (v21)
      {
        goto LABEL_37;
      }

      if (v26 + 1 == v25)
      {
        v26 = 0;
      }

      else
      {
        ++v26;
      }
    }

    v27 = v17 - v15;
    if (__OFSUB__(v17, v15))
    {
      goto LABEL_35;
    }

    if (v26 == 2 && v17 == 5)
    {
      v29 = 32;
    }

    else
    {
      v29 = 64;
    }

    v11 = __OFSUB__(v29, v27);
    v30 = v29 - v27;
    if (v11)
    {
      goto LABEL_36;
    }

    v31 = *(a2 + 8 * v26);
    v32 = (v31 << v15) | v14;
    v14 = v31 >> v27;
    v15 = v30;
LABEL_12:
    if ((v32 & (v18 - 1)) == 0)
    {
      goto LABEL_3;
    }
  }

  v11 = __OFSUB__(v15, v17);
  v15 -= v17;
  if (!v11)
  {
    v32 = v14;
    v14 >>= v17;
    goto LABEL_12;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  while (1)
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v7 = Hasher._finalize()();
    v8 = 1 << *v5;
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
      goto LABEL_38;
    }

    v11 = v10 & v7;
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v10 & v7, v5, a2))
    {
      break;
    }

LABEL_3:
    result = _HashTable.BucketIterator.currentValue.setter(v6++, 0);
    if (v6 == v3)
    {
      return result;
    }
  }

  v14 = 0;
  v15 = *v5 & 0x3FLL;
  v16 = 1 << *v5;
  v17 = v15 << *v5;
  v18 = v17 + 64;
  v19 = __OFADD__(v17, 64);
  v21 = v18 - 1;
  v20 = v18 < 1;
  v22 = v18 + 62;
  if (!v20)
  {
    v22 = v21;
  }

  v23 = v22 >> 6;
  while (1)
  {
    if (++v11 == v16)
    {
      if (v14)
      {
        goto LABEL_39;
      }

      v11 = 0;
      v14 = 1;
    }

    if (v13 >= v15)
    {
      break;
    }

    v24 = (v11 * v15) >> 6;
    if (v13)
    {
      if (v19)
      {
        goto LABEL_37;
      }

      if (v24 + 1 == v23)
      {
        v24 = 0;
      }

      else
      {
        ++v24;
      }
    }

    v25 = v15 - v13;
    if (__OFSUB__(v15, v13))
    {
      goto LABEL_35;
    }

    if (v24 == 2 && v15 == 5)
    {
      v27 = 32;
    }

    else
    {
      v27 = 64;
    }

    v9 = __OFSUB__(v27, v25);
    v28 = v27 - v25;
    if (v9)
    {
      goto LABEL_36;
    }

    v29 = *(a2 + 8 * v24);
    v30 = (v29 << v13) | v12;
    v12 = v29 >> v25;
    v13 = v28;
LABEL_12:
    if ((v30 & (v16 - 1)) == 0)
    {
      goto LABEL_3;
    }
  }

  v9 = __OFSUB__(v13, v15);
  v13 -= v15;
  if (!v9)
  {
    v30 = v12;
    v12 >>= v15;
    goto LABEL_12;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v32 = *(a3 + 16);
  if (!v32)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v31 = a3 + 32;
  while (1)
  {
    v6 = *(v31 + 24 * v5);
    Hasher.init(_seed:)();
    MEMORY[0x2667727B0](v6);
    String.hash(into:)();
    v7 = Hasher._finalize()();
    v8 = 1 << *v4;
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
      goto LABEL_38;
    }

    v11 = v10 & v7;
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v10 & v7, v4, a2))
    {
      break;
    }

LABEL_3:
    result = _HashTable.BucketIterator.currentValue.setter(v5++, 0);
    if (v5 == v32)
    {
      return result;
    }
  }

  v14 = 0;
  v15 = *v4 & 0x3FLL;
  v16 = 1 << *v4;
  v17 = v15 << *v4;
  v18 = v17 + 64;
  v19 = __OFADD__(v17, 64);
  v21 = v18 - 1;
  v20 = v18 < 1;
  v22 = v18 + 62;
  if (!v20)
  {
    v22 = v21;
  }

  v23 = v22 >> 6;
  while (1)
  {
    if (++v11 == v16)
    {
      if (v14)
      {
        goto LABEL_39;
      }

      v11 = 0;
      v14 = 1;
    }

    if (v13 >= v15)
    {
      break;
    }

    v24 = (v11 * v15) >> 6;
    if (v13)
    {
      if (v19)
      {
        goto LABEL_37;
      }

      if (v24 + 1 == v23)
      {
        v24 = 0;
      }

      else
      {
        ++v24;
      }
    }

    v25 = v15 - v13;
    if (__OFSUB__(v15, v13))
    {
      goto LABEL_35;
    }

    if (v24 == 2 && v15 == 5)
    {
      v27 = 32;
    }

    else
    {
      v27 = 64;
    }

    v9 = __OFSUB__(v27, v25);
    v28 = v27 - v25;
    if (v9)
    {
      goto LABEL_36;
    }

    v29 = *(a2 + 8 * v24);
    v30 = (v29 << v13) | v12;
    v12 = v29 >> v25;
    v13 = v28;
LABEL_12:
    if ((v30 & (v16 - 1)) == 0)
    {
      goto LABEL_3;
    }
  }

  v9 = __OFSUB__(v13, v15);
  v13 -= v15;
  if (!v9)
  {
    v30 = v12;
    v12 >>= v15;
    goto LABEL_12;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int *specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(Swift::Int *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  while (1)
  {
    v7 = NSObject._rawHashValue(seed:)(*v5);
    v8 = 1 << *v5;
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
      goto LABEL_38;
    }

    v11 = v10 & v7;
    if (_HashTable.UnsafeHandle._startIterator(bucket:)(v10 & v7, v5, a2))
    {
      break;
    }

LABEL_3:
    result = _HashTable.BucketIterator.currentValue.setter(v6++, 0);
    if (v6 == v3)
    {
      return result;
    }
  }

  v14 = 0;
  v15 = *v5 & 0x3F;
  v16 = 1 << *v5;
  v17 = v15 << *v5;
  v18 = v17 + 64;
  v19 = __OFADD__(v17, 64);
  v21 = v18 - 1;
  v20 = v18 < 1;
  v22 = v18 + 62;
  if (!v20)
  {
    v22 = v21;
  }

  v23 = v22 >> 6;
  while (1)
  {
    if (++v11 == v16)
    {
      if (v14)
      {
        goto LABEL_39;
      }

      v11 = 0;
      v14 = 1;
    }

    if (v13 >= v15)
    {
      break;
    }

    v24 = (v11 * v15) >> 6;
    if (v13)
    {
      if (v19)
      {
        goto LABEL_37;
      }

      if (v24 + 1 == v23)
      {
        v24 = 0;
      }

      else
      {
        ++v24;
      }
    }

    v25 = v15 - v13;
    if (__OFSUB__(v15, v13))
    {
      goto LABEL_35;
    }

    if (v24 == 2 && v15 == 5)
    {
      v27 = 32;
    }

    else
    {
      v27 = 64;
    }

    v9 = __OFSUB__(v27, v25);
    v28 = v27 - v25;
    if (v9)
    {
      goto LABEL_36;
    }

    v29 = *(a2 + 8 * v24);
    v30 = (v29 << v13) | v12;
    v12 = v29 >> v25;
    v13 = v28;
LABEL_12:
    if ((v30 & (v16 - 1)) == 0)
    {
      goto LABEL_3;
    }
  }

  v9 = __OFSUB__(v13, v15);
  v13 -= v15;
  if (!v9)
  {
    v30 = v12;
    v12 >>= v15;
    goto LABEL_12;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph0E5IndexVSg_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      if (*v4)
      {
        if (!*v3)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (*v3)
        {
          return result;
        }

        if (*(v4 - 2) != *(v3 - 2) || *(v4 - 1) != *(v3 - 1))
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZShy11ShaderGraph0E5IndexVG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;
        v8 = _sSh2eeoiySbShyxG_ABtFZ11ShaderGraph0C5IndexV_Tt1g5(v5, v7);
        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph04UserE0V8AdjacentV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v18 = result + 32;
  v4 = a2 + 32;
  while (v3 != v2)
  {
    v5 = (v18 + 48 * v3);
    v6 = (v4 + 48 * v3);
    v7 = v5[2];
    v9 = v5[4];
    v8 = v5[5];
    v10 = v6[2];
    v12 = v6[4];
    v11 = v6[5];
    result = specialized Sequence<>.elementsEqual<A>(_:)(v6[1], v5[1]);
    if ((result & 1) == 0)
    {
      return 0;
    }

    v13 = *(v7 + 16);
    if (v13 != *(v10 + 16))
    {
      return 0;
    }

    if (v13)
    {
      v14 = v7 == v10;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v15 = (v10 + 40);
      v16 = (v7 + 40);
      while (v13)
      {
        result = specialized Sequence<>.elementsEqual<A>(_:)(*v15, *v16);
        if ((result & 1) == 0)
        {
          return 0;
        }

        v15 += 2;
        v16 += 2;
        if (!--v13)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      break;
    }

LABEL_16:
    if ((specialized Sequence<>.elementsEqual<A>(_:)(v12, v9) & 1) == 0)
    {
      return 0;
    }

    _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph6OutputVSg_Tt1g5(v8, v11);
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph6OutputVSg_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a2 + 80);
  for (i = (a1 + 40); ; i += 7)
  {
    v6 = *(i - 1);
    v5 = *i;
    v7 = i[1];
    v8 = i[3];
    v36 = i[4];
    v9 = i[5];
    v10 = *(v3 - 6);
    v11 = *(v3 - 5);
    v13 = *(v3 - 4);
    v12 = *(v3 - 3);
    if (*i)
    {
      break;
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_6:
    v3 += 7;
    if (!--v2)
    {
      return;
    }
  }

  if (!v11)
  {
LABEL_23:
    v20 = *(v3 - 6);
    v21 = *(v3 - 5);
    v27 = *(v3 - 3);
    v22 = i[2];
    outlined copy of Output?(v20, v21, v13, v12);
    outlined copy of Output?(v6, v5, v7, v22);
    outlined consume of Output?(v6, v5, v7, v22);
    v23 = v10;
    v24 = v11;
    v26 = v27;
    v25 = v13;
    goto LABEL_26;
  }

  v34 = i[2];
  if (v6 != v10)
  {
    outlined copy of Output?(v10, v11, v13, v12);
    outlined copy of Output?(v6, v5, v7, v34);

    v23 = v6;
    v24 = v5;
    v25 = v7;
    v26 = v34;
    goto LABEL_26;
  }

  v29 = v2;
  v31 = *(*v5 + 128);
  v14 = *(v3 - 3);
  v28 = *(v3 - 2);
  v30 = *(v3 - 1);
  v33 = *v3;
  outlined copy of Output?(v6, v11, v13, v12);
  v32 = v6;
  v35 = v8;
  outlined copy of Output?(v6, v5, v7, v34);
  v15 = v11;
  v16 = v5;
  if (v31(v15))
  {
    if (v7 == v13 && v34 == v14)
    {

      v17 = v36;
      v18 = v9;
      outlined consume of Output?(v6, v16, v7, v34);
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = v36;
      v18 = v9;
      outlined consume of Output?(v32, v16, v7, v34);
      if ((v19 & 1) == 0)
      {
        return;
      }
    }

    if (v17)
    {
      v2 = v29;
      if ((v30 & (v18 == v33)) == 0)
      {
        return;
      }
    }

    else
    {
      v2 = v29;
      if ((v30 & 1) != 0 || v35 != v28 || v18 != v33)
      {
        return;
      }
    }

    goto LABEL_6;
  }

  v23 = v6;
  v24 = v5;
  v25 = v7;
  v26 = v34;
LABEL_26:
  outlined consume of Output?(v23, v24, v25, v26);
}

uint64_t _ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph10OrderedSetVyAE5InputVG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a2 + 40);
      v4 = (a1 + 40);
      do
      {
        v6 = *v4;
        v4 += 2;
        v5 = v6;
        v7 = *v3;
        v3 += 2;
        v8 = specialized Sequence<>.elementsEqual<A>(_:)(v7, v5);
        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (((*(**(a1 + 8) + 128))(*(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return *(a1 + 48) == *(a2 + 48);
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

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v48 = *(a2 + 16);
  v6 = *a1;

  outlined init with copy of String(&v48, v47);
  v7 = specialized Collection.firstIndex(where:)(v6, a2);
  v9 = v8;

  if (v2)
  {
    outlined destroy of String(&v48);

    outlined destroy of String(&v48);
    return v7;
  }

  v49 = a2;
  result = outlined destroy of String(&v48);
  v34 = v5;
  if (v9)
  {
    v7 = *(v6 + 16);
LABEL_7:

    outlined destroy of String(&v48);
    return v7;
  }

  v33 = a1;
  v11 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    goto LABEL_47;
  }

  v13 = (v6 + 16);
  v12 = *(v6 + 16);
  if (v11 == v12)
  {
    goto LABEL_7;
  }

  v31 = *(&v48 + 1);
  v32 = v48;
  v14 = 56 * v7 + 136;
  v15 = v49;
  while (v11 < v12)
  {
    v16 = (v6 + v14);
    if (*(v6 + v14 - 48) == *v15)
    {
      v45 = *(v16 - 4);
      v17 = *(v16 - 3);
      v43 = *(v16 - 8);
      v39 = *(v16 - 2);
      v41 = *v16;
      v18 = *(**(v16 - 5) + 128);

      if ((v18(v34) & 1) == 0)
      {

        v15 = v49;
        goto LABEL_20;
      }

      if (v45 == v32 && v17 == v31)
      {

        v15 = v49;
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v15 = v49;
        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v30 = *(v15 + 40);
      if (v43)
      {
        if (*(v15 + 40))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v39 != *(v15 + 32))
        {
          v30 = 1;
        }

        if ((v30 & 1) == 0)
        {
LABEL_39:
          if (v41 == *(v15 + 48))
          {
            goto LABEL_30;
          }
        }
      }
    }

LABEL_20:
    if (v11 != v7)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      if (v7 >= *v13)
      {
        goto LABEL_43;
      }

      if (v11 >= *v13)
      {
        goto LABEL_44;
      }

      v21 = v6 + 32 + 56 * v7;
      v23 = *v21;
      v22 = *(v21 + 8);
      v24 = *(v21 + 24);
      v37 = *(v21 + 32);
      v36 = *(v21 + 40);
      v35 = *(v21 + 48);
      v25 = *(v16 - 5);
      v26 = *(v16 - 3);
      v44 = *(v16 - 4);
      v46 = *(v16 - 6);
      v42 = *(v16 - 2);
      v27 = *(v16 - 8);
      v38 = *(v21 + 16);
      v40 = *(v6 + v14);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v6);
        v6 = result;
      }

      if (v7 >= *(v6 + 16))
      {
        goto LABEL_45;
      }

      v28 = v6 + 56 * v7;
      *(v28 + 32) = v46;
      *(v28 + 40) = v25;
      *(v28 + 48) = v44;
      *(v28 + 56) = v26;
      *(v28 + 64) = v42;
      *(v28 + 72) = v27;
      *(v28 + 80) = v40;

      if (v11 >= *(v6 + 16))
      {
        goto LABEL_46;
      }

      v29 = (v6 + v14);
      *(v29 - 6) = v23;
      *(v29 - 5) = v22;
      *(v29 - 4) = v38;
      *(v29 - 3) = v24;
      *(v29 - 2) = v37;
      *(v29 - 8) = v36;
      *v29 = v35;

      *v33 = v6;
      v15 = v49;
    }

    ++v7;
LABEL_30:
    ++v11;
    v13 = (v6 + 16);
    v12 = *(v6 + 16);
    v14 += 56;
    if (v11 == v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t specialized Sequence<>.elementsEqual<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = *(result + 16);
  v6 = result + 32;
  while (1)
  {
    if (v3 == v4)
    {
      v7 = 0;
      v8 = *(a2 + 16);
      goto LABEL_7;
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_18;
    }

    v7 = *(a2 + 32 + 8 * v3);
LABEL_7:
    result = v2 == v5;
    if (v2 == v5)
    {
      v9 = 0;
      v10 = v5;
      if (v3 == v4)
      {
        return result;
      }
    }

    else
    {
      if (v2 >= v5)
      {
        goto LABEL_17;
      }

      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_19;
      }

      v9 = *(v6 + 8 * v2);
      if (v3 == v4)
      {
        return result;
      }
    }

    result = 0;
    if (v2 != v5)
    {
      v2 = v10;
      v3 = v8;
      if (v7 == v9)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

{
  v2 = 0;
  v24 = *(a2 + 16);
  v3 = *(result + 16);
  v22 = a2 + 32;
  for (i = (result + 80); ; i += 7)
  {
    if (v2 == v24)
    {
      if (!v3)
      {
        return 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v29 = 0;
      v30 = 0;
      v9 = 0;
      v10 = v24;
      goto LABEL_10;
    }

    if (v2 >= v24)
    {
      break;
    }

    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_30;
    }

    v11 = v22 + 56 * v2;
    v5 = *(v11 + 48);
    v6 = *(v11 + 40);
    v8 = *(v11 + 24);
    v7 = *(v11 + 32);
    v29 = *(v11 + 16);
    v30 = *(v11 + 8);
    v9 = *v11;

    if (!v3)
    {
      if (v30)
      {
LABEL_25:
        v18 = v9;
        v20 = v29;
        v19 = v30;
        v21 = v8;
        goto LABEL_26;
      }

      return 1;
    }

LABEL_10:
    v25 = v10;
    v26 = v3;
    v23 = v7;
    v27 = *i;
    v28 = v5;
    v12 = *(i - 8);
    v13 = *(i - 3);
    v14 = *(i - 2);
    v15 = *(i - 5);
    v16 = *(i - 4);
    v17 = *(i - 6);

    if (!v30)
    {
      if (v15)
      {
        v18 = v17;
        v19 = v15;
        v20 = v16;
        v21 = v13;
LABEL_26:
        outlined consume of Output?(v18, v19, v20, v21);
        return 0;
      }

      return 1;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    if (v9 != v17 || ((*(*v30 + 128))(v15) & 1) == 0 || (v29 != v16 || v8 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_20:

      return 0;
    }

    if (v6)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if ((v12 & 1) != 0 || v23 != v14)
    {
      goto LABEL_20;
    }

    v3 = v26 - 1;
    v2 = v25;
    if (v28 != v27)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t specialized static ShaderGraphNode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static NodePersonality.== infix(_:_:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph6OutputV_Tt1g5() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph6OutputV_Tt1g5() & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized static UserGraph.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (specialized Sequence<>.elementsEqual<A>(_:)(*(a2 + 8), *(a1 + 8)) & 1) != 0 && (_ss15ContiguousArrayVsSQRzlE2eeoiySbAByxG_ADtFZ11ShaderGraph04UserE0V8AdjacentV_Tt1g5(v4, v5) & 1) != 0 && (*(a1 + 24) == *(a2 + 24) ? (v6 = *(a1 + 32) == *(a2 + 32)) : (v6 = 0), (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 40) == *(a2 + 40) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph9InputSpecV_Tt1g5() & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph9InputSpecV_Tt1g5() & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph0bC4NodeV_Tt1g5(*(a1 + 64), *(a2 + 64)) & 1) != 0 && *(a1 + 72) == *(a2 + 72) && (v7 = *(a1 + 96), v19 = *(a1 + 80), v20[0] = v7, *(v20 + 9) = *(a1 + 105), v8 = *(a2 + 96), v17 = *(a2 + 80), v18[0] = v8, *(v18 + 9) = *(a2 + 105), (specialized static ShaderGraphNode.== infix(_:_:)(&v19, &v17))))
  {
    v9 = *(a1 + 144);
    v15 = *(a1 + 128);
    v16[0] = v9;
    *(v16 + 9) = *(a1 + 153);
    v10 = *(a2 + 144);
    v13 = *(a2 + 128);
    v14[0] = v10;
    *(v14 + 9) = *(a2 + 153);
    v11 = specialized static ShaderGraphNode.== infix(_:_:)(&v15, &v13);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t specialized OrderedDictionary<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  MEMORY[0x266772770](v4);

  v24 = v4;
  if (v4)
  {
    v6 = 0;
    v23 = a3 + 32;
    while (v6 < *(a2 + 16))
    {
      v7 = a2 + 32 + 56 * v6;
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = *(v7 + 24);
      v11 = *(v7 + 32);
      v12 = *(v7 + 40);
      v13 = *(v7 + 48);
      v14 = *(v23 + 16 * v6 + 8);

      v28 = v14;
      v15 = v10;

      if (!v9)
      {
        goto LABEL_16;
      }

      MEMORY[0x266772770](v8);
      (*(*v9 + 120))(a1);
      String.hash(into:)();
      v26 = v6;
      if (v12)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v11);
      }

      MEMORY[0x266772770](v13);
      result = MEMORY[0x266772770](*(v28 + 16));
      v27 = *(v28 + 16);
      if (v27)
      {
        v16 = 0;
        v17 = (v28 + 80);
        while (v16 < *(v28 + 16))
        {
          v18 = v15;
          v19 = *(v17 - 5);
          v20 = *(v17 - 2);
          v21 = *(v17 - 8);
          v22 = *v17;
          MEMORY[0x266772770](*(v17 - 6));
          (*(*v19 + 120))(a1);
          String.hash(into:)();
          if (v21 == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x266772770](v20);
          }

          v15 = v18;
          ++v16;
          result = MEMORY[0x266772770](v22);
          v17 += 7;
          if (v27 == v16)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        break;
      }

LABEL_3:
      ++v6;

      if (v26 + 1 == v24)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
  }

  return result;
}

{
  v5 = *(a3 + 16);
  MEMORY[0x266772770](v5);

  v14 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = (a3 + 40);
    while (v7 < *(a2 + 16))
    {
      v9 = *(a2 + 32 + 8 * v7);
      v10 = *v8;
      v11 = v8[1];
      v12 = v8[3];
      v13 = v8[4];

      if (v10)
      {
        ++v7;
        MEMORY[0x266772770](v9);
        specialized OrderedDictionary<>.hash(into:)(a1, v10, v11);

        specialized OrderedDictionary<>.hash(into:)(a1, v12, v13);

        v8 += 6;
        if (v14 != v7)
        {
          continue;
        }
      }

      goto LABEL_6;
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }

  return result;
}

void specialized OrderedDictionary<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  MEMORY[0x266772770](v4);

  v16 = v4;
  if (v4)
  {
    v23 = 0;
    v5 = (a2 + 40);
    v22 = (a3 + 40);
    while (v23 < *(a2 + 16))
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v18 = v5[3];
      v8 = *(v5 + 32);
      v19 = v5[5];
      v9 = *(v22 - 1);
      v10 = *v22;
      v11 = v22[1];
      v20 = v22[2];
      v21 = v5;
      v13 = v22[3];
      v12 = v22[4];
      v14 = v22[5];

      outlined copy of Output?(v9, v10, v11, v20);
      if (v7)
      {
        MEMORY[0x266772770](v6);
        (*(*v7 + 120))(a1);
        String.hash(into:)();
        if (v8)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x266772770](v18);
        }

        MEMORY[0x266772770](v19);
        if (v10)
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x266772770](v9);
          (*(*v10 + 120))(a1);
          String.hash(into:)();
          if (v12)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x266772770](v13);
          }

          MEMORY[0x266772770](v14);

          outlined consume of Output?(v9, v10, v11, v20);
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v5 = v21 + 7;
        v22 += 7;
        if (v16 != ++v23)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

{
  v5 = *(a3 + 16);
  MEMORY[0x266772770](v5);
  if (v5)
  {
    v6 = (a2 + 32);
    v7 = *(a2 + 16);
    v8 = (a3 + 48);
    while (v7)
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      MEMORY[0x266772770](*v6);
      if (v11 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v10);
        MEMORY[0x266772770](v9);
      }

      --v7;
      ++v6;
      v8 += 24;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t specialized static Edge.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  v24 = *(a1 + 32);
  v25 = *(a1 + 48);
  v4 = *(a2 + 24);
  v23 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v9 = *(a1 + 16);
  if (((*(**(a1 + 8) + 128))(*(a2 + 8)) & 1) == 0 || (v9 != v7 || v2 != v4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return result;
    }

LABEL_12:
    v12 = a1;
    v13 = a2;
    if (v25 != v6)
    {
      return result;
    }

    if (*(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }

    v14 = *(a1 + 80);
    v26 = *(a1 + 88);
    v15 = *(a1 + 96);
    v16 = *(v12 + 104);
    v17 = *(a2 + 80);
    v18 = *(a2 + 88);
    v19 = *(a2 + 96);
    v20 = v13[13];
    v21 = v13[9];
    v22 = *(v12 + 72);
    if (((*(**(v12 + 64) + 128))(v13[8]) & 1) == 0)
    {
      return 0;
    }

    if ((v22 != v21 || v14 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v15)
    {
      if ((v19 & 1) == 0 || v16 != v20)
      {
        return 0;
      }
    }

    else if ((v19 & 1) != 0 || v26 != v18 || v16 != v20)
    {
      return 0;
    }

    return 1;
  }

  if ((v5 & 1) == 0 && v24 == v23)
  {
    goto LABEL_12;
  }

  return result;
}

BOOL specialized static Input.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (((*(**(a1 + 8) + 128))(*(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return *(a1 + 48) == *(a2 + 48);
}

uint64_t specialized OrderedSet.append<A>(contentsOf:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  while (1)
  {
    if (v5 >= v4)
    {
      goto LABEL_54;
    }

    v8 = *(v6 + 8 * v5);
    v10 = *v3;
    v9 = v3[1];
    v11 = (v9 + 32);
    if (*v3)
    {
      break;
    }

    v40 = *(v9 + 16);
    if (!v40)
    {
LABEL_4:
      v7 = 0;
LABEL_5:
      result = specialized OrderedSet._appendNew(_:in:)(v8, v7, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      goto LABEL_6;
    }

    while (1)
    {
      v41 = *v11++;
      if (v41 == v8)
      {
        break;
      }

      if (!--v40)
      {
        goto LABEL_4;
      }
    }

LABEL_6:
    if (++v5 == v4)
    {
      return result;
    }
  }

  v13 = (v10 + 16);
  v12 = *(v10 + 16);
  v14 = MEMORY[0x266772750](v12, *(v6 + 8 * v5));
  v15 = (1 << v12) - 1;
  if (__OFSUB__(1 << v12, 1))
  {
    goto LABEL_56;
  }

  v7 = v15 & v14;
  result = _HashTable.UnsafeHandle._startIterator(bucket:)(v15 & v14, (v10 + 16), v10 + 32);
  if (!result)
  {
    goto LABEL_5;
  }

  v18 = 1 << *v13;
  v19 = v18 - 1;
  v20 = *(v10 + 24) >> 6;
  v21 = v20 + ((v18 - 1) ^ result);
  if (v21 >= v18 - 1)
  {
    v22 = v18 - 1;
  }

  else
  {
    v22 = 0;
  }

  if (v11[v21 - v22] == v8)
  {
    goto LABEL_6;
  }

  v23 = 0;
  v24 = *v13 & 0x3FLL;
  v25 = __OFADD__(v24 << v24, 64);
  v26 = (v24 << v24) + 126;
  if ((v24 << v24) + 64 >= 1)
  {
    v26 = (v24 << v24) + 63;
  }

  v27 = v26 >> 6;
  while (1)
  {
    if (++v7 == v18)
    {
      if (v23)
      {
        goto LABEL_57;
      }

      v7 = 0;
      v23 = 1;
    }

    if (v17 >= v24)
    {
      break;
    }

    v28 = (v7 * v24) >> 6;
    if (v17)
    {
      if (v25)
      {
        goto LABEL_55;
      }

      if (v28 + 1 == v27)
      {
        v28 = 0;
      }

      else
      {
        ++v28;
      }
    }

    v29 = v24 - v17;
    if (__OFSUB__(v24, v17))
    {
      goto LABEL_52;
    }

    if (v28 == 2 && v24 == 5)
    {
      v31 = 32;
    }

    else
    {
      v31 = 64;
    }

    v32 = __OFSUB__(v31, v29);
    v33 = v31 - v29;
    if (v32)
    {
      goto LABEL_53;
    }

    v34 = *(v10 + 32 + 8 * v28);
    result = v34 << v17;
    v35 = (v34 << v17) | v16;
    v36 = v34 >> v29;
    v17 = v33;
    v37 = v35 & v19;
    if ((v35 & v19) == 0)
    {
      goto LABEL_5;
    }

LABEL_42:
    v38 = (v37 ^ v19) + v20;
    if (v38 >= v19)
    {
      v39 = v18 - 1;
    }

    else
    {
      v39 = 0;
    }

    v16 = v36;
    if (v11[v38 - v39] == v8)
    {
      goto LABEL_6;
    }
  }

  v32 = __OFSUB__(v17, v24);
  v17 -= v24;
  if (!v32)
  {
    v36 = v16 >> v24;
    v37 = v16 & v19;
    if ((v16 & v19) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a4;
  v8 = *(a4 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v11 = 0;
    v32 = v7;
    v33 = *(v7 + 16);
    v12 = (v7 + 48);
    do
    {
      if (v33 == v11)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v11 >= *(v7 + 16))
      {
        goto LABEL_19;
      }

      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;
      v17 = *(v39 + 16);
      v16 = *(v39 + 24);

      if (v17 >= v16 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      *(v39 + 16) = v17 + 1;
      v18 = v39 + 56 * v17;
      *(v18 + 80) = v11;
      *(v18 + 32) = a1;
      *(v18 + 40) = v15;
      *(v18 + 48) = v13;
      *(v18 + 56) = v14;
      *(v18 + 64) = a2;
      *(v18 + 72) = a3 & 1;
      v12 += 3;
      ++v11;
      v7 = v32;
    }

    while (v8 != v11);
    v29 = v39;

    v19 = a5;
    v9 = MEMORY[0x277D84F90];
    v20 = *(a5 + 16);
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v19 = a5;

  v29 = MEMORY[0x277D84F90];
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_17:

    *a7 = a6;
    *(a7 + 8) = v29;
    *(a7 + 16) = v9;
    *(a7 + 24) = a1;
    *(a7 + 32) = a2;
    *(a7 + 40) = a3 & 1;
    return result;
  }

LABEL_11:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
  v21 = 0;
  v34 = *(v19 + 16);
  v22 = (v19 + 48);
  while (v34 != v21)
  {
    if (v21 >= *(v19 + 16))
    {
      goto LABEL_21;
    }

    v24 = *(v22 - 2);
    v23 = *(v22 - 1);
    v25 = *v22;
    v27 = *(v9 + 16);
    v26 = *(v9 + 24);

    if (v27 >= v26 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
    }

    *(v9 + 16) = v27 + 1;
    v28 = v9 + 56 * v27;
    *(v28 + 80) = v21;
    *(v28 + 32) = a1;
    *(v28 + 40) = v25;
    *(v28 + 48) = v24;
    *(v28 + 56) = v23;
    *(v28 + 64) = a2;
    *(v28 + 72) = a3 & 1;
    v22 += 3;
    ++v21;
    v19 = a5;
    if (v20 == v21)
    {
      goto LABEL_17;
    }
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized OrderedSet.append<A>(contentsOf:)(uint64_t result, uint64_t a2, unint64_t a3, void (*a4)(BOOL, uint64_t, uint64_t))
{
  v33 = result;
  v4 = a3 >> 1;
  if (a3 >> 1 != a2)
  {
    v5 = a2;
    v32 = a3 >> 1;
    while (1)
    {
      if (v5 >= v4)
      {
        __break(1u);
        return result;
      }

      v38 = v5;
      v7 = v33 + 56 * v5;
      v8 = *(v7 + 32);
      v43 = *(v7 + 16);
      v44 = v8;
      v42 = *v7;
      v9 = *(v7 + 48);
      v45 = v9;
      v46[0] = v43;
      v10 = *v35;
      v11 = v35[1];
      v12 = *(v11 + 16);
      v40 = *(&v42 + 1);
      if (*v35)
      {

        outlined init with copy of String(v46, v41);

        specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v42, v11 + 32, v12, (v10 + 16), v10 + 32);
        v14 = v13;
        v6 = v15;

        if ((v14 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (v12)
      {
        break;
      }

      outlined init with copy of String(v46, v41);
LABEL_5:
      v6 = 0;
LABEL_6:
      specialized OrderedSet._appendNew(_:in:)(&v42, v6, a4);
LABEL_7:
      v5 = v38 + 1;

      result = outlined destroy of String(v46);
      v4 = v32;
      if (v38 + 1 == v32)
      {
        return result;
      }
    }

    v34 = v9;
    v16 = v42;
    v31 = v44;
    v17 = BYTE8(v44);
    v36 = *(&v46[0] + 1);
    v37 = *&v46[0];

    outlined init with copy of String(v46, v41);
    v29 = v17 ^ 1;
    v30 = v17;
    v18 = (v11 + 80);
    while (1)
    {
      if (*(v18 - 6) != v16)
      {
        goto LABEL_15;
      }

      v19 = *(v18 - 4);
      v20 = *(v18 - 3);
      v39 = *(v18 - 2);
      v21 = *(v18 - 8);
      v22 = *v18;
      v23 = *(**(v18 - 5) + 128);

      if ((v23(v40) & 1) == 0)
      {

        goto LABEL_15;
      }

      if (v19 == v37 && v20 == v36)
      {

        if (v21)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          goto LABEL_15;
        }

        if (v21)
        {
LABEL_24:
          v26 = v30;
          if (v22 != v34)
          {
            v26 = 0;
          }

          if (v26)
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }
      }

      v27 = v29;
      if (v39 != v31)
      {
        v27 = 0;
      }

      if (v27 == 1 && v22 == v34)
      {
        goto LABEL_7;
      }

LABEL_15:
      v18 += 7;
      if (!--v12)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

void specialized UserGraph.Adjacent.init(_:)(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v30 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v7 = v30;
    v8 = *(v30 + 16);
    v9 = 16 * v8;
    v10 = v5;
    do
    {
      v11 = *(v30 + 24);
      v12 = v8++ >= v11 >> 1;
      if (v12)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v8, 1);
      }

      *(v30 + 16) = v8;
      v13 = v30 + v9;
      *(v13 + 32) = 0;
      *(v13 + 40) = v6;
      v9 += 16;
      --v10;
    }

    while (v10);
  }

  else
  {
    v8 = *(MEMORY[0x277D84F90] + 16);
    v7 = MEMORY[0x277D84F90];
  }

  if (v5 != v8)
  {
    goto LABEL_20;
  }

  _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6OutputV_s15ContiguousArrayVyAHGTt0g5(v14);
  if (*(v16 + 16) != v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = v15;
  v18 = v16;
  v19 = *(result + 16);
  if (!v19)
  {
    if (!*(v6 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v29 = v15;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
  v20 = *(v6 + 16);
  v21 = 56 * v20 + 32;
  v22 = 0uLL;
  v23 = v19;
  do
  {
    v24 = *(v6 + 24);
    v12 = v20++ >= v24 >> 1;
    if (v12)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v20, 1);
      v22 = 0uLL;
    }

    *(v6 + 16) = v20;
    v25 = v6 + v21;
    *(v25 + 48) = 0;
    *(v25 + 16) = v22;
    *(v25 + 32) = v22;
    v21 += 56;
    *v25 = v22;
    --v23;
  }

  while (v23);
  v17 = v29;
  if (v19 != v20)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_16:

  _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA5InputV_s15ContiguousArrayVyAHGTt0g5(v26);
  if (*(v28 + 16) == v19)
  {
    *a3 = v17;
    a3[1] = v18;
    a3[2] = v7;
    a3[3] = v27;
    a3[4] = v28;
    a3[5] = v6;
    return;
  }

LABEL_22:
  __break(1u);
}

__n128 specialized UserGraph.init(id:label:inputs:outputs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = MEMORY[0x277D84F90];
  _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCAA0aB4NodeV2IDV_AA04UserB0V8AdjacentVSayAK_AOtGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v62 = a4;

  *&v82 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCAA0aB4NodeV2IDV_AA04UserB0V8AdjacentVSayAK_AOtGTt0g5Tf4g_n(v9);
  *(&v82 + 1) = v10;
  v83 = v11;
  v12 = *(a5 + 16);
  v60 = a5;
  v61 = a1;
  if (v12)
  {
    *&v71 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = (a5 + 48);
    do
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      v16 = *v13;
      *&v71 = v9;
      v17 = *(v9 + 16);
      v18 = *(v9 + 24);

      if (v17 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1);
        v9 = v71;
      }

      *(v9 + 16) = v17 + 1;
      v19 = (v9 + 24 * v17);
      v19[4] = v14;
      v19[5] = v15;
      v19[6] = v16;
      v13 += 3;
      --v12;
    }

    while (v12);
  }

  v20 = MEMORY[0x277D84F90];
  specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)(0, a1, 0, v9, MEMORY[0x277D84F90], 0xE000000000000010, &v85);
  v101 = *(&v85 + 1);
  v102 = v85;
  v100 = *v86;
  outlined init with copy of NodePersonality(&v102, &v71);
  outlined init with copy of [Input](&v101, &v71, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v100, &v71, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v20);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
  }

  v25 = v100;
  v24 = v101;
  *(v21 + 2) = v23 + 1;
  v26 = &v21[48 * v23];
  v27 = *v86;
  *(v26 + 2) = v85;
  *(v26 + 3) = v27;
  *(v26 + 57) = *&v86[9];
  v55 = *&v86[8];
  v56 = v21;
  outlined init with copy of NodePersonality(&v102, &v71);
  outlined init with copy of [Input](&v101, &v71, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v100, &v71, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized UserGraph.Adjacent.init(_:)(v24, v25, &v87);
  v28 = v87;
  v29 = v89;
  outlined destroy of NodePersonality(&v102);
  outlined destroy of [Input](&v101, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v100, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v108 = v88;
  v107 = v28;
  v109 = v29;
  v110 = v90;
  specialized OrderedDictionary.subscript.setter(&v107, v55);
  *(v84 + 7) = v85;
  *(&v84[1] + 7) = *v86;
  v84[2] = *&v86[9];
  v30 = *(v62 + 16);
  if (v30)
  {
    *&v71 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
    v31 = v71;
    v32 = (v62 + 48);
    do
    {
      v33 = *(v32 - 2);
      v34 = *(v32 - 1);
      v35 = *v32;
      *&v71 = v31;
      v36 = *(v31 + 16);
      v37 = *(v31 + 24);

      if (v36 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v36 + 1, 1);
        v31 = v71;
      }

      *(v31 + 16) = v36 + 1;
      v38 = (v31 + 24 * v36);
      v38[4] = v33;
      v38[5] = v34;
      v38[6] = v35;
      v32 += 3;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v39 = v56;
  specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)(*(v56 + 2), v61, 0, MEMORY[0x277D84F90], v31, 0xE000000000000000, &v91);
  v98 = *(&v91 + 1);
  v99 = v91;
  v97 = *v92;
  outlined init with copy of NodePersonality(&v99, &v71);
  outlined init with copy of [Input](&v98, &v71, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v97, &v71, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v41 = *(v56 + 2);
  v40 = *(v56 + 3);
  if (v41 >= v40 >> 1)
  {
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v56);
  }

  v43 = v97;
  v42 = v98;
  *(v39 + 2) = v41 + 1;
  v44 = &v39[48 * v41];
  v46 = v91;
  v45 = *v92;
  *(v44 + 57) = *&v92[9];
  *(v44 + 2) = v46;
  *(v44 + 3) = v45;
  v47 = *&v92[8];
  outlined init with copy of NodePersonality(&v99, &v71);
  outlined init with copy of [Input](&v98, &v71, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v97, &v71, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized UserGraph.Adjacent.init(_:)(v42, v43, &v93);
  v48 = v93;
  v49 = v95;
  outlined destroy of NodePersonality(&v99);
  outlined destroy of [Input](&v98, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v97, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v104 = v94;
  v103 = v48;
  v105 = v49;
  v106 = v96;
  specialized OrderedDictionary.subscript.setter(&v103, v47);

  v64 = v82;
  *&v65 = v83;
  *(&v65 + 1) = a2;
  *&v66 = a3;
  *(&v66 + 1) = v61;
  v67.n128_u64[0] = v62;
  v67.n128_u64[1] = v60;
  v68 = v39;
  v69 = v91;
  *v70 = *v92;
  *&v70[9] = *&v92[9];
  *&v70[57] = v84[2];
  *&v70[41] = v84[1];
  *&v70[25] = v84[0];
  v71 = v82;
  v72 = v83;
  v73 = a2;
  v74 = a3;
  v75 = v61;
  v76 = v62;
  v77 = v60;
  v78 = v39;
  v79 = 0;
  *(v81 + 9) = *&v92[9];
  v80 = v91;
  v81[0] = *v92;
  *(&v81[3] + 9) = v84[2];
  *(&v81[2] + 9) = v84[1];
  *(&v81[1] + 9) = v84[0];
  outlined init with copy of UserGraph(&v64, v63);
  outlined destroy of UserGraph(&v71);
  v50 = *&v70[48];
  *(a6 + 128) = *&v70[32];
  *(a6 + 144) = v50;
  *(a6 + 153) = *&v70[57];
  v51 = v69;
  *(a6 + 64) = v68;
  *(a6 + 80) = v51;
  v52 = *&v70[16];
  *(a6 + 96) = *v70;
  *(a6 + 112) = v52;
  v53 = v65;
  *a6 = v64;
  *(a6 + 16) = v53;
  result = v67;
  *(a6 + 32) = v66;
  *(a6 + 48) = result;
  return result;
}

uint64_t specialized ShaderGraphNode.input(labeled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result;
  v5 = (a3 + 80);
  v6 = *(a3 + 16) + 1;
  while (1)
  {
    if (!--v6)
    {
      v8 = 0;
      v7 = 0;
      v10 = 0;
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      goto LABEL_12;
    }

    v8 = *(v5 - 6);
    v7 = *(v5 - 5);
    v10 = *(v5 - 4);
    v9 = *(v5 - 3);
    v11 = *(v5 - 2);
    v12 = *(v5 - 8);
    v13 = *v5;
    if (v10 == v4 && v9 == a2)
    {
      break;
    }

    v5 += 7;
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v10 = v4;
LABEL_11:

LABEL_12:
  *a4 = v8;
  a4[1] = v7;
  a4[2] = v10;
  a4[3] = v9;
  a4[4] = v11;
  a4[5] = v12;
  a4[6] = v13;
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph15MaterialXTargetC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for MaterialXTarget();
  v5 = lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget();
  result = MEMORY[0x266771950](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x266772030](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
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

uint64_t *specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = result;
  v6 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = a2 + 40;
    while (v8 < *(a2 + 16))
    {
      ++v8;
      v9 += 48;

      result = specialized Array.append<A>(contentsOf:)(v10);
      if (v7 == v8)
      {
        v6 = v18;
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_6:

  v11 = *(v4[8] + 16);
  v12 = 10 * v11;
  if ((v11 * 10) >> 64 != (10 * v11) >> 63)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (*(v6 + 2) <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = *(v6 + 2);
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 0, v6);
  }

  v19 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  Set.reserveCapacity(_:)(v12);
  v15 = *v4;
  v16 = v4[1];
  v17 = v4[2];
  *a3 = v15;
  a3[1] = v16;
  a3[2] = v17;
  a3[3] = v6;
  a3[4] = v19;
}

unint64_t *specialized closure #1 in UserGraph.hoist(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = result[3];
  if (v5 != a2 && v5 != a3)
  {
    v32 = result[3];
    v7 = result[1];
    v31 = *result;
    v8 = result[2];
    v9 = *(v7 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v29 = result[2];
      *&v35 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
      v10 = v35;
      v11 = (v7 + 56);
      do
      {
        v13 = *(v11 - 2);
        v12 = *(v11 - 1);
        v14 = *v11;
        *&v35 = v10;
        v16 = *(v10 + 16);
        v15 = *(v10 + 24);

        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v10 = v35;
        }

        *(v10 + 16) = v16 + 1;
        v17 = (v10 + 24 * v16);
        v17[4] = v12;
        v17[5] = v14;
        v17[6] = v13;
        v11 += 7;
        --v9;
      }

      while (v9);
      v8 = v29;
    }

    v18 = *(v8 + 16);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v30 = v10;
      *&v35 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v19 = v35;
      v20 = (v8 + 56);
      do
      {
        v22 = *(v20 - 2);
        v21 = *(v20 - 1);
        v23 = *v20;
        *&v35 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);

        if (v25 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
          v10 = v30;
          v19 = v35;
        }

        *(v19 + 16) = v25 + 1;
        v26 = (v19 + 24 * v25);
        v26[4] = v21;
        v26[5] = v23;
        v26[6] = v22;
        v20 += 7;
        --v18;
      }

      while (v18);
    }

    UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v10, v19, v31, &v35);

    v27 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *a5;
    *a5 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v32, isUniquelyReferenced_nonNull_native);
    v40 = v35;
    outlined destroy of NodePersonality(&v40);
    v39 = *(&v35 + 1);
    outlined destroy of [Input](&v39, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    v38 = v36;
    outlined destroy of [Input](&v38, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    *a5 = v34;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph6OutputV_SayAFGTt0g5Tf4g_nTm(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, void *))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x266771950](v7, a3, v8);
  v19 = result;
  if (v7)
  {
    v10 = (a1 + 80);
    do
    {
      v12 = *(v10 - 6);
      v11 = *(v10 - 5);
      v13 = *(v10 - 4);
      v14 = *(v10 - 3);
      v15 = *(v10 - 2);
      v16 = *(v10 - 8);
      v17 = *v10;
      v10 += 7;
      v20[0] = v12;
      v20[1] = v11;
      v20[2] = v13;
      v20[3] = v14;
      v20[4] = v15;
      v21 = v16;
      v22 = v17;

      a4(v18, v20);

      --v7;
    }

    while (v7);
    return v19;
  }

  return result;
}

uint64_t specialized closure #1 in UserGraph.sinkNodes()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 + 16);

  v12 = 0;
  v13 = -1;
  v14 = 40;
  do
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    if (++v13 >= *(a2 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v15 = *(a3 + v14);
    v14 += 16;
    --v10;
    v16 = *(v15 + 16);
    v17 = __OFADD__(v12, v16);
    v12 += v16;
  }

  while (!v17);
  __break(1u);
LABEL_7:

  v18 = 0;
  v19 = 0;
  if (v12)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_15;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a1 == -7)
  {
LABEL_15:
    *a5 = v18;
    *(a5 + 8) = v19;
    *(a5 + 16) = v20;
    *(a5 + 24) = v21;
    *(a5 + 32) = v22;
    *(a5 + 40) = v10;
    return result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = *(a4 + 64);
  if (*(v23 + 16) > a1)
  {
    v24 = v23 + 48 * a1;
    v21 = *(v24 + 56);
    if (v21 == -7)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      LOBYTE(v10) = 0;
    }

    else
    {
      LOBYTE(v10) = *(v24 + 72);
      v22 = *(v24 + 64);
      v19 = *(v24 + 40);
      v20 = *(v24 + 48);
      v18 = *(v24 + 32);
      outlined copy of NodePersonality(v18);
    }

    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized closure #2 in UserGraph.hoist(_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v126 = *(a1 + 6);
  v124 = v14;
  v125 = v15;
  v123 = v13;
  v16 = *(a1 + 56);
  v17 = *(a1 + 72);
  v18 = *(a1 + 88);
  v122 = *(a1 + 13);
  v120 = v17;
  v121 = v18;
  v119 = v16;
  v19 = specialized Set.contains(_:)(&v123, a2);
  result = specialized Set.contains(_:)(&v119, a3);
  if ((v19 & 1) == 0)
  {
    if ((result & 1) == 0)
    {
      v57 = *a7;
      if (!*(*a7 + 16))
      {
        return result;
      }

      result = specialized __RawDictionaryStorage.find<A>(_:)(v123);
      if ((v58 & 1) == 0)
      {
        return result;
      }

      v59 = *a7;
      if (!*(*a7 + 16))
      {
        return result;
      }

      v60 = *(*(v57 + 56) + 8 * result);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v119);
      if ((v61 & 1) == 0 || v60 == -7)
      {
        return result;
      }

      if ((v60 & 0x8000000000000000) == 0)
      {
        v127 = v7;
        v62 = *(a6 + 64);
        v63 = *(v62 + 16);
        if (v60 < v63)
        {
          v64 = *(*(v59 + 56) + 8 * result);
          v65 = v62 + 32;
          v66 = v62 + 32 + 48 * v60;
          v67 = *v66;
          result = specialized ShaderGraphNode.input(labeled:)(v124, *(&v124 + 1), *(v66 + 16), &v95);
          v68 = *(&v95 + 1);
          if (!*(&v95 + 1))
          {
            return result;
          }

          if (v64 == -7)
          {
            goto LABEL_49;
          }

          if (v64 >= v63)
          {
LABEL_58:
            __break(1u);
            return result;
          }

          v73 = v95;
          v74 = v65 + 48 * v64;
          v75 = *v74;
          specialized ShaderGraphNode.input(labeled:)(v120, *(&v120 + 1), *(v74 + 8), &v108);
          if (!*(&v108 + 1))
          {
LABEL_49:

            outlined copy of NodePersonality(v67);

            v112 = v96;
            outlined destroy of String(&v112);
            outlined consume of NodePersonality(v67);
          }

          else
          {
            *&v115[24] = v109;
            *&v115[40] = v110;
            v91 = v109;
            v87 = v96;
            v113 = v96;
            v114 = v97;
            *&v112 = v73;
            *(&v112 + 1) = v68;
            *v115 = v98;
            *&v115[8] = v108;
            *&v115[56] = v111;
            *&v77 = v73;
            *(&v77 + 1) = v68;
            v78 = v96;
            *&v79 = v97;
            BYTE8(v79) = BYTE8(v97);
            v80 = v98;
            v101 = v108;
            v102 = v109;
            *&v103 = v110;
            BYTE8(v103) = BYTE8(v110);
            *v104 = v111;

            outlined copy of NodePersonality(v67);

            outlined copy of NodePersonality(v75);

            outlined init with copy of String(&v87, &v83);

            outlined init with copy of String(&v91, &v83);
            UserGraph.connect(_:to:)(&v77, &v101);
            outlined destroy of Edge(&v112);

            outlined destroy of String(&v91);
            outlined consume of NodePersonality(v75);

            outlined destroy of String(&v87);
            outlined consume of NodePersonality(v67);
          }
        }

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v34 = *a7;
    if (!*(*a7 + 16))
    {
      return result;
    }

    v35 = v120;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v123);
    if ((v36 & 1) == 0)
    {
      return result;
    }

    v37 = *(*(v34 + 56) + 8 * result);
    if (v37 == -7)
    {
      return result;
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v38 = *(a6 + 64);
      if (v37 < *(v38 + 16))
      {
        v39 = (v38 + 48 * v37);
        v76 = v39[4];
        v127 = v39[5];
        result = specialized ShaderGraphNode.input(labeled:)(v124, *(&v124 + 1), v39[6], &v91);
        if (*(&v91 + 1))
        {
          v77 = v91;
          v78 = v92;
          v79 = v93;
          v80 = v94;
          specialized ShaderGraphNode.input(labeled:)(v35, *(&v35 + 1), a5, &v95);
          if (*(&v95 + 1))
          {
            v108 = v95;
            v109 = v96;
            v110 = v97;
            v111 = v98;
            v40 = *(a6 + 144);
            v117 = *(a6 + 128);
            v118[0] = v40;
            *(v118 + 9) = *(a6 + 153);
            v41 = *(a6 + 80);
            *&v115[16] = *(a6 + 64);
            *&v115[32] = v41;
            v42 = *(a6 + 112);
            *&v115[48] = *(a6 + 96);
            v116 = v42;
            v43 = *(a6 + 16);
            v112 = *a6;
            v113 = v43;
            v44 = *(a6 + 48);
            v114 = *(a6 + 32);
            *v115 = v44;

            outlined copy of NodePersonality(v76);
            outlined init with copy of UserGraph(&v112, &v101);
            v45 = UserGraph.edges(from:)(&v108);
            outlined destroy of UserGraph(&v112);
            v87 = v92;

            outlined init with copy of String(&v87, &v101);
            specialized Sequence.forEach(_:)(v45, &v77);

            outlined destroy of String(&v87);
            outlined consume of NodePersonality(v76);

            v101 = v109;
            outlined destroy of String(&v101);

            v33 = &v87;
            goto LABEL_7;
          }

          outlined copy of NodePersonality(v76);

          v112 = v92;
          outlined destroy of String(&v112);
          outlined consume of NodePersonality(v76);
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  if ((result & 1) == 0)
  {
    result = specialized ShaderGraphNode.input(labeled:)(v124, *(&v124 + 1), a4, &v83);
    if (!*(&v83 + 1))
    {
      return result;
    }

    v95 = v83;
    v96 = v84;
    v97 = v85;
    v98 = v86;
    v46 = *(a6 + 144);
    v117 = *(a6 + 128);
    v118[0] = v46;
    *(v118 + 9) = *(a6 + 153);
    v47 = *(a6 + 80);
    *&v115[16] = *(a6 + 64);
    *&v115[32] = v47;
    v48 = *(a6 + 112);
    *&v115[48] = *(a6 + 96);
    v116 = v48;
    v49 = *(a6 + 16);
    v112 = *a6;
    v113 = v49;
    v50 = *(a6 + 48);
    v114 = *(a6 + 32);
    *v115 = v50;
    outlined init with copy of UserGraph(&v112, &v101);
    UserGraph.output(connectedTo:)(&v95, &v87);
    outlined destroy of UserGraph(&v112);
    v51 = *(&v87 + 1);
    if (!*(&v87 + 1))
    {

      v69 = v96;
      goto LABEL_37;
    }

    v52 = *a7;
    if (!*(*a7 + 16) || (v53 = v87, result = specialized __RawDictionaryStorage.find<A>(_:)(v119), (v54 & 1) == 0))
    {

      v77 = v96;
      outlined destroy of String(&v77);

      v69 = v88;
      goto LABEL_37;
    }

    v55 = *(*(v52 + 56) + 8 * result);
    if (v55 == -7)
    {

      v101 = v88;
      outlined destroy of String(&v101);

      v56 = v96;
LABEL_39:
      v77 = v56;
      return outlined destroy of String(&v77);
    }

    if ((v55 & 0x8000000000000000) == 0)
    {
      v127 = v7;
      v70 = *(a6 + 64);
      if (v55 < *(v70 + 16))
      {
        v71 = v70 + 48 * v55;
        v72 = *(v71 + 32);
        specialized ShaderGraphNode.input(labeled:)(v120, *(&v120 + 1), *(v71 + 40), &v91);
        if (*(&v91 + 1))
        {
          *&v104[24] = v92;
          *&v104[40] = v93;
          v81[0] = v92;
          v100 = v88;
          v102 = v88;
          v103 = v89;
          *&v101 = v53;
          *(&v101 + 1) = v51;
          *v104 = v90;
          *&v104[8] = v91;
          *&v104[56] = v94;
          *&v108 = v53;
          *(&v108 + 1) = v51;
          v109 = v88;
          *&v110 = v89;
          BYTE8(v110) = BYTE8(v89);
          v111 = v90;
          v77 = v91;
          v78 = v92;
          *&v79 = v93;
          BYTE8(v79) = BYTE8(v93);
          v80 = v94;

          outlined copy of NodePersonality(v72);

          outlined init with copy of String(&v100, &v99);

          outlined init with copy of String(v81, &v99);
          UserGraph.connect(_:to:)(&v108, &v77);
          outlined destroy of Edge(&v101);

          outlined destroy of String(v81);
          outlined consume of NodePersonality(v72);

          outlined destroy of String(&v100);

          v99 = v96;
          return outlined destroy of String(&v99);
        }

        else
        {

          v101 = v88;
          outlined destroy of String(&v101);

          v77 = v96;
          return outlined destroy of String(&v77);
        }
      }

      goto LABEL_55;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v21 = v120;
  result = specialized ShaderGraphNode.input(labeled:)(v124, *(&v124 + 1), a4, v81);
  if (*(&v81[0] + 1))
  {
    v108 = v81[0];
    v109 = v81[1];
    v110 = v81[2];
    v111 = v82;
    v22 = *(a6 + 144);
    v117 = *(a6 + 128);
    v118[0] = v22;
    *(v118 + 9) = *(a6 + 153);
    v23 = *(a6 + 80);
    *&v115[16] = *(a6 + 64);
    *&v115[32] = v23;
    v24 = *(a6 + 112);
    *&v115[48] = *(a6 + 96);
    v116 = v24;
    v25 = *(a6 + 16);
    v112 = *a6;
    v113 = v25;
    v26 = *(a6 + 48);
    v114 = *(a6 + 32);
    *v115 = v26;
    outlined init with copy of UserGraph(&v112, &v101);
    UserGraph.output(connectedTo:)(&v108, &v83);
    outlined destroy of UserGraph(&v112);
    if (*(&v83 + 1))
    {
      v95 = v83;
      v96 = v84;
      v97 = v85;
      v98 = v86;
      specialized ShaderGraphNode.input(labeled:)(v21, *(&v21 + 1), a5, &v87);
      if (*(&v87 + 1))
      {
        v91 = v87;
        v92 = v88;
        v93 = v89;
        v94 = v90;
        v27 = *(a6 + 144);
        v106 = *(a6 + 128);
        v107[0] = v27;
        *(v107 + 9) = *(a6 + 153);
        v28 = *(a6 + 80);
        *&v104[16] = *(a6 + 64);
        *&v104[32] = v28;
        v29 = *(a6 + 112);
        *&v104[48] = *(a6 + 96);
        v105 = v29;
        v30 = *(a6 + 16);
        v101 = *a6;
        v102 = v30;
        v31 = *(a6 + 48);
        v103 = *(a6 + 32);
        *v104 = v31;
        outlined init with copy of UserGraph(&v101, &v77);
        v32 = UserGraph.edges(from:)(&v91);
        outlined destroy of UserGraph(&v101);
        v100 = v84;

        outlined init with copy of String(&v100, &v77);
        specialized Sequence.forEach(_:)(v32, &v95);

        outlined destroy of String(&v100);

        v99 = v109;
        outlined destroy of String(&v99);

        v77 = v92;
        outlined destroy of String(&v77);

        v33 = &v100;
LABEL_7:
        outlined destroy of String(v33);
      }

      v101 = v84;
      outlined destroy of String(&v101);

      v56 = v109;
      goto LABEL_39;
    }

    v69 = v109;
LABEL_37:
    v101 = v69;
    return outlined destroy of String(&v101);
  }

  return result;
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, void *a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a2;
  v5 = 0;
  v79 = *(a3 + 8);
  v80 = *a3;
  v81 = (a3 + 16);
  v6 = result + 32;
  v77 = *(a3 + 24);
  v78 = *(a3 + 16);
  v87 = *(result + 16);
  v88 = result + 32;
  while (1)
  {
    v10 = (v6 + 56 * v5);
    v11 = v10[1];
    v115 = *v10;
    v116 = v11;
    v117 = v10[2];
    v118 = *(v10 + 6);
    v12 = v115;
    v13 = v4[1];
    v14 = v4[2];
    v15 = v13 + 32;
    v16 = *(v13 + 16);
    if (!*v4)
    {
      if (!v16)
      {
        goto LABEL_5;
      }

      result = 0;
      while (*(v15 + 8 * result) != v115)
      {
        if (v16 == ++result)
        {
          goto LABEL_5;
        }
      }

      v18 = *(&v115 + 1);
      v119[0] = v10[1];
      goto LABEL_16;
    }

    result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v115, v15, v16, (*v4 + 16), *v4 + 32);
    if (v17)
    {
      goto LABEL_5;
    }

    v18 = *(&v115 + 1);
    v119[0] = v116;
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_16:
    if (result >= *(v14 + 16))
    {
      goto LABEL_74;
    }

    v19 = (v14 + 48 * result);
    v20 = v19[4];
    v21 = v19[5];
    v22 = v19[6];
    v23 = v19[7];
    v25 = v19[8];
    v24 = v19[9];
    v26 = *(v25 + 16);
    v102 = v5;
    v120 = v18;
    v96 = v21;
    v98 = v20;
    v95 = v22;
    v100 = v24;
    v92 = v25;
    if (!v23)
    {
      if (!v26)
      {

        outlined init with copy of String(v119, v108);

LABEL_50:
        outlined consume of UserGraph.Adjacent?(v98, v96, v22, v23, v92, v100);
LABEL_51:
        v4 = a2;
        v3 = v87;
        goto LABEL_52;
      }

      v90 = *(&v119[0] + 1);
      v91 = *&v119[0];
      v104 = v26;

      outlined init with copy of String(v119, v108);
      v84 = v117;
      v89 = v118;
      v85 = BYTE8(v117);
      v83 = BYTE8(v117) ^ 1;

      v47 = v104;
      v28 = 0;
      v48 = (v25 + 80);
      while (1)
      {
        if (*(v48 - 6) != v12)
        {
          goto LABEL_30;
        }

        v49 = *(v48 - 4);
        v50 = *(v48 - 3);
        v106 = *(v48 - 2);
        v51 = *(v48 - 8);
        v52 = *v48;
        v53 = *(**(v48 - 5) + 128);

        if ((v53(v120) & 1) == 0)
        {

          v47 = v104;
          goto LABEL_30;
        }

        v54 = v49 == v91 && v50 == v90;
        if (v54)
        {

          v47 = v104;
          if (v51)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v47 = v104;
          if ((v55 & 1) == 0)
          {
            goto LABEL_30;
          }

          if (v51)
          {
LABEL_39:
            v56 = v85;
            if (v52 != v89)
            {
              v56 = 0;
            }

            if (v56)
            {
              goto LABEL_20;
            }

            goto LABEL_30;
          }
        }

        v57 = v83;
        if (v106 != v84)
        {
          v57 = 0;
        }

        if (v57 == 1 && v52 == v89)
        {
          goto LABEL_20;
        }

LABEL_30:
        v48 += 7;
        if (v47 == ++v28)
        {
          goto LABEL_50;
        }
      }
    }

    v27 = v26;

    outlined init with copy of String(v119, v108);

    swift_retain_n();

    v28 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v115, v25 + 32, v27, (v23 + 16), v23 + 32);
    v30 = v29;

    if (v30)
    {
      goto LABEL_50;
    }

    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_75;
    }

LABEL_20:
    if (v28 >= *(v100 + 16))
    {
      goto LABEL_76;
    }

    v31 = (v100 + 56 * v28);
    v32 = v31[4];
    v33 = v31[5];
    v34 = v31[6];
    v35 = v31[7];
    v36 = v31[8];
    v37 = v31[9];
    v38 = v31[10];
    outlined copy of Output?(v32, v33, v34, v35);
    outlined consume of UserGraph.Adjacent?(v98, v96, v95, v23, v92, v100);
    if (!v33)
    {
      v114 = *v81;

      outlined init with copy of String(&v114, v108);
      outlined consume of Output?(v32, 0, v34, v35);
      outlined consume of Output?(v80, v79, v78, v77);
      goto LABEL_51;
    }

    v103 = v33;
    v105 = v34;
    v54 = v32 == *a3;
    v4 = a2;
    v5 = v102;
    v39 = v32;
    v6 = v88;
    if (v54)
    {
      v93 = v12;
      v40 = v36;
      v41 = *(a3 + 8);
      v113 = *v81;
      v97 = *(*v103 + 128);
      v99 = v39;
      v101 = v38;
      v42 = v40;
      outlined copy of Output?(v39, v103, v105, v35);

      outlined init with copy of String(&v113, v108);
      if ((v97(v41) & 1) == 0)
      {

        outlined destroy of String(&v113);
        outlined consume of Output?(v99, v103, v105, v35);
        v39 = v99;
        v7 = v103;
        v8 = v105;
        v9 = v35;
        goto LABEL_3;
      }

      if (__PAIR128__(v35, v105) == v113)
      {

        outlined destroy of String(&v113);
        v43 = v35;
        v44 = v35;
        v45 = v37;
        v46 = v101;
        outlined consume of Output?(v99, v103, v105, v44);
        v3 = v87;
      }

      else
      {
        v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of String(&v113);
        v43 = v35;
        v59 = v35;
        v45 = v37;
        v46 = v101;
        outlined consume of Output?(v99, v103, v105, v59);
        v3 = v87;
        if ((v58 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      v60 = *(a3 + 40);
      if (v45)
      {
        v61 = v93;
        if (!*(a3 + 40))
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v42 != *(a3 + 32))
        {
          v60 = 1;
        }

        v61 = v93;
        if (v60)
        {
LABEL_66:
          v72 = v99;
          v73 = v103;
          v74 = v105;
          v75 = v43;
LABEL_67:
          outlined consume of Output?(v72, v73, v74, v75);
          goto LABEL_4;
        }
      }

      if (v46 != *(a3 + 48))
      {
        goto LABEL_66;
      }

      v62 = specialized OrderedDictionary.subscript.modify(v108, v61);
      if (!v63[1])
      {
        v62(v108, 0);
        v72 = v99;
        v73 = v103;
        v74 = v105;
        v75 = v43;
        goto LABEL_67;
      }

      v94 = v62;
      v65 = v63[3];
      v64 = v63[4];
      v66 = *(v64 + 16);

      outlined init with copy of String(v119, v107);
      if (v65)
      {

        v67 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v115, v64 + 32, v66, (v65 + 16), v65 + 32);
        v69 = v68;
        v71 = v70;
      }

      else
      {
        v67 = specialized Collection<>.firstIndex(of:)(&v115, v64 + 32, v66);
        v69 = v76;
        v71 = 0;
      }

      outlined destroy of String(v119);
      v3 = v87;
      if ((v69 & 1) == 0)
      {
        specialized OrderedSet._removeExistingMember(at:in:)(v67, v71, v109);

        v112 = v110;
        outlined destroy of String(&v112);
        specialized ContiguousArray.remove(at:)(v67, v111);
        outlined destroy of [Input](v111, &_s11ShaderGraph6OutputVSgMd, &_s11ShaderGraph6OutputVSgMR);
      }

      v94(v108, 0);
      outlined consume of Output?(v99, v103, v105, v43);
LABEL_52:
      v5 = v102;
      v6 = v88;
      goto LABEL_4;
    }

    v7 = v103;
    v8 = v105;
    v9 = v35;
LABEL_3:
    outlined consume of Output?(v39, v7, v8, v9);
    v3 = v87;
LABEL_4:

    result = outlined destroy of String(v119);
LABEL_5:
    if (++v5 == v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t specialized UserGraph.removeEdges(connectedTo:)(unint64_t a1)
{
  v2 = a1;
  v3 = 0;
  specialized OrderedDictionary.subscript.getter(a1, *v1, v1[1], v1[2], &v79);
  v4 = v80;
  if (v80)
  {
    v62 = v2;
    v5 = v83;
    v6 = v84;
    v7 = v81;
    v8 = v82;
    v9 = v79;

    outlined consume of UserGraph.Adjacent?(v9, v4, v7, v8, v5, v6);
    v10 = *(v6 + 16);

    v69 = v10;
    if (v10)
    {
      v11 = 0;
      v12 = v5 + 56;
      v13 = (v6 + 40);
      v68 = v5;
      v70 = v6;
      while (1)
      {
        if (v11 >= *(v5 + 16))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);

          result = specialized OrderedSet._regenerateHashTable()(_s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt2g5Tm);
          __break(1u);
          return result;
        }

        v15 = *(v12 - 8);
        v95[0] = *(v12 - 24);
        v95[1] = v15;
        v95[2] = *(v12 + 8);
        v96 = *(v12 + 24);
        v100 = v15;
        if (v11 >= *(v6 + 16))
        {
          goto LABEL_55;
        }

        v74 = v11;
        v76 = v3;
        v17 = *(v13 - 1);
        v16 = *v13;
        v19 = v13[1];
        v18 = v13[2];
        v21 = v13[3];
        v20 = v13[4];
        v22 = v13[5];
        v72 = v19;
        v73 = v17;
        if (!*v13)
        {
          break;
        }

        v97[0] = *(v13 - 1);
        v97[1] = v16;
        v97[2] = v19;
        v97[3] = v18;
        v97[4] = v21;
        v98 = v20 & 1;
        v99 = v22;
        outlined copy of Output?(v17, v16, v19, v18);
        outlined copy of Output?(v17, v16, v19, v18);

        outlined init with copy of String(&v100, &v91);
        v23 = specialized OrderedDictionary.subscript.modify(&v91, v17);
        if (!*(v24 + 8))
        {
          v23(&v91, 0);

          goto LABEL_5;
        }

        v67 = v16;
        v25 = specialized OrderedDictionary.subscript.modify(&v85, v97);
        v27 = v26 + 1;
        v6 = v70;
        v14 = v74;
        if (v26[1])
        {
          v28 = v26;
          v64 = v25;
          v65 = v23;
          v66 = v18;

          outlined init with copy of String(&v100, v101);
          v3 = v76;
          v29 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v27, v95);
          v30 = v29;
          v31 = *v27;
          v32 = *(*v27 + 16);
          v33 = v32 - v29;
          if (v32 < v29)
          {
            goto LABEL_58;
          }

          if (v29 < 0)
          {
            goto LABEL_59;
          }

          v3 = v29;
          if (__OFADD__(v32, v29 - v32))
          {
            goto LABEL_60;
          }

          v63 = v29 - v32;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v27 = v31;
          if (!isUniquelyReferenced_nonNull_native || v3 > *(v31 + 24) >> 1)
          {
            if (*(v31 + 16) <= v3)
            {
              v35 = v32 - v33;
            }

            else
            {
              v35 = *(v31 + 16);
            }

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v35, 1);
            v31 = *v27;
          }

          v3 = (v31 + 32);
          v36 = (v31 + 32 + 56 * v30);
          swift_arrayDestroy();
          v37 = v32 == v30;
          v6 = v70;
          if (!v37)
          {
            memmove(v36, &v3[56 * v32], 56 * (*(v31 + 16) - v32));
            v38 = *(v31 + 16);
            v39 = __OFADD__(v38, v63);
            v40 = v38 - v33;
            if (v39)
            {
              goto LABEL_61;
            }

            *(v31 + 16) = v40;
          }

          v41 = *v28;
          v42 = v28[1];
          if (*v28)
          {
            swift_beginAccess();
            v43 = *(v41 + 24) & 0x3FLL;
            v44 = *(v42 + 16);
            v3 = 0;
            if (v44 <= 0xF)
            {
              v45 = *(v41 + 24) & 0x3FLL;
              if (!v43)
              {
LABEL_43:
                v49 = 0;
                goto LABEL_44;
              }

LABEL_42:
              v49 = _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt2g5Tm(v42, v45, 0, v43);
LABEL_44:

              *v28 = v49;
              v64(&v85, 0);
              v65(&v91, 0);

              v18 = v66;

              v16 = v67;

              v5 = v68;
              goto LABEL_7;
            }
          }

          else
          {
            v44 = *(v42 + 16);
            v3 = 0;
            if (v44 <= 0xF)
            {
              goto LABEL_43;
            }

            v43 = 0;
          }

          v46 = ceil(v44 / 0.75);
          if (v46 == INFINITY)
          {
            goto LABEL_62;
          }

          if (v46 <= -9.22337204e18)
          {
            goto LABEL_63;
          }

          if (v46 >= 9.22337204e18)
          {
            goto LABEL_64;
          }

          if ((v44 + 1) > v46)
          {
            v47 = v44 + 1;
          }

          else
          {
            v47 = v46;
          }

          v48 = 64 - __clz(v47 - 1);
          if (v43 <= v48)
          {
            v45 = v48;
          }

          else
          {
            v45 = v43;
          }

          goto LABEL_42;
        }

        v25(&v85, 0);
        v23(&v91, 0);

        v3 = v76;
LABEL_6:
        v5 = v68;
LABEL_7:
        v11 = v14 + 1;
        outlined consume of Output?(v73, v16, v72, v18);
        v12 += 56;
        v13 += 7;
        if (v69 == v11)
        {
          goto LABEL_45;
        }
      }

      outlined init with copy of String(&v100, &v91);

LABEL_5:
      v6 = v70;
      v14 = v74;
      v3 = v76;
      goto LABEL_6;
    }

LABEL_45:

    v2 = v62;
  }

  result = specialized OrderedDictionary.subscript.getter(v2, *v71, v71[1], v71[2], &v85);
  v51 = v86;
  if (v86)
  {
    v53 = v89;
    v52 = v90;
    v54 = v87;
    v55 = v88;
    v56 = v85;

    outlined consume of UserGraph.Adjacent?(v56, v51, v54, v55, v53, v52);
    v57 = *(v54 + 16);
    v77 = v54;

    v75 = v57;
    if (v57)
    {
      v58 = 0;
      v59 = v54 + 40;
      v60 = v51 + 56;
      while (v58 < *(v51 + 16))
      {
        v91 = *(v60 - 24);
        v92 = *(v60 - 8);
        v93 = *(v60 + 8);
        v94 = *(v60 + 24);
        v101[0] = v92;
        if (v58 >= *(v77 + 16))
        {
          goto LABEL_57;
        }

        ++v58;

        outlined init with copy of String(v101, v78);

        outlined init with copy of String(v101, v78);

        specialized Sequence.forEach(_:)(v61, v71, &v91);

        outlined destroy of String(v101);

        v59 += 16;
        v60 += 56;
        if (v75 == v58)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_56;
    }

LABEL_52:
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph11DebugConfigO5GroupO_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type DebugConfig.Group and conformance DebugConfig.Group();
  result = MEMORY[0x266771950](v2, &type metadata for DebugConfig.Group, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t specialized ShaderGraphNode.dotID.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  MEMORY[0x266771550](110, 0xE100000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v1);

  return 103;
}

char *specialized UserGraph.BreathFirstEdgeIterator.init(_:initial:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = result;
  v4 = *(a2 + 16);
  if (!v4)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_20:

    v16 = *(v36 + 8);
    v17 = *(v16 + 16);
    v18 = 10 * v17;
    if ((v17 * 10) >> 64 != (10 * v17) >> 63)
    {
      goto LABEL_36;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= *(v7 + 3) >> 1)
    {
      v20 = *(v7 + 2);
      if (v20)
      {
LABEL_24:
        v21 = &v7[56 * v20];
        v34 = v16;
        v22 = *(v21 - 3);
        v23 = *(v21 - 2);
        v24 = *(v21 - 1);
        v25 = *v21;
        v26 = *(v21 + 1);
        v27 = v21[16];
        v33 = *(v21 + 3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph5InputVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph5InputVGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_265F1F670;
        *(inited + 32) = v22;
        v16 = v34;
        *(inited + 40) = v23;
        *(inited + 48) = v24;
        *(inited + 56) = v25;
        *(inited + 64) = v26;
        *(inited + 72) = v27;
        *(inited + 80) = v33;

        v29 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph5InputV_Tt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of Input(inited + 32);
LABEL_30:
        v37 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
        Set.reserveCapacity(_:)(v18);
        v31 = *(v36 + 1);
        v32 = *(v36 + 2);
        *a3 = *v36;
        a3[1] = v31;
        a3[2] = v32;
        a3[3] = v7;
        a3[4] = v37;
        a3[5] = v16;
      }
    }

    else
    {
      if (*(v7 + 2) <= v18)
      {
        v30 = v18;
      }

      else
      {
        v30 = *(v7 + 2);
      }

      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v30, 0, v7);
      v20 = *(v7 + 2);
      if (v20)
      {
        goto LABEL_24;
      }
    }

    v29 = MEMORY[0x277D84FA0];
    goto LABEL_30;
  }

  v5 = 0;
  v6 = (a2 + 40);
  v7 = MEMORY[0x277D84F90];
  while (v5 < *(a2 + 16))
  {
    v8 = *v6;
    v9 = *(*v6 + 16);
    v10 = *(v7 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      goto LABEL_32;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v7 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v7);
      v7 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v9)
        {
          goto LABEL_34;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v7 + 2);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_35;
          }

          *(v7 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_33;
    }

LABEL_4:
    ++v5;
    v6 += 6;
    if (v4 == v5)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *a2;
  v6 = (a1 + 80);
  v15 = *(a1 + 16);
  do
  {
    if (*(v6 - 6) != v5)
    {
      goto LABEL_4;
    }

    v7 = *(v6 - 4);
    v8 = *(v6 - 3);
    v18 = *(v6 - 8);
    v16 = *(v6 - 2);
    v17 = *v6;
    v9 = a2[1];
    v10 = *(**(v6 - 5) + 128);

    if ((v10(v9) & 1) == 0)
    {

      v5 = v14;
      v2 = v15;
      goto LABEL_4;
    }

    if (v7 == a2[2] && v8 == a2[3])
    {

      v5 = v14;
      v2 = v15;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v5 = v14;
      v2 = v15;
      if ((v11 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v12 = *(a2 + 40);
    if (v18)
    {
      if (!*(a2 + 40))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v16 != a2[4])
      {
        v12 = 1;
      }

      if (v12)
      {
        goto LABEL_4;
      }
    }

    if (v17 == a2[6])
    {
      return v4;
    }

LABEL_4:
    v6 += 7;
    ++v4;
  }

  while (v2 != v4);
  return 0;
}

uint64_t specialized OrderedSet.append<A>(contentsOf:)(uint64_t result)
{
  v25 = *(result + 16);
  if (v25)
  {
    v1 = 0;
    v24 = result + 32;
    while (1)
    {
      v2 = v24 + 56 * v1;
      v3 = *(v2 + 32);
      v35 = *(v2 + 16);
      v36 = v3;
      v34 = *v2;
      v4 = *(v2 + 48);
      v37 = v4;
      v38[0] = v35;
      v5 = *v27;
      v6 = v27[1];
      v7 = *(v6 + 16);
      v30 = v1;
      v32 = *(&v34 + 1);
      if (*v27)
      {

        outlined init with copy of String(v38, v33);

        specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v34, v6 + 32, v7, (v5 + 16), v5 + 32);
        v9 = v8;
        v7 = v10;

        if ((v9 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      if (v7)
      {
        break;
      }

      outlined init with copy of String(v38, v33);
LABEL_4:
      specialized OrderedSet._appendNew(_:in:)(&v34, v7, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
LABEL_5:
      v1 = v30 + 1;

      result = outlined destroy of String(v38);
      if (v30 + 1 == v25)
      {
        return result;
      }
    }

    v26 = v4;
    v11 = v34;
    v23 = v36;
    v12 = BYTE8(v36);
    v28 = *(&v38[0] + 1);
    v29 = *&v38[0];

    outlined init with copy of String(v38, v33);
    v13 = (v6 + 80);
    while (1)
    {
      if (*(v13 - 6) != v11)
      {
        goto LABEL_12;
      }

      v14 = *(v13 - 4);
      v15 = *(v13 - 3);
      v31 = *(v13 - 2);
      v16 = *(v13 - 8);
      v17 = *v13;
      v18 = *(**(v13 - 5) + 128);

      if ((v18(v32) & 1) == 0)
      {

        goto LABEL_12;
      }

      if (v14 == v29 && v15 == v28)
      {

        if (v16)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_12;
        }

        if (v16)
        {
LABEL_21:
          v21 = v12;
          if (v17 != v26)
          {
            v21 = 0;
          }

          if (v21)
          {
            goto LABEL_5;
          }

          goto LABEL_12;
        }
      }

      v22 = v12 ^ 1;
      if (v31 != v23)
      {
        v22 = 0;
      }

      if (v22 == 1 && v17 == v26)
      {
        goto LABEL_5;
      }

LABEL_12:
      v13 += 7;
      if (!--v7)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (a3 + 16);
    v23 = *(a3 + 16);
    v14 = *(a3 + 32);
    v15 = *(a3 + 48);
    v13 = *(a3 + 24);
    v11 = *(a3 + 8);
    v12 = *a3;
    v10 = *(a3 + 40) & 1;
    v5 = (result + 48);
    do
    {
      v6 = *v5;
      v20[0] = *(v5 - 1);
      v20[1] = v6;
      v20[2] = v5[1];
      v21 = *(v5 + 4);
      v22[0] = v6;
      v7 = *&v20[0];

      outlined init with copy of String(v22, v17);
      v8 = specialized OrderedDictionary.subscript.modify(v17, v7);
      if (*(v9 + 8))
      {
        v19[0] = v12;
        v19[1] = v11;
        v19[2] = v23;
        v19[3] = v13;
        v19[4] = v14;
        v19[5] = v10;
        v19[6] = v15;
        v18 = *v4;

        outlined init with copy of String(v22, v16);

        outlined init with copy of String(&v18, v16);
        specialized OrderedDictionary.subscript.setter(v19, v20);
      }

      v8(v17, 0);

      result = outlined destroy of String(v22);
      v5 = (v5 + 56);
      --v3;
    }

    while (v3);
  }

  return result;
}

void specialized UserGraph.prune(_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (specialized Sequence.allSatisfy(_:)(a2, v4))
  {
    v7 = specialized Sequence.compactMap<A>(_:)(a1, v4);
    specialized Sequence.forEach(_:)(v7, v4);

    specialized UserGraph.removeEdges(connectedTo:)(a3);
    v8 = *(v4 + 64);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v8 + 2) > a3)
        {
          ShaderGraphNode.update(id:)(-7);
          *(v4 + 64) = v8;
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t partial apply for closure #1 in UserGraph.insert<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  v2 = *(a1 + 72);
  v6[0] = *(a1 + 56);
  v6[1] = v2;
  v6[2] = *(a1 + 88);
  v7 = *(a1 + 104);
  return UserGraph.connect(_:to:)(v4, v6);
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Output and conformance Output()
{
  result = lazy protocol witness table cache variable for type Output and conformance Output;
  if (!lazy protocol witness table cache variable for type Output and conformance Output)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Output and conformance Output);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Output and conformance Output;
  if (!lazy protocol witness table cache variable for type Output and conformance Output)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Output and conformance Output);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Edge and conformance Edge()
{
  result = lazy protocol witness table cache variable for type Edge and conformance Edge;
  if (!lazy protocol witness table cache variable for type Edge and conformance Edge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge and conformance Edge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID()
{
  result = lazy protocol witness table cache variable for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID;
  if (!lazy protocol witness table cache variable for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID;
  if (!lazy protocol witness table cache variable for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShaderGraphNode and conformance ShaderGraphNode()
{
  result = lazy protocol witness table cache variable for type ShaderGraphNode and conformance ShaderGraphNode;
  if (!lazy protocol witness table cache variable for type ShaderGraphNode and conformance ShaderGraphNode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphNode and conformance ShaderGraphNode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserGraph.DepthFirstEdgeIterator and conformance UserGraph.DepthFirstEdgeIterator()
{
  result = lazy protocol witness table cache variable for type UserGraph.DepthFirstEdgeIterator and conformance UserGraph.DepthFirstEdgeIterator;
  if (!lazy protocol witness table cache variable for type UserGraph.DepthFirstEdgeIterator and conformance UserGraph.DepthFirstEdgeIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraph.DepthFirstEdgeIterator and conformance UserGraph.DepthFirstEdgeIterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserGraph.BreathFirstEdgeIterator and conformance UserGraph.BreathFirstEdgeIterator()
{
  result = lazy protocol witness table cache variable for type UserGraph.BreathFirstEdgeIterator and conformance UserGraph.BreathFirstEdgeIterator;
  if (!lazy protocol witness table cache variable for type UserGraph.BreathFirstEdgeIterator and conformance UserGraph.BreathFirstEdgeIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraph.BreathFirstEdgeIterator and conformance UserGraph.BreathFirstEdgeIterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserGraph.ID and conformance UserGraph.ID()
{
  result = lazy protocol witness table cache variable for type UserGraph.ID and conformance UserGraph.ID;
  if (!lazy protocol witness table cache variable for type UserGraph.ID and conformance UserGraph.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraph.ID and conformance UserGraph.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserGraph.Adjacent and conformance UserGraph.Adjacent()
{
  result = lazy protocol witness table cache variable for type UserGraph.Adjacent and conformance UserGraph.Adjacent;
  if (!lazy protocol witness table cache variable for type UserGraph.Adjacent and conformance UserGraph.Adjacent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraph.Adjacent and conformance UserGraph.Adjacent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserGraph and conformance UserGraph()
{
  result = lazy protocol witness table cache variable for type UserGraph and conformance UserGraph;
  if (!lazy protocol witness table cache variable for type UserGraph and conformance UserGraph)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraph and conformance UserGraph);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
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

uint64_t getEnumTagSinglePayload for Edge(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for Edge(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UserGraph(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
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

uint64_t storeEnumTagSinglePayload for UserGraph(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for UserGraph.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Input(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Input(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for UserGraph.BreathFirstEdgeIterator(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UserGraph.BreathFirstEdgeIterator(uint64_t result, int a2, int a3)
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

uint64_t sub_265E73B98()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    outlined consume of NestedError(v1);
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_SayAHGTt0g5Tf4g_nTm(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x266771950](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FunctionNodeID and conformance FunctionNodeID()
{
  result = lazy protocol witness table cache variable for type FunctionNodeID and conformance FunctionNodeID;
  if (!lazy protocol witness table cache variable for type FunctionNodeID and conformance FunctionNodeID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionNodeID and conformance FunctionNodeID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionNodeID and conformance FunctionNodeID;
  if (!lazy protocol witness table cache variable for type FunctionNodeID and conformance FunctionNodeID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionNodeID and conformance FunctionNodeID);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_nTm(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266771950](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

unint64_t lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget()
{
  result = lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget;
  if (!lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget)
  {
    type metadata accessor for MaterialXTarget();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget);
  }

  return result;
}

unint64_t specialized OrderedSet.append<A>(contentsOf:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v38 = result;
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = a2;
  while (1)
  {
    if (v5 >= v4)
    {
      goto LABEL_56;
    }

    v7 = *(v38 + 8 * v5);
    v9 = *v3;
    v8 = v3[1];
    v10 = (v8 + 32);
    if (*v3)
    {
      break;
    }

    v37 = *(v8 + 16);
    if (!v37)
    {
LABEL_4:
      v6 = 0;
LABEL_5:
      result = specialized OrderedSet._appendNew(_:in:)(v7, v6, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:));
      goto LABEL_6;
    }

    while (*v10 != v7)
    {
      ++v10;
      if (!--v37)
      {
        goto LABEL_4;
      }
    }

LABEL_6:
    if (++v5 == v4)
    {
      return result;
    }
  }

  v11 = *(v9 + 16);
  v12 = MEMORY[0x266772750](v11, *(v38 + 8 * v5));
  v13 = (1 << v11) - 1;
  if (__OFSUB__(1 << v11, 1))
  {
    goto LABEL_57;
  }

  v6 = v13 & v12;
  v14 = _HashTable.UnsafeHandle._startIterator(bucket:)(v13 & v12, (v9 + 16), v9 + 32);
  if (!v14)
  {
    goto LABEL_5;
  }

  v17 = *(v9 + 24) >> 6;
  v18 = v17 + (v14 ^ v13);
  if (v18 >= v13)
  {
    v19 = (1 << v11) - 1;
  }

  else
  {
    v19 = 0;
  }

  result = 32;
  if (v10[v18 - v19] == v7)
  {
    goto LABEL_6;
  }

  v20 = 0;
  v21 = v11 & 0x3F;
  v22 = __OFADD__(v21 << v21, 64);
  v23 = (v21 << v21) + 126;
  if ((v21 << v21) + 64 >= 1)
  {
    v23 = (v21 << v21) + 63;
  }

  v24 = v23 >> 6;
  while (1)
  {
    if (++v6 == 1 << v11)
    {
      if (v20)
      {
        goto LABEL_58;
      }

      v6 = 0;
      v20 = 1;
    }

    if (v16 >= v21)
    {
      break;
    }

    v25 = (v6 * v21) >> 6;
    if (v16)
    {
      if (v22)
      {
        goto LABEL_55;
      }

      if (v25 + 1 == v24)
      {
        v25 = 0;
      }

      else
      {
        ++v25;
      }
    }

    v26 = v21 - v16;
    if (__OFSUB__(v21, v16))
    {
      goto LABEL_53;
    }

    if (v25 == 2 && v21 == 5)
    {
      v28 = 32;
    }

    else
    {
      v28 = 64;
    }

    v29 = __OFSUB__(v28, v26);
    v30 = v28 - v26;
    if (v29)
    {
      goto LABEL_54;
    }

    v31 = *(v9 + 32 + 8 * v25);
    v32 = (v31 << v16) | v15;
    v33 = v31 >> v26;
    v16 = v30;
    v34 = v32 & v13;
    if ((v32 & v13) == 0)
    {
      goto LABEL_5;
    }

LABEL_42:
    v35 = (v34 ^ v13) + v17;
    if (v35 >= v13)
    {
      v36 = (1 << v11) - 1;
    }

    else
    {
      v36 = 0;
    }

    v15 = v33;
    if (v10[v35 - v36] == v7)
    {
      goto LABEL_6;
    }
  }

  v29 = __OFSUB__(v16, v21);
  v16 -= v21;
  if (!v29)
  {
    v33 = v15 >> v21;
    v34 = v15 & v13;
    if ((v15 & v13) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized ContiguousArray.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    a3();
  }

  return a4(v8, a2, 0);
}

unint64_t specialized ContiguousArray.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 24) >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);

  return specialized ContiguousArray._endMutation()();
}

uint64_t outlined init with take of WeakBox<SGEdge>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMd, &_s11ShaderGraph7WeakBoxVyAA6SGEdgeCGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of OrderedSet<Input>?(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t outlined copy of OrderedSet<Input>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

BOOL partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1);
}

{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v8[2] = *(v2 + 32);
  v9 = *(v2 + 48);
  return specialized closure #1 in Sequence<>.contains(_:)(v6, v8);
}

uint64_t outlined copy of UserGraph.Adjacent?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id SGMaterialConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGMaterialConfiguration.init()(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___SGMaterialConfiguration_customGeometryProperties] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___SGMaterialConfiguration_functionConstantInputs] = v2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SGMaterialConfiguration();
  return objc_msgSendSuper2(&v4, sel_init);
}

Class @objc SGMaterialConfiguration.customGeometryProperties.getter(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void))
{
  swift_beginAccess();
  a4(0);

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t @objc SGMaterialConfiguration.customGeometryProperties.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  (a4)(0, a2);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *a5;
  swift_beginAccess();
  *(a1 + v8) = v7;
}

id one-time initialization function for default()
{
  result = [objc_allocWithZone(type metadata accessor for SGMaterialConfiguration()) init];
  static SGMaterialConfiguration.default = result;
  return result;
}

uint64_t *SGMaterialConfiguration.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  return &static SGMaterialConfiguration.default;
}

id static SGMaterialConfiguration.default.getter()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = static SGMaterialConfiguration.default;

  return v1;
}

Swift::Int SGMaterialConfiguration.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1 & 1);
  return Hasher._finalize()();
}

unint64_t SGMaterialConfiguration.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000018;
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SGMaterialConfiguration.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGMaterialConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, ShaderGraph::SGMaterialConfiguration::CodingKeys_optional *a2@<X8>, uint64_t a3@<X1>)
{
  result = specialized SGMaterialConfiguration.CodingKeys.init(stringValue:)(a1, a3);
  a2->value = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGMaterialConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGMaterialConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SGMaterialConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph23SGMaterialConfigurationC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph23SGMaterialConfigurationC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys();
  v9 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = MEMORY[0x277D85000];
  v14 = (*((*MEMORY[0x277D85000] & *v3) + 0x60))(v9);
  HIBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph28SGGeometryPropertyDefinitionCGMd, &_sSay11ShaderGraph28SGGeometryPropertyDefinitionCGMR);
  lazy protocol witness table accessor for type [SGGeometryPropertyDefinition] and conformance <A> [A](&lazy protocol witness table cache variable for type [SGGeometryPropertyDefinition] and conformance <A> [A], &lazy protocol witness table cache variable for type SGGeometryPropertyDefinition and conformance SGGeometryPropertyDefinition, &protocol conformance descriptor for SGGeometryPropertyDefinition, MEMORY[0x277D83948]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v14 = (*((*v10 & *v3) + 0x78))(v11);
    HIBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph7SGInputCGMd, &_sSay11ShaderGraph7SGInputCGMR);
    lazy protocol witness table accessor for type [SGInput] and conformance <A> [A](&lazy protocol witness table cache variable for type [SGInput] and conformance <A> [A], &lazy protocol witness table cache variable for type SGInput and conformance SGInput, &protocol conformance descriptor for SGInput, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

char *SGMaterialConfiguration.init(from:)(void *a1)
{
  v3 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph23SGMaterialConfigurationC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph23SGMaterialConfigurationC10CodingKeysOGMR);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v17 - v6;
  v8 = OBJC_IVAR___SGMaterialConfiguration_customGeometryProperties;
  v9 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___SGMaterialConfiguration_customGeometryProperties] = MEMORY[0x277D84F90];
  v18 = OBJC_IVAR___SGMaterialConfiguration_functionConstantInputs;
  *&v1[OBJC_IVAR___SGMaterialConfiguration_functionConstantInputs] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    type metadata accessor for SGMaterialConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph28SGGeometryPropertyDefinitionCGMd, &_sSay11ShaderGraph28SGGeometryPropertyDefinitionCGMR);
    v21 = 0;
    lazy protocol witness table accessor for type [SGGeometryPropertyDefinition] and conformance <A> [A](&lazy protocol witness table cache variable for type [SGGeometryPropertyDefinition] and conformance <A> [A], &lazy protocol witness table cache variable for type SGGeometryPropertyDefinition and conformance SGGeometryPropertyDefinition, &protocol conformance descriptor for SGGeometryPropertyDefinition, MEMORY[0x277D83978]);
    v11 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v20;
    swift_beginAccess();
    *&v3[v8] = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph7SGInputCGMd, &_sSay11ShaderGraph7SGInputCGMR);
    v22 = 1;
    lazy protocol witness table accessor for type [SGInput] and conformance <A> [A](&lazy protocol witness table cache variable for type [SGInput] and conformance <A> [A], &lazy protocol witness table cache variable for type SGInput and conformance SGInput, &protocol conformance descriptor for SGInput, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v20)
    {
      v14 = v20;
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    (*(v10 + 8))(v7, v11);
    v15 = v18;
    swift_beginAccess();
    *&v3[v15] = v14;

    v16 = type metadata accessor for SGMaterialConfiguration();
    v19.receiver = v3;
    v19.super_class = v16;
    v3 = objc_msgSendSuper2(&v19, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t SGMaterialConfiguration.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v13);
  if (!v14)
  {
    outlined destroy of Any?(v13);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v10 = 0;
    return v10 & 1;
  }

  if (v12 == v1)
  {

    v10 = 1;
    return v10 & 1;
  }

  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x60))();
  v5 = (*((*v3 & *v12) + 0x60))();
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph28SGGeometryPropertyDefinitionC_Tt1g5(v4, v5);

  if ((v6 & 1) == 0)
  {

    goto LABEL_9;
  }

  v8 = (*((*v3 & *v1) + 0x78))(v7);
  v9 = (*((*v3 & *v12) + 0x78))();
  v10 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph7SGInputC_Tt1g5(v8, v9);

  return v10 & 1;
}

id SGMaterialConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SGMaterialConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SGMaterialConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t specialized SGMaterialConfiguration.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000265F32370 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000265F32350 == a2)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGMaterialConfiguration.CodingKeys and conformance SGMaterialConfiguration.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SGGeometryPropertyDefinition] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph28SGGeometryPropertyDefinitionCGMd, &_sSay11ShaderGraph28SGGeometryPropertyDefinitionCGMR);
    lazy protocol witness table accessor for type SGGeometryPropertyDefinition and conformance SGGeometryPropertyDefinition(a2, type metadata accessor for SGGeometryPropertyDefinition, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SGInput] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph7SGInputCGMd, &_sSay11ShaderGraph7SGInputCGMR);
    lazy protocol witness table accessor for type SGGeometryPropertyDefinition and conformance SGGeometryPropertyDefinition(a2, type metadata accessor for SGInput, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SGGeometryPropertyDefinition and conformance SGGeometryPropertyDefinition(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265E75A68@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_265E75AC4(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x68);

  return v2(v3);
}

uint64_t sub_265E75B28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_265E75B84(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x80);

  return v2(v3);
}

uint64_t OrderedDictionary<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a8;
  v40 = *(a6 - 8);
  v41 = a7;
  v36 = a9;
  MEMORY[0x28223BE20](a1);
  v32 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v17 - 8);
  MEMORY[0x28223BE20](v18);
  v48 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = type metadata accessor for Optional();
  v43 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v45 = &v31 - v23;
  v24 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  dispatch thunk of Encoder.unkeyedContainer()();
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v52 = 0;
  v55 = a5;
  v25 = type metadata accessor for OrderedDictionary.Iterator(0, a5, a6, v44);
  v43 += 4;
  v44 = v25;
  v42 = TupleTypeMetadata2 - 8;
  v37 = (v40 + 4);
  v38 = (v35 + 32);
  v39 = v40 + 1;
  v40 = (v35 + 8);
  v35 = a2;
  v26 = v32;

  v34 = a3;

  v33 = a4;

  while (1)
  {
    v27 = v46;
    OrderedDictionary.Iterator.next()(v44, v46);
    v28 = v45;
    (*v43)(v45, v27, v47);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v28, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v29 = *(TupleTypeMetadata2 + 48);
    (*v38)(v48, v28, v55);
    (*v37)(v26, &v28[v29], a6);
    __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    if (v9)
    {
      (*v39)(v26, a6);
      (*v40)(v48, v55);
      break;
    }

    __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    (*v39)(v26, a6);
    (*v40)(v48, v55);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v53);
}

char *OrderedDictionary<>.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v55 = a5;
  v61 = a4;
  v51 = type metadata accessor for DecodingError.Context();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v62 = a2;
  v52 = *(a2 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v59;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v16;
  }

  v57 = v13;
  v58 = v16;
  v48 = v10;
  v59 = v19;
  v49 = a1;
  v21 = v55;
  v16 = OrderedSet.init()(v62);
  v23 = v22;
  v24 = static Array._allocateUninitialized(_:)();
  v25 = MEMORY[0x266772110](v24, a3);
  v68 = v16;
  v69 = v23;
  v70 = v25;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
  {
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    return v16;
  }

  v53 = (v56 + 1);
  v54 = (v56 + 2);
  v56 = (v52 + 8);
  v27 = v59;
  v28 = v62;
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    OrderedSet._find(_:)(v27, v68, v69, v28, v21);
    v30 = v29;
    v32 = v31;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    if ((v30 & 1) == 0)
    {
      break;
    }

    if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
    {
      v44 = type metadata accessor for DecodingError();
      swift_allocError();
      v46 = v45;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      dispatch thunk of UnkeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84168], v44);
      swift_willThrow();
      (*v56)(v59, v62);
      goto LABEL_14;
    }

    __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    v16 = v58;
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v27 = v59;
    v28 = v62;
    v34 = type metadata accessor for OrderedSet(0, v62, v21, v33);
    OrderedSet._appendNew(_:in:)(v27, v32, v34);
    (*v54)(v57, v16, a3);
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
    (*v53)(v16, a3);
    (*v56)(v27, v28);
    __swift_project_boxed_opaque_existential_1(v66, v67);
    if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
    {
      v16 = v68;
      goto LABEL_4;
    }
  }

  v35 = v56;
  dispatch thunk of UnkeyedDecodingContainer.codingPath.getter();
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v64 = 0xD000000000000018;
  v65 = 0x8000000265F323E0;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  result = dispatch thunk of UnkeyedDecodingContainer.currentIndex.getter();
  v36 = v51;
  v37 = v50;
  v38 = v48;
  if (!__OFSUB__(result, 1))
  {
    v63 = result - 1;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v39);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v40 = type metadata accessor for DecodingError();
    swift_allocError();
    v42 = v41;
    (*(v37 + 16))(v41, v38, v36);
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84168], v40);
    swift_willThrow();
    v43 = *(v37 + 8);
    v16 = (v37 + 8);
    v43(v38, v36);
    (*v35)(v59, v62);
LABEL_14:
    v47 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);

    return v16;
  }

  __break(1u);
  return result;
}

char *protocol witness for Decodable.init(from:) in conformance <> OrderedDictionary<A, B>@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = OrderedDictionary<>.init(from:)(a1, a2[2], a2[3], *(a3 - 8), a2[4], *(a3 - 16));
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

Swift::Void __swiftcall OrderedDictionary.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  type metadata accessor for OrderedSet(0, *(v2 + 16), *(v2 + 32), v3);
  OrderedSet.swapAt(_:_:)(a1, a2);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  MutableCollection.swapAt(_:_:)();
}

void OrderedDictionary.partition(by:)(uint64_t (*a1)(char *, char *), uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = a3[3];
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v9 = *(v3 + 16);
  v10 = *(v9 + 16);
  v11 = v9 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
  v13[0] = v11;
  v13[1] = v10;
  closure #1 in OrderedDictionary.partition(by:)(v13, a1, a2, a3[2], v8, a3[4], &v12, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v13, v11, v10, v4 + 16, v8);
}

uint64_t OrderedDictionary.sort(by:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3[1];
  v6 = v3[2];
  v14[13] = *v3;
  v14[14] = v5;
  v14[15] = v6;
  v7 = a3[3];
  v15 = a3[2];
  v14[8] = v15;
  v14[9] = v7;
  v8 = a3[4];
  v14[10] = v8;
  v14[11] = a1;
  v14[12] = a2;

  swift_getWitnessTable();
  v9 = Sequence.sorted(by:)();

  if (!v4)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v12 = MEMORY[0x266771860](v9, TupleTypeMetadata2);
    result = ContiguousArray.count.getter();
    if (v12 == result)
    {
      MEMORY[0x28223BE20](result);
      v14[2] = v15;
      v14[3] = v7;
      v14[4] = v8;
      v14[5] = v3;
      _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in OrderedDictionary.sort(by:), v14, v9, TupleTypeMetadata2, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t OrderedDictionary<>.sort()(uint64_t a1, uint64_t a2)
{
  v4[1] = *(a1 + 16);
  v2 = *(a1 + 32);
  v5 = a2;
  v6 = v2;
  return OrderedDictionary.sort(by:)(partial apply for closure #1 in OrderedDictionary<>.sort(), v4, a1);
}

uint64_t OrderedDictionary.shuffle<A>(using:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = a2[3];
  result = ContiguousArray.count.getter();
  if (result >= 2)
  {
    v9 = a2[2];
    v10 = a2[4];
    v29 = v4;
    v11 = OrderedSet.elements.getter(*v4, v4[1], v9);
    v32 = v6;
    v33 = v11;

    swift_getTupleTypeMetadata2();
    v12 = static Array._allocateUninitialized(_:)();
    specialized OrderedDictionary.init(dictionaryLiteral:)(v12, v9, v7, v10);

    v13 = v29;

    v14 = MEMORY[0x266771860](v11, v9);

    if (v14 >= 2)
    {
      lazy protocol witness table accessor for type Int and conformance Int();
      v15 = 0;
      while (1)
      {
        v30[1] = v14;
        result = static FixedWidthInteger.random<A>(in:using:)();
        v30[0] = v15;
        if (__OFADD__(v15, v31))
        {
          break;
        }

        type metadata accessor for Array();
        swift_getWitnessTable();
        MutableCollection.swapAt(_:_:)();
        v30[0] = v15;
        v31 += v15;
        type metadata accessor for ContiguousArray();
        swift_getWitnessTable();
        result = MutableCollection.swapAt(_:_:)();
        if (__OFADD__(v15, 1))
        {
          goto LABEL_14;
        }

        --v14;
        ++v15;
        if ((v14 + 1) <= 2)
        {
          v6 = v32;
          v13 = v29;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_8:
    type metadata accessor for Array();

    swift_getWitnessTable();
    v16 = Array.init<A>(_:)();
    v30[0] = v16;
    v17 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
    v18 = type metadata accessor for ContiguousArray();
    WitnessTable = swift_getWitnessTable();
    v20 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(v30, 0, 1, v17, v18, WitnessTable, v10);
    v21 = ContiguousArray.count.getter();
    v22 = 0;
    if (v21 >= 16)
    {

      v22 = v20;
    }

    v23 = OrderedSet.init(_uniqueElements:_:)(v16, v22);
    v25 = v24;

    v30[0] = v6;
    type metadata accessor for ContiguousArray();

    swift_getWitnessTable();
    v26 = Array.init<A>(_:)();
    v27 = ContiguousArray.count.getter();
    v28 = ContiguousArray.count.getter();

    if (v27 != v28)
    {
LABEL_15:
      __break(1u);
      return result;
    }

    *v13 = v23;
    v13[1] = v25;
    v13[2] = v26;
  }

  return result;
}

Swift::Void __swiftcall OrderedDictionary.reverse()()
{
  type metadata accessor for OrderedSet(0, *(v0 + 16), *(v0 + 32), v1);
  OrderedSet.reverse()();
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  MutableCollection<>.reverse()();
}

uint64_t closure #1 in OrderedDictionary.partition(by:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *, char *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, uint64_t *a8@<X8>)
{
  v14 = *a1;
  v15 = a1[1];
  v16 = type metadata accessor for OrderedSet(0, a4, a6, a3);
  result = OrderedSet._partition<A>(values:by:)(v14, v15, a2, a3, v16, a5);
  if (v8)
  {
    *a7 = v8;
  }

  else
  {
    *a8 = result;
  }

  return result;
}

uint64_t closure #1 in OrderedDictionary.sort(by:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v25 = a1;
  *(&v25 + 1) = a2;
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for UnsafeBufferPointer();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2667716D0](&v30, v9, WitnessTable);
  v29 = v30;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  type metadata accessor for LazySequence();
  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  *(&v27 + 1) = *(&v31 + 1);
  v28 = v32;
  type metadata accessor for LazyMapSequence();

  swift_getWitnessTable();
  v12 = Array.init<A>(_:)();
  *&v27 = v12;
  v13 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v14 = type metadata accessor for ContiguousArray();
  v15 = swift_getWitnessTable();
  v16 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(&v27, 0, 1, v13, v14, v15, a6);
  v17 = ContiguousArray.count.getter();
  v18 = 0;
  if (v17 >= 16)
  {

    v18 = v16;
  }

  v19 = OrderedSet.init(_uniqueElements:_:)(v12, v18);
  v21 = v20;

  *a3 = v19;
  a3[1] = v21;

  v27 = v25;
  MEMORY[0x2667716D0](&v30, v9, WitnessTable);
  v29 = v30;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  LazySequenceProtocol.map<A>(_:)();

  v27 = v31;
  v28 = v32;
  type metadata accessor for LazyMapSequence();
  swift_getWitnessTable();
  a3[2] = Array.init<A>(_:)();
}

uint64_t closure #1 in closure #1 in OrderedDictionary.sort(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1, TupleTypeMetadata2, v9);
  v13 = *(TupleTypeMetadata2 + 48);
  (*(*(a2 - 8) + 32))(a4, v11, a2);
  return (*(*(a3 - 8) + 8))(&v11[v13], a3);
}

uint64_t closure #2 in closure #1 in OrderedDictionary.sort(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, TupleTypeMetadata2, v9);
  (*(*(a3 - 8) + 32))(a4, &v11[*(TupleTypeMetadata2 + 48)], a3);
  return (*(*(a2 - 8) + 8))(v11, a2);
}

uint64_t _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v14, v15, v16, v17, v18, v19, v20, v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a6);
  }

  return result;
}

uint64_t closure #1 in OrderedDictionary<>.sort()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a4;
  v26 = a7;
  v22 = a2;
  v23 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  v17 = *(*(a5 - 8) + 16);
  v17(&v21 - v15, a1, a5, v14);
  v18 = *(*(a6 - 8) + 16);
  v18(&v16[*(TupleTypeMetadata2 + 48)], v22, a6);
  (v17)(v12, v23, a5);
  v18(&v12[*(TupleTypeMetadata2 + 48)], v25, a6);
  LOBYTE(v18) = dispatch thunk of static Comparable.< infix(_:_:)();
  v19 = *(v24 + 8);
  v19(v12, TupleTypeMetadata2);
  v19(v16, TupleTypeMetadata2);
  return v18 & 1;
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @in_guaranteed A, @in_guaranteed B) -> (@unowned Bool, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, a1 + *(TupleTypeMetadata2 + 48), a2, a2 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(unint64_t, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v29 = a1;
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v25 = v30;
    result = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v29, a2, a3, a4, a5, a6, v27, v18);
    v15 = v18;
    if (v25)
    {
      return (*(v13 + 32))(v28, v15, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v19 = ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v19 = a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      v22 = __CocoaSet.count.getter();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v21 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v21 = a3;
      }

      v22 = *(v21 + 16);
    }

    v23 = v30;
    result = v29(v19, v22, v15);
    if (v23)
    {
      return (*(v13 + 32))(v28, v15, a6);
    }
  }

  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(unint64_t, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedObject = _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(v14, v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = AssociatedObject[2];

  v19 = v23;
  result = a1(AssociatedObject + v17, v18, v13);
  if (v19)
  {
    return (*(v11 + 32))(v22, v13, a6);
  }

  return result;
}

void *_ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      type metadata accessor for _ArrayBuffer();
      swift_getWitnessTable();
      v4 = _copyCollectionToContiguousArray<A>(_:)();

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t (*specialized _ArrayProtocol.filter(_:)(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      outlined init with copy of MetalFunctionNode(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        outlined init with take of MetalFunctionNode(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = outlined init with take of MetalFunctionNode(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

void createDotText(representing:)(__int128 *a1)
{
  if (UserGraph.isEmpty.getter())
  {
    lazy protocol witness table accessor for type DotError and conformance DotError();
    v3 = swift_allocError();
    swift_willThrow();
LABEL_18:
    type metadata accessor for SGError();
    v44 = v3;
    SGError.__allocating_init(_:)(v3);
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph04UserE0VGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph04UserE0VGMR);
    v4 = swift_allocObject();
    v5 = a1[8];
    v6 = a1[9];
    v7 = a1[6];
    v4[9] = a1[7];
    v4[10] = v5;
    v4[11] = v6;
    *(v4 + 185) = *(a1 + 153);
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[2];
    v4[5] = a1[3];
    v4[6] = v8;
    v4[7] = v9;
    v4[8] = v7;
    v11 = *a1;
    v12 = a1[1];
    v4[1] = xmmword_265F1F670;
    v4[2] = v11;
    v4[3] = v12;
    v4[4] = v10;
    outlined init with copy of UserGraph(a1, &v62);
    v13 = UserGraph.subgraphs()();
    v62 = v4;
    specialized Array.append<A>(contentsOf:)(v13);
    v14 = v62;
    v15 = *(v62 + 2);
    if (v15)
    {
      v73 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
      v16 = *(v14 + 2);
      if (v16 >= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = *(v14 + 2);
      }

      v48 = v17;
      if (v16)
      {
        v18 = v1;
        v19 = 0;
        v76 = v15 - 1;
        v20 = v73;
        v21 = 2;
        while (v19 < *(v14 + 2))
        {
          v22 = v14;
          v23 = v14[v21];
          v24 = v14[v21 + 2];
          v60[1] = v14[v21 + 1];
          v60[2] = v24;
          v60[0] = v23;
          v25 = v14[v21 + 3];
          v26 = v14[v21 + 4];
          v27 = v14[v21 + 6];
          v60[5] = v14[v21 + 5];
          v60[6] = v27;
          v60[3] = v25;
          v60[4] = v26;
          v28 = v14[v21 + 7];
          v29 = v14[v21 + 8];
          v30 = v14[v21 + 9];
          *(v61 + 9) = *(&v14[v21 + 9] + 9);
          v60[8] = v29;
          v61[0] = v30;
          v60[7] = v28;
          v31 = v14[v21 + 9];
          v58 = v14[v21 + 8];
          v59[0] = v31;
          *(v59 + 9) = *(&v14[v21 + 9] + 9);
          v32 = v14[v21 + 5];
          v54 = v14[v21 + 4];
          v55 = v32;
          v33 = v14[v21 + 7];
          v56 = v14[v21 + 6];
          v57 = v33;
          v34 = v14[v21 + 1];
          v50 = v14[v21];
          v51 = v34;
          v35 = v14[v21 + 3];
          v52 = v14[v21 + 2];
          v53 = v35;
          v66 = v35;
          v65 = v52;
          v64 = v34;
          v63 = v50;
          v69 = v56;
          v68 = v55;
          v67 = v54;
          *(v72 + 9) = *(v59 + 9);
          v72[0] = v59[0];
          v71 = v58;
          v70 = v57;
          v74[8] = v58;
          v75[0] = v59[0];
          *(v75 + 9) = *(v59 + 9);
          v74[4] = v54;
          v74[5] = v55;
          v74[6] = v56;
          v74[7] = v57;
          v62 = v19;
          v74[0] = v50;
          v74[1] = v34;
          v74[2] = v52;
          v74[3] = v35;
          outlined init with copy of UserGraph(v60, v49);
          v36 = graphDotText(representing:index:)(v74, v19);
          if (v18)
          {

            outlined destroy of [Input](&v62, &_sSi6offset_11ShaderGraph04UserC0V7elementtMd, &_sSi6offset_11ShaderGraph04UserC0V7elementtMR);

            v3 = v18;
            goto LABEL_18;
          }

          v38 = v36;
          v39 = v37;
          outlined destroy of [Input](&v62, &_sSi6offset_11ShaderGraph04UserC0V7elementtMd, &_sSi6offset_11ShaderGraph04UserC0V7elementtMR);
          v73 = v20;
          v41 = *(v20 + 16);
          v40 = *(v20 + 24);
          v42 = v20;
          if (v41 >= v40 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
            v18 = 0;
            v42 = v73;
          }

          *(v42 + 16) = v41 + 1;
          v43 = v42 + 16 * v41;
          *(v43 + 32) = v38;
          *(v43 + 40) = v39;
          v20 = v42;
          if (v76 == v19)
          {

            goto LABEL_20;
          }

          ++v19;
          v21 += 11;
          v14 = v22;
          if (v48 == v19)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        __break(1u);
      }

      __break(1u);
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
LABEL_20:
      v62 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v45 = BidirectionalCollection<>.joined(separator:)();
      v47 = v46;

      v62 = 0;
      *&v63 = 0xE000000000000000;
      _StringGuts.grow(_:)(136);
      MEMORY[0x266771550](0xD000000000000083, 0x8000000265F2FD30);
      MEMORY[0x266771550](v45, v47);

      MEMORY[0x266771550](8194570, 0xE300000000000000);
    }
  }
}

uint64_t specialized Graph.nodes.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result - 56;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 88 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 15);
    ++v1;
    v5 = (v5 + 88);
    if (v7)
    {
      v11 = v5[1];
      v12 = *v5;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        v4 = result;
      }

      v9 = v4[2];
      v8 = v4[3];
      if (v9 >= v8 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v4);
        v4 = result;
      }

      v4[2] = v9 + 1;
      v10 = &v4[5 * v9];
      *(v10 + 2) = v12;
      *(v10 + 3) = v11;
      v10[8] = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = (result + 16);
  v5 = *(result + 16);
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    goto LABEL_31;
  }

  v3 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v9 = *(v6 + 24) >> 1, v9 < v8))
  {
    if (v7 <= v8)
    {
      v10 = v7 + v5;
    }

    else
    {
      v10 = v7;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v6);
    v6 = result;
    v9 = *(result + 24) >> 1;
  }

  v11 = *(v6 + 16);
  a2 = *v4;
  v12 = v9 - v11;
  if (v9 == v11)
  {
    if (!v5)
    {
      if (!v12)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    goto LABEL_30;
  }

  if (v12 < 1)
  {
    goto LABEL_28;
  }

  if (!a2)
  {
    goto LABEL_29;
  }

  v13 = (v6 + 16 * v11 + 32);
  v14 = ~v11 + v9;
  v15 = *v4;
  while (1)
  {
    if (v15 > *v4)
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v16 = 0;
      if (a2 >= v5)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }

    v16 = v15 - 1;
    *v13 = *&v4[2 * v15];
    if (!v14)
    {
      break;
    }

    ++v13;
    --v14;
    --v15;
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  a2 = v12;
LABEL_17:
  if (a2 < v5)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_18:
  if (a2 > 0)
  {
    v17 = *(v6 + 16);
    v18 = __OFADD__(v17, a2);
    v19 = v17 + a2;
    if (v18)
    {
      goto LABEL_47;
    }

    *(v6 + 16) = v19;
  }

  v20 = a2;
  a2 = v16;
  if (v20 != v12)
  {
    goto LABEL_25;
  }

LABEL_32:
  if (!a2)
  {
LABEL_25:

LABEL_26:
    *v2 = v6;
    return result;
  }

  v21 = a2 - 1;
  if (v21 >= *v4)
  {
    goto LABEL_48;
  }

  v22 = *(v6 + 16);
  v23 = *(v3 + 16 * v21 + 32);
  v24 = v3 + 16;
LABEL_36:
  while (2)
  {
    v25 = *(v6 + 24);
    v26 = v25 >> 1;
    if ((v25 >> 1) >= v22 + 1)
    {
      v27 = v22 - v26;
      if (v22 < v26)
      {
        break;
      }

      goto LABEL_35;
    }

    v30 = v6;
    v31 = v21;
    v32 = v24;
    v33 = v23;
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v22 + 1, 1, v30);
    v23 = v33;
    v24 = v32;
    v21 = v31;
    v6 = result;
    v26 = *(result + 24) >> 1;
    v27 = v22 - v26;
    if (v22 >= v26)
    {
LABEL_35:
      *(v6 + 16) = v22;
      continue;
    }

    break;
  }

  v28 = 0;
  v29 = 16 * v22 + 32;
  while (1)
  {
    *(v6 + v29) = v23;
    if (!(v21 + v28))
    {

      *(v6 + 16) = v22 - v28 + 1;
      goto LABEL_26;
    }

    if (v21 + v28 - 1 >= *v4)
    {
      break;
    }

    v23 = *(v24 + 16 * v21 + 16 * v28--);
    v29 += 16;
    if (v27 == v28)
    {
      v21 += v28;
      v22 = v26;
      *(v6 + 16) = v26;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
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
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = (v8 - v10);
  result = specialized Sequence._copyContents(initializing:)(&v41, &v3[56 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v12 = *(v3 + 2);
    v13 = __OFADD__(v12, result);
    v14 = &result[v12];
    if (v13)
    {
      __break(1u);
LABEL_31:
      v1 = v34;
      *(v3 + 2) = v35 - v5 + 1;
      goto LABEL_13;
    }

    *(v3 + 2) = v14;
  }

  if (result != v11)
  {
LABEL_13:

    *v1 = v3;
    return result;
  }

LABEL_16:
  if (!v42)
  {
    goto LABEL_13;
  }

  v15 = v42 - 1;
  if (__OFSUB__(v42, 1))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v34 = v1;
  if (v15 < *(v41 + 16))
  {
    v16 = *(v3 + 2);
    v39 = v42 - 1;
    v17 = v41 + 56 * v15;
    v19 = *(v17 + 32);
    v18 = *(v17 + 40);
    v21 = *(v17 + 48);
    v20 = *(v17 + 56);
    v22 = *(v17 + 64);
    v23 = *(v17 + 72);
    v24 = *(v17 + 80);
    v37 = v41;

    v25 = v19;
    v26 = v37;
    while (1)
    {
LABEL_22:
      v27 = *(v3 + 3);
      v28 = v27 >> 1;
      if ((v27 >> 1) < v16 + 1)
      {
        v32 = v3;
        v33 = v25;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v16 + 1, 1, v32);
        v25 = v33;
        v26 = v37;
        v3 = result;
        v28 = *(result + 3) >> 1;
      }

      v38 = v16 - v28;
      if (v16 < v28)
      {
        break;
      }

      *(v3 + 2) = v16;
    }

    v35 = v16;
    v36 = v28;
    v5 = 0;
    v29 = (v26 + 56 * v39);
    v30 = 56 * v16;
    while (1)
    {
      v31 = &v3[v30];
      *(v31 + 4) = v25;
      *(v31 + 5) = v18;
      *(v31 + 6) = v21;
      *(v31 + 7) = v20;
      *(v31 + 8) = v22;
      v31[72] = v23 & 1;
      *(v31 + 10) = v24;
      if (!(v39 + v5))
      {
        goto LABEL_31;
      }

      if (v39 + v5 - 1 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v18 = *(v29 - 2);
      v40 = *(v29 - 3);
      v21 = *(v29 - 1);
      v20 = *v29;
      v22 = v29[1];
      v23 = *(v29 + 16);
      v24 = v29[3];

      v25 = v40;
      v26 = v37;
      --v5;
      v29 -= 7;
      v30 += 56;
      if (v38 == v5)
      {
        v39 += v5;
        v16 = v36;
        *(v3 + 2) = v36;
        goto LABEL_22;
      }
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v3 = *(result + 2);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = (v9 - v11);
  result = specialized Sequence._copyContents(initializing:)(&v29, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v13 = *(v4 + 2);
    v14 = __OFADD__(v13, result);
    v15 = &result[v13];
    if (v14)
    {
      __break(1u);
      goto LABEL_32;
    }

    *(v4 + 2) = v15;
  }

  if (result != v12)
  {
LABEL_13:

    *v1 = v4;
    return result;
  }

LABEL_16:
  if (!v30)
  {
    goto LABEL_13;
  }

  v16 = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
LABEL_34:
    __break(1u);
  }

  else if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = v29;
    if (v16 < *(v29 + 16))
    {
      v18 = *(v4 + 2);
      v19 = v29 + 16 * v16;
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);

      while (1)
      {
LABEL_22:
        v22 = *(v4 + 3);
        v23 = v22 >> 1;
        if ((v22 >> 1) < v18 + 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v18 + 1, 1, v4);
          v4 = result;
          v23 = *(result + 3) >> 1;
          v24 = v18 - v23;
          if (v18 < v23)
          {
LABEL_24:
            v28 = v23;
            v2 = 0;
            v25 = (v17 + 24 + 16 * v16);
            v27 = v18;
            v26 = &v4[16 * v18 + 40];
            while (1)
            {
              *(v26 - 1) = v21;
              *v26 = v20;
              if (!(v16 + v2))
              {
                break;
              }

              if ((v16 + v2 - 1) >= *(v17 + 16))
              {
                __break(1u);
                goto LABEL_34;
              }

              v21 = *(v25 - 1);
              v20 = *v25;

              --v2;
              v25 -= 2;
              v26 += 16;
              if (v24 == v2)
              {
                v16 += v2;
                v18 = v28;
                *(v4 + 2) = v28;
                goto LABEL_22;
              }
            }

LABEL_32:
            *(v4 + 2) = v27 - v2 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v24 = v18 - v23;
          if (v18 < v23)
          {
            goto LABEL_24;
          }
        }

        *(v4 + 2) = v18;
      }
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7XMLNode_pMd, &_s11ShaderGraph7XMLNode_pMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = __CocoaSet.count.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

id specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 16);
  if (!(*v2 >> 62))
  {
    v8 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = (v8 + v7);
    if (!v9)
    {
      goto LABEL_3;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = __CocoaSet.count.getter();
  v9 = __OFADD__(v16, v7);
  result = (v16 + v7);
  if (v9)
  {
    goto LABEL_17;
  }

LABEL_3:
  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v3 = *v2;
  v4 = *v2 & 0xFFFFFFFFFFFFFF8;
  v11 = *(v4 + 0x10);
  v5 = (*(v4 + 0x18) >> 1) - v11;
  v12 = *(a2 + 16);
  if (v12)
  {
    if (v5 >= v12)
    {
      v13 = *(a2 + 16);
    }

    else
    {
      v13 = (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v11;
    }

    type metadata accessor for SGNode();
    result = swift_arrayInitWithCopy();
    if (v13 >= v7)
    {
      if (v5 >= 1)
      {
        v14 = *(v4 + 16);
        v9 = __OFADD__(v14, v13);
        v15 = v14 + v13;
        if (v9)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        *(v4 + 16) = v15;
      }

      goto LABEL_13;
    }
  }

  else if (v7 <= 0)
  {
    v13 = 0;
LABEL_13:
    if (v13 != v5)
    {
LABEL_14:

      *v2 = v3;
      return result;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  v17 = *(a2 + 16);
  if (v5 == v17)
  {
    goto LABEL_14;
  }

  if (v5 < v17)
  {
    v18 = *(v4 + 16);
    v19 = v5 + 1;
    v20 = *(a2 + 32 + 8 * v5);
    v21 = v20;
    result = v20;
    while (1)
    {
LABEL_23:
      if (v18 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = result;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        result = v28;
      }

      v3 = *v2;
      v22 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      v23 = v22 - v18;
      if (v22 > v18)
      {
        break;
      }

      *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) = v18;
    }

    v29 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    v30 = *v2 & 0xFFFFFFFFFFFFFF8;
    v24 = (v30 + 8 * v18 + 32);
    v25 = v18 + 1;
    while (1)
    {
      *v24 = result;
      v26 = *(a2 + 16);
      if (v19 == v26)
      {
        break;
      }

      if (v19 >= v26)
      {
        goto LABEL_33;
      }

      v27 = v19 + 1;
      result = *(a2 + 32 + 8 * v19);
      ++v24;
      ++v25;
      ++v19;
      if (!--v23)
      {
        v18 = v29;
        v19 = v27;
        *(v30 + 16) = v29;
        goto LABEL_23;
      }
    }

    *(v30 + 16) = v25;
    goto LABEL_14;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = __CocoaSet.count.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t createDotText(representing:)(uint64_t *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SGGraph_nodes;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v6 = SGGraph.nodegraphs(_:)(0);
      v8 = v7;
      v9 = graphDotText(_:callNode:)(a1, 0);
      v11 = v10;
      v12 = 0;
      v13 = *(v8 + 16);
      v14 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v13 == v12)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          v25 = BidirectionalCollection<>.joined(separator:)();
          v27 = v26;

          MEMORY[0x266771550](v25, v27);

          _StringGuts.grow(_:)(136);
          MEMORY[0x266771550](0xD000000000000083, 0x8000000265F2FD30);
          MEMORY[0x266771550](v9, v11);

          MEMORY[0x266771550](8194570, 0xE300000000000000);
          v28 = 0;

          return v28;
        }

        if (v12 >= *(v8 + 16))
        {
          break;
        }

        a1 = *(v8 + 8 * v12++ + 32);
        v15 = a1 + OBJC_IVAR___SGNode_data;
        v16 = *(a1 + OBJC_IVAR___SGNode_data + 80);
        if ((v16 & 0xC0) == 0x40)
        {
          v35 = v9;
          v36 = v11;
          v37 = v6;
          v38 = v2;
          v39 = *(v15 + 9);
          v40 = *(v15 + 8);
          v44 = *(v15 + 7);
          v42 = *(v15 + 5);
          *v43 = *(v15 + 6);
          v41 = *(v15 + 4);
          v18 = *(v15 + 2);
          v17 = *(v15 + 3);
          v20 = *v15;
          v19 = *(v15 + 1);
          v33 = v14;
          v32 = a1;
          outlined copy of NodeData(v20, v19, v18, v17, v41, v42, v43[0], v44, v40, v39, v16);
          a1 = graphDotText(_:callNode:)(v20, a1);
          v34 = v21;

          outlined consume of NodeData(v20, v19, v18, v17, v41, v42, v43[0], v44, v40, v39, v16);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v14 = v33;
          }

          else
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
          }

          v23 = *(v14 + 2);
          v22 = *(v14 + 3);
          v6 = v37;
          v2 = v38;
          v11 = v36;
          if (v23 >= v22 >> 1)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v14);
          }

          *(v14 + 2) = v23 + 1;
          v24 = &v14[16 * v23];
          v9 = v35;
          *(v24 + 4) = a1;
          *(v24 + 5) = v34;
        }
      }

      __break(1u);
LABEL_15:
      ;
    }

    while (__CocoaSet.count.getter());
  }

  lazy protocol witness table accessor for type DotError and conformance DotError();
  v29 = swift_allocError();
  swift_willThrow();
  v28 = type metadata accessor for SGError();
  v30 = v29;
  SGError.__allocating_init(_:)(v29);
  swift_willThrow();

  return v28;
}