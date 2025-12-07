void sub_100338A70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      type metadata accessor for RoutingTimeline.Event(0);
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      type metadata accessor for RoutingTimeline.Event(0);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_100338B64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      type metadata accessor for RoutingTimeline.Event(0);
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      type metadata accessor for RoutingTimeline.Event(0);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_100338C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000089FC(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_1000089FC((v12 > 1), v13 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v13 + 1;
  v14 = v8 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v8;
  if (*v4)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v13)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v4;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v17 = _HashTable.copy()();

        *v4 = v17;
        v16 = v17;
      }

      if (v16)
      {
        _HashTable.UnsafeHandle.subscript.setter();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v13 < 0xF)
  {
    return;
  }

  sub_100338DD4(v11);
}

void sub_100338DD4(__n128 a1)
{
  v2 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  if (v3 || *(v4 + 16) >= 0x10uLL)
  {
    v6 = static _HashTable.scale(forCapacity:)();
    if (v3 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v5 = sub_100338E74(v4, v8, 0, v3, v7);
  }

  else
  {
    v5 = 0;
  }

  *v1 = v5;
}

uint64_t sub_100338E74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = _HashTable.init(scale:reservedScale:)();
    sub_100338EF4(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

Swift::Int sub_100338F44(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v7 = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        v7 = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

Swift::Int sub_100339074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

void sub_1003391C0()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  sub_1001BC5A8(&qword_100526AE0, &unk_100458830);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_100338B64(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
}

unint64_t sub_100339260(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v2 = result;
  }

  return result;
}

uint64_t sub_10033931C(uint64_t a1, uint64_t a2)
{
  if ((sub_10026D4AC((a1 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent), (a2 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent)) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 104))();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = (*(*a2 + 104))();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (result != 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = v14;
      v16 = v13;
      v17 = v12;
      if (v4 != 3)
      {
        goto LABEL_12;
      }

      if (result != 3)
      {
LABEL_11:
        v18 = 0;
LABEL_13:
        v12 = v17;
        v13 = v16;
        v14 = v15;
LABEL_16:
        sub_1002FB794(result, v12, v13, v14);
        return v18;
      }
    }
  }

  else
  {
    if (v4)
    {
      v15 = v14;
      v16 = v13;
      v17 = v12;
      if (v4 == 1)
      {
        if (result == 1)
        {
          return result;
        }

        goto LABEL_11;
      }

LABEL_12:
      v19 = result;
      sub_1002FB794(v4, v6, v8, v10);
      result = v19;
      v18 = v19 > 3;
      goto LABEL_13;
    }

    if (result)
    {
LABEL_15:
      v18 = 0;
      goto LABEL_16;
    }
  }

  return 1;
}

uint64_t sub_100339480(uint64_t a1)
{
  v2 = type metadata accessor for RoutingEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003394DC()
{
  result = qword_100526798;
  if (!qword_100526798)
  {
    sub_1001C2EC8(&qword_100526790, qword_1004585A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100526798);
  }

  return result;
}

unint64_t sub_100339564(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1 & 0xFFFFFFFFFFFFFF8);
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_62:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= v4[2])
      {
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
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        v4 = a1;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v11 == _CocoaArrayWrapper.endIndex.getter())
            {
              return v7;
            }
          }

          else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v7;
          }

          v5 = v3 & 0xC000000000000001;
          if ((v3 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }
          }

          v12 = swift_unknownObjectWeakLoadStrong();

          if (!v12 || (swift_unknownObjectRelease(), v12 != a2))
          {
            if (v7 != v11)
            {
              if (v5)
              {
                v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_59;
                }

                v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v15)
                {
                  goto LABEL_60;
                }

                if (v11 >= v15)
                {
                  goto LABEL_61;
                }

                v13 = *(v3 + 32 + 8 * v7);
                v14 = *(v3 + 32 + 8 * v11);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_10021C368(v3);
                v16 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v16) = 0;
              }

              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v14;

              if ((v3 & 0x8000000000000000) != 0 || v16)
              {
                v3 = sub_10021C368(v3);
                v5 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v11 & 0x8000000000000000) != 0)
                {
LABEL_50:
                  __break(1u);
                  return _CocoaArrayWrapper.endIndex.getter();
                }
              }

              else if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_50;
              }

              if (v11 >= *(v5 + 16))
              {
                goto LABEL_58;
              }

              *(v5 + 8 * v11 + 32) = v13;

              *a1 = v3;
            }

            v8 = __OFADD__(v7++, 1);
            if (v8)
            {
              goto LABEL_57;
            }
          }

          v8 = __OFADD__(v11++, 1);
          if (v8)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_53;
    }
  }

  if (v5)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  return v4[2];
}

uint64_t sub_10033984C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for RoutingTimeline.Observer();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100339948(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100339260(result, 1);

  return sub_10033984C(v5, v3, 0);
}

uint64_t type metadata accessor for RoutingTimeline.Event(uint64_t a1)
{
  result = qword_100534AA0;
  if (!qword_100534AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100339ABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100339B30(uint64_t a1)
{
  result = type metadata accessor for RoutingEvent(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100339BD4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100339BEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 25))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100339C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_100339CA4(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void *sub_100339CD8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    *(v0 + 24) = &_swiftEmptySetSingleton;
  }

  return v1;
}

double sub_100339D18(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  return result;
}

uint64_t sub_100339D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 56);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!*(sub_100015D10() + 2))
  {

    goto LABEL_6;
  }

  sub_10000698C(a1, a2);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_6:

    v15 = static String.nanoIDEightChar()();
    v17 = v16;
    v18 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v18;
    sub_100035B14(v15, v17, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + 16) = v24;
  }

  v20 = *(v3 + 16);
  if (!*(v20 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_10000698C(a1, a2);
  if (v21)
  {
    v22 = *(*(v20 + 56) + 16 * result);

    return v22;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100339F5C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 56);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v16 = sub_100300EE4();
    if (v16[2] && (v17 = sub_10028B074(a1, v10, v11, v12, v13, v14, v15), (v18 & 1) != 0))
    {
      v19 = *(v16[7] + 16 * v17);
    }

    else
    {
      v19 = 0;
    }

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10033A0B4(uint64_t a1)
{
  v2 = v1;
  v97 = *v1;
  v4 = type metadata accessor for HostedRoutingSourceSession(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = (&v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = v2;
  v12 = v2[7];
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v96 = v12;
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    v14 = *(a1 + 16);
    v15 = _swiftEmptyArrayStorage;
    if (v14)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000089FC(0, v14, 0);
      v15 = aBlock[0];
      v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v17 = *(v5 + 72);
      do
      {
        sub_10033CFF8(v16, v7);
        v18 = *v7;
        v19 = v7[1];

        sub_10033D05C(v7);
        aBlock[0] = v15;
        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_1000089FC((v20 > 1), v21 + 1, 1);
          v15 = aBlock[0];
        }

        v15[2] = v21 + 1;
        v22 = &v15[2 * v21];
        v22[4] = v18;
        v22[5] = v19;
        v16 += v17;
        --v14;
      }

      while (v14);
    }

    v23 = sub_100008280(v15);

    v101[3] = v23;

    v24 = sub_100339CD8();
    v25 = v24;
    v26 = 0;
    v27 = 1 << v24[32];
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v24 + 56;
    v30 = v28 & *(v24 + 7);
    v31 = (v27 + 63) >> 6;
LABEL_10:
    if (v30)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v32 >= v31)
      {

        v42 = sub_100015D10();
        v43 = 0;
        v45 = (v42 + 8);
        v44 = v42[8];
        v100 = v42;
        v46 = 1 << *(v42 + 32);
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        else
        {
          v47 = -1;
        }

        v48 = v47 & v44;
        v49 = (v46 + 63) >> 6;
        v95 = v103;
        v99 = v49;
        if ((v47 & v44) == 0)
        {
LABEL_26:
          while (1)
          {
            v50 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_65;
            }

            if (v50 >= v49)
            {

              return;
            }

            v48 = *&v45[8 * v50];
            ++v43;
            if (v48)
            {
              v43 = v50;
              break;
            }
          }
        }

        while (2)
        {
          while (2)
          {
            v51 = __clz(__rbit64(v48));
            v48 &= v48 - 1;
            v52 = (v43 << 10) | (16 * v51);
            v53 = (v100[6] + v52);
            v54 = *v53;
            v55 = v53[1];
            v56 = (v100[7] + v52);
            v58 = *v56;
            v57 = v56[1];
            v59 = v101[3];
            if (*(v59 + 16))
            {
              v98 = *v53;
              Hasher.init(_seed:)();

              String.hash(into:)();
              v60 = Hasher._finalize()();
              v61 = -1 << *(v59 + 32);
              v62 = v60 & ~v61;
              if ((*(v59 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
              {
                v63 = ~v61;
                while (1)
                {
                  v64 = (*(v59 + 48) + 16 * v62);
                  v65 = *v64 == v58 && v64[1] == v57;
                  if (v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v62 = (v62 + 1) & v63;
                  if (((*(v59 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
                  {
                    goto LABEL_39;
                  }
                }

LABEL_48:

                v49 = v99;
                if (!v48)
                {
                  goto LABEL_26;
                }

                continue;
              }

LABEL_39:

              v54 = v98;
            }

            else
            {
            }

            break;
          }

          if (*(sub_100030790() + 2))
          {
            sub_10000698C(v58, v57);
            if (v66)
            {
              goto LABEL_48;
            }
          }

          v67 = swift_allocObject();
          swift_weakInit();
          v68 = swift_allocObject();
          v68[2] = v67;
          v68[3] = v58;
          v68[4] = v57;
          v68[5] = v54;
          v69 = v97;
          v68[6] = v55;
          v68[7] = v69;
          v70 = objc_allocWithZone(MSVTimer);
          v103[2] = sub_10033D0B8;
          v103[3] = v68;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v103[0] = sub_100003D98;
          v103[1] = &unk_1004CE798;
          v71 = _Block_copy(aBlock);
          v72 = v96;

          v73 = [v70 initWithInterval:0 repeats:v72 queue:v71 block:{300.0, v95}];
          _Block_release(v71);

          v74 = v101[4];

          if (v73)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v74;
            v76 = sub_10000698C(v58, v57);
            v78 = v74[2];
            v79 = (v77 & 1) == 0;
            v80 = __OFADD__(v78, v79);
            v81 = v78 + v79;
            if (v80)
            {
              goto LABEL_66;
            }

            v82 = v77;
            if (v74[3] >= v81)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_55;
              }

              v91 = v76;
              sub_100228424();
              v76 = v91;
              if ((v82 & 1) == 0)
              {
                goto LABEL_58;
              }

LABEL_56:
              v88 = v76;

              v74 = aBlock[0];
              v89 = *(aBlock[0] + 56);
              v90 = *(v89 + 8 * v88);
              *(v89 + 8 * v88) = v73;
            }

            else
            {
              sub_100228180(v81, isUniquelyReferenced_nonNull_native);
              v76 = sub_10000698C(v58, v57);
              if ((v82 & 1) != (v83 & 1))
              {
                goto LABEL_69;
              }

LABEL_55:
              if (v82)
              {
                goto LABEL_56;
              }

LABEL_58:
              v74 = aBlock[0];
              *(aBlock[0] + 8 * (v76 >> 6) + 64) |= 1 << v76;
              v92 = (v74[6] + 16 * v76);
              *v92 = v58;
              v92[1] = v57;
              *(v74[7] + 8 * v76) = v73;
              v93 = v74[2];
              v80 = __OFADD__(v93, 1);
              v94 = v93 + 1;
              if (v80)
              {
                goto LABEL_68;
              }

              v74[2] = v94;
            }

            v49 = v99;
          }

          else
          {
            v84 = sub_10000698C(v58, v57);
            v86 = v85;

            v49 = v99;
            if (v86)
            {
              v87 = swift_isUniquelyReferenced_nonNull_native();
              aBlock[0] = v74;
              if (!v87)
              {
                sub_100228424();
                v74 = aBlock[0];
              }

              sub_1001DEE44(v84, v74);
            }
          }

          v101[4] = v74;

          if (!v48)
          {
            goto LABEL_26;
          }

          continue;
        }
      }

      v30 = *&v29[8 * v32];
      ++v26;
      if (v30)
      {
        v26 = v32;
LABEL_15:
        v33 = (*(v25 + 6) + ((v26 << 10) | (16 * __clz(__rbit64(v30)))));
        v34 = *v33;
        v35 = v33[1];
        v36 = sub_100030790();

        v37 = sub_10000698C(v34, v35);
        v39 = v38;

        if (v39)
        {
          v40 = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v36;
          if (!v40)
          {
            sub_100228424();
            v36 = aBlock[0];
          }

          v41 = *(v36[7] + 8 * v37);
          sub_1001DEE44(v37, v36);
        }

        else
        {
          v41 = 0;
        }

        v30 &= v30 - 1;
        v101[4] = v36;

        if (v41)
        {
          [v41 invalidate];
        }

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_10033A964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_1000089FC(0, v1, 0);
  v3 = v2 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v7 = *(v2 + 36);
  v28 = v2 + 72;
  v29 = v1;
  v30 = v7;
  v31 = v2 + 64;
  v32 = v2;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v7 != *(v2 + 36))
    {
      goto LABEL_23;
    }

    v33 = v6;
    v10 = (*(v2 + 48) + 16 * v5);
    v11 = *v10;
    v12 = v10[1];
    v13 = (*(v2 + 56) + 16 * v5);
    v14 = v13[1];
    v34 = *v13;

    _StringGuts.grow(_:)(48);

    v15._countAndFlagsBits = v11;
    v15._object = v12;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0xD000000000000017;
    v16._object = 0x8000000100440A30;
    String.append(_:)(v16);
    v17._countAndFlagsBits = v34;
    v17._object = v14;
    String.append(_:)(v17);

    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      result = sub_1000089FC((v18 > 1), v19 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v19 + 1;
    v20 = &_swiftEmptyArrayStorage[2 * v19];
    v20[4] = 0xD000000000000015;
    v20[5] = 0x8000000100440A50;
    v2 = v32;
    v8 = 1 << *(v32 + 32);
    if (v5 >= v8)
    {
      goto LABEL_24;
    }

    v3 = v31;
    v21 = *(v31 + 8 * v9);
    if ((v21 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    v7 = v30;
    if (v30 != *(v32 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v5 & 0x3F));
    if (v22)
    {
      v8 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v9 << 6;
      v24 = v9 + 1;
      v25 = (v28 + 8 * v9);
      while (v24 < (v8 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_10000A16C(v5, v30, 0);
          v8 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_10000A16C(v5, v30, 0);
    }

LABEL_4:
    v6 = v33 + 1;
    v5 = v8;
    if (v33 + 1 == v29)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_10033AC54(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1000089FC(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 56;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v26 = v1 + 64;
    v27 = v2;
    v28 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v7;
      v30 = *(v1 + 36);
      v10 = (*(v1 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];

      v13._countAndFlagsBits = v11;
      v13._object = v12;
      String.append(_:)(v13);

      v14 = v4;
      v31 = v4;
      v15 = v1;
      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_1000089FC((v16 > 1), v17 + 1, 1);
        v14 = v31;
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = 538976288;
      v18[5] = 0xE400000000000000;
      v8 = 1 << *(v15 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (v26 + 8 * v9);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_10000A16C(v6, v30, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_10000A16C(v6, v30, 0);
      }

LABEL_4:
      v7 = v29 + 1;
      v6 = v8;
      if (v29 + 1 == v27)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10033AEAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  sub_1000089FC(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  v6 = 0;
  v7 = *(v3 + 36);
  v33 = v3 + 72;
  v34 = v1;
  v35 = v7;
  v36 = v3 + 64;
  v37 = v3;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v3 + 32))
  {
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v7 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v39 = 1 << result;
    v40 = result >> 6;
    v38 = v6;
    v9 = *(v3 + 56);
    v10 = *(v3 + 48) + 56 * result;
    v11 = *(v10 + 8);
    v41 = *v10;
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    v44 = v2;
    v14 = *(v10 + 32);
    v15 = *(v10 + 40);
    v16 = (v9 + 16 * result);
    v17 = v16[1];
    v42 = *v16;
    v43 = result;
    v18 = *(v10 + 48);

    sub_10026D0B8(v13, v12, v14, v15, v18);
    swift_bridgeObjectRetain_n();

    sub_10026D0B8(v13, v12, v14, v15, v18);

    sub_1002485A4(v13, v12, v14, v15, v18);

    _StringGuts.grow(_:)(44);

    v19._countAndFlagsBits = v41;
    v19._object = v11;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0xD000000000000017;
    v20._object = 0x8000000100440A30;
    String.append(_:)(v20);
    v21._countAndFlagsBits = v42;
    v21._object = v17;
    String.append(_:)(v21);

    v22 = v15;
    v2 = v44;
    sub_1002485A4(v13, v12, v14, v22, v18);

    v24 = v44[2];
    v23 = v44[3];
    if (v24 >= v23 >> 1)
    {
      sub_1000089FC((v23 > 1), v24 + 1, 1);
      v2 = v44;
    }

    v2[2] = v24 + 1;
    v25 = &v2[2 * v24];
    v25[4] = 0xD000000000000011;
    v25[5] = 0x8000000100440A10;
    v3 = v37;
    v8 = 1 << *(v37 + 32);
    result = v43;
    if (v43 >= v8)
    {
      goto LABEL_24;
    }

    v4 = v36;
    v26 = *(v36 + 8 * v40);
    if ((v26 & v39) == 0)
    {
      goto LABEL_25;
    }

    v7 = v35;
    if (v35 != *(v37 + 36))
    {
      goto LABEL_26;
    }

    v27 = v26 & (-2 << (v43 & 0x3F));
    if (v27)
    {
      v8 = __clz(__rbit64(v27)) | v43 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v40 << 6;
      v29 = v40 + 1;
      v30 = (v33 + 8 * v40);
      while (v29 < (v8 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          sub_10000A16C(v43, v35, 0);
          v8 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      sub_10000A16C(v43, v35, 0);
    }

LABEL_4:
    v6 = v38 + 1;
    result = v8;
    if (v38 + 1 == v34)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_10033B21C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v10 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v35 = sub_100030790();
    v15 = sub_10033C7C4(a2, a3);
    *(v14 + 32) = v35;

    if (v15 && (v15, v16 = sub_100339CD8(), v17 = sub_1001BD5E8(a2, a3, v16), , (v17 & 1) == 0))
    {
      v18 = sub_100015A78();
      sub_100015B34(v18, v12);
      v19 = type metadata accessor for Logger();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v12, 1, v19) == 1)
      {
        sub_10033D1BC(v12);
      }

      else
      {
        v34 = v20;

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        v33 = v22;
        v23 = v22;
        v24 = v21;
        if (os_log_type_enabled(v21, v23))
        {
          v25 = swift_slowAlloc();
          v32 = v19;
          v26 = v25;
          v35 = swift_slowAlloc();
          *v26 = 136315650;
          v27 = _typeName(_:qualified:)();
          v29 = sub_10002C9C8(v27, v28, &v35);
          v31 = v21;
          v30 = v29;

          *(v26 + 4) = v30;
          *(v26 + 12) = 2080;
          *(v26 + 14) = sub_10002C9C8(a2, a3, &v35);
          *(v26 + 22) = 2080;
          *(v26 + 24) = sub_10002C9C8(a4, a5, &v35);
          v24 = v31;
          _os_log_impl(&_mh_execute_header, v31, v33, "[%s] expirationTimer - remove session identifier: %s for lost groupIdentifier: %s", v26, 0x20u);
          swift_arrayDestroy();

          v19 = v32;
        }

        (*(v34 + 8))(v12, v19);
      }

      v35 = sub_100015D10();

      sub_1001EC7F4(0, 0, a4, a5);
      *(v14 + 16) = v35;
    }

    else
    {
    }
  }
}

uint64_t sub_10033B580(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v47 = *v3;
  v8 = type metadata accessor for Logger();
  v51 = *(v8 - 8);
  __chkstk_darwin(v8);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v4[7];
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v49 = v15;
    v17 = *a3;
    v18 = *(a3 + 1);
    v19 = a3[2];
    v57[0] = a3[1];
    v57[1] = v19;
    v58 = *(a3 + 48);
    v20 = sub_100300EE4();

    sub_10026D080(v57, &aBlock);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v20;
    sub_10033CC78(a1, a2, a3, isUniquelyReferenced_nonNull_native, v22, v23, v24);

    sub_100238E4C(v57);
    v4[6] = aBlock;

    v25 = sub_100028D40();
    v26 = *(v51 + 16);
    v48 = v8;
    v26(v50, v25, v8);

    sub_10026D080(v57, &aBlock);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    sub_100238E4C(v57);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v46 = v17;
      v30 = v29;
      v56[0] = swift_slowAlloc();
      *v30 = 136315650;
      v31 = _typeName(_:qualified:)();
      v33 = sub_10002C9C8(v31, v32, v56);
      v47 = a1;
      v34 = v33;

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_10002C9C8(v46, v18, v56);
      *(v30 + 22) = 2080;
      v35 = a3[1];
      aBlock = *a3;
      v53 = v35;
      v54 = a3[2];
      v55 = *(a3 + 48);
      sub_1002856A4();
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = sub_10002C9C8(v36, v37, v56);

      *(v30 + 24) = v38;
      a1 = v47;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%s] prewarmSessionIdentifier<%s> - interaction: %s", v30, 0x20u);
      swift_arrayDestroy();
    }

    (*(v51 + 8))(v50, v48);
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = a1;
    *(v40 + 32) = a2;
    v41 = a3[1];
    *(v40 + 40) = *a3;
    *(v40 + 56) = v41;
    *(v40 + 72) = a3[2];
    *(v40 + 88) = *(a3 + 48);
    v42 = objc_allocWithZone(MSVTimer);
    *&v54 = sub_10033D0C8;
    *(&v54 + 1) = v40;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v53 = sub_100003D98;
    *(&v53 + 1) = &unk_1004CE7E8;
    v43 = _Block_copy(&aBlock);

    sub_10026D080(v57, v56);

    v44 = v49;
    v45 = [v42 initWithInterval:0 repeats:v49 queue:v43 block:120.0];
    _Block_release(v43);

    *&aBlock = sub_100300E4C();

    sub_1001EC6DC(v45, a1, a2);
    v4[5] = aBlock;

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10033BB34(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v106 = a4;
  v107 = a5;
  v109 = a1;
  v102 = *v5;
  v105 = type metadata accessor for Logger();
  v9 = *(v105 - 8);
  v10 = __chkstk_darwin(v105);
  v101 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v95 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v6[7];
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v20)
  {
    v27 = sub_100300EE4();
    if (!v27[2])
    {
      goto LABEL_42;
    }

    v28 = sub_10028B074(a3, v21, v22, v23, v24, v25, v26);
    if ((v29 & 1) == 0)
    {
      goto LABEL_42;
    }

    v30 = (v27[7] + 16 * v28);
    v32 = *v30;
    v31 = v30[1];

    v33 = v32 == v109 && v31 == a2;
    v34 = v13;
    if (!v33)
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v36 = v105;
      if (v35)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    v36 = v105;
LABEL_11:
    v37 = sub_100028D40();
    v38 = v9 + 16;
    v97 = *(v9 + 16);
    v97(v34, v37, v36);
    v104 = v9;
    v40 = *a3;
    v39 = *(a3 + 8);
    v41 = *(a3 + 32);
    v111[0] = *(a3 + 16);
    v111[1] = v41;
    v112 = *(a3 + 48);

    sub_10026D080(v111, v110);

    v42 = v34;
    v43 = v107;

    v103 = v42;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    sub_100238E4C(v111);

    v46 = os_log_type_enabled(v44, v45);
    v108 = v6;
    v96 = v40;
    v99 = v38;
    v100 = v39;
    v98 = v37;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v110[0] = swift_slowAlloc();
      *v47 = 136315906;
      v48 = _typeName(_:qualified:)();
      v49 = v43;
      v51 = sub_10002C9C8(v48, v50, v110);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_10002C9C8(v40, v39, v110);
      *(v47 + 22) = 2080;
      *(v47 + 24) = sub_10002C9C8(v109, a2, v110);
      *(v47 + 32) = 2080;
      *(v47 + 34) = sub_10002C9C8(v106, v49, v110);
      _os_log_impl(&_mh_execute_header, v44, v45, "[%s] commitPrewarmedIdentifier<%s> - identifier: %s -> groupIdentifier: %s", v47, 0x2Au);
      swift_arrayDestroy();

      v52 = v103;
      v53 = *(v104 + 8);
      v54 = v105;
    }

    else
    {

      v52 = v103;
      v53 = *(v104 + 8);
      v54 = v36;
    }

    v103 = v53;
    v53(v52);
    v55 = sub_100015D10();
    v56 = v55;
    v57 = 0;
    v58 = v55 + 64;
    v59 = 1 << v55[32];
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & *(v55 + 8);
    v62 = (v59 + 63) >> 6;
    v63 = v109;
    while (v61)
    {
LABEL_23:
      v66 = (v57 << 10) | (16 * __clz(__rbit64(v61)));
      v67 = (*(v56 + 6) + v66);
      v69 = *v67;
      v68 = v67[1];
      v70 = (*(v56 + 7) + v66);
      if (*v70 != v63 || v70[1] != a2)
      {
        v61 &= v61 - 1;
        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v63 = v109;
        if ((v72 & 1) == 0)
        {
          continue;
        }
      }

      v73 = v107;
      v74 = v69 == v106 && v68 == v107;
      if (v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v64 = v108;
      }

      else
      {
        v78 = v101;
        v97(v101, v98, v54);
        v79 = v100;

        sub_10026D080(v111, v110);

        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.fault.getter();

        sub_100238E4C(v111);

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v98 = v80;
          v83 = v82;
          v99 = swift_slowAlloc();
          v110[0] = v99;
          *v83 = 136315906;
          v84 = _typeName(_:qualified:)();
          v86 = sub_10002C9C8(v84, v85, v110);
          LODWORD(v102) = v81;
          v87 = v86;

          *(v83 + 4) = v87;
          v88 = v78;
          *(v83 + 12) = 2080;
          *(v83 + 14) = sub_10002C9C8(v96, v79, v110);
          *(v83 + 22) = 2080;
          *(v83 + 24) = sub_10002C9C8(v109, a2, v110);
          *(v83 + 32) = 2080;

          v89 = sub_10002C9C8(v69, v68, v110);

          *(v83 + 34) = v89;
          v90 = v98;
          _os_log_impl(&_mh_execute_header, v98, v102, "[%s] commitPrewarmedIdentifier<%s> - identifier: %s already mapped to groupIdentifier: %s -> unmapping", v83, 0x2Au);
          swift_arrayDestroy();

          v91 = v105;
          v92 = v88;
        }

        else
        {

          v92 = v78;
          v91 = v54;
        }

        v103(v92, v91);
        v93 = v108;
        v110[0] = v108[2];

        v94 = v69;
        v64 = v93;
        sub_10033C714(v94, v68);

        v93[2] = v110[0];
      }

LABEL_35:
      v75 = v64[2];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110[0] = v75;
      sub_100035B14(v109, a2, v106, v73, isUniquelyReferenced_nonNull_native);

      v64[2] = v110[0];
    }

    v64 = v108;
    while (1)
    {
      v65 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v65 >= v62)
      {

        v73 = v107;
        goto LABEL_35;
      }

      v61 = *&v58[8 * v65];
      ++v57;
      if (v61)
      {
        v57 = v65;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_42:

  __break(1u);
  return result;
}

uint64_t sub_10033C3CC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10033C42C()
{
  _StringGuts.grow(_:)(16);

  strcpy(&v21, "Identifiers:\n");
  HIWORD(v21._object) = -4864;
  v0 = sub_100015D10();
  sub_10033A964(v0);

  sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  sub_10002C150();
  v1 = BidirectionalCollection<>.joined(separator:)();
  v3 = v2;

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  String.append(_:)(v21);

  _StringGuts.grow(_:)(23);

  v6 = sub_100339CD8();
  sub_10033AC54(v6);

  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 10;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000014;
  v12._object = 0x80000001004408D0;
  String.append(_:)(v12);

  _StringGuts.grow(_:)(26);

  v13 = sub_100300EE4();
  sub_10033AEAC(v13);

  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 10;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD000000000000017;
  v19._object = 0x80000001004408F0;
  String.append(_:)(v19);

  return 0xD000000000000019;
}

uint64_t sub_10033C714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000698C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100035C9C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_10021A064(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_10033C7C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000698C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100228424();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1001DEE44(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_10033C85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v9 = sub_10028B074(a1, a2, a3, a4, a5, a6, a7);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v7;
  v22 = *v8;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10033CE24();
    v13 = v22;
  }

  v14 = *(v13 + 48) + 56 * v11;
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  v17 = *(v14 + 32);
  v18 = *(v14 + 40);
  v19 = *(v14 + 48);

  sub_1002485A4(v15, v16, v17, v18, v19);
  v20 = *(*(v13 + 56) + 16 * v11);
  sub_10028B42C(v11, v13);
  *v8 = v13;
  return v20;
}

void sub_10033C938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100526C58, &qword_1004588A8);
  v44 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v41 = v3;
    v42 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v43 = v5;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 56 * v22;
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);
      v27 = *(v24 + 24);
      v28 = *(v24 + 32);
      v29 = *(v24 + 40);
      v30 = *(v24 + 48);
      v31 = (v23 + 16 * v22);
      v45 = *v31;
      v46 = *v24;
      v48 = v31[1];
      if ((v44 & 1) == 0)
      {

        sub_10026D0B8(v26, v27, v28, v29, v30);
      }

      sub_10028BE34();
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v13 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v15 = v27;
        v16 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v13 + 8 * v35);
          if (v39 != -1)
          {
            v14 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v34) & ~*(v13 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v15 = v27;
      v16 = v30;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v17 = *(v7 + 48) + 56 * v14;
      *v17 = v46;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v15;
      *(v17 + 32) = v28;
      *(v17 + 40) = v29;
      *(v17 + 48) = v16;
      v18 = (*(v7 + 56) + 16 * v14);
      *v18 = v45;
      v18[1] = v48;
      ++*(v7 + 16);
      v5 = v43;
      v11 = v47;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v21 = v42[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v47 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v42, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v42 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_10033CC78(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v9 = a4;
  v13 = *v7;
  v14 = sub_10028B074(a3, a2, a3, a4, a5, a6, a7);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (v9 & 1) == 0)
  {
    if (v21 < v19 || (v9 & 1) != 0)
    {
      sub_10033C938(v19, v9 & 1);
      v14 = sub_10028B074(a3, v23, v24, v25, v26, v27, v28);
      if ((v20 & 1) != (v29 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v22 = v14;
      sub_10033CE24();
      v14 = v22;
    }
  }

  v30 = *v8;
  if ((v20 & 1) == 0)
  {
    v34 = a3[1];
    v44 = *a3;
    v33 = v44;
    v35 = a3[2];
    v42[0] = v34;
    v42[1] = v35;
    v43 = *(a3 + 48);
    v36 = v43;
    v30[(v14 >> 6) + 8] |= 1 << v14;
    v37 = v30[6] + 56 * v14;
    *(v37 + 48) = v36;
    *(v37 + 16) = v34;
    *(v37 + 32) = v35;
    *v37 = v33;
    v38 = (v30[7] + 16 * v14);
    *v38 = a1;
    v38[1] = a2;
    v39 = v30[2];
    v18 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (!v18)
    {
      v30[2] = v40;
      sub_10028BC98(&v44, v41);
      return sub_10026D080(v42, v41);
    }

    goto LABEL_15;
  }

  v31 = (v30[7] + 16 * v14);
  *v31 = a1;
  v31[1] = a2;
}

void sub_10033CE24()
{
  sub_1001BC5A8(&qword_100526C58, &qword_1004588A8);
  v29 = v0;
  v1 = *v0;
  v30 = static _DictionaryStorage.copy(original:)();
  v31 = v1;
  if (*(v1 + 16))
  {
    v2 = (v30 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || v2 >= v1 + 64 + 8 * v4)
    {
      memmove(v2, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v30 + 16) = *(v31 + 16);
    v7 = 1 << *(v31 + 32);
    v8 = *(v31 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 56 * v15;
        v17 = *(v31 + 48) + 56 * v15;
        v18 = *(v17 + 8);
        v19 = *(v17 + 16);
        v20 = *(v17 + 24);
        v21 = *(v17 + 32);
        v22 = *(v17 + 40);
        v15 *= 16;
        v23 = (*(v31 + 56) + v15);
        v24 = *v23;
        v25 = v23[1];
        v26 = *(v30 + 48) + v16;
        v27 = *(v17 + 48);
        *v26 = *v17;
        *(v26 + 8) = v18;
        *(v26 + 16) = v19;
        *(v26 + 24) = v20;
        *(v26 + 32) = v21;
        *(v26 + 40) = v22;
        *(v26 + 48) = v27;
        v28 = (*(v30 + 56) + v15);
        *v28 = v24;
        v28[1] = v25;

        sub_10026D0B8(v19, v20, v21, v22, v27);
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
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
}

uint64_t sub_10033CFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSourceSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033D05C(uint64_t a1)
{
  v2 = type metadata accessor for HostedRoutingSourceSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10033D0C8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v11 = sub_100300E4C();

    *(v4 + 40) = v11;

    v12 = sub_100300EE4();
    sub_10033C85C(v0 + 40, v5, v6, v7, v8, v9, v10);

    *(v4 + 48) = v12;
  }

  return result;
}

uint64_t sub_10033D1BC(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_10033D250()
{
  if (qword_100534AB0 != -1)
  {
    swift_once();
  }

  return &qword_100538578;
}

void sub_10033D2C4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, void *a4)
{
  v6 = a2(a1);
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *a3 = v8;
    *a4 = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_10033D330()
{
  if (qword_100534AB8 != -1)
  {
    swift_once();
  }

  return &qword_100538588;
}

uint64_t sub_10033D380()
{
  v0 = String._bridgeToObjectiveC()();
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  return IsSystemMediaApplication;
}

uint64_t sub_10033D3B4()
{
  v0 = String._bridgeToObjectiveC()();
  IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication();

  return IsSystemPodcastApplication;
}

uint64_t sub_10033D3E8(uint64_t a1, uint64_t a2)
{
  v3 = String._bridgeToObjectiveC()();
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  if (IsSystemMediaApplication)
  {
    if (qword_100534AB0 != -1)
    {
      swift_once();
    }

    v5 = &qword_100538578;
LABEL_9:
    swift_beginAccess();
    a1 = *v5;
    goto LABEL_10;
  }

  v6 = String._bridgeToObjectiveC()();
  IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication();

  if (IsSystemPodcastApplication)
  {
    if (qword_100534AB8 != -1)
    {
      swift_once();
    }

    v5 = &qword_100538588;
    goto LABEL_9;
  }

LABEL_10:

  return a1;
}

uint64_t sub_10033D520()
{
  v1 = *(*v0 + 96);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    swift_getFunctionTypeMetadata1();
    v2 = Array.init()();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10033D5FC()
{
  v0 = swift_allocObject();
  (*(*(*(*v0 + 80) - 8) + 56))(v0 + *(*v0 + 88), 1, 1);
  *(v0 + *(*v0 + 96)) = 0;
  return v0;
}

uint64_t sub_10033D6A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v9 = *(v4 - 8);
  (*(v9 + 16))(&v18 - v7, a1, v4);
  (*(v9 + 56))(v8, 0, 1, v4);
  v10 = *(*v2 + 88);
  swift_beginAccess();
  (*(v6 + 40))(v2 + v10, v8, v5);
  swift_endAccess();
  v11 = sub_10033D520();
  swift_getFunctionTypeMetadata1();
  if (Array.endIndex.getter())
  {
    v12 = 0;
    v13 = v11 + 40;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      result = Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (!IsNativeType)
      {
        break;
      }

      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_8;
      }

      v17 = *(v13 - 8);

      v17(a1);

      ++v12;
      v13 += 16;
      if (v16 == Array.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    __break(1u);
LABEL_8:
    __break(1u);
  }

  else
  {
LABEL_6:

    *(v2 + *(*v2 + 96)) = static Array._allocateUninitialized(_:)();
  }

  return result;
}

uint64_t sub_10033D938(void (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = *(v6 - 8);
  __chkstk_darwin(v9);
  v14 = v18 - v13;
  v15 = *(v5 + 88);
  swift_beginAccess();
  (*(v8 + 16))(v11, v2 + v15, v7);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v16 = swift_allocObject();
    v16[2] = v6;
    v16[3] = a1;
    v16[4] = a2;
    v18[1] = sub_10033DCE8;
    v18[2] = v16;

    v18[0] = sub_10033D520();
    swift_getFunctionTypeMetadata1();
    type metadata accessor for Array();
    Array.append(_:)();
    *(v2 + *(*v2 + 96)) = v18[0];
  }

  else
  {
    (*(v12 + 32))(v14, v11, v6);
    a1(v14);
    return (*(v12 + 8))(v14, v6);
  }
}

uint64_t sub_10033DBF0()
{
  v1 = *(*v0 + 88);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10033DC90()
{
  sub_10033DBF0();

  return swift_deallocClassInstance();
}

uint64_t sub_10033DD10(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10033DDC4()
{
  type metadata accessor for MediaControlActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static MediaControlActor.shared = v0;
  return result;
}

uint64_t sub_10033DE00()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t *MediaControlActor.shared.unsafeMutableAddressor()
{
  if (qword_100534B40 != -1)
  {
    swift_once();
  }

  return &static MediaControlActor.shared;
}

double static MediaControlActor.shared.getter()
{
  if (qword_100534B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static MediaControlActor.shared.setter(uint64_t a1)
{
  if (qword_100534B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static MediaControlActor.shared = a1;

  return result;
}

uint64_t (*static MediaControlActor.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100534B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t MediaControlActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10033E068(uint64_t a1, uint64_t a2)
{
  result = qword_100526CA0;
  if (!qword_100526CA0)
  {
    type metadata accessor for MediaControlActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100526CA0);
  }

  return result;
}

uint64_t sub_10033E0E0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MediaControlActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_10033E118@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001BC5A8(&qword_100526D60, &qword_1004589D0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = OBJC_IVAR____TtC12mediaremoted15RouteNormalizer____lazy_storage___uuid;
  swift_beginAccess();
  sub_100038D18(v1 + v9, v8);
  v10 = sub_1001BC5A8(&qword_100526D48, &qword_1004589B8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000038A4(v8, &qword_100526D60, &qword_1004589D0);
  Regex<A>.init(_:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10033E928(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_10033E340(uint64_t a1, uint64_t a2)
{
  result = sub_100015D10();
  v5 = result;
  v6 = 0;
  v7 = result + 64;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = (v6 << 10) | (16 * __clz(__rbit64(v10)));
    v14 = *(*(v5 + 48) + v13);
    v15 = (*(v5 + 56) + v13);
    if (*v15 != a1 || v15[1] != a2)
    {
      v10 &= v10 - 1;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return v14;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return a1;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10033E468()
{

  sub_1000038A4(v0 + OBJC_IVAR____TtC12mediaremoted15RouteNormalizer____lazy_storage___mac, &qword_100526D60, &qword_1004589D0);
  sub_1000038A4(v0 + OBJC_IVAR____TtC12mediaremoted15RouteNormalizer____lazy_storage___uuid, &qword_100526D60, &qword_1004589D0);

  return swift_deallocClassInstance();
}

uint64_t sub_10033E514()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC12mediaremoted15RouteNormalizer____lazy_storage___mac;
  v2 = sub_1001BC5A8(&qword_100526D48, &qword_1004589B8);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC12mediaremoted15RouteNormalizer____lazy_storage___uuid, 1, 1, v2);
  return v0;
}

_BYTE *sub_10033E5D8()
{
  result = sub_100015D10();
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << result[32];
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 8);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (v8 << 10) | (16 * v9);
    v11 = (*(v1 + 6) + v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*(v1 + 7) + v10);
    v15 = *v14;
    v16 = v14[1];

    _StringGuts.grow(_:)(29);

    v17._countAndFlagsBits = v12;
    v17._object = v13;
    String.append(_:)(v17);

    v18._object = 0x8000000100440B90;
    v18._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v18);
    v19._countAndFlagsBits = v15;
    v19._object = v16;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 10;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0x203A656372756F73;
    v21._object = 0xE800000000000000;
    String.append(_:)(v21);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return 0xD000000000000012;
    }

    v6 = *&v3[8 * v8];
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for RouteNormalizer(uint64_t a1)
{
  result = qword_100534C60;
  if (!qword_100534C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10033E828(uint64_t a1)
{
  sub_10033E8C4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10033E8C4(uint64_t a1)
{
  if (!qword_100526D90)
  {
    sub_1001C2EC8(&qword_100526D48, &qword_1004589B8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100526D90);
    }
  }
}

uint64_t sub_10033E928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100526D60, &qword_1004589D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10033E9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v80 = *(a1 + 16);
  if (!v80)
  {
    return;
  }

  v10 = a8;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a2;
  v16 = 0;
  v79 = a1 + 32;
  while (1)
  {
    v83 = v16;
    v17 = v79 + 24 * v16;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    sub_10001DAE0(*v17, v18, v20);
    v21 = sub_10001D898(v19, v18, v20);
    v81 = v22;
    v82 = v23;
    if ((v23 >> 11) - 8 <= 2)
    {
      v77 = v19;
      v78 = v21;
      v24 = *(v21 + 16);
      v25 = *(v24 + 16);
      if (v25)
      {

        sub_10023CCB4(0, v25, 0);
        v26 = (v24 + 64);
        do
        {
          v27 = *(v26 - 2);
          v28 = *(v26 - 1);
          v29 = *v26;
          sub_10001DAE0(v27, v28, *v26);
          v31 = _swiftEmptyArrayStorage[2];
          v30 = _swiftEmptyArrayStorage[3];
          if (v31 >= v30 >> 1)
          {
            sub_10023CCB4((v30 > 1), v31 + 1, 1);
          }

          v26 += 20;
          _swiftEmptyArrayStorage[2] = v31 + 1;
          v32 = &_swiftEmptyArrayStorage[3 * v31];
          v32[4] = v27;
          v32[5] = v28;
          *(v32 + 24) = v29;
          --v25;
        }

        while (v25);

        v10 = a8;
        v11 = a7;
        v12 = a6;
        v14 = a4;
        v13 = a5;
        v15 = a2;
      }

      sub_10033E9A8(_swiftEmptyArrayStorage, v15, a3, v14, v13, v12, v11, v10, a9, a10);
      sub_100019550(v77, v18, v20);
      sub_1000196F4(v78, v81, v82);

      goto LABEL_4;
    }

    v33 = v21;
    v34 = sub_10001D898(v19, v18, v20);
    v37 = v34;
    v38 = v19;
    v39 = v35;
    v40 = v18;
    v41 = v36;
    if (((v20 >> 8) & 6 | (v20 >> 7) & 1) == 5)
    {
      break;
    }

    v45 = v36 >> 11;
    if (v45 <= 6)
    {
      if (v45 == 2)
      {
        sub_100019550(v38, v40, v20);
        sub_1000196F4(v37, v39, v41);
        swift_beginAccess();
        v64 = *(v13 + 16);
        v43 = __CFADD__(v64, 1);
        v65 = v64 + 1;
        if (v43)
        {
          goto LABEL_67;
        }

        *(v13 + 16) = v65;
        goto LABEL_15;
      }

      if (v45 != 6)
      {
        goto LABEL_49;
      }

      swift_beginAccess();
      v52 = *(a3 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = sub_10033F020(0, v52[2] + 1, 1, v52);
        *(a3 + 16) = v52;
      }

      v55 = v52[2];
      v54 = v52[3];
      if (v55 >= v54 >> 1)
      {
        v52 = sub_10033F020((v54 > 1), v55 + 1, 1, v52);
      }

      v52[2] = v55 + 1;
      v56 = &v52[2 * v55];
      v56[4] = v37;
      v56[5] = v39;
      *(a3 + 16) = v52;
      swift_endAccess();
      sub_100019550(v38, v40, v20);
      sub_1000196F4(v37, v39, v41);
      sub_1000196F4(v33, v81, v82);
      v14 = a4;
      v13 = a5;
LABEL_53:
      v15 = a2;
LABEL_16:
      v10 = a8;
      v11 = a7;
LABEL_17:
      v12 = a6;
      goto LABEL_4;
    }

    if (v45 == 7)
    {
      sub_100019550(v38, v40, v20);
      sub_1000196F4(v37, v39, v41);
      swift_beginAccess();
      v60 = *(v14 + 16);
      v43 = __CFADD__(v60, 1);
      v61 = v60 + 1;
      if (v43)
      {
        goto LABEL_66;
      }

      *(v14 + 16) = v61;
LABEL_15:
      sub_1000196F4(v33, v81, v82);
      goto LABEL_16;
    }

    if (v45 == 11)
    {
      sub_100019550(v38, v40, v20);
      sub_1000196F4(v37, v39, v41);
      swift_beginAccess();
      v62 = *(a9 + 16);
      v43 = __CFADD__(v62, 1);
      v63 = v62 + 1;
      if (v43)
      {
        goto LABEL_68;
      }

      *(a9 + 16) = v63;
      goto LABEL_15;
    }

    if (v45 != 17)
    {
      goto LABEL_49;
    }

    if (v36 != 34816 || v34 != 8 || v35 != 0)
    {
      if (v36 == 34816 && v34 == 9 && v35 == 0)
      {
        sub_100019550(v38, v40, v20);
        v11 = a7;
        swift_beginAccess();
        v68 = *(a7 + 16);
        v43 = __CFADD__(v68, 1);
        v69 = v68 + 1;
        if (v43)
        {
          goto LABEL_71;
        }

        *(a7 + 16) = v69;
        sub_1000196F4(v33, v81, v82);
        v10 = a8;
        goto LABEL_17;
      }

      if (v36 == 34816 && v34 == 6 && !v35)
      {
        sub_100019550(v38, v40, v20);
        swift_beginAccess();
        v50 = *(a8 + 16);
        v43 = __CFADD__(v50, 1);
        v51 = v50 + 1;
        if (v43)
        {
          goto LABEL_72;
        }

        *(a8 + 16) = v51;
        sub_1000196F4(v33, v81, v82);
        v10 = a8;
        v11 = a7;
        goto LABEL_17;
      }

LABEL_49:
      v57 = sub_100256C6C(v34, v35, v36);
      sub_100019550(v38, v40, v20);
      sub_1000196F4(v37, v39, v41);
      if (v57)
      {
        swift_beginAccess();
        v58 = *(a10 + 16);
        v43 = __CFADD__(v58, 1);
        v59 = v58 + 1;
        if (v43)
        {
          goto LABEL_69;
        }

        *(a10 + 16) = v59;
      }

      sub_1000196F4(v33, v81, v82);
      goto LABEL_53;
    }

    sub_100019550(v38, v40, v20);
    v12 = a6;
    swift_beginAccess();
    v66 = *(a6 + 16);
    v43 = __CFADD__(v66, 1);
    v67 = v66 + 1;
    if (v43)
    {
      goto LABEL_70;
    }

    *(a6 + 16) = v67;
    sub_1000196F4(v33, v81, v82);
    v10 = a8;
    v11 = a7;
LABEL_4:
    v16 = v83 + 1;
    if (v83 + 1 == v80)
    {
      return;
    }
  }

  sub_100019550(v38, v40, v20);
  sub_1000196F4(v37, v39, v41);
  swift_beginAccess();
  v42 = *(v15 + 16);
  v43 = __CFADD__(v42, 1);
  v44 = v42 + 1;
  if (!v43)
  {
    *(v15 + 16) = v44;
    goto LABEL_15;
  }

  __break(1u);
LABEL_66:
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
LABEL_72:
  __break(1u);
}

void *sub_10033F020(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001BC5A8(&qword_100526F18, &qword_100458A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001BC5A8(&qword_1005214F0, &qword_10045BF40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_10033F154(uint64_t a1)
{
  v1 = swift_allocObject();
  *(v1 + 16) = _swiftEmptyArrayStorage;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v17 = v8;
  v18 = v8;
  v10 = v9;
  v20 = v3;
  v19 = v5;
  sub_10033E9A8(a1, v9, v1, v2, v3, v4, v5, v6, v7, v17);
  v11 = [objc_allocWithZone(MRGroupComposition) init];
  swift_beginAccess();
  v12 = *(*(v1 + 16) + 16);
  if (v12)
  {
    v13 = (*(v1 + 16) + 40);
    do
    {
      v15 = *v13;
      v13 += 2;
      if (v15)
      {

        v14 = String._bridgeToObjectiveC()();
      }

      else
      {
        v14 = 0;
      }

      [v11 addHomePodWithModelIdentifier:v14];

      --v12;
    }

    while (v12);
  }

  swift_beginAccess();
  [v11 setBuiltInCount:*(v10 + 16)];
  swift_beginAccess();
  [v11 setAtvCount:*(v2 + 16)];
  swift_beginAccess();
  [v11 setHeadphoneCount:*(v20 + 16)];
  swift_beginAccess();
  [v11 setSetTopCount:*(v4 + 16)];
  swift_beginAccess();
  [v11 setTvStickCount:*(v19 + 16)];
  swift_beginAccess();
  [v11 setTvCount:*(v6 + 16)];
  swift_beginAccess();
  [v11 setMacCount:*(v7 + 16)];
  swift_beginAccess();
  [v11 setHifiCount:*(v18 + 16)];

  return v11;
}

id sub_10033F54C(uint64_t a1, unsigned __int16 a2)
{
  v2 = a2 >> 11;
  switch(v2)
  {
    case 10:
      v21 = *(a1 + 16);
      v22 = *(v21 + 16);
      if (v22)
      {
        sub_10023CCB4(0, v22, 0);
        v23 = (v21 + 64);
        do
        {
          v24 = *(v23 - 2);
          v25 = *(v23 - 1);
          v26 = *v23;
          sub_10001DAE0(v24, v25, *v23);
          v28 = _swiftEmptyArrayStorage[2];
          v27 = _swiftEmptyArrayStorage[3];
          if (v28 >= v27 >> 1)
          {
            sub_10023CCB4((v27 > 1), v28 + 1, 1);
          }

          v23 += 20;
          _swiftEmptyArrayStorage[2] = v28 + 1;
          v29 = &_swiftEmptyArrayStorage[3 * v28];
          v29[4] = v24;
          v29[5] = v25;
          *(v29 + 24) = v26;
          --v22;
        }

        while (v22);
      }

      v30 = sub_10033F154(_swiftEmptyArrayStorage);

      return v30;
    case 9:
      v3 = *(a1 + 16);
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = v3 + 64;
        v7 = _swiftEmptyArrayStorage;
        v57 = *(a1 + 16);
        v53 = v3 + 64;
        do
        {
          v55 = v7;
          v8 = (v6 + 40 * v5);
          v9 = v5;
          while (1)
          {
            if (v9 >= *(v3 + 16))
            {
              __break(1u);
              goto LABEL_50;
            }

            v10 = *(v8 - 2);
            v11 = *(v8 - 1);
            v12 = *v8;

            sub_10001DAE0(v10, v11, v12);
            v13 = sub_10025692C();
            v15 = v14;
            v17 = v16;

            sub_100019550(v10, v11, v12);
            if ((v17 & 0xF800) == 0x3000)
            {
              if (v15)
              {
                break;
              }
            }

            v3 = v57;
            ++v9;
            sub_1000196F4(v13, v15, v17);
            v8 += 20;
            if (v4 == v9)
            {
              v7 = v55;
              goto LABEL_37;
            }
          }

          v7 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_10002AFD0(0, *(v55 + 2) + 1, 1, v55);
          }

          v19 = *(v7 + 2);
          v18 = *(v7 + 3);
          if (v19 >= v18 >> 1)
          {
            v7 = sub_10002AFD0((v18 > 1), v19 + 1, 1, v7);
          }

          v5 = v9 + 1;
          *(v7 + 2) = v19 + 1;
          v20 = &v7[16 * v19];
          *(v20 + 4) = v13;
          *(v20 + 5) = v15;
          v6 = v53;
          v3 = v57;
        }

        while (v4 - 1 != v9);
LABEL_37:
        if (!*(v7 + 2))
        {
          goto LABEL_43;
        }
      }

      else if (!_swiftEmptyArrayStorage[2])
      {
LABEL_43:

        v50 = 0;
        goto LABEL_44;
      }

      v50 = String._bridgeToObjectiveC()();

LABEL_44:
      v51 = [objc_opt_self() homePodHomeTheaterCompositionWithHomePodModelIdentifier:v50];
LABEL_48:
      v52 = v51;

      return v52;
    case 8:
      v32 = *(a1 + 16);
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = 0;
        v35 = v32 + 64;
        v36 = _swiftEmptyArrayStorage;
        v58 = *(a1 + 16);
        v54 = v32 + 64;
        do
        {
          v56 = v36;
          v37 = (v35 + 40 * v34);
          v38 = v34;
          while (1)
          {
            if (v38 >= *(v32 + 16))
            {
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v39 = *(v37 - 2);
            v40 = *(v37 - 1);
            v41 = *v37;

            sub_10001DAE0(v39, v40, v41);
            v42 = sub_10025692C();
            v44 = v43;
            v46 = v45;

            sub_100019550(v39, v40, v41);
            if ((v46 & 0xF800) == 0x3000)
            {
              if (v44)
              {
                break;
              }
            }

            ++v38;
            sub_1000196F4(v42, v44, v46);
            v37 += 20;
            v32 = v58;
            if (v33 == v38)
            {
              v36 = v56;
              goto LABEL_40;
            }
          }

          v36 = v56;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_10002AFD0(0, *(v56 + 2) + 1, 1, v56);
          }

          v48 = *(v36 + 2);
          v47 = *(v36 + 3);
          if (v48 >= v47 >> 1)
          {
            v36 = sub_10002AFD0((v47 > 1), v48 + 1, 1, v36);
          }

          v34 = v38 + 1;
          *(v36 + 2) = v48 + 1;
          v49 = &v36[16 * v48];
          *(v49 + 4) = v42;
          *(v49 + 5) = v44;
          v35 = v54;
          v32 = v58;
        }

        while (v33 - 1 != v38);
LABEL_40:
        if (!*(v36 + 2))
        {
          goto LABEL_46;
        }
      }

      else if (!_swiftEmptyArrayStorage[2])
      {
LABEL_46:

        v50 = 0;
        goto LABEL_47;
      }

      v50 = String._bridgeToObjectiveC()();

LABEL_47:
      v51 = [objc_opt_self() homePodStereoPairCompositionWithModelIdentifier:v50];
      goto LABEL_48;
    default:
LABEL_51:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_10033FA8C(uint64_t a1)
{
  type metadata accessor for SystemState();
  v1 = swift_allocObject();
  v2 = [objc_opt_self() server];
  v3 = [v2 groupSessionServer];

  if (v3 && (v4 = [v3 sessionManager], v3, v4) && (v5 = objc_msgSend(v4, "session"), v4, v5))
  {
    *(v1 + 16) = [v5 isHosted];
    if ([v5 isHosted])
    {
      v6 = [v5 remoteParticipants];
      sub_1001BC5A8(&unk_100522CB0, &unk_10044EC00);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_unknownObjectRelease();
      v9 = v8 != 0;
    }

    else
    {
      swift_unknownObjectRelease();
      v9 = 0;
    }

    *(v1 + 17) = v9;
  }

  else
  {
    *(v1 + 16) = 0;
  }

  return v1;
}

MRDMediaControlIPCServer __swiftcall MRDMediaControlIPCServer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_10033FEE0()
{
  v0 = *sub_100021264();
  type metadata accessor for RoutingSessionServer();
  v1 = v0;
  OS_dispatch_queue.asyncAndWait<A>(execute:)();

  return v3;
}

uint64_t sub_10033FF5C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + 24))
  {
    v5 = *(v0 + 24);
LABEL_5:

    return v5;
  }

  v6 = sub_100021264();
  v7 = *v6;
  *v4 = *v6;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v7)
  {
    *(v0 + 16) = 1;
    type metadata accessor for RoutingSessionServer();
    v5 = sub_10030113C();
    *(v0 + 24) = v5;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003400E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000100440F90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100440FB0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1003401D0(uint64_t a1)
{
  v2 = sub_10034A5BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10034020C(uint64_t a1)
{
  v2 = sub_10034A5BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100340248(uint64_t a1)
{
  v2 = sub_10034A610();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100340284(uint64_t a1)
{
  v2 = sub_10034A610();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003402C0(uint64_t a1)
{
  v2 = sub_10034A664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003402FC(uint64_t a1)
{
  v2 = sub_10034A664();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100340338(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1001BC5A8(&qword_100526FD0, &qword_100458A70);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1001BC5A8(&qword_100526FD8, &qword_100458A78);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1001BC5A8(&qword_100526FE0, &qword_100458A80);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_1000326D8(a1, a1[3]);
  sub_10034A5BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_10034A610();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_10034A664();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1003405F4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10034A6B8(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_100340640()
{
  v1 = 0x6D72657465646E69;
  if (*v0 != 1)
  {
    v1 = 0x657669746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65646E6570737573;
  }
}

double sub_10034071C()
{
  swift_beginAccess();

  return result;
}

double sub_100340754(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

uint64_t sub_1003407EC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100038EF0();
  (*(v5 + 16))(v7, v8, v4);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    v27 = v12;
    *v11 = 136315650;
    v14 = (*(*v1 + 320))(v12, v13);
    v16 = sub_10002C9C8(v14, v15, &v27);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    if (a1)
    {
      if (a1 == 1)
      {
        v17 = 0x6D72657465646E69;
      }

      else
      {
        v17 = 0x657669746361;
      }

      if (a1 == 1)
      {
        v18 = 0xED00006574616E69;
      }

      else
      {
        v18 = 0xE600000000000000;
      }
    }

    else
    {
      v17 = 0x65646E6570737573;
      v18 = 0xE900000000000064;
    }

    v19 = sub_10002C9C8(v17, v18, &v27);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2080;
    v20 = 0x6D72657465646E69;
    v21 = 0xED00006574616E69;
    if (*(v2 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) != 1)
    {
      v20 = 0x657669746361;
      v21 = 0xE600000000000000;
    }

    if (*(v2 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState))
    {
      v22 = v20;
    }

    else
    {
      v22 = 0x65646E6570737573;
    }

    if (*(v2 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState))
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xE900000000000064;
    }

    v24 = sub_10002C9C8(v22, v23, &v27);

    *(v11 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%s] setConnectionState - %s -> %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100340B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = swift_allocObject();
  sub_100340B80(a1, a2, a3, v4, v9);
  return v8;
}

uint64_t sub_100340B80(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __n128 a5)
{
  *(v5 + 40) = 0;
  *(v5 + 48) = static String.nanoIDFourChar()();
  *(v5 + 56) = v10;
  v11 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredSnapshot;
  v12 = type metadata accessor for RoutingSessionSnapshot();
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  *(v5 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredPendingItemIdentifiers) = 0;
  *(v5 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_oneWayMessageCount) = 0;
  *(v5 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) = 2;
  swift_beginAccess();
  *(v5 + 40) = a1;

  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  return v5;
}

uint64_t sub_100340C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&qword_100526FE8, &qword_100458A88);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100021264();
  v13 = *v12;
  *v11 = *v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    *&v2[OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_oneWayMessageCount] = 0;
    if (qword_100534C70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  swift_beginAccess();

  sub_100346BF0(a1, v2, v7);

  v15 = type metadata accessor for ReplyMessage();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {
    result = sub_1000038A4(v7, &qword_100526FE8, &qword_100458A88);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a2 + 24) = v15;
    *(a2 + 32) = sub_10003B370(&unk_100526FF0, &type metadata accessor for ReplyMessage, &protocol conformance descriptor for ReplyMessage);
    v18 = sub_1000397B4(a2);
    return (*(v16 + 32))(v18, v7, v15);
  }

  return result;
}

uint64_t sub_100340F44()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100021264();
  v6 = *v5;
  *v4 = *v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_100534C70 != -1)
  {
LABEL_5:
    swift_once();
  }

  swift_beginAccess();

  sub_100346684(v0);

  return (*(*v0 + 200))(0);
}

uint64_t sub_1003410F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001BC5A8(&qword_100525F78, &qword_100458A90);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for IPCClientMessage();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  if (*(v2 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) == 2)
  {
    sub_10001D9AC(a1, v10, &qword_100525F78, &qword_100458A90);
    RoutingSessionUpdateMessage.init(snapshot:)();
    (*(v12 + 104))(v14, enum case for IPCClientMessage.updateRoutingSnapshot(_:), v11);
    sub_1000226A0(v14);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v17 = sub_100038EF0();
    (*(v5 + 16))(v7, v17, v4);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v33 = a1;
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34[0] = v32;
      *v20 = 136315394;
      v21 = (*(*v2 + 320))();
      v23 = sub_10002C9C8(v21, v22, v34);

      v24 = *(v2 + v15);
      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v25 = 0xED00006574616E69;
      v26 = 0x6D72657465646E69;
      if (v24 != 1)
      {
        v26 = 0x657669746361;
        v25 = 0xE600000000000000;
      }

      if (v24)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0x65646E6570737573;
      }

      if (v24)
      {
        v28 = v25;
      }

      else
      {
        v28 = 0xE900000000000064;
      }

      v29 = sub_10002C9C8(v27, v28, v34);

      *(v20 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%s] updateSnapshot - deferring snapshot for connection state: %s", v20, 0x16u);
      swift_arrayDestroy();

      (*(v5 + 8))(v7, v4);
      a1 = v33;
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v30 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredSnapshot;
    swift_beginAccess();
    sub_10034AAF4(a1, v2 + v30);
    return swift_endAccess();
  }
}

uint64_t sub_100341548(uint64_t a1)
{
  v1 = type metadata accessor for IPCClientMessage();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  PendingItemIdentifiersUpdateMessage.init(pendingItems:)();
  (*(v2 + 104))(v4, enum case for IPCClientMessage.updatePendingItems(_:), v1);
  sub_1000226A0(v4);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100341688()
{
  v1 = v0;
  v2 = type metadata accessor for IPCClientMessage();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  if (*(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) != 2)
  {
    v11 = sub_100038EF0();
    (*(v7 + 16))(v9, v11, v6);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v28 = v13;
      v29 = v12;
      v30 = v6;
      v14 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31 = v27;
      *v14 = 136315394;
      v15 = (*(*v1 + 320))();
      v17 = sub_10002C9C8(v15, v16, &v31);

      v18 = *(v1 + v10);
      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v19 = 0xED00006574616E69;
      v20 = 0x6D72657465646E69;
      if (v18 != 1)
      {
        v20 = 0x657669746361;
        v19 = 0xE600000000000000;
      }

      if (v18)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0x65646E6570737573;
      }

      if (v18)
      {
        v22 = v19;
      }

      else
      {
        v22 = 0xE900000000000064;
      }

      v23 = sub_10002C9C8(v21, v22, &v31);

      *(v14 + 14) = v23;
      v24 = v29;
      _os_log_impl(&_mh_execute_header, v29, v28, "[%s] presentShareAudio - connection is in state: %s, expected .active", v14, 0x16u);
      swift_arrayDestroy();

      (*(v7 + 8))(v9, v30);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }

  PresentShareAudioMessage.init()();
  (*(v3 + 104))(v5, enum case for IPCClientMessage.presentShareAudio(_:), v2);
  sub_1000226A0(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100341A6C(uint64_t a1, uint64_t (*a2)(void), const char *a3, void (*a4)(char *), unsigned int *a5, ...)
{
  v46 = a4;
  v47 = a5;
  v43 = a3;
  v6 = v5;
  v8 = a2(0);
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for IPCClientMessage();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  if (*(v6 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) != 2)
  {
    v41 = v11;
    v42 = a1;
    v21 = v17;
    v22 = sub_100038EF0();
    (*(v16 + 16))(v19, v22, v21);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    v40 = v24;
    if (os_log_type_enabled(v23, v24))
    {
      v37 = v16;
      v38 = v23;
      v39 = v21;
      v25 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = (*(*v6 + 320))();
      v28 = sub_10002C9C8(v26, v27, &v48);

      v29 = *(v6 + v20);
      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v30 = 0xED00006574616E69;
      v31 = 0x6D72657465646E69;
      if (v29 != 1)
      {
        v31 = 0x657669746361;
        v30 = 0xE600000000000000;
      }

      if (v29)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0x65646E6570737573;
      }

      if (v29)
      {
        v33 = v30;
      }

      else
      {
        v33 = 0xE900000000000064;
      }

      v34 = sub_10002C9C8(v32, v33, &v48);

      *(v25 + 14) = v34;
      v35 = v38;
      _os_log_impl(&_mh_execute_header, v38, v40, v43, v25, 0x16u);
      swift_arrayDestroy();

      (*(v37 + 8))(v19, v39);
    }

    else
    {

      (*(v16 + 8))(v19, v21);
    }

    v11 = v41;
    a1 = v42;
  }

  (*(v44 + 16))(v10, a1, v45);
  v46(v10);
  (*(v12 + 104))(v14, *v47, v11);
  sub_1000226A0(v14);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100341EC0()
{
  v0 = type metadata accessor for IPCClientMessage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for IPCClientMessage.requestDismissal(_:), v0);
  sub_1000226A0(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100341FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v48 = a2;
  v5 = type metadata accessor for IPCClientMessage();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001BC5A8(&unk_100524EC0, &qword_100457040);
  v10 = __chkstk_darwin(v9 - 8);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  if (*(v3 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) != 2)
  {
    v44 = v8;
    v45 = v6;
    v19 = sub_100038EF0();
    (*(v15 + 16))(v17, v19, v14);

    v20 = v3;
    v21 = Logger.logObject.getter();
    v22 = v17;
    v23 = static os_log_type_t.info.getter();

    v43 = v23;
    if (os_log_type_enabled(v21, v23))
    {
      v38 = v21;
      v39 = v15;
      v40 = v14;
      v41 = a3;
      v42 = v5;
      v24 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = (*(*v20 + 320))();
      v27 = sub_10002C9C8(v25, v26, &v49);

      v28 = *(v20 + v18);
      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v29 = 0xED00006574616E69;
      v30 = 0x6D72657465646E69;
      if (v28 != 1)
      {
        v30 = 0x657669746361;
        v29 = 0xE600000000000000;
      }

      if (v28)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0x65646E6570737573;
      }

      if (v28)
      {
        v32 = v29;
      }

      else
      {
        v32 = 0xE900000000000064;
      }

      v33 = sub_10002C9C8(v31, v32, &v49);

      *(v24 + 14) = v33;
      v34 = v38;
      _os_log_impl(&_mh_execute_header, v38, v43, "[%s] interactionWithItemCompleted - connection is in state: %s, expected .active", v24, 0x16u);
      swift_arrayDestroy();

      (*(v39 + 8))(v22, v40);
      a3 = v41;
      v5 = v42;
    }

    else
    {

      (*(v15 + 8))(v22, v14);
    }

    v8 = v44;
    v6 = v45;
  }

  if (a3)
  {
    static InternalRoutingError.wrapping(error:)();
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = type metadata accessor for InternalRoutingError();
  (*(*(v36 - 8) + 56))(v13, v35, 1, v36);
  sub_10001D9AC(v13, v46, &unk_100524EC0, &qword_100457040);

  InteractWithItemResultMessage.init(itemIdentifier:error:)();
  (*(v6 + 104))(v8, enum case for IPCClientMessage.interactWithItemResult(_:), v5);
  sub_1000226A0(v8);
  (*(v6 + 8))(v8, v5);
  return sub_1000038A4(v13, &unk_100524EC0, &qword_100457040);
}

uint64_t sub_1003424A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v5 = type metadata accessor for RoutingControl();
  v50 = *(v5 - 8);
  __chkstk_darwin(v5);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for IPCClientMessage();
  v7 = *(v53 - 8);
  __chkstk_darwin(v53);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001BC5A8(&unk_100524EC0, &qword_100457040);
  v11 = __chkstk_darwin(v10 - 8);
  v49 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  if (*(v3 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) != 2)
  {
    v47 = v7;
    v48 = a2;
    v21 = v17;
    v22 = sub_100038EF0();
    (*(v16 + 16))(v19, v22, v21);

    v23 = Logger.logObject.getter();
    v24 = v16;
    v25 = static os_log_type_t.info.getter();

    v46 = v25;
    if (os_log_type_enabled(v23, v25))
    {
      v42 = v23;
      v43 = v21;
      v44 = v5;
      v26 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v26 = 136315394;
      v27 = (*(*v3 + 320))();
      v29 = sub_10002C9C8(v27, v28, &v54);

      v45 = v3;
      v30 = *(v3 + v20);
      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v31 = 0xED00006574616E69;
      v32 = 0x6D72657465646E69;
      if (v30 != 1)
      {
        v32 = 0x657669746361;
        v31 = 0xE600000000000000;
      }

      if (v30)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0x65646E6570737573;
      }

      if (v30)
      {
        v34 = v31;
      }

      else
      {
        v34 = 0xE900000000000064;
      }

      v35 = sub_10002C9C8(v33, v34, &v54);

      *(v26 + 14) = v35;
      v36 = v42;
      _os_log_impl(&_mh_execute_header, v42, v46, "[%s] interactionWithControlCompleted - connection is in state: %s, expected .active", v26, 0x16u);
      swift_arrayDestroy();

      (*(v24 + 8))(v19, v43);
      v5 = v44;
    }

    else
    {

      (*(v24 + 8))(v19, v21);
    }

    v7 = v47;
    a2 = v48;
  }

  if (a2)
  {
    static InternalRoutingError.wrapping(error:)();
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = type metadata accessor for InternalRoutingError();
  (*(*(v38 - 8) + 56))(v14, v37, 1, v38);
  (*(v50 + 16))(v51, v52, v5);
  sub_10001D9AC(v14, v49, &unk_100524EC0, &qword_100457040);
  InteractWithControlResultMessage.init(control:error:)();
  v39 = v53;
  (*(v7 + 104))(v9, enum case for IPCClientMessage.interactWithControlResult(_:), v53);
  sub_1000226A0(v9);
  (*(v7 + 8))(v9, v39);
  return sub_1000038A4(v14, &unk_100524EC0, &qword_100457040);
}

uint64_t sub_100342A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v5 = type metadata accessor for IPCClientMessage();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  if (*(v4 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) == 2)
  {

    SessionTransitionMessage.init(sourceIdentifier:destinationIdentifier:)();
    (*(v6 + 104))(v8, enum case for IPCClientMessage.sessionTransition(_:), v5);
    sub_1000226A0(v8);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v15 = v10;
    v16 = sub_100038EF0();
    (*(v15 + 16))(v12, v16, v9);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v29 = v15;
      v19 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v19 = 136315394;
      v20 = (*(*v4 + 320))();
      v22 = sub_10002C9C8(v20, v21, &v30);

      v23 = *(v4 + v13);
      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v24 = 0xED00006574616E69;
      v25 = 0x6D72657465646E69;
      if (v23 != 1)
      {
        v25 = 0x657669746361;
        v24 = 0xE600000000000000;
      }

      if (v23)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0x65646E6570737573;
      }

      if (v23)
      {
        v27 = v24;
      }

      else
      {
        v27 = 0xE900000000000064;
      }

      v28 = sub_10002C9C8(v26, v27, &v30);

      *(v19 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%s] willTransitionFromSourceToDestination - connection is in state: %s, dropping", v19, 0x16u);
      swift_arrayDestroy();

      return (*(v29 + 8))(v12, v9);
    }

    else
    {

      return (*(v15 + 8))(v12, v9);
    }
  }
}

void sub_100342DF8()
{
  v1 = v0;
  v2 = type metadata accessor for IPCClientMessage();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001BC5A8(&qword_1005273C0, &unk_100459098);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v46 = &v39 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(*v0 + 192))(v11);
  if (v14)
  {
    v43 = v7;
    v44 = v6;
    v45 = v14;
    v15 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState);
    *(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) = 1;
    sub_1003407EC(v15);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_10034B114;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001BFCB0;
    aBlock[3] = &unk_1004CEC30;
    v18 = v13;
    v19 = _Block_copy(aBlock);

    v41 = [v17 initWithTimeout:v19 interruptionHandler:2.0];
    _Block_release(v19);

    v20 = sub_100038EF0();
    v42 = v10;
    (*(v10 + 16))(v18, v20, v9);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = v18;
      v24 = v23;
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      v26 = (*(*v1 + 320))();
      v28 = sub_10002C9C8(v26, v27, aBlock);
      v39 = v9;
      v29 = v3;
      v30 = v5;
      v31 = v2;
      v32 = v28;

      *(v24 + 4) = v32;
      v2 = v31;
      v5 = v30;
      v3 = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%s] inspectConnection - pinging client", v24, 0xCu);
      sub_100026A44(v25);

      (*(v42 + 8))(v40, v39);
    }

    else
    {

      (*(v42 + 8))(v18, v9);
    }

    (*(v3 + 104))(v5, enum case for IPCClientMessage.ping(_:), v2);
    sub_10003B370(&qword_1005273C8, &type metadata accessor for IPCClientMessage, &protocol conformance descriptor for IPCClientMessage);
    sub_10003B370(&qword_1005273D0, &type metadata accessor for IPCClientMessage, &protocol conformance descriptor for IPCClientMessage);
    v33 = v46;
    IPCMessage.init(message:)();
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = swift_allocObject();
    v36 = v41;
    *(v35 + 16) = v34;
    *(v35 + 24) = v36;
    sub_10000462C(&unk_1005273D8, &qword_1005273C0, &unk_100459098, &protocol conformance descriptor for IPCMessage<A>);

    v37 = v36;
    v38 = v44;
    dispatch thunk of XPCSession.send<A>(_:replyHandler:)();
    (*(v43 + 8))(v33, v38);
  }
}

void sub_10034353C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = v8;
    v18 = v7;
    v19 = v4;
    if (a1)
    {
      __break(1u);
    }

    else
    {
      v12 = Strong;
      v13 = *sub_100021264();
      aBlock[4] = sub_10034B124;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004CEC80;
      v14 = _Block_copy(aBlock);
      v15 = v13;

      static DispatchQoS.unspecified.getter();
      v20 = _swiftEmptyArrayStorage;
      sub_10003B370(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v14);

      (*(v19 + 8))(v6, v3);
      (*(v17 + 8))(v10, v18);
    }
  }
}

uint64_t sub_100343844(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v30 - v8;
  v10 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState;
  v11 = *(a1 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState);
  if (v11 == 1)
  {
    v20 = sub_100038EF0();
    (*(v3 + 16))(v9, v20, v2);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136315138;
      v25 = (*(*a1 + 320))();
      v27 = sub_10002C9C8(v25, v26, &v31);
      v30 = v2;
      v28 = v27;

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%s] inspectConnection - timed out waiting for reply ping", v23, 0xCu);
      sub_100026A44(v24);

      (*(v3 + 8))(v9, v30);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    v29 = *(a1 + v10);
    *(a1 + v10) = 0;
    return sub_1003407EC(v29);
  }

  else if (v11 == 2)
  {
    v12 = sub_100038EF0();
    (*(v3 + 16))(v6, v12, v2);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315138;
      v17 = (*(*a1 + 320))();
      v19 = sub_10002C9C8(v17, v18, &v31);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%s] inspectConnection - connection resumed before timeout check on mediaControl queue", v15, 0xCu);
      sub_100026A44(v16);
    }

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100343C00(uint64_t a1, uint64_t a2, void *a3)
{
  v106 = a3;
  v107 = a1;
  v3 = type metadata accessor for XPCRichError();
  v99 = *(v3 - 8);
  v100 = v3;
  __chkstk_darwin(v3);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Logger();
  v97 = *(v94 - 8);
  v6 = __chkstk_darwin(v94);
  v92 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = &v91 - v8;
  v9 = type metadata accessor for IPCServerMessage();
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = __chkstk_darwin(v9);
  v93 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v91 - v12;
  v14 = sub_1001BC5A8(&qword_1005273E8, &qword_1004590A8);
  __chkstk_darwin(v14 - 8);
  v16 = &v91 - v15;
  v17 = sub_1001BC5A8(&qword_1005273F0, &qword_1004590B0);
  v18 = *(v17 - 8);
  v102 = v17;
  v103 = v18;
  __chkstk_darwin(v17);
  v98 = &v91 - v19;
  v105 = type metadata accessor for XPCReceivedMessage();
  v101 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1001BC5A8(&qword_1005273F8, &unk_1004590B8);
  __chkstk_darwin(v21);
  v23 = &v91 - v22;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_100021264();
  v29 = *v28;
  *v27 = *v28;
  (*(v25 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v24);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v27, v24);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v33 = (*(*Strong + 192))();
    if (!v33)
    {

      return;
    }

    v34 = v33;
    [v106 disarm];
    sub_10001D9AC(v107, v23, &qword_1005273F8, &unk_1004590B8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v99;
      v35 = v100;
      (*(v99 + 32))(v5, v23, v100);
      v108 = 0;
      v109 = 0xE000000000000000;
      _StringGuts.grow(_:)(63);
      v37._countAndFlagsBits = 91;
      v37._object = 0xE100000000000000;
      String.append(_:)(v37);
      v38._countAndFlagsBits = (*(*v32 + 320))();
      String.append(_:)(v38);

      v39._object = 0x8000000100440FD0;
      v39._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v39);
      _print_unlocked<A, B>(_:_:)();
      v40._object = 0x8000000100440FF0;
      v40._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v40);
      dispatch thunk of XPCSession.cancel(reason:)();

      (*(v36 + 8))(v5, v35);
      return;
    }

    v107 = v34;
    v41 = v101;
    (*(v101 + 32))(v104, v23, v105);
    sub_10000462C(&qword_100527400, &qword_1005273F0, &qword_1004590B0, &protocol conformance descriptor for IPCMessage<A>);
    v42 = v102;
    XPCReceivedMessage.decode<A>(as:)();
    v43 = v103;
    (*(v103 + 56))(v16, 0, 1, v42);
    v44 = v98;
    (*(v43 + 32))(v98, v16, v42);
    IPCMessage.message.getter();
    v45 = v95;
    v46 = v96;
    v47 = (*(v95 + 88))(v13, v96);
    v48 = enum case for IPCServerMessage.ping(_:);
    v49 = v13;
    v50 = v46;
    v106 = *(v45 + 8);
    (v106)(v49, v46);
    if (v47 == v48)
    {
      v51 = *(v32 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState);
      v52 = sub_100038EF0();
      v53 = *(v97 + 16);
      if (v51 <= 1)
      {
        v54 = v91;
        v55 = v94;
        v53(v91, v52, v94);

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();

        v58 = os_log_type_enabled(v56, v57);
        v59 = v105;
        if (v58)
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v108 = v61;
          *v60 = 136315138;
          v62 = *(*v32 + 320);

          v64 = v62(v63);
          v65 = v104;
          v66 = v64;
          v68 = v67;

          v69 = sub_10002C9C8(v66, v68, &v108);
          v42 = v102;

          *(v60 + 4) = v69;
          v70 = v57;
          v71 = v65;
          _os_log_impl(&_mh_execute_header, v56, v70, "[%s] inspectConnection - resuming connection", v60, 0xCu);
          sub_100026A44(v61);
          v59 = v105;
          v44 = v98;

          v41 = v101;

          (*(v97 + 8))(v54, v55);
          v72 = v103;
        }

        else
        {

          (*(v97 + 8))(v54, v55);
          v72 = v103;
          v71 = v104;
        }

        sub_100344A10();

        (*(v72 + 8))(v44, v42);
        (*(v41 + 8))(v71, v59);
        return;
      }

      v78 = v92;
      v79 = v94;
      v53(v92, v52, v94);

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = v41;
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v108 = v84;
        *v83 = 136315138;
        v85 = *(*v32 + 320);

        v87 = v85(v86);
        v89 = v88;

        v90 = sub_10002C9C8(v87, v89, &v108);

        *(v83 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v80, v81, "[%s] inspectConnection - connection resumed before reply received", v83, 0xCu);
        sub_100026A44(v84);

        (*(v97 + 8))(v92, v79);
        (*(v103 + 8))(v98, v102);
        (*(v82 + 8))(v104, v105);
        return;
      }

      (*(v97 + 8))(v78, v79);
      (*(v103 + 8))(v44, v42);
    }

    else
    {
      v108 = 0;
      v109 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v73._countAndFlagsBits = 91;
      v73._object = 0xE100000000000000;
      String.append(_:)(v73);
      v74._countAndFlagsBits = (*(*v32 + 320))();
      String.append(_:)(v74);

      v75._countAndFlagsBits = 0xD000000000000030;
      v75._object = 0x8000000100441050;
      String.append(_:)(v75);
      v76 = v93;
      IPCMessage.message.getter();
      sub_10003B370(&qword_100527408, &type metadata accessor for IPCServerMessage, &protocol conformance descriptor for IPCServerMessage);
      v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v77);

      (v106)(v76, v50);
      dispatch thunk of XPCSession.cancel(reason:)();

      (*(v43 + 8))(v44, v42);
    }

    (*(v41 + 8))(v104, v105);
  }
}

uint64_t sub_100344A10()
{
  v1 = v0;
  v2 = type metadata accessor for IPCClientMessage();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v55 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v48 - v8;
  v9 = sub_1001BC5A8(&qword_100525F78, &qword_100458A90);
  v10 = __chkstk_darwin(v9 - 8);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v48 - v12;
  v14 = type metadata accessor for RoutingSessionSnapshot();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState);
  *(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) = 2;
  sub_1003407EC(v18);
  *(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_oneWayMessageCount) = 0;
  v19 = OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredSnapshot;
  swift_beginAccess();
  sub_10001D9AC(v1 + v19, v13, &qword_100525F78, &qword_100458A90);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    result = sub_1000038A4(v13, &qword_100525F78, &qword_100458A90);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v21 = sub_100038EF0();
    v22 = v52;
    (*(v5 + 16))(v52, v21, v4);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v50 = v5;
      v51 = v4;
      v49 = v17;
      v26 = v25;
      v27 = swift_slowAlloc();
      v58 = v27;
      *v26 = 136315138;
      v28 = (*(*v1 + 320))();
      v30 = sub_10002C9C8(v28, v29, &v58);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%s] resumeConnection - send deferred snapshot", v26, 0xCu);
      sub_100026A44(v27);

      v17 = v49;
      v5 = v50;
      v4 = v51;
    }

    (*(v5 + 8))(v22, v4);
    v31 = v53;
    (*(v15 + 16))(v53, v17, v14);
    (*(v15 + 56))(v31, 0, 1, v14);
    v32 = v55;
    RoutingSessionUpdateMessage.init(snapshot:)();
    v34 = v56;
    v33 = v57;
    (*(v56 + 104))(v32, enum case for IPCClientMessage.updateRoutingSnapshot(_:), v57);
    sub_1000226A0(v32);
    (*(v34 + 8))(v32, v33);
    result = (*(v15 + 8))(v17, v14);
  }

  v35 = v54;
  if (*(v1 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredPendingItemIdentifiers))
  {

    v36 = sub_100038EF0();
    (*(v5 + 16))(v35, v36, v4);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v51 = v4;
      v40 = v39;
      v41 = swift_slowAlloc();
      v58 = v41;
      *v40 = 136315138;
      v42 = (*(*v1 + 320))();
      v44 = sub_10002C9C8(v42, v43, &v58);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%s] resumeConnection - send deferred pending item identifiers", v40, 0xCu);
      sub_100026A44(v41);

      (*(v5 + 8))(v35, v51);
    }

    else
    {

      (*(v5 + 8))(v35, v4);
    }

    v45 = v55;
    PendingItemIdentifiersUpdateMessage.init(pendingItems:)();
    v47 = v56;
    v46 = v57;
    (*(v56 + 104))(v45, enum case for IPCClientMessage.updatePendingItems(_:), v57);
    sub_1000226A0(v45);
    return (*(v47 + 8))(v45, v46);
  }

  return result;
}

uint64_t sub_100345120()
{

  sub_1000038A4(v0 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_deferredSnapshot, &qword_100525F78, &qword_100458A90);

  return swift_deallocClassInstance();
}

Swift::Int sub_1003451BC()
{
  Hasher.init(_seed:)();
  (*(*v0 + 344))(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100345354(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 344))(v3);
  return Hasher._finalize()();
}

uint64_t sub_100345594(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 48) == *(*a2 + 48) && *(*a1 + 56) == *(*a2 + 56))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void *sub_1003455C0()
{
  type metadata accessor for MediaControlIPCServer();
  v0 = swift_allocObject();
  result = sub_100345674();
  qword_1005385A0 = v0;
  return result;
}

uint64_t sub_1003455FC()
{
  v0 = swift_allocObject();
  sub_100345674();
  return v0;
}

void *sub_100345634()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    *(v0 + 32) = &_swiftEmptySetSingleton;
  }

  return v1;
}

void *sub_100345674()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  v6 = sub_100038EF0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10002C9C8(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] init", v9, 0xCu);
    sub_100026A44(v10);
  }

  (*(v3 + 8))(v5, v2);
  return v1;
}

double sub_100345874()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v3 - 8);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v46 = &v44 - v10;
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v13 = sub_100038EF0();
  v14 = *(v6 + 16);
  v48 = v13;
  v49 = v14;
  (v14)(v12);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v51 = v2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v45 = v6;
    v20 = v19;
    v52[0] = v19;
    *v18 = 136315138;
    v21 = _typeName(_:qualified:)();
    v23 = sub_10002C9C8(v21, v22, v52);
    v2 = v51;

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%s] start", v18, 0xCu);
    sub_100026A44(v20);
    v6 = v45;
  }

  v24 = *(v6 + 8);
  v24(v12, v5);
  v25 = *sub_100021264();
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  *(v26 + 24) = v2;
  v27 = v25;

  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();
  v28 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  v50 = v1;
  v29 = v46;
  v49(v46, v48, v5);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v49 = v5;
    v33 = v32;
    v52[0] = swift_slowAlloc();
    *v33 = 136315394;
    v34 = _typeName(_:qualified:)();
    v35 = v29;
    v37 = sub_10002C9C8(v34, v36, v52);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    v38 = XPCListener.debugDescription.getter();
    v40 = sub_10002C9C8(v38, v39, v52);

    *(v33 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "[%s] Created XPCListener: %s", v33, 0x16u);
    swift_arrayDestroy();

    v41 = v35;
    v42 = v49;
  }

  else
  {

    v41 = v29;
    v42 = v5;
  }

  v24(v41, v42);
  *(v50 + 5) = v28;

  return result;
}

uint64_t sub_100345ED8(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = type metadata accessor for XPCPeerRequirement();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Features.MediaRemote();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Logger();
  v8 = *(v49 - 8);
  __chkstk_darwin(v49);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100021264();
  v16 = *v15;
  *v14 = *v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v16)
  {
    v19 = sub_100038EF0();
    (*(v8 + 16))(v10, v19, v49);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = os_log_type_enabled(v20, v21);
    v45 = a2;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v23 = 136315394;
      v24 = _typeName(_:qualified:)();
      v26 = sub_10002C9C8(v24, v25, &v52);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = ObjectIdentifier.debugDescription.getter();
      v29 = sub_10002C9C8(v27, v28, &v52);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%s] XPCListener incoming request: %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    v30 = (*(v8 + 8))(v10, v49);
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 1;
    __chkstk_darwin(v30);
    *(&v42 - 2) = &v52;
    *(&v42 - 1) = &v50;
    XPCListener.IncomingSessionRequest.withUnsafeAuditToken<A>(_:)();
    v31 = v53;
    if (!v53)
    {
      goto LABEL_13;
    }

    v32 = v52;
    v33 = (v53 >> 56) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v33 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v33 && (v51 & 1) == 0 && (v34 = v50) != 0 && ((v36 = v46, v35 = v47, v37 = v48, (*(v47 + 104))(v46, enum case for Features.MediaRemote.cayenneClientValidation(_:), v48), v38 = Features.MediaRemote.isEnabled.getter(), v39 = (*(v35 + 8))(v36, v37), (v38 & 1) == 0) || (v40 = v42, static XPCPeerRequirement.hasEntitlement(_:)(), v41 = XPCListener.IncomingSessionRequest.satisfies(requirement:)(), v39 = (*(v43 + 8))(v40, v44), (v41 & 1) != 0)))
    {
      __chkstk_darwin(v39);
      *(&v42 - 4) = v32;
      *(&v42 - 3) = v31;
      *(&v42 - 4) = v34;
      *(&v42 - 1) = v45;
      type metadata accessor for MediaControlIPCServer.XPCClient(0);
      sub_10003B370(&qword_100527430, type metadata accessor for MediaControlIPCServer.XPCClient, &unk_100458C20);
      dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
    }

    else
    {
LABEL_13:
      dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10034652C(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100021264();
  v8 = *v7;
  *v6 = *v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v8)
  {
    v10 = sub_100345634();

    sub_1003490A0(&v11, a1);

    *(v1 + 32) = v10;

    sub_100346828();
  }

  else
  {
    __break(1u);
  }
}

void sub_100346684(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100021264();
  v8 = *v7;
  *v6 = *v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v8)
  {
    v12 = sub_100345634();
    sub_100349DD0(a1);

    *(v1 + 32) = v12;

    v10 = *sub_10033FF5C();
    (*(v10 + 512))(a1, &off_1004CE9A8, 1);

    sub_100346828();
  }

  else
  {
    __break(1u);
  }
}

void sub_100346828()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = sub_100345634();
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *(v9 + 16);
  }

  v11 = *(v1 + 48);
  if (v10)
  {
    if (v11)
    {
      return;
    }

    v12 = sub_100038EF0();
    (*(v3 + 16))(v6, v12, v2);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33 = v16;
      *v15 = 136315138;
      v17 = _typeName(_:qualified:)();
      v19 = sub_10002C9C8(v17, v18, &v33);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%s] updateTransaction - creating transaction", v15, 0xCu);
      sub_100026A44(v16);
    }

    (*(v3 + 8))(v6, v2);
    v20 = objc_allocWithZone(MROSTransaction);
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 initWithName:v21];

    MRRegisterTransaction();
  }

  else
  {
    if (!v11)
    {
      return;
    }

    v23 = sub_100038EF0();
    (*(v3 + 16))(v8, v23, v2);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v28 = _typeName(_:qualified:)();
      v30 = sub_10002C9C8(v28, v29, &v33);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%s] updateTransaction - finishing transaction", v26, 0xCu);
      sub_100026A44(v27);
    }

    (*(v3 + 8))(v8, v2);
    v22 = 0;
  }

  v31 = *(v1 + 48);
  *(v1 + 48) = v22;
}

uint64_t sub_100346BF0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v242 = a2;
  v253 = a1;
  v250 = a3;
  v241 = *v3;
  v4 = type metadata accessor for InternalRoutingError();
  __chkstk_darwin(v4 - 8);
  v249 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for FlushPendingControlsMessage();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = &v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for RoutingItem.Action();
  v184 = *(v185 - 8);
  __chkstk_darwin(v185);
  v182 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for InteractWithItemActionMessage();
  v181 = *(v183 - 8);
  __chkstk_darwin(v183);
  v180 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for RoutingSession.Action();
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v188 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for InteractWithSessionActionMessage();
  v187 = *(v189 - 8);
  __chkstk_darwin(v189);
  v186 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for SetExpandedSessionsStateMessage();
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v221 = &v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for SetUIPresentedStateMessage();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v224 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for EndInteractionWithContinuousControlMessage();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v195 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for ContinuousRoutingControl();
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v201 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for BeginInteractionWithContinuousControlMessage();
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v198 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for RoutingControl();
  v244 = *(v213 - 8);
  v16 = __chkstk_darwin(v213);
  v179 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v206 = &v171 - v18;
  v212 = type metadata accessor for InteractWithControlMessage();
  v205 = *(v212 - 8);
  __chkstk_darwin(v212);
  v204 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for RoutingDialog.Action();
  v210 = *(v211 - 8);
  __chkstk_darwin(v211);
  v209 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for InteractWithDialogMessage();
  v208 = *(v217 - 8);
  __chkstk_darwin(v217);
  v207 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for InteractWithSessionMessage();
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v214 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for InteractWithItemMessage();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v218 = &v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for RoutingMode();
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v229 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for SetRoutingModeMessage();
  v228 = *(v230 - 8);
  __chkstk_darwin(v230);
  v227 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for RoutingSessionConfiguration();
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v235 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for IPCConnectMessage();
  v234 = *(v240 - 8);
  __chkstk_darwin(v240);
  v233 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ExecutionPriority();
  v238 = *(v28 - 8);
  v239 = v28;
  __chkstk_darwin(v28);
  v30 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for Logger();
  v243 = *(v246 - 8);
  __chkstk_darwin(v246);
  v32 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for IPCServerMessage();
  v252 = *(v247 - 8);
  v33 = __chkstk_darwin(v247);
  v245 = &v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v37 = &v171 - v36;
  __chkstk_darwin(v35);
  v251 = &v171 - v38;
  v39 = sub_1001BC5A8(&qword_1005273E8, &qword_1004590A8);
  __chkstk_darwin(v39 - 8);
  v41 = &v171 - v40;
  v42 = sub_1001BC5A8(&qword_1005273F0, &qword_1004590B0);
  v254 = *(v42 - 8);
  v43 = __chkstk_darwin(v42);
  v45 = (&v171 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v43);
  v248 = &v171 - v46;
  v47 = type metadata accessor for DispatchPredicate();
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = (&v171 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_100021264();
  v52 = *v51;
  *v50 = *v51;
  (*(v48 + 104))(v50, enum case for DispatchPredicate.onQueue(_:), v47);
  v53 = v52;
  LOBYTE(v52) = _dispatchPreconditionTest(_:)();
  v54 = (*(v48 + 8))(v50, v47);
  if (v52)
  {
    sub_10000462C(&qword_100527400, &qword_1005273F0, &qword_1004590B0, &protocol conformance descriptor for IPCMessage<A>);
    XPCReceivedMessage.decode<A>(as:)();
    v55 = v254;
    (*(v254 + 56))(v41, 0, 1, v42);
    v56 = v248;
    (*(v55 + 32))(v248, v41, v42);
    v249 = v42;
    v57 = v251;
    IPCMessage.message.getter();
    v58 = sub_100038EF0();
    v59 = v243;
    v60 = v246;
    (*(v243 + 16))(v32, v58, v246);
    v61 = *(v252 + 2);
    v62 = v57;
    v63 = v249;
    v64 = v247;
    v177 = v252 + 16;
    v176 = v61;
    (v61)(v37, v62);
    (*(v55 + 16))(v45, v56, v63);
    v65 = Logger.logObject.getter();
    v175 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v65, v175))
    {
      v66 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v255 = v174;
      *v66 = 136315906;
      v67 = _typeName(_:qualified:)();
      v173 = v65;
      v69 = sub_10002C9C8(v67, v68, &v255);

      *(v66 + 4) = v69;
      *(v66 + 12) = 2080;
      sub_10003B370(&qword_100527408, &type metadata accessor for IPCServerMessage, &protocol conformance descriptor for IPCServerMessage);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      v178 = *(v252 + 1);
      v178(v37, v64);
      v73 = sub_10002C9C8(v70, v72, &v255);

      *(v66 + 14) = v73;
      *(v66 + 22) = 2080;
      IPCMessage.priority.getter();
      sub_10003B370(&unk_100527440, &type metadata accessor for ExecutionPriority, &protocol conformance descriptor for ExecutionPriority);
      v74 = v239;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      v172 = v32;
      v78 = *(v238 + 8);
      v78(v30, v74);
      v241 = *(v254 + 8);
      v241(v45, v249);
      v79 = sub_10002C9C8(v75, v77, &v255);

      *(v66 + 24) = v79;
      *(v66 + 32) = 2080;
      static ExecutionPriority.current.getter();
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      v78(v30, v74);
      v83 = sub_10002C9C8(v80, v82, &v255);

      *(v66 + 34) = v83;
      v84 = v173;
      _os_log_impl(&_mh_execute_header, v173, v175, "[%s] Received message: %s, messagePriority: %s, currentPriority: %s", v66, 0x2Au);
      swift_arrayDestroy();

      (*(v59 + 8))(v172, v246);
      v45 = v252;
      v32 = v247;
    }

    else
    {

      v241 = *(v55 + 8);
      v241(v45, v63);
      v45 = v252;
      v178 = *(v252 + 1);
      v178(v37, v64);
      (*(v59 + 8))(v32, v60);
      v32 = v64;
    }

    XPCReceivedMessage.expectsReply.getter();
    XPCReceivedMessage.isSync.getter();
    v42 = v245;
    v176(v245, v251, v32);
    v54 = v45[11](v42, v32);
    v85 = v244;
    if (v54 == enum case for IPCServerMessage.prototype(_:))
    {
      v86 = v178;
      v178(v251, v32);
      v241(v248, v249);
      v86(v42, v32);
LABEL_23:
      v126 = v250;
      v127 = type metadata accessor for ReplyMessage();
      return (*(*(v127 - 8) + 56))(v126, 1, 1, v127);
    }

    if (v54 == enum case for IPCServerMessage.connect(_:))
    {
      v87 = v45[12];
      v252 = (v45 + 12);
      v87(v42, v32);
      v88 = v234;
      v89 = v233;
      (*(v234 + 32))(v233, v42, v240);
      v90 = sub_10033FF5C();
      v91 = v242;
      v92 = (*(*v242 + 144))();
      v94 = v93;
      v95 = v235;
      IPCConnectMessage.configuration.getter();
      v96 = sub_100279470();
      (*(*v90 + 504))(v91, &off_1004CE9A8, v92, v94, v95, v96, 1);

      (*(v236 + 8))(v95, v237);
      (*(v88 + 8))(v89, v240);
      v97 = v251;
      v98 = v247;
LABEL_9:
      v178(v97, v98);
LABEL_22:
      v241(v248, v249);
      goto LABEL_23;
    }

    v41 = v242;
    if (v54 == enum case for IPCServerMessage.setRoutingMode(_:))
    {
      v45[12](v42, v32);
      v99 = v228;
      v100 = v227;
      v101 = v42;
      v102 = v230;
      (*(v228 + 32))(v227, v101, v230);
      v103 = sub_10033FF5C();
      v104 = v229;
      SetRoutingModeMessage.routingMode.getter();
      (*(*v103 + 592))(v104, v242, &off_1004CE9A8, 1);

      (*(v231 + 8))(v104, v232);
      (*(v99 + 8))(v100, v102);
LABEL_21:
      v178(v251, v32);
      goto LABEL_22;
    }

    if (v54 == enum case for IPCServerMessage.setUIPresented(_:))
    {
      v45[12](v42, v32);
      v105 = v225;
      v106 = v42;
      v107 = v224;
      v108 = v226;
      (*(v225 + 32))(v224, v106, v226);
      v109 = sub_10033FF5C();
      v110 = SetUIPresentedStateMessage.isPresented.getter();
      (*(*v109 + 600))(v110 & 1, v41, &off_1004CE9A8, 1);

      (*(v105 + 8))(v107, v108);
      goto LABEL_21;
    }

    if (v54 == enum case for IPCServerMessage.setExpandedSessionIdentifiers(_:))
    {
      v45[12](v42, v32);
      v111 = v42;
      v112 = v222;
      v113 = v221;
      v114 = v223;
      (*(v222 + 32))(v221, v111, v223);
      v115 = sub_10033FF5C();
      v116 = SetExpandedSessionsStateMessage.expandedSessionIdentifiers.getter();
      (*(*v115 + 608))(v116, v41, &off_1004CE9A8, 1);

      (*(v112 + 8))(v113, v114);
      goto LABEL_21;
    }

    if (v54 == enum case for IPCServerMessage.interactWithItem(_:))
    {
      v45[12](v42, v32);
      v117 = v219;
      v118 = v218;
      v119 = v42;
      v120 = v220;
      (*(v219 + 32))(v218, v119, v220);
      v121 = sub_10033FF5C();
      v122 = InteractWithItemMessage.itemIdentifier.getter();
      (*(*v121 + 520))(v122);
LABEL_20:

      (*(v117 + 8))(v118, v120);
      goto LABEL_21;
    }

    if (v54 == enum case for IPCServerMessage.interactWithSession(_:))
    {
      v45[12](v42, v32);
      v117 = v215;
      v118 = v214;
      v123 = v42;
      v120 = v216;
      (*(v215 + 32))(v214, v123, v216);
      v124 = sub_10033FF5C();
      v125 = InteractWithSessionMessage.sessionIdentifier.getter();
      (*(*v124 + 528))(v125);
      goto LABEL_20;
    }

    if (v54 == enum case for IPCServerMessage.interactWithDialog(_:))
    {
      v129 = v45[12];
      v252 = (v45 + 12);
      v129(v42, v32);
      v130 = v208;
      v131 = v42;
      v132 = v207;
      (*(v208 + 32))(v207, v131, v217);
      v133 = sub_10033FF5C();
      v134 = v41;
      v135 = InteractWithDialogMessage.dialogIdentifier.getter();
      v137 = v136;
      v138 = v209;
      InteractWithDialogMessage.action.getter();
      (*(*v133 + 536))(v135, v137, v138, v134, &off_1004CE9A8, 1);

      (*(v210 + 8))(v138, v211);
      (*(v130 + 8))(v132, v217);
      v178(v251, v247);
      goto LABEL_22;
    }

    if (v54 == enum case for IPCServerMessage.interactWithControl(_:))
    {
      v45[12](v42, v32);
      v139 = v205;
      v140 = v204;
      (*(v205 + 32))(v204, v42, v212);
      v141 = sub_10033FF5C();
      v142 = v206;
      InteractWithControlMessage.control.getter();
      (*(*v141 + 544))(v142, v41, &off_1004CE9A8, 1);

      (*(v85 + 8))(v142, v213);
      (*(v139 + 8))(v140, v212);
LABEL_35:
      v97 = v251;
      v98 = v32;
      goto LABEL_9;
    }

    if (v54 == enum case for IPCServerMessage.beginInteractionWithContinuousControl(_:))
    {
      v45[12](v42, v32);
      v143 = v42;
      v144 = v199;
      v145 = v198;
      v146 = v200;
      (*(v199 + 32))(v198, v143, v200);
      v147 = sub_10033FF5C();
      v148 = v201;
      BeginInteractionWithContinuousControlMessage.control.getter();
      (*(*v147 + 552))(v148, v41, &off_1004CE9A8, 1);
LABEL_33:

      (*(v202 + 8))(v148, v203);
LABEL_34:
      (*(v144 + 8))(v145, v146);
      goto LABEL_35;
    }
  }

  else
  {
    __break(1u);
  }

  if (v54 == enum case for IPCServerMessage.endInteractionWithContinuousControl(_:))
  {
    v45[12](v42, v32);
    v149 = v42;
    v144 = v196;
    v145 = v195;
    v146 = v197;
    (*(v196 + 32))(v195, v149, v197);
    v150 = sub_10033FF5C();
    v148 = v201;
    EndInteractionWithContinuousControlMessage.control.getter();
    (*(*v150 + 560))(v148, v41, &off_1004CE9A8, 1);
    goto LABEL_33;
  }

  if (v54 == enum case for IPCServerMessage.interactWithSessionAction(_:))
  {
    v45[12](v42, v32);
    v151 = v42;
    v144 = v187;
    v145 = v186;
    v146 = v189;
    (*(v187 + 32))(v186, v151, v189);
    v152 = sub_10033FF5C();
    v153 = v188;
    InteractWithSessionActionMessage.action.getter();
    (*(*v152 + 568))(v153, v41, &off_1004CE9A8, 1);

    (*(v190 + 8))(v153, v191);
    goto LABEL_34;
  }

  if (v54 == enum case for IPCServerMessage.interactWithItemAction(_:))
  {
    v45[12](v42, v32);
    v154 = v32;
    v155 = v181;
    v156 = v42;
    v157 = v180;
    v158 = v183;
    (*(v181 + 32))(v180, v156, v183);
    v159 = sub_10033FF5C();
    v160 = v182;
    InteractWithItemActionMessage.action.getter();
    (*(*v159 + 576))(v160, v41, &off_1004CE9A8, 1);

    (*(v184 + 8))(v160, v185);
    (*(v155 + 8))(v157, v158);
    v97 = v251;
    v98 = v154;
    goto LABEL_9;
  }

  if (v54 == enum case for IPCServerMessage.flushPendingControls(_:))
  {
    v161 = v245;
    (*(v252 + 12))(v245, v247);
    (*(v193 + 32))(v192, v161, v194);
    v253 = FlushPendingControlsMessage.controls.getter();
    v162 = *(v253 + 16);
    if (v162)
    {
      v163 = *(v244 + 16);
      v164 = v253 + ((*(v244 + 80) + 32) & ~*(v244 + 80));
      v165 = *(v244 + 72);
      v166 = (v244 + 8);
      v167 = v242;
      v168 = v213;
      v169 = v179;
      do
      {
        v163(v169, v164, v168);
        v170 = *sub_10033FF5C();
        (*(v170 + 544))(v169, v167, &off_1004CE9A8, 1);
        v168 = v213;

        (*v166)(v169, v168);
        v164 += v165;
        --v162;
      }

      while (v162);
    }

    (*(v193 + 8))(v192, v194);
    v178(v251, v247);
    v241(v248, v249);
    goto LABEL_23;
  }

  if (v54 == enum case for IPCServerMessage.ping(_:))
  {
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100349050()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003490A0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      v21[9] = v8;
      type metadata accessor for MediaControlIPCServer.XPCClient(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21[0];
      return result;
    }

    result = __CocoaSet.count.getter();
    if (!__OFADD__(result, 1))
    {
      v18 = sub_1003492EC(v7, result + 1);
      v21[0] = v18;
      v19 = *(v18 + 16);
      if (*(v18 + 24) <= v19)
      {
        sub_100349520(v19 + 1);
        v18 = v21[0];
      }

      sub_1003497A4(v20, v18);

      *v3 = v18;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    Hasher.init(_seed:)();
    (*(*a2 + 344))(v21);
    v10 = Hasher._finalize()();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21[0] = *v2;

      sub_100349870(v17, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v21[0];
LABEL_20:
      *a1 = a2;
      return 1;
    }

    v13 = ~v11;
    while (1)
    {
      v14 = *(*(v6 + 48) + 8 * v12);
      v15 = *(v14 + 48) == a2[6] && *(v14 + 56) == a2[7];
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v12);

    return 0;
  }

  return result;
}

Swift::Int sub_1003492EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001BC5A8(&qword_100527428, &unk_1004590C8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for MediaControlIPCServer.XPCClient(0);
      v5 = v4;
      do
      {
        v18[0] = v5;
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_100349520(v13 + 1);
        }

        v6 = v18[9];
        v2 = v19;
        Hasher.init(_seed:)();
        (*(*v6 + 344))(v18);
        result = Hasher._finalize()();
        v8 = v2 + 56;
        v9 = -1 << *(v2 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v2 + 48) + 8 * v12) = v6;
        ++*(v2 + 16);
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_100349520(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100527428, &unk_1004590C8);
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
      (*(*v17 + 344))(v27);
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

unint64_t sub_1003497A4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  (*(*a1 + 344))(v5);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100349870(void *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_100349520(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100349A1C();
      goto LABEL_16;
    }

    sub_100349B6C(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  (*(*result + 344))(v18);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for MediaControlIPCServer.XPCClient(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = *(v12 + 48) == result[6] && *(v12 + 56) == result[7];
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = result;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100349A1C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100527428, &unk_1004590C8);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void sub_100349B6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100527428, &unk_1004590C8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = *(*v17 + 344);

      v18(v28);
      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_100349DD0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100349F88(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  (*(*a1 + 344))(v17);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(v3 + 48) + 8 * v10);
    v13 = *(v12 + 48) == a1[6] && *(v12 + 56) == a1[7];
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v1;
  v17[0] = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100349A1C();
    v15 = v17[0];
  }

  v16 = *(*(v15 + 48) + 8 * v10);
  sub_10034A130(v10);
  result = v16;
  *v1 = v17[0];
  return result;
}

uint64_t sub_100349F88(uint64_t a1, void *a2)
{

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1003492EC(v5, v4);
  v20 = v6;
  Hasher.init(_seed:)();
  v7 = *(*a2 + 344);

  v7(&v19);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = *(v12 + 48);
      v14 = a2[6];
      v7 = a2[7];
      if (v13 == v14 && *(v12 + 56) == v7)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  v14 = v13;
LABEL_11:

  v16 = *(*(v6 + 48) + 8 * v10);
  sub_10034A130(v10);
  v17 = v14 == *(v16 + 48) && v7 == *(v16 + 56);
  if (v17 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    *v2 = v20;
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10034A130(unint64_t a1)
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
        v11 = *(*v10 + 344);

        v11(v20);
        v12 = Hasher._finalize()();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }
}

void sub_10034A328(uint64_t isEscapingClosureAtFileLocation)
{
  v2 = type metadata accessor for Features.MediaRemote();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for Features.MediaRemote.cayenne(_:), v2);
  v6 = Features.MediaRemote.isEnabled.getter();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = *sub_100021264();
    v8 = swift_allocObject();
    *(v8 + 16) = isEscapingClosureAtFileLocation;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_10034B310;
    *(v9 + 24) = v8;
    aBlock[4] = sub_10021C408;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001E7220;
    aBlock[3] = &unk_1004CECF8;
    v10 = _Block_copy(aBlock);
    v11 = isEscapingClosureAtFileLocation;

    v12 = v7;

    dispatch_async_and_wait(v12, v10);

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    v13 = String._bridgeToObjectiveC()();
    [isEscapingClosureAtFileLocation setMediaControlDiagnostic:v13];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10034A58C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10033FF5C();
  *a1 = result;
  return result;
}

unint64_t sub_10034A5BC()
{
  result = qword_100534C78;
  if (!qword_100534C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100534C78);
  }

  return result;
}

unint64_t sub_10034A610()
{
  result = qword_100534C80;
  if (!qword_100534C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100534C80);
  }

  return result;
}

unint64_t sub_10034A664()
{
  result = qword_100534C88;
  if (!qword_100534C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100534C88);
  }

  return result;
}

uint64_t sub_10034A6B8(void *a1)
{
  v24 = sub_1001BC5A8(&qword_100527458, &qword_1004590D8);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_1001BC5A8(&qword_100527460, &qword_1004590E0);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_1001BC5A8(&qword_100527468, qword_1004590E8);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_1000326D8(a1, a1[3]);
  sub_10034A5BC();
  v10 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    return sub_100026A44(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = KeyedDecodingContainer.allKeys.getter();
  if (*(v14 + 16) != 1)
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    sub_1001BC5A8(&unk_100527470, &qword_100455110);
    *v18 = &type metadata for MediaControlIPCServer.Errors;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100026A44(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_10034A610();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_10034A664();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_100026A44(v26);
  return v27;
}

uint64_t sub_10034AAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100525F78, &qword_100458A90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10034AB70()
{
  result = qword_100527000;
  if (!qword_100527000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100527000);
  }

  return result;
}

unint64_t sub_10034ABC8()
{
  result = qword_100527008;
  if (!qword_100527008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100527008);
  }

  return result;
}

uint64_t type metadata accessor for MediaControlIPCServer.XPCClient(uint64_t a1)
{
  result = qword_1005352B8;
  if (!qword_1005352B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata accessor for MRDMediaControlIPCServer()
{
  result = qword_1005352B0;
  if (!qword_1005352B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005352B0);
  }

  return result;
}

void sub_10034AD58(uint64_t a1)
{
  sub_10034AE24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10034AE24(uint64_t a1)
{
  if (!qword_1005271D8)
  {
    type metadata accessor for RoutingSessionSnapshot();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005271D8);
    }
  }
}

unint64_t sub_10034AEB0()
{
  result = qword_1005355D0[0];
  if (!qword_1005355D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005355D0);
  }

  return result;
}

unint64_t sub_10034AF08()
{
  result = qword_1005356E0;
  if (!qword_1005356E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005356E0);
  }

  return result;
}

unint64_t sub_10034AF60()
{
  result = qword_1005356E8[0];
  if (!qword_1005356E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005356E8);
  }

  return result;
}

unint64_t sub_10034AFB8()
{
  result = qword_100535770;
  if (!qword_100535770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100535770);
  }

  return result;
}

unint64_t sub_10034B010()
{
  result = qword_100535778;
  if (!qword_100535778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100535778);
  }

  return result;
}

unint64_t sub_10034B068()
{
  result = qword_100535800;
  if (!qword_100535800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100535800);
  }

  return result;
}

unint64_t sub_10034B0C0()
{
  result = qword_100535808[0];
  if (!qword_100535808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100535808);
  }

  return result;
}

uint64_t sub_10034B12C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  v11 = HIDWORD(a1);
  *atoken.val = a1;
  *&atoken.val[2] = a2;
  v20 = HIDWORD(a2);
  v21 = HIDWORD(a3);
  *&atoken.val[4] = a3;
  *&atoken.val[6] = a4;
  v22 = HIDWORD(a4);
  v12 = MSVBundleIDForAuditToken();
  if (v12)
  {
    v19 = v5;
    v13 = v11;
    v11 = v9;
    v14 = v12;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v9 = v11;
    LODWORD(v11) = v13;
    v5 = v19;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *v10 = v15;
  v10[1] = v17;

  atoken.val[0] = v8;
  atoken.val[1] = v11;
  atoken.val[2] = v7;
  atoken.val[3] = v20;
  atoken.val[4] = v6;
  atoken.val[5] = v21;
  atoken.val[6] = v5;
  atoken.val[7] = v22;
  result = audit_token_to_pid(&atoken);
  *v9 = result;
  *(v9 + 4) = 0;
  return result;
}

void sub_10034B228(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  type metadata accessor for MediaControlIPCServer.XPCClient(0);
  v7 = swift_allocObject();

  sub_100340B80(v8, v4, v5, v6, v9);
  sub_10034652C(v7);
  *a2 = v7;
}

unint64_t sub_10034B2BC()
{
  result = qword_100527450;
  if (!qword_100527450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100527450);
  }

  return result;
}

void sub_10034B310()
{
  v1 = *(v0 + 16);
  if (qword_100534C70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(qword_1005385A0 + 16) == 1)
  {
    if (v1)
    {

      sub_10033FF5C();

      sub_100327D5C();

      v2 = String._bridgeToObjectiveC()();

LABEL_8:
      [v1 setMediaControlDiagnostic:v2];

      return;
    }

    __break(1u);
  }

  else if (v1)
  {
    v2 = String._bridgeToObjectiveC()();
    goto LABEL_8;
  }

  __break(1u);
}

void sub_10034B444()
{
  v1 = [v0 sortingHint];
  if (v1)
  {
    v2 = v1;
    [v1 doubleValue];
  }
}

void (*sub_10034B4D0(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10034B568;
}

id sub_10034B56C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_queue] = a2;
  *&v8[OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_routeRecommender] = a3;
  *&v8[OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_routeRecommendationStore] = a4;
  v16.receiver = v8;
  v16.super_class = v4;
  v9 = a2;
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = objc_msgSendSuper2(&v16, "init");
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  [v14 addObserver:v13 selector:"update" name:@"MRRouteRecommenderDidReceiveNewRecommendationsNotification" object:0];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v13;
}

id sub_10034B6D4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_queue] = a2;
  *&v4[OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_routeRecommender] = a3;
  *&v4[OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_routeRecommendationStore] = a4;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for MRDIntelligentRoutingLockScreenRoutingProvider();
  v8 = a2;
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = objc_msgSendSuper2(&v15, "init");
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 defaultCenter];
  [v13 addObserver:v12 selector:"update" name:@"MRRouteRecommenderDidReceiveNewRecommendationsNotification" object:0];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v12;
}

id sub_10034B8A8(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  v3 = *sub_1001D8BC4();
  sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100450890;
  v5 = *(v1 + OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_routeRecommender);
  v6 = v3;
  swift_unknownObjectRetain();
  sub_1001BC5A8(&qword_1005274A8, &unk_100459120);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v4 + 56) = &type metadata for String;
  v10 = sub_100008FEC();
  *(v4 + 64) = v10;
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  v11 = *(v1 + OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_routeRecommendationStore);
  v12 = [v11 description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v10;
  *(v4 + 72) = v13;
  *(v4 + 80) = v15;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v6, ">>+ Requesting current context %@ %@", 36, 2, v4);

  return [v5 requestCurrentContext];
}

id sub_10034BB28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_10034BBFC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10034BC58(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10034D86C;
}

double sub_10034BD6C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_10034BE20(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_nearbyDeviceIdentifiers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_10034BF1C(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_queue] = a2;
  v4 = objc_opt_self();
  v5 = a2;
  result = [v4 currentSettings];
  if (result)
  {
    v7 = result;
    v8 = [result nearbyDeviceIdentifiers];

    if (v8)
    {
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    *&v2[OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_nearbyDeviceIdentifiers] = v9;
    v16.receiver = v2;
    v16.super_class = type metadata accessor for UserDefaultsLockScreenRoutingProvider();
    v10 = objc_msgSendSuper2(&v16, "init");
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 defaultCenter];
    result = [v4 currentSettings];
    if (result)
    {
      v14 = result;
      v15 = [result nearbyDeviceIdentifiersDidChangeNotification];

      [v13 addObserver:v12 selector:"update" name:v15 object:0];
      swift_unknownObjectRelease();

      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10034C150()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v5 = *(v23 - 8);
  v6 = __chkstk_darwin(v23);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*((swift_isaMask & *v0) + 0x80))(v6);
  v10 = [objc_opt_self() currentSettings];
  if (v10)
  {
    v11 = v10;
    v21 = v5;
    v12 = [v10 nearbyDeviceIdentifiers];

    v13 = _swiftEmptyArrayStorage;
    v22 = v2;
    if (v12)
    {
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v14 = *((swift_isaMask & *v0) + 0x88);

    v14(v15);
    LOBYTE(v14) = sub_100034D74(v9, v13);

    if ((v14 & 1) == 0)
    {
      v20[1] = *(v0 + OBJC_IVAR___MRDUserDefaultsLockScreenRoutingProvider_queue);
      v17 = (*((swift_isaMask & *v0) + 0x68))(v16);
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      aBlock[4] = sub_10034D870;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004CED98;
      v19 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      static DispatchQoS.unspecified.getter();
      v24 = _swiftEmptyArrayStorage;
      sub_1000146D4();
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v19);
      swift_unknownObjectRelease();
      (*(v22 + 8))(v4, v1);
      (*(v21 + 8))(v8, v23);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10034C5D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10034C690(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v20 = v7;
    v21 = v6;
    while (1)
    {
      v9 = *v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      if ([v8 classification] == 1)
      {
        v10 = -1;
      }

      else
      {
        v10 = [v8 classification];
      }

      if ([v9 classification] == 1)
      {
        if (v10 == -1)
        {
          goto LABEL_14;
        }
      }

      else if (v10 == [v9 classification])
      {
LABEL_14:
        sub_10034B444();
        v13 = v12;
        sub_10034B444();
        v15 = v14;
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if (v15 >= v13)
        {
          goto LABEL_4;
        }

        goto LABEL_21;
      }

      if ([v8 classification] == 1)
      {
        v11 = -1;
      }

      else
      {
        v11 = [v8 classification];
      }

      if ([v9 classification] == 1)
      {
        v16 = -1;
      }

      else
      {
        v16 = [v9 classification];
      }

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v16 >= v11)
      {
LABEL_4:
        ++v4;
        v6 = v21 + 8;
        v7 = v20 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_21:
      if (!v5)
      {
        __break(1u);
        return result;
      }

      v17 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v17;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_10034C864(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v117 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_132:
    v10 = *v117;
    if (!*v117)
    {
      goto LABEL_170;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_134:
      v106 = *(v9 + 16);
      if (v106 >= 2)
      {
        while (1)
        {
          v107 = *v6;
          if (!*v6)
          {
            goto LABEL_168;
          }

          v6 = (v106 - 1);
          v108 = *(v9 + 16 * v106);
          v109 = v9;
          v110 = *(v9 + 16 * (v106 - 1) + 32);
          v9 = *(v9 + 16 * (v106 - 1) + 40);
          sub_10034D17C((v107 + 8 * v108), (v107 + 8 * v110), (v107 + 8 * v9), v10);
          if (v5)
          {
          }

          if (v9 < v108)
          {
            goto LABEL_157;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_10024C200(v109);
          }

          if (v106 - 2 >= *(v109 + 2))
          {
            goto LABEL_158;
          }

          v111 = &v109[16 * v106];
          *v111 = v108;
          *(v111 + 1) = v9;
          result = sub_10024C174(v106 - 1);
          v9 = v109;
          v106 = *(v109 + 2);
          v6 = a3;
          if (v106 <= 1)
          {
          }
        }
      }
    }

LABEL_164:
    result = sub_10024C200(v9);
    v9 = result;
    goto LABEL_134;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  v10 = &selRef_bundleWithURL_;
  while (1)
  {
    v11 = v8;
    v12 = (v8 + 1);
    v118 = v8;
    if (v8 + 1 < v7)
    {
      v13 = *v6;
      v14 = (v8 + 1);
      v15 = *(v13 + 8 * v12);
      v16 = *(v13 + 8 * v8);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      if ([v15 classification] == 1)
      {
        v17 = -1;
      }

      else
      {
        v17 = [v15 classification];
      }

      if ([v16 classification] == 1)
      {
        v18 = -1;
      }

      else
      {
        v18 = [v16 classification];
      }

      v120 = v7;
      v113 = v9;
      v115 = v5;
      if (v17 == v18)
      {
        sub_10034B444();
        v20 = v19;
        sub_10034B444();
        v22 = v21;
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v122 = v22 < v20;
      }

      else
      {
        if ([v15 classification] == 1)
        {
          v23 = -1;
        }

        else
        {
          v23 = [v15 classification];
        }

        if ([v16 classification] == 1)
        {
          v24 = -1;
        }

        else
        {
          v24 = [v16 classification];
        }

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v122 = v24 < v23;
        v7 = v120;
      }

      v9 = 8 * v118;
      v25 = (v13 + 8 * v118 + 16);
      v26 = 8 * v118 + 8;
      v12 = v14;
      while (1)
      {
        v6 = v12;
        v32 = v26;
        v12 = (v12 + 1);
        if (v12 >= v7)
        {
LABEL_38:
          if (v122)
          {
            v38 = v118;
            v5 = v115;
            if (v12 < v118)
            {
              goto LABEL_161;
            }

            if (v118 >= v12)
            {
              v6 = a3;
              v9 = v113;
              v11 = v118;
              break;
            }

            do
            {
              if (v38 != v6)
              {
                v41 = *a3;
                if (!*a3)
                {
                  goto LABEL_167;
                }

                v39 = *(v41 + v9);
                *(v41 + v9) = *(v41 + v32);
                *(v41 + v32) = v39;
              }

              v38 = (v38 + 1);
              v32 -= 8;
              v9 += 8;
              v40 = v38 < v6;
              v6 = (v6 - 1);
            }

            while (v40);
          }

          else
          {
            v5 = v115;
          }

          v11 = v118;
          v6 = a3;
          v9 = v113;
          break;
        }

        v124 = v12;
        v33 = *(v25 - 1);
        v34 = *v25;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        if ([v34 classification] == 1)
        {
          v35 = -1;
        }

        else
        {
          v35 = [v34 classification];
        }

        if ([v33 classification] == 1)
        {
          if (v35 != -1)
          {
            goto LABEL_31;
          }
        }

        else if (v35 != [v33 classification])
        {
LABEL_31:
          if ([v34 classification] == 1)
          {
            v36 = -1;
          }

          else
          {
            v36 = [v34 classification];
          }

          if ([v33 classification] == 1)
          {
            v37 = -1;
          }

          else
          {
            v37 = [v33 classification];
          }

          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          v31 = v37 < v36;
          v7 = v120;
          goto LABEL_22;
        }

        sub_10034B444();
        v28 = v27;
        sub_10034B444();
        v30 = v29;
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v31 = v30 < v28;
LABEL_22:
        ++v25;
        v26 = v32 + 8;
        v12 = v124;
        if (v122 != v31)
        {
          goto LABEL_38;
        }
      }
    }

    v42 = v6[1];
    if (v12 < v42)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_160;
      }

      if (v12 - v11 < a4)
      {
        break;
      }
    }

LABEL_81:
    if (v12 < v11)
    {
      goto LABEL_159;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10024A7E0(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v59 = *(v9 + 16);
    v58 = *(v9 + 24);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = sub_10024A7E0((v58 > 1), v59 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v60;
    v61 = v9 + 16 * v59;
    *(v61 + 32) = v118;
    *(v61 + 40) = v12;
    v126 = v12;
    v62 = *v117;
    if (!*v117)
    {
      goto LABEL_169;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v9 + 32);
          v65 = *(v9 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_101:
          if (v67)
          {
            goto LABEL_148;
          }

          v80 = (v9 + 16 * v60);
          v82 = *v80;
          v81 = v80[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_151;
          }

          v86 = (v9 + 32 + 16 * v63);
          v88 = *v86;
          v87 = v86[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_154;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_155;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_122;
          }

          goto LABEL_115;
        }

        v90 = (v9 + 16 * v60);
        v92 = *v90;
        v91 = v90[1];
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_115:
        if (v85)
        {
          goto LABEL_150;
        }

        v93 = v9 + 16 * v63;
        v95 = *(v93 + 32);
        v94 = *(v93 + 40);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_153;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_122:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
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
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (!*v6)
        {
          goto LABEL_166;
        }

        v102 = v9;
        v103 = *(v9 + 32 + 16 * v101);
        v104 = *(v9 + 32 + 16 * v63);
        v9 = *(v9 + 32 + 16 * v63 + 8);
        sub_10034D17C((*v6 + 8 * v103), (*v6 + 8 * v104), (*v6 + 8 * v9), v62);
        if (v5)
        {
        }

        if (v9 < v103)
        {
          goto LABEL_144;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_10024C200(v102);
        }

        if (v101 >= *(v102 + 2))
        {
          goto LABEL_145;
        }

        v105 = &v102[16 * v101];
        *(v105 + 4) = v103;
        *(v105 + 5) = v9;
        result = sub_10024C174(v63);
        v9 = v102;
        v60 = *(v102 + 2);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = v9 + 32 + 16 * v60;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_146;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_147;
      }

      v75 = (v9 + 16 * v60);
      v77 = *v75;
      v76 = v75[1];
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_149;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_152;
      }

      if (v79 >= v71)
      {
        v97 = (v9 + 32 + 16 * v63);
        v99 = *v97;
        v98 = v97[1];
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_156;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_101;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v126;
    if (v126 >= v7)
    {
      goto LABEL_132;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_162;
  }

  if (v11 + a4 < v42)
  {
    v42 = v11 + a4;
  }

  if (v42 < v11)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (v12 == v42)
  {
    goto LABEL_81;
  }

  v121 = v42;
  v114 = v9;
  v116 = v5;
  v43 = *v6;
  v44 = *v6 + 8 * v12 - 8;
  v45 = v11 - v12;
LABEL_60:
  v123 = v44;
  v125 = v12;
  v46 = *(v43 + 8 * v12);
  v47 = v45;
  while (1)
  {
    v48 = *v44;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v49 = [v46 classification] == 1 ? -1 : objc_msgSend(v46, "classification");
    if ([v48 classification] == 1)
    {
      if (v49 != -1)
      {
        goto LABEL_66;
      }
    }

    else if (v49 != [v48 classification])
    {
LABEL_66:
      if ([v46 classification] == 1)
      {
        v50 = -1;
      }

      else
      {
        v50 = [v46 classification];
      }

      if ([v48 classification] == 1)
      {
        v55 = -1;
      }

      else
      {
        v55 = [v48 classification];
      }

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v55 < v50)
      {
        goto LABEL_76;
      }

LABEL_59:
      v12 = (v125 + 1);
      v44 = v123 + 8;
      --v45;
      if ((v125 + 1) == v121)
      {
        v6 = a3;
        v12 = v121;
        v9 = v114;
        v5 = v116;
        v11 = v118;
        goto LABEL_81;
      }

      goto LABEL_60;
    }

    sub_10034B444();
    v52 = v51;
    sub_10034B444();
    v54 = v53;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v54 >= v52)
    {
      goto LABEL_59;
    }

LABEL_76:
    if (!v43)
    {
      break;
    }

    v56 = *v44;
    v46 = *(v44 + 8);
    *v44 = v46;
    *(v44 + 8) = v56;
    v44 -= 8;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
  return result;
}

uint64_t sub_10034D17C(void **__src, void **__dst, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 < 8 || v6 <= v7)
    {
      goto LABEL_67;
    }

    v30 = &selRef_bundleWithURL_;
LABEL_41:
    v45 = v6;
    v31 = v6 - 1;
    v32 = v5;
    v33 = v14;
    v47 = v31;
    while (1)
    {
      v35 = *--v33;
      v34 = v35;
      v36 = *v31;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      if ([v35 v30[57]] == 1)
      {
        v37 = -1;
      }

      else
      {
        v37 = [v34 v30[57]];
      }

      if ([v36 v30[57]] == 1)
      {
        if (v37 != -1)
        {
          goto LABEL_48;
        }
      }

      else if (v37 != [v36 v30[57]])
      {
LABEL_48:
        if ([v34 v30[57]] == 1)
        {
          v38 = -1;
        }

        else
        {
          v38 = [v34 v30[57]];
        }

        if ([v36 v30[57]] == 1)
        {
          v43 = -1;
        }

        else
        {
          v43 = [v36 v30[57]];
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v5 = v32 - 1;
        v29 = v43 < v38;
        v30 = &selRef_bundleWithURL_;
        if (v29)
        {
LABEL_60:
          if (v32 != v45)
          {
            *v5 = *v47;
          }

          if (v14 <= v4 || (v6 = v47, v47 <= v7))
          {
            v6 = v47;
            goto LABEL_67;
          }

          goto LABEL_41;
        }

        goto LABEL_58;
      }

      sub_10034B444();
      v40 = v39;
      sub_10034B444();
      v42 = v41;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v5 = v32 - 1;
      if (v42 < v40)
      {
        goto LABEL_60;
      }

LABEL_58:
      v31 = v47;
      if (v14 != v32)
      {
        *v5 = *v33;
      }

      v14 = v33;
      v32 = v5;
      if (v33 <= v4)
      {
        v14 = v33;
        v6 = v45;
        goto LABEL_67;
      }
    }
  }

  if (a4 != __src || &__src[v10] <= a4)
  {
    memmove(a4, __src, 8 * v10);
  }

  v14 = &v4[v10];
  if (v8 >= 8 && v6 < v5)
  {
    v15 = &selRef_bundleWithURL_;
    v46 = v14;
    do
    {
      v16 = *v6;
      v17 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      if ([v16 v15[57]] == 1)
      {
        v18 = -1;
      }

      else
      {
        v18 = [v16 v15[57]];
      }

      if ([v17 v15[57]] == 1)
      {
        if (v18 == -1)
        {
          goto LABEL_20;
        }
      }

      else if (v18 == [v17 v15[57]])
      {
LABEL_20:
        sub_10034B444();
        v22 = v21;
        sub_10034B444();
        v24 = v23;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v24 >= v22)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      v19 = v4;
      if ([v16 v15[57]] == 1)
      {
        v20 = -1;
      }

      else
      {
        v20 = [v16 v15[57]];
      }

      v27 = v6;
      if ([v17 v15[57]] == 1)
      {
        v28 = -1;
      }

      else
      {
        v28 = [v17 v15[57]];
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v29 = v28 < v20;
      v6 = v27;
      v15 = &selRef_bundleWithURL_;
      v4 = v19;
      v14 = v46;
      if (!v29)
      {
LABEL_21:
        v25 = v4;
        v26 = v7 == v4++;
        if (v26)
        {
          goto LABEL_23;
        }

LABEL_22:
        *v7 = *v25;
        goto LABEL_23;
      }

LABEL_32:
      v25 = v6;
      v26 = v7 == v6++;
      if (!v26)
      {
        goto LABEL_22;
      }

LABEL_23:
      ++v7;
    }

    while (v4 < v14 && v6 < v5);
  }

  v6 = v7;
LABEL_67:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_10034D5F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000462C(&unk_100527530, &qword_100527528, &unk_100459190, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_1001BC5A8(&qword_100527528, &unk_100459190);
            v9 = sub_10034D7A4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1001BC5A8(&qword_100525EE0, &qword_100458100);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10034D7A4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_10034D824;
  }

  __break(1u);
  return result;
}

Swift::Int sub_10034D8D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10034D94C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10034D9A4(_DWORD *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
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
    sub_10034DCEC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_10034DA9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_1005275F0, &qword_1004591D0);
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
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
      *(*(v5 + 48) + 4 * v13) = v17;
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

void sub_10034DCEC(Swift::Int a1, unint64_t a2, char a3)
{
  v4 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10034DA9C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_10034DE48();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10034DF88(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for MRAVOutputDeviceType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 4 * a2) != v4)
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
  *(*(v13 + 48) + 4 * a2) = v4;
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