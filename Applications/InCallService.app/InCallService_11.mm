char *sub_10021781C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10014EA98(&unk_1003B0240, &qword_100300050);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_10021791C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  v5 = 0;
  v50[0] = a1;
  v6 = sub_100017230(a1);
  v47 = v4 & 0xC000000000000001;
  v42 = v4 + 32;
  v49 = v3 + 7;

  v7 = -1;
  v45 = v6;
  v46 = 0;
LABEL_3:
  if (v5 != v6)
  {
    v8 = v47;
    sub_100017238(v5, v47 == 0, v4);
    if (v47)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v42 + 8 * v5);
    }

    v48 = v9;
    v10 = __OFADD__(v5++, 1);
    if (v10)
    {
      __break(1u);
    }

    else
    {
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v2 = v11 & v12;
        v6 = (v11 & v12) >> 6;
        v7 = 1 << (v11 & v12);
        if ((v7 & v49[v6]) == 0)
        {

          v6 = v45;
          v7 = -1;
          goto LABEL_3;
        }

        type metadata accessor for MessageID(v46);
        v13 = *(v3[6] + 8 * v2);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          break;
        }

        v11 = v2 + 1;
      }

      v50[1] = v5;

      v16 = *(v3 + 32);
      v39 = ((1 << v16) + 63) >> 6;
      v8 = 8 * v39;
      if ((v16 & 0x3Fu) <= 0xD)
      {
LABEL_14:
        v40 = &v38;
        __chkstk_darwin(v15);
        v17 = &v38 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v17, v49, v8);
        v18 = v3[2];
        v19 = *&v17[8 * v6] & ~v7;
        v43 = v17;
        *&v17[8 * v6] = v19;
        v41 = v18 - 1;
        v20 = sub_100017230(v4);
        v44 = v4;
        v45 = v20;
        while (1)
        {
LABEL_15:
          if (v5 == v45)
          {
            v3 = sub_100217F9C(v43, v39, v41, v3);
            goto LABEL_29;
          }

          v21 = v47;
          sub_100017238(v5, v47 == 0, v4);
          v22 = v21 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v42 + 8 * v5);
          v23 = v22;
          v10 = __OFADD__(v5, 1);
          v24 = (v5 + 1);
          if (v10)
          {
            break;
          }

          v48 = v24;
          v25 = NSObject._rawHashValue(seed:)(v3[5]);
          v26 = v3;
          v27 = ~(-1 << *(v3 + 32));
          do
          {
            v28 = v25 & v27;
            v29 = (v25 & v27) >> 6;
            v30 = 1 << (v25 & v27);
            if ((v30 & v49[v29]) == 0)
            {

              v3 = v26;
              v4 = v44;
              v5 = v48;
              goto LABEL_15;
            }

            v31 = *(v26[6] + 8 * v28);
            v32 = static NSObject.== infix(_:_:)();

            v25 = v28 + 1;
          }

          while ((v32 & 1) == 0);

          v4 = v44;
          v33 = v43[v29];
          v43[v29] = v33 & ~v30;
          v3 = v26;
          v5 = v48;
          if ((v33 & v30) != 0)
          {
            v34 = v41 - 1;
            if (__OFSUB__(v41, 1))
            {
              __break(1u);
            }

            --v41;
            if (!v34)
            {
              goto LABEL_33;
            }
          }
        }

        __break(1u);
LABEL_33:

        v3 = &_swiftEmptySetSingleton;
        goto LABEL_29;
      }
    }

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v36 = swift_slowAlloc();
      v37 = sub_100217F14(v36, v39, v49, v39, v3, v2, v50);

      return v37;
    }

    goto LABEL_14;
  }

LABEL_29:

  return v3;
}

void sub_100217D54(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v29 = v8;
LABEL_3:
    v10 = sub_100017230(*v5);
    v11 = *(v5 + 8);
    if (v11 == v10)
    {

      sub_100217F9C(a1, a2, v29, a3);
      return;
    }

    v12 = *v5;
    v13 = *v5 & 0xC000000000000001;
    sub_100017238(*(v5 + 8), v13 == 0, *v5);
    v14 = v13 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v12 + 8 * v11 + 32);
    v15 = v14;
    v16 = *(v5 + 8);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    *(v5 + 8) = v18;
    v19 = NSObject._rawHashValue(seed:)(*(a3 + 40));
    v20 = ~(-1 << *(a3 + 32));
    do
    {
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = 1 << (v19 & v20);
      if ((v23 & *(v9 + 8 * v22)) == 0)
      {

        v5 = a5;
        goto LABEL_3;
      }

      type metadata accessor for MessageID(0);
      v24 = *(*(a3 + 48) + 8 * v21);
      v25 = static NSObject.== infix(_:_:)();

      v19 = v21 + 1;
    }

    while ((v25 & 1) == 0);

    v26 = a1[v22];
    a1[v22] = v26 & ~v23;
    v27 = (v26 & v23) == 0;
    v5 = a5;
    if (v27)
    {
      goto LABEL_3;
    }

    v8 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
      goto LABEL_19;
    }

    if (v29 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_100217F14(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_100217D54(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

Swift::Int sub_100217F9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10014EA98(&qword_1003ABCC0, &qword_1002FC758);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
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

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_100218188(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

void sub_10021822C(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v6 = *v2;
  v7 = *(v2[1] + 16);
  if (*v3)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() < v7)
    {
      v8 = *(v6 + 24) & 0x3FLL;
      if (v7 <= 0xF && v8 == 0)
      {

        *v3 = 0;
        return;
      }

      goto LABEL_11;
    }

    sub_10021839C();
    if (*v3)
    {
      sub_1002183F4((*v3 + 16), *v3 + 32, a2, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else if (v7 > 0xF)
  {
    v8 = 0;
LABEL_11:
    v10 = static _HashTable.scale(forCapacity:)();
    sub_10021845C(v10, v8);
  }
}

void *sub_10021834C(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

void sub_10021839C()
{
  if (*v0 && (swift_isUniquelyReferenced_native() & 1) == 0)
  {
    if (*v0)
    {
      v1 = _HashTable.copy()();

      *v0 = v1;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10021845C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v4 = sub_1002184A4(v2[1], a2, 0, v3);

  *v2 = v4;
}

uint64_t sub_1002184A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  v8 = 0;
  if (v7 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v9 <= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v9;
  }

  if (v10 >= 5)
  {
    v8 = _HashTable.init(scale:reservedScale:)();
    sub_10021851C(a1, (v8 + 16), v8 + 32);
  }

  return v8;
}

Swift::Int sub_10021855C(Swift::Int result, uint64_t a2, Swift::Int *a3, uint64_t a4)
{
  v10 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        v7 = *a3;
        v8 = *(v10 + 8 * v6);
        result = NSObject._rawHashValue(seed:)(v7);
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v9 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v9)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100218660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    type metadata accessor for MessageID(0);
    v6 = *(a2 + 8 * i);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      break;
    }
  }

  return i;
}

Swift::Int sub_1002186EC(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4, uint64_t a5)
{
  result = NSObject._rawHashValue(seed:)(*a4);
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v8 = v12;
    if ((v13 & 1) == 0)
    {
      do
      {
        type metadata accessor for MessageID(0);
        v9 = *(a2 + 8 * v8);
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v8 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v11 & 1) == 0);
    }

    return v8;
  }

  return result;
}

void sub_100218808(uint64_t a1, char a2)
{
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v3 = v2;
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16) & 0x3FLL;
  }

  else
  {
    v6 = 0;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  v8 = v7;
  if (a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v5 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    v9 = *(v5 + 24) & 0x3FLL;
  }

  if (v6 < v8)
  {
    v10 = v8;
LABEL_18:
    sub_10021845C(v10, v9);
    return;
  }

  if (v9 > v8)
  {
    v8 = v9;
  }

  v10 = static _HashTable.scale(forCapacity:)();
  if (v10 <= v8)
  {
    v10 = v8;
  }

  if (v10 < v6)
  {
    goto LABEL_18;
  }

  sub_10021839C();
  v11 = *v3;
  if (!v11)
  {
    if (!v9)
    {
      return;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  swift_beginAccess();
  if ((*(v11 + 24) & 0x3FLL) != v9)
  {
    *(v11 + 24) = *(v11 + 24) & 0xFFFFFFFFFFFFFFC0 | v9 & 0x3F;
  }
}

unint64_t sub_100218944(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

void sub_100218968(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_100218B0C(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_12:
    sub_100218B0C(a1);
    if (v7)
    {
      swift_beginAccess();
      v12 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v12 = 0;
    }

    if (v12 || *(*v5 + 16) >= 0x10uLL)
    {
      v13 = static _HashTable.scale(forCapacity:)();
      sub_10021845C(v13, v12);
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_10021839C();
  v9 = *v3;
  if (*v3)
  {

    sub_100218BB4(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v10 = v3[1];

      sub_100218D8C(a1, a1 + 1, v10, (v9 + 16), v9 + 32, v11);

      sub_100218B0C(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100218B0C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_10003C270(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 8 * a1;
    v9 = *(v8 + 32);
    sub_10003D8B0((v8 + 40), v7, (v8 + 32));
    *(v3 + 16) = v6;
    specialized ContiguousArray._endMutation()();
    return v9;
  }

  return result;
}

void sub_100218BB4(uint64_t a1, Swift::Int *a2, uint64_t a3, uint64_t a4)
{
  v20 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v20)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v8 = a1;
    while (1)
    {
      v9 = _HashTable.BucketIterator.currentValue.getter();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = *(a4 + 8);
      if (v9 >= *(v11 + 16))
      {
        goto LABEL_24;
      }

      v12 = *a2;
      v13 = *(v11 + 8 * v9 + 32);
      v14 = NSObject._rawHashValue(seed:)(v12);

      v15 = 1 << *a2;
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_25;
      }

      v16 = (v15 - 1) & v14;
      if (v8 >= v7)
      {
        if (v16 >= v7 && v8 >= v16)
        {
LABEL_18:
          _HashTable.BucketIterator.currentValue.getter();
          v8 = a1;
          _HashTable.UnsafeHandle.subscript.setter();
        }
      }

      else if (v16 >= v7 || v8 >= v16)
      {
        goto LABEL_18;
      }

      _HashTable.BucketIterator.advance()();
    }
  }

  _HashTable.UnsafeHandle.subscript.setter();
}

void sub_100218D8C(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4, uint64_t a5, __n128 a6)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_57;
  }

  if (v6 >= 1)
  {
    v10 = *(a3 + 16);
    if ((v10 - v6) / 2 <= a1)
    {
      v16 = a2;
      v17 = __OFSUB__(v10, a2);
      v18 = v10 - a2;
      if (v17)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v18 >= static _HashTable.maximumCapacity(forScale:)() / 3)
      {
        _HashTable.UnsafeHandle._startIterator(bucket:)();
        v31 = _HashTable.BucketIterator.currentValue.getter();
        if ((v32 & 1) == 0 && v31 >= v16)
        {
          if (__OFSUB__(v31, v6))
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        _HashTable.BucketIterator.advance()();
        return;
      }

      sub_1002191B4(v16, a3);
      v20 = v19;
      v22 = v21;
      v24 = v23 >> 1;
      while (v22 != v24)
      {
        if (v22 >= v24)
        {
          goto LABEL_51;
        }

        v25 = *a4;
        v26 = *(v20 + 8 * v22);
        NSObject._rawHashValue(seed:)(v25);
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v27 = _HashTable.BucketIterator.currentValue.getter();
            if ((v28 & 1) == 0 && v27 == v16)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        if (__OFSUB__(v16, v6))
        {
          goto LABEL_53;
        }

        _HashTable.BucketIterator.currentValue.setter();

        v17 = __OFADD__(v16++, 1);
        if (v17)
        {
          goto LABEL_54;
        }

        ++v22;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (static _HashTable.maximumCapacity(forScale:)() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v10 < a1)
        {
LABEL_62:
          __break(1u);
          return;
        }

        for (i = 0; ; ++i)
        {
          if (i == a1)
          {

            goto LABEL_40;
          }

          v12 = *a4;
          v13 = *(a3 + 32 + 8 * i);
          NSObject._rawHashValue(seed:)(v12);
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (_HashTable.UnsafeHandle._startIterator(bucket:)())
          {
            while (1)
            {
              v14 = _HashTable.BucketIterator.currentValue.getter();
              if ((v15 & 1) == 0 && v14 == i)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }
          }

          if (__OFADD__(i, v6))
          {
            goto LABEL_50;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v29 = _HashTable.BucketIterator.currentValue.getter();
      if ((v30 & 1) == 0 && v29 < a1)
      {
        if (__OFADD__(v29, v6))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
LABEL_40:
      v33 = a4[1];
      if (__OFSUB__(v33 >> 6, v6))
      {
        goto LABEL_59;
      }

      v34 = 1 << *a4;
      v17 = __OFSUB__(v34, 1);
      v35 = v34 - 1;
      if (v17)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v36 = (v35 & (((v33 >> 6) - v6) >> 63)) + (v33 >> 6) - v6;
      if (v36 < v35)
      {
        v35 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v36 - v35) << 6);
    }
  }
}

uint64_t sub_1002191B4(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

double sub_100219214(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100219BA4(a1, a2, sub_100219B44);
  v7 = v6;
  v8 = _s13InCallService15ScoreControllerC8delegateAA0dE8Delegate_pSgvpfi_0();
  v9 = sub_1002184A4(v7, 0, 1, v8);
  if (*(v7 + 16) <= 0xFuLL)
  {

    v9 = 0;
  }

  *a3 = v9;
  a3[1] = v7;

  sub_100219BA4(a1, a2, sub_100219B74);
  a3[2] = v10;

  return result;
}

void sub_1002192F4()
{
  sub_100005510();
  if (v2)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      sub_1000085C0();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_100017230(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        v7 = sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
        sub_100007BE0(v7);
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v24 = v6;
        sub_10021A50C(&qword_1003AF1B0, &qword_1003AF1A8, &qword_1003000F0);
        do
        {
          v8 = sub_10014EA98(&qword_1003AF1A8, &qword_1003000F0);
          v16 = sub_100005A2C(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25[0]);
          v19 = sub_1001C7654(v16, v17, v18);
          v21 = *v20;
          v19(v25, 0);
          sub_100008858();
        }

        while (!v22);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100219438()
{
  sub_100005510();
  if (v2)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      sub_1000085C0();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_100017230(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        v7 = sub_1000064BC(0, &qword_1003ACFE0, UIMenuElement_ptr);
        sub_100007BE0(v7);
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v24 = v6;
        sub_10021A50C(&qword_1003AF1C0, &qword_1003AF1B8, &qword_1003000F8);
        do
        {
          v8 = sub_10014EA98(&qword_1003AF1B8, &qword_1003000F8);
          v16 = sub_100005A2C(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25[0]);
          v19 = sub_1001C7654(v16, v17, v18);
          v21 = *v20;
          v19(v25, 0);
          sub_100008858();
        }

        while (!v22);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10021957C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_100017230(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for MessageID(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_10021A50C(&qword_1003AF188, &qword_1003AF180, &unk_1003000C0);
        for (i = 0; i != v7; ++i)
        {
          sub_10014EA98(&qword_1003AF180, &unk_1003000C0);
          v9 = sub_1001C771C(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002196F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_100017230(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_10021A50C(&qword_1003AF1A0, &qword_1003AF190, &qword_1003000E0);
        for (i = 0; i != v7; ++i)
        {
          sub_10014EA98(&qword_1003AF190, &qword_1003000E0);
          v9 = sub_1001C76B4(v12, i, a3);
          v11 = *v10;
          swift_unknownObjectRetain();
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100219870(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = *(a6 + 16);
    v14 = a3 - 1;
    while (1)
    {
      if (v13 == v12)
      {
        v10 = v13;
        goto LABEL_12;
      }

      if (v12 >= *(a6 + 16))
      {
        break;
      }

      *(a2 + 8 * v12) = *(a6 + 32 + 8 * v12);
      if (v14 == v12)
      {
        swift_unknownObjectRetain();
        goto LABEL_12;
      }

      result = swift_unknownObjectRetain();
      ++v12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100219938(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_100219A94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  if (a3)
  {

    v10 = sub_1002186EC(v8, a1, a2, (a3 + 16), a3 + 32);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v10 = sub_100218660(*a4, a1, a2);
    v12 = v15;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
}

id sub_100219B44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t sub_100219B74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002192EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100219BA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, id *))
{
  v4 = a1;
  if (a2)
  {
    if (a2 <= 0)
    {
      v6 = _swiftEmptyArrayStorage;
      v7 = _swiftEmptyArrayStorage[3];
    }

    else
    {
      sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
      v6 = swift_allocObject();
      v7 = (2 * ((j__malloc_size(v6) - 32) / 8)) | 1;
      v6[2] = a2;
      v6[3] = v7;
    }

    if (v4)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        v10 = v4 + 16 * a2;
LABEL_12:
        v8 = (v7 >> 1) - a2;
        v9 = v6 + 5;
        v11 = a2 - 1;
        if (v4)
        {
          while (v10 != v4)
          {
            v3 = v4 + 16;
            v12 = *v4;
            v13 = *(v4 + 8);
            v33 = v12;
            v34 = v13;
            v14 = v12;
            swift_unknownObjectRetain();
            a3(&v32, &v33);
            swift_unknownObjectRelease();

            *(v9 - 1) = v32;
            if (!v11)
            {
              goto LABEL_33;
            }

            ++v9;
            --v11;
            v4 = v3;
            if (!v3)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:
          __break(1u);
          while (1)
          {
            v15 = *(v3 + 8);
            v33 = *v3;
            v34 = v15;
            v16 = v33;
            swift_unknownObjectRetain();
            a3(&v32, &v33);
            swift_unknownObjectRelease();

            v17 = v32;
            if (!v8)
            {
              v18 = v6[3];
              if (((v18 >> 1) + 0x4000000000000000) < 0)
              {
                goto LABEL_40;
              }

              v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
              if (v19 <= 1)
              {
                v20 = 1;
              }

              else
              {
                v20 = v19;
              }

              sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
              v21 = swift_allocObject();
              v22 = (j__malloc_size(v21) - 32) / 8;
              v21[2] = v20;
              v21[3] = (2 * v22) | 1;
              v23 = (v21 + 4);
              v24 = v6[3];
              v25 = v24 >> 1;
              if (v6[2])
              {
                if (v21 != v6 || v23 >= &v6[v25 + 4])
                {
                  memmove(v21 + 4, v6 + 4, 8 * v25);
                }

                v6[2] = 0;
              }

              v9 = (v23 + 8 * v25);
              v8 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - (v24 >> 1);

              v6 = v21;
            }

            v27 = __OFSUB__(v8--, 1);
            if (v27)
            {
              break;
            }

            v3 += 16;
            *v9++ = v17;
LABEL_33:
            if (v3 == v10)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
        }

        __break(1u);
LABEL_40:
        __break(1u);
      }
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_42;
  }

  v6 = _swiftEmptyArrayStorage;
  v8 = 0;
  if (a1)
  {
    v9 = &_swiftEmptyArrayStorage[4];
    v10 = a1;
    v3 = a1;
    goto LABEL_33;
  }

LABEL_34:
  v28 = v6[3];
  if (v28 >= 2)
  {
    v29 = v28 >> 1;
    v27 = __OFSUB__(v29, v8);
    v30 = v29 - v8;
    if (v27)
    {
LABEL_42:
      __break(1u);
      return;
    }

    v6[2] = v30;
  }
}

void sub_100219E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    sub_10014EA98(&qword_1003AF178, &qword_100300040);
    v6 = swift_allocObject();
    v7 = (j__malloc_size(v6) - 32) / 16;
    v6[2] = v3;
    v6[3] = 2 * v7;
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = (a2 + 32);
    v10 = (a3 + 32);
    v11 = *(a2 + 16);
    v12 = v8 - 1;
    v13 = v3 - 1;
    v14 = 4;
    if (v11)
    {
      while (1)
      {
        v15 = &v6[v14];
        v8 = *v9;
        v16 = *v10;
        *v15 = *v9;
        v15[1] = v16;
        if (!v13)
        {
          break;
        }

        v17 = v8;
        swift_unknownObjectRetain();
        --v12;
        v14 += 2;
        --v11;
        --v13;
        ++v9;
        ++v10;
        if (!v11)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      __break(1u);
    }

    v18 = v8;
    swift_unknownObjectRetain();
  }

  else
  {
    v12 = 0;
    v6 = _swiftEmptyArrayStorage;
  }

  v19 = v6[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v21 = __OFSUB__(v20, v12);
    v22 = v20 - v12;
    if (v21)
    {
      __break(1u);
    }

    else
    {
      v6[2] = v22;
    }
  }
}

uint64_t sub_100219F88()
{
  sub_1000058A8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008204;

  return sub_100215B7C(v2, v3, v4);
}

uint64_t sub_10021A038()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008204;

  return sub_100216418(v2, v3, v4);
}

uint64_t sub_10021A0F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10021A138()
{
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v1[1] = sub_100008204;
  v3 = sub_10000A544();

  return v4(v3);
}

uint64_t sub_10021A1F4()
{
  sub_1000058A8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v1[1] = sub_100008204;
  v3 = sub_10000A544();

  return v4(v3);
}

uint64_t sub_10021A298()
{
  sub_1000058A8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v1[1] = sub_100008208;
  v3 = sub_10000A544();

  return v4(v3);
}

uint64_t sub_10021A33C()
{
  sub_1000058A8();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008204;
  v2 = sub_1000085C0();

  return v3(v2);
}

uint64_t sub_10021A41C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10021A46C()
{
  sub_1000058A8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_100005B88(v3);
  *v4 = v5;
  v4[1] = sub_100008208;
  v6 = sub_10000A544();

  return sub_1002151B8(v6, v7, v1, v2);
}

uint64_t sub_10021A50C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10021A560(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10021A578(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10021A5CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10021A628(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id sub_10021A670(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___ICSInterruptCallAlert_callback];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

id sub_10021A7D8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

double sub_10021A86C()
{
  v1 = *(v0 + OBJC_IVAR___ICSInterruptCallAlert_callback);

  v1(v2);

  return result;
}

id sub_10021A9C0(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  sub_10016D16C(a1, a2);
  return v6;
}

id sub_10021AA38()
{
  result = [objc_opt_self() tu_contactStore];
  qword_1003AF1F8 = result;
  return result;
}

void sub_10021AA74()
{
  v1 = v0;
  v2 = [v0 existingPrioritizedCall];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v0 defaultNoPosterAvatarView];
  [v4 removeFromSuperview];

  [v1 setDefaultNoPosterAvatarView:0];
  v5 = [v1 contactForCall:v3];
  v6 = v5;
  if (!v5)
  {
    v20 = [v1 existingPrioritizedCall];
    v6 = v20;
    if (!v20)
    {
LABEL_16:
      v25 = v6;
      v6 = [objc_allocWithZone(CNMutableContact) init];
      v14 = [objc_allocWithZone(CNAvatarView) initWithContact:v6];
      goto LABEL_17;
    }

    v21 = [v20 handle];

    if (!v21)
    {
      v6 = 0;
      goto LABEL_16;
    }

    sub_1000064BC(0, &qword_1003AAF78, CNMutableContact_ptr);
    v6 = CNMutableContact.init(handle:)();
  }

  v7 = v5;
  v8 = sub_10021AE68(v6);
  v10 = v9;
  v11 = sub_10021C03C(v6);
  if (v12 >> 60 != 15)
  {
    sub_100034FE0(v11, v12);

    v14 = [objc_allocWithZone(CNAvatarView) initWithContact:v6];
    goto LABEL_10;
  }

  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_16;
  }

  v14 = [objc_allocWithZone(UILabel) init];
  v15 = [objc_opt_self() systemFontOfSize:1000.0 weight:UIFontWeightSemibold];
  [v14 setFont:v15];

  [v14 setAdjustsFontSizeToFitWidth:1];
  v16 = sub_10000C618([v14 setMinimumScaleFactor:0.1], "setNumberOfLines:");
  sub_10000C618(v16, "setTextAlignment:");
  v17 = [objc_opt_self() whiteColor];
  v18 = [v17 colorWithAlphaComponent:0.3];

  [v14 setTextColor:v18];
  sub_10021BFD8(v8, v10, v14);
  sub_10000C618(v19, "setBaselineAdjustment:");
LABEL_10:
  v25 = v6;
LABEL_17:

  sub_10000C618(v22, "setContentMode:");
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [v1 backgroundController];
  [*&v23[OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_backgroundContainer] addSubview:v14];

  v24 = v14;
  [v1 setDefaultNoPosterAvatarView:v24];
}

uint64_t sub_10021AE68(void *a1)
{
  v2 = sub_10014EA98(&qword_1003AF208, &unk_1003001C0);
  __chkstk_darwin(v2 - 8);
  v4 = v27 - v3;
  v28 = type metadata accessor for PersonNameComponents();
  sub_10000688C();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = objc_opt_self();
  v10 = [a1 namePrefix];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27[4] = v12;
  v27[5] = v11;

  v13 = [a1 givenName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27[2] = v15;
  v27[3] = v14;

  v16 = [a1 middleName];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27[0] = v18;
  v27[1] = v17;

  v19 = [a1 familyName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = [a1 nameSuffix];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = [a1 nickname];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = v28;
  sub_100006848(v4, 1, 1, v28);
  PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v22);
  v24 = [v29 localizedStringFromPersonNameComponents:isa style:4 options:0];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v25;
}

void sub_10021B188()
{
  v1 = [v0 defaultNoPosterAvatarView];
  if (v1)
  {
    v10 = v1;
    v2 = [v0 existingPrioritizedCall];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 contactForCall:v2];
      if (v4)
      {
        v5 = v4;
        v6 = [v0 callDisplayStyleManager];
        v7 = [v6 callDisplayStyle];

        [v10 setHidden:{(v7 != 2) | (objc_msgSend(v0, "contactHasPoster:", v5) & 1)}];
        v8 = v3;
        v3 = v5;
      }

      else
      {
        v8 = v10;
      }

      v9 = v3;
    }

    else
    {
      v9 = v10;
    }
  }
}

uint64_t sub_10021B31C(void *a1)
{
  v2 = type metadata accessor for PosterSlot();
  sub_10000688C();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PosterDataService();
  v8 = qword_1003AA0E0;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1003AF1F8;
  PosterDataService.__allocating_init(contact:contactStore:)();
  (*(v4 + 104))(v7, enum case for PosterSlot.current(_:), v2);
  v12 = PosterDataService.posterConfiguration(for:)();
  (*(v4 + 8))(v7, v2);

  if (!v12)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_10021B598(uint64_t (*a1)(void))
{
  v3 = [v1 posterViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for PosterViewController();
    if (swift_dynamicCastClass())
    {
      v5 = a1();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_10021B620(void *a1)
{
  v3 = [v1 existingPrioritizedCall];
  if (v3)
  {
    v6 = v3;
    if (sub_10021B6C8(v3) || (v4 = sub_10021B808(v6)) == 0)
    {
      sub_10021B770(a1);
    }

    else
    {
      v5 = v4;
      sub_10021B890(v4, a1);
    }
  }
}

BOOL sub_10021B6C8(uint64_t a1)
{
  v2 = [v1 associatedCallGroupForCall:a1];
  v3 = [v2 calls];
  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_100017230(v4);

  return v5 > 1;
}

void sub_10021B770(void *a1)
{
  v2 = [objc_opt_self() systemBlackColor];
  v3 = [v2 colorWithAlphaComponent:0.1];

  [a1 setBackgroundColor:v3];
}

id sub_10021B808(uint64_t a1)
{
  v2 = [v1 contactForCall:a1];
  if (!v2)
  {
    return 0;
  }

  v3 = sub_10021C0A0(v2);
  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;
  sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
  return sub_10021A9C0(v6, v7);
}

double sub_10021B890(void *a1, void *a2)
{
  v5 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_100006848(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = a1;
  v10 = a2;
  v11 = v2;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v11;
  sub_1001621BC();

  return result;
}

uint64_t sub_10021BA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = type metadata accessor for ColorComponents();
  v6[22] = v7;
  v6[23] = *(v7 - 8);
  v6[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[26] = v9;
  v6[27] = v8;

  return _swift_task_switch(sub_10021BB14, v9, v8);
}

uint64_t sub_10021BB14()
{
  v1 = v0[19];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10021BC4C;
  v3 = swift_continuation_init();
  v0[17] = sub_10014EA98(&qword_1003AF200, &qword_1003001B8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10021BF6C;
  v0[13] = &unk_100360970;
  v0[14] = v3;
  [v2 fetchColorsForImage:v1 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10021BC4C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  return _swift_task_switch(sub_10021BD54, v2, v1);
}

uint64_t sub_10021BD54()
{

  v1 = *(v0 + 144);
  if (sub_100017230(v1))
  {
    sub_100017238(0, (v1 & 0xC000000000000001) == 0, v1);
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v2 = *(v1 + 32);
    }

    v3 = v2;

    static ColorComponents.componentsFromColor(color:)();
    ColorComponents.red.getter();
    ColorComponents.green.getter();
    ColorComponents.blue.getter();
    if (static ColorComponents.isGray(_:_:_:)())
    {
      sub_10021B770(*(v0 + 160));
    }

    else
    {
      [*(v0 + 160) setBackgroundColor:v3];
    }

    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 176);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10021BEA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001559CC;

  return sub_10021BA1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10021BF6C(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100008878((a1 + 32), *(a1 + 56));
  sub_1000064BC(0, &qword_1003B0520, UIColor_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_10021A9A0(v2, v3);
}

void sub_10021BFD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setText:v4];
}

uint64_t sub_10021C03C(void *a1)
{
  v1 = [a1 fullscreenImageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10021C0A0(void *a1)
{
  v2 = [a1 imageData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t EndControlService.__allocating_init(callCenter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

char *sub_10021C1C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v9 = _swiftEmptyArrayStorage;
  result = sub_10021D7FC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v9;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_10014EA98(&qword_1003AAF80, &unk_1002FB7D0);
      swift_dynamicCast();
      v9 = v3;
      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        sub_10021D7FC((v6 > 1), v7 + 1, 1);
        v3 = v9;
      }

      ++v5;
      v3[2] = v7 + 1;
      sub_100034DBC(&v8, &v3[4 * v7 + 4]);
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

id sub_10021C370()
{
  v0 = [objc_allocWithZone(type metadata accessor for Features()) init];
  Features.showTranscriptWithoutConfidenceFiltering.getter();

  sub_10021E014();
  v1 = sub_10021C3D8();
  return sub_1001A584C(v1, v2);
}

uint64_t sub_10021C3D8()
{
  v1 = [*(v0 + OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript) transcriptionString];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_10021C680()
{
  v1 = [*(v0 + OBJC_IVAR___MPVisualMessage_vmMessage) identifier];
  v2 = objc_allocWithZone(type metadata accessor for MessageID(0));
  return sub_10017281C(v1);
}

uint64_t sub_10021C738()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 providerManager];

  v2 = [v1 telephonyProvider];
  v3 = [v2 identifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_10021C8F0()
{
  type metadata accessor for UUID();
  v0 = sub_100006F38();

  return sub_100006848(v0, v1, v2, v3);
}

id sub_10021C970()
{
  v1 = *(v0 + OBJC_IVAR___MPVisualMessage_vmMessage);
  v2 = [v1 senderDestinationID];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v1 senderISOCountryCode];
  v6 = [v4 normalizedPhoneNumberHandleForValue:v3 isoCountryCode:v5];

  return v6;
}

id sub_10021CA3C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_10021CAE0(a3);
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10021CAE0(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR___MPVisualMessage_vmMessage) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_10021CB84()
{
  v1 = *(v0 + OBJC_IVAR___MPVisualMessage_vmMessage);
  if ([v1 isDeleted])
  {
    return 0;
  }

  if ([v1 isBlocked])
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  if ([v1 isTrashed])
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

void sub_10021CD84()
{
  v1 = [*(v0 + OBJC_IVAR___MPVisualMessage_vmMessage) date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_10021D014()
{
  result = [*(v0 + OBJC_IVAR___MPVisualMessage_vmMessage) transcript];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for VisualTranscriptionMessage();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    return objc_msgSendSuper2(&v5, "init");
  }

  return result;
}

uint64_t sub_10021D1CC@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR___MPVisualMessage_vmMessage) dataURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = type metadata accessor for URL();

  return sub_100006848(a1, 0, 1, v4);
}

uint64_t sub_10021D334()
{
  type metadata accessor for URL();
  v0 = sub_100006F38();

  return sub_100006848(v0, v1, v2, v3);
}

id sub_10021D3D0(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[*a2] = a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_10021D4CC(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___MPVisualMessage_vmMessage);
  sub_10021C1C8(a2);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 contactUsingContactStore:a1 withKeysToFetch:isa];

  return v6;
}

uint64_t sub_10021D5EC(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___MPVisualMessage_vmMessage) displayNameUsingContactStore:a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

char *sub_10021D75C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10021D83C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10021D77C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10021D92C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10021D79C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10021DB3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10021D7BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10021DCF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10021D7DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10021DE00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10021D7FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10021DF10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10021D81C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10021E058(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10021D83C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&qword_1003AAF10, &unk_1002FB780);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      sub_10000C630(v11);
      if (v5)
      {
LABEL_13:
        sub_10003D890((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10021D92C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&qword_1003AF350, &qword_100300298);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10024034C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10014EA98(&unk_1003AF358, &unk_1003002A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10021DA3C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&qword_1003AF178, &qword_100300040);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      sub_10000C630(v11);
      if (v5)
      {
LABEL_13:
        sub_100240348((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10014EA98(&unk_1003AF320, &qword_100300048);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_10021DB3C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10014EA98(&qword_1003AA8D8, &qword_100300270);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1002401A0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10021DCF0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&qword_1003AF340, &qword_100300288);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_100240348((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10014EA98(&qword_1003AF348, &qword_100300290);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10021DE00(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&unk_1003AF330, &unk_100300278);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10024034C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10014EA98(&qword_1003AF190, &qword_1003000E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10021DF10(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&qword_1003AC338, &unk_100300260);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_100240180((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_10021E014()
{
  result = qword_1003ACC30;
  if (!qword_1003ACC30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003ACC30);
  }

  return result;
}

char *sub_10021E058(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10014EA98(&qword_1003AF368, &qword_1003002B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_100240280((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10014EA98(&unk_1003AF370, &qword_1003002B8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_10021E1A4()
{
  v1 = *(v0 + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController);
  v2 = v1;
  return v1;
}

uint64_t sub_10021E230(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController);
  *(v1 + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController) = a1;
  return _objc_release_x1(a1, v2);
}

char *sub_10021E290(void *a1)
{
  *&v1[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_cancellables] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController] = 0;
  *&v1[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_callDisplayStyleManager] = a1;
  v3 = objc_allocWithZone(type metadata accessor for ScreenSharingSpectatorViewController());
  v4 = a1;
  v5 = [v3 init];
  *&v1[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_containerViewController] = v5;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ScreenSharingSpectatorRootViewController();
  v6 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  [v9 addObserver:v8 selector:"pipStateDidChangeNotification:" name:@"PHPIPControllerStateDidChangeNotification" object:0];

  v10 = *&v8[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_containerViewController];
  ScreenSharingSpectatorViewController.screenInfoDidChangeSubject.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10014EA98(&qword_1003AF3D8, &unk_1003002F0);
  sub_10021EFF0();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v8;
}

void sub_10021E48C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController;
    [*(Strong + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController) updatePIPSize];
    v5 = *&v3[v4];
    [v5 updatePIPFrame];
  }
}

void sub_10021E540()
{
  *(v0 + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10021E5DC()
{
  v39.receiver = v0;
  v39.super_class = type metadata accessor for ScreenSharingSpectatorRootViewController();
  objc_msgSendSuper2(&v39, "loadView");
  [v0 setOverrideUserInterfaceStyle:2];
  v1 = *&v0[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_containerViewController];
  v2 = sub_100006BD0();
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = sub_100006C60();
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = sub_100006BD0();
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  [v5 addSubview:v6];

  [v0 addChildViewController:v1];
  [v1 didMoveToParentViewController:v0];
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002FB360;
  v9 = sub_100006BD0();
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = sub_100006C60();
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = sub_100007768();
  *(v8 + 32) = v15;
  v16 = sub_100006BD0();
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  v19 = sub_100006C60();
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = sub_100007768();
  *(v8 + 40) = v22;
  v23 = sub_100006BD0();
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = sub_100006C60();
  if (!v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = sub_100007768();
  *(v8 + 48) = v29;
  v30 = sub_100006BD0();
  if (!v30)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = sub_100006C60();
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 bottomAnchor];

    v37 = [v32 constraintEqualToAnchor:v36];
    *(v8 + 56) = v37;
    sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v35 activateConstraints:isa];

    return;
  }

LABEL_23:
  __break(1u);
}

id sub_10021E9D8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ScreenSharingSpectatorRootViewController();
  objc_msgSendSuper2(&v3, "viewDidLoad");
  v1 = OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController;
  [*&v0[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController] updatePIPSize];
  [*&v0[v1] updatePIPFrame];
  return [v0 setNeedsStatusBarAppearanceUpdate];
}

id sub_10021EA94(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ScreenSharingSpectatorRootViewController();
  objc_msgSendSuper2(&v5, "viewDidAppear:", a1 & 1);
  v3 = OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController;
  [*&v1[OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController] updatePIPSize];
  return [*&v1[v3] updatePIPFrame];
}

void sub_10021EB54()
{
  v1 = v0;
  Notification.object.getter();
  if (!v9)
  {
    sub_10015E258(v8);
    goto LABEL_9;
  }

  sub_1000064BC(0, &qword_1003AF3D0, off_100353210);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = *(v0 + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController);
    goto LABEL_10;
  }

  v2 = OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController;
  v3 = *(v0 + OBJC_IVAR___ICSScreenSharingSpectatorRootViewController_pipController);
  if (!v7)
  {
LABEL_10:
    if (v3)
    {
      return;
    }

    v6 = 0;
    goto LABEL_12;
  }

  if (!v3)
  {

    return;
  }

  v4 = v3;
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    v6 = *(v1 + v2);
    if (v6)
    {
      v6 = [v6 pipState];
    }

LABEL_12:
    sub_10001DB7C(v6, &off_10035A4D8);
    dispatch thunk of ScreenSharingSpectatorViewController.isPipped.setter();
  }
}

id sub_10021EF24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingSpectatorRootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10021EFF0()
{
  result = qword_1003AF3E0;
  if (!qword_1003AF3E0)
  {
    sub_100155B7C(&qword_1003AF3D8, &unk_1003002F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF3E0);
  }

  return result;
}

id sub_10021F080()
{
  result = [objc_opt_self() civicBlurAvatarsEnabled];
  if (result)
  {
    return (sub_100014424() & 1);
  }

  return result;
}

id sub_10021F0D4()
{
  result = [objc_opt_self() civicBlurPosterEnabled];
  if (result)
  {
    return [objc_opt_self() isCommunicationSafetyEnabled];
  }

  return result;
}

uint64_t sub_10021F16C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10021F1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10021F23C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v24 = _swiftEmptyArrayStorage;
    sub_10021D81C(0, v5, 0);
    v8 = _swiftEmptyArrayStorage;
    for (i = (a3 + 32); ; ++i)
    {
      v19 = *i;

      a1(&v20, &v19);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v20;
      v11 = v21;
      v12 = v22;
      v13 = v23;
      v24 = v8;
      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        v17 = v22;
        v18 = v21;
        sub_10021D81C((v14 > 1), v15 + 1, 1);
        v12 = v17;
        v11 = v18;
        v8 = v24;
      }

      v8[2] = v15 + 1;
      v16 = &v8[6 * v15];
      v16[4] = v10;
      *(v16 + 5) = v11;
      *(v16 + 7) = v12;
      v16[9] = v13;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_10021F390(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10014EA98(&qword_1003AF418, &qword_1003003F8);
  sub_1000058E8();
  __chkstk_darwin(v5);
  v7 = (&v39 - v6);
  v39 = sub_10014EA98(&qword_1003AF420, &qword_100300400);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v9 = &v39 - v8;
  *v7 = static Alignment.center.getter();
  v7[1] = v10;
  v11 = sub_10014EA98(&qword_1003AF428, &qword_100300408);
  sub_10021F898(v1, v7 + *(v11 + 44));
  sub_100008740();
  v12 = swift_allocObject();
  sub_100006A74(v12);
  sub_10022285C(v2, &v43);
  v13 = static Alignment.center.getter();
  v14 = (v7 + *(v4 + 36));
  *v14 = sub_100222854;
  v14[1] = v12;
  v14[2] = v13;
  v14[3] = v15;
  v41 = *v2;
  LODWORD(v42) = sub_10023E2B0();
  sub_100008740();
  v16 = swift_allocObject();
  sub_100006A74(v16);
  sub_10022285C(v2, &v43);
  type metadata accessor for TUCallStatus(0);
  v18 = v17;
  v19 = sub_10022289C();
  v20 = sub_100228AC0(&qword_1003AA2A0, type metadata accessor for TUCallStatus, &unk_1002F9D28);
  View.onChange<A>(of:initial:_:)();

  sub_100008360(v7, &qword_1003AF418, &qword_1003003F8);
  v43 = *(v2 + 48);
  sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20);
  State.wrappedValue.getter();
  sub_100008740();
  v21 = swift_allocObject();
  sub_100006A74(v21);
  sub_10022285C(v2, &v43);
  *&v43 = v4;
  *(&v43 + 1) = v18;
  v44 = v19;
  v45 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v39;
  View.onChange<A>(of:initial:_:)();

  (*(v40 + 8))(v9, v22);
  LOBYTE(v12) = static Edge.Set.bottom.getter();
  *(a1 + *(sub_10014EA98(&qword_1003AF458, &qword_100300428) + 36)) = v12;
  v23 = static Alignment.center.getter();
  v25 = v24;
  sub_100221FD4(&v43);
  v26 = v43;
  LOBYTE(v9) = BYTE8(v43);
  LOBYTE(v4) = BYTE9(v43);
  sub_10014EA98(&qword_1003AF460, &qword_100300430);
  sub_100027010();
  *v27 = v26;
  *(v27 + 8) = v9;
  *(v27 + 9) = v4;
  *(v27 + 16) = v23;
  *(v27 + 24) = v25;
  KeyPath = swift_getKeyPath();
  v29 = (a1 + *(sub_10014EA98(&qword_1003AF468, &qword_100300468) + 36));
  v30 = *(sub_10014EA98(&qword_1003AF470, &qword_100300470) + 28);
  v31 = enum case for ColorScheme.dark(_:);
  type metadata accessor for ColorScheme();
  sub_100006F4C();
  (*(v32 + 104))(v29 + v30, v31);
  *v29 = KeyPath;
  v33 = static Animation.default.getter();
  LODWORD(KeyPath) = sub_10023E2B0();
  sub_10014EA98(&qword_1003AF478, &qword_100300478);
  sub_100027010();
  *v34 = v33;
  *(v34 + 8) = KeyPath;
  v35 = static Animation.default.getter();
  v43 = *(v2 + 64);
  sub_10014EA98(&qword_1003AF480, &qword_100300480);
  State.wrappedValue.getter();
  v36 = v42;
  sub_10014EA98(&qword_1003AF488, &qword_100300488);
  sub_100027010();
  *v37 = v35;
  v37[1] = v36;
  sub_10014EA98(&qword_1003AF490, &qword_100300490);
  sub_100027010();
  *v38 = 0;
  v38[1] = 0;
  v38[2] = sub_100222174;
  v38[3] = 0;
}

uint64_t sub_10021F898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10014EA98(&qword_1003AF4D8, &qword_1003004D8);
  __chkstk_darwin(v4 - 8);
  v6 = __src - v5;
  v7 = sub_10014EA98(&qword_1003AF4E0, &qword_1003004E0);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = __src - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = __src - v13;
  __chkstk_darwin(v12);
  v16 = __src - v15;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v17 = sub_10014EA98(&qword_1003AF4E8, &qword_1003004E8);
  sub_10021FB0C(a1, &v6[*(v17 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100226E60(v6, v14, &qword_1003AF4D8, &qword_1003004D8);
  memcpy(&v14[*(v8 + 44)], __src, 0x70uLL);
  sub_100226E60(v14, v16, &qword_1003AF4E0, &qword_1003004E0);
  v18 = sub_1001FD880();
  sub_10022709C(v16, v11, &qword_1003AF4E0, &qword_1003004E0);
  sub_10022709C(v11, a2, &qword_1003AF4E0, &qword_1003004E0);
  *(a2 + *(sub_10014EA98(&qword_1003AF4F0, &qword_1003004F0) + 48)) = v18;

  sub_100008360(v16, &qword_1003AF4E0, &qword_1003004E0);

  return sub_100008360(v11, &qword_1003AF4E0, &qword_1003004E0);
}

uint64_t sub_10021FB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_10014EA98(&qword_1003AF4F8, &qword_1003004F8);
  v4 = __chkstk_darwin(v3 - 8);
  v67 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = (&v55 - v6);
  v7 = type metadata accessor for MoveTransition();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = __chkstk_darwin(v7);
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v56 = &v55 - v10;
  v60 = sub_10014EA98(&qword_1003AF500, &qword_100300500) - 8;
  __chkstk_darwin(v60);
  v12 = &v55 - v11;
  v62 = sub_10014EA98(&qword_1003AF508, &qword_100300508);
  v13 = __chkstk_darwin(v62);
  v64 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v61 = &v55 - v16;
  __chkstk_darwin(v15);
  v63 = &v55 - v17;
  v18 = sub_100220070();
  v20 = v19;
  v22 = v21;
  v55 = v23;
  v24 = sub_10014EA98(&qword_1003AF510, &qword_100300510);
  sub_1002202F0(&v12[v24[9]]);
  v25 = sub_100220A14();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_100220CBC();
  *v12 = v18;
  *(v12 + 1) = v20;
  v12[16] = v22 & 1;
  *(v12 + 3) = v55;
  v33 = &v12[v24[10]];
  *v33 = v25;
  *(v33 + 1) = v27;
  v34 = a1;
  v33[16] = v29 & 1;
  *(v33 + 3) = v31;
  v12[v24[11]] = v32;
  v35 = v24[12];
  *&v12[v35] = static Font.body.getter();
  v36 = v56;
  MoveTransition.init(edge:)();
  v37 = v58;
  v38 = v59;
  (*(v58 + 16))(v57, v36, v59);
  sub_100228AC0(&qword_1003AF518, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
  v39 = v38;
  v40 = AnyTransition.init<A>(_:)();
  (*(v37 + 8))(v36, v39);
  *&v12[*(sub_10014EA98(&qword_1003AF520, &qword_100300518) + 36)] = v40;
  v41 = static Color.black.getter();
  v42 = static Edge.Set.all.getter();
  v43 = &v12[*(v60 + 44)];
  *v43 = v41;
  v43[8] = v42;
  if (!sub_1001FD880() || (, v69 = *(v34 + 48), sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20), State.wrappedValue.getter(), v44 = 0.0, v68 == 1))
  {
    v44 = 1.0;
  }

  v45 = v61;
  sub_100226E60(v12, v61, &qword_1003AF500, &qword_100300500);
  v46 = v63;
  *(v45 + *(v62 + 36)) = v44;
  sub_100226E60(v45, v46, &qword_1003AF508, &qword_100300508);
  v47 = static HorizontalAlignment.center.getter();
  v48 = v65;
  *v65 = v47;
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  v49 = sub_10014EA98(&qword_1003AF528, &qword_100300520);
  sub_100220D4C(v34, v48 + *(v49 + 44));
  v50 = v64;
  sub_10022709C(v46, v64, &qword_1003AF508, &qword_100300508);
  v51 = v67;
  sub_10022709C(v48, v67, &qword_1003AF4F8, &qword_1003004F8);
  v52 = v66;
  sub_10022709C(v50, v66, &qword_1003AF508, &qword_100300508);
  v53 = sub_10014EA98(&qword_1003AF530, &qword_100300528);
  sub_10022709C(v51, v52 + *(v53 + 48), &qword_1003AF4F8, &qword_1003004F8);
  sub_100008360(v48, &qword_1003AF4F8, &qword_1003004F8);
  sub_100008360(v46, &qword_1003AF508, &qword_100300508);
  sub_100008360(v51, &qword_1003AF4F8, &qword_1003004F8);
  return sub_100008360(v50, &qword_1003AF508, &qword_100300508);
}

uint64_t sub_100220070()
{
  v1 = sub_10014EA98(&qword_1003AF498, &qword_100300498);
  __chkstk_darwin(v1 - 8);
  v3 = &v14[-v2];
  v4 = type metadata accessor for ClarityUIContact();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_10023E2B0() == 3 || (v15 = *(v0 + 48), sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20), State.wrappedValue.getter(), v14[15] == 1))
  {
    LocalizedStringKey.init(stringLiteral:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  else
  {
    sub_10023E310();
    sub_10023ADF0(v9, v3);

    if (sub_100006AC0(v3, 1, v4) == 1)
    {
      sub_100008360(v3, &qword_1003AF498, &qword_100300498);
      v10 = sub_10023E388();
      v12 = v11;
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v10 = ClarityUIContact.displayName.getter();
      v12 = v13;
      (*(v5 + 8))(v7, v4);
    }

    *&v15 = v10;
    *(&v15 + 1) = v12;
    sub_100028A30();
    return Text.init<A>(_:)();
  }
}

void *sub_1002202F0@<X0>(void *a1@<X8>)
{
  v37 = a1;
  v36 = type metadata accessor for ClarityUIContactAvatar();
  v32 = *(v36 - 8);
  __chkstk_darwin(v36);
  v34 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10014EA98(&qword_1003AF498, &qword_100300498);
  __chkstk_darwin(v3 - 8);
  v5 = v30 - v4;
  v6 = type metadata accessor for ClarityUIContact();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v33 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10014EA98(&qword_1003AF5C0, &qword_100300598);
  __chkstk_darwin(v35);
  v9 = (v30 - v8);
  v10 = sub_10014EA98(&qword_1003AF5C8, &qword_1003005A0);
  __chkstk_darwin(v10);
  v12 = (v30 - v11);
  v13 = sub_10014EA98(&qword_1003AF5D0, &qword_1003005A8);
  __chkstk_darwin(v13);
  v15 = v30 - v14;
  v16 = sub_10014EA98(&qword_1003AF5D8, &unk_1003005B0);
  __chkstk_darwin(v16 - 8);
  v18 = v30 - v17;
  v39 = *(v1 + 48);
  sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20);
  State.wrappedValue.getter();
  if (v38 == 1)
  {
    Image.init(systemName:)();
    v19 = enum case for Image.TemplateRenderingMode.original(_:);
    v20 = type metadata accessor for Image.TemplateRenderingMode();
    (*(*(v20 - 8) + 104))(v18, v19, v20);
    sub_100006848(v18, 0, 1, v20);
    v21 = Image.renderingMode(_:)();

    sub_100008360(v18, &qword_1003AF5D8, &unk_1003005B0);
    v22 = static Color.red.getter();
    KeyPath = swift_getKeyPath();
    *v12 = v21;
    v12[1] = KeyPath;
    v12[2] = v22;
    swift_storeEnumTagMultiPayload();

    sub_10014EA98(&qword_1003AEBA0, &unk_1002FFBA0);
    sub_1002055DC();
    sub_100228AC0(&qword_1003AF5E8, &type metadata accessor for ClarityUIContactAvatar, &protocol conformance descriptor for ClarityUIContactAvatar);
    _ConditionalContent<>.init(storage:)();
    sub_10022709C(v15, v9, &qword_1003AF5D0, &qword_1003005A8);
    swift_storeEnumTagMultiPayload();
    sub_1002270E4();
    _ConditionalContent<>.init(storage:)();

    return sub_100008360(v15, &qword_1003AF5D0, &qword_1003005A8);
  }

  else
  {
    v30[1] = v13;
    v25 = v36;
    sub_10023E310();
    sub_10023ADF0(v26, v5);

    if (sub_100006AC0(v5, 1, v6) == 1)
    {
      sub_100008360(v5, &qword_1003AF498, &qword_100300498);
      *v9 = Image.init(systemName:)();
      swift_storeEnumTagMultiPayload();
      sub_1002270E4();
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v27 = v31;
      (*(v31 + 32))(v33, v5, v6);
      v28 = v34;
      ClarityUIContact.avatar.getter();
      v29 = v32;
      (*(v32 + 16))(v12, v28, v25);
      swift_storeEnumTagMultiPayload();
      sub_10014EA98(&qword_1003AEBA0, &unk_1002FFBA0);
      sub_1002055DC();
      sub_100228AC0(&qword_1003AF5E8, &type metadata accessor for ClarityUIContactAvatar, &protocol conformance descriptor for ClarityUIContactAvatar);
      _ConditionalContent<>.init(storage:)();
      sub_10022709C(v15, v9, &qword_1003AF5D0, &qword_1003005A8);
      swift_storeEnumTagMultiPayload();
      sub_1002270E4();
      _ConditionalContent<>.init(storage:)();
      sub_100008360(v15, &qword_1003AF5D0, &qword_1003005A8);
      (*(v29 + 8))(v34, v25);
      return (*(v27 + 8))(v33, v6);
    }
  }
}

uint64_t sub_100220A14()
{
  v1 = sub_10014EA98(&qword_1003AF498, &qword_100300498);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2];
  v4 = type metadata accessor for ClarityUIContact();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v0 + 48);
  sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20);
  State.wrappedValue.getter();
  if (v15[15] == 1)
  {
    goto LABEL_10;
  }

  v8 = sub_10023E2B0();
  if (v8 == 4)
  {
    goto LABEL_10;
  }

  if (v8 != 3)
  {
    sub_100222260(v8);
LABEL_10:
    LocalizedStringKey.init(stringLiteral:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  sub_10023E310();
  sub_10023ADF0(v9, v3);

  if (sub_100006AC0(v3, 1, v4) == 1)
  {
    sub_100008360(v3, &qword_1003AF498, &qword_100300498);
    v10 = sub_10023E388();
    v12 = v11;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v10 = ClarityUIContact.displayName.getter();
    v12 = v13;
    (*(v5 + 8))(v7, v4);
  }

  *&v16 = v10;
  *(&v16 + 1) = v12;
  sub_100028A30();
  return Text.init<A>(_:)();
}

BOOL sub_100220CBC()
{
  sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20);
  State.wrappedValue.getter();
  if (v3)
  {
    return 1;
  }

  v0 = sub_10023E2B0();
  return (v0 - 3) < 2 || v0 == 1 && sub_1002221FC();
}

uint64_t sub_100220D4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_10014EA98(&qword_1003AF538, &qword_100300530);
  __chkstk_darwin(v3 - 8);
  v5 = &v49[-v4];
  v59 = sub_10014EA98(&qword_1003AF540, &qword_100300538);
  v6 = __chkstk_darwin(v59);
  v63 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v10 = &v49[-v9];
  __chkstk_darwin(v8);
  v62 = &v49[-v11];
  v13 = *a1;
  v12 = a1[1];
  swift_retain_n();
  v60 = v12;

  LODWORD(v58) = sub_10023E2B0();
  v80 = *(a1 + 3);
  v65 = *(a1 + 3);
  v55 = sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20);
  State.wrappedValue.getter();
  LODWORD(v57) = LOBYTE(v64[0]);
  v14 = sub_100220CBC();
  v54 = (ClarityUIPreferences.inCallKeypadEnabled.getter() & 1) != 0 && sub_10023E3EC();
  v15 = ClarityUIPreferences.speakerOptionEnabled.getter();
  v61 = v13;
  if (v15)
  {
    v16 = sub_10023E240();
    v17 = [v16 isVideo];

    v53 = v17 ^ 1;
  }

  else
  {
    v53 = 0;
  }

  v65 = *(a1 + 1);
  v66 = *(a1 + 32);
  sub_10014EA98(&qword_1003AF548, &qword_100300540);
  Binding.projectedValue.getter();
  v51 = *(&v64[0] + 1);
  v52 = *&v64[0];
  v50 = LOBYTE(v64[1]);
  v18 = a1[5];
  v19 = swift_allocObject();
  memcpy((v19 + 16), a1, 0x98uLL);
  v20 = v18;
  sub_10022285C(a1, &v65);
  v21 = static Alignment.center.getter();
  v23 = v22;
  sub_1002213E4();
  if (sub_100220CBC())
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  v25 = a1[17];
  v26 = v5;
  v27 = v14;
  v28 = v54;
  v29 = &v10[*(v59 + 36)];
  sub_100226E60(v26, v29, &qword_1003AF538, &qword_100300530);
  *(v29 + *(sub_10014EA98(&qword_1003AF550, &qword_100300548) + 36)) = v24;
  v30 = (v29 + *(sub_10014EA98(&qword_1003AF558, &qword_100300550) + 36));
  *v30 = v21;
  v30[1] = v23;
  v31 = v60;
  *v10 = v61;
  *(v10 + 1) = v31;
  *(v10 + 4) = v58;
  *(v10 + 3) = v25;
  v10[32] = v57;
  v10[33] = v27;
  v10[34] = v28;
  v10[35] = v53;
  v32 = v51;
  *(v10 + 5) = v52;
  *(v10 + 6) = v32;
  v10[56] = v50;
  *(v10 + 8) = v20;
  *(v10 + 9) = sub_100226E58;
  *(v10 + 10) = v19;
  v33 = v10;
  v34 = v62;
  sub_100226E60(v33, v62, &qword_1003AF540, &qword_100300538);
  v59 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v35 = v75;
  v57 = v74;
  v58 = v76;
  v36 = v77;
  v60 = v78;
  v52 = v79;
  v37 = static Anchor.Source<A>.bounds.getter();
  LOBYTE(v65) = v35;
  v53 = v35;
  v54 = v36;
  v64[0] = v80;
  State.projectedValue.getter();
  v38 = *(&v65 + 1);
  v51 = v65;
  LODWORD(v55) = v66;
  v39 = swift_allocObject();
  memcpy((v39 + 16), a1, 0x98uLL);
  v40 = v34;
  v41 = v63;
  sub_10022709C(v40, v63, &qword_1003AF540, &qword_100300538);
  v42 = v41;
  v43 = v56;
  sub_10022709C(v42, v56, &qword_1003AF540, &qword_100300538);
  v44 = sub_10014EA98(&qword_1003AF560, &qword_100300558);
  v45 = *(v44 + 48);
  *&v64[0] = v59;
  *(&v64[0] + 1) = v57;
  LOBYTE(v64[1]) = v35;
  *(&v64[1] + 1) = v58;
  LOBYTE(v64[2]) = v36;
  v46 = v52;
  *(&v64[2] + 1) = v60;
  *&v64[3] = v52;
  *(&v64[3] + 1) = v37;
  *&v64[4] = sub_100228E7C;
  *(&v64[4] + 1) = 0;
  memcpy((v43 + v45), v64, 0x50uLL);
  v47 = v43 + *(v44 + 64);
  *v47 = v51;
  *(v47 + 8) = v38;
  *(v47 + 16) = v55;
  *(v47 + 24) = v61;
  *(v47 + 32) = sub_100226F24;
  *(v47 + 40) = v39;
  sub_10022285C(a1, &v65);
  sub_10022709C(v64, &v65, &qword_1003AF568, &qword_100300560);

  sub_100008360(v62, &qword_1003AF540, &qword_100300538);

  *&v65 = v59;
  *(&v65 + 1) = v57;
  v66 = v53;
  v67 = v58;
  v68 = v54;
  v69 = v60;
  v70 = v46;
  v71 = v37;
  v72 = sub_100228E7C;
  v73 = 0;
  sub_100008360(&v65, &qword_1003AF568, &qword_100300560);
  return sub_100008360(v63, &qword_1003AF540, &qword_100300538);
}

void sub_100221364()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_10023E240();
  [v0 disconnectCall:v1];
}

void *sub_1002213E4()
{
  v2 = v1;
  v3 = sub_10014EA98(&qword_1003AF578, &qword_100300570);
  __chkstk_darwin(v3);
  v5 = v18 - v4;
  v6 = sub_10014EA98(&qword_1003AF580, &qword_100300578);
  __chkstk_darwin(v6);
  v8 = v18 - v7;
  v9 = sub_10023E2B0();
  if (sub_100222260(v9))
  {
    static Material.thin.getter();
    *&v8[*(sub_10014EA98(&qword_1003AF5A8, &qword_100300588) + 56)] = 256;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v10 = &v8[*(sub_10014EA98(&qword_1003AF598, &qword_100300580) + 36)];
    v11 = v18[1];
    *v10 = v18[0];
    *(v10 + 1) = v11;
    *(v10 + 2) = v18[2];
    v12 = static Alignment.center.getter();
    v14 = v13;
    v15 = &v8[*(v6 + 36)];
    sub_100222310(0xD000000000000017, 0x80000001002AD590, v2);
    v16 = &v15[*(sub_10014EA98(&qword_1003AF5B8, &qword_100300590) + 36)];
    *v16 = v12;
    v16[1] = v14;
    sub_10022709C(v8, v5, &qword_1003AF580, &qword_100300578);
    swift_storeEnumTagMultiPayload();
    sub_100226F2C();
    _ConditionalContent<>.init(storage:)();
    return sub_100008360(v8, &qword_1003AF580, &qword_100300578);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100226F2C();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100221668(uint64_t a1, __n128 a2)
{
  if (sub_10023E2B0() == 3)
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = sub_10023E240();
    [v2 disconnectCall:v3];
  }

  else
  {
    sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20);
    State.wrappedValue.setter();
  }
}

void *sub_10022173C(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for ContactBackground(0);
  __chkstk_darwin(v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10014EA98(&qword_1003AF4B8, &qword_1003004C8);
  __chkstk_darwin(v8);
  v10 = &v21[-v9];
  v11 = *a1;
  v12 = *a2;

  v13 = sub_10023E240();
  v14 = [v13 isVideo];

  if (v14)
  {

    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    memcpy((v15 + 24), a2, 0x98uLL);
    *v10 = sub_100226E2C;
    v10[1] = v15;
    swift_storeEnumTagMultiPayload();

    sub_10022285C(a2, v21);
    sub_10014EA98(&qword_1003AF4C0, &qword_1003004D0);
    sub_100027E08(&qword_1003AF4C8, &qword_1003AF4C0, &qword_1003004D0, &protocol conformance descriptor for GeometryReader<A>);
    sub_100228AC0(&qword_1003AF4D0, type metadata accessor for ContactBackground, &unk_100300868);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_10023E310();
    sub_10023ADF0(v17, v7 + v5[5]);

    *v7 = v12;
    *(v7 + v5[6]) = 0x404E000000000000;
    v18 = v5[7];
    *(v7 + v18) = static Color.black.getter();
    v19 = v5[8];
    static Color.black.getter();
    v20 = Color.opacity(_:)();

    *(v7 + v19) = v20;
    sub_100226D6C(v7, v10);
    swift_storeEnumTagMultiPayload();
    sub_10014EA98(&qword_1003AF4C0, &qword_1003004D0);
    sub_100027E08(&qword_1003AF4C8, &qword_1003AF4C0, &qword_1003004D0, &protocol conformance descriptor for GeometryReader<A>);
    sub_100228AC0(&qword_1003AF4D0, type metadata accessor for ContactBackground, &unk_100300868);
    _ConditionalContent<>.init(storage:)();
    return sub_100226DD0(v7);
  }
}

uint64_t sub_100221A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v15[2] = a3;
  v15[3] = a1;
  sub_10021F23C(sub_100226E38, v15, a2);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 48 * v6);
    v8 = *(v7 - 2);
    v9 = *(v7 - 1);
    v10 = *v7;
    v11 = v7[1];
    v12 = v7[2];
    v13 = v7[3];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  *a4 = v8;
  a4[1] = v9;
  a4[2] = v10;
  a4[3] = v11;
  a4[4] = v12;
  a4[5] = v13;
  return result;
}

uint64_t sub_100221B4C@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for CGRect(0);
  GeometryProxy.subscript.getter();
  Height = CGRectGetHeight(v10);
  GeometryProxy.subscript.getter();
  v6 = CGRectGetHeight(v9);
  sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20);
  State.wrappedValue.getter();
  v7 = 1.0;
  if (LOBYTE(v9.origin.x))
  {
    v7 = 0.5;
  }

  *a3 = *a2;
  *(a3 + 8) = Height;
  *(a3 + 16) = 0;
  *(a3 + 24) = v6;
  *(a3 + 32) = 0;
  *(a3 + 40) = v7;
}

uint64_t sub_100221C74(int a1, int a2)
{
  v3 = v2;
  v6 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v10 = v2[8];
  v9 = v2[9];
  v23 = v9;
  v24[0] = v10;
  v20 = v10;
  v21 = v9;
  sub_10022709C(v24, &v22, &qword_1003AC8A0, &qword_1002FD410);
  sub_10022709C(&v23, &v22, &qword_1003AF4B0, &unk_1003004A8);
  sub_10022709C(v24, &v22, &qword_1003AC8A0, &qword_1002FD410);
  sub_10022709C(&v23, &v22, &qword_1003AF4B0, &unk_1003004A8);
  sub_10014EA98(&qword_1003AF480, &qword_100300480);
  v11 = State.wrappedValue.getter();
  if (v22)
  {
    sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
    Task.cancel()();
  }

  if (a1 != 3 || a2 != 1)
  {
    sub_100008360(v24, &qword_1003AC8A0, &qword_1002FD410);
    sub_100008360(&v23, &qword_1003AF4B0, &unk_1003004A8);
LABEL_10:
    v20 = v10;
    v21 = v9;
    v22 = 0;
    goto LABEL_11;
  }

  v13 = sub_100222260(v11);
  sub_100008360(v24, &qword_1003AC8A0, &qword_1002FD410);
  sub_100008360(&v23, &qword_1003AF4B0, &unk_1003004A8);
  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

  v14 = type metadata accessor for TaskPriority();
  sub_100006848(v8, 1, 1, v14);
  type metadata accessor for MainActor();
  sub_10022285C(v3, &v20);
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  memcpy(v16 + 4, v3, 0x98uLL);
  v17 = sub_10016ECCC();
  v20 = v10;
  v21 = v9;
  v22 = v17;
LABEL_11:
  State.wrappedValue.setter();
  sub_100008360(v24, &qword_1003AC8A0, &qword_1002FD410);
  return sub_100008360(&v23, &qword_1003AF4B0, &unk_1003004A8);
}

void sub_100221F78(uint64_t a1)
{
  sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20);
  State.wrappedValue.getter();
  sub_1001FD5BC(v1);
}

void *sub_100221FD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10014EA98(&qword_1003AF498, &qword_100300498);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  sub_10023E310();
  sub_10023ADF0(v5, v4);

  v6 = type metadata accessor for ClarityUIContact();
  v7 = sub_100006AC0(v4, 1, v6);
  sub_100008360(v4, &qword_1003AF498, &qword_100300498);
  if (v7 == 1)
  {
    v8 = sub_10023E240();
    v9 = [v8 isVideo];

    if ((v9 & 1) == 0)
    {
      if (!sub_1001FD880())
      {
        v15 = static Color.gray.getter();
        v16 = static Edge.Set.all.getter();
        v17 = v15;
        v18 = v16;
        v19 = 1;
        goto LABEL_6;
      }
    }
  }

  v10 = static Color.black.getter();
  v11 = static Edge.Set.all.getter();
  v17 = v10;
  v18 = v11;
  v19 = 0;
LABEL_6:
  sub_10014EA98(&qword_1003AF4A0, &qword_1003004A0);
  sub_100222988();
  result = _ConditionalContent<>.init(storage:)();
  v13 = v21;
  v14 = v22;
  *a1 = v20;
  *(a1 + 8) = v13;
  *(a1 + 9) = v14;
  return result;
}

void sub_100222174()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 videoDeviceController];

  [v1 stopPreview];
}

BOOL sub_1002221FC()
{
  sub_10014EA98(&qword_1003AF480, &qword_100300480);
  State.wrappedValue.getter();
  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t sub_100222260(uint64_t a1)
{
  v1 = sub_10023E240();
  v2 = [v1 isVideo];

  if ((v2 & 1) != 0 || (ClarityUIPreferences.inCallKeypadEnabled.getter() & 1) != 0 && sub_10023E3EC())
  {
    return 0;
  }

  if ((ClarityUIPreferences.speakerOptionEnabled.getter() & 1) == 0)
  {
    return 1;
  }

  v4 = sub_10023E240();
  v3 = [v4 isVideo];

  return v3;
}

uint64_t sub_100222310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);

  Image.init(systemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  LocalizedStringKey.init(stringInterpolation:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  sub_1001AD540(v6, v8, v10 & 1);

  sub_10023E2B0();
  static Animation.linear(duration:)();
  View.repeatingOpacity(from:to:animation:)();

  sub_1001AD540(v11, v13, v15 & 1);
}

uint64_t sub_1002224FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = *(a4 + 128);
  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v4;
  v7[1] = sub_1002225B4;

  return static Task<>.sleep(nanoseconds:)(v6);
}

uint64_t sub_1002225B4()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1002227AC;
  }

  else
  {
    v4 = sub_100222710;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100222710()
{
  v1 = *(v0 + 40);

  *(v0 + 16) = *(v1 + 64);
  *(v0 + 32) = 0;
  sub_10014EA98(&qword_1003AF480, &qword_100300480);
  State.wrappedValue.setter();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002227AC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10022289C()
{
  result = qword_1003AF430;
  if (!qword_1003AF430)
  {
    sub_100155B7C(&qword_1003AF418, &qword_1003003F8);
    sub_100027E08(&qword_1003AF438, &qword_1003AF440, &qword_100300410, &protocol conformance descriptor for ZStack<A>);
    sub_100027E08(&qword_1003AF448, &qword_1003AF450, &unk_100300418, &protocol conformance descriptor for _BackgroundPreferenceModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF430);
  }

  return result;
}

unint64_t sub_100222988()
{
  result = qword_1003AF4A8;
  if (!qword_1003AF4A8)
  {
    sub_100155B7C(&qword_1003AF4A0, &qword_1003004A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF4A8);
  }

  return result;
}

uint64_t sub_100222A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = sub_100155B7C(&qword_1003AF928, &unk_1003009C8);
  v3 = *(a1 + 16);
  v4 = sub_100027E08(&qword_1003AF930, &qword_1003AF928, &unk_1003009C8, &protocol conformance descriptor for VStack<A>);
  v5 = *(a1 + 24);
  v35[0] = v22;
  v35[1] = v3;
  v35[2] = v4;
  v35[3] = v5;
  v6 = type metadata accessor for ClarityUITitleHeader(0, v35);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  sub_100155B7C(&qword_1003AE898, &qword_1002FF7F0);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  v30 = v3;
  v31 = v5;
  v32 = v23;
  v26 = v3;
  v27 = v5;
  v28 = v23;
  sub_1001EF6FC(sub_100228684, v29, sub_100228690, v25, v22, v3, v4, v5);
  WitnessTable = swift_getWitnessTable();
  View.zIndex(_:)();
  (*(v7 + 8))(v9, v6);
  v18 = sub_100027E08(&qword_1003AE890, &qword_1003AE898, &qword_1002FF7F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v33 = WitnessTable;
  v34 = v18;
  swift_getWitnessTable();
  sub_1001F0504();
  v19 = *(v11 + 8);
  v19(v14, v10);
  sub_1001F0504();
  return (v19)(v16, v10);
}

void *sub_100222D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = static HorizontalAlignment.leading.getter();
  v15 = 1;
  sub_100222E20(a1, __src, a2, a3, v9);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v17, __src, sizeof(v17));
  sub_10022709C(__dst, v12, &qword_1003AF938, &qword_1003009D8);
  sub_100008360(v17, &qword_1003AF938, &qword_1003009D8);
  memcpy(&v14[7], __dst, 0x48uLL);
  v10 = v15;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v10;
  return memcpy((a4 + 17), v14, 0x4FuLL);
}

uint64_t sub_100222E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = type metadata accessor for CallTitleHeader(0, a3, a4, a5);
  v12 = Text.font(_:)();
  v16 = v12;
  v17 = v13;
  v18 = *(a1 + *(v11 + 44)) == 0;
  v19 = v14 & 1;
  v20 = 0.0;
  if (!v18)
  {
    v20 = 1.0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14 & 1;
  *(a2 + 56) = v15;
  *(a2 + 64) = v20;
  sub_1001AD550(v7, v8, v9);

  sub_1001AD550(v7, v8, v9);

  sub_1001AD550(v16, v17, v19);

  sub_1001AD540(v16, v17, v19);

  sub_1001AD540(v7, v8, v9);
}

uint64_t sub_100222F78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CallTitleHeader(0, v6, v7, v8);
  sub_1001F0504();
  sub_1001F0504();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_100223074()
{
  v1 = sub_10014EA98(&qword_1003AF818, &qword_100300910);
  __chkstk_darwin(v1);
  v3 = &v13[-v2];
  v4 = *(v0 + 24);
  *v3 = static HorizontalAlignment.center.getter();
  *(v3 + 1) = v4;
  v3[16] = 0;
  v5 = sub_10014EA98(&qword_1003AF820, &qword_100300918);
  sub_1002231C4(v0, &v3[*(v5 + 44)]);
  static ClarityUIMetrics.componentHorizontalPadding.getter();
  v6 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v7 = &v3[*(v1 + 36)];
  *v7 = v6;
  *(v7 + 1) = v8;
  *(v7 + 2) = v9;
  *(v7 + 3) = v10;
  *(v7 + 4) = v11;
  v7[40] = 0;
  v13[15] = 0;
  sub_100228294();
  sub_10022834C();
  View.buttonStyle<A>(_:)();
  return sub_100008360(v3, &qword_1003AF818, &qword_100300910);
}

uint64_t sub_1002231C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v127 = sub_10014EA98(&qword_1003AF848, &qword_100300928);
  __chkstk_darwin(v127);
  v118 = &v95 - v3;
  v117 = sub_10014EA98(&qword_1003AF850, &qword_100300930);
  __chkstk_darwin(v117);
  v109 = &v95 - v4;
  v5 = sub_10014EA98(&qword_1003AF858, &qword_100300938);
  v101 = *(v5 - 8);
  __chkstk_darwin(v5);
  v100 = &v95 - v6;
  v7 = sub_10014EA98(&qword_1003AF860, &qword_100300940);
  v8 = __chkstk_darwin(v7 - 8);
  v104 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v111 = &v95 - v10;
  v110 = sub_10014EA98(&qword_1003AF868, &qword_100300948);
  v99 = *(v110 - 8);
  __chkstk_darwin(v110);
  v98 = &v95 - v11;
  v12 = sub_10014EA98(&qword_1003AF870, &qword_100300950);
  v13 = __chkstk_darwin(v12 - 8);
  v107 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v95 - v15;
  v103 = sub_10014EA98(&qword_1003AF878, &qword_100300958);
  v97 = *(v103 - 8);
  __chkstk_darwin(v103);
  v96 = &v95 - v16;
  v17 = sub_10014EA98(&qword_1003AF880, &qword_100300960);
  v18 = __chkstk_darwin(v17 - 8);
  v105 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v114 = &v95 - v20;
  v21 = sub_10014EA98(&qword_1003AF888, &qword_100300968);
  v22 = __chkstk_darwin(v21 - 8);
  v116 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v119 = &v95 - v24;
  v113 = sub_10014EA98(&qword_1003AF890, &qword_100300970);
  v25 = *(v113 - 8);
  __chkstk_darwin(v113);
  v102 = &v95 - v26;
  v27 = sub_10014EA98(&qword_1003AF898, &qword_100300978);
  v28 = __chkstk_darwin(v27 - 8);
  v115 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v95 - v30;
  v120 = sub_10014EA98(&qword_1003AF8A0, &qword_100300980);
  __chkstk_darwin(v120);
  v122 = &v95 - v32;
  v123 = sub_10014EA98(&qword_1003AF810, &qword_100300908);
  v33 = *(v123 - 8);
  __chkstk_darwin(v123);
  v112 = &v95 - v34;
  v35 = sub_10014EA98(&qword_1003AF8A8, &qword_100300988);
  v36 = __chkstk_darwin(v35 - 8);
  v126 = &v95 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v95 - v38;
  v40 = sub_10014EA98(&qword_1003AF8B0, &qword_100300990);
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v95 - v42;
  v44 = sub_10014EA98(&qword_1003AF8B8, &qword_100300998);
  v45 = __chkstk_darwin(v44 - 8);
  v124 = &v95 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v49 = &v95 - v48;
  v50 = *(a1 + 16);
  v121 = &v95 - v48;
  v108 = v5;
  if (v50 == 4)
  {
    __chkstk_darwin(v47);
    *(&v95 - 2) = a1;
    sub_100228630();
    ClarityUIButtonRowContainer.init(content:)();
    v49 = v121;
    (*(v41 + 32))(v121, v43, v40);
    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = sub_100006848(v49, v51, 1, v40);
  if (*(a1 + 32))
  {
    __chkstk_darwin(v52);
    *(&v95 - 2) = a1;
    sub_100227DF0();
    v53 = v112;
    ClarityUIButtonRowContainer.init(content:)();
    v54 = v123;
    (*(v33 + 16))(v122, v53, v123);
    swift_storeEnumTagMultiPayload();
    sub_100027E08(&qword_1003AF808, &qword_1003AF810, &qword_100300908, &protocol conformance descriptor for ClarityUIButtonRowContainer<A>);
    sub_100027E08(&qword_1003AF8D0, &qword_1003AF848, &qword_100300928, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    (*(v33 + 8))(v53, v54);
  }

  else
  {
    v55 = sub_1001FD960();
    if (v55)
    {
      __chkstk_darwin(v55);
      *(&v95 - 2) = a1;
      sub_1002285CC();
      v56 = v102;
      ClarityUIButtonRowContainer.init(content:)();
      v57 = v113;
      (*(v25 + 32))(v31, v56, v113);
      v58 = 0;
    }

    else
    {
      v58 = 1;
      v57 = v113;
    }

    v112 = v31;
    v113 = v39;
    v59 = 1;
    sub_100006848(v31, v58, 1, v57);
    if ((sub_1001FD988() & 1) == 0)
    {
      v60 = sub_1001FD974();
      if (v60)
      {
        __chkstk_darwin(v60);
        *(&v95 - 2) = a1;
        sub_100228570();
        v61 = v96;
        ClarityUIButtonRowContainer.init(content:)();
        v62 = v114;
        v63 = v61;
        v64 = v103;
        (*(v97 + 32))(v114, v63, v103);
        v65 = 0;
        v66 = v108;
        v67 = v106;
      }

      else
      {
        v65 = 1;
        v66 = v108;
        v67 = v106;
        v62 = v114;
        v64 = v103;
      }

      v68 = 1;
      v69 = sub_100006848(v62, v65, 1, v64);
      if (*(a1 + 34))
      {
        __chkstk_darwin(v69);
        *(&v95 - 2) = a1;
        sub_10014EA98(&qword_1003AF8F8, &qword_1003009C0);
        sub_100228490();
        v70 = v98;
        ClarityUIButtonRowContainer.init(content:)();
        (*(v99 + 32))(v67, v70, v110);
        v68 = 0;
      }

      v71 = v104;
      v72 = 1;
      v73 = sub_100006848(v67, v68, 1, v110);
      if (*(a1 + 35))
      {
        __chkstk_darwin(v73);
        *(&v95 - 2) = a1;
        sub_10014EA98(&qword_1003AF8E0, &qword_1003009B8);
        sub_1002283A8();
        v74 = v100;
        ClarityUIButtonRowContainer.init(content:)();
        (*(v101 + 32))(v111, v74, v66);
        v72 = 0;
      }

      v75 = v111;
      sub_100006848(v111, v72, 1, v66);
      v76 = v114;
      v77 = v105;
      sub_10022709C(v114, v105, &qword_1003AF880, &qword_100300960);
      v78 = v107;
      sub_10022709C(v67, v107, &qword_1003AF870, &qword_100300950);
      sub_10022709C(v75, v71, &qword_1003AF860, &qword_100300940);
      v79 = v109;
      sub_10022709C(v77, v109, &qword_1003AF880, &qword_100300960);
      v80 = v67;
      v81 = sub_10014EA98(&qword_1003AF8C0, &qword_1003009A0);
      sub_10022709C(v78, v79 + *(v81 + 48), &qword_1003AF870, &qword_100300950);
      sub_10022709C(v71, v79 + *(v81 + 64), &qword_1003AF860, &qword_100300940);
      sub_100008360(v75, &qword_1003AF860, &qword_100300940);
      sub_100008360(v80, &qword_1003AF870, &qword_100300950);
      sub_100008360(v76, &qword_1003AF880, &qword_100300960);
      sub_100008360(v71, &qword_1003AF860, &qword_100300940);
      sub_100008360(v78, &qword_1003AF870, &qword_100300950);
      sub_100008360(v77, &qword_1003AF880, &qword_100300960);
      sub_100226E60(v79, v119, &qword_1003AF850, &qword_100300930);
      v59 = 0;
    }

    v82 = v119;
    sub_100006848(v119, v59, 1, v117);
    v83 = v112;
    v84 = v115;
    sub_10022709C(v112, v115, &qword_1003AF898, &qword_100300978);
    v85 = v116;
    sub_10022709C(v82, v116, &qword_1003AF888, &qword_100300968);
    v86 = v118;
    sub_10022709C(v84, v118, &qword_1003AF898, &qword_100300978);
    v87 = sub_10014EA98(&qword_1003AF8C8, &qword_1003009A8);
    sub_10022709C(v85, v86 + *(v87 + 48), &qword_1003AF888, &qword_100300968);
    sub_100008360(v85, &qword_1003AF888, &qword_100300968);
    sub_100008360(v84, &qword_1003AF898, &qword_100300978);
    sub_10022709C(v86, v122, &qword_1003AF848, &qword_100300928);
    swift_storeEnumTagMultiPayload();
    sub_100027E08(&qword_1003AF808, &qword_1003AF810, &qword_100300908, &protocol conformance descriptor for ClarityUIButtonRowContainer<A>);
    sub_100027E08(&qword_1003AF8D0, &qword_1003AF848, &qword_100300928, &protocol conformance descriptor for TupleView<A>);
    v88 = v113;
    _ConditionalContent<>.init(storage:)();
    v39 = v88;
    sub_100008360(v86, &qword_1003AF848, &qword_100300928);
    sub_100008360(v82, &qword_1003AF888, &qword_100300968);
    sub_100008360(v83, &qword_1003AF898, &qword_100300978);
    v49 = v121;
  }

  v89 = v124;
  sub_10022709C(v49, v124, &qword_1003AF8B8, &qword_100300998);
  v90 = v126;
  sub_10022709C(v39, v126, &qword_1003AF8A8, &qword_100300988);
  v91 = v125;
  sub_10022709C(v89, v125, &qword_1003AF8B8, &qword_100300998);
  v92 = sub_10014EA98(&qword_1003AF8D8, &qword_1003009B0);
  sub_10022709C(v90, v91 + *(v92 + 48), &qword_1003AF8A8, &qword_100300988);
  v93 = v91 + *(v92 + 64);
  *v93 = 0;
  *(v93 + 8) = 1;
  sub_100008360(v39, &qword_1003AF8A8, &qword_100300988);
  sub_100008360(v49, &qword_1003AF8B8, &qword_100300998);
  sub_100008360(v90, &qword_1003AF8A8, &qword_100300988);
  return sub_100008360(v89, &qword_1003AF8B8, &qword_100300998);
}

uint64_t sub_1002242F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[9];
  v3 = a1[10];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

void *sub_10022433C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10014EA98(&qword_1003AF548, &qword_100300540);
  result = Binding.projectedValue.getter();
  v5 = 1.0;
  if (*(a1 + 33))
  {
    v5 = 0.0;
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1002243C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 33);
  v3 = 1.0;
  v4 = *(a1 + 8);
  if (v2)
  {
    v3 = 0.0;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
}

void *sub_100224430()
{
  v2 = sub_10014EA98(&qword_1003AF790, &qword_1003008C8);
  __chkstk_darwin(v2);
  v4 = &v33[-1] - v3;
  v5 = sub_10014EA98(&qword_1003AF798, &qword_1003008D0);
  __chkstk_darwin(v5);
  v7 = &v33[-1] - v6;
  v9 = *v1;
  v8 = v1[1];
  LOBYTE(v6) = *(v1 + 16);
  v33[0] = *v1;
  v33[1] = v8;
  v34 = v6;
  sub_10014EA98(&qword_1003AF548, &qword_100300540);
  v10 = Binding.wrappedValue.getter();
  if (v32 == 1)
  {
    v33[0] = v9;
    v11 = swift_allocObject();
    v12 = *(v1 + 1);
    v11[1] = *v1;
    v11[2] = v12;
    v11[3] = *(v1 + 2);
    sub_100228238(v33, &v32);

    v13 = static Anchor.Source<A>.bounds.getter();
    v14 = static Color.black.getter();
    v15 = static Edge.Set.all.getter();
    *v7 = sub_100228230;
    *(v7 + 1) = v11;
    *(v7 + 2) = v13;
    *(v7 + 3) = sub_100228E7C;
    *(v7 + 4) = 0;
    *(v7 + 5) = v14;
    v7[48] = v15;
    swift_storeEnumTagMultiPayload();
    sub_10014EA98(&qword_1003AF7B8, &qword_1003008E8);
    sub_100227E44();
    sub_100228008();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    __chkstk_darwin(v10);
    *(&v32 - 2) = v1;
    sub_100227DF0();
    ClarityUIButtonRowContainer.init(content:)();
    static ClarityUIMetrics.backButtonPadding.getter();
    v17 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = &v4[*(sub_10014EA98(&qword_1003AF7A8, &qword_1003008D8) + 36)];
    *v26 = v17;
    *(v26 + 1) = v19;
    *(v26 + 2) = v21;
    *(v26 + 3) = v23;
    *(v26 + 4) = v25;
    v26[40] = 0;
    v27 = static Anchor.Source<A>.bounds.getter();
    v28 = &v4[*(sub_10014EA98(&qword_1003AF7B0, &qword_1003008E0) + 36)];
    *v28 = v27;
    v28[1] = sub_100228E7C;
    v28[2] = 0;
    v29 = static Color.black.getter();
    v30 = static Edge.Set.all.getter();
    v31 = &v4[*(v2 + 36)];
    *v31 = v29;
    v31[8] = v30;
    sub_10022709C(v4, v7, &qword_1003AF790, &qword_1003008C8);
    swift_storeEnumTagMultiPayload();
    sub_10014EA98(&qword_1003AF7B8, &qword_1003008E8);
    sub_100227E44();
    sub_100228008();
    _ConditionalContent<>.init(storage:)();
    return sub_100008360(v4, &qword_1003AF790, &qword_1003008C8);
  }
}

uint64_t sub_100224848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *(a1 + 24);
  *(a2 + 16) = v2;
}

uint64_t sub_100224890@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10014EA98(&qword_1003AF570, &qword_100300568);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002FAB60;
  *(v4 + 32) = a1;
  *a2 = v4;
}

uint64_t sub_100224938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v21 = a2;
  v20 = type metadata accessor for BorderedProminentButtonStyle();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10014EA98(&qword_1003AA9C0, &qword_1002FACB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - v7;

  sub_10014EA98(&qword_1003AA9E0, &unk_1002FACC0);
  v9 = sub_100155B7C(&qword_1003AA9E8, &qword_100300D70);
  v10 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v11 = sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8, &qword_100300D70, &protocol conformance descriptor for Label<A, B>);
  v12 = sub_100228AC0(&qword_1003AA9F8, &type metadata accessor for MultimodalNavigationBackButtonLabelStyle, &protocol conformance descriptor for MultimodalNavigationBackButtonLabelStyle);
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  sub_100027E08(&qword_1003AA9C8, &qword_1003AA9C0, &qword_1002FACB0, &protocol conformance descriptor for Button<A>);
  sub_100228AC0(&qword_1003AF990, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v14 = v20;
  v13 = v21;
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v4, v14);
  (*(v6 + 8))(v8, v5);
  v15 = static Color.green.getter();
  KeyPath = swift_getKeyPath();
  result = sub_10014EA98(&qword_1003AF998, &unk_100300DC0);
  v18 = (v13 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v15;
  return result;
}

void sub_100224C8C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_10023E240();
  [v0 answerCall:v1];
}

uint64_t sub_100224D0C()
{
  v0 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10014EA98(&qword_1003AA9E8, &qword_100300D70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  Label.init(title:icon:)();
  MultimodalNavigationBackButtonLabelStyle.init()();
  sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8, &qword_100300D70, &protocol conformance descriptor for Label<A, B>);
  sub_100228AC0(&qword_1003AA9F8, &type metadata accessor for MultimodalNavigationBackButtonLabelStyle, &protocol conformance descriptor for MultimodalNavigationBackButtonLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100224F60@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100224FD8@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100225020(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;

  sub_10014EA98(&qword_1003AA9E8, &qword_100300D70);
  sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8, &qword_100300D70, &protocol conformance descriptor for Label<A, B>);

  return Button.init(action:label:)();
}

uint64_t sub_1002251CC@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100225244@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100225290(uint64_t a1)
{
  v1 = sub_10014EA98(&qword_1003AF980, &qword_100300DB8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6[-v3];

  sub_10014EA98(&qword_1003AA9E8, &qword_100300D70);
  sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8, &qword_100300D70, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  v6[15] = sub_10024B11C() & 1;
  sub_100027E08(&qword_1003AF988, &qword_1003AF980, &qword_100300DB8, &protocol conformance descriptor for Button<A>);
  sub_10022834C();
  View.buttonStyle<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1002254F0@<X0>(uint64_t a2@<X8>)
{
  sub_10024B11C();
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100225588@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1002255D0(void *a1)
{
  v2 = sub_10014EA98(&qword_1003AF980, &qword_100300DB8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  *(swift_allocObject() + 16) = a1;
  v9 = a1;
  v6 = a1;
  sub_10014EA98(&qword_1003AA9E8, &qword_100300D70);
  sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8, &qword_100300D70, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  v10 = sub_1001FD988() & 1;
  sub_100027E08(&qword_1003AF988, &qword_1003AF980, &qword_100300DB8, &protocol conformance descriptor for Button<A>);
  sub_10022834C();
  View.buttonStyle<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100225840@<X0>(uint64_t a1@<X8>)
{
  sub_1001FD988();
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1002258D8@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100225920(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  sub_10014EA98(&qword_1003AA9E8, &qword_100300D70);
  sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8, &qword_100300D70, &protocol conformance descriptor for Label<A, B>);

  return Button.init(action:label:)();
}

uint64_t sub_100225A5C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100225AD4@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100225B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10014EA98(&qword_1003AA9C0, &qword_1002FACB0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-v8];
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v17 = a1;
  v18 = a2;
  v19 = a3;

  sub_10014EA98(&qword_1003AA9E0, &unk_1002FACC0);
  v11 = sub_100155B7C(&qword_1003AA9E8, &qword_100300D70);
  v12 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v13 = sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8, &qword_100300D70, &protocol conformance descriptor for Label<A, B>);
  v14 = sub_100228AC0(&qword_1003AA9F8, &type metadata accessor for MultimodalNavigationBackButtonLabelStyle, &protocol conformance descriptor for MultimodalNavigationBackButtonLabelStyle);
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  sub_100027E08(&qword_1003AA9C8, &qword_1003AA9C0, &qword_1002FACB0, &protocol conformance descriptor for Button<A>);
  sub_100228988();
  View.buttonStyle<A>(_:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100225DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v7 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10014EA98(&qword_1003AA9E8, &qword_100300D70);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v16 - v13;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  Label.init(title:icon:)();
  MultimodalNavigationBackButtonLabelStyle.init()();
  sub_100027E08(&qword_1003AA9F0, &qword_1003AA9E8, &qword_100300D70, &protocol conformance descriptor for Label<A, B>);
  sub_100228AC0(&qword_1003AA9F8, &type metadata accessor for MultimodalNavigationBackButtonLabelStyle, &protocol conformance descriptor for MultimodalNavigationBackButtonLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100226010@<X0>(uint64_t a1@<X8>)
{
  sub_10023E2B0();
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1002260AC@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100226100@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a3;
  v4 = type metadata accessor for PlatterButtonType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ButtonStyleConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10014EA98(&qword_1003AF968, &qword_100300D78);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - v14;
  (*(v9 + 16))(v11, v22, v8);
  v24 = a2;
  if (a2)
  {
    static Color.black.getter();
  }

  else
  {
    static Color.white.getter();
  }

  (*(v5 + 104))(v7, enum case for PlatterButtonType.roundedRectangle(_:), v4);
  sub_1002289E8();
  PlatterButtonStyleView.init(configuration:background:foregroundColor:type:includesPadding:)();
  v16 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v18 = v23;
  (*(v13 + 32))(v23, v15, v12);
  result = sub_10014EA98(&qword_1003AF978, &qword_100300DB0);
  v20 = (v18 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = v16;
  return result;
}

void sub_100226398(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Material();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    static Color.white.getter();
    Color._apply(to:)();
  }

  else
  {
    static Material.ultraThin.getter();
    Material._apply(to:)();
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1002264F4(uint64_t a1)
{
  v2 = type metadata accessor for PlatterButtonType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ButtonStyleConfiguration();
  __chkstk_darwin(v6);
  (*(v8 + 16))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v10[1] = static Color.red.getter();
  static Color.white.getter();
  (*(v3 + 104))(v5, enum case for PlatterButtonType.ultraRoundedRectangle(_:), v2);
  return PlatterButtonStyleView.init(configuration:background:foregroundColor:type:includesPadding:)();
}

void *sub_10022669C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10014EA98(&qword_1003AF498, &qword_100300498);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ClarityUIContact();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10023E240();
  v15 = [v14 isVideo];

  if (v15)
  {
    goto LABEL_7;
  }

  v16 = type metadata accessor for ContactBackground(0);
  sub_10022709C(v2 + *(v16 + 20), v9, &qword_1003AF498, &qword_100300498);
  if (sub_100006AC0(v9, 1, v10) == 1)
  {
    sub_100008360(v9, &qword_1003AF498, &qword_100300498);
LABEL_7:
    v23 = static Color.clear.getter();
    __src[0] = 1;
    v34[0] = v23;
    BYTE1(v34[8]) = 1;
    sub_10014EA98(&qword_1003AF780, &unk_1003008B8);
    sub_100227D5C();
    _ConditionalContent<>.init(storage:)();
    return memcpy(v27, __dst, 0x42uLL);
  }

  (*(v11 + 32))(v13, v9, v10);
  if (!ClarityUIContact.fullImage.getter())
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_7;
  }

  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v26 = Image.resizable(capInsets:resizingMode:)();
  (*(v4 + 8))(v6, v3);
  v17 = ClarityUIContact.preferredContentMode.getter();
  ClarityUIContact.preferredContentMode.getter();
  static ContentMode.== infix(_:_:)();
  v18 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v33 = 1;
  v30 = 0;
  *__src = v26;
  *&__src[8] = 0;
  __src[16] = 1;
  __src[17] = v17 & 1;
  *&__src[18] = *&v31[7];
  *&__src[22] = v32;
  __src[24] = v18;
  *&__src[25] = *v31;
  *&__src[28] = *&v31[3];
  *&__src[32] = v19;
  *&__src[40] = v20;
  *&__src[48] = v21;
  *&__src[56] = v22;
  __src[64] = 0;
  memcpy(__dst, __src, 0x41uLL);
  v29 = 0;
  __dst[65] = 0;
  sub_10022709C(__src, v34, &qword_1003AF780, &unk_1003008B8);
  sub_10022709C(__src, v34, &qword_1003AF780, &unk_1003008B8);
  sub_10014EA98(&qword_1003AF780, &unk_1003008B8);
  sub_100227D5C();
  _ConditionalContent<>.init(storage:)();

  sub_100008360(__src, &qword_1003AF780, &unk_1003008B8);
  sub_100008360(__src, &qword_1003AF780, &unk_1003008B8);
  (*(v11 + 8))(v13, v10);
  memcpy(__dst, v34, sizeof(__dst));
  return memcpy(v27, __dst, 0x42uLL);
}

double sub_100226BF8@<D0>(void *a1@<X8>)
{
  if (qword_1003AA0E8 != -1)
  {
    swift_once();
  }

  *a1 = qword_1003AF410;

  return result;
}

uint64_t sub_100226C70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001559CC;

  return sub_1002224FC(a1, v4, v5, v1 + 32);
}

uint64_t type metadata accessor for ContactBackground(uint64_t a1)
{
  result = qword_1003AF648;
  if (!qword_1003AF648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100226D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactBackground(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100226DD0(uint64_t a1)
{
  v2 = type metadata accessor for ContactBackground(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100226E60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100008020(a1, a2, a3, a4);
  sub_100006F4C();
  v5 = sub_1000085C0();
  v6(v5);
  return v4;
}

uint64_t sub_100226EA8()
{

  sub_100008740();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_100226F2C()
{
  result = qword_1003AF588;
  if (!qword_1003AF588)
  {
    sub_100155B7C(&qword_1003AF580, &qword_100300578);
    sub_100226FE4();
    sub_100027E08(&qword_1003AF5B0, &qword_1003AF5B8, &qword_100300590, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF588);
  }

  return result;
}

unint64_t sub_100226FE4()
{
  result = qword_1003AF590;
  if (!qword_1003AF590)
  {
    sub_100155B7C(&qword_1003AF598, &qword_100300580);
    sub_100027E08(&qword_1003AF5A0, &qword_1003AF5A8, &qword_100300588, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF590);
  }

  return result;
}

uint64_t sub_10022709C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100008020(a1, a2, a3, a4);
  sub_100006F4C();
  v5 = sub_1000085C0();
  v6(v5);
  return v4;
}

unint64_t sub_1002270E4()
{
  result = qword_1003AF5E0;
  if (!qword_1003AF5E0)
  {
    sub_100155B7C(&qword_1003AF5D0, &qword_1003005A8);
    sub_1002055DC();
    sub_100228AC0(&qword_1003AF5E8, &type metadata accessor for ClarityUIContactAvatar, &protocol conformance descriptor for ClarityUIContactAvatar);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF5E0);
  }

  return result;
}

void sub_1002271C8(uint64_t a1)
{
  type metadata accessor for ClarityUICall(319);
  if (v1 <= 0x3F)
  {
    sub_100227260(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100227260(uint64_t a1)
{
  if (!qword_1003AF658)
  {
    type metadata accessor for ClarityUIContact();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003AF658);
    }
  }
}

uint64_t sub_1002272B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002272F8(uint64_t result, int a2, int a3)
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

uint64_t sub_10022736C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002273AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100227410(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002274A4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return sub_100006AC0((result + v7 + 32) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 24);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 32) & ~v7) + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1002275EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = &a1[v10 + 32] & ~v10;

            sub_100006848(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 2) = 0;
            *(a1 + 3) = 0;
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 3) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 47) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1002277E8()
{
  result = qword_1003AF718;
  if (!qword_1003AF718)
  {
    sub_100155B7C(&qword_1003AF490, &qword_100300490);
    sub_100227874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF718);
  }

  return result;
}

unint64_t sub_100227874()
{
  result = qword_1003AF720;
  if (!qword_1003AF720)
  {
    sub_100155B7C(&qword_1003AF488, &qword_100300488);
    sub_10022792C();
    sub_100027E08(&qword_1003AF770, &qword_1003AF778, qword_100300728, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF720);
  }

  return result;
}

unint64_t sub_10022792C()
{
  result = qword_1003AF728;
  if (!qword_1003AF728)
  {
    sub_100155B7C(&qword_1003AF478, &qword_100300478);
    sub_1002279E4();
    sub_100027E08(&qword_1003AF760, &qword_1003AF768, &qword_100300720, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF728);
  }

  return result;
}

unint64_t sub_1002279E4()
{
  result = qword_1003AF730;
  if (!qword_1003AF730)
  {
    sub_100155B7C(&qword_1003AF468, &qword_100300468);
    sub_100227A9C();
    sub_100027E08(&qword_1003AF758, &qword_1003AF470, &qword_100300470, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF730);
  }

  return result;
}

unint64_t sub_100227A9C()
{
  result = qword_1003AF738;
  if (!qword_1003AF738)
  {
    sub_100155B7C(&qword_1003AF460, &qword_100300430);
    sub_100227B54();
    sub_100027E08(&qword_1003AF748, &qword_1003AF750, &qword_100300718, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF738);
  }

  return result;
}

unint64_t sub_100227B54()
{
  result = qword_1003AF740;
  if (!qword_1003AF740)
  {
    sub_100155B7C(&qword_1003AF458, &qword_100300428);
    sub_100155B7C(&qword_1003AF420, &qword_100300400);
    sub_100155B7C(&qword_1003AF418, &qword_1003003F8);
    type metadata accessor for TUCallStatus(255);
    sub_10022289C();
    sub_100228AC0(&qword_1003AA2A0, type metadata accessor for TUCallStatus, &unk_1002F9D28);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF740);
  }

  return result;
}

unint64_t sub_100227D5C()
{
  result = qword_1003AF788;
  if (!qword_1003AF788)
  {
    sub_100155B7C(&qword_1003AF780, &unk_1003008B8);
    sub_10017FA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF788);
  }

  return result;
}

unint64_t sub_100227DF0()
{
  result = qword_1003AF7A0;
  if (!qword_1003AF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF7A0);
  }

  return result;
}

unint64_t sub_100227E44()
{
  result = qword_1003AF7C0;
  if (!qword_1003AF7C0)
  {
    sub_100155B7C(&qword_1003AF7B8, &qword_1003008E8);
    sub_100227EFC();
    sub_100027E08(&qword_1003AC2E0, &qword_1003AC2E8, &qword_100300900, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF7C0);
  }

  return result;
}

unint64_t sub_100227EFC()
{
  result = qword_1003AF7C8;
  if (!qword_1003AF7C8)
  {
    sub_100155B7C(&qword_1003AF7D0, &qword_1003008F0);
    sub_100227FB4();
    sub_100027E08(&qword_1003AF7E0, &qword_1003AF7E8, &qword_1003008F8, &protocol conformance descriptor for _AnchorWritingModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF7C8);
  }

  return result;
}

unint64_t sub_100227FB4()
{
  result = qword_1003AF7D8;
  if (!qword_1003AF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF7D8);
  }

  return result;
}

unint64_t sub_100228008()
{
  result = qword_1003AF7F0;
  if (!qword_1003AF7F0)
  {
    sub_100155B7C(&qword_1003AF790, &qword_1003008C8);
    sub_1002280C0();
    sub_100027E08(&qword_1003AC2E0, &qword_1003AC2E8, &qword_100300900, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF7F0);
  }

  return result;
}

unint64_t sub_1002280C0()
{
  result = qword_1003AF7F8;
  if (!qword_1003AF7F8)
  {
    sub_100155B7C(&qword_1003AF7B0, &qword_1003008E0);
    sub_100228178();
    sub_100027E08(&qword_1003AF7E0, &qword_1003AF7E8, &qword_1003008F8, &protocol conformance descriptor for _AnchorWritingModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF7F8);
  }

  return result;
}

unint64_t sub_100228178()
{
  result = qword_1003AF800;
  if (!qword_1003AF800)
  {
    sub_100155B7C(&qword_1003AF7A8, &qword_1003008D8);
    sub_100027E08(&qword_1003AF808, &qword_1003AF810, &qword_100300908, &protocol conformance descriptor for ClarityUIButtonRowContainer<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF800);
  }

  return result;
}

unint64_t sub_100228294()
{
  result = qword_1003AF828;
  if (!qword_1003AF828)
  {
    sub_100155B7C(&qword_1003AF818, &qword_100300910);
    sub_100027E08(&qword_1003AF830, &qword_1003AF838, &qword_100300920, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF828);
  }

  return result;
}

unint64_t sub_10022834C()
{
  result = qword_1003AF840;
  if (!qword_1003AF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF840);
  }

  return result;
}

unint64_t sub_1002283A8()
{
  result = qword_1003AF8E8;
  if (!qword_1003AF8E8)
  {
    sub_100155B7C(&qword_1003AF8E0, &qword_1003009B8);
    sub_100228434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF8E8);
  }

  return result;
}

unint64_t sub_100228434()
{
  result = qword_1003AF8F0;
  if (!qword_1003AF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF8F0);
  }

  return result;
}

unint64_t sub_100228490()
{
  result = qword_1003AF900;
  if (!qword_1003AF900)
  {
    sub_100155B7C(&qword_1003AF8F8, &qword_1003009C0);
    sub_10022851C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF900);
  }

  return result;
}

unint64_t sub_10022851C()
{
  result = qword_1003AF908;
  if (!qword_1003AF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF908);
  }

  return result;
}

unint64_t sub_100228570()
{
  result = qword_1003AF910;
  if (!qword_1003AF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF910);
  }

  return result;
}

unint64_t sub_1002285CC()
{
  result = qword_1003AF918;
  if (!qword_1003AF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF918);
  }

  return result;
}

unint64_t sub_100228630()
{
  result = qword_1003AF920;
  if (!qword_1003AF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF920);
  }

  return result;
}

__n128 sub_1002286BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002286D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100228710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002287A0()
{
  result = qword_1003AF940;
  if (!qword_1003AF940)
  {
    sub_100155B7C(&qword_1003AF948, &qword_100300B48);
    sub_100227D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF940);
  }

  return result;
}

unint64_t sub_10022882C()
{
  result = qword_1003AF950;
  if (!qword_1003AF950)
  {
    sub_100155B7C(&qword_1003AF958, &qword_100300B50);
    sub_100227E44();
    sub_100228008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF950);
  }

  return result;
}

unint64_t sub_100228988()
{
  result = qword_1003AF960;
  if (!qword_1003AF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF960);
  }

  return result;
}

unint64_t sub_1002289E8()
{
  result = qword_1003AF970;
  if (!qword_1003AF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF970);
  }

  return result;
}

uint64_t sub_100228AC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_100228B18(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100228BF4()
{
  result = qword_1003AF9A0;
  if (!qword_1003AF9A0)
  {
    sub_100155B7C(&qword_1003AF978, &qword_100300DB0);
    sub_100027E08(&qword_1003AF9A8, &qword_1003AF968, &qword_100300D78, &protocol conformance descriptor for PlatterButtonStyleView<A>);
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0, &qword_1003005C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF9A0);
  }

  return result;
}

unint64_t sub_100228CD8()
{
  result = qword_1003AF9B0;
  if (!qword_1003AF9B0)
  {
    sub_100155B7C(&qword_1003AF998, &unk_100300DC0);
    sub_100155B7C(&qword_1003AA9C0, &qword_1002FACB0);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_100027E08(&qword_1003AA9C8, &qword_1003AA9C0, &qword_1002FACB0, &protocol conformance descriptor for Button<A>);
    sub_100228AC0(&qword_1003AF990, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0, &qword_1003005C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF9B0);
  }

  return result;
}

id sub_100228E88(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13InCallService11PHAssertion_cancellable;
  *&v2[OBJC_IVAR____TtC13InCallService11PHAssertion_cancellable] = 0;
  *&v2[OBJC_IVAR____TtC13InCallService11PHAssertion_reason] = a1;
  sub_100229124();
  v5 = a1;
  sub_100240354(v5);
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v6 = v5;
  *&v2[v4] = AnyCancellable.init(_:)();

  v9.receiver = v2;
  v9.super_class = type metadata accessor for PHAssertion();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

double sub_100228FE4()
{
  *(v0 + OBJC_IVAR____TtC13InCallService11PHAssertion_cancellable) = 0;

  return result;
}

id sub_100229080(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PHAssertion();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100229124()
{
  result = qword_1003AF9F0;
  if (!qword_1003AF9F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AF9F0);
  }

  return result;
}

void *sub_1002292A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_transcriptionProgress);
  v2 = v1;
  return v1;
}

id sub_1002293C8(char a1, char a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_anyAccountSubscribed] = a1;
  v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_online] = a2;
  v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_isMessageWaiting] = a3;
  *&v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_storageUsage] = a4;
  v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_transcriptionEnabled] = a5;
  *&v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_transcriptionProgress] = a6;
  *&v7[OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_accounts] = a7;
  v17.receiver = v7;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_10022963C()
{
  _StringGuts.grow(_:)(126);
  v1._countAndFlagsBits = 0xD000000000000035;
  v1._object = 0x80000001002AD9A0;
  String.append(_:)(v1);
  if (*(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_anyAccountSubscribed))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_anyAccountSubscribed))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 0x656E696C6E6F2029;
  v5._object = 0xEB0000000028203ALL;
  String.append(_:)(v5);
  if (*(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_online))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_online))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x80000001002AD9E0;
  String.append(_:)(v9);
  if (*(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_isMessageWaiting))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_isMessageWaiting))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._object = 0x80000001002ADA00;
  v13._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v13);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x6E756F6363612029;
  v15._object = 0xED000028203A7374;
  String.append(_:)(v15);
  type metadata accessor for VoicemailAccount(0);
  v16._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

uint64_t sub_10022986C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001002AC360 == a2;
  if (v3 || (sub_100006DD0(0xD000000000000014, 0x80000001002AC360) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E696C6E6FLL && a2 == 0xE600000000000000;
    if (v6 || (sub_100006DD0(0x656E696C6E6FLL, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001002A4E10 == a2;
      if (v7 || (sub_100006DD0(0xD000000000000010, 0x80000001002A4E10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = sub_100025C34();
        v10 = a1 == v8 && a2 == v9;
        if (v10 || (sub_100006DD0(v8, v9) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0xD000000000000014 && 0x80000001002AC390 == a2;
          if (v11 || (sub_100006DD0(0xD000000000000014, 0x80000001002AC390) & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v13 = sub_100006DD0(0x73746E756F636361, 0xE800000000000000);

            if (v13)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100229A00(char a1)
{
  result = 0x656E696C6E6FLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = sub_100025C34();
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x73746E756F636361;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_100229AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10022986C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100229AF4(uint64_t a1)
{
  v2 = sub_10022A1F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100229B30(uint64_t a1)
{
  v2 = sub_10022A1F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100229B6C(void *a1)
{
  v3 = v1;
  v5 = sub_10014EA98(&qword_1003AFA58, &unk_100300F10);
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_100008878(a1, a1[3]);
  sub_10022A1F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v26 = 0;
    sub_10000C674();
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = 1;
    sub_10000C674();
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = 2;
    sub_10000C674();
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = 3;
    sub_10000C674();
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = 4;
    sub_10000C674();
    HIDWORD(v17) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10014EA98(&qword_1003AC888, &qword_1002FD2A0);
    v21 = 5;
    sub_10022A248(&qword_1003AFA68, &qword_1003AFA70, &unk_1002FB200, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v20;
    v16 = objc_allocWithZone(v3);
    v11 = sub_1002293C8(v12 & 1, v13 & 1, v19 & 1, v18, BYTE4(v17) & 1, 0, v15);
    (*(v7 + 8))(v10, v5);
  }

  sub_100005B2C(a1);
  return v11;
}

uint64_t sub_100229E24(void *a1)
{
  v3 = v1;
  v5 = sub_10014EA98(&qword_1003AFA78, &unk_100300F20);
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_100008878(a1, a1[3]);
  sub_10022A1F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  sub_100007A78();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v17 = 1;
    sub_100007A78();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = 2;
    sub_100007A78();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 3;
    sub_100007A78();
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 4;
    sub_100007A78();
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + OBJC_IVAR____TtC13InCallService27VoicemailAccountManagerData_accounts);
    v12[15] = 5;
    sub_10014EA98(&qword_1003AC888, &qword_1002FD2A0);
    sub_10022A248(&qword_1003AFA80, &qword_1003AFA88, &unk_1002FB1D8, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_10022A088@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100229B6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10022A0D8(uint64_t a1)
{
  sub_10015FE80(a1, v4);
  if (!v5)
  {
    sub_10015E258(v4);
    goto LABEL_5;
  }

  type metadata accessor for VoicemailAccount(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v1 = 0;
    return v1 & 1;
  }

  sub_1001CC5B0();
  v1 = static NSObject.== infix(_:_:)();

  return v1 & 1;
}

unint64_t sub_10022A1F4()
{
  result = qword_1003AFA60;
  if (!qword_1003AFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFA60);
  }

  return result;
}

uint64_t sub_10022A248(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(&qword_1003AC888, &qword_1002FD2A0);
    sub_10022A2D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10022A2D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VoicemailAccount(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VoicemailAccountManagerData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10022A3F4()
{
  result = qword_1003AFA90;
  if (!qword_1003AFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFA90);
  }

  return result;
}

unint64_t sub_10022A44C()
{
  result = qword_1003AFA98;
  if (!qword_1003AFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFA98);
  }

  return result;
}

unint64_t sub_10022A4A4()
{
  result = qword_1003AFAA0;
  if (!qword_1003AFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFAA0);
  }

  return result;
}

id sub_10022A504()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithDictionaryRepresentation:isa];

  return v2;
}

uint64_t sub_10022A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v5;
}

id sub_10022A60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5.super.isa = 0;
    goto LABEL_6;
  }

  v4 = String._bridgeToObjectiveC()();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v6 = [swift_getObjCClassFromMetadata() contactWithDisplayName:v4 handleStrings:v5.super.isa];

  return v6;
}

id sub_10022A6B0()
{
  v0 = [objc_allocWithZone(UIVisualEffectView) init];
  isa = [objc_opt_self() effectWithBlurRadius:50.0];
  static CallsColorMatrix.background.getter();
  v2 = static ColorMatrixConvertion.colorEffect(_:)();
  v3 = v2;
  if (isa)
  {
    if (v2)
    {
      sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1002F96C0;
      *(v4 + 32) = isa;
      *(v4 + 40) = v3;
      sub_1000064BC(0, &unk_1003AAFA0, UIVisualEffect_ptr);
      v5 = isa;
      v6 = v3;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v0 setBackgroundEffects:isa];
    }
  }

  else
  {
    isa = v2;
  }

  return v0;
}

double iPadAudioCallViewController.presentWaitOnHoldEndForAnotherCallAlert(callerName:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (v7)
  {
    objc_opt_self();
    sub_10000FF90();
    if (swift_dynamicCastObjCClass() && (v9 = ICSApplicationDelegate.bannerPresentationManager.getter(), v10 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter(), v9, v10))
    {
      v11 = String._bridgeToObjectiveC()();
      v15[4] = a3;
      v15[5] = a4;
      sub_100006C90();
      v15[1] = 1107296256;
      v15[2] = sub_100164920;
      v15[3] = &unk_100361170;
      v12 = _Block_copy(v15);

      v13 = sub_100005DE8();
      [v13 v14];
      _Block_release(v12);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t iPadAudioCallViewController.makeLockObserver(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for PhoneLockStateObserver();
  v6 = static PhoneLockStateObserver.shared.getter();
  sub_100006BE8();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = PhoneLockStateObserver.listen(wantsCurrentValue:with:)();

  result = type metadata accessor for AnyCancellable();
  a3[3] = result;
  *a3 = v8;
  return result;
}

id iPadAudioCallViewController.makeCallDetailsCoordinator(bannerPresentationManager:existingCoordinator:deferredPresentationManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = direct field offset for CNKBannerPresentationManager.value;
  sub_1000087D0(a1 + direct field offset for CNKBannerPresentationManager.value, a2);
  v8 = *(a1 + v7);
  v9 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

  if (!v9)
  {
    if (a2)
    {
      v16 = objc_allocWithZone(type metadata accessor for DetailsCoordinatorCreationResult());
      return sub_100012544(1, 0);
    }

    v9 = 0;
LABEL_9:
    v17 = objc_allocWithZone(type metadata accessor for DetailsCoordinatorCreationResult());
    v15 = sub_100012544(0, 0);

    return v15;
  }

  if (a2)
  {
    goto LABEL_9;
  }

  v10 = v9;
  if (![v4 parentViewController])
  {
    v11 = v4;
  }

  objc_allocWithZone(type metadata accessor for CallDetailsCoordinator());
  v12 = v10;
  swift_unknownObjectRetain();
  v13 = CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)();
  v14 = objc_allocWithZone(type metadata accessor for DetailsCoordinatorCreationResult());
  v15 = sub_100012544(2, v13);

  return v15;
}

void iPadAudioCallViewController.makeHeldCallControls(callCenter:style:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for HeldInCallControlsView.Style();
  sub_10000688C();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100005BD0();
  sub_100006634();
  v11 = [v4 features];
  v12 = [v11 shouldEmbedSwapBanner];

  if (v12)
  {
    v13 = &enum case for HeldInCallControlsView.Style.ambient(_:);
    if (a2 != 3)
    {
      v13 = &enum case for HeldInCallControlsView.Style.regular(_:);
    }

    (*(v9 + 104))(v3, *v13, v7);
    type metadata accessor for HeldInCallControlsView();
    v14 = a1;
    HeldInCallControlsView.__allocating_init(callCenter:style:)();
  }

  sub_1001A0B10();
}

void sub_10022AF68()
{
  v1 = v0;
  v2 = [v0 features];
  v3 = [v2 isNameAndPhotoC3Enabled];

  if (v3)
  {
    type metadata accessor for NameAndPhotoUtilities();
    v4 = static NameAndPhotoUtilities.shared.getter();
    sub_10003012C(&unk_1003AFB50, &unk_1003ADBD0, &off_100353250, &protocol conformance descriptor for iPadAudioCallViewController);
    swift_unknownObjectRetain();
    NameAndPhotoUtilities.delegate.setter();

    swift_unknownObjectWeakInit();
    sub_10022B754(v1, v5);
    swift_unknownObjectWeakDestroy();
  }
}

void sub_10022B048()
{
  sub_100005D28();
  v1 = v0;
  v77 = v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v84 = v4;
  __chkstk_darwin(v5);
  sub_100005BD0();
  v83 = v7 - v6;
  sub_100008A4C();
  v8 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v82 = v9;
  __chkstk_darwin(v10);
  sub_100005BD0();
  v81 = v12 - v11;
  sub_100008A4C();
  type metadata accessor for ConversationControlsType();
  sub_10000688C();
  v75 = v14;
  v76 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v74 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008A4C();
  type metadata accessor for DispatchTime();
  sub_10000688C();
  v79 = v18;
  v80 = v17;
  v19 = __chkstk_darwin(v17);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v78 = &v68 - v22;
  sub_100008A4C();
  v23 = type metadata accessor for UUID();
  sub_10000688C();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100005BD0();
  v29 = v28 - v27;
  v30 = v1;
  v31 = [v1 callCenter];
  v32 = [v31 callsWithStatus:1];

  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_100017230(v33))
  {
    v73 = v3;
    v34 = sub_100005D40();
    sub_100017238(v34, v35, v33);
    v71 = v16;
    v72 = v8;
    if ((v33 & 0xC000000000000001) != 0)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v36 = *(v33 + 32);
    }

    v37 = v36;
    v38 = v30;

    v39 = [v30 callUUIDsThatPresentedSNaPHUD];
    v40 = v37;
    v41 = [v37 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    v43 = *(v25 + 8);
    v43(v29, v23);
    v44 = [v39 containsObject:isa];

    if (v44)
    {
      if (qword_1003A9F48 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1000058D0(v45, &unk_1003B8838);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = sub_100005924();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "We have already present SNaPHUD once. So dismiss this time.", v48, 2u);
        sub_100005BB8(v48);
      }
    }

    else
    {
      v50 = [v38 callUUIDsThatPresentedSNaPHUD];
      v70 = v40;
      v51 = [v40 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = UUID._bridgeToObjectiveC()().super.isa;
      v43(v29, v23);
      [v50 addObject:v52];

      sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
      v69 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      type metadata accessor for NameAndPhotoUtilities();
      static NameAndPhotoUtilities.secondsDelayBeforeShowingNameAndPhotoBanner.getter();
      v53 = v78;
      + infix(_:_:)();
      v54 = v80;
      v79 = *(v79 + 8);
      (v79)(v21, v80);
      v56 = v74;
      v55 = v75;
      v57 = v76;
      (*(v75 + 16))(v74, v77, v76);
      v58 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v59 = (v71 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      (*(v55 + 32))(v60 + v58, v56, v57);
      *(v60 + v59) = v38;
      sub_100006A90();
      v85[1] = 1107296256;
      sub_1000070E4();
      v85[2] = v61;
      v85[3] = &unk_100361328;
      v62 = _Block_copy(v85);
      v63 = v38;

      v64 = v81;
      static DispatchQoS.unspecified.getter();
      v85[0] = _swiftEmptyArrayStorage;
      sub_100158FC0();
      sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
      sub_100032638();
      v65 = v83;
      v66 = v73;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v67 = v69;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v62);

      (*(v84 + 8))(v65, v66);
      (*(v82 + 8))(v64, v72);
      (v79)(v53, v54);
    }

    sub_100007B28();
  }

  else
  {
    sub_100007B28();
  }
}

void sub_10022B754(void *a1, uint64_t a2)
{
  v3 = sub_10014EA98(&unk_1003AAE40, &qword_1002FB520);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for ConversationControlsType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 callCenter];
  v11 = [v10 callsWithStatus:1];

  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_100017230(v12))
  {
    sub_100017238(0, (v12 & 0xC000000000000001) == 0, v12);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v12 + 32);
    }

    v14 = v13;

    type metadata accessor for NameAndPhotoUtilities();
    v15 = static NameAndPhotoUtilities.shared.getter();
    sub_10003012C(&qword_1003AAE60, &qword_1003ADBE0, TUCall_ptr, &protocol conformance descriptor for TUCall);
    v16 = v14;
    NameAndPhotoUtilities.suggestedBannerType(for:)();

    if (sub_100006AC0(v5, 1, v6) == 1)
    {

      sub_10000830C(v5, &unk_1003AAE40, &qword_1002FB520);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      if ([v16 status] == 1)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v18 = Strong;
          sub_10022B048();

          v16 = v18;
        }

        (*(v7 + 8))(v9, v6);
      }

      else
      {
        (*(v7 + 8))(v9, v6);
      }
    }
  }

  else
  {
  }
}

void sub_10022BB00(uint64_t a1, objc_class *a2)
{
  v3 = v2;
  v6 = direct field offset for CNKBannerPresentationManager.value;
  sub_1000087D0(a1 + direct field offset for CNKBannerPresentationManager.value, a2);
  v7 = *(a1 + v6);
  v8 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

  if (v8)
  {
    sub_10003012C(&unk_1003AFB40, &unk_1003ADBD0, &off_100353250, &protocol conformance descriptor for iPadAudioCallViewController);
    v9 = v8;
    v10 = v3;
    dispatch thunk of ConversationControlsManager.systemAudioConversationControlsDelegate.setter();

    v11 = v9;
    v12.value.super.super.isa = a2;
    ConversationControlsManager.presentShareCard(source:)(v12);
  }
}

void sub_10022BC50(void *a1)
{
  v2 = v1;
  sub_10014EA98(&qword_1003AAF90, &qword_1002FB7E0);
  if (swift_dynamicCastClass())
  {
    v4 = a1;
    v5 = LockStateViewController.contentViewController.getter();
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      CallScreeningViewController.updateTextFieldContainer(_:)(v6);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10022BD80(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = type metadata accessor for ConversationControlsType();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  if (qword_1003A9F48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008A14(v10, &unk_1003B8838);
  v34 = *(v4 + 16);
  v35 = v4 + 16;
  v34(v9, a1, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315138;
    v16 = ConversationControlsType.debugDescription.getter();
    v31 = v7;
    v18 = v17;
    v19 = *(v4 + 8);
    v19(v9, v3);
    v20 = sub_100008ADC(v16, v18, &v36);
    v7 = v31;

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "we are going to present SNaP hud, because suggestedBannerType = %s.", v14, 0xCu);
    sub_100005B2C(v15);

    a1 = v32;

    v21 = v19;
  }

  else
  {

    v21 = *(v4 + 8);
    v21(v9, v3);
  }

  v22 = [objc_opt_self() sharedApplication];
  v23 = [v22 delegate];

  if (v23)
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (!v24)
    {
LABEL_14:
      swift_unknownObjectRelease();
      return;
    }

    v25 = v24;
    v34(v7, a1, v3);
    v26 = (*(v4 + 88))(v7, v3);
    if (v26 == enum case for ConversationControlsType.shareNameAndPhoto(_:))
    {
      v27 = [v25 bannerPresentationManager];
      v28 = v27;
      v29 = "iPadAudioCallViewController requesting showShareNameAndPhotoHUD";
      v30 = &BannerPresentationManager.showShareNameAndPhotoHUD();
    }

    else
    {
      if (v26 != enum case for ConversationControlsType.shareName(_:))
      {
        if (v26 != enum case for ConversationControlsType.incomingNameUpdate(_:))
        {
          swift_unknownObjectRelease();
          v21(v7, v3);
          return;
        }

        v28 = [v25 bannerPresentationManager];
        sub_10022C2C8(v28);
        goto LABEL_13;
      }

      v27 = [v25 bannerPresentationManager];
      v28 = v27;
      v29 = "iPadAudioCallViewController requesting showShareNameHUD";
      v30 = &BannerPresentationManager.showShareNameHUD();
    }

    sub_10022C19C(v27, v29, v30);
LABEL_13:

    goto LABEL_14;
  }
}

void sub_10022C19C(uint64_t a1, const char *a2, void (*a3)(void))
{
  v7 = [v3 features];
  v8 = [v7 isNameAndPhotoC3Enabled];

  if (v8)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v9 = type metadata accessor for Logger();
    sub_1000058D0(v9, &unk_1003B8820);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_100005924();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, a2, v12, 2u);
      sub_100005BB8(v12);
    }

    v13 = direct field offset for CNKBannerPresentationManager.value;
    sub_1000087D0(a1 + direct field offset for CNKBannerPresentationManager.value, v14);
    v15 = *(a1 + v13);
    a3();
  }
}

void sub_10022C2C8(uint64_t a1)
{
  v3 = [v1 features];
  v4 = [v3 isNameAndPhotoC3Enabled];

  if (v4)
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008A14(v5, &unk_1003B8820);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "iPadAudioCallViewController requesting showIncomingNameUpdateHUD", v8, 2u);
    }

    v9 = [objc_opt_self() sharedApplication];
    v10 = [v9 delegate];

    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        [v11 setIsShowingIncomingNameUpdate:1];
      }

      swift_unknownObjectRelease();
    }

    v12 = direct field offset for CNKBannerPresentationManager.value;
    swift_beginAccess();
    v13 = *(a1 + v12);
    BannerPresentationManager.showIncomingNameUpdateHUD()();
  }
}

uint64_t sub_10022C48C(uint64_t a1)
{
  type metadata accessor for NameAndPhotoUtilities();
  v1 = static NameAndPhotoUtilities.shared.getter();
  v2 = NameAndPhotoUtilities.currentIMNickname(matching:)();

  return v2;
}

uint64_t sub_10022C6FC(void *a1)
{
  v2 = v1;
  v4 = [v2 features];
  v5 = [v4 isNameAndPhotoC3Enabled];

  result = 0;
  if (v5 && a1)
  {
    v7 = a1;
    v8 = [v2 contactToDisplayInCallWallpaperForCall:v7];
    v9 = [v2 sharedProfileStateOracleForCall:v7];
    if (![objc_opt_self() contactIsInAutoUpdateState:v8])
    {

      return 0;
    }

    v10 = v7;
    v11 = sub_100013DA8(a1);

    if (v11)
    {
      v12 = sub_1000053A8();
      sub_100014194(v12, v13, v11, v14);

      if (*(&v52 + 1))
      {
        v15 = swift_dynamicCast();
        if (v15)
        {
          v16 = v50[0];
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = v50[1];
        }

        else
        {
          v17 = 0;
        }

LABEL_16:
        v18 = [v9 avatarViewAnimationTypeForEffectiveState];
        if (qword_1003A9F40 != -1)
        {
          sub_10000755C(&qword_1003A9F40);
        }

        v19 = type metadata accessor for Logger();
        sub_1000058D0(v19, &unk_1003B8820);

        v20 = v9;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        v23 = &selRef_countByEnumeratingWithState_objects_count_;
        if (os_log_type_enabled(v21, v22))
        {
          v49 = v16;
          v24 = swift_slowAlloc();
          v50[0] = swift_slowAlloc();
          *v24 = 136315906;
          v48 = v18;
          *&v51 = v18;
          type metadata accessor for CNSharedProfileAvatarAnimationType(0);
          v25 = String.init<A>(reflecting:)();
          v27 = v26;
          sub_100008ADC(v25, v26, v50);
          sub_1000055A8();
          *(v24 + 4) = v16;
          *(v24 + 12) = 2080;
          v28 = [v20 currentNickname];
          if (v28 && (v27 = v28, v16 = [v28 wallpaper], v27, v16) && (v29 = sub_100231C60(v16), v30))
          {
            *&v51 = v29;
            *(&v51 + 1) = v30;
            v31 = String.init<A>(reflecting:)();
            v27 = v32;
          }

          else
          {

            v31 = sub_100007B58();
          }

          sub_100008ADC(v31, v27, v50);
          sub_1000055A8();
          *(v24 + 14) = v16;
          *(v24 + 22) = 2080;
          v41 = [v20 pendingNickname];
          v42 = [v41 wallpaper];

          if (v42)
          {
            *&v51 = v42;
            sub_1000064BC(0, &qword_1003AAF48, IMWallpaper_ptr);
            v43 = String.init<A>(reflecting:)();
            v42 = v44;
          }

          else
          {
            v43 = sub_100007B58();
          }

          sub_100008ADC(v43, v42, v50);
          sub_1000055A8();
          *(v24 + 24) = v41;
          *(v24 + 32) = 2080;
          if (v17)
          {
            *&v51 = v49;
            *(&v51 + 1) = v17;

            v45 = String.init<A>(reflecting:)();
            v47 = v46;
          }

          else
          {
            v47 = 0xE300000000000000;
            v45 = 7104878;
          }

          sub_100008ADC(v45, v47, v50);
          sub_1000055A8();
          *(v24 + 34) = v41;
          _os_log_impl(&_mh_execute_header, v21, v22, "SNAP: suggestedNewPosterSourceAfterCallConnects effectiveAnimationType: %s \n oracle.currentNickname.wallpaper.filePath: %s \n oracle.pendingNickname.wallpaper: %s \n lastSeenContacts: %s", v24, 0x2Au);
          swift_arrayDestroy();
          sub_10000558C();
          sub_100005BB8(v24);

          v16 = v49;
          v23 = &selRef_countByEnumeratingWithState_objects_count_;
          if (!v48)
          {
            goto LABEL_47;
          }
        }

        else
        {

          if (!v18)
          {
LABEL_47:

            return 3;
          }
        }

        v33 = [v20 v23[66]];
        if (v33 && (v34 = v33, v35 = [v33 wallpaper], v34, v35) && (v36 = sub_100231C60(v35), v37))
        {
          if (v17)
          {
            if (v36 == v16 && v37 == v17)
            {

              return 0;
            }

            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v39)
            {
              goto LABEL_41;
            }

            goto LABEL_36;
          }
        }

        else if (!v17)
        {
LABEL_41:

          return 0;
        }

LABEL_36:
        v40 = [objc_opt_self() posterSourceIsSyncedWithContacts:{objc_msgSend(v2, "currentDisplayedPosterSourceForCall:", v10)}];

        if ((v40 & 1) == 0)
        {
          return 2;
        }

        return 0;
      }
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
    }

    sub_10000830C(&v51, &unk_1003AAF50, &qword_1002FB170);
    v16 = 0;
    v17 = 0;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10022CD10(void *a1)
{
  v3 = [v1 callDisplayStyleManager];
  v4 = [v3 callDisplayStyle];

  if (v4 == 3)
  {
    goto LABEL_2;
  }

  v7 = [v1 features];
  v8 = [v7 isNameAndPhotoC3Enabled];

  v5 = 0;
  if (v8 && a1)
  {
    v9 = a1;
    v10 = sub_100005DE8();
    v12 = [v10 v11];
    v13 = sub_100005DE8();
    v15 = [v13 v14];
    if (v15 == 1)
    {

LABEL_8:
      v5 = 1;
      return v5 & 1;
    }

    if ([objc_opt_self() posterSourceIsSyncedWithContacts:v15])
    {

LABEL_11:
LABEL_2:
      v5 = 0;
      return v5 & 1;
    }

    v16 = sub_100005DE8();
    v18 = [v16 v17];
    v19 = [v18 effectiveStateForContact];
    if (v19 == 3)
    {
      v20 = [v18 pendingNickname];
      v21 = [v20 wallpaper];

      if (!v21)
      {
        v22 = [v18 currentNickname];
        v21 = [v22 wallpaper];

        if (!v21)
        {

          goto LABEL_11;
        }
      }
    }

    v23 = v9;
    v24 = sub_10016D3EC();
    v25 = sub_100013DA8(v24);

    if (v25)
    {
      v26 = sub_1000053A8();
      sub_100014194(v26, v27, v25, v28);

      if (*(&v42 + 1))
      {
        v30 = sub_100008D28(v40, v29);
        if (v30)
        {
          v31 = v40[0];
        }

        else
        {
          v31 = 0;
        }

        if (v30)
        {
          v32 = v40[1];
        }

        else
        {
          v32 = 0;
        }

LABEL_26:
        if ((v19 | 2) != 3)
        {

          goto LABEL_2;
        }

        v33 = [v18 currentNickname];
        if (v33 && (v34 = v33, v35 = [v33 wallpaper], v34, v35) && (v36 = sub_100231C60(v35), v37))
        {
          if (v32)
          {
            if (v36 == v31 && v37 == v32)
            {

              v5 = 0;
            }

            else
            {
              v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v5 = v39 ^ 1;
            }

            return v5 & 1;
          }
        }

        else
        {

          if (!v32)
          {
            goto LABEL_2;
          }
        }

        goto LABEL_8;
      }
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    sub_10000830C(&v41, &unk_1003AAF50, &qword_1002FB170);
    v31 = 0;
    v32 = 0;
    goto LABEL_26;
  }

  return v5 & 1;
}

void sub_10022D0F8()
{
  sub_100005D28();
  v24 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  __chkstk_darwin(v2);
  sub_100005BD0();
  sub_100006634();
  v25 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100005BD0();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  sub_10000688C();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100005BD0();
  v15 = v14 - v13;
  sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v15, v9);
  sub_100006BE8();
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  *(v17 + 24) = v24;
  v26[4] = sub_100231D9C;
  v26[5] = v17;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 1107296256;
  sub_1000070E4();
  v26[2] = v18;
  v26[3] = &unk_100361288;
  v19 = _Block_copy(v26);
  v20 = v24;
  v21 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100158FC0();
  sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
  sub_100032638();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  v22 = sub_100008E74();
  v23(v22);
  (*(v4 + 8))(v8, v25);

  sub_100007B28();
}

void sub_10022D3E4(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v183 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 features];
  v12 = [v11 isNameAndPhotoC3Enabled];

  if (!v12 || !a2)
  {
    return;
  }

  v184 = a2;
  v13 = sub_1000140C4(v184);
  if (!v13)
  {
    goto LABEL_18;
  }

  if (!v13[2])
  {

    goto LABEL_14;
  }

  v177 = v5;
  v14 = v13[5];
  v179 = v13[4];

  if (qword_1003A9F40 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v182 = sub_100008A14(v15, &unk_1003B8820);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v181 = v14;
  if (v18)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "SNAP: writeToLastSeenPosterCacheIfNecessary", v19, 2u);
  }

  if (![objc_opt_self() posterSourceIsSyncedWithContacts:{objc_msgSend(a1, "currentDisplayedPosterSourceForCall:", v184)}])
  {

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "SNAP: Not updating last seen poster cache because displayed poster is not synced with contacts.", v28, 2u);
    }

LABEL_18:
    v29 = v184;

    return;
  }

  v176 = [a1 sharedProfileStateOracleForCall:v184];
  v20 = [v176 currentNickname];
  v21 = [v20 wallpaper];

  v175 = v21;
  if (v21)
  {
    v22 = v21;
    v172 = sub_100231C60(v22);
    v180 = v23;
    v178 = sub_100231CD0(v22);
    v25 = v24;
  }

  else
  {
    v178 = 0;
    v172 = 0;
    v180 = 0;
    v25 = 0xF000000000000000;
  }

  v184 = v184;
  v30 = sub_100013DA8(a2);
  if (v30)
  {
    sub_100014194(0xD000000000000013, 0x80000001002A6610, v30, &v189);

    if (v190)
    {
      if (swift_dynamicCast())
      {
        if (v180)
        {
          if (v172 == *&v188[0] && v180 == *(&v188[0] + 1))
          {

            goto LABEL_59;
          }

          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v32)
          {

LABEL_59:

            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              *v104 = 0;
              _os_log_impl(&_mh_execute_header, v102, v103, "SNAP: Not updating last seen poster cache because displayed poster is not different from the one in the cache.", v104, 2u);
            }

            sub_100034FE0(v178, v25);
LABEL_94:

            return;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      sub_10000830C(&v189, &unk_1003AAF50, &qword_1002FB170);
    }
  }

  v33 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v34[2])
  {

    v48 = v184;
    sub_100034FE0(v178, v25);

    goto LABEL_14;
  }

  v174 = v25;
  v36 = v34[4];
  v35 = v34[5];

  v186 = v36;
  v187 = v35;
  v37._countAndFlagsBits = 0xD000000000000018;
  v37._object = 0x80000001002A65B0;
  String.append(_:)(v37);
  v170 = objc_opt_self();
  v38 = [v170 defaultManager];
  v171 = v186;
  v173 = v187;
  v39 = String._bridgeToObjectiveC()();
  LOBYTE(v36) = [v38 fileExistsAtPath:v39 isDirectory:0];

  if (v36)
  {
LABEL_41:
    v53 = v174;
    if (v174 >> 60 == 15)
    {
      v171 = 0;
      v54 = 0;
    }

    else
    {
      sub_10016D1C4(v178, v174);
      UUID.init()();
      v55 = UUID.uuidString.getter();
      v57 = v56;
      (*(v183 + 8))(v10, v8);
      *&v189 = 47;
      *(&v189 + 1) = 0xE100000000000000;
      v58._countAndFlagsBits = v55;
      v58._object = v57;
      String.append(_:)(v58);

      v59 = sub_10022A58C(v189, *(&v189 + 1), v171, v173);
      v54 = v60;

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v183 = v54;
        v64 = v63;
        v65 = v59;
        v66 = swift_slowAlloc();
        *&v189 = v66;
        *v64 = 136315138;
        *(v64 + 4) = sub_100008ADC(7104878, 0xE300000000000000, &v189);
        _os_log_impl(&_mh_execute_header, v61, v62, "SNAP: Requesting to write last seen poster to cache path %s", v64, 0xCu);
        sub_100005B2C(v66);
        v59 = v65;

        v54 = v183;
      }

      URL.init(fileURLWithPath:)();
      v67 = v178;
      v53 = v174;
      Data.write(to:options:)();
      v171 = v59;
      (v177)[1](v7, v4);
      sub_100034FE0(v67, v53);
    }

    v83 = sub_100013DA8(a2);

    v183 = v54;
    if (v83)
    {
      sub_100014194(0xD000000000000013, 0x80000001002A65F0, v83, &v189);

      if (v190)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_65;
        }

        v84 = v188[0];

        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *&v188[0] = v88;
          *v87 = 136315138;
          v189 = v84;

          v89 = String.init<A>(reflecting:)();
          v91 = sub_100008ADC(v89, v90, v188);

          *(v87 + 4) = v91;
          _os_log_impl(&_mh_execute_header, v85, v86, "SNAP: Requesting to remove previous last seen poster file %s", v87, 0xCu);
          sub_100005B2C(v88);
        }

        v92 = v170;
        v93 = [v170 defaultManager];
        v94 = String._bridgeToObjectiveC()();
        v95 = [v93 contentsAtPath:v94];

        if (v95)
        {
          v96 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v98 = v97;

          sub_10016D16C(v96, v98);
          v99 = [v92 defaultManager];
          v100 = String._bridgeToObjectiveC()();
          *&v189 = 0;
          LODWORD(v98) = [v99 removeItemAtPath:v100 error:&v189];

          if (v98)
          {
            v101 = v189;

            v54 = v183;
            goto LABEL_65;
          }

          v155 = v189;

          v156 = _convertNSErrorToError(_:)();

          swift_willThrow();

          swift_errorRetain();
          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            *&v188[0] = swift_slowAlloc();
            *v159 = 136315394;
            v189 = v84;
            v160 = String.init<A>(reflecting:)();
            v162 = sub_100008ADC(v160, v161, v188);

            *(v159 + 4) = v162;
            *(v159 + 12) = 2080;
            *&v189 = v156;
            swift_errorRetain();
            sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
            v163 = String.init<A>(reflecting:)();
            v165 = sub_100008ADC(v163, v164, v188);

            *(v159 + 14) = v165;
            _os_log_impl(&_mh_execute_header, v157, v158, "SNAP: Failed to remove old last seen file path %s with error %s", v159, 0x16u);
            swift_arrayDestroy();

            sub_100034FE0(v178, v53);
          }

          else
          {

            sub_100034FE0(v178, v53);
          }

LABEL_14:

          return;
        }

        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.default.getter();
        v107 = os_log_type_enabled(v105, v106);
        v54 = v183;
        if (v107)
        {
          v108 = swift_slowAlloc();
          *v108 = 0;
          _os_log_impl(&_mh_execute_header, v105, v106, "SNAP: last seen poster file already doesn't exist, don't need to request FileManager to remove it, but we still need to replace the last seen poster data with current poster data)", v108, 2u);
        }
      }

      else
      {
        sub_10000830C(&v189, &unk_1003AAF50, &qword_1002FB170);
      }
    }

LABEL_65:

    swift_bridgeObjectRetain_n();
    v109 = v175;
    v110 = v175;
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    v177 = v110;

    if (os_log_type_enabled(v111, v112))
    {
      v113 = 7104878;
      v114 = v54;
      v115 = swift_slowAlloc();
      *&v188[0] = swift_slowAlloc();
      *v115 = 136315650;
      if (v114)
      {
        *&v189 = v171;
        *(&v189 + 1) = v114;
        v116 = String.init<A>(reflecting:)();
        v118 = v117;
      }

      else
      {
        v118 = 0xE300000000000000;
        v116 = 7104878;
      }

      v120 = sub_100008ADC(v116, v118, v188);

      *(v115 + 4) = v120;
      *(v115 + 12) = 2080;
      if (v180)
      {
        *&v189 = v172;
        *(&v189 + 1) = v180;

        v121 = String.init<A>(reflecting:)();
        v123 = v122;
      }

      else
      {
        v123 = 0xE300000000000000;
        v121 = 7104878;
      }

      v124 = sub_100008ADC(v121, v123, v188);

      *(v115 + 14) = v124;
      *(v115 + 22) = 2080;
      if (v109)
      {
        v125 = v177;
        *&v189 = v177;
        sub_1000064BC(0, &qword_1003AAF48, IMWallpaper_ptr);
        v126 = v125;
        v113 = String.init<A>(reflecting:)();
        v128 = v127;
      }

      else
      {
        v128 = 0xE300000000000000;
      }

      v119 = v181;
      v129 = sub_100008ADC(v113, v128, v188);

      *(v115 + 24) = v129;
      _os_log_impl(&_mh_execute_header, v111, v112, "SNAP: - filePath: %s, currentIMWallpaperFilePath: %s, currentIMWallpaper: %s ", v115, 0x20u);
      swift_arrayDestroy();

      v54 = v183;
    }

    else
    {

      v119 = v181;
    }

    if (v54)
    {
      if (!v180)
      {
LABEL_86:

        v136 = Dictionary.init(dictionaryLiteral:)();
LABEL_87:
        swift_bridgeObjectRetain_n();

        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          *&v189 = v140;
          *v139 = 136315138;
          sub_10014EA98(&qword_1003AAF38, &qword_1002FB7B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1002FAB60;
          *(inited + 32) = v179;
          *(inited + 40) = v119;
          *(inited + 48) = v136;

          sub_10014EA98(&qword_1003AAF30, &qword_1002FB7A8);
          *&v188[0] = Dictionary.init(dictionaryLiteral:)();
          sub_10014EA98(&qword_1003AAF40, &unk_1002FB7B8);
          v142 = String.init<A>(reflecting:)();
          v144 = sub_100008ADC(v142, v143, &v189);

          *(v139 + 4) = v144;
          _os_log_impl(&_mh_execute_header, v137, v138, "SNAP: Adding item to user defaults %s", v139, 0xCu);
          sub_100005B2C(v140);
        }

        else
        {
        }

        v145 = objc_opt_self();
        v146 = [v145 standardUserDefaults];
        v147 = String._bridgeToObjectiveC()();
        v148 = [v146 dictionaryForKey:v147];

        if (v148)
        {
          v149 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v190 = sub_10014EA98(&qword_1003AAF30, &qword_1002FB7A8);
          *&v189 = v136;
          sub_100034DBC(&v189, v188);
          swift_isUniquelyReferenced_nonNull_native();
          v185 = v149;
          sub_100034E40(v188, v179, v181);
        }

        else
        {
          sub_10014EA98(&qword_1003AAF28, &qword_1002FB7A0);
          v150 = swift_initStackObject();
          *(v150 + 16) = xmmword_1002FAB60;
          v151 = v181;
          *(v150 + 32) = v179;
          *(v150 + 40) = v151;
          *(v150 + 72) = sub_10014EA98(&qword_1003AAF30, &qword_1002FB7A8);
          *(v150 + 48) = v136;
          Dictionary.init(dictionaryLiteral:)();
        }

        v152 = [v145 standardUserDefaults];
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v154 = String._bridgeToObjectiveC()();
        [v152 setValue:isa forKey:v154];

        sub_100034FE0(v178, v174);

        goto LABEL_94;
      }

      if (v109)
      {
        sub_10014EA98(&qword_1003AAF28, &qword_1002FB7A0);
        v130 = swift_initStackObject();
        *(v130 + 16) = xmmword_1002FB3B0;
        *(v130 + 32) = 0xD000000000000013;
        *(v130 + 40) = 0x80000001002A65F0;
        *(v130 + 48) = v171;
        *(v130 + 56) = v54;
        *(v130 + 72) = &type metadata for String;
        *(v130 + 80) = 0xD000000000000013;
        v131 = v172;
        *(v130 + 88) = 0x80000001002A6610;
        *(v130 + 96) = v131;
        *(v130 + 104) = v180;
        *(v130 + 120) = &type metadata for String;
        strcpy((v130 + 128), "isSensitiveKey");
        *(v130 + 143) = -18;
        v132 = v177;

        *(v130 + 144) = [v132 contentIsSensitive];
        *(v130 + 168) = &type metadata for Bool;
        *(v130 + 176) = 0xD000000000000016;
        *(v130 + 184) = 0x80000001002A6630;
        v133 = [v132 metadata];
        v134 = v133;
        if (v133)
        {
          v135 = [v133 dictionaryRepresentation];

          v134 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        }

        *(v130 + 216) = sub_10014EA98(&qword_1003AAF30, &qword_1002FB7A8);
        if (!v134)
        {
          v134 = Dictionary.init(dictionaryLiteral:)();
        }

        *(v130 + 192) = v134;
        v136 = Dictionary.init(dictionaryLiteral:)();

        goto LABEL_87;
      }
    }

    goto LABEL_86;
  }

  v40 = v173;

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  v169 = v42;
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v168 = v43;
    v167 = swift_slowAlloc();
    *&v188[0] = v167;
    *v43 = 136315138;
    v166 = v41;
    *&v189 = v171;
    *(&v189 + 1) = v40;

    v44 = String.init<A>(reflecting:)();
    v46 = sub_100008ADC(v44, v45, v188);

    v47 = v168;
    *(v168 + 1) = v46;
    v41 = v166;
    _os_log_impl(&_mh_execute_header, v166, v169, "SNAP: Could not find existing cache path directory, so creating %s", v47, 0xCu);
    sub_100005B2C(v167);
  }

  v49 = [v170 defaultManager];
  v50 = String._bridgeToObjectiveC()();
  *&v189 = 0;
  v51 = [v49 createDirectoryAtPath:v50 withIntermediateDirectories:0 attributes:0 error:&v189];

  if (v51)
  {
    v52 = v189;
    goto LABEL_41;
  }

  v68 = v189;

  v69 = v184;

  v70 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v71 = v173;

  swift_errorRetain();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();

  v74 = os_log_type_enabled(v72, v73);
  v75 = v174;
  if (v74)
  {
    v76 = swift_slowAlloc();
    *&v188[0] = swift_slowAlloc();
    *v76 = 136315394;
    *&v189 = v171;
    *(&v189 + 1) = v71;
    v77 = String.init<A>(reflecting:)();
    v79 = sub_100008ADC(v77, v78, v188);

    *(v76 + 4) = v79;
    *(v76 + 12) = 2080;
    *&v189 = v70;
    swift_errorRetain();
    sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
    v80 = String.init<A>(reflecting:)();
    v82 = sub_100008ADC(v80, v81, v188);

    *(v76 + 14) = v82;
    _os_log_impl(&_mh_execute_header, v72, v73, "SNAP: Failed to create caches directory %s with error %s", v76, 0x16u);
    swift_arrayDestroy();

    sub_100034FE0(v178, v75);
  }

  else
  {

    sub_100034FE0(v178, v75);
  }
}

void sub_10022EF84()
{
  sub_100005D28();
  v86 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v91 = v1;
  __chkstk_darwin(v2);
  sub_100005BD0();
  v89 = v4 - v3;
  sub_100008A4C();
  v90 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v88 = v5;
  __chkstk_darwin(v6);
  sub_100005BD0();
  v87 = v8 - v7;
  sub_100008A4C();
  type metadata accessor for DispatchQoS.QoSClass();
  sub_10000688C();
  v84 = v10;
  v85 = v9;
  __chkstk_darwin(v9);
  sub_100005BD0();
  v83 = v12 - v11;
  v13 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  v14 = sub_100005568(v13);
  __chkstk_darwin(v14);
  v80 = &v73 - v15;
  sub_100008A4C();
  v16 = type metadata accessor for URL.DirectoryHint();
  sub_10000688C();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100005BD0();
  v22 = v21 - v20;
  v23 = type metadata accessor for URL();
  sub_10000688C();
  v82 = v24;
  v26 = *(v25 + 64);
  v28 = __chkstk_darwin(v27);
  v81 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v31 = &v73 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v73 - v33;
  __chkstk_darwin(v32);
  v36 = &v73 - v35;
  v37 = [v0 features];
  v38 = [v37 isNameAndPhotoC3Enabled];

  if (v38)
  {
    v78 = [objc_opt_self() defaultManager];
    v39 = [v78 temporaryDirectory];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v93 = 0xD000000000000014;
    v94 = 0x80000001002A6590;
    (*(v18 + 104))(v22, enum case for URL.DirectoryHint.inferFromPath(_:), v16);
    sub_100028A30();
    v79 = v36;
    URL.appending<A>(component:directoryHint:)();
    (*(v18 + 8))(v22, v16);
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v40 = type metadata accessor for Logger();
    sub_1000058D0(v40, &unk_1003B8820);
    v41 = v82;
    v42 = *(v82 + 16);
    v42(v31, v34, v23);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v45 = os_log_type_enabled(v43, v44);
    v77 = v42;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v76 = v34;
      v47 = v46;
      v75 = swift_slowAlloc();
      v93 = v75;
      *v47 = 136315138;
      v48 = v80;
      v42(v80, v31, v23);
      sub_100006848(v48, 0, 1, v23);
      v74 = sub_100173DC8();
      v50 = v49;
      sub_10000830C(v48, &qword_1003AAF20, &unk_1002FABA0);
      v51 = sub_1000302DC();
      v52(v51);
      v53 = v41;
      v54 = sub_100008ADC(v74, v50, &v93);

      *(v47 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v43, v44, "SNAP: deleteAllUnarchivedPosterDirectories path: %s", v47, 0xCu);
      sub_100005B2C(v75);
      sub_10000558C();
      v55 = v47;
      v34 = v76;
      sub_100005BB8(v55);
    }

    else
    {

      v56 = sub_1000302DC();
      v57(v56);
      v53 = v41;
    }

    sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
    v59 = v83;
    v58 = v84;
    v60 = v85;
    (*(v84 + 104))(v83, enum case for DispatchQoS.QoSClass.background(_:), v85);
    v61 = static OS_dispatch_queue.global(qos:)();
    (*(v58 + 8))(v59, v60);
    v62 = v81;
    v77(v81, v34, v23);
    v63 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v64 = swift_allocObject();
    v65 = v78;
    *(v64 + 16) = v78;
    (*(v53 + 32))(v64 + v63, v62, v23);
    sub_100006A90();
    v94 = 1107296256;
    sub_1000070E4();
    v95 = v66;
    v96 = &unk_100361238;
    v67 = _Block_copy(&v93);
    v68 = v65;
    v69 = v87;
    static DispatchQoS.unspecified.getter();
    v92 = _swiftEmptyArrayStorage;
    sub_100158FC0();
    sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
    sub_100032638();
    v70 = v89;
    v71 = v86;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v67);

    (*(v91 + 8))(v70, v71);
    (*(v88 + 8))(v69, v90);
    v72 = v80;
    (v80)(v34, v23);
    v72(v79, v23);
  }

  sub_100007B28();
}

id sub_10022F7B4()
{
  v1 = v0;
  v2 = &selRef_audioCategory;
  v3 = [v0 callCenter];
  v4 = [v3 frontmostCall];

  if (!v4)
  {
    return 0;
  }

  v5 = [v1 prioritizedCall];
  if (!v5)
  {
    v5 = v4;
  }

  v6 = [v1 associatedCallGroupForCall:v5];

  v7 = [v6 calls];
  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_100017230(v8);

  if (v9 > 1)
  {
    if (qword_1003A9F40 != -1)
    {
LABEL_98:
      sub_10000755C(&qword_1003A9F40);
    }

    v10 = type metadata accessor for Logger();
    sub_1000058D0(v10, &unk_1003B8820);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!sub_100005908(v12))
    {
      goto LABEL_9;
    }

    v13 = sub_100005924();
    sub_10000539C(v13);
    v16 = "callToUseForWallpaper is nil, associatedCallGroup.calls.count > 1";
    goto LABEL_8;
  }

  if ([v1 usesCompactMulticallUI])
  {
    v19 = [v1 prioritizedCall];
    if (v19)
    {
      v17 = v19;

      return v17;
    }
  }

  v20 = [v1 callDisplayStyleManager];
  v21 = [v20 callDisplayStyle];

  v22 = &selRef_countByEnumeratingWithState_objects_count_;
  if (v21 == 3)
  {
    v23 = [v1 features];
    v24 = [v23 isDominoEnabled];

    if (v24)
    {
      if ([v1 participantsViewIsShowingMultipleLabel])
      {
        if (qword_1003A9F40 == -1)
        {
LABEL_19:
          v25 = type metadata accessor for Logger();
          sub_1000058D0(v25, &unk_1003B8820);
          v11 = Logger.logObject.getter();
          v26 = static os_log_type_t.default.getter();
          if (!sub_100005908(v26))
          {
            goto LABEL_9;
          }

          v27 = sub_100005924();
          sub_10000539C(v27);
          v16 = "callToUseForWallpaper is nil, participantsViewIsShowingMultipleLabel";
LABEL_8:
          sub_1000070F8(&_mh_execute_header, v14, v15, v16);
          sub_10000558C();
LABEL_9:

          return 0;
        }

LABEL_100:
        sub_10000755C(&qword_1003A9F40);
        goto LABEL_19;
      }

      v89 = v6;
      v28 = [v1 callCenter];
      v29 = [v28 currentCalls];

      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = sub_100017230(v30);
      v6 = 0;
      v98 = v30 & 0xFFFFFFFFFFFFFF8;
      v99 = v30 & 0xC000000000000001;
      v91 = v1;
      v92 = v30;
      v97 = v30 + 32;
      v90 = v4;
LABEL_22:
      if (v6 == v31)
      {
        v6 = v31;
      }

      else
      {
        if (v99)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_100;
          }

          v32 = *(v97 + 8 * v6);
        }

        v33 = v32;
        v34 = sub_100231B14(&off_10035A508);
        v35 = [v33 status];
        if (*(v34 + 16))
        {
          v36 = v35;
          Hasher.init(_seed:)();
          Hasher._combine(_:)(v36);
          v37 = Hasher._finalize()();
          v38 = ~(-1 << *(v34 + 32));
          while (1)
          {
            v39 = v37 & v38;
            if (((*(v34 + 56 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
            {
              break;
            }

            v37 = v39 + 1;
            if (*(*(v34 + 48) + 4 * v39) == v36)
            {

              v40 = __OFADD__(v6++, 1);
              v1 = v91;
              v2 = &selRef_audioCategory;
              if (!v40)
              {
                goto LABEL_22;
              }

              __break(1u);
LABEL_101:
              sub_10000755C(&qword_1003A9F40);
              goto LABEL_69;
            }
          }
        }

        v1 = v91;
        v2 = &selRef_audioCategory;
      }

      v41 = sub_100017230(v30);
      v4 = -1;
      v22 = &selRef_countByEnumeratingWithState_objects_count_;
      if (v41 >= v6)
      {
        if (v6 == v41)
        {

          v6 = v89;
          v4 = v90;
          goto LABEL_71;
        }

        v95 = 1;
        v93 = v41;
      }

      else
      {
        v95 = -1;
        v93 = v6;
        v6 = v41;
      }

      v94 = sub_100017230(v92);
      v96 = sub_100017230(v92);
      v100 = 0;
      do
      {
        if (__OFADD__(v100, v95))
        {
          goto LABEL_96;
        }

        v100 += v95;
        if (v6 == v94)
        {
          goto LABEL_97;
        }

LABEL_43:
        v40 = __OFADD__(v6++, 1);
        if (v40)
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        if (v6 == v96)
        {
          v6 = v96;
        }

        else
        {
          if (v99)
          {
            v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 < 0)
            {
              goto LABEL_94;
            }

            if (v6 >= *(v98 + 16))
            {
              goto LABEL_95;
            }

            v42 = *(v97 + 8 * v6);
          }

          v17 = v42;
          sub_10014EA98(&unk_1003AFB18, &qword_1003010F0);
          v43 = static _SetStorage.allocate(capacity:)();
          v44 = 0;
          v45 = v43 + 56;
          while (2)
          {
            v46 = *(&off_10035A538 + v44++ + 8);
            Hasher.init(_seed:)();
            Hasher._combine(_:)(v46);
            v47 = Hasher._finalize()();
            v48 = ~(-1 << *(v43 + 32));
            while (1)
            {
              v49 = v47 & v48;
              v50 = (v47 & v48) >> 6;
              v51 = *(v45 + 8 * v50);
              v52 = 1 << (v47 & v48);
              if ((v52 & v51) == 0)
              {
                break;
              }

              if (*(*(v43 + 48) + 4 * v49) == v46)
              {
                goto LABEL_56;
              }

              v47 = v49 + 1;
            }

            *(v45 + 8 * v50) = v52 | v51;
            *(*(v43 + 48) + 4 * v49) = v46;
            v53 = *(v43 + 16);
            v40 = __OFADD__(v53, 1);
            v55 = v53 + 1;
            v54 = v55 == 0;
            if (v40)
            {
              __break(1u);
              goto LABEL_87;
            }

            *(v43 + 16) = v55;
LABEL_56:
            if (v44 != 3)
            {
              continue;
            }

            break;
          }

          v56 = [v17 status];
          if (*(v43 + 16))
          {
            v57 = v56;
            Hasher.init(_seed:)();
            Hasher._combine(_:)(v57);
            v58 = Hasher._finalize()();
            v59 = ~(-1 << *(v43 + 32));
            while (1)
            {
              v60 = v58 & v59;
              if (((*(v45 + (((v58 & v59) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v58 & v59)) & 1) == 0)
              {
                break;
              }

              v58 = v60 + 1;
              if (*(*(v43 + 48) + 4 * v60) == v57)
              {

                goto LABEL_43;
              }
            }
          }
        }
      }

      while (v6 != v93);

      v6 = v89;
      v4 = v90;
      v1 = v91;
      v2 = &selRef_audioCategory;
      v22 = &selRef_countByEnumeratingWithState_objects_count_;
      if (v100 > 1)
      {
        if (qword_1003A9F40 != -1)
        {
          goto LABEL_101;
        }

LABEL_69:
        v61 = type metadata accessor for Logger();
        sub_1000058D0(v61, &unk_1003B8820);
        v11 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        if (!sub_100005908(v62))
        {
          goto LABEL_9;
        }

        v63 = sub_100005924();
        sub_10000539C(v63);
        v16 = "callToUseForWallpaper is nil, answeredCalls > 1";
        goto LABEL_8;
      }
    }
  }

LABEL_71:
  v64 = [v1 v22[399]];
  v65 = [v64 shouldShowFullScreenCallWaiting];

  if (v65 & 1) != 0 || (v66 = [v1 v2[163]], v67 = TUCallCenter.cnk_wantsCallWaiting.getter(), v66, (v67 & 1) == 0) || (v68 = objc_msgSend(v1, v2[163]), v69 = objc_msgSend(v68, "cnk_hasTooManyCallsForCallWaitingBanner"), v68, (v69) || !objc_msgSend(v1, "usesCompactMulticallUI"))
  {
LABEL_81:
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v77 = type metadata accessor for Logger();
    sub_1000058D0(v77, &unk_1003B8820);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    if (sub_100005908(v79))
    {
      v80 = sub_100005924();
      sub_10000539C(v80);
      sub_1000070F8(&_mh_execute_header, v81, v82, "callToUseForWallpaper is frontmostCall");
      sub_10000558C();
    }

    return v4;
  }

  v17 = [v1 activeCall];
  v70 = [v17 isScreening];
  v54 = qword_1003A9F40 == -1;
  if (v70)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v71 = type metadata accessor for Logger();
    sub_1000058D0(v71, &unk_1003B8820);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.fault.getter();
    if (sub_100005908(v73))
    {
      v74 = sub_100005924();
      sub_10000539C(v74);
      sub_1000070F8(&_mh_execute_header, v75, v76, "callToUseForWallpaper: wantsCallWaiting but activeCall is nil");
      sub_10000558C();
    }

    goto LABEL_81;
  }

LABEL_87:
  if (!v54)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v83 = type metadata accessor for Logger();
  sub_1000058D0(v83, &unk_1003B8820);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();
  if (sub_100005908(v85))
  {
    v86 = sub_100005924();
    sub_10000539C(v86);
    sub_1000070F8(&_mh_execute_header, v87, v88, "callToUseForWallpaper is activeCall, wantsCallWaiting (banner-based)");
    sub_10000558C();
  }

  return v17;
}