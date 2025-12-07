uint64_t sub_100072230(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

id sub_100072458()
{
  v1 = v0;
  sub_10000368C(&unk_1000EC610, &unk_1000B6700);
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

uint64_t sub_1000725CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100072620(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_100072674(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_31;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for TerrestrialRadioStation(0);
  sub_10007310C(&qword_1000EDFF8, type metadata accessor for TerrestrialRadioStation, &protocol conformance descriptor for TerrestrialRadioStation);
  result = Set.Iterator.init(_cocoa:)();
  v4 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_31;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v21 = v9;
  v22 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_29;
    }

    type metadata accessor for TerrestrialRadioStation(0);
    swift_dynamicCast();
    result = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_29;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v14 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v13;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  v7 = v22;
LABEL_31:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_1000728A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v9 = a1 <= a2;
    if (a3 > 0)
    {
      v9 = a1 >= a2;
    }

    if (v9)
    {
      if ((a1 != a2) | v5 & 1 || !(v7 & 1 | (v6 != 0x8000000000000000)))
      {
        return result;
      }

      v5 = 1;
    }

    else
    {
      v8 = __OFADD__(a1, a3);
      a1 += a3;
      if (v8)
      {
        a1 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v6 = 0x8000000000000000;
      }

      else
      {
        v6 = 0;
      }

      v7 = !v8;
    }

    v8 = __OFADD__(result++, 1);
  }

  while (!v8);
  __break(1u);
  return result;
}

void *sub_100072930(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = sub_1000728A0(a1, a2, a3);
  result = sub_1000A2C90(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    if (!v7)
    {
      v31 = 0;
      v10 = 0;
      goto LABEL_25;
    }

    v31 = 0;
    v10 = 0;
    v11 = v6;
    while (1)
    {
      v12 = v11 <= a2;
      if (a3 > 0)
      {
        v12 = v11 >= a2;
      }

      if (v12)
      {
        if (v9 & 1 | (v11 != a2))
        {
          goto LABEL_50;
        }

        if (!v10 && v31 == 0x8000000000000000)
        {
          goto LABEL_51;
        }

        v9 = 1;
        v6 = a2;
      }

      else
      {
        v10 = !__OFADD__(v11, a3);
        v13 = 0x8000000000000000;
        if (!__OFADD__(v11, a3))
        {
          v13 = 0;
        }

        v31 = v13;
        v6 = __OFADD__(v11, a3) ? ((v11 + a3) >> 63) ^ 0x8000000000000000 : v11 + a3;
      }

      if (v11 < 0)
      {
        break;
      }

      if (HIDWORD(v11))
      {
        goto LABEL_49;
      }

      [a4 mediaSourceSemanticType];
      result = UInt32.formattedUserEnteredFrequency(mediaSourceType:)();
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        v26 = v14;
        v28 = result;
        sub_1000A2C90((v15 > 1), v16 + 1, 1);
        v14 = v26;
        result = v28;
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = result;
      v17[5] = v14;
      v11 = v6;
      if (!--v7)
      {
        while (1)
        {
LABEL_25:
          v18 = v6 <= a2;
          if (a3 > 0)
          {
            v18 = v6 >= a2;
          }

          if (v18)
          {
            if ((v6 != a2) | v9 & 1 || !v10 && v31 == 0x8000000000000000)
            {
              return _swiftEmptyArrayStorage;
            }

            v9 = 1;
            v19 = v6;
          }

          else
          {
            v20 = __OFADD__(v6, a3);
            if (v20)
            {
              v19 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v6 + a3;
            }

            v21 = 0x8000000000000000;
            if (!v20)
            {
              v21 = 0;
            }

            v31 = v21;
            v10 = !v20;
          }

          if (v6 < 0)
          {
            break;
          }

          if (HIDWORD(v6))
          {
            goto LABEL_47;
          }

          [a4 mediaSourceSemanticType];
          result = UInt32.formattedUserEnteredFrequency(mediaSourceType:)();
          v24 = _swiftEmptyArrayStorage[2];
          v23 = _swiftEmptyArrayStorage[3];
          if (v24 >= v23 >> 1)
          {
            v27 = v22;
            v29 = result;
            sub_1000A2C90((v23 > 1), v24 + 1, 1);
            v22 = v27;
            result = v29;
          }

          _swiftEmptyArrayStorage[2] = v24 + 1;
          v25 = &_swiftEmptyArrayStorage[2 * v24];
          v25[4] = result;
          v25[5] = v22;
          v6 = v19;
        }

        __break(1u);
LABEL_47:
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100072BE0(unint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v24 = a1;
  v22 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  v8 = a1;
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = _swiftEmptyArrayStorage;
  a1 = specialized ContiguousArray.reserveCapacity(_:)();
  if (!v10)
  {
    v12 = v8;
    goto LABEL_16;
  }

  v21 = a2;
  a2 = a3;
  v20 = *(v9 + 16);
  while (1)
  {
    v11 = 0;
    v12 = v8;
    while (v11 < v10)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_34;
      }

      if (v20 == v11)
      {
        goto LABEL_35;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v9 + 16))
        {
          goto LABEL_36;
        }

        v14 = *(v12 + 8 * v11 + 32);
      }

      v25 = v14;
      sub_10008406C(&v25, v21, a2, a4, &v26);
      if (v5)
      {
        goto LABEL_40;
      }

      v5 = 0;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a3 = v27[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a1 = specialized ContiguousArray._endMutation()();
      ++v11;
      v12 = v24;
      if (v13 == v10)
      {
        a3 = a2;
        a2 = v21;
        goto LABEL_16;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v27 = _swiftEmptyArrayStorage;
    v16 = &v27;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_39:

      __break(1u);
LABEL_40:

      v19 = v25;

      __break(1u);
    }

    v21 = a2;
    a2 = a3;
    if (!v10)
    {
      break;
    }

    a1 = _CocoaArrayWrapper.endIndex.getter();
    v20 = a1;
    v8 = v24;
  }

  a2 = v21;
  v12 = v24;
LABEL_16:
  v15 = v12 & 0xC000000000000001;
  if (v22)
  {
    while (1)
    {
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (v10 == a1)
      {
        break;
      }

LABEL_20:
      if (v15)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v10 >= *(v9 + 16))
        {
          goto LABEL_32;
        }

        a1 = *(v24 + 8 * v10 + 32);
      }

      v16 = a1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_31;
      }

      v26 = a1;
      sub_10008406C(&v26, a2, a3, a4, &v25);
      if (v5)
      {
        goto LABEL_39;
      }

      v5 = 0;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v10;
      if (!v22)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    a1 = *(v9 + 16);
    if (v10 != a1)
    {
      goto LABEL_20;
    }
  }

  v17 = v27;

  return v17;
}

char *sub_100072F1C(void *a1, unint64_t a2)
{
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v5 = v14;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = [a1 mediaItemImages];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 mediaItemImages];

    sub_100005A50(0, &qword_1000EDFF0, CAFMediaItemImage_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a1;

  sub_100072BE0(a2, v4, v9, v5);

  swift_bridgeObjectRelease_n();

  v14 = sub_10002BC68(v10);
  sub_100027D28(&v14);

  v11 = sub_10007D7D4(v14);

  v12 = sub_100071970(v11);

  return v12;
}

uint64_t sub_10007310C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100073154()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100073230@<X0>(uint64_t *a1@<X8>)
{
  sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
  sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr, &protocol conformance descriptor for CAFMediaSource);
  result = CAFObserved<>.observable.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000732F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007333C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000733DC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10007345C(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t CallObserver.isCallActive.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100073548(void *a1)
{
  swift_beginAccess();
  sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_1000735C0(char *a1, uint64_t *a2)
{
  v3 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t CallObserver.$isCallActive.getter()
{
  swift_beginAccess();
  sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  Published.projectedValue.getter();
  return swift_endAccess();
}

char *sub_1000737B8()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v18 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC5Media12CallObserver__isCallActive;
  LOBYTE(v22) = 0;
  Published.init(initialValue:)();
  (*(v6 + 32))(&v0[v9], v8, v5);
  v10 = [objc_allocWithZone(CXCallObserver) init];
  *&v0[OBJC_IVAR____TtC5Media12CallObserver_callObserver] = v10;
  sub_100005A50(0, &qword_1000EC7C0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100074600(&qword_1000EE1A8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000368C(&qword_1000EE1B0, &qword_1000B82D0);
  sub_100074648(&qword_1000EE1B8, &qword_1000EE1B0, &qword_1000B82D0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v19 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  *&v0[OBJC_IVAR____TtC5Media12CallObserver_callQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = type metadata accessor for CallObserver(0);
  v21.receiver = v0;
  v21.super_class = v11;
  v12 = objc_msgSendSuper2(&v21, "init");
  v13 = *&v12[OBJC_IVAR____TtC5Media12CallObserver_callObserver];
  v14 = v12;
  v15 = v13;
  v16 = static OS_dispatch_queue.main.getter();
  [v15 setDelegate:v14 queue:v16];

  _s5Media12CallObserverC04callC0_0D7ChangedySo06CXCallC0C_So0F0CtF_0();
  return v14;
}

uint64_t _s5Media12CallObserverC04callC0_0D7ChangedySo06CXCallC0C_So0F0CtF_0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC5Media12CallObserver_callQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000745E0;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064D70;
  aBlock[3] = &unk_1000E14F8;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_100074600(&qword_1000EB840, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
  sub_100074648(&qword_1000EB850, &unk_1000EC7D0, &qword_1000B5D50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

char *sub_100073ECC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [*&result[OBJC_IVAR____TtC5Media12CallObserver_callObserver] calls];
    sub_100005A50(0, &unk_1000EE1C0, CXCall_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v5 != 0;
    sub_100005A50(0, &qword_1000EC7C0, OS_dispatch_queue_ptr);
    v7 = static OS_dispatch_queue.main.getter();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1000746D4;
    *(v9 + 24) = v8;
    aBlock[4] = sub_1000746F0;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000743B4;
    aBlock[3] = &unk_1000E1570;
    v10 = _Block_copy(aBlock);
    v11 = v2;

    dispatch_sync(v7, v10);

    _Block_release(v10);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1000740F8(char a1, void *a2)
{
  v4 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v20 == v4)
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006928(v14, qword_1000F3BD0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67240192;
      *(v17 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v15, v16, "Call is already active: %{BOOL,public}d", v17, 8u);
    }
  }

  else
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006928(v5, qword_1000F3BD0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136446210;
      if (a1)
      {
        v10 = 7562617;
      }

      else
      {
        v10 = 28526;
      }

      if (a1)
      {
        v11 = 0xE300000000000000;
      }

      else
      {
        v11 = 0xE200000000000000;
      }

      v12 = sub_100043AF0(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "[Call observer] call is active: %{public}s", v8, 0xCu);
      sub_100006960(v9);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = a1 & 1;
    v13 = a2;
    static Published.subscript.setter();
  }
}

id CallObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallObserver(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CallObserver(uint64_t a1)
{
  result = qword_1000EE198;
  if (!qword_1000EE198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100074508(uint64_t a1)
{
  sub_10000B5F0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000745A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000745E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100074648(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007469C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074720()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100074794(unsigned __int8 a1)
{
  v2 = v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle];
  if (v2 != a1 && v2 != 0)
  {
    if (v2 == 1)
    {
      v4 = [objc_allocWithZone(CPUIFocusRingView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v4 setCornerRadius:8.0];
      [v4 setRingGap:0.0];
      [v4 setRingWidth:3.0];
      [v1 addSubview:v4];
      v5 = objc_opt_self();
      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1000B4FB0;
      v7 = [v4 topAnchor];
      v8 = [v1 topAnchor];
      v9 = [v7 constraintEqualToAnchor:v8];

      *(v6 + 32) = v9;
      v10 = [v4 bottomAnchor];
      v11 = [v1 bottomAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];

      *(v6 + 40) = v12;
      v13 = [v4 leadingAnchor];
      v14 = [v1 leadingAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];

      *(v6 + 48) = v15;
      v16 = [v4 trailingAnchor];
      v17 = [v1 trailingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];

      *(v6 + 56) = v18;
      sub_100075A4C();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 activateConstraints:isa];

      v20 = *&v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusRing];
      *&v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusRing] = v4;
      v21 = v4;

      [v21 setHidden:1];
    }

    else
    {
      v21 = [v1 layer];
      [v21 setMasksToBounds:1];
    }
  }
}

void sub_100074B08()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for WidgetFocusableView(0);
  objc_msgSendSuper2(&v8, "layoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle) == 2)
  {
    [v0 frame];
    v2 = v1;
    [v0 frame];
    v4 = v3;
    v5 = [v0 layer];
    v6 = 8.0;
    if (v4 <= v2)
    {
      [v0 frame];
      v6 = v7 * 0.5;
    }

    [v5 setCornerRadius:v6];
  }
}

void sub_100074C28(char a1)
{
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006928(v3, qword_1000F3BA0);
  v4 = v1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 67109378;
    *(v6 + 4) = a1 & 1;
    *(v6 + 8) = 2112;
    *(v6 + 10) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Pressed %{BOOL}d %@", v6, 0x12u);
    sub_1000113D0(v7);
  }
}

void sub_100074DD4()
{
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006928(v1, qword_1000F3BA0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "Selected %@", v5, 0xCu);
    sub_1000113D0(v6);
  }

  v8 = &v2[OBJC_IVAR____TtC5Media19WidgetFocusableView_action];
  v9 = *&v2[OBJC_IVAR____TtC5Media19WidgetFocusableView_action];
  if (v9)
  {
    v10 = *(v8 + 1);

    v9(v11);

    sub_10003DEF8(v9, v10);
  }
}

void sub_100074F9C(char a1)
{
  if (qword_1000EACF0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006928(v3, qword_1000F3BA0);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 2112;
    *(v7 + 10) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Focused %{BOOL}d %@", v7, 0x12u);
    sub_1000113D0(v8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4;
  static Published.subscript.setter();
  sub_100075184();
}

void sub_100075184()
{
  if (v0[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle])
  {
    if (v0[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle] == 1)
    {
      v1 = *&v0[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusRing];
      if (!v1)
      {
        return;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v2 = v1;
      static Published.subscript.getter();

      [v2 setHidden:(v5 & 1) == 0];
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v3 = objc_opt_self();
      v4 = &selRef_radio_carSystemFocusColor;
      if (!v6)
      {
        v4 = &selRef_clearColor;
      }

      v2 = [v3 *v4];
      [v0 setBackgroundColor:v2];
    }
  }
}

id sub_1000752DC(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  v13 = &v4[OBJC_IVAR____TtC5Media19WidgetFocusableView_action];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC5Media19WidgetFocusableView__crs_focused;
  v19 = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(&v4[v14], v12, v9);
  *&v4[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusRing] = 0;
  v4[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle] = 0;
  v15 = type metadata accessor for WidgetFocusableView(0);
  v18.receiver = v4;
  v18.super_class = v15;
  return objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100075464(void *a1)
{
  v3 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = &v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_action];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC5Media19WidgetFocusableView__crs_focused;
  v14 = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(&v1[v8], v6, v3);
  *&v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusRing] = 0;
  v1[OBJC_IVAR____TtC5Media19WidgetFocusableView_focusStyle] = 0;
  v9 = type metadata accessor for WidgetFocusableView(0);
  v13.receiver = v1;
  v13.super_class = v9;
  v10 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

id sub_1000755E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetFocusableView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WidgetFocusableView(uint64_t a1)
{
  result = qword_1000EE210;
  if (!qword_1000EE210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007570C(uint64_t a1)
{
  sub_10000B5F0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1000757D0()
{
  result = qword_1000EE228;
  if (!qword_1000EE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE228);
  }

  return result;
}

uint64_t sub_100075824@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WidgetFocusableView(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100075864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100075B00();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000758C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100075B00();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10007592C(uint64_t a1)
{
  sub_100075B00();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100075954@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_1000759D8(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

unint64_t sub_100075A4C()
{
  result = qword_1000EBDD8;
  if (!qword_1000EBDD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EBDD8);
  }

  return result;
}

unint64_t sub_100075AAC()
{
  result = qword_1000EE240;
  if (!qword_1000EE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE240);
  }

  return result;
}

unint64_t sub_100075B00()
{
  result = qword_1000EE248;
  if (!qword_1000EE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE248);
  }

  return result;
}

uint64_t sub_100075B54(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t RadioFilteringStrategy.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x636973754DLL;
  v2 = 1802264916;
  v3 = 1937204558;
  if (a1 != 3)
  {
    v3 = 0x726568744FLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x7374726F7053;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100075C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2)
  {
    v4 = *(a1 + 8);
    if (v3)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 0;
    }

    if (v3)
    {
      v6 = *(a2 + 16);
    }

    else
    {
      v6 = 0xE000000000000000;
    }

    if (v2 == 0xE100000000000000 && v4 == 35)
    {
      goto LABEL_18;
    }

    v7 = *(a1 + 16);
  }

  else
  {
    v4 = 0;
    if (v3)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 0;
    }

    v7 = 0xE000000000000000;
    if (v3)
    {
      v6 = *(a2 + 16);
    }

    else
    {
      v6 = 0xE000000000000000;
    }
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v5 == 35 && v6 == 0xE100000000000000)
    {
      v8 = 1;
      goto LABEL_19;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v8 = 1;
      goto LABEL_19;
    }

    if (v4 != v5 || v7 != v6)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_19;
    }
  }

LABEL_18:
  v8 = 0;
LABEL_19:

  return v8 & 1;
}

Swift::Int sub_100075D78()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100075E40(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100075EF4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100075FB8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s5Media22RadioFilteringStrategyO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100075FE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x636973754DLL;
  v5 = 0xE400000000000000;
  v6 = 1802264916;
  v7 = 0xE400000000000000;
  v8 = 1937204558;
  if (v2 != 3)
  {
    v8 = 0x726568744FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7374726F7053;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10007607C(char a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = [objc_opt_self() mainBundle];
      v17 = 0xE000000000000000;
      v4 = 0x534E455F54524F53;
      v5 = 0xEE0053454C424D45;
      v3 = 0x6F69646152;
      goto LABEL_6;
    }

    if (a1 == 3)
    {
      v9 = 0x4148435F54524F53;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a1 == 3)
    {
      v10 = 0xED0000534C454E4ELL;
    }

    else
    {
      v10 = 0x80000001000BC5D0;
    }

LABEL_19:
    v11 = [objc_opt_self() mainBundle];
    v18._object = 0xE000000000000000;
    v12.value._countAndFlagsBits = 0x6F69646152;
    v13._countAndFlagsBits = v9;
    v13._object = v10;
    v12.value._object = 0xE500000000000000;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v18);

    goto LABEL_20;
  }

  if (a2)
  {
    if (a1 == 3)
    {
      v9 = 0x5441435F54524F53;
    }

    else
    {
      v9 = 0x4E45475F54524F53;
    }

    if (a1 == 3)
    {
      v10 = 0xEF534549524F4745;
    }

    else
    {
      v10 = 0xEB00000000534552;
    }

    goto LABEL_19;
  }

  v2 = [objc_opt_self() mainBundle];
  v17 = 0xE000000000000000;
  v3 = 0x6F69646152;
  v4 = 0xD000000000000011;
  v5 = 0x80000001000BC5F0;
LABEL_6:
  v6 = 0xE500000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v3, v2, v7, *(&v17 - 1));

LABEL_20:
  v15 = String.init(format:_:)();

  return v15;
}

void sub_1000762E4(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      goto LABEL_8;
    }

    v2 = String._bridgeToObjectiveC()();
    v3 = [objc_opt_self() systemImageNamed:v2];

    if (v3)
    {
      return;
    }

    __break(1u);
  }

  if (v1 != 2)
  {
    goto LABEL_10;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() systemImageNamed:v4];

  if (v5)
  {
    return;
  }

  __break(1u);
LABEL_8:
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6];

  if (v7)
  {
    return;
  }

  __break(1u);
LABEL_10:
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  if (!v9)
  {
    __break(1u);
  }
}

unint64_t sub_10007647C(uint64_t a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  if (*(a1 + v6) == 3)
  {
    v7 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
    swift_beginAccess();
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v10 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v11 = *(a1 + v10);
    v12 = CAFMediaItem.primaryDisplayName(in:)();
    v14 = v13;

    sub_100075B54(v12, v14);
    v16 = v15;

    if (v16)
    {
LABEL_6:
      v21 = Character.uppercased()();
      countAndFlagsBits = v21._countAndFlagsBits;
      object = v21._object;

      goto LABEL_8;
    }

    v17 = *(a1 + v10);
    v8 = CAFMediaItem.secondaryDisplayName.getter();
    v9 = v18;
  }

  sub_100075B54(v8, v9);
  v20 = v19;

  if (v20)
  {
    goto LABEL_6;
  }

  countAndFlagsBits = 0;
  object = 0xE000000000000000;
LABEL_8:
  v24 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v24 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v24 || (sub_10007699C(countAndFlagsBits, object) & 0x100000000) == 0 && sub_100076AEC(countAndFlagsBits, object) == 1 && (static CharacterSet.decimalDigits.getter(), v25 = CharacterSet.contains(_:)(), (*(v3 + 8))(v5, v2), (v25 & 1) != 0))
  {

    return 35;
  }

  return countAndFlagsBits;
}

uint64_t sub_1000766E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v3 = [*(a1 + v2) mediaItemCategoryUserVisibleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return v5;
    }
  }

  return sub_1000820E4([*(a1 + v2) mediaItemCategory]);
}

uint64_t sub_1000767A8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v3 = [*(a1 + v2) ensemble];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

Swift::Int sub_10007683C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000768B0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000768F4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007752C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100076920(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10007699C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_100076D3C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_100076AEC(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_100076DD4(0xFuLL, a1, a2);
  v8 = sub_100076DD4(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 >= v8 >> 14)
  {
    if (v11 >= v10)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v13--, 1))
        {
          goto LABEL_41;
        }

        if ((a2 & 0x1000000000000000) == 0)
        {
          break;
        }

        result = String.UnicodeScalarView._foreignIndex(before:)();
        if (v11 >= result >> 14)
        {
          return v13;
        }
      }

      v20 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v20 + 7) & 0xC0) == 0x80)
        {
          v26 = -2;
          do
          {
            v27 = *(&v29 + v20 + v26--) & 0xC0;
          }

          while (v27 == 128);
          v25 = v26 + 1;
          goto LABEL_36;
        }
      }

      else
      {
        v21 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v28 = result;
          v21 = _StringObject.sharedUTF8.getter();
          result = v28;
        }

        v22 = v21 + v20;
        if ((*(v22 - 1) & 0xC0) == 0x80)
        {
          v23 = -2;
          do
          {
            v24 = *(v22 + v23--) & 0xC0;
          }

          while (v24 == 128);
          v25 = v23 + 1;
          goto LABEL_36;
        }
      }

      v25 = -1;
LABEL_36:
      result = (result + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v11 >= result >> 14)
      {
        return v13;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v14 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(&v29 + v14);
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v15 = _StringObject.sharedUTF8.getter();
        }

        v16 = *(v15 + v14);
      }

      v17 = v16;
      v18 = __clz(v16 ^ 0xFF) - 24;
      if (v17 >= 0)
      {
        LOBYTE(v18) = 1;
      }

      result = ((v14 + v18) << 16) | 5;
    }

    if (v11 <= result >> 14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_100076D3C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100077004(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_100076EE0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100076DD4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100076E6C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_100076EE0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100076E6C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_100076920(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100076EE0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

unint64_t sub_100077004(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_100076920(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _s5Media22RadioFilteringStrategyO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000DF280, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000770C8()
{
  result = qword_1000EE250;
  if (!qword_1000EE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE250);
  }

  return result;
}

unint64_t sub_100077120()
{
  result = qword_1000EE258;
  if (!qword_1000EE258)
  {
    sub_100005780(&qword_1000EE260, &qword_1000B8610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE258);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RadioFilteringStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RadioFilteringStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1000772D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000772E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100077330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RadioGroupingStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RadioGroupingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000774D8()
{
  result = qword_1000EE268;
  if (!qword_1000EE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE268);
  }

  return result;
}

uint64_t sub_10007752C(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100077540()
{
  v0 = sub_10007760C()[2];

  qword_1000F3CC0 = v0 / 3;
  return result;
}

uint64_t sub_100077580()
{
  if (qword_1000EAD30 != -1)
  {
    result = swift_once();
  }

  v0 = 40 * qword_1000F3CC0;
  if ((qword_1000F3CC0 * 40) >> 64 == (40 * qword_1000F3CC0) >> 63)
  {
    v1 = 6 * qword_1000F3CC0 - 6;
    v2 = __OFADD__(v0, v1);
    v3 = v0 + v1;
    if (!v2)
    {
      qword_1000F3CC8 = v3;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10007760C()
{
  v13 = _swiftEmptyArrayStorage;
  v1 = 9;
  sub_1000A2D78(0, 9, 0);
  v3 = 1;
  v4 = _swiftEmptyArrayStorage;
  do
  {
    if (v3 > 0xFF)
    {
      __break(1u);
      goto LABEL_16;
    }

    v13 = v4;
    v6 = v4[2];
    v5 = v4[3];
    v0 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      sub_1000A2D78((v5 > 1), v6 + 1, 1);
      v4 = v13;
    }

    v4[2] = v0;
    v7 = v4 + 2 * v6;
    v7[32] = v3;
    v7[33] = 0;
    if (v3 == 9)
    {
      v3 = 0;
    }

    else
    {
      ++v3;
    }

    --v1;
  }

  while (v1);
  sub_10009EF2C(v4);
  v13 = _swiftEmptyArrayStorage;
  sub_1000A2D78(0, 3, 0);
  v8 = _swiftEmptyArrayStorage;
  v1 = _swiftEmptyArrayStorage[2];
  v2 = _swiftEmptyArrayStorage[3];
  v9 = v2 >> 1;
  v0 = v1 + 1;
  if (v2 >> 1 > v1)
  {
    goto LABEL_10;
  }

LABEL_16:
  sub_1000A2D78((v2 > 1), v0, 1);
  v8 = v13;
  v2 = v13[3];
  v9 = v2 >> 1;
LABEL_10:
  v8[2] = v0;
  *(v8 + v1 + 16) = 256;
  v10 = v1 + 2;
  if (v9 < (v1 + 2))
  {
    sub_1000A2D78((v2 > 1), v1 + 2, 1);
    v8 = v13;
  }

  v8[2] = v10;
  *(v8 + v0 + 16) = 0;
  v11 = v8[3];
  if ((v1 + 3) > (v11 >> 1))
  {
    sub_1000A2D78((v11 > 1), v1 + 3, 1);
  }

  v13[2] = v1 + 3;
  *(v13 + v10 + 16) = 257;
  sub_10009EF2C(v13);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000777F0@<X0>(uint64_t (*a1)()@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v143 = a3;
  v137 = sub_10000368C(&qword_1000EE270, &qword_1000B8858);
  __chkstk_darwin(v137);
  v138 = &v123[-v5];
  v139 = sub_10000368C(&qword_1000EE278, &qword_1000B8860);
  v133 = *(v139 - 8);
  v6 = __chkstk_darwin(v139);
  v128 = &v123[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v127 = &v123[-v8];
  v129 = sub_10000368C(&qword_1000EE280, &qword_1000B8868);
  __chkstk_darwin(v129);
  v131 = &v123[-v9];
  v130 = sub_10000368C(&qword_1000EE288, &qword_1000B8870);
  __chkstk_darwin(v130);
  v126 = &v123[-v10];
  v135 = sub_10000368C(&qword_1000EE290, &qword_1000B8878);
  __chkstk_darwin(v135);
  v132 = &v123[-v11];
  v142 = sub_10000368C(&qword_1000EE298, &qword_1000B8880);
  __chkstk_darwin(v142);
  v136 = &v123[-v12];
  v13 = type metadata accessor for Image.ResizingMode();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v123[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v144 = sub_10000368C(&qword_1000EE2A0, &qword_1000B8888);
  __chkstk_darwin(v144);
  v134 = &v123[-v17];
  v140 = sub_10000368C(&qword_1000EE2A8, &qword_1000B8890);
  __chkstk_darwin(v140);
  v141 = &v123[-v18];
  v19 = type metadata accessor for EnvironmentValues();
  v145 = *(v19 - 8);
  v146 = v19;
  __chkstk_darwin(v19);
  v21 = &v123[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v22 = a1;
  v148 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v145 + 8))(v21, v146);
    v22 = v153;
  }

  swift_getKeyPath();
  *&v153 = v22;
  v147 = sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v22 + 24);
  v25 = *(v22 + 32);
  v26 = *(v22 + 40);
  sub_10000C964(v24, v25, *(v22 + 40));

  if (v26 == 2 && !(v25 | v24))
  {
    KeyPath = swift_getKeyPath();
    v28 = [objc_allocWithZone(ISIcon) initWithType:CRSNowPlayingIconIdentifier];
    v29 = v141;
    *v141 = KeyPath;
    *(v29 + 8) = 0;
    v29[2] = v28;
    swift_storeEnumTagMultiPayload();
    sub_100079D04();
    sub_100079D58(&qword_1000EE318, &qword_1000EE298, &qword_1000B8880, sub_100079C1C);
    return _ConditionalContent<>.init(storage:)();
  }

  sub_10000C9C0(v24, v25, v26);

  v31 = a1;
  if ((v148 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v145 + 8))(v21, v146);
    v31 = v153;
  }

  swift_getKeyPath();
  *&v153 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = *(v31 + 24);
  v34 = *(v31 + 32);
  v35 = *(v31 + 40);
  sub_10000C964(v33, v34, v35);

  sub_100009930(v33, v34, v35);
  sub_10000C9C0(v33, v34, v35);
  Image.init(uiImage:)();
  (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
  v125 = Image.resizable(capInsets:resizingMode:)();

  (*(v14 + 8))(v16, v13);

  v36 = a1;
  if ((v148 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v145 + 8))(v21, v146);
    v36 = v153;
  }

  v38 = 0x6D696E694D616364;
  swift_getKeyPath();
  *&v153 = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v36 + 17);

  v40 = 0xE400000000000000;
  v41 = 0x756964654D616364;
  v42 = 0xE90000000000006DLL;
  if (v39 != 5)
  {
    v41 = 0x6C6C6154616364;
    v42 = 0xE700000000000000;
  }

  v43 = 0xEA00000000006C61;
  if (v39 != 3)
  {
    v43 = 0xEE00656469576C61;
  }

  if (v39 <= 4)
  {
    v41 = 0x6D696E694D616364;
    v42 = v43;
  }

  v44 = 0x4D646E417370616DLL;
  v45 = 0xEC00000061696465;
  if (v39 != 1)
  {
    v44 = 0xD000000000000010;
    v45 = 0x80000001000BAEF0;
  }

  if (v39)
  {
    v40 = v45;
  }

  else
  {
    v44 = 1701736302;
  }

  if (v39 <= 2)
  {
    v46 = v44;
  }

  else
  {
    v46 = v41;
  }

  if (v39 <= 2)
  {
    v47 = v40;
  }

  else
  {
    v47 = v42;
  }

  if (v46 == 0x6D696E694D616364 && v47 == 0xEA00000000006C61)
  {
    goto LABEL_29;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {
    v124 = 1;
    goto LABEL_33;
  }

  if (v39 <= 2)
  {
    v117 = 0x4D646E417370616DLL;
    v118 = 0xEC00000061696465;
    if (v39 != 1)
    {
      v117 = 0xD000000000000010;
      v118 = 0x80000001000BAEF0;
    }

    v116 = v39 ? v117 : 1701736302;
    v115 = v39 ? v118 : 0xE400000000000000;
  }

  else if (v39 > 4)
  {
    if (v39 == 5)
    {
      v116 = 0x756964654D616364;
      v115 = 0xE90000000000006DLL;
    }

    else
    {
      v115 = 0xE700000000000000;
      v116 = 0x6C6C6154616364;
    }
  }

  else
  {
    v115 = v39 == 3 ? 0xEA00000000006C61 : 0xEE00656469576C61;
    v116 = 0x6D696E694D616364;
  }

  if (v116 == 0x6D696E694D616364 && v115 == 0xEE00656469576C61)
  {
LABEL_29:
    v124 = 1;
  }

  else
  {
    v124 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_33:

  v49 = a1;
  if ((v148 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v50 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v145 + 8))(v21, v146);
    v49 = v153;
  }

  swift_getKeyPath();
  *&v153 = v49;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v51 = *(v49 + 17);

  v52 = 0xE400000000000000;
  v53 = 0x756964654D616364;
  v54 = 0xE90000000000006DLL;
  if (v51 != 5)
  {
    v53 = 0x6C6C6154616364;
    v54 = 0xE700000000000000;
  }

  v55 = 0xEA00000000006C61;
  if (v51 != 3)
  {
    v55 = 0xEE00656469576C61;
  }

  if (v51 <= 4)
  {
    v53 = 0x6D696E694D616364;
    v54 = v55;
  }

  v56 = 0x4D646E417370616DLL;
  v57 = 0xEC00000061696465;
  if (v51 != 1)
  {
    v56 = 0xD000000000000010;
    v57 = 0x80000001000BAEF0;
  }

  if (v51)
  {
    v52 = v57;
  }

  else
  {
    v56 = 1701736302;
  }

  if (v51 <= 2)
  {
    v58 = v56;
  }

  else
  {
    v58 = v53;
  }

  if (v51 <= 2)
  {
    v59 = v52;
  }

  else
  {
    v59 = v54;
  }

  if (v58 == 0x6D696E694D616364 && v59 == 0xEA00000000006C61)
  {
    goto LABEL_56;
  }

  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v60)
  {
    goto LABEL_58;
  }

  if (v51 <= 2)
  {
    v120 = 0x4D646E417370616DLL;
    v121 = 0xEC00000061696465;
    if (v51 != 1)
    {
      v120 = 0xD000000000000010;
      v121 = 0x80000001000BAEF0;
    }

    v38 = v51 ? v120 : 1701736302;
    v119 = v51 ? v121 : 0xE400000000000000;
  }

  else if (v51 > 4)
  {
    if (v51 == 5)
    {
      v38 = 0x756964654D616364;
      v119 = 0xE90000000000006DLL;
    }

    else
    {
      v119 = 0xE700000000000000;
      v38 = 0x6C6C6154616364;
    }
  }

  else
  {
    v119 = v51 == 3 ? 0xEA00000000006C61 : 0xEE00656469576C61;
  }

  if (v38 == 0x6D696E694D616364 && v119 == 0xEE00656469576C61)
  {
LABEL_56:

LABEL_58:

    v61 = a1;
    if ((v148 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v62 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v145 + 8))(v21, v146);
      v61 = v153;
    }

    swift_getKeyPath();
    *&v153 = v61;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    goto LABEL_61;
  }

  v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v122)
  {
    goto LABEL_58;
  }

LABEL_61:

  v63 = a1;
  if ((v148 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v64 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v145 + 8))(v21, v146);
    v63 = v153;
  }

  swift_getKeyPath();
  *&v153 = v63;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v151[54] = v156;
  *&v151[70] = v157;
  *&v151[86] = v158;
  *&v151[102] = v159;
  *&v151[6] = v153;
  *&v151[22] = v154;
  v152 = 1;
  v65 = v124 & 1;
  v66 = v134;
  v67 = &v134[*(v144 + 36)];
  *&v151[38] = v155;
  v68 = *(type metadata accessor for RoundedRectangle() + 20);
  v69 = enum case for RoundedCornerStyle.continuous(_:);
  v70 = type metadata accessor for RoundedCornerStyle();
  (*(*(v70 - 8) + 104))(&v67[v68], v69, v70);
  __asm { FMOV            V0.2D, #6.0 }

  *v67 = _Q0;
  *&v67[*(sub_10000368C(&qword_1000EBB38, &qword_1000B4B80) + 36)] = 256;
  *(v66 + 82) = *&v151[64];
  v76 = *&v151[96];
  *(v66 + 98) = *&v151[80];
  *(v66 + 114) = v76;
  v77 = *&v151[16];
  *(v66 + 18) = *v151;
  *(v66 + 34) = v77;
  v78 = *&v151[48];
  *(v66 + 50) = *&v151[32];
  *v66 = v125;
  *(v66 + 8) = 0;
  *(v66 + 16) = 1;
  *(v66 + 17) = v65;
  *(v66 + 128) = *&v151[110];
  *(v66 + 66) = v78;
  *(v66 + 136) = 0;

  v79 = a1;
  if ((v148 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v80 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v145 + 8))(v21, v146);
    v79 = v149;
  }

  swift_getKeyPath();
  v149 = v79;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v81 = *(v79 + 17);

  if ((v81 - 3) >= 4)
  {
    sub_10000368C(&qword_1000EE2B0, &qword_1000B88F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B5700;
    v96 = static Axis.Set.horizontal.getter();
    *(inited + 32) = v96;
    v97 = static Axis.Set.vertical.getter();
    *(inited + 33) = v97;
    Axis.Set.init(rawValue:)();
    Axis.Set.init(rawValue:)();
    v98 = Axis.Set.init(rawValue:)();
    v99 = v144;
    if (v98 != v96)
    {
      Axis.Set.init(rawValue:)();
    }

    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v97)
    {
      Axis.Set.init(rawValue:)();
    }

    v100 = swift_allocObject();
    *(v100 + 16) = a1;
    *(v100 + 24) = v148 & 1;

    static Alignment.center.getter();
    v101 = sub_100079A20();
    v102 = v128;
    View.containerRelativeFrame(_:alignment:_:)();

    v103 = v133;
    v104 = v139;
    (*(v133 + 16))(v138, v102, v139);
    swift_storeEnumTagMultiPayload();
    sub_100079C1C();
    v149 = v99;
    v150 = v101;
    swift_getOpaqueTypeConformance2();
    v105 = v136;
    _ConditionalContent<>.init(storage:)();
    (*(v103 + 8))(v102, v104);
  }

  else
  {

    v82 = a1;
    v83 = v144;
    if ((v148 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v84 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v145 + 8))(v21, v146);
      v82 = v149;
    }

    swift_getKeyPath();
    v149 = v82;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v85 = *(v82 + 16);

    if (v85 == 1)
    {
      v86 = static Alignment.center.getter();
      v88 = v87;
      sub_1000794E4(a1, v148 & 1, &v149);
      v89 = v149;
      v90 = v150;
      v91 = v126;
      sub_1000077CC(v66, v126, &qword_1000EE2A0, &qword_1000B8888);
      v92 = &v91[*(v130 + 36)];
      *v92 = v89;
      v92[1] = v90;
      v92[2] = v86;
      v92[3] = v88;
      sub_1000077CC(v91, v131, &qword_1000EE288, &qword_1000B8870);
      swift_storeEnumTagMultiPayload();
      sub_100079C4C();
      v93 = sub_100079A20();
      v149 = v83;
      v150 = v93;
      swift_getOpaqueTypeConformance2();
      v94 = v132;
      _ConditionalContent<>.init(storage:)();
      sub_100007834(v91, &qword_1000EE288, &qword_1000B8870);
    }

    else
    {
      v106 = static Axis.Set.vertical.getter();
      Axis.Set.init(rawValue:)();
      Axis.Set.init(rawValue:)();
      if (Axis.Set.init(rawValue:)() != v106)
      {
        Axis.Set.init(rawValue:)();
      }

      v107 = swift_allocObject();
      *(v107 + 16) = a1;
      *(v107 + 24) = v148 & 1;

      static Alignment.center.getter();
      v108 = sub_100079A20();
      v109 = v127;
      v110 = v144;
      View.containerRelativeFrame(_:alignment:_:)();

      v111 = v133;
      v112 = v139;
      (*(v133 + 16))(v131, v109, v139);
      swift_storeEnumTagMultiPayload();
      sub_100079C4C();
      v149 = v110;
      v150 = v108;
      swift_getOpaqueTypeConformance2();
      v94 = v132;
      _ConditionalContent<>.init(storage:)();
      v113 = v109;
      v83 = v110;
      (*(v111 + 8))(v113, v112);
    }

    sub_1000077CC(v94, v138, &qword_1000EE290, &qword_1000B8878);
    swift_storeEnumTagMultiPayload();
    sub_100079C1C();
    v114 = sub_100079A20();
    v149 = v83;
    v150 = v114;
    swift_getOpaqueTypeConformance2();
    v105 = v136;
    _ConditionalContent<>.init(storage:)();
    sub_100007834(v94, &qword_1000EE290, &qword_1000B8878);
  }

  sub_1000077CC(v105, v141, &qword_1000EE298, &qword_1000B8880);
  swift_storeEnumTagMultiPayload();
  sub_100079D04();
  sub_100079D58(&qword_1000EE318, &qword_1000EE298, &qword_1000B8880, sub_100079C1C);
  _ConditionalContent<>.init(storage:)();
  sub_100007834(v105, &qword_1000EE298, &qword_1000B8880);
  return sub_100007834(v66, &qword_1000EE2A0, &qword_1000B8888);
}

uint64_t sub_10007930C(char a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Axis.rawValue.getter();
  result = Axis.rawValue.getter();
  if (v9 == result)
  {

    if ((a3 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v11 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v8, v5);
      a2 = v13;
    }

    swift_getKeyPath();
    v13 = a2;
    sub_100007530();
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_1000794E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (**a3)()@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v20;
  }

  swift_getKeyPath();
  v20 = a1;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(a1 + 48);

  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v18 = *(v17 + 40);
    v15 = v18;
    swift_unknownObjectRelease();
    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);

    v14 = *(v13 + 40);
    v15 = v14;

    if (v14)
    {
LABEL_8:
      result = swift_allocObject();
      *(result + 16) = v15;
      v16 = sub_100079E78;
LABEL_12:
      *a3 = v16;
      a3[1] = result;
      return result;
    }

LABEL_11:
    v16 = 0;
    result = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_10007975C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = a1;
  __asm { FMOV            V0.2D, #-3.0 }

  *(a2 + 8) = _Q0;
  *(a2 + 24) = v10;
  *(a2 + 40) = v11;
  *(a2 + 56) = v12;

  return a1;
}

double sub_100079810(double a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    a3 = v15;
  }

  swift_getKeyPath();
  v15 = a3;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(a3 + 17);

  return dbl_1000B5A60[(v12 - 1) < 2] * a1;
}

uint64_t sub_1000799D8()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_100079A20()
{
  result = qword_1000EE2B8;
  if (!qword_1000EE2B8)
  {
    sub_100005780(&qword_1000EE2A0, &qword_1000B8888);
    sub_100079AD8();
    sub_100005870(&qword_1000EBB48, &qword_1000EBB38, &qword_1000B4B80, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2B8);
  }

  return result;
}

unint64_t sub_100079AD8()
{
  result = qword_1000EE2C0;
  if (!qword_1000EE2C0)
  {
    sub_100005780(&qword_1000EE2C8, &qword_1000B88F8);
    sub_100079B90();
    sub_100005870(&qword_1000EE2E0, &qword_1000EE2E8, &qword_1000B8910, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2C0);
  }

  return result;
}

unint64_t sub_100079B90()
{
  result = qword_1000EE2D0;
  if (!qword_1000EE2D0)
  {
    sub_100005780(&qword_1000EE2D8, &unk_1000B8900);
    sub_10005BE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2D0);
  }

  return result;
}

unint64_t sub_100079C4C()
{
  result = qword_1000EE2F8;
  if (!qword_1000EE2F8)
  {
    sub_100005780(&qword_1000EE288, &qword_1000B8870);
    sub_100079A20();
    sub_100005870(&qword_1000EE300, &qword_1000EE308, &qword_1000B8918, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE2F8);
  }

  return result;
}

unint64_t sub_100079D04()
{
  result = qword_1000EE310;
  if (!qword_1000EE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE310);
  }

  return result;
}

uint64_t sub_100079D58(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    a4();
    sub_100005780(&qword_1000EE2A0, &qword_1000B8888);
    sub_100079A20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100079E40()
{

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_100079E80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100079E94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100079EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100079F30()
{
  result = qword_1000EE320;
  if (!qword_1000EE320)
  {
    sub_100005780(&qword_1000EE328, &qword_1000B8A20);
    sub_100079D04();
    sub_100079D58(&qword_1000EE318, &qword_1000EE298, &qword_1000B8880, sub_100079C1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE320);
  }

  return result;
}

uint64_t sub_10007A004@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v27 = a1;
  v30 = a4;
  v5 = sub_10000368C(&qword_1000EE330, &qword_1000B8A78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25[-v7];
  v9 = sub_10000368C(&qword_1000EE338, &qword_1000B8A80);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25[-v11];
  v13 = sub_10000368C(&qword_1000EE340, &qword_1000B8A88);
  v14 = *(v13 - 8);
  v28 = v13;
  v29 = v14;
  __chkstk_darwin(v13);
  v16 = &v25[-v15];
  v17 = kISImageDescriptorCarNotification;
  v18 = objc_opt_self();
  v19 = a3;
  v20 = [v18 imageDescriptorNamed:v17];
  AsyncIconLayer.init<>(icon:descriptor:)();
  sub_10007A374(v27, v26 & 1);
  v21 = sub_100005870(&qword_1000EE348, &qword_1000EE330, &qword_1000B8A78, &protocol conformance descriptor for AsyncIconLayer<A>);
  View.iconLayerSize(_:)();
  (*(v6 + 8))(v8, v5);
  v31 = v5;
  v32 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.increaseLegibility(_:)();
  (*(v10 + 8))(v12, v9);
  v31 = v9;
  v32 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v23 = v28;
  View.useIconGlassColorScheme(_:)();
  return (*(v29 + 8))(v16, v23);
}

double sub_10007A374(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v8 = v16;
  }

  swift_getKeyPath();
  v16 = v8;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v8 + 17);

  if ((v10 - 3) < 2)
  {
    return 40.0;
  }

  if (v10 != 5)
  {
    return 60.0;
  }

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v16;
  }

  swift_getKeyPath();
  v16 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(a1 + 16);

  result = 60.0;
  if (v13)
  {
    return 40.0;
  }

  return result;
}

uint64_t sub_10007A620()
{
  sub_100005780(&qword_1000EE340, &qword_1000B8A88);
  sub_100005780(&qword_1000EE338, &qword_1000B8A80);
  sub_100005780(&qword_1000EE330, &qword_1000B8A78);
  sub_100005870(&qword_1000EE348, &qword_1000EE330, &qword_1000B8A78, &protocol conformance descriptor for AsyncIconLayer<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for RadioSettingsViewController(uint64_t a1)
{
  result = qword_1000EE350;
  if (!qword_1000EE350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10007A7C8(char *a1, uint64_t a2)
{
  v5 = sub_10000368C(&qword_1000EE3A0, &qword_1000B8AB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v64 - v6;
  v8 = type metadata accessor for CAFUIAutomakerSettingsSection();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*&a1[OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus] currentSession];
  if (!v11)
  {
    goto LABEL_60;
  }

  v12 = v11;
  v13 = [*&a1[OBJC_IVAR____TtC5Media15RadioCarManager_carManager] currentCar];
  if (!v13)
  {
    goto LABEL_60;
  }

  v14 = v13;
  v67 = v7;
  v68 = v2;
  v65 = a1;
  type metadata accessor for CAFUIRequestContentManager();
  swift_allocObject();
  v66 = v12;
  v73 = CAFUIRequestContentManager.init(session:)();
  v15 = CAFUISettingsCache.categorySettings(for:)();
  v16 = CAFUISettingsCache.categorySettings(for:)();
  v17 = *(v16 + 16);
  v18 = _swiftEmptyArrayStorage;
  v69 = v14;
  v70 = v15;
  v71 = a2;
  v72 = v16;
  if (v17)
  {
    v19 = v16;
    v77 = _swiftEmptyArrayStorage;
    sub_1000A2D98(0, v17, 0);
    v18 = v77;
    v20 = v75 + 16;
    v21 = *(v75 + 16);
    v22 = v19 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v74 = *(v75 + 72);
    v75 = v21;
    v23 = (v20 - 8);
    do
    {
      v24 = v76;
      (v75)(v10, v22, v76);
      v25 = CAFUIAutomakerSettingsSection.settings.getter();
      (*v23)(v10, v24);
      v77 = v18;
      v27 = v18[2];
      v26 = v18[3];
      if (v27 >= v26 >> 1)
      {
        sub_1000A2D98((v26 > 1), v27 + 1, 1);
        v18 = v77;
      }

      v18[2] = v27 + 1;
      v18[v27 + 4] = v25;
      v22 += v74;
      --v17;
    }

    while (v17);
    v15 = v70;
    a2 = v71;
    v14 = v69;
  }

  v28 = sub_10007B28C(v18);
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = __CocoaSet.count.getter();
  }

  else
  {
    v29 = *(v28 + 16);
  }

  v30 = v72;

  if (!v29 || (type metadata accessor for CAFUITileViewController(), static CAFUITileViewController.collapseCategoryThreshold.getter() >= v29))
  {
  }

  v31 = _swiftEmptyArrayStorage;
  if (!*(v30 + 16))
  {
    v32 = _swiftEmptyArrayStorage;
    if (!*(v15 + 16))
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v32 = sub_1000A2934(0, 1, 1, _swiftEmptyArrayStorage);
  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_1000A2934((v33 > 1), v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  v32[v34 + 32] = 1;
  v14 = v69;
  if (*(v15 + 16))
  {
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1000A2934(0, *(v32 + 2) + 1, 1, v32);
    }

    v36 = *(v32 + 2);
    v35 = *(v32 + 3);
    if (v36 >= v35 >> 1)
    {
      v32 = sub_1000A2934((v35 > 1), v36 + 1, 1, v32);
    }

    *(v32 + 2) = v36 + 1;
    v32[v36 + 32] = 3;
  }

LABEL_26:
  v37 = type metadata accessor for CAFUISettingsCache();
  v38 = *(v37 - 8);
  v39 = v67;
  (*(v38 + 16))(v67, a2, v37);
  v75 = v38;
  v76 = v37;
  (*(v38 + 56))(v39, 0, 1, v37);
  v40 = qword_1000EAD50;
  v41 = v66;

  if (v40 != -1)
  {
    swift_once();
  }

  v42 = CAFUITileViewController.init(carSession:prominentCategories:listItems:settingsSections:settingsCache:assetManager:requestContentManager:preventVolumeNotification:)();
  v43 = v42;
  v77 = _swiftEmptyArrayStorage;
  if (v29)
  {
    v44 = [v14 audioSettings];
    v45 = CAFUITileViewController.createAudioListItem(audioSettings:)();

    if (v45)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v31 = v77;
    }

    else
    {
      v31 = _swiftEmptyArrayStorage;
    }

    v52 = v71;
    type metadata accessor for CAFUITileViewController();
    if (static CAFUITileViewController.collapseCategoryThreshold.getter() < v29 && CAFUITileViewController.createRadioListItem()())
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v31 = v77;
      if (v77 >> 62)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_50:
    if (v31 >> 62)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

  v46 = [v42 navigationItem];
  v47 = CAFUITileViewController.createAudioLogoButtonIfApplicable()();
  [v46 setRightBarButtonItem:v47];

  v48 = [v14 audioSettings];
  if (!v48)
  {
    v52 = v71;
    goto LABEL_50;
  }

  v49 = v48;
  if (CAFUITileViewController.createSoundItem(audioSettings:)())
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v31 = v77;
  }

  v50 = [v49 volumes];
  sub_100005A50(0, &qword_1000EEBF0, CAFVolume_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v51 = CAFUITileViewController.createVolumeListItem(volumes:)();

  if (v51)
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v52 = v71;
    if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v31 = v77;
  }

  else
  {

    v52 = v71;
  }

  v14 = v69;
  if (v31 >> 62)
  {
LABEL_57:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_51:
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_52:
    dispatch thunk of CAFUITileViewController.setListItems(_:)();
  }

LABEL_53:
  v53 = objc_opt_self();
  v54 = v43;
  v55 = [v53 mainBundle];
  v78._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0x45535F414944454DLL;
  v56._object = 0xEE0053474E495454;
  v57.value._countAndFlagsBits = 0x6F69646152;
  v57.value._object = 0xE500000000000000;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v78._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v57, v55, v58, v78);

  String.init(format:_:)();

  v59 = String._bridgeToObjectiveC()();

  [v54 setTitle:v59];

  v60 = [v54 tabBarItem];
  if (v60)
  {

    v61 = String._bridgeToObjectiveC()();
    v62 = [objc_opt_self() systemImageNamed:v61];

    [v60 setImage:v62];

    (*(v75 + 8))(v52, v76);
    return v54;
  }

  __break(1u);
LABEL_60:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10007B28C(uint64_t a1)
{
  sub_100005A50(0, &qword_1000EE3A8, CAFAutomakerSetting_ptr);
  sub_10007D76C();
  result = Set.init(minimumCapacity:)();
  v6 = 0;
  v8 = result;
LABEL_12:
  while (1)
  {
    v4 = *(a1 + 16);
    if (v6 == v4)
    {
      break;
    }

    if (v6 >= v4)
    {
      goto LABEL_19;
    }

    v5 = *(a1 + 32 + 8 * v6);

    ++v6;
    if (v5)
    {
      v3 = 0;
      if (v5 >> 62)
      {
        goto LABEL_9;
      }

      while (1)
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3 == result)
        {
          break;
        }

        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            result = *(v5 + 8 * v3 + 32);
          }

          if (__OFADD__(v3, 1))
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
            return result;
          }

          sub_10007B7BC(&v7, result, &qword_1000EE3A8, CAFAutomakerSetting_ptr, &qword_1000EE3B8, &qword_1000B8AB8);

          ++v3;
          if (!(v5 >> 62))
          {
            break;
          }

LABEL_9:
          result = _CocoaArrayWrapper.endIndex.getter();
          if (v3 == result)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  return v8;
}

id sub_10007B470()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioSettingsViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007B4B0(_BYTE *a1, Swift::Int a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = sub_10002F414(*(*v2 + 40), a2);
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 > 3)
      {
        if (*(*(v4 + 48) + v7) > 5u)
        {
          if (v8 == 6)
          {
            v13 = 0xD000000000000021;
            v14 = 0x80000001000BAE60;
          }

          else
          {
            v13 = 0xD00000000000001ELL;
            v14 = 0x80000001000BAE90;
          }
        }

        else
        {
          v13 = v8 == 4 ? 0x657A696C616E6966 : 0xD00000000000001FLL;
          v14 = v8 == 4 ? 0xE900000000000064 : 0x80000001000BAE40;
        }
      }

      else
      {
        if (v8 == 2)
        {
          v9 = 0x656E656373;
        }

        else
        {
          v9 = 0x64657265646E6572;
        }

        if (v8 == 2)
        {
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = 0xE800000000000000;
        }

        v11 = 0xE90000000000006ELL;
        if (*(*(v4 + 48) + v7))
        {
          v12 = 0x4F746E6174736E69;
        }

        else
        {
          v12 = 0x646568636E75616CLL;
        }

        if (!*(*(v4 + 48) + v7))
        {
          v11 = 0xE800000000000000;
        }

        v13 = *(*(v4 + 48) + v7) <= 1u ? v12 : v9;
        v14 = *(*(v4 + 48) + v7) <= 1u ? v11 : v10;
      }

      v15 = 0xD000000000000021;
      if (v3 != 6)
      {
        v15 = 0xD00000000000001ELL;
      }

      v16 = 0x80000001000BAE90;
      if (v3 == 6)
      {
        v16 = 0x80000001000BAE60;
      }

      v17 = 0x657A696C616E6966;
      if (v3 != 4)
      {
        v17 = 0xD00000000000001FLL;
      }

      v18 = 0x80000001000BAE40;
      if (v3 == 4)
      {
        v18 = 0xE900000000000064;
      }

      if (v3 <= 5u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (v3 == 2)
      {
        v19 = 0x656E656373;
      }

      else
      {
        v19 = 0x64657265646E6572;
      }

      if (v3 == 2)
      {
        v20 = 0xE500000000000000;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      v21 = 0xE90000000000006ELL;
      if (v3)
      {
        v22 = 0x4F746E6174736E69;
      }

      else
      {
        v22 = 0x646568636E75616CLL;
      }

      if (!v3)
      {
        v21 = 0xE800000000000000;
      }

      if (v3 <= 1u)
      {
        v19 = v22;
        v20 = v21;
      }

      v23 = v3 <= 3u ? v19 : v15;
      v24 = v3 <= 3u ? v20 : v16;
      if (v13 == v23 && v14 == v24)
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_66;
      }

      v7 = (v7 + 1) & v30;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

LABEL_66:
    result = 0;
    LOBYTE(v3) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_64:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v28;
    sub_10007C718(v3, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v31;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_10007B7BC(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
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

      sub_100005A50(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
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
        v27 = sub_10007BC70(v15, result + 1, a5, a6, a3, a4);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_10007C474(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_10007C694(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_100005A50(0, a3, a4);
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
      v37 = *v11;
      v26 = a2;
      sub_10007CA54(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_10007BA30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000368C(&qword_1000EE3C0, &qword_1000B8AC0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for TerrestrialRadioStation(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10007C1E4(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        swift_beginAccess();

        String.hash(into:)();

        result = Hasher._finalize()();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10007BC70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_10000368C(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100005A50(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_10007C474(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

Swift::Int sub_10007BE70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000368C(&qword_1000EE3C8, &qword_1000B8AC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_10007C1E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000368C(&qword_1000EE3C0, &qword_1000B8AC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      swift_beginAccess();

      String.hash(into:)();

      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_10007C474(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10000368C(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_10007C694(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

Swift::Int sub_10007C718(Swift::Int result, unint64_t a2, char a3)
{
  v36 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_69;
  }

  if (a3)
  {
    sub_10007BE70(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_10007CBE4();
      goto LABEL_69;
    }

    sub_10007CFB4(v5 + 1);
  }

  v7 = *v3;
  result = sub_10002F414(*(*v3 + 40), v36);
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v35 = ~v8;
    v9 = 0x64657265646E6572;
    v10 = 0x646568636E75616CLL;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 3)
      {
        if (*(*(v7 + 48) + a2) > 5u)
        {
          if (v11 == 6)
          {
            v16 = 0xD000000000000021;
            v17 = 0x80000001000BAE60;
          }

          else
          {
            v16 = 0xD00000000000001ELL;
            v17 = 0x80000001000BAE90;
          }
        }

        else
        {
          v16 = v11 == 4 ? 0x657A696C616E6966 : 0xD00000000000001FLL;
          v17 = v11 == 4 ? 0xE900000000000064 : 0x80000001000BAE40;
        }
      }

      else
      {
        if (v11 == 2)
        {
          v12 = 0x656E656373;
        }

        else
        {
          v12 = v9;
        }

        if (v11 == 2)
        {
          v13 = 0xE500000000000000;
        }

        else
        {
          v13 = 0xE800000000000000;
        }

        v14 = 0xE90000000000006ELL;
        if (*(*(v7 + 48) + a2))
        {
          v15 = 0x4F746E6174736E69;
        }

        else
        {
          v15 = v10;
        }

        if (!*(*(v7 + 48) + a2))
        {
          v14 = 0xE800000000000000;
        }

        v16 = *(*(v7 + 48) + a2) <= 1u ? v15 : v12;
        v17 = *(*(v7 + 48) + a2) <= 1u ? v14 : v13;
      }

      v18 = 0xD000000000000021;
      if (v36 != 6)
      {
        v18 = 0xD00000000000001ELL;
      }

      v19 = 0x80000001000BAE90;
      if (v36 == 6)
      {
        v19 = 0x80000001000BAE60;
      }

      v20 = 0x657A696C616E6966;
      if (v36 != 4)
      {
        v20 = 0xD00000000000001FLL;
      }

      v21 = 0x80000001000BAE40;
      if (v36 == 4)
      {
        v21 = 0xE900000000000064;
      }

      if (v36 <= 5u)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = v9;
      if (v36 == 2)
      {
        v23 = 0x656E656373;
      }

      else
      {
        v23 = v9;
      }

      if (v36 == 2)
      {
        v24 = 0xE500000000000000;
      }

      else
      {
        v24 = 0xE800000000000000;
      }

      v25 = 0xE90000000000006ELL;
      v26 = v10;
      if (v36)
      {
        v10 = 0x4F746E6174736E69;
      }

      else
      {
        v25 = 0xE800000000000000;
      }

      if (v36 <= 1u)
      {
        v23 = v10;
        v24 = v25;
      }

      v27 = v36 <= 3u ? v23 : v18;
      v28 = v36 <= 3u ? v24 : v19;
      if (v16 == v27 && v17 == v28)
      {
        goto LABEL_72;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_73;
      }

      a2 = (a2 + 1) & v35;
      v9 = v22;
      v10 = v26;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_69:
  v30 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + a2) = v36;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return result;
  }

  __break(1u);
LABEL_72:

LABEL_73:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10007CA54(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_10007C474(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10007CE74(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_10007D560(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = NSObject._rawHashValue(seed:)(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_100005A50(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_10007CBE4()
{
  v1 = v0;
  sub_10000368C(&qword_1000EE3C8, &qword_1000B8AC8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

void *sub_10007CD24()
{
  v1 = v0;
  sub_10000368C(&qword_1000EE3C0, &qword_1000B8AC0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

id sub_10007CE74(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000368C(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
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
        result = v20;
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

  return result;
}

Swift::Int sub_10007CFB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000368C(&qword_1000EE3C8, &qword_1000B8AC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_10007D2F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000368C(&qword_1000EE3C0, &qword_1000B8AC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      swift_beginAccess();

      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

Swift::Int sub_10007D560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10000368C(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v3;
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(v18);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

        v4 = v27;
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

  return result;
}

unint64_t sub_10007D76C()
{
  result = qword_1000EE3B0;
  if (!qword_1000EE3B0)
  {
    sub_100005A50(255, &qword_1000EE3A8, CAFAutomakerSetting_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE3B0);
  }

  return result;
}

uint64_t sub_10007D7D4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_58:
    _CocoaArrayWrapper.endIndex.getter();
  }

  type metadata accessor for TerrestrialRadioStation(0);
  sub_10007DD50();
  v3 = Set.init(minimumCapacity:)();
  if (!v2)
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return v3;
    }

LABEL_6:
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = v1 & 0xFFFFFFFFFFFFFF8;
    v34 = v4;
    v1 += 32;
    v35 = v1;
    v36 = v6;
    while (1)
    {
LABEL_7:
      v2 = v3 & 0xC000000000000001;
      v8 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 < 0)
      {
        v8 = v3;
      }

      v37 = v8;
      while (1)
      {
        if (v6)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = __OFADD__(v5++, 1);
          if (v10)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_56;
          }

          v9 = *(v1 + 8 * v5);

          v10 = __OFADD__(v5++, 1);
          if (v10)
          {
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }
        }

        if (!v2)
        {
          v12 = v7;
          Hasher.init(_seed:)();
          v13 = (v9 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
          swift_beginAccess();

          String.hash(into:)();

          v14 = Hasher._finalize()();
          v15 = ~(-1 << *(v3 + 32));
          for (i = v14 & v15; ((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v15)
          {
            v17 = (*(*(v3 + 48) + 8 * i) + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
            swift_beginAccess();
            v18 = *v17 == *v13 && v17[1] == v13[1];
            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v6 = v36;
              v7 = v12;
              v4 = v34;
              v1 = v35;
              goto LABEL_11;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v2 = *(v3 + 16);
          v20 = *(v3 + 24);

          if (v20 > v2)
          {
            v7 = v12;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10007CD24();
            }

            v6 = v36;
LABEL_46:
            v1 = v35;
LABEL_47:
            *(v3 + ((i >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << i;
            *(*(v3 + 48) + 8 * i) = v9;
            v27 = *(v3 + 16);
            v10 = __OFADD__(v27, 1);
            v28 = v27 + 1;
            if (v10)
            {
              goto LABEL_57;
            }

            *(v3 + 16) = v28;

            v4 = v34;
            if (v5 != v34)
            {
              goto LABEL_7;
            }

            return v3;
          }

          v21 = v2 + 1;
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_10007C1E4(v21);
          }

          else
          {
            sub_10007D2F8(v21);
          }

          Hasher.init(_seed:)();

          String.hash(into:)();

          v22 = Hasher._finalize()();
          v2 = v3 + 56;
          v23 = -1 << *(v3 + 32);
          i = v22 & ~v23;
          if (((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
          {
            v6 = v36;
            v7 = v12;
            goto LABEL_46;
          }

          v24 = ~v23;
          v7 = v12;
          v1 = v35;
          while (1)
          {
            v25 = (*(*(v3 + 48) + 8 * i) + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
            swift_beginAccess();
            v26 = *v25 == *v13 && v25[1] == v13[1];
            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            i = (i + 1) & v24;
            if (((*(v2 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
            {
              v6 = v36;
              goto LABEL_47;
            }
          }

LABEL_60:
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v11 = __CocoaSet.member(for:)();

        if (!v11)
        {
          break;
        }

        swift_dynamicCast();

LABEL_11:
        if (v5 == v4)
        {
          return v3;
        }
      }

      v29 = __CocoaSet.count.getter();
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_60;
      }

      v30 = sub_10007BA30(v37, v29 + 1);
      v31 = v30[2];
      if (v30[3] <= v31)
      {
        sub_10007C1E4(v31 + 1);
      }

      Hasher.init(_seed:)();
      swift_beginAccess();

      String.hash(into:)();

      Hasher._finalize()();
      v32 = _HashTable.nextHole(atOrAfter:)();
      *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v32;
      *(v30[6] + 8 * v32) = v9;
      ++v30[2];

      v3 = v30;
      v6 = v36;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (v4)
  {
    goto LABEL_6;
  }

  return v3;
}

unint64_t sub_10007DD50()
{
  result = qword_1000EDFF8;
  if (!qword_1000EDFF8)
  {
    type metadata accessor for TerrestrialRadioStation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDFF8);
  }

  return result;
}

uint64_t sub_10007DDA8()
{
  _StringGuts.grow(_:)(49);

  strcpy(v13, "Image: size {");
  HIWORD(v13[1]) = -4864;
  [v0 size];
  v1._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  [v0 size];
  v3._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x656C616373202C7DLL;
  v4._object = 0xE900000000000020;
  String.append(_:)(v4);
  [v0 scale];
  v5._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v5);

  v6._object = 0x80000001000BC760;
  v6._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v6);
  v7 = [v0 isSymbolImage];
  v8 = v7 == 0;
  if (v7)
  {
    v9 = 5457241;
  }

  else
  {
    v9 = 20302;
  }

  if (v8)
  {
    v10 = 0xE200000000000000;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  return v13[0];
}

unint64_t sub_10007DF30(unsigned int a1, uint64_t a2, unint64_t a3)
{
  sub_10001A6C8(46, 0xE100000000000000, a2, a3);
  if (v6)
  {

    result = sub_10007F024(a2, a3);
    if ((result & 0x100000000) == 0)
    {
      v8 = result * a1;
      if ((v8 & 0xFFFFFFFF00000000) == 0)
      {
        v9 = 0;
LABEL_76:
        LOBYTE(v44) = v9;
        return v8 | (v9 << 32);
      }

      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_79:
        v41 = result;
        v13 = _StringObject.sharedUTF8.getter();
        result = v41;
LABEL_13:
        v14 = *v13;
        if (v14 == 43)
        {
          if (v11 < 1)
          {
            goto LABEL_82;
          }

          v23 = v11 - 1;
          if (v11 == 1)
          {
            goto LABEL_65;
          }

          LODWORD(v16) = 0;
          if (v13)
          {
            v24 = v13 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_65;
              }

              v26 = 10 * v16;
              if ((v26 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_65;
              }

              LODWORD(v16) = v26 + v25;
              if (__CFADD__(v26, v25))
              {
                goto LABEL_65;
              }

              ++v24;
              if (!--v23)
              {
                goto LABEL_64;
              }
            }
          }
        }

        else if (v14 == 45)
        {
          if (v11 < 1)
          {
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v15 = v11 - 1;
          if (v11 == 1)
          {
            goto LABEL_65;
          }

          LODWORD(v16) = 0;
          if (v13)
          {
            v17 = v13 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v16;
              if ((v19 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v16) = v19 - v18;
              if (v19 < v18)
              {
                break;
              }

              ++v17;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }

LABEL_65:
            LODWORD(v16) = 0;
            LOBYTE(v13) = 1;
          }
        }

        else
        {
          if (!v11)
          {
            goto LABEL_65;
          }

          LODWORD(v16) = 0;
          if (v13)
          {
            while (1)
            {
              v30 = *v13 - 48;
              if (v30 > 9)
              {
                goto LABEL_65;
              }

              v31 = 10 * v16;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_65;
              }

              LODWORD(v16) = v31 + v30;
              if (__CFADD__(v31, v30))
              {
                goto LABEL_65;
              }

              ++v13;
              if (!--v11)
              {
                goto LABEL_64;
              }
            }
          }
        }

LABEL_66:
        v43 = v13;
        v35 = v13;

        if (v35)
        {
          break;
        }

LABEL_74:
        v8 = v16 * a1;
        if ((v8 & 0xFFFFFFFF00000000) == 0)
        {
          v9 = 0;
          LODWORD(v8) = v8 / 0xA;
          goto LABEL_76;
        }
      }
    }

LABEL_67:
    if (qword_1000EACF8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006928(v36, qword_1000F3BB8);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_100043AF0(a2, a3, &v44);
      _os_log_impl(&_mh_execute_header, v37, v38, "Could not convert string to frequency: %s", v39, 0xCu);
      sub_100006960(v40);
    }

    LODWORD(v8) = 0;
    v9 = 1;
    goto LABEL_76;
  }

  v44 = a2;
  v45 = a3;

  String.remove(at:)();

  result = a3;
  v10 = HIBYTE(a3) & 0xF;
  v11 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v45) & 0xF;
  }

  else
  {
    v12 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    goto LABEL_67;
  }

  if ((v45 & 0x1000000000000000) != 0)
  {
    v16 = sub_10007F300(v44, v45, 10);

    if ((v16 & 0x100000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_67;
  }

  if ((v45 & 0x2000000000000000) == 0)
  {
    if ((v44 & 0x1000000000000000) == 0)
    {
      goto LABEL_79;
    }

    v13 = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_13;
  }

  v42[0] = v44;
  v42[1] = a3 & 0xFFFFFFFFFFFFFFLL;
  if (v44 != 43)
  {
    if (v44 != 45)
    {
      if (v10)
      {
        LODWORD(v16) = 0;
        v32 = v42;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v16;
          if ((v34 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v16) = v34 + v33;
          if (__CFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v10)
          {
LABEL_64:
            LOBYTE(v13) = 0;
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v10)
    {
      v13 = (v10 - 1);
      if (v10 != 1)
      {
        LODWORD(v16) = 0;
        v20 = v42 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v16;
          if ((v22 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v16) = v22 - v21;
          if (v22 < v21)
          {
            break;
          }

          ++v20;
          if (!--v13)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_81;
  }

  if (v10)
  {
    v13 = (v10 - 1);
    if (v10 != 1)
    {
      LODWORD(v16) = 0;
      v27 = v42 + 1;
      while (1)
      {
        v28 = *v27 - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * v16;
        if ((v29 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v16) = v29 + v28;
        if (__CFADD__(v29, v28))
        {
          break;
        }

        ++v27;
        if (!--v13)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_83:
  __break(1u);
  return result;
}

id sub_10007E3C8(double a1, double a2)
{
  v5 = round(a1 * 0.7);
  v6 = round(a2 * 0.7);
  [v2 size];
  v8 = v5 / fmax(v7, 1.0);
  [v2 size];
  v10 = v6 / v9;
  if (v9 < 1.0)
  {
    v10 = v6;
  }

  if (v10 < v8)
  {
    v8 = v10;
  }

  [v2 size];
  v12 = v8 * v11;
  [v2 size];
  *v22 = v12;
  *&v22[1] = v8 * v13;
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = v22;
  *(v15 + 40) = v2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10007FD04;
  *(v16 + 24) = v15;
  v21[4] = sub_10007FD20;
  v21[5] = v16;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_10007E700;
  v21[3] = &unk_1000E19C0;
  v17 = _Block_copy(v21);
  v18 = v2;

  v19 = [v14 imageWithActions:v17];

  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    return v19;
  }

  __break(1u);
  return result;
}

id sub_10007E5F4(void *a1, double *a2, void *a3, double a4, double a5)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = (a4 - *a2) * 0.5;
  v12 = [objc_opt_self() whiteColor];
  v13 = [v12 colorWithAlphaComponent:0.07];

  [v13 setFill];
  [a1 fillRect:{0.0, 0.0, a4, a5}];

  return [a3 drawInRect:{v11, (a5 - v10) * 0.5, v9, v10}];
}

void sub_10007E700(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_10007E74C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v67 = a2;
  v7 = type metadata accessor for IndexSet.Index();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a3;
  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() imageNamed:v10];

  v12 = [objc_allocWithZone(UIImageView) initWithImage:v11];
  v13 = v12;
  v14 = [v13 layer];
  v15 = kCAFilterPlusL;
  v16 = objc_allocWithZone(CAFilter);
  v63 = v15;
  v17 = [v16 initWithType:v15];
  [v14 setCompositingFilter:v17];

  v18 = [v13 layer];
  [v18 setAllowsGroupBlending:0];

  [v13 setContentMode:1];
  v19 = &off_1000E7000;
  LODWORD(v20) = 1148846080;
  [v13 setContentHuggingPriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v13 setContentCompressionResistancePriority:0 forAxis:v21];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ((a3 & 1) == 0)
  {
    [v13 setAlpha:0.3];
  }

  v22 = type metadata accessor for IndexSet();
  v23 = sub_10007FC74();
  v24 = dispatch thunk of Collection.count.getter();
  v25 = _swiftEmptyArrayStorage;
  v68 = a1;
  if (v24)
  {
    v26 = v24;
    v72 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v64 = v23;
    dispatch thunk of Collection.startIndex.getter();
    if ((v26 & 0x8000000000000000) == 0)
    {
      v59 = v4;
      v60 = v13;
      v66 = objc_opt_self();
      v27 = 0;
      v65 = UIFontSystemFontDesignRounded;
      while (1)
      {
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_37:
          sub_100005A50(0, &qword_1000ED650, UIView_ptr);

          v48 = _bridgeCocoaArray<A>(_:)();

          goto LABEL_28;
        }

        v69 = (v27 + 1);
        v13 = v26;
        v29 = v22;
        v30 = dispatch thunk of Collection.subscript.read();
        v32 = *v31;
        v30(v71, 0);
        v33 = [objc_allocWithZone(UILabel) init];
        v71[0] = v32;
        dispatch thunk of CustomStringConvertible.description.getter();
        v34 = String._bridgeToObjectiveC()();

        [v33 setText:v34];

        v35 = [v66 systemFontOfSize:v65 weight:12.0 design:UIFontWeightMedium];
        if (!v35)
        {
          goto LABEL_42;
        }

        v36 = v35;
        [v33 setFont:v35];

        v37 = v32 >= 0 && v32 == v67;
        v38 = v37;
        if (!v37)
        {
          break;
        }

        if ((v70 & 1) == 0)
        {
          goto LABEL_20;
        }

        sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
        v39 = static UIColor.cafui_HDOrangeColor.getter();
LABEL_23:
        [v33 setTextColor:v39];

        if ((v38 | v70))
        {
          v43 = v33;
          v44 = [v43 layer];
          v45 = objc_allocWithZone(CAFilter);
          v46 = [v45 initWithType:v63];
          [v44 setCompositingFilter:v46];

          v47 = [v43 layer];
          [v47 setAllowsGroupBlending:0];
        }

        LODWORD(v42) = 1148846080;
        [v33 setContentCompressionResistancePriority:0 forAxis:v42];
        LODWORD(v28) = 1148846080;
        [v33 setContentHuggingPriority:0 forAxis:v28];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v22 = v29;
        dispatch thunk of Collection.formIndex(after:)();
        ++v27;
        v26 = v13;
        if (v69 == v13)
        {
          (*(v61 + 8))(v9, v62);
          v25 = v72;
          v13 = v60;
          goto LABEL_26;
        }
      }

      if (v70)
      {
LABEL_20:
        v40 = [objc_opt_self() labelColor];
        v41 = [v40 colorWithAlphaComponent:0.6];
      }

      else
      {
        v40 = [objc_opt_self() whiteColor];
        v41 = [v40 colorWithAlphaComponent:0.3];
      }

      v39 = v41;

      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_26:
  v9 = v22;
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v19 = swift_allocObject();
  *(v19 + 1) = xmmword_1000B4FC0;
  v19[4] = v13;
  if (v25 >> 62)
  {
    goto LABEL_37;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_100005A50(0, &qword_1000ED650, UIView_ptr);
  v48 = v25;
LABEL_28:

  v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v71[0] = v19;
  sub_10009F018(v48);
  sub_100005A50(0, &qword_1000ED650, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v51 = [v49 initWithArrangedSubviews:isa];

  v52 = v51;
  [v52 setAxis:0];
  [v52 setDistribution:2];
  [v52 setAlignment:3];
  v53 = [v52 arrangedSubviews];
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v54 >> 62))
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
      goto LABEL_30;
    }

LABEL_39:

    (*(*(v9 - 1) + 8))(v68, v9);
    return;
  }

  v55 = _CocoaArrayWrapper.endIndex.getter();
  if (!v55)
  {
    goto LABEL_39;
  }

LABEL_30:
  if (v55 >= 1)
  {
    for (i = 0; i != v55; ++i)
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v57 = *(v54 + 8 * i + 32);
      }

      v58 = v57;
      [v52 setCustomSpacing:v57 afterView:4.0];
    }

    goto LABEL_39;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

unint64_t sub_10007F024(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_10007F300(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10007F300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10007F87C(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10007F87C(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10007F8FC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10007F8FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100043F30(v9, 0), v12 = sub_10007FA54(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10007FA54(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100076920(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100076920(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10007FC74()
{
  result = qword_1000EE3D8;
  if (!qword_1000EE3D8)
  {
    type metadata accessor for IndexSet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE3D8);
  }

  return result;
}

uint64_t sub_10007FCCC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007FD48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for RadioStationDataSource(uint64_t a1)
{
  result = qword_1000EE400;
  if (!qword_1000EE400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_10007FE10(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + qword_1000EE3F0) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  type metadata accessor for RadioStationDataSourceStorage(0);
  swift_allocObject();
  v5 = sub_10002D108(a1);
  *(v2 + qword_1000EE3E8) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100081308;
  *(v6 + 24) = v5;
  swift_retain_n();
  v7 = a2;
  v8 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  swift_unknownObjectWeakAssign();
  type metadata accessor for RadioStationCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = v8;
  v11 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  [v7 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v11];

  type metadata accessor for RadioCategoryFilterCell();
  v12 = swift_getObjCClassFromMetadata();
  v13 = NSStringFromClass(v12);
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  [v7 registerClass:v12 forCellWithReuseIdentifier:v13];

  type metadata accessor for RadioGenreCell();
  v14 = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(v14);
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [v7 registerClass:v14 forCellWithReuseIdentifier:v15];

  type metadata accessor for RadioSectionHeaderView();
  v16 = swift_getObjCClassFromMetadata();
  v17 = UICollectionElementKindSectionHeader;
  v18 = NSStringFromClass(v16);
  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  [v7 registerClass:v16 forSupplementaryViewOfKind:v17 withReuseIdentifier:v18];

  [v7 setDataSource:v10];

  return v10;
}

Class sub_10008017C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_100081224();

  if (v6)
  {
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

void sub_100080200(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(v3 + qword_1000EE3E8) + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_28;
  }

  v19 = qword_1000EE3E8;

  v6 = 0;
  v7 = (v4 + 48);
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v9 = *v7;
    if (*v7)
    {
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = *(v7 - 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        break;
      }
    }

LABEL_4:
    ++v6;
    v7 += 4;
    if (v5 == v6)
    {

      v12 = *(*(v3 + v19) + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections);
      if (!*(v12 + 16))
      {
        goto LABEL_28;
      }

      v13 = *(v12 + 16);

      v14 = 0;
      v15 = (v12 + 48);
      while (v14 < *(v12 + 16))
      {
        v16 = *v15;
        if (!*v15)
        {
          goto LABEL_21;
        }

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = *(v15 - 1) & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {

          String.subscript.getter();
          Character.uppercased()();
        }

        else
        {
LABEL_21:
        }

        sub_100020F58();
        v18 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        if (v18 != -1)
        {
          ++v14;
          v15 += 4;
          if (v13 != v14)
          {
            continue;
          }
        }

        goto LABEL_28;
      }

      goto LABEL_31;
    }
  }

  String.subscript.getter();
  v11 = Character.uppercased()();

  if (v11._countAndFlagsBits != a2 || v11._object != a3)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_26;
    }

    goto LABEL_4;
  }

LABEL_26:

LABEL_28:
  IndexPath.init(item:section:)();
}

Class sub_10008050C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a3;
  v14 = a1;
  sub_100080200(v14, v10, v12);

  v15.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v6);

  return v15.super.isa;
}

uint64_t sub_100080644(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_10000368C(&qword_1000ED440, &qword_1000B8B40);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for UIListContentConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v13 == a3)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v31 = 0xD000000000000010;
      v32 = 0x80000001000BC8C0;
      v16._countAndFlagsBits = a2;
      v16._object = a3;
      String.append(_:)(v16);
      goto LABEL_13;
    }
  }

  v30 = v9;
  v17 = String._bridgeToObjectiveC()();
  type metadata accessor for RadioSectionHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v21 = [a1 dequeueReusableSupplementaryViewOfKind:v17 withReuseIdentifier:v19 forIndexPath:isa];

  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;

    v24 = IndexPath.section.getter();
    sub_100025278(v24);

    static UIListContentConfiguration.header()();

    UIListContentConfiguration.text.setter();
    v25 = v30;
    v33 = v30;
    v34 = &protocol witness table for UIListContentConfiguration;
    v26 = sub_10005AD6C(&v31);
    (*(v10 + 16))(v26, v12, v25);
    UICollectionViewCell.contentConfiguration.setter();
    static UIBackgroundConfiguration.clear()();
    v27 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
    UICollectionViewCell.backgroundConfiguration.setter();

    (*(v10 + 8))(v12, v25);
    return v23;
  }

LABEL_13:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100080A30(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  v16 = sub_100080644(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

void sub_100080B70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000368C(&qword_1000EC548, &qword_1000B5820);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v9 = qword_1000EE3F0;
  v10 = *(v2 + qword_1000EE3E8);
  v11 = *(v10 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) != 5 && (*(v10 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) - 1 > 1 || *(v10 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8));
  v12 = *(v2 + qword_1000EE3F0);
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v13 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
  (*(v6 + 8))(v8, v5);
  if (v13 != v11)
  {
    if (v12)
    {
      goto LABEL_12;
    }

LABEL_15:
    v36 = *(v3 + v9);
    if (!v36)
    {
      return;
    }

    v22 = v36;
    if (a2)
    {
      v34.super.isa = String._bridgeToObjectiveC()();
    }

    else
    {
      v34.super.isa = 0;
    }

    [v22 setText:v34.super.isa];
    goto LABEL_21;
  }

  if ((a2 != 0) == (v12 != 0))
  {
    goto LABEL_15;
  }

  if (!a2)
  {
LABEL_12:
    v35 = *(v3 + v9);
    if (v35)
    {
      [v35 removeFromSuperview];
      v34.super.isa = *(v3 + v9);
    }

    else
    {
      v34.super.isa = 0;
    }

    *(v3 + v9) = 0;
    goto LABEL_22;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v16 = [objc_allocWithZone(UILabel) init];
  [v16 setTextAlignment:1];
  v17 = String._bridgeToObjectiveC()();
  [v16 setText:v17];

  v18 = v16;
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [objc_opt_self() secondaryLabelColor];
  [v18 setTextColor:v19];

  v20 = [objc_opt_self() boldSystemFontOfSize:18.0];
  [v18 setFont:v20];

  [v18 setNumberOfLines:0];
  v21 = *(v3 + v9);
  *(v3 + v9) = v18;
  v22 = v18;

  v23 = v15;
  [v23 addSubview:v22];
  v24 = objc_opt_self();
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000B6BD0;
  v26 = [v22 centerYAnchor];
  v27 = [v23 safeAreaLayoutGuide];
  v28 = [v27 centerYAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  *(v25 + 32) = v29;
  v30 = [v22 centerXAnchor];

  v31 = [v23 safeAreaLayoutGuide];
  v32 = [v31 centerXAnchor];

  v33 = [v30 constraintEqualToAnchor:v32];
  *(v25 + 40) = v33;
  sub_100075A4C();
  v34.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints:v34.super.isa];

LABEL_21:
LABEL_22:
}

uint64_t sub_10008103C()
{
  swift_unknownObjectWeakDestroy();

  return swift_unknownObjectWeakDestroy();
}

id sub_10008109C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioStationDataSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000810D4(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();

  return swift_unknownObjectWeakDestroy();
}

void sub_100081140(uint64_t a1, uint64_t a2, uint64_t a3)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_100081180(unint64_t a1)
{
  v2 = *(v1 + qword_1000EE3E8);
  if (*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) - 1 <= 1 && !*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8))
  {
    return 1;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections);
  if (*(v3 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return _CocoaArrayWrapper.endIndex.getter();
  }

  v4 = v3 + 32 * a1;
  if (*(v4 + 56))
  {
    return 1;
  }

  v6 = *(v4 + 32);
  if (!(v6 >> 62))
  {
    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100081224()
{
  v1 = *(v0 + qword_1000EE3E8);
  if (*(*(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections) + 16) >= 2uLL)
  {
    v2 = *(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy);
    if ((v2 - 1) > 1)
    {
      if (v2 != 3)
      {
        goto LABEL_4;
      }
    }

    else if (*(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8))
    {
LABEL_4:
      v3 = [objc_opt_self() currentCollation];
      v4 = [v3 sectionIndexTitles];

      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      return v5;
    }
  }

  return 0;
}

uint64_t sub_10008130C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100081374(unint64_t a1)
{
  v3 = [v1 media];
  if (!v3)
  {
    return;
  }

  v114 = v3;
  if (!sub_100082858(a1) || (v4 = [v1 media]) == 0)
  {
LABEL_26:

    return;
  }

  v5 = v4;
  v6 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceIdentifier);
  swift_beginAccess();

  v7 = String._bridgeToObjectiveC()();

  v8 = [v1 mediaSourceWithIdentifier:v7];

  if (!v8)
  {
    v24 = [v5 mediaSources];
    if (v24)
    {
      v25 = v24;
      sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v111 = v6;
      if (v26 >> 62)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
      swift_beginAccess();
      if (v27)
      {
        v29 = 0;
        v6 = (v26 & 0xC000000000000001);
        while (1)
        {
          if (v6)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v29 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_69;
            }

            v30 = *(v26 + 8 * v29 + 32);
          }

          v8 = v30;
          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if ([v30 mediaSourceSemanticType] == *(a1 + v28))
          {

            v6 = v111;
            goto LABEL_5;
          }

          ++v29;
          if (v31 == v27)
          {
            goto LABEL_42;
          }
        }

LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        swift_once();
LABEL_54:
        v64 = type metadata accessor for Logger();
        sub_100006928(v64, qword_1000F3B70);

        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v115[0] = swift_slowAlloc();
          *v67 = 136446466;
          v69 = *v6;
          v68 = v6[1];

          v70 = sub_100043AF0(v69, v68, v115);

          *(v67 + 4) = v70;
          *(v67 + 12) = 2082;
          swift_beginAccess();
          v71 = CAFMediaSourceSemanticType.description.getter();
          v73 = sub_100043AF0(v71, v72, v115);

          *(v67 + 14) = v73;
          _os_log_impl(&_mh_execute_header, v65, v66, "Unable to match a media source with identifier %{public}s of type %{public}s", v67, 0x16u);
          swift_arrayDestroy();
        }

        return;
      }

LABEL_42:
    }

    else
    {
    }

    return;
  }

LABEL_5:

  if (![v8 hasMediaItems] || (v9 = objc_msgSend(v8, "mediaItems")) == 0)
  {
LABEL_44:
    if ([v8 hasCurrentFrequency])
    {
      v32 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
      swift_beginAccess();
      if (*(a1 + v32))
      {
        if (qword_1000EACE0 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_100006928(v33, qword_1000F3B70);

        v34 = v8;
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          *v37 = 136446978;
          v38 = [v34 identifier];
          v39 = a1;
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          v43 = sub_100043AF0(v40, v42, &v116);

          *(v37 + 4) = v43;
          *(v37 + 12) = 2082;
          sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
          sub_1000845A8();
          v44 = CAFObserved<>.observable.getter();
          v45 = sub_100083338(v44);
          v47 = v46;

          v48 = sub_100043AF0(v45, v47, &v116);

          *(v37 + 14) = v48;
          *(v37 + 22) = 2082;
          v49 = TerrestrialRadioStation.debugDisplayName.getter();
          v51 = sub_100043AF0(v49, v50, &v116);

          *(v37 + 24) = v51;
          *(v37 + 32) = 2082;
          aBlock = TerrestrialRadioStation.formattedFrequency.getter();
          v118 = v52;
          v53._countAndFlagsBits = 32;
          v53._object = 0xE100000000000000;
          String.append(_:)(v53);
          v54 = (v39 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName);
          swift_beginAccess();
          v55 = *v54;
          v56 = v54[1];

          v57._countAndFlagsBits = v55;
          v57._object = v56;
          String.append(_:)(v57);

          v58 = sub_100043AF0(aBlock, v118, &v116);

          *(v37 + 34) = v58;
          a1 = v39;
          _os_log_impl(&_mh_execute_header, v35, v36, "Source %{public}s %{public}s tuning to station %{public}s with frequency %{public}s", v37, 0x2Au);
          swift_arrayDestroy();
        }

        v59 = *(a1 + v32);
        v60 = [v34 identifier];
        if (!v60)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = String._bridgeToObjectiveC()();
        }

        v61 = swift_allocObject();
        *(v61 + 16) = a1;
        *(v61 + 24) = v34;
        v121 = sub_100084684;
        v122 = v61;
        aBlock = _NSConcreteStackBlock;
        v118 = 1107296256;
        v119 = sub_10009959C;
        v120 = &unk_1000E1A38;
        v62 = _Block_copy(&aBlock);

        v63 = v34;

        [v114 tuneToFrequency:v59 inSourceWithIdentifier:v60 completion:v62];
        _Block_release(v62);

        return;
      }
    }

    if (qword_1000EACE0 == -1)
    {
      goto LABEL_54;
    }

    goto LABEL_70;
  }

  v10 = v9;
  v11 = [v9 mediaItems];

  sub_100005A50(0, &qword_1000EDFE8, CAFMediaItem_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v110 = v6;
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v109 = a1;
  v112 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  if (!v13)
  {
LABEL_43:

    a1 = v109;
    v6 = v110;
    goto LABEL_44;
  }

  v14 = 0;
  v6 = (v12 & 0xC000000000000001);
  while (1)
  {
    if (v6)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_68;
      }

      v15 = *(v12 + 8 * v14 + 32);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_25;
      }
    }

    v113 = v15;
    v17 = [v15 identifier];
    if (!v17)
    {
      goto LABEL_11;
    }

    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (!v21)
    {
      goto LABEL_11;
    }

    if (v19 == *v112 && v21 == v112[1])
    {
      break;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_62;
    }

LABEL_11:

    ++v14;
    if (v16 == v13)
    {
      goto LABEL_43;
    }
  }

LABEL_62:

  v74 = v109;
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_100006928(v75, qword_1000F3B70);

  v76 = v8;
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v123[0] = swift_slowAlloc();
    *v79 = 136316162;
    v80 = [v76 identifier];
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    v84 = sub_100043AF0(v81, v83, v123);

    *(v79 + 4) = v84;
    *(v79 + 12) = 2080;
    sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
    sub_1000845A8();
    v85 = CAFObserved<>.observable.getter();
    v86 = sub_100083338(v85);
    v88 = v87;

    v89 = sub_100043AF0(v86, v88, v123);

    *(v79 + 14) = v89;
    *(v79 + 22) = 2080;
    v90 = TerrestrialRadioStation.debugDisplayName.getter();
    v92 = sub_100043AF0(v90, v91, v123);

    *(v79 + 24) = v92;
    *(v79 + 32) = 2080;
    v93 = *v112;
    v94 = v112[1];

    v95 = sub_100043AF0(v93, v94, v123);

    *(v79 + 34) = v95;
    *(v79 + 42) = 2080;
    aBlock = TerrestrialRadioStation.formattedFrequency.getter();
    v118 = v96;
    v97._countAndFlagsBits = 32;
    v97._object = 0xE100000000000000;
    String.append(_:)(v97);
    v98 = (v109 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName);
    swift_beginAccess();
    v99 = *v98;
    v100 = v98[1];

    v101._countAndFlagsBits = v99;
    v101._object = v100;
    String.append(_:)(v101);

    v102 = sub_100043AF0(aBlock, v118, v123);

    *(v79 + 44) = v102;
    _os_log_impl(&_mh_execute_header, v77, v78, "Source %s %s tuning to station %s with identifier %s freq. %s", v79, 0x34u);
    swift_arrayDestroy();

    v74 = v109;
  }

  v103 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v104 = *(v74 + v103);
  v105 = swift_allocObject();
  *(v105 + 16) = v74;
  *(v105 + 24) = v76;
  v121 = sub_100084610;
  v122 = v105;
  aBlock = _NSConcreteStackBlock;
  v118 = 1107296256;
  v119 = sub_10009959C;
  v120 = &unk_1000E1A88;
  v106 = _Block_copy(&aBlock);

  v107 = v76;
  v108 = v104;

  [v114 tuneToMediaItem:v108 inSource:v107 completion:v106];
  _Block_release(v106);
}

uint64_t sub_1000820E4(unsigned __int8 a1)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v1 = NSStringFromMediaCategory();
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

LABEL_8:
    v11 = [objc_opt_self() mainBundle];
    v19._object = 0xE000000000000000;
    v12._object = 0x80000001000BB7B0;
    v12._countAndFlagsBits = 0xD000000000000012;
    v13.value._countAndFlagsBits = 0x6F69646152;
    v13.value._object = 0xE500000000000000;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

    goto LABEL_9;
  }

  strcpy(&v17, "MediaCategory");
  HIWORD(v17._object) = -4864;
  v7._countAndFlagsBits = v3;
  v7._object = v5;
  String.append(_:)(v7);

  v8 = [objc_opt_self() mainBundle];
  v18._object = 0xE000000000000000;
  v9.value._countAndFlagsBits = 0x6F69646152;
  v9.value._object = 0xE500000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v9, v8, v10, v18);

LABEL_9:
  v15 = String.init(format:_:)();

  return v15;
}

void sub_1000822A8(unsigned int a1, uint64_t a2)
{
  v3 = a2;
  v5 = [v2 media];
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = v5;
  v7 = [v5 mediaSources];
  if (!v7)
  {

LABEL_27:
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006928(v39, qword_1000F3B70);
    osloga = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(osloga, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      v43 = CAFMediaSourceSemanticType.description.getter();
      v45 = sub_100043AF0(v43, v44, aBlock);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, osloga, v40, "Unable to match a media source with semantic type %s", v41, 0xCu);
      sub_100006960(v42);
    }

    else
    {
    }

    return;
  }

  v8 = v7;
  sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  oslog = a1;
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_5:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ([v12 mediaSourceSemanticType] == v3)
    {
      break;
    }

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_26;
    }
  }

  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006928(v15, qword_1000F3B70);
  v16 = v13;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = &off_1000E7000;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v20 = 136315906;
    v21 = [v16 identifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_100043AF0(v22, v24, aBlock);

    *(v20 + 4) = v25;
    LOBYTE(v22) = v18;
    *(v20 + 12) = 2080;
    sub_1000845A8();
    v26 = CAFObserved<>.observable.getter();
    v27 = sub_100083338(v26);
    v29 = v28;

    v30 = sub_100043AF0(v27, v29, aBlock);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2080;
    v31 = CAFMediaSourceSemanticType.description.getter();
    v33 = sub_100043AF0(v31, v32, aBlock);
    v19 = &off_1000E7000;

    *(v20 + 24) = v33;
    *(v20 + 32) = 1024;
    v34 = oslog;
    *(v20 + 34) = oslog;
    _os_log_impl(&_mh_execute_header, v17, v22, "Tuning to source %s %s with type %s freq. %u", v20, 0x26u);
    swift_arrayDestroy();
  }

  else
  {

    v34 = oslog;
  }

  v35 = [v16 v19[233]];
  if (!v35)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = String._bridgeToObjectiveC()();
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v16;
  aBlock[4] = sub_100084664;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009959C;
  aBlock[3] = &unk_1000E1AD8;
  v37 = _Block_copy(aBlock);
  v38 = v16;

  [v6 tuneToFrequency:v34 inSourceWithIdentifier:v35 completion:v37];
  _Block_release(v37);
}

BOOL sub_100082858(unint64_t a1)
{
  v3 = [v1 media];
  if (!v3)
  {
    goto LABEL_44;
  }

  v4 = v3;
  swift_beginAccess();

  v5 = String._bridgeToObjectiveC()();

  v6 = [v1 mediaSourceWithIdentifier:v5];

  if (!v6)
  {
    v20 = [v4 mediaSources];
    if (v20)
    {
      v21 = v20;
      sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v22 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
      v25 = a1;
      swift_beginAccess();
      if (v23)
      {
        a1 = 0;
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a1 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v26 = *(v22 + 8 * a1 + 32);
          }

          v6 = v26;
          v27 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            break;
          }

          if ([v26 mediaSourceSemanticType] == *(v25 + v24))
          {

            a1 = v25;
            goto LABEL_3;
          }

          ++a1;
          if (v27 == v23)
          {
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        swift_once();
LABEL_45:
        v45 = type metadata accessor for Logger();
        sub_100006928(v45, qword_1000F3B70);

        v9 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v9, v46))
        {
          v47 = swift_slowAlloc();
          v67[0] = swift_slowAlloc();
          *v47 = 136446722;
          v48 = a1;
          v49 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
          swift_beginAccess();
          v51 = *v49;
          v50 = v49[1];

          v52 = sub_100043AF0(v51, v50, v67);

          *(v47 + 4) = v52;
          *(v47 + 12) = 2082;
          v53 = (v48 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceIdentifier);
          swift_beginAccess();
          v55 = *v53;
          v54 = v53[1];

          v56 = sub_100043AF0(v55, v54, v67);

          *(v47 + 14) = v56;
          *(v47 + 22) = 2082;
          swift_beginAccess();
          v57 = CAFMediaSourceSemanticType.description.getter();
          v59 = sub_100043AF0(v57, v58, v67);

          *(v47 + 24) = v59;
          _os_log_impl(&_mh_execute_header, v9, v46, "Unable to match a source for station %{public}s in source with identifier %{public}s of type %{public}s", v47, 0x20u);
          swift_arrayDestroy();
        }

        goto LABEL_47;
      }

LABEL_42:

      a1 = v25;
    }

LABEL_44:
    if (qword_1000EACE0 == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_60;
  }

LABEL_3:

  if ([v6 disabled])
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006928(v7, qword_1000F3B70);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v11 = 136446466;
      v12 = [v8 identifier];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100043AF0(v13, v15, v66);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2082;
      [v8 mediaSourceSemanticType];
      v17 = CAFMediaSourceSemanticType.description.getter();
      v19 = sub_100043AF0(v17, v18, v66);

      *(v11 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Source is disabled with identifier %{public}s, type %{public}s", v11, 0x16u);
      swift_arrayDestroy();

      return 0;
    }

LABEL_47:
    return 0;
  }

  if ([v6 hasMediaItems])
  {
    v28 = [v6 mediaItems];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 mediaItems];

      sub_100005A50(0, &qword_1000EDFE8, CAFMediaItem_ptr);
      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v31 >> 62)
      {
        v32 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v63 = a1;
      v64 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      if (v32)
      {
        a1 = 0;
        v65 = v31 & 0xC000000000000001;
        v33 = v31 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v65)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a1 >= *(v33 + 16))
            {
              goto LABEL_59;
            }

            v34 = *(v31 + 8 * a1 + 32);
          }

          v35 = v34;
          v36 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_58;
          }

          v37 = [v34 identifier];
          if (v37)
          {
            v38 = v31;
            v39 = v37;
            v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v41;

            v31 = v38;
            if (v42)
            {
              if (v40 == *v64 && v42 == v64[1])
              {

                goto LABEL_55;
              }

              v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v44)
              {

LABEL_55:

                return 1;
              }
            }
          }

          ++a1;
        }

        while (v36 != v32);
      }

      a1 = v63;
    }
  }

  v61 = [v6 hasCurrentFrequency];

  if (!v61)
  {
    return 0;
  }

  v62 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
  swift_beginAccess();
  return *(a1 + v62) != 0;
}