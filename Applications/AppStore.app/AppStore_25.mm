uint64_t getEnumTagSinglePayload for AppPromotionFormattedDateView.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppPromotionFormattedDateView.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002C726C()
{
  result = qword_10097E620;
  if (!qword_10097E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097E620);
  }

  return result;
}

double sub_1002C72C0()
{
  swift_beginAccess();

  return result;
}

double sub_1002C7308(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double sub_1002C73C8(void *a1, double a2, double a3)
{
  sub_1002C65CC(v12);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B0B70;
  *(v6 + 32) = a1;
  v7 = a1;
  v8 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_1002C91F4(v8, v12, a2, a3);
  v10 = v9;

  sub_1001A927C(v12);
  return v10;
}

Swift::Int sub_1002C74A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10002849C(&qword_100972698, &qword_1007B32E0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1002C7698(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
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
    return _swiftEmptySetSingleton;
  }

  return v2;
}

void sub_1002C7698(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002849C(&qword_100972698, &qword_1007B32E0);
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
      v18 = NSObject._rawHashValue(seed:)(*(v5 + 40));
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1002C78C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002849C(&qword_1009726A8, &qword_1007B32F0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
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
      v3 = v28;
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
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1002C7B3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002849C(&qword_1009726F0, &qword_1007B3310);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
      v18 = static Hasher._hash(seed:_:)();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1002C7D60(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for AdamId();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10002849C(&qword_100982C40, qword_1007B3330);
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
      sub_1002C979C(&qword_100970CD8, &protocol conformance descriptor for AdamId);
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

unint64_t sub_1002C80A8(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_1002C812C()
{
  v1 = v0;
  sub_10002849C(&qword_100972698, &qword_1007B32E0);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

void sub_1002C827C()
{
  v1 = v0;
  sub_10002849C(&qword_1009726A8, &qword_1007B32F0);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

void sub_1002C83CC()
{
  v1 = v0;
  sub_10002849C(&qword_1009726F0, &qword_1007B3310);
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

void sub_1002C850C()
{
  v1 = v0;
  v2 = type metadata accessor for AdamId();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100982C40, qword_1007B3330);
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

uint64_t sub_1002C8744(void *a1)
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

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_1002C8B5C(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1002C812C();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1002C8CC4(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1002C88DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AdamId();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1002C979C(&qword_100970CD8, &protocol conformance descriptor for AdamId);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1002C979C(&qword_100972728, &protocol conformance descriptor for AdamId);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1002C850C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1002C8E64(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1002C8B5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1002C74A8(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
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

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_1002C8CC4(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002C8CC4(unint64_t a1)
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
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_1002C8E64(int64_t a1)
{
  v3 = type metadata accessor for AdamId();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v34 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v15 = v11;
      v16 = *(v13 + 56);
      v35 = v13;
      v32 = (v13 - 8);
      v33 = v14;
      do
      {
        v17 = v8;
        v18 = v16;
        v19 = v16 * v10;
        v33(v6, *(v7 + 48) + v16 * v10, v3);
        v20 = v7;
        v21 = v15;
        v22 = v20;
        sub_1002C979C(&qword_100970CD8, &protocol conformance descriptor for AdamId);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v15 = v21;
        if (a1 >= v34)
        {
          if (v24 >= v34 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v18;
            v28 = v18 * a1;
            if (v18 * a1 < v19 || v27 + v18 * a1 >= (v27 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v34 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v18;
LABEL_5:
        v10 = (v10 + 1) & v15;
        v8 = v17;
      }

      while (((*(v17 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

double sub_1002C915C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  sub_1002C65CC(v11);
  sub_1004383F0(a1, v11, a2, a3);
  v9 = v8;
  sub_1001A927C(v11);
  return v9;
}

void sub_1002C91F4(uint64_t a1, void *a2, double a3, double a4)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[17];
  v10[0] = a2[18];
  v10[1] = v9;
  CGSize.subtracting(insets:)();
  sub_10005FC74((a2 + 26), &v11);
  if (v12)
  {
    sub_100005A38(&v11, v13);
    sub_10002A400(v13, v13[3]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(a2 + 10, a2[13]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      (*(v6 + 8))(v8, v5);
    }

    sub_100007000(v13);
  }

  else
  {
    sub_10002B894(&v11, &qword_100975610, &qword_1007B5690);
  }

  sub_10002A400(a2 + 21, a2[24]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400(a2, a2[3]);
  AnyDimension.topMargin(from:in:)();
  sub_10002A400(a2 + 5, a2[8]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v6 + 8))(v8, v5);
  CGSize.adding(outsets:)();
}

void sub_1002C94F0()
{
  v1 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView);
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v3)
  {
    v4 = *(v0 + v1);
    if (v4)
    {
      swift_beginAccess();
      v5 = v4;
      v6 = v3;
      v7 = sub_1002C8744(v5);
      swift_endAccess();
    }

    else
    {
      v8 = v3;
    }

    v9 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v10 = *&v3[v9];
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = __CocoaSet.count.getter();

      if (v11)
      {
LABEL_10:

        return;
      }
    }

    else if (*(v10 + 16))
    {
      goto LABEL_10;
    }

    sub_10008058C();
    goto LABEL_10;
  }
}

void sub_1002C96C8()
{
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002C979C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AdamId();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1002C97E4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_reviewSummaryView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for ReviewSummaryView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ReviewSummaryCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v14 = [v12 contentView];
  [v14 addSubview:*&v12[OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_reviewSummaryView]];

  return v12;
}

id sub_1002C9BAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewSummaryCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ReviewSummaryCollectionViewCell(uint64_t a1)
{
  result = qword_10097E658;
  if (!qword_10097E658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C9D10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = *(v6 + OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_reviewSummaryView);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v14[4] = a5;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_100007A08;
    v14[3] = a6;
    v12 = _Block_copy(v14);
    v13 = v10;

    [a1 addAnimations:v12];
    _Block_release(v12);
  }
}

void *sub_1002C9E0C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_reviewSummaryView) + OBJC_IVAR____TtC8AppStore17ReviewSummaryView_previewContainer);
  v2 = v1;
  return v1;
}

void sub_1002C9E64()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "tintColorDidChange");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView];
  v3 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel;
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel);
  if (v4)
  {
    v5 = [v4 attributedText];
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + v3);
      if (v7)
      {
        v8 = v7;
        v9 = [v1 tintColor];
        if (v9)
        {
          v10 = v9;
          v11 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];
          v12 = [v6 length];
          v13 = swift_allocObject();
          *(v13 + 16) = v11;
          *(v13 + 24) = v10;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_1002CA5F4;
          *(v14 + 24) = v13;
          v18[4] = sub_1002CA5FC;
          v18[5] = v14;
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 1107296256;
          v18[2] = sub_1006607C0;
          v18[3] = &unk_1008BC890;
          v15 = _Block_copy(v18);
          v16 = v11;
          v17 = v10;

          [v6 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v12 usingBlock:{0x100000, v15}];

          _Block_release(v15);
          LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

          if ((v17 & 1) == 0)
          {
            [v8 setAttributedText:v16];

            goto LABEL_7;
          }

          __break(1u);
        }

        __break(1u);
        return;
      }

LABEL_7:
    }
  }
}

uint64_t type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell(uint64_t a1)
{
  result = qword_10097E690;
  if (!qword_10097E690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002CA1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView);
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v8, v4);
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v9, v5);
  type metadata accessor for ArtworkView();
  sub_10009A098();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void sub_1002CA2E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for InAppPurchaseTheme();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  sub_10002C0AC(a1, v29);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for InAppPurchaseLockup();
  if (swift_dynamicCast())
  {
    v27 = a2;
    v13 = v28;
    v14 = qword_10096E510;
    v15 = *(*&v3[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView);
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
    sub_1000056A8(v16, qword_1009D1F18);
    InAppPurchaseIconLayout.Metrics.mainIconSize.getter();
    v18 = v17;
    v20 = v19;
    v26 = [v3 backgroundColor];
    InAppPurchaseLockup.theme.getter();
    v21 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
    swift_beginAccess();
    (*(v7 + 24))(&v15[v21], v12, v6);
    swift_endAccess();
    v25 = *(v7 + 16);
    v25(v9, &v15[v21], v6);
    sub_1002EBEE4(v9);
    v22 = *(v7 + 8);
    v22(v9, v6);
    v22(v12, v6);
    v23 = v26;
    [v15 setBackgroundColor:v26];
    sub_1001BCDCC(v18, v20, v13, v15, v27);
    v25(v12, &v15[v21], v6);
    sub_1002EBEE4(v12);
    v22(v12, v6);
    [v15 setNeedsLayout];
  }
}

char *sub_1002CA604(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DirectionalTextAlignment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v38 = v4;
  v16 = &v4[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_currentState];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v16[40] = 1;
  if (qword_10096DF28 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  v18 = sub_1000056A8(v17, qword_1009D0CF8);
  v19 = *(v17 - 8);
  v35 = *(v19 + 16);
  v36 = v18;
  v35(v15, v18, v17);
  v34 = *(v19 + 56);
  v34(v15, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v33 = *(v10 + 104);
  v33(v12, enum case for DirectionalTextAlignment.none(_:), v9);
  v21 = type metadata accessor for DynamicTypeLabel();
  v22 = objc_allocWithZone(v21);
  v23 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v24 = v9;
  v25 = v38;
  *&v38[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_firstColumnLabel] = v23;
  v35(v15, v36, v17);
  v34(v15, 0, 1, v17);
  v33(v12, v20, v24);
  v26 = objc_allocWithZone(v21);
  *&v25[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_pinnedLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v25[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_columnWidth] = 0;
  *&v25[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_interColumnSpace] = 0;
  v39.receiver = v25;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_firstColumnLabel]];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_pinnedLabel]];

  return v31;
}

uint64_t sub_1002CAB10(uint64_t a1)
{
  v2 = type metadata accessor for PageGrid();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Shelf.ContentsMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for ProductReviewsMetadata();
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17 = *(v9 + 8);
  v17(v13, v8);
  if ((*(v5 + 88))(v7, v4) != enum case for Shelf.ContentsMetadata.productReviews(_:))
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 96))(v7, v4);
  v18 = *(v40 + 32);
  v33 = v14;
  v18(v16, v7, v14);
  v19 = v37;
  v20 = *(v37 + OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_firstColumnLabel);
  ProductReviewsMetadata.reviewSummaryTitle.getter();
  v21 = String._bridgeToObjectiveC()();

  [v20 setText:v21];

  v22 = *(v19 + OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_pinnedLabel);
  v23 = v34;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17(v23, v8);
  if (v41)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [v22 setText:v24];

  v26 = v36;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.columnWidth.getter();
  v28 = v27;
  v29 = v39;
  v30 = *(v38 + 8);
  v30(v26, v39);
  *(v19 + OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_columnWidth) = v28;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.interColumnSpace.getter();
  v32 = v31;
  v30(v26, v29);
  result = (*(v40 + 8))(v16, v33);
  *(v19 + OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_interColumnSpace) = v32;
  return result;
}

id sub_1002CAFC0()
{
  swift_getObjectType();
  if (v0[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_currentState + 40])
  {
    v1 = &v0[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_columnWidth];
  }

  else
  {
    v1 = &v0[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_currentState + 24];
  }

  v2 = *v1;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_firstColumnLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v3 measurementsWithFitting:v0 in:{v2, CGRectGetHeight(v26)}];
  v4 = [v0 traitCollection];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(using:relativeTo:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
  v13 = *&v0[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_pinnedLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  Width = CGRectGetWidth(v27);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v13 measurementsWithFitting:v0 in:{Width, CGRectGetHeight(v28)}];
  v15 = [v0 traitCollection];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(using:relativeTo:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  return [v13 setFrame:{v17, v19, v21, v23}];
}

id sub_1002CB2A8(void (*a1)(char *, char *, uint64_t))
{
  v58 = a1;
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v69 = *(v1 - 8);
  v70 = v1;
  __chkstk_darwin(v1);
  v67 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SpacerDimension();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v64 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v59 = &v52 - v6;
  v74 = type metadata accessor for LabelPlaceholder();
  v71 = *(v74 - 8);
  __chkstk_darwin(v74);
  v68 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v52 - v9;
  v10 = type metadata accessor for PageGrid();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DynamicTextAppearance();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  DynamicTextAppearance.init()();
  if (qword_10096DF28 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FontUseCase();
  sub_1000056A8(v21, qword_1009D0CF8);
  v57 = v20;
  DynamicTextAppearance.withFontUseCase(_:)();
  v22 = *(v15 + 8);
  v62 = v15 + 8;
  v63 = v22;
  v22(v17, v14);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v73 = v14;
  v53 = *(v11 + 8);
  v52 = v10;
  v53(v13, v10);
  ProductReviewsMetadata.reviewSummaryTitle.getter();
  v58 = *(v15 + 16);
  v58(v17, v20, v14);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v23 = ShelfLayoutContext.traitCollection.getter();
  v55 = type metadata accessor for TraitEnvironmentPlaceholder();
  v56 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v24 = swift_allocObject();
  v54 = xmmword_1007B0B70;
  *(v24 + 16) = xmmword_1007B0B70;
  *(v24 + 32) = v23;
  v25 = v23;
  v26 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v28 = v27;

  ShelfLayoutContext.contentPageGrid.getter();
  static CGFloat.allColumns.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v53(v13, v52);
  v29 = v59;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v30 = v61;
  ReadOnlyLens.subscript.getter();

  (*(v60 + 8))(v29, v30);
  v31 = v57;
  v58(v17, v57, v73);
  LabelPlaceholder.Options.init(rawValue:)();
  v32 = v68;
  LabelPlaceholder.init(_:with:where:)();
  v33 = ShelfLayoutContext.traitCollection.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = v54;
  *(v34 + 32) = v33;
  v35 = v33;
  v36 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  v37 = v74;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v39 = v38;

  if (v28 > v39)
  {
    v39 = v28;
  }

  v40 = v64;
  SpacerDimension.init(constant:)();
  ShelfLayoutContext.traitEnvironment.getter();
  v41 = v67;
  static Dimensions.defaultRoundingRule.getter();
  sub_10021CA28(v42);
  v43 = v66;
  AnyDimension.value(in:rounded:)();
  v45 = v44;
  swift_unknownObjectRelease();
  (*(v69 + 8))(v41, v70);
  (*(v65 + 8))(v40, v43);
  v46 = objc_opt_self();
  v47 = [v46 fractionalWidthDimension:1.0];
  v48 = [v46 absoluteDimension:v39 + v45];
  v49 = [objc_opt_self() sizeWithWidthDimension:v47 heightDimension:v48];

  v50 = *(v71 + 8);
  v50(v32, v37);
  v50(v72, v37);
  v63(v31, v73);
  return v49;
}

void sub_1002CBAC0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v57 - v7;
  v9 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v57 - v10;
  v12 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v57 - v13;
  v15 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v15 - 8);
  v64 = &v57 - v16;
  v17 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v17 - 8);
  v19 = &v57 - v18;
  v20 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v20 - 8);
  v65 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = InAppPurchaseInstallPage.lockup.getter();
  v23 = InAppPurchaseInstallPage.parentLockup.getter();
  if (v23)
  {
    v61 = v14;

    v24 = Lockup.icon.getter();
    v62 = a1;
    if (v24)
    {
      v58 = v8;
      v59 = v11;
      v63 = v23;
      if (qword_10096EE80 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v25, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      v60 = v2;
      v26 = *&v2[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_lockupView];
      v27 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      [*(v26 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView) contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      v28 = *(v26 + v27);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v28 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v29 = *(v26 + v27);
      type metadata accessor for ArtworkView();
      sub_10009A098();
      v30 = v29;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      v11 = v59;
      v3 = v60;
      v23 = v63;
      v8 = v58;
    }

    v31 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_lockupView];
    v32 = sub_10002849C(&unk_100973240, qword_1007B2220);
    (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
    v33 = type metadata accessor for OfferStyle();
    v34 = a2;
    v35 = v64;
    (*(*(v33 - 8) + 56))(v64, 1, 1, v33);
    v36 = type metadata accessor for OfferEnvironment();
    v37 = v61;
    (*(*(v36 - 8) + 56))(v61, 1, 1, v36);
    v38 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
    (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
    v39 = type metadata accessor for OfferTint();
    (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
    sub_1004F3190(v23, v31, v19, v34, 0, 0, v35, v37, v8, v11);
    sub_10002B894(v8, &unk_100973AD0, &unk_1007B17C0);
    v31[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v31 setNeedsLayout];

    sub_10002B894(v11, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v37, &unk_100970160, &unk_1007BDDE0);
    v40 = v35;
    a2 = v34;
    sub_10002B894(v40, &qword_100973AE0, &unk_1007B17D0);
    sub_10002B894(v19, &unk_100973230, &unk_1007B17E0);
  }

  if (v22)
  {

    if (Lockup.icon.getter())
    {
      v63 = v23;
      v64 = a2;
      v41 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_inAppPurchaseView];
      v42 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView;
      [*(v41 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView) contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      v43 = *(v41 + v42);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v43 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v44 = *(v41 + v42);
      type metadata accessor for ArtworkView();
      sub_10009A098();
      v45 = v44;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
    }

    v47 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_titleLabel];

    Lockup.title.getter();
    v49 = v48;

    if (v49)
    {
      v46 = String._bridgeToObjectiveC()();
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v47 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_titleLabel];
  }

  [v47 setText:v46];

  v50 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_descriptionLabel];
  InAppPurchaseInstallPage.preInstallOfferDescription.getter();
  if (v51)
  {
    v52 = String._bridgeToObjectiveC()();
  }

  else
  {
    v52 = 0;
  }

  [v50 setText:v52];

  v53 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_messageLabel];
  v54._object = 0x800000010080C500;
  v54._countAndFlagsBits = 0xD000000000000030;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  localizedString(_:comment:)(v54, v55);
  v56 = String._bridgeToObjectiveC()();

  [v53 setText:v56];

  [v3 setNeedsLayout];
}

uint64_t sub_1002CC3DC()
{
  v0 = type metadata accessor for MetadataRibbonItemViewType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetadataRibbonItem.viewContainerType.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for MetadataRibbonItemViewType.borderedTextLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView(0);
    v6 = &unk_100970650;
    v7 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
    v8 = &unk_1007B0FD8;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.editorsChoice(_:))
  {
    v5 = type metadata accessor for MetadataRibbonEditorsChoiceView(0);
    v6 = &unk_100972E90;
    v7 = type metadata accessor for MetadataRibbonEditorsChoiceView;
    v8 = &unk_1007C1128;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.imageWithLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v6 = &unk_100970648;
    v7 = type metadata accessor for MetadataRibbonIconWithLabelView;
    v8 = &unk_1007B7A08;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.starRating(_:))
  {
    v5 = type metadata accessor for MetadataRibbonStarRatingView(0);
    v6 = &unk_100972EA0;
    v7 = type metadata accessor for MetadataRibbonStarRatingView;
    v8 = &unk_1007D8798;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.textLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonTagView(0);
    v6 = &unk_100970640;
    v7 = type metadata accessor for MetadataRibbonTagView;
    v8 = &unk_1007BFD50;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.divider(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBarView(0);
    v6 = &unk_100972E80;
    v7 = type metadata accessor for MetadataRibbonBarView;
    v8 = &unk_1007CB2D0;
  }

  else
  {
    if (v4 != enum case for MetadataRibbonItemViewType.highlightedText(_:))
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }

    v5 = type metadata accessor for MetadataRibbonHighlightedTextView(0);
    v6 = &unk_100970638;
    v7 = type metadata accessor for MetadataRibbonHighlightedTextView;
    v8 = &unk_1007BFA80;
  }

  sub_1002CC700(v6, v7, v8);
  return v5;
}

uint64_t sub_1002CC700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1002CC748(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FontUseCase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_presenter] = a1;
  v8 = objc_allocWithZone(UIPickerView);

  v9 = [v8 init];
  *&v2[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_countryPicker] = v9;
  v10 = [objc_allocWithZone(UIPickerView) init];
  *&v2[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_languagePicker] = v10;
  type metadata accessor for DynamicTypeButton();
  if (qword_10096E230 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v4, qword_1009D1610);
  v12 = *(v5 + 16);
  v12(v7, v11, v4);
  *&v2[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_submitButton] = DynamicTypeButton.__allocating_init(useCase:)();
  v12(v7, v11, v4);
  *&v2[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_backToUSButton] = DynamicTypeButton.__allocating_init(useCase:)();
  v13 = type metadata accessor for DebugStorefrontPickerViewController();
  v17.receiver = v2;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  sub_1002CD954(&qword_10097E810, &unk_1007C5EF4);
  v15 = v14;
  dispatch thunk of StorefrontPickerPagePresenter.view.setter();

  return v15;
}

id sub_1002CC9DC()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  objc_msgSendSuper2(&v29, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  [v1 pageMarginInsets];
  [v3 setLayoutMargins:?];

  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  [v4 setBackgroundColor:v6];

  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_countryPicker];
  [result addSubview:v8];

  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  v10 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_languagePicker];
  [result addSubview:v10];

  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = result;
  v12 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_submitButton];
  [result addSubview:v12];

  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = result;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_backToUSButton];
  [result addSubview:v14];

  [v8 setDelegate:v1];
  [v8 setDataSource:v1];
  [v10 setDelegate:v1];
  [v10 setDataSource:v1];
  [v8 selectRow:dispatch thunk of StorefrontPickerPagePresenter.selectedCountryIndex.getter() inComponent:0 animated:0];
  [v10 selectRow:dispatch thunk of StorefrontPickerPagePresenter.selectedLanguageIndex.getter() inComponent:0 animated:0];
  v15 = String._bridgeToObjectiveC()();
  [v12 setTitle:v15 forState:0];

  v16 = [v12 titleLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setTextAlignment:1];
  }

  result = [v1 view];
  if (!result)
  {
    goto LABEL_20;
  }

  v18 = result;
  v19 = [result tintColor];

  [v12 setBackgroundColor:v19];
  v20 = [v5 whiteColor];
  [v12 setTitleColor:v20 forState:0];

  v21 = [v5 whiteColor];
  [v12 setTitleColor:v21 forState:2];

  [v12 setTitleEdgeInsets:{5.0, 10.0, 5.0, 10.0}];
  [v12 addTarget:v1 action:"setStorefront" forControlEvents:64];
  [v12 _setCornerRadius:10.0];
  sub_1002CD3E8();
  v22 = String._bridgeToObjectiveC()();
  [v14 setTitle:v22 forState:0];

  v23 = [v14 titleLabel];
  if (v23)
  {
    v24 = v23;
    [v23 setTextAlignment:1];
  }

  result = [v1 view];
  if (result)
  {
    v25 = result;
    v26 = [result tintColor];

    [v14 setBackgroundColor:v26];
    v27 = [v5 whiteColor];
    [v14 setTitleColor:v27 forState:0];

    v28 = [v5 whiteColor];
    [v14 setTitleColor:v28 forState:2];

    [v14 setTitleEdgeInsets:{5.0, 10.0, 5.0, 10.0}];
    [v14 addTarget:v1 action:"setStorefrontToUS" forControlEvents:64];
    return [v14 _setCornerRadius:10.0];
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1002CCFB0()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  objc_msgSendSuper2(&v40, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_countryPicker];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    LayoutMarginsAware<>.layoutFrame.getter();
    [v4 sizeThatFits:{v5, v6}];
    v8 = v7;
    LayoutMarginsAware<>.layoutFrame.getter();
    MinX = CGRectGetMinX(v41);
    LayoutMarginsAware<>.layoutFrame.getter();
    v10 = CGRectGetMinY(v42) + 20.0;
    LayoutMarginsAware<>.layoutFrame.getter();
    [v4 setFrame:{MinX, v10, CGRectGetWidth(v43), v8}];
    v11 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_languagePicker];
    LayoutMarginsAware<>.layoutFrame.getter();
    [v11 sizeThatFits:{v12, v13}];
    v15 = v14;
    LayoutMarginsAware<>.layoutFrame.getter();
    v16 = CGRectGetMinX(v44);
    [v4 frame];
    MaxY = CGRectGetMaxY(v45);
    LayoutMarginsAware<>.layoutFrame.getter();
    [v11 setFrame:{v16, MaxY, CGRectGetWidth(v46), v15}];
    v18 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_submitButton];
    LayoutMarginsAware<>.layoutFrame.getter();
    [v18 measurementsWithFitting:v3 in:{v19, v20}];
    v22 = v21;
    LayoutMarginsAware<>.layoutFrame.getter();
    v23 = CGRectGetMinX(v47);
    [v11 frame];
    v24 = CGRectGetMaxY(v48) + 20.0;
    LayoutMarginsAware<>.layoutFrame.getter();
    Width = CGRectGetWidth(v49);
    [v18 titleEdgeInsets];
    v27 = v22 + v26;
    [v18 titleEdgeInsets];
    [v18 setFrame:{v23, v24, Width, v27 + v28}];
    v29 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_backToUSButton];
    LayoutMarginsAware<>.layoutFrame.getter();
    [v29 measurementsWithFitting:v3 in:{v30, v31}];
    v33 = v32;
    LayoutMarginsAware<>.layoutFrame.getter();
    v34 = CGRectGetMinX(v50);
    [v18 frame];
    v35 = CGRectGetMaxY(v51) + 10.0;
    LayoutMarginsAware<>.layoutFrame.getter();
    v36 = CGRectGetWidth(v52);
    [v29 titleEdgeInsets];
    v38 = v33 + v37;
    [v29 titleEdgeInsets];
    [v29 setFrame:{v34, v35, v36, v38 + v39}];
  }
}

void sub_1002CD3E8()
{
  v1 = v0;
  updated = dispatch thunk of StorefrontPickerPagePresenter.canUpdateStorefront.getter();
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = updated & 1;
  *(v4 + 24) = updated & 1;
  v15 = sub_1002CD994;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100007A08;
  v14 = &unk_1008BC8F0;
  v6 = _Block_copy(&v11);
  v7 = v1;

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  v15 = sub_1002CD9C8;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100504C5C;
  v14 = &unk_1008BC940;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v3 animateWithDuration:v6 animations:v9 completion:0.2];
  _Block_release(v9);
  _Block_release(v6);
}

id sub_1002CD7CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002CD954(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugStorefrontPickerViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002CD994()
{
  v1 = 0.4;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_submitButton) setAlpha:v1];
}

uint64_t sub_1002CD9E8(uint64_t a1)
{
  sub_100005744(0, &qword_100978360, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    return dispatch thunk of StorefrontPickerPagePresenter.numberOfCountries.getter();
  }

  if (static NSObject.== infix(_:_:)())
  {
    return dispatch thunk of StorefrontPickerPagePresenter.numberOfLanguages.getter();
  }

  return 0;
}

uint64_t sub_1002CDA8C(uint64_t a1, uint64_t a2)
{
  sub_100005744(0, &qword_100978360, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    return dispatch thunk of StorefrontPickerPagePresenter.country(at:)();
  }

  if (static NSObject.== infix(_:_:)())
  {
    return dispatch thunk of StorefrontPickerPagePresenter.language(at:for:)();
  }

  return 0;
}

uint64_t sub_1002CDB48(uint64_t a1, uint64_t a2)
{
  sub_100005744(0, &qword_100978360, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    return dispatch thunk of StorefrontPickerPagePresenter.didSelectCountry(at:)();
  }

  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    return dispatch thunk of StorefrontPickerPagePresenter.didSelectLanguage(at:)();
  }

  return result;
}

uint64_t type metadata accessor for HeaderButton(uint64_t a1)
{
  result = qword_10097E840;
  if (!qword_10097E840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002CDC94()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_10097E818);
  v1 = sub_1000056A8(v0, qword_10097E818);
  if (qword_10096DCD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D0608);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002CDD5C()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeaderButton(0);
  if (qword_10096D640 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_10097E818);
  (*(v1 + 16))(v3, v4, v0);
  result = DynamicTypeButton.__allocating_init(useCase:)();
  qword_10097E830 = result;
  return result;
}

uint64_t sub_1002CDE78(uint64_t a1)
{
  v1 = type metadata accessor for FontUseCase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (qword_10096D640 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v1, qword_10097E818);
  (*(v2 + 16))(v4, v5, v1);
  v6 = DynamicTypeButton.__allocating_init(useCase:)();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

id sub_1002CDFBC(void *a1)
{
  v2 = v1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for HeaderButton(0);
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v5 != result))
  {
    v7 = *&v2[qword_10097E838];
    v8 = [v2 traitCollection];
    v9 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0.0;
    }

    if (v9)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v7;
    }

    if (v9)
    {
      v12 = -v7;
    }

    else
    {
      v12 = v7;
    }

    if ((v9 & 1) == 0)
    {
      v7 = -v7;
    }

    [v2 setContentEdgeInsets:{0.0, v11, 0.0, v10}];
    return [v2 setImageEdgeInsets:{0.0, v7, 0.0, v12}];
  }

  return result;
}

void sub_1002CE0F0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1002CDFBC(a3);
}

id sub_1002CE15C(char *a1, double a2, double a3, double a4, double a5)
{
  *&a1[qword_10097E838] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for HeaderButton(0);
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1002CE1DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002CE220(uint64_t a1, uint64_t a2, double a3)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FontUseCase();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v12[3] = v4;
  v12[4] = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v12);
  (*(v5 + 16))(v9, v7, v4);
  CGFloat.scalingLike(_:with:)();
  (*(v5 + 8))(v7, v4);
  sub_100007000(v12);
  return JUScreenClassGetMain();
}

uint64_t TodayCardLockupLayout.Metrics.init(artworkSize:artworkMargin:ordinalSpaceProvider:headingSpace:titleSpace:subtitleSpace:tertiaryTitleSpace:offerTextSpace:offerButtonSize:offerButtonMargin:preferVerticallyStackedIcon:preferStackedLargeAXLayouts:singleLineTitleAndSubtitle:allowAccessibilityLayout:backgroundAssetHeight:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, char a14, __int128 *a15, char a16, char a17, char a18, char a19, uint64_t a20, char a21)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_100005A38(a1, a9 + 16);
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  sub_100005A38(a4, a9 + 72);
  sub_100005A38(a5, a9 + 112);
  sub_100005A38(a8, a9 + 232);
  sub_100005A38(a6, a9 + 152);
  sub_100005A38(a7, a9 + 192);
  *(a9 + 272) = a12;
  *(a9 + 280) = a13;
  *(a9 + 288) = a14 & 1;
  result = sub_100005A38(a15, a9 + 296);
  *(a9 + 336) = a16;
  *(a9 + 337) = a17;
  *(a9 + 338) = a18;
  *(a9 + 339) = a19;
  *(a9 + 344) = a20;
  *(a9 + 352) = a21 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.ordinalSpaceProvider.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void TodayCardLockupLayout.Metrics.ordinalSpaceProvider.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.secondaryBannerViewHeight.setter(__int128 *a1)
{
  sub_100007000((v1 + 72));

  return sub_100005A38(a1, v1 + 72);
}

uint64_t ArcadeSubscribePageLayout.Metrics.offerButtonHeight.setter(__int128 *a1)
{
  sub_100007000((v1 + 112));

  return sub_100005A38(a1, v1 + 112);
}

uint64_t TodayCardLockupLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 152));

  return sub_100005A38(a1, v1 + 152);
}

uint64_t TodayCardLockupLayout.Metrics.tertiaryTitleSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 192));

  return sub_100005A38(a1, v1 + 192);
}

uint64_t TodayCardLockupLayout.Metrics.offerTextSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 232));

  return sub_100005A38(a1, v1 + 232);
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 272) = result;
  *(v3 + 280) = a2;
  *(v3 + 288) = a3 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  sub_100007000((v1 + 296));

  return sub_100005A38(a1, v1 + 296);
}

uint64_t TodayCardLockupLayout.Metrics.backgroundAssetHeight.setter(uint64_t result, char a2)
{
  *(v2 + 344) = result;
  *(v2 + 352) = a2 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.init(metrics:artworkView:ordinalText:headingText:titleText:subtitleText:tertiaryTitleText:crossLinkTitleText:crossLinkSubtitleText:offerText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v78 = a7;
  v79 = a5;
  v83 = a6;
  v80 = a4;
  v81 = a3;
  v74 = a1;
  v75 = a9;
  sub_10003B8E8(a1, v90);
  v82 = a8;
  v14 = *(a8 + 24);
  BYTE8(v90[47]) = v14 != 0;
  v15 = a2[3];
  v16 = a2[4];
  v76 = a2;
  sub_10002A400(a2, v15);
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v73 - v19;
  LayoutView.nilIfHidden()();
  v21 = *(v15 - 8);
  if ((*(v21 + 48))(v20, 1, v15) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v15;
    v89 = v16;
    v22 = sub_1000056E0(&v87);
    (*(v21 + 32))(v22, v20, v15);
  }

  *(&v90[22] + 8) = v87;
  *(&v90[23] + 8) = v88;
  *(&v90[24] + 1) = v89;
  sub_100031660(v81, v84, &unk_10097E890, qword_1007B4270);
  v23 = v85;
  if (v85)
  {
    v24 = v86;
    sub_10002A400(v84, v85);
    v25 = type metadata accessor for Optional();
    v26 = *(v25 - 8);
    __chkstk_darwin(v25);
    v28 = &v73 - v27;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v29 = *(v23 - 8);
    if ((*(v29 + 48))(v28, 1, v23) == 1)
    {
      (*(v26 + 8))(v28, v25);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v23;
      v89 = v24;
      v30 = sub_1000056E0(&v87);
      (*(v29 + 32))(v30, v28, v23);
    }

    sub_100007000(v84);
  }

  else
  {
    sub_10002B894(v84, &unk_10097E890, qword_1007B4270);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[25] = v87;
  v90[26] = v88;
  *&v90[27] = v89;
  sub_100031660(v80, v84, &unk_10097E890, qword_1007B4270);
  v31 = v85;
  if (v85)
  {
    v32 = v86;
    sub_10002A400(v84, v85);
    v33 = type metadata accessor for Optional();
    v34 = *(v33 - 8);
    __chkstk_darwin(v33);
    v36 = &v73 - v35;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v37 = *(v31 - 8);
    if ((*(v37 + 48))(v36, 1, v31) == 1)
    {
      (*(v34 + 8))(v36, v33);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v31;
      v89 = v32;
      v38 = sub_1000056E0(&v87);
      (*(v37 + 32))(v38, v36, v31);
    }

    sub_100007000(v84);
  }

  else
  {
    sub_10002B894(v84, &unk_10097E890, qword_1007B4270);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v77 = a10;
  *(&v90[27] + 8) = v87;
  *(&v90[28] + 8) = v88;
  *(&v90[29] + 1) = v89;
  sub_10002C0AC(v79, &v90[30]);
  v39 = v83[3];
  v40 = v83[4];
  sub_10002A400(v83, v39);
  v41 = type metadata accessor for Optional();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v73 - v43;
  if (v14)
  {
    LayoutTextView.nilIfHasNoContent()();
  }

  else
  {
    LayoutTextView.nilIfHiddenOrHasNoContent()();
  }

  v45 = *(v39 - 8);
  if ((*(v45 + 48))(v44, 1, v39) == 1)
  {
    (*(v42 + 8))(v44, v41);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v39;
    v89 = v40;
    v46 = sub_1000056E0(&v87);
    (*(v45 + 32))(v46, v44, v39);
  }

  *(&v90[32] + 8) = v87;
  *(&v90[33] + 8) = v88;
  *(&v90[34] + 1) = v89;
  sub_100031660(v78, v84, &unk_10097E890, qword_1007B4270);
  v47 = v85;
  if (v85)
  {
    v48 = v86;
    sub_10002A400(v84, v85);
    v49 = type metadata accessor for Optional();
    v50 = *(v49 - 8);
    __chkstk_darwin(v49);
    v52 = &v73 - v51;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v53 = *(v47 - 8);
    if ((*(v53 + 48))(v52, 1, v47) == 1)
    {
      (*(v50 + 8))(v52, v49);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v47;
      v89 = v48;
      v54 = sub_1000056E0(&v87);
      (*(v53 + 32))(v54, v52, v47);
    }

    sub_100007000(v84);
  }

  else
  {
    sub_10002B894(v84, &unk_10097E890, qword_1007B4270);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[35] = v87;
  v90[36] = v88;
  *&v90[37] = v89;
  sub_100031660(v82, &v90[37] + 8, &unk_10097E890, qword_1007B4270);
  sub_100031660(v77, v84, &unk_10097E890, qword_1007B4270);
  v55 = v85;
  if (v85)
  {
    v56 = v86;
    sub_10002A400(v84, v85);
    v57 = type metadata accessor for Optional();
    v58 = *(v57 - 8);
    __chkstk_darwin(v57);
    v60 = &v73 - v59;
    LayoutTextView.nilIfHasNoContent()();
    v61 = *(v55 - 8);
    if ((*(v61 + 48))(v60, 1, v55) == 1)
    {
      (*(v58 + 8))(v60, v57);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v55;
      v89 = v56;
      v62 = sub_1000056E0(&v87);
      (*(v61 + 32))(v62, v60, v55);
    }

    sub_100007000(v84);
  }

  else
  {
    sub_10002B894(v84, &unk_10097E890, qword_1007B4270);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[40] = v87;
  v90[41] = v88;
  *&v90[42] = v89;
  sub_100031660(a11, v84, &unk_10097E890, qword_1007B4270);
  v63 = v85;
  if (v85)
  {
    v64 = v86;
    sub_10002A400(v84, v85);
    v65 = type metadata accessor for Optional();
    v66 = *(v65 - 8);
    __chkstk_darwin(v65);
    v68 = &v73 - v67;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v69 = *(v63 - 8);
    if ((*(v69 + 48))(v68, 1, v63) == 1)
    {
      sub_10002B894(a11, &unk_10097E890, qword_1007B4270);
      sub_10002B894(v77, &unk_10097E890, qword_1007B4270);
      sub_10002B894(v78, &unk_10097E890, qword_1007B4270);
      sub_100007000(v79);
      sub_10002B894(v80, &unk_10097E890, qword_1007B4270);
      sub_10002B894(v81, &unk_10097E890, qword_1007B4270);
      sub_10003B944(v74);
      sub_10002B894(v82, &unk_10097E890, qword_1007B4270);
      (*(v66 + 8))(v68, v65);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v63;
      v89 = v64;
      v70 = sub_1000056E0(&v87);
      (*(v69 + 32))(v70, v68, v63);
      sub_10002B894(a11, &unk_10097E890, qword_1007B4270);
      sub_10002B894(v77, &unk_10097E890, qword_1007B4270);
      sub_10002B894(v78, &unk_10097E890, qword_1007B4270);
      sub_100007000(v79);
      sub_10002B894(v80, &unk_10097E890, qword_1007B4270);
      sub_10002B894(v81, &unk_10097E890, qword_1007B4270);
      sub_10003B944(v74);
      sub_10002B894(v82, &unk_10097E890, qword_1007B4270);
    }

    sub_100007000(v84);
  }

  else
  {
    sub_10002B894(a11, &unk_10097E890, qword_1007B4270);
    sub_10002B894(v77, &unk_10097E890, qword_1007B4270);
    sub_10002B894(v78, &unk_10097E890, qword_1007B4270);
    sub_100007000(v79);
    sub_10002B894(v80, &unk_10097E890, qword_1007B4270);
    sub_10002B894(v81, &unk_10097E890, qword_1007B4270);
    sub_10003B944(v74);
    sub_10002B894(v82, &unk_10097E890, qword_1007B4270);
    sub_10002B894(v84, &unk_10097E890, qword_1007B4270);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  *(&v90[42] + 8) = v87;
  *(&v90[43] + 8) = v88;
  *(&v90[44] + 1) = v89;
  v71 = *(a12 + 16);
  v90[45] = *a12;
  v90[46] = v71;
  *&v90[47] = *(a12 + 32);
  memcpy(v75, v90, 0x2F9uLL);
  sub_100007000(v83);
  return sub_100007000(v76);
}

double TodayCardLockupLayout.measure(toFit:with:)(void *a1, double a2, double a3)
{
  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 && *(v3 + 339) == 1)
  {
    v7.n128_f64[0] = a2;
    sub_1002CFB74(0, a1, v11, v7, a3);
  }

  else
  {
    sub_1002D07B0(0, a1, v11, a2, a3);
  }

  sub_100005A38(v11, v12);
  sub_10002A400(v12, v12[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v9 = v8;
  sub_100007000(v12);
  return v9;
}

uint64_t TodayCardLockupLayout.place(at:with:)(void *a1, double a2, double a3, double a4, double a5)
{
  if (*(v5 + 760) == 1)
  {
    if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 && *(v5 + 339) == 1)
    {
      v9.n128_f64[0] = a4;
      sub_1002CFB74(1u, a1, v12, v9, a5);
    }

    else
    {
      sub_1002D07B0(1, a1, v12, a4, a5);
    }

    sub_100005A38(v12, v13);
    sub_10002A400(v13, v14);
    dispatch thunk of Placeable.place(at:with:)();
    sub_100007000(v13);
  }

  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 && *(v5 + 339) == 1)
  {
    v10.n128_f64[0] = a4;
    sub_1002CFB74(0, a1, v12, v10, a5);
  }

  else
  {
    sub_1002D07B0(0, a1, v12, a4, a5);
  }

  sub_100005A38(v12, v13);
  sub_10002A400(v13, v14);
  dispatch thunk of Placeable.place(at:with:)();
  return sub_100007000(v13);
}

uint64_t sub_1002CFB74@<X0>(unsigned int a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q0>, double a5@<D1>)
{
  v6 = v5;
  v84 = a1;
  v9 = a4.n128_f64[0];
  v87 = a3;
  v10 = type metadata accessor for HorizontalStack();
  v82 = *(v10 - 8);
  v83 = v10;
  __chkstk_darwin(v10);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Resize.Rule();
  v14 = *(v13 - 8);
  v90 = v13;
  v91 = v14;
  __chkstk_darwin(v13);
  v95 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v92 = &v81 - v17;
  __chkstk_darwin(v18);
  v93 = &v81 - v19;
  __chkstk_darwin(v20);
  v22 = &v81 - v21;
  v23 = type metadata accessor for VerticalStack();
  v85 = *(v23 - 8);
  v86 = v23;
  __chkstk_darwin(v23);
  v94 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  VerticalStack.init(with:)();
  sub_10002A400((v5 + 112), *(v5 + 136));
  AnyDimension.value(with:)();
  v26 = v25 + v25;
  sub_10002A400((v6 + 152), *(v6 + 176));
  AnyDimension.value(with:)();
  v28 = v26 + v27;
  sub_100031660(v5 + 360, v96, &qword_100975610, &qword_1007B5690);
  v88 = a2;
  if (*(&v96[1] + 1))
  {
    sub_100005A38(v96, v100);
    if (*(v5 + 336) & 1) != 0 || (v43 = [a2 preferredContentSizeCategory], v44 = static UIContentSizeCategory.>= infix(_:_:)(), v43, (v44) && *(v6 + 337) == 1)
    {
      sub_10002A400(v100, v101);
      Measurable.placeable.getter();
      v29 = *v6;
      *(v22 + 3) = &type metadata for CGFloat;
      *(v22 + 4) = &protocol witness table for CGFloat;
      *v22 = v29;
      v30 = enum case for Resize.Rule.replaced(_:);
      v89 = enum case for Resize.Rule.replaced(_:);
      v31 = v90;
      v32 = *(v91 + 104);
      (v32)(v22, enum case for Resize.Rule.replaced(_:), v90);
      v33 = *(v6 + 8);
      v34 = v93;
      *(v93 + 3) = &type metadata for CGFloat;
      v34[4] = &protocol witness table for CGFloat;
      *v34 = v33;
      (v32)(v34, v30, v31);
      v35 = v22;
      v36 = enum case for Resize.Rule.unchanged(_:);
      (v32)(v92, enum case for Resize.Rule.unchanged(_:), v31);
      (v32)(v95, v36, v31);
      v83 = type metadata accessor for Resize();
      v98 = v83;
      v99 = &protocol witness table for Resize;
      sub_1000056E0(v97);
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      sub_1002D358C(v6, v96);
      v37 = swift_allocObject();
      memcpy((v37 + 16), v96, 0x2F9uLL);
      v38 = v88;
      *(v37 + 784) = v88;
      v39 = v38;
      VerticalStack.add(_:with:)();
      v40 = v92;

      sub_100007000(v97);
      sub_1002D12FC(v84 & 1, v39, v96, v9, a5);
      static Center.Axis.neither.getter();
      v98 = type metadata accessor for Center();
      v99 = &protocol witness table for Center;
      sub_1000056E0(v97);
      Center.init(_:filling:)();
      v35[3] = &type metadata for CGFloat;
      v35[4] = &protocol witness table for CGFloat;
      *v35 = v28;
      (v32)(v35, v89, v31);
      (v32)(v93, v36, v31);
      (v32)(v40, v36, v31);
      v84 = v36;
      v41 = v36;
      v22 = v35;
      (v32)(v95, v41, v31);
      *(&v96[1] + 1) = v83;
      *&v96[2] = &protocol witness table for Resize;
      sub_1000056E0(v96);
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      VerticalStack.add(_:with:)();
      sub_100007000(v96);
      v42 = v100;
      goto LABEL_12;
    }

    sub_100007000(v100);
  }

  else
  {
    sub_10002B894(v96, &qword_100975610, &qword_1007B5690);
  }

  HorizontalStack.init(with:)();
  sub_100031660(v6 + 360, v96, &qword_100975610, &qword_1007B5690);
  if (*(&v96[1] + 1))
  {
    sub_100005A38(v96, v100);
    v45 = v22;
    v46 = v90;
    v81 = v12;
    sub_10002A400(v100, v101);
    Measurable.placeable.getter();
    v47 = *v6;
    *(v45 + 3) = &type metadata for CGFloat;
    *(v45 + 4) = &protocol witness table for CGFloat;
    *v45 = v47;
    v48 = enum case for Resize.Rule.replaced(_:);
    v49 = v93;
    v50 = *(v91 + 104);
    v89 = enum case for Resize.Rule.replaced(_:);
    v50(v45, enum case for Resize.Rule.replaced(_:), v46);
    v51 = *(v6 + 8);
    *(v49 + 3) = &type metadata for CGFloat;
    *(v49 + 4) = &protocol witness table for CGFloat;
    v52 = v95;
    v53 = v92;
    *v49 = v51;
    v50(v49, v48, v46);
    v54 = enum case for Resize.Rule.unchanged(_:);
    v50(v53, enum case for Resize.Rule.unchanged(_:), v46);
    v55 = v46;
    v22 = v45;
    v50(v52, v54, v55);
    a2 = v88;
    v98 = type metadata accessor for Resize();
    v99 = &protocol witness table for Resize;
    sub_1000056E0(v97);
    v12 = v81;
    v56 = v54;
    v57 = v89;
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    sub_1002D358C(v6, v96);
    v58 = swift_allocObject();
    memcpy((v58 + 16), v96, 0x2F9uLL);
    *(v58 + 784) = a2;
    v59 = a2;
    HorizontalStack.add(_:with:)();

    sub_100007000(v97);
    sub_100007000(v100);
  }

  else
  {
    sub_10002B894(v96, &qword_100975610, &qword_1007B5690);
    v57 = enum case for Resize.Rule.replaced(_:);
    v56 = enum case for Resize.Rule.unchanged(_:);
  }

  v60 = v9 - *v6;
  sub_10002A400((v6 + 16), *(v6 + 40));
  AnyDimension.value(with:)();
  sub_1002D12FC(v84 & 1, a2, v96, v60 - v61, a5);
  static Center.Axis.vertical.getter();
  v101 = type metadata accessor for Center();
  v102 = &protocol witness table for Center;
  sub_1000056E0(v100);
  Center.init(_:filling:)();
  *(v22 + 3) = &type metadata for CGFloat;
  *(v22 + 4) = &protocol witness table for CGFloat;
  *v22 = v28;
  v32 = *(v91 + 104);
  v89 = v57;
  v62 = v57;
  v63 = v90;
  (v32)(v22, v62, v90);
  (v32)(v93, v56, v63);
  (v32)(v92, v56, v63);
  v84 = v56;
  v32(v95);
  *(&v96[1] + 1) = type metadata accessor for Resize();
  *&v96[2] = &protocol witness table for Resize;
  sub_1000056E0(v96);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  HorizontalStack.add(_:with:)();
  sub_100007000(v96);
  v64 = v83;
  *(&v96[1] + 1) = v83;
  *&v96[2] = &protocol witness table for HorizontalStack;
  v65 = sub_1000056E0(v96);
  v66 = v12;
  v67 = v82;
  (*(v82 + 16))(v65, v66, v64);
  VerticalStack.add(_:with:)();
  (*(v67 + 8))(v66, v64);
  v42 = v96;
LABEL_12:
  sub_100007000(v42);
  sub_100031660(v6 + 720, v96, &qword_100975610, &qword_1007B5690);
  if (*(&v96[1] + 1))
  {
    sub_100005A38(v96, v100);
    if ((*(v6 + 288) & 1) == 0)
    {
      v69 = *(v6 + 272);
      v68 = *(v6 + 280);
      v70 = v93;
      sub_10002A400(v100, v101);
      Measurable.placeable.getter();
      *(v22 + 3) = &type metadata for CGFloat;
      *(v22 + 4) = &protocol witness table for CGFloat;
      *v22 = v69;
      v71 = v90;
      v72 = v89;
      (v32)(v22, v89, v90);
      v70[3] = &type metadata for CGFloat;
      v70[4] = &protocol witness table for CGFloat;
      *v70 = v68;
      (v32)(v70, v72, v71);
      v73 = v84;
      (v32)(v92, v84, v71);
      (v32)(v95, v73, v71);
      v98 = type metadata accessor for Resize();
      v99 = &protocol witness table for Resize;
      sub_1000056E0(v97);
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      sub_1002D358C(v6, v96);
      v74 = swift_allocObject();
      memcpy((v74 + 16), v96, 0x2F9uLL);
      v75 = v88;
      *(v74 + 784) = v88;
      v76 = v75;
      VerticalStack.add(_:with:)();

      sub_100007000(v97);
    }

    sub_100007000(v100);
  }

  else
  {
    sub_10002B894(v96, &qword_100975610, &qword_1007B5690);
  }

  v78 = v86;
  v77 = v87;
  v87[3] = v86;
  v77[4] = &protocol witness table for VerticalStack;
  v79 = sub_1000056E0(v77);
  return (*(v85 + 32))(v79, v94, v78);
}

uint64_t sub_1002D07B0@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = v5;
  v87 = a2;
  LODWORD(v7) = a1;
  v80 = a3;
  v84 = type metadata accessor for Resize.Rule();
  v10 = *(v84 - 8);
  __chkstk_darwin(v84);
  v86 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v85 = &v77 - v13;
  __chkstk_darwin(v14);
  v16 = &v77 - v15;
  __chkstk_darwin(v17);
  v19 = &v77 - v18;
  v20 = type metadata accessor for HorizontalStack();
  v81 = *(v20 - 8);
  v82 = v20;
  __chkstk_darwin(v20);
  v88 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  HorizontalStack.init(with:)();
  sub_100031660(v5 + 360, v90, &qword_100975610, &qword_1007B5690);
  if (*(&v90[1] + 1))
  {
    sub_100005A38(v90, v97);
    if ((*(v5 + 336) & 1) == 0)
    {
      sub_10002A400(v97, v98);
      Measurable.placeable.getter();
      v22 = *v5;
      *(v19 + 3) = &type metadata for CGFloat;
      *(v19 + 4) = &protocol witness table for CGFloat;
      *v19 = v22;
      v23 = enum case for Resize.Rule.replaced(_:);
      v24 = *(v10 + 104);
      v79 = v7;
      v7 = v84;
      v24(v19, enum case for Resize.Rule.replaced(_:), v84);
      v25 = *(v6 + 8);
      *(v16 + 3) = &type metadata for CGFloat;
      *(v16 + 4) = &protocol witness table for CGFloat;
      *v16 = v25;
      v24(v16, v23, v7);
      v26 = enum case for Resize.Rule.unchanged(_:);
      v83 = v10;
      v24(v85, enum case for Resize.Rule.unchanged(_:), v7);
      v27 = v7;
      LOBYTE(v7) = v79;
      v24(v86, v26, v27);
      v95 = type metadata accessor for Resize();
      v96 = &protocol witness table for Resize;
      sub_1000056E0(v94);
      v10 = v83;
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      sub_1002D358C(v6, v90);
      v28 = swift_allocObject();
      memcpy((v28 + 16), v90, 0x2F9uLL);
      v29 = v87;
      *(v28 + 784) = v87;
      v30 = v29;
      HorizontalStack.add(_:with:)();

      sub_100007000(v94);
      sub_10002A400((v6 + 16), *(v6 + 40));
      AnyDimension.value(with:)();
      a4 = a4 - v22 - v31;
    }

    sub_100007000(v97);
  }

  else
  {
    sub_10002B894(v90, &qword_100975610, &qword_1007B5690);
  }

  sub_100031660(v6 + 720, v90, &qword_100975610, &qword_1007B5690);
  v32 = *(&v90[1] + 1);
  sub_10002B894(v90, &qword_100975610, &qword_1007B5690);
  if (v32 && (*(v6 + 288) & 1) == 0)
  {
    v33 = a4 - *(v6 + 272);
    sub_10002A400((v6 + 296), *(v6 + 320));
    AnyDimension.value(with:)();
    a4 = v33 - v34;
  }

  sub_1002D12FC(v7 & 1, v87, v97, a4, a5);
  sub_10002A400(v97, v98);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_10002C0AC(v97, v94);
  *(v19 + 3) = &type metadata for CGFloat;
  *(v19 + 4) = &protocol witness table for CGFloat;
  *v19 = a4;
  v43 = enum case for Resize.Rule.replaced(_:);
  v44 = *(v10 + 104);
  v45 = v84;
  v44(v19, enum case for Resize.Rule.replaced(_:), v84);
  *(v16 + 3) = &type metadata for CGFloat;
  *(v16 + 4) = &protocol witness table for CGFloat;
  *v16 = v38;
  v79 = v43;
  v44(v16, v43, v45);
  v46 = enum case for Resize.Rule.unchanged(_:);
  v44(v85, enum case for Resize.Rule.unchanged(_:), v45);
  v78 = v46;
  v83 = v10 + 104;
  v44(v86, v46, v45);
  v47 = type metadata accessor for Resize();
  *(&v90[1] + 1) = v47;
  *&v90[2] = &protocol witness table for Resize;
  sub_1000056E0(v90);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  HorizontalStack.add(_:with:)();
  sub_100007000(v90);
  sub_100031660(v6 + 720, v90, &qword_100975610, &qword_1007B5690);
  if (!*(&v90[1] + 1))
  {
    sub_10002B894(v90, &qword_100975610, &qword_1007B5690);
    goto LABEL_13;
  }

  sub_100005A38(v90, v94);
  if ((*(v6 + 288) & 1) == 0)
  {
    v52 = *(v6 + 272);
    v51 = *(v6 + 280);
    sub_10002A400(v94, v95);
    Measurable.placeable.getter();
    *(v19 + 3) = &type metadata for CGFloat;
    *(v19 + 4) = &protocol witness table for CGFloat;
    *v19 = v52;
    v53 = v79;
    v77 = v47;
    v54 = v84;
    v44(v19, v79, v84);
    *(v16 + 3) = &type metadata for CGFloat;
    *(v16 + 4) = &protocol witness table for CGFloat;
    *v16 = v51;
    v44(v16, v53, v54);
    v55 = v78;
    v44(v85, v78, v54);
    v56 = v54;
    v57 = v77;
    v44(v86, v55, v56);
    *(&v90[1] + 1) = v57;
    *&v90[2] = &protocol witness table for Resize;
    sub_1000056E0(v90);
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    static Center.Axis.vertical.getter();
    v92 = type metadata accessor for Center();
    v93 = &protocol witness table for Center;
    sub_1000056E0(v91);
    Center.init(_:filling:)();
    sub_1002D358C(v6, v90);
    v58 = swift_allocObject();
    memcpy((v58 + 16), v90, 0x2F9uLL);
    v59 = v87;
    *(v58 + 784) = v87;
    v60 = v59;
    HorizontalStack.add(_:with:)();

    sub_100007000(v91);
    sub_100031660(v6 + 360, v90, &qword_100975610, &qword_1007B5690);
    if (*(&v90[1] + 1))
    {
      sub_100005A38(v90, v91);
      v61 = v80;
      if (*(v6 + 336) == 1)
      {
        v61[3] = type metadata accessor for VerticalStack();
        v61[4] = &protocol witness table for VerticalStack;
        v87 = sub_1000056E0(v61);
        VerticalStack.init(with:)();
        sub_10002A400(v91, v92);
        Measurable.placeable.getter();
        v62 = *v6;
        *(v19 + 3) = &type metadata for CGFloat;
        *(v19 + 4) = &protocol witness table for CGFloat;
        *v19 = v62;
        v63 = v79;
        v64 = v84;
        v80 = v60;
        v44(v19, v79, v84);
        v65 = *(v6 + 8);
        *(v16 + 3) = &type metadata for CGFloat;
        *(v16 + 4) = &protocol witness table for CGFloat;
        *v16 = v65;
        v44(v16, v63, v64);
        v66 = v78;
        v44(v85, v78, v64);
        v44(v86, v66, v64);
        v89[3] = v77;
        v89[4] = &protocol witness table for Resize;
        sub_1000056E0(v89);
        Resize.init(_:width:height:firstBaseline:lastBaseline:)();
        sub_1002D358C(v6, v90);
        v67 = swift_allocObject();
        v67[2] = v52;
        v67[3] = v51;
        v67[4] = v36;
        v67[5] = v38;
        v67[6] = v40;
        v67[7] = v42;
        memcpy(v67 + 8, v90, 0x2F9uLL);
        v68 = v80;
        v67[104] = v80;
        v69 = v68;
        VerticalStack.add(_:with:)();

        sub_100007000(v89);
        v70 = v82;
        *(&v90[1] + 1) = v82;
        *&v90[2] = &protocol witness table for HorizontalStack;
        v71 = sub_1000056E0(v90);
        v72 = v81;
        v73 = v88;
        (*(v81 + 16))(v71, v88, v70);
        VerticalStack.add(_:with:)();
        (*(v72 + 8))(v73, v70);
        sub_100007000(v90);
        sub_100007000(v91);
LABEL_20:
        sub_100007000(v94);
        return sub_100007000(v97);
      }

      sub_100007000(v91);
    }

    else
    {
      sub_10002B894(v90, &qword_100975610, &qword_1007B5690);
      v61 = v80;
    }

    v74 = v82;
    v61[3] = v82;
    v61[4] = &protocol witness table for HorizontalStack;
    v75 = sub_1000056E0(v61);
    (*(v81 + 32))(v75, v88, v74);
    goto LABEL_20;
  }

  sub_100007000(v94);
LABEL_13:
  v48 = v82;
  v49 = v80;
  v80[3] = v82;
  v49[4] = &protocol witness table for HorizontalStack;
  v50 = sub_1000056E0(v49);
  (*(v81 + 32))(v50, v88, v48);
  return sub_100007000(v97);
}

uint64_t sub_1002D12FC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v11 = type metadata accessor for Resize.Rule();
  v40 = *(v11 - 8);
  v41 = v11;
  __chkstk_darwin(v11);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v43 = &v39 - v14;
  __chkstk_darwin(v15);
  v42 = &v39 - v16;
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v20 = type metadata accessor for VerticalStack();
  v45 = *(v20 - 8);
  v46 = v20;
  __chkstk_darwin(v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002D358C(v5, v52);
  v23 = swift_allocObject();
  memcpy((v23 + 16), v52, 0x2F9uLL);
  VerticalStack.init(with:)();
  sub_100031660(v5 + 440, v52, &unk_10097E890, qword_1007B4270);
  if (*(&v52[1] + 1))
  {
    sub_100005A38(v52, &v50);
    sub_10002A400(&v50, v51);
    dispatch thunk of LayoutTextView.numberOfLines.setter();
    sub_10002A400(&v50, v51);
    dispatch thunk of LayoutTextView.lineBreakMode.setter();
    sub_10002A400(&v50, v51);
    Measurable.placeable.getter();
    sub_1002D358C(v5, v52);
    v24 = swift_allocObject();
    memcpy((v24 + 16), v52, 0x2F9uLL);
    VerticalStack.add(_:with:)();

    sub_100007000(v47);
    sub_100007000(&v50);
  }

  else
  {
    sub_10002B894(v52, &unk_10097E890, qword_1007B4270);
  }

  sub_1002D1E94(a1 & 1, a2, v52, a4, a5);
  VerticalStack.add(_:with:)();
  sub_100007000(v52);
  sub_100031660(v5 + 560, v52, &unk_10097E890, qword_1007B4270);
  if (*(&v52[1] + 1))
  {
    sub_100005A38(v52, &v50);
    sub_10002A400(&v50, v51);
    dispatch thunk of LayoutTextView.numberOfLines.setter();
    sub_10002A400(&v50, v51);
    dispatch thunk of LayoutTextView.lineBreakMode.setter();
    sub_10002A400(&v50, v51);
    Measurable.placeable.getter();
    sub_1002D358C(v5, v52);
    v25 = swift_allocObject();
    memcpy((v25 + 16), v52, 0x2F9uLL);
    VerticalStack.add(_:with:)();

    sub_100007000(v47);
    sub_100007000(&v50);
  }

  else
  {
    sub_10002B894(v52, &unk_10097E890, qword_1007B4270);
  }

  sub_100031660(v5 + 680, v52, &unk_10097E890, qword_1007B4270);
  if (*(&v52[1] + 1))
  {
    sub_100005A38(v52, &v50);
    sub_10002A400(&v50, v51);
    Measurable.placeable.getter();
    sub_1002D358C(v5, v52);
    v26 = swift_allocObject();
    memcpy((v26 + 16), v52, 0x2F9uLL);
    VerticalStack.add(_:with:)();

    sub_100007000(v47);
    sub_100007000(&v50);
  }

  else
  {
    sub_10002B894(v52, &unk_10097E890, qword_1007B4270);
  }

  sub_100031660(v5 + 400, &v50, &unk_10097E890, qword_1007B4270);
  if (v51)
  {
    sub_100005A38(&v50, v52);
    v27 = *(v5 + 56);
    sub_10002A400(v52, *(&v52[1] + 1));
    v28 = dispatch thunk of LayoutTextView.textLength.getter();
    v27(&v50, v28);
    a3[3] = type metadata accessor for HorizontalStack();
    a3[4] = &protocol witness table for HorizontalStack;
    sub_1000056E0(a3);
    HorizontalStack.init(with:)();
    sub_10002A400(v52, *(&v52[1] + 1));
    Measurable.placeable.getter();
    sub_10002C0AC(&v50, v19);
    v29 = *(v40 + 13);
    v40 = v22;
    v30 = v41;
    v29(v19, enum case for Resize.Rule.replaced(_:), v41);
    v31 = enum case for Resize.Rule.unchanged(_:);
    v29(v42, enum case for Resize.Rule.unchanged(_:), v30);
    v29(v43, v31, v30);
    v29(v44, v31, v30);
    v48 = type metadata accessor for Resize();
    v49 = &protocol witness table for Resize;
    sub_1000056E0(v47);
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    HorizontalStack.add(_:with:)();
    sub_100007000(v47);
    v32 = v46;
    v48 = v46;
    v49 = &protocol witness table for VerticalStack;
    v33 = sub_1000056E0(v47);
    v34 = v45;
    v35 = v40;
    (*(v45 + 16))(v33, v40, v32);
    HorizontalStack.add(_:with:)();
    sub_100007000(&v50);
    (*(v34 + 8))(v35, v32);
    sub_100007000(v47);
    return sub_100007000(v52);
  }

  else
  {
    sub_10002B894(&v50, &unk_10097E890, qword_1007B4270);
    v37 = v46;
    a3[3] = v46;
    a3[4] = &protocol witness table for VerticalStack;
    v38 = sub_1000056E0(a3);
    return (*(v45 + 32))(v38, v22, v37);
  }
}

uint64_t sub_1002D1B20(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10002A400(a2 + 37, a2[40]);
  AnyDimension.value(with:)();
  return HorizontalStack.Properties.leadingSpacing.setter();
}

uint64_t sub_1002D1BA0(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, void *a8, uint64_t a9)
{
  sub_10002A400(a8 + 2, a8[5]);
  AnyDimension.value(with:)();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_1002D1C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002A400((a2 + 16), *(a2 + 40));
  AnyDimension.value(with:)();
  result = VerticalStack.Properties.bottomSpacing.setter();
  if (*(a2 + 336) == 1)
  {
    return VerticalStack.Properties.alignment.setter();
  }

  return result;
}

uint64_t sub_1002D1CEC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10002A400(a2 + 2, a2[5]);
  AnyDimension.value(with:)();
  return HorizontalStack.Properties.trailingSpacing.setter();
}

uint64_t sub_1002D1D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002A400((a2 + 296), *(a2 + 320));
  AnyDimension.value(with:)();
  result = VerticalStack.Properties.topSpacing.setter();
  if (*(a2 + 336) == 1)
  {
    sub_10002A400((a2 + 296), *(a2 + 320));
    AnyDimension.value(with:)();
    return VerticalStack.Properties.bottomSpacing.setter();
  }

  return result;
}

uint64_t sub_1002D1E4C(uint64_t a1, uint64_t a2)
{
  static VerticalStack.Edge.top.getter();
  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  sub_10002C0AC(a2 + 72, v4);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_1002D1E94@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = v5;
  v32 = a2;
  v34 = a3;
  v35 = type metadata accessor for VerticalStack();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  VerticalStack.init(with:)();
  sub_100031660(v5 + 440, v36, &unk_10097E890, qword_1007B4270);
  v12 = *(&v36[1] + 1);
  sub_10002B894(v36, &unk_10097E890, qword_1007B4270);
  sub_100031660(v5 + 680, v36, &unk_10097E890, qword_1007B4270);
  v13 = *(&v36[1] + 1);
  sub_10002B894(v36, &unk_10097E890, qword_1007B4270);
  sub_100031660(v5 + 560, v36, &unk_10097E890, qword_1007B4270);
  v14 = *(&v36[1] + 1);
  sub_10002B894(v36, &unk_10097E890, qword_1007B4270);
  sub_10002A400((v6 + 480), *(v6 + 504));
  if (dispatch thunk of LayoutTextView.isTextExtraTall.getter())
  {
    goto LABEL_4;
  }

  sub_100031660(v5 + 520, v36, &unk_10097E890, qword_1007B4270);
  if (*(&v36[1] + 1))
  {
    sub_10002A400(v36, *(&v36[1] + 1));
    v15 = dispatch thunk of LayoutTextView.isTextExtraTall.getter();
    sub_100007000(v36);
    if (v15)
    {
LABEL_4:
      v16 = 1;
      if (v12)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      v18 = v14 | v13;
      v19 = v11;
      if (!v18)
      {
        v16 = v17;
      }

      goto LABEL_18;
    }
  }

  else
  {
    sub_10002B894(v36, &unk_10097E890, qword_1007B4270);
  }

  if (v12)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v20 = 2;
  if (!v12)
  {
    v20 = 3;
  }

  if (!(v14 | v13))
  {
    v16 = v20;
  }

  v19 = v11;
LABEL_18:
  sub_1002D2568(v16, a1 & 1, v32, a4, a5);
  v22 = v21;
  v24 = v23;
  if (a1)
  {
    sub_100031660(v6 + 600, v42, &unk_10097E890, qword_1007B4270);
  }

  else
  {
    sub_10002C0AC(v6 + 480, v42);
  }

  sub_100031660(v42, &v40, &unk_10097E890, qword_1007B4270);
  if (v41)
  {
    sub_100005A38(&v40, v36);
    if ((v22 & 1) == 0)
    {
      sub_10002A400(v36, *(&v36[1] + 1));
      Measurable.placeable.getter();
      VerticalStack.add(_:with:)();
      sub_100007000(&v40);
      sub_10002A400(v36, *(&v36[1] + 1));
      dispatch thunk of LayoutTextView.numberOfLines.setter();
      sub_10002A400(v36, *(&v36[1] + 1));
      dispatch thunk of LayoutTextView.lineBreakMode.setter();
      goto LABEL_28;
    }

    sub_100007000(v36);
  }

  else
  {
    sub_10002B894(&v40, &unk_10097E890, qword_1007B4270);
  }

  sub_100031660(v42, v36, &unk_10097E890, qword_1007B4270);
  if (*(&v36[1] + 1))
  {
    sub_10002A400(v36, *(&v36[1] + 1));
    dispatch thunk of LayoutTextView.numberOfLines.setter();
LABEL_28:
    sub_100007000(v36);
    goto LABEL_30;
  }

  sub_10002B894(v36, &unk_10097E890, qword_1007B4270);
LABEL_30:
  v25 = 520;
  if (a1)
  {
    v25 = 640;
  }

  sub_100031660(v6 + v25, &v40, &unk_10097E890, qword_1007B4270);
  sub_100031660(&v40, v36, &unk_10097E890, qword_1007B4270);
  if (*(&v36[1] + 1))
  {
    sub_100005A38(v36, v38);
    if ((v24 & 1) == 0)
    {
      sub_10002A400(v38, v39);
      Measurable.placeable.getter();
      sub_1002D358C(v6, v36);
      v26 = swift_allocObject();
      memcpy((v26 + 16), v36, 0x2F9uLL);
      VerticalStack.add(_:with:)();

      sub_100007000(v37);
      sub_10002A400(v38, v39);
      dispatch thunk of LayoutTextView.numberOfLines.setter();
      sub_10002A400(v38, v39);
      dispatch thunk of LayoutTextView.lineBreakMode.setter();
      sub_100007000(v38);
      goto LABEL_40;
    }

    sub_100007000(v38);
  }

  else
  {
    sub_10002B894(v36, &unk_10097E890, qword_1007B4270);
  }

  sub_100031660(&v40, v36, &unk_10097E890, qword_1007B4270);
  if (*(&v36[1] + 1))
  {
    sub_10002A400(v36, *(&v36[1] + 1));
    dispatch thunk of LayoutTextView.numberOfLines.setter();
    sub_100007000(v36);
  }

  else
  {
    sub_10002B894(v36, &unk_10097E890, qword_1007B4270);
  }

LABEL_40:
  v27 = v34;
  v28 = v35;
  v34[3] = v35;
  v27[4] = &protocol witness table for VerticalStack;
  v29 = sub_1000056E0(v27);
  (*(v33 + 32))(v29, v19, v28);
  sub_10002B894(&v40, &unk_10097E890, qword_1007B4270);
  return sub_10002B894(v42, &unk_10097E890, qword_1007B4270);
}

uint64_t sub_1002D24D8(uint64_t a1, uint64_t a2)
{
  static VerticalStack.Edge.top.getter();
  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  sub_10002C0AC(a2 + 192, v4);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_1002D2520(uint64_t a1, uint64_t a2)
{
  static VerticalStack.Edge.top.getter();
  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  sub_10002C0AC(a2 + 232, v4);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_1002D2568(uint64_t a1, char a2, uint64_t a3, double a4, double a5)
{
  if (a2)
  {
    sub_100031660(v5 + 600, v27, &unk_10097E890, qword_1007B4270);
    v7 = 640;
  }

  else
  {
    sub_10002C0AC(v5 + 480, v27);
    v7 = 520;
  }

  sub_100031660(v5 + v7, v26, &unk_10097E890, qword_1007B4270);
  if (*(v5 + 338) == 1)
  {
    sub_100031660(v26, v24, &unk_10097E890, qword_1007B4270);
    if (v25)
    {
      sub_10002A400(v24, v25);
      dispatch thunk of LayoutView.hasContent.getter();
      sub_10002B894(v26, &unk_10097E890, qword_1007B4270);
      sub_10002B894(v27, &unk_10097E890, qword_1007B4270);
      sub_100007000(v24);
    }

    else
    {
      sub_10002B894(v26, &unk_10097E890, qword_1007B4270);
      sub_10002B894(v27, &unk_10097E890, qword_1007B4270);
      sub_10002B894(v24, &unk_10097E890, qword_1007B4270);
    }

    v8 = 0;
    result = 1;
    goto LABEL_33;
  }

  sub_100031660(v27, &v22, &unk_10097E890, qword_1007B4270);
  if (v23)
  {
    sub_100005A38(&v22, v24);
    sub_10002A400(v24, v25);
    dispatch thunk of LayoutTextView.numberOfLines.setter();
    sub_10002A400(v24, v25);
    Measurable.measurements(fitting:with:)();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    sub_10002A400(v24, v25);
    v28.var0 = v11;
    v28.var1 = v13;
    v28.var2 = v15;
    v28.var3 = v17;
    v18 = LayoutTextView.estimatedNumberOfLines(from:)(v28) > 1;
    sub_100007000(v24);
  }

  else
  {
    sub_10002B894(&v22, &unk_10097E890, qword_1007B4270);
    v18 = 0;
  }

  sub_100031660(v26, v24, &unk_10097E890, qword_1007B4270);
  if (v25)
  {
    sub_10002A400(v24, v25);
    v19 = dispatch thunk of LayoutView.hasContent.getter();
    sub_10002B894(v26, &unk_10097E890, qword_1007B4270);
    sub_10002B894(v27, &unk_10097E890, qword_1007B4270);
    result = sub_100007000(v24);
    if (v18)
    {
      v20 = a1;
      if (v19)
      {
        v20 = a1 - 1;
        if (__OFSUB__(a1, 1))
        {
          goto LABEL_35;
        }
      }

      if (v20 <= 1)
      {
        result = 1;
      }

      else
      {
        result = v20;
      }
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      if (v19)
      {
        v8 = a1 - result < 1;
LABEL_33:
        v27[0] = 0;
        v26[0] = v8;
        return result;
      }

LABEL_32:
      v8 = 1;
      goto LABEL_33;
    }
  }

  else
  {
    sub_10002B894(v26, &unk_10097E890, qword_1007B4270);
    sub_10002B894(v27, &unk_10097E890, qword_1007B4270);
    sub_10002B894(v24, &unk_10097E890, qword_1007B4270);
    if (a1 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = a1;
    }

    if (v18)
    {
      result = v21;
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1002D2920(uint64_t a1, uint64_t a2)
{
  static VerticalStack.Edge.top.getter();
  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  sub_10002C0AC(a2 + 152, v4);
  return VerticalStack.Properties.topSpacing.setter();
}

double _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(uint64_t a1, id a2, double a3)
{
  v5 = [a2 preferredContentSizeCategory];
  v6 = static UIContentSizeCategory.>= infix(_:_:)();

  if ((v6 & 1) != 0 && *(a1 + 337) == 1)
  {
    sub_10002A400((a1 + 112), *(a1 + 136));
    AnyDimension.value(with:)();
    sub_10002A400((a1 + 152), *(a1 + 176));
    AnyDimension.value(with:)();
    sub_10002A400((a1 + 16), *(a1 + 40));
    AnyDimension.value(with:)();
    sub_10002A400((a1 + 296), *(a1 + 320));
    AnyDimension.value(with:)();
    return a3;
  }

  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 && *(a1 + 339) == 1)
  {
    sub_10002A400((a1 + 112), *(a1 + 136));
    AnyDimension.value(with:)();
    sub_10002A400((a1 + 152), *(a1 + 176));
    AnyDimension.value(with:)();
    if (*(a1 + 336) == 1)
    {
      sub_10002A400((a1 + 16), *(a1 + 40));
      AnyDimension.value(with:)();
    }

    v7 = *(a1 + 320);
    v8 = (a1 + 296);
    goto LABEL_12;
  }

  sub_10002A400((a1 + 112), *(a1 + 136));
  AnyDimension.value(with:)();
  sub_10002A400((a1 + 152), *(a1 + 176));
  AnyDimension.value(with:)();
  sub_10002A400((a1 + 192), *(a1 + 216));
  AnyDimension.value(with:)();
  if (*(a1 + 336) == 1 || (*(a1 + 352) & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = (a1 + 16);
LABEL_12:
    sub_10002A400(v8, v7);
    AnyDimension.value(with:)();
  }

  return a3;
}

uint64_t sub_1002D2C94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 761))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002D2CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 760) = 0;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 761) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 761) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002D2DFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 353))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002D2E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 353) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 353) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1002D2EF4(void *a1, uint64_t a2, char a3)
{
  if (*(a2 + 336) == 1)
  {
    result = 160.0;
    if (*(a2 + 339))
    {
      return 293.0;
    }

    return result;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
    goto LABEL_18;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_10:

    return 52.0;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
    goto LABEL_18;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
LABEL_18:

    return 52.0;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_10;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {

    return 54.0;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {

    return 54.0;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {

    return 62.0;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {

    return 62.0;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {

    return 67.0;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {

    return 67.0;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {

    return 76.0;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {

    return 76.0;
  }

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;
  if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
  {

    return 153.0;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {

    return 153.0;
  }

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
  {

    return 170.0;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {

    return 170.0;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;
  if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
  {

    return 193.0;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {

    return 193.0;
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  if (v59 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v61 == v62)
  {
    goto LABEL_66;
  }

  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v63)
  {
  }

  else
  {
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
    if (v64 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v66 == v67)
    {
LABEL_66:

      goto LABEL_72;
    }

    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v68 & 1) == 0)
    {
      return 52.0;
    }
  }

LABEL_72:
  result = 216.0;
  if (a3)
  {
    return 293.0;
  }

  return result;
}

uint64_t sub_1002D365C()
{
  sub_100007000(v0 + 4);

  sub_100007000(v0 + 11);
  sub_100007000(v0 + 16);
  sub_100007000(v0 + 21);
  sub_100007000(v0 + 26);
  sub_100007000(v0 + 31);
  sub_100007000(v0 + 39);
  if (v0[50])
  {
    sub_100007000(v0 + 47);
  }

  if (v0[55])
  {
    sub_100007000(v0 + 52);
  }

  if (v0[60])
  {
    sub_100007000(v0 + 57);
  }

  sub_100007000(v0 + 62);
  if (v0[70])
  {
    sub_100007000(v0 + 67);
  }

  if (v0[75])
  {
    sub_100007000(v0 + 72);
  }

  if (v0[80])
  {
    sub_100007000(v0 + 77);
  }

  if (v0[85])
  {
    sub_100007000(v0 + 82);
  }

  if (v0[90])
  {
    sub_100007000(v0 + 87);
  }

  if (v0[95])
  {
    sub_100007000(v0 + 92);
  }

  return _swift_deallocObject(v0, 777, 7);
}

__n128 ProductLockupAccessibilityLayout.init(metrics:iconView:titleText:developerText:taglineText:tertiaryTitleText:offerButton:shareButton:offerSubtitleText:expandedOfferTitleText:expandedOfferSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  sub_1002D38FC(a1, a9 + *(v20 + 64));
  sub_100005A38(a2, a9);
  sub_100005A38(a3, a9 + 40);
  sub_100005A38(a4, a9 + 80);
  sub_100005A38(a5, a9 + 120);
  v21 = *(a6 + 16);
  *(a9 + 160) = *a6;
  *(a9 + 176) = v21;
  *(a9 + 192) = *(a6 + 32);
  sub_100005A38(a7, a9 + 200);
  v22 = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = v22;
  *(a9 + 272) = *(a8 + 32);
  sub_100005A38(a10, a9 + 280);
  v23 = *(a11 + 16);
  *(a9 + 320) = *a11;
  *(a9 + 336) = v23;
  *(a9 + 352) = *(a11 + 32);
  v24 = *(a12 + 16);
  *(a9 + 360) = *a12;
  *(a9 + 376) = v24;
  *(a9 + 392) = *(a12 + 32);
  *(a9 + 432) = *(a13 + 32);
  v25 = *(a13 + 16);
  *(a9 + 400) = *a13;
  *(a9 + 416) = v25;
  *(a9 + 472) = *(a14 + 32);
  result = *(a14 + 16);
  *(a9 + 440) = *a14;
  *(a9 + 456) = result;
  return result;
}

uint64_t sub_1002D38FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:titleSpace:developerSpace:taglineSpace:tertiaryTitleSpace:shareButtonLeadingMargin:offerTopSpace:offerSubtitleSpace:expandedOfferTitleSpace:expandedOfferSubtitleSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, uint64_t a17, __int128 *a18, __int128 *a19)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_100005A38(a1, (a9 + 4));
  sub_100005A38(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v28 = v27[8];
  v29 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v30 = *(*(v29 - 8) + 32);
  v30(a9 + v28, a3, v29);
  v30(a9 + v27[9], a4, v29);
  v30(a9 + v27[10], a5, v29);
  v30(a9 + v27[11], a6, v29);
  sub_100005A38(a7, a9 + v27[12]);
  sub_100005A38(a8, a9 + v27[13]);
  sub_100005A38(a16, a9 + v27[14]);
  v30(a9 + v27[15], a17, v29);
  sub_100005A38(a18, a9 + v27[16]);
  v31 = a9 + v27[17];

  return sub_100005A38(a19, v31);
}

void ProductLockupAccessibilityLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  sub_100007000((v1 + 32));

  return sub_100005A38(a1, v1 + 32);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 52);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 56);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 64);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 68);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);

  return sub_1002D486C(v3, a1);
}

uint64_t sub_1002D486C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double ProductLockupAccessibilityLayout.measurements(fitting:in:)(void *a1, double a2)
{
  ObjectType = swift_getObjectType();

  return sub_1002D7D34(a1, v2, ObjectType, a2);
}

uint64_t ProductLockupAccessibilityLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v293 = a2;
  v13 = type metadata accessor for LayoutRect();
  v291 = *(v13 - 8);
  v292 = v13;
  __chkstk_darwin(v13);
  v290 = &v276 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _VerticalFlowLayout();
  v288 = *(v15 - 8);
  v289 = v15;
  __chkstk_darwin(v15);
  v304 = &v276 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for _VerticalFlowLayout.Child();
  v323 = *(v312 - 8);
  __chkstk_darwin(v312);
  v279 = &v276 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v294 = &v276 - v19;
  __chkstk_darwin(v20);
  v278 = &v276 - v21;
  __chkstk_darwin(v22);
  v302 = &v276 - v23;
  __chkstk_darwin(v24);
  v276 = &v276 - v25;
  __chkstk_darwin(v26);
  v277 = &v276 - v27;
  v339 = type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
  v344 = *(v339 - 8);
  __chkstk_darwin(v339);
  v315 = &v276 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = type metadata accessor for _VerticalFlowLayout.Child.HorizontalAlignment();
  v342 = *(v343 - 8);
  __chkstk_darwin(v343);
  v317 = &v276 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = type metadata accessor for _VerticalFlowLayout.Child.Placement();
  v345 = *(v340 - 8);
  __chkstk_darwin(v340);
  v338 = &v276 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FloatingPointRoundingRule();
  v32 = *(v31 - 8);
  *&v33 = __chkstk_darwin(v31).n128_u64[0];
  v35 = &v276 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = [a1 traitCollection];
  v305 = UITraitCollection.isSizeClassRegular.getter();

  v37 = v7 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_10002A400((v37 + 32), *(v37 + 56));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v39 = v38;
  v40 = *(v32 + 8);
  v40(v35, v31);
  sub_10002A400((v37 + 72), *(v37 + 96));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v42 = v41;
  v307 = v35;
  v308 = v32 + 8;
  v43 = v35;
  v44 = v314;
  v309 = v31;
  v306 = v40;
  v40(v43, v31);
  v45 = v37;
  v46 = *(v37 + 8);
  v47 = v39 + *v37;
  v287 = v42;
  v298 = a3;
  v48 = a3;
  v49 = a4;
  v50 = a4;
  v51 = a5;
  v52 = a5;
  v53 = a6;
  v54 = sub_1000CC354(v48, v50, v52, a6, v47, v46);
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_100031660((v44 + 30), v359, &qword_100975610, &qword_1007B5690);
  v341 = a1;
  v303 = v60;
  if (v360)
  {
    sub_10002A400(v359, v360);
    Measurable.measuredSize(fitting:in:)();
    v295 = v61;
    v63 = v62;
    sub_100007000(v359);
  }

  else
  {
    sub_10002B894(v359, &qword_100975610, &qword_1007B5690);
    v295 = 0.0;
    v63 = 0;
  }

  v280 = v63;
  sub_100031660((v44 + 30), v359, &qword_100975610, &qword_1007B5690);
  v64 = v360;
  sub_10002B894(v359, &qword_100975610, &qword_1007B5690);
  v296 = v53;
  v297 = v39;
  v299 = v49;
  v300 = v51;
  if (v64)
  {
    v65 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400((v37 + *(v65 + 48)), *(v37 + *(v65 + 48) + 24));
    v66 = v307;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v67 = v341;
    AnyDimension.value(in:rounded:)();
    v69 = v68;
    v306(v66, v309);
  }

  else
  {
    v69 = 0.0;
    v67 = v341;
  }

  v70 = [v67 traitCollection];
  v71 = UITraitCollection.prefersRightToLeftLayouts.getter();

  v367.origin.x = v54;
  v367.origin.y = v56;
  v367.size.width = v58;
  v72 = v303;
  v367.size.height = v303;
  MinX = CGRectGetMinX(v367);
  v74 = v295;
  v75 = v69 + v295 + MinX;
  v368.origin.x = v54;
  v368.origin.y = v56;
  v368.size.width = v58;
  v368.size.height = v72;
  Width = CGRectGetWidth(v368);
  if (v305)
  {
    v77 = Width - v74 - v69;
  }

  else
  {
    v77 = Width;
  }

  if ((v305 & 1 & v71) != 0)
  {
    v78 = v75;
  }

  else
  {
    v78 = MinX;
  }

  v283 = v78;
  v369.origin.x = v54;
  v369.origin.y = v56;
  v369.size.width = v58;
  v369.size.height = v72;
  MinY = CGRectGetMinY(v369);
  v285 = v56;
  v286 = v54;
  v370.origin.x = v54;
  v370.origin.y = v56;
  v284 = v58;
  v370.size.width = v58;
  v370.size.height = v72;
  Height = CGRectGetHeight(v370);
  sub_10002A400(v44, v44[3]);
  v80 = *(v37 + 120);
  LayoutView.withMeasurements(representing:)();
  v81 = v44[13];
  v337 = v44 + 10;
  sub_10002A400(v44 + 10, v81);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v83 = v82;
  v85 = v84;
  v86 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v87 = v45;
  v88 = (v45 + *(v86 + 36));
  *&v356 = v67;
  v89 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v336 = v88;
  Conditional.evaluate(with:)();
  *&v356 = v359[0];
  AnyDimension.topMargin(from:in:)();
  v91 = v83 - v85 + v90;
  v92 = (v44 + 15);
  sub_10002A400(v44 + 15, v44[18]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v94 = v93;
  v96 = v95;
  v321 = v86;
  v322 = v87;
  *&v356 = v67;
  v311 = v89;
  Conditional.evaluate(with:)();
  *&v356 = v359[0];
  AnyDimension.topMargin(from:in:)();
  v98 = v94 - v96 + v97;
  if (v98 >= v91)
  {
    sub_10002C0AC(v92, &v356);
    v92 = v337;
  }

  else
  {
    sub_10002C0AC(v337, &v356);
  }

  v99 = v323;
  v100 = v339;
  v101 = v344;
  sub_10002C0AC(v92, &v353);
  v102 = v341;
  *&v350 = v341;
  Conditional.evaluate(with:)();
  v103 = v359[0];
  *&v350 = v102;
  Conditional.evaluate(with:)();
  v104 = v359[0];
  if (v98 >= v91)
  {
    v105 = v359[0];
  }

  else
  {
    v105 = v103;
  }

  *(&v351 + 1) = &type metadata for CGFloat;
  v352 = &protocol witness table for CGFloat;
  *&v350 = v105;
  if (v98 >= v91)
  {
    v104 = v103;
  }

  *(&v348 + 1) = &type metadata for CGFloat;
  v349 = &protocol witness table for CGFloat;
  *&v347 = v104;
  sub_100005A38(&v356, v359);
  sub_10002C0AC(&v350, &v362);
  sub_100005A38(&v353, v363);
  sub_100005A38(&v347, v365);
  sub_100007000(&v350);
  v106 = v314;
  sub_10002A400(v314 + 25, v314[28]);
  Measurable.measuredSize(fitting:in:)();
  v108 = v107;
  sub_10002849C(&qword_10096FE38, &qword_1007B14D0);
  v316 = *(v99 + 72);
  v109 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v281 = 2 * v316;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1007B1E00;
  v313 = v109;
  v301 = v110;
  v310 = (v110 + v109);
  *(&v357 + 1) = &type metadata for CGFloat;
  v358 = &protocol witness table for CGFloat;
  *&v356 = v80;
  v355 = 0;
  v353 = 0u;
  v354 = 0u;
  v320 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v336 = *(*&v345 + 104);
  v337 = (*&v345 + 104);
  v111 = v338;
  v336();
  v335 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v112 = v342;
  v333 = *(v342 + 104);
  v334 = v342 + 104;
  v113 = v106;
  v114 = v317;
  v333();
  v115 = sub_10002849C(&unk_10097E8A0, &unk_1007B5940);
  v116 = *(*&v101 + 72);
  v330 = *(*&v101 + 80);
  v331 = v115;
  v332 = (v330 + 32) & ~v330;
  v329 = v332 + v116;
  v117 = swift_allocObject();
  v328 = xmmword_1007B10D0;
  *(v117 + 16) = xmmword_1007B10D0;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  *&v350 = v117;
  v327 = sub_1002D7E0C(&qword_100973E00, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v326 = sub_10002849C(&unk_10097E8B0, &unk_1007BD010);
  v325 = sub_1000ED83C();
  v118 = v101;
  v119 = v315;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v324 = *(*&v118 + 8);
  v324(v119, v100);
  v120 = *(v112 + 8);
  v342 = v112 + 8;
  v319 = v120;
  v120(v114, v343);
  v121 = *(*&v345 + 8);
  *&v345 += 8;
  v318 = v121;
  v122 = v340;
  v121(v111, v340);
  sub_10002B894(&v353, &qword_1009799E0, qword_1007B5950);
  sub_100007000(&v356);
  v123 = v106[8];
  v124 = v106[9];
  v125 = sub_10002A400(v113 + 5, v113[8]);
  *(&v357 + 1) = v123;
  v358 = *(v124 + 8);
  v126 = sub_1000056E0(&v356);
  (*(*(v123 - 8) + 16))(v126, v125, v123);
  v127 = v100;
  *&v344 = *&v118 + 8;
  *&v350 = v341;
  Conditional.evaluate(with:)();
  v128 = *&v353;
  sub_10002A400(v113 + 5, v113[8]);
  dispatch thunk of LayoutTextView.languageAwareOutsets.getter();
  *(&v354 + 1) = &type metadata for CGFloat;
  v355 = &protocol witness table for CGFloat;
  *&v353 = v128 + v129;
  v352 = 0;
  v350 = 0u;
  v351 = 0u;
  v130 = v338;
  v131 = v122;
  (v336)(v338, v320, v122);
  v132 = v317;
  v133 = v343;
  (v333)(v317, v335, v343);
  v134 = swift_allocObject();
  *(v134 + 16) = v328;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  *&v347 = v134;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v324(v119, v127);
  v135 = v133;
  v319(v132, v133);
  v318(v130, v131);
  sub_10002B894(&v350, &qword_1009799E0, qword_1007B5950);
  sub_100007000(&v353);
  sub_100007000(&v356);
  v136 = v360;
  v137 = v361;
  v138 = sub_10002A400(v359, v360);
  *(&v357 + 1) = v136;
  v358 = *(v137 + 8);
  v139 = sub_1000056E0(&v356);
  (*(*(v136 - 8) + 16))(v139, v138, v136);
  v355 = 0;
  v353 = 0u;
  v354 = 0u;
  v140 = v320;
  (v336)(v130, v320, v131);
  v141 = v339;
  (v333)(v132, v335, v135);
  v142 = swift_allocObject();
  *(v142 + 16) = v328;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  *&v350 = v142;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v324(v119, v141);
  v143 = v319;
  v319(v132, v135);
  v144 = v143;
  v145 = v318;
  v318(v130, v131);
  sub_10002B894(&v353, &qword_1009799E0, qword_1007B5950);
  sub_100007000(&v356);
  sub_100031660((v314 + 20), &v353, &unk_10097E890, qword_1007B4270);
  if (*(&v354 + 1))
  {
    v146 = v140;
    v147 = v145;
    sub_100005A38(&v353, &v356);
    v148 = *(&v357 + 1);
    v149 = v358;
    v150 = v144;
    v151 = sub_10002A400(&v356, *(&v357 + 1));
    *(&v354 + 1) = v148;
    v355 = v149[1];
    v152 = sub_1000056E0(&v353);
    (*(*(v148 - 8) + 16))(v152, v151, v148);
    *&v347 = v341;
    *(&v351 + 1) = &type metadata for CGFloat;
    v352 = &protocol witness table for CGFloat;
    Conditional.evaluate(with:)();
    v349 = 0;
    v347 = 0u;
    v348 = 0u;
    v153 = v338;
    v154 = v340;
    (v336)(v338, v146, v340);
    v155 = v317;
    v156 = v343;
    (v333)(v317, v335, v343);
    v157 = swift_allocObject();
    *(v157 + 16) = v328;
    static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    v346 = v157;
    v158 = v315;
    v159 = v339;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v160 = v277;
    static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
    v324(v158, v159);
    v150(v155, v156);
    v147(v153, v154);
    sub_10002B894(&v347, &qword_1009799E0, qword_1007B5950);
    sub_100007000(&v350);
    sub_100007000(&v353);
    v161 = v301;
    v163 = *(v301 + 2);
    v162 = *(v301 + 3);
    if (v163 >= v162 >> 1)
    {
      v161 = sub_100033520((v162 > 1), v163 + 1, 1, v301);
    }

    v165 = v312;
    v164 = v313;
    v166 = v323;
    *(v161 + 2) = v163 + 1;
    (*(v166 + 32))(&v161[v164 + v163 * v316], v160, v165);
    sub_100007000(&v356);
  }

  else
  {
    sub_10002B894(&v353, &unk_10097E890, qword_1007B4270);
    v165 = v312;
    v158 = v315;
    v155 = v317;
    v161 = v301;
  }

  v167 = v314;
  sub_10002A400(v314 + 25, v314[28]);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    v168 = v158;
    v169 = v161;
    v170 = v320;
    v171 = v336;
  }

  else
  {
    sub_10002A400((v322 + *(v321 + 52)), *(v322 + *(v321 + 52) + 24));
    v301 = v161;
    v172 = v307;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v174 = v173;
    v175 = v315;
    v306(v172, v309);
    *(&v357 + 1) = &type metadata for CGFloat;
    v358 = &protocol witness table for CGFloat;
    *&v356 = v108 + v174;
    v355 = 0;
    v353 = 0u;
    v354 = 0u;
    v176 = v338;
    v177 = v340;
    (v336)(v338, v320, v340);
    v178 = v343;
    (v333)(v155, v335, v343);
    v179 = swift_allocObject();
    *(v179 + 16) = v328;
    static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    *&v350 = v179;
    v180 = v339;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v181 = v276;
    static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
    v324(v175, v180);
    v319(v155, v178);
    v182 = v177;
    v183 = v301;
    v318(v176, v182);
    sub_10002B894(&v353, &qword_1009799E0, qword_1007B5950);
    sub_100007000(&v356);
    v185 = *(v183 + 2);
    v184 = *(v183 + 3);
    if (v185 >= v184 >> 1)
    {
      v183 = sub_100033520((v184 > 1), v185 + 1, 1, v183);
    }

    v186 = v323;
    *(v183 + 2) = v185 + 1;
    (*(v186 + 32))(&v183[v313 + v185 * v316], v181, v165);
    v167 = v314;
    v168 = v315;
    v169 = v183;
    v170 = v320;
    v171 = v336;
  }

  v358 = 0;
  v356 = 0u;
  v357 = 0u;
  v187 = v338;
  v188 = v340;
  (v171)(v338, v170, v340);
  v189 = v317;
  v190 = v343;
  (v333)(v317, v335, v343);
  v191 = swift_allocObject();
  *(v191 + 16) = v328;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  *&v353 = v191;
  v192 = v339;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v324(v168, v192);
  v319(v189, v190);
  v318(v187, v188);
  sub_10002B894(&v356, &qword_1009799E0, qword_1007B5950);
  v194 = *(v169 + 2);
  v193 = *(v169 + 3);
  v195 = v169;
  if (v194 >= v193 >> 1)
  {
    v195 = sub_100033520((v193 > 1), v194 + 1, 1, v169);
  }

  v196 = v323;
  *(v195 + 2) = v194 + 1;
  v198 = *(v196 + 32);
  v197 = v196 + 32;
  v310 = v198;
  v198(&v195[v313 + v194 * v316], v302, v312);
  sub_100031660((v167 + 30), &v353, &qword_100975610, &qword_1007B5690);
  v199 = v317;
  if (*(&v354 + 1))
  {
    sub_100005A38(&v353, &v356);
    sub_10002A400(v167 + 25, v167[28]);
    if (v305 & 1 | ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0))
    {
      sub_100007000(&v356);
    }

    else
    {
      *(&v354 + 1) = &type metadata for CGFloat;
      v355 = &protocol witness table for CGFloat;
      *&v353 = v280;
      v352 = 0;
      v350 = 0u;
      v351 = 0u;
      v200 = v338;
      (v336)(v338, v320, v340);
      v201 = v343;
      (v333)(v199, v335, v343);
      v202 = swift_allocObject();
      *(v202 + 16) = v328;
      static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
      *&v347 = v202;
      v203 = v315;
      v204 = v339;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
      v324(v203, v204);
      v319(v199, v201);
      v318(v200, v340);
      sub_10002B894(&v350, &qword_1009799E0, qword_1007B5950);
      sub_100007000(&v353);
      v206 = *(v195 + 2);
      v205 = *(v195 + 3);
      if (v206 >= v205 >> 1)
      {
        v195 = sub_100033520((v205 > 1), v206 + 1, 1, v195);
      }

      sub_100007000(&v356);
      *(v195 + 2) = v206 + 1;
      v310(&v195[v313 + v206 * v316], v278, v312);
    }
  }

  else
  {
    sub_10002B894(&v353, &qword_100975610, &qword_1007B5690);
  }

  sub_100031660((v167 + 40), &v353, &unk_10097E890, qword_1007B4270);
  v323 = v197;
  if (*(&v354 + 1))
  {
    sub_100005A38(&v353, &v356);
    v207 = *(&v357 + 1);
    v208 = v358;
    v209 = sub_10002A400(&v356, *(&v357 + 1));
    *(&v354 + 1) = v207;
    v355 = v208[1];
    v210 = sub_1000056E0(&v353);
    (*(*(v207 - 8) + 16))(v210, v209, v207);
    *&v347 = v341;
    *(&v351 + 1) = &type metadata for CGFloat;
    v352 = &protocol witness table for CGFloat;
    Conditional.evaluate(with:)();
    v349 = 0;
    v347 = 0u;
    v348 = 0u;
    v211 = v195;
    v212 = v338;
    v213 = v340;
    (v336)(v338, v320, v340);
    v214 = v343;
    (v333)(v199, v335, v343);
    v215 = swift_allocObject();
    *(v215 + 16) = v328;
    static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    v346 = v215;
    v216 = v315;
    v217 = v339;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
    v324(v216, v217);
    v319(v199, v214);
    v218 = v212;
    v195 = v211;
    v318(v218, v213);
    sub_10002B894(&v347, &qword_1009799E0, qword_1007B5950);
    sub_100007000(&v350);
    sub_100007000(&v353);
    v220 = *(v211 + 2);
    v219 = *(v211 + 3);
    if (v220 >= v219 >> 1)
    {
      v195 = sub_100033520((v219 > 1), v220 + 1, 1, v211);
    }

    *(v195 + 2) = v220 + 1;
    v310(&v195[v313 + v220 * v316], v294, v312);
    sub_100007000(&v356);
  }

  else
  {
    sub_10002B894(&v353, &unk_10097E890, qword_1007B4270);
  }

  sub_100031660((v167 + 45), &v353, &unk_10097E890, qword_1007B4270);
  if (*(&v354 + 1))
  {
    v221 = v315;
    v222 = v343;
    sub_100005A38(&v353, &v356);
    v223 = *(&v357 + 1);
    v224 = v358;
    v225 = sub_10002A400(&v356, *(&v357 + 1));
    *(&v354 + 1) = v223;
    v355 = v224[1];
    v226 = sub_1000056E0(&v353);
    (*(*(v223 - 8) + 16))(v226, v225, v223);
    v352 = 0;
    v350 = 0u;
    v351 = 0u;
    v227 = v338;
    v228 = v195;
    v229 = v340;
    (v336)(v338, v320, v340);
    (v333)(v199, v335, v222);
    v230 = swift_allocObject();
    *(v230 + 16) = v328;
    static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    *&v347 = v230;
    v231 = v339;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v232 = v279;
    static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
    v324(v221, v231);
    v319(v199, v222);
    v233 = v229;
    v234 = v228;
    v318(v227, v233);
    sub_10002B894(&v350, &qword_1009799E0, qword_1007B5950);
    sub_100007000(&v353);
    v235 = *(v228 + 2);
    v236 = *(v234 + 3);
    if (v235 >= v236 >> 1)
    {
      v234 = sub_100033520((v236 > 1), v235 + 1, 1, v234);
    }

    *(v234 + 2) = v235 + 1;
    v310(&v234[v313 + v235 * v316], v232, v312);
    sub_100007000(&v356);
  }

  else
  {
    sub_10002B894(&v353, &unk_10097E890, qword_1007B4270);
  }

  _VerticalFlowLayout.init(expandChildrenToFit:children:)();
  v237 = v290;
  v239 = MinY;
  v238 = v283;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)();
  sub_10002A400(v167 + 5, v167[8]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v343 = v240;
  v242 = v241;
  sub_10002A400(v167 + 5, v167[8]);
  dispatch thunk of LayoutView.frame.getter();
  v243 = CGRectGetMaxY(v371) - v242;
  v372.origin.x = v238;
  v372.origin.y = v239;
  v372.size.width = v77;
  v372.size.height = Height;
  v244 = CGRectGetMinX(v372);
  v373.origin.x = v238;
  v373.origin.y = v239;
  v373.size.width = v77;
  v373.size.height = Height;
  v245 = CGRectGetWidth(v373);
  LayoutRect.origin.getter();
  v247 = v246;
  v374.origin.x = v238;
  v374.origin.y = v239;
  v374.size.width = v77;
  v374.size.height = Height;
  v248 = v247 + CGRectGetHeight(v374) - v243;
  sub_10002A400(v363, v364);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v344 = v244;
  v375.origin.x = v244;
  v375.origin.y = v243;
  v375.size.width = v245;
  v375.size.height = v248;
  v345 = CGRectGetMinX(v375);
  v376.origin.x = v244;
  v376.origin.y = v243;
  v376.size.width = v245;
  v376.size.height = v248;
  CGRectGetMinY(v376);
  sub_10002A400(v365, v365[3]);
  AnyDimension.topMargin(from:in:)();
  sub_10002A400(v363, v364);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_100031660((v167 + 30), &v353, &qword_100975610, &qword_1007B5690);
  if (!*(&v354 + 1))
  {
    sub_10002B894(&v353, &qword_100975610, &qword_1007B5690);
    v249 = v296;
    v251 = v285;
    v250 = v286;
    goto LABEL_56;
  }

  sub_100005A38(&v353, &v356);
  v249 = v296;
  v251 = v285;
  v250 = v286;
  if ((v305 & 1) == 0)
  {
    sub_10002A400(v167 + 25, v167[28]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(v167 + 25, v167[28]);
      dispatch thunk of LayoutView.frame.getter();
      CGRectGetMidY(v378);
      goto LABEL_58;
    }

    sub_100007000(&v356);
LABEL_56:
    v252 = v284;
    v253 = v303;
    goto LABEL_59;
  }

  sub_10002A400(v167 + 5, v167[8]);
  dispatch thunk of LayoutView.frame.getter();
  CGRectGetMinY(v377);
LABEL_58:
  v379.origin.x = v250;
  v379.origin.y = v251;
  v252 = v284;
  v379.size.width = v284;
  v253 = v303;
  v379.size.height = v303;
  CGRectGetMaxX(v379);
  sub_10002A400(&v356, *(&v357 + 1));
  v249 = v296;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_100007000(&v356);
LABEL_59:
  v380.origin.x = v250;
  v380.origin.y = v251;
  v380.size.width = v252;
  v380.size.height = v253;
  v254 = CGRectGetWidth(v380);
  v255 = LayoutRect.size.modify();
  *v256 = v254;
  v255(&v356, 0);
  v257 = (v322 + *(v321 + 68));
  sub_10002A400(v257, v257[3]);
  v258 = v307;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v260 = v259;
  v306(v258, v309);
  v261 = LayoutRect.size.modify();
  *(v262 + 8) = v260 + *(v262 + 8);
  v261(&v356, 0);
  sub_100031660((v167 + 50), &v353, &qword_100975610, &qword_1007B5690);
  if (*(&v354 + 1))
  {
    sub_100005A38(&v353, &v356);
    sub_10002A400(&v356, *(&v357 + 1));
    v264 = v298;
    v263 = v299;
    v381.origin.x = v298;
    v381.origin.y = v299;
    v265 = v300;
    v381.size.width = v300;
    v381.size.height = v249;
    CGRectGetMinX(v381);
    v382.origin.x = v264;
    v382.origin.y = v263;
    v382.size.width = v265;
    v382.size.height = v249;
    CGRectGetMinY(v382);
    v383.origin.x = v264;
    v383.origin.y = v263;
    v383.size.width = v265;
    v383.size.height = v249;
    CGRectGetWidth(v383);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v356);
  }

  else
  {
    sub_10002B894(&v353, &qword_100975610, &qword_1007B5690);
  }

  sub_100031660((v167 + 55), &v353, &qword_100975610, &qword_1007B5690);
  if (*(&v354 + 1))
  {
    sub_100005A38(&v353, &v356);
    sub_10002A400(&v356, *(&v357 + 1));
    v266 = v298;
    v267 = v299;
    v384.origin.x = v298;
    v384.origin.y = v299;
    v268 = v300;
    v384.size.width = v300;
    v384.size.height = v249;
    CGRectGetMinX(v384);
    v385.origin.x = v266;
    v385.origin.y = v267;
    v385.size.width = v268;
    v385.size.height = v249;
    CGRectGetMaxY(v385);
    v269 = v287;
    sub_10002A400(v257, v257[3]);
    v270 = v307;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v306(v270, v309);
    v386.origin.x = v266;
    v386.origin.y = v267;
    v386.size.width = v268;
    v386.size.height = v249;
    CGRectGetWidth(v386);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v356);
  }

  else
  {
    sub_10002B894(&v353, &qword_100975610, &qword_1007B5690);
    v269 = v287;
  }

  v271 = LayoutRect.size.modify();
  *(v272 + 8) = v297 + *(v272 + 8);
  v271(&v356, 0);
  v273 = LayoutRect.size.modify();
  *(v274 + 8) = v269 + *(v274 + 8);
  v273(&v356, 0);
  (*(v288 + 8))(v304, v289);
  sub_100007000(v366);
  (*(v291 + 32))(v293, v237, v292);
  return sub_10002B894(v359, &qword_1009856E0, &qword_1007C6240);
}

double ProductLockupAccessibilityLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_1002D6F40(a1, v3, a2, a3);
}

double sub_1002D6F40(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a2 + 35, a2[38]);
  v10 = dispatch thunk of LayoutView.isHidden.getter();
  v11 = 0.0;
  v12 = 0.0;
  if ((v10 & 1) == 0)
  {
    sub_10002A400(a2 + 35, a2[38]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v14 = v13;
    v11 = v15;
    v16 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v17 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400(&v16[*(v17 + 56)], *&v16[*(v17 + 56) + 24]);
    AnyDimension.topMargin(from:in:)();
    v12 = v14 - v11 + v18;
  }

  v48 = v12;
  sub_100031660((a2 + 40), &v50, &unk_10097E890, qword_1007B4270);
  if (v51)
  {
    sub_100005A38(&v50, v52);
    sub_10002A400(v52, v53);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v20 = v19;
    v11 = v21;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v49 = a1;
    sub_10002849C(&qword_100979010, qword_1007BE140);
    Conditional.evaluate(with:)();
    v49 = v50;
    v22 = v20;
    AnyDimension.topMargin(from:in:)();
    v24 = v23;
    sub_100007000(v52);
    v47 = v11;
  }

  else
  {
    sub_10002B894(&v50, &unk_10097E890, qword_1007B4270);
    v22 = JUMeasurementsZero[1];
    v47 = JUMeasurementsZero[3];
    v24 = 0.0;
  }

  sub_100031660((a2 + 45), &v50, &unk_10097E890, qword_1007B4270);
  if (v51)
  {
    sub_100005A38(&v50, v52);
    sub_10002A400(v52, v53);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v26 = v25;
    v46 = v24;
    v11 = v27;
    v28 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v29 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400(&v28[*(v29 + 64)], *&v28[*(v29 + 64) + 24]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v31 = v30;
    (*(v7 + 8))(v9, v6);
    *&v50 = v31;
    v24 = v46;
    AnyDimension.topMargin(from:in:)();
    v33 = v32;
    sub_100007000(v52);
    v34 = v11;
  }

  else
  {
    sub_10002B894(&v50, &unk_10097E890, qword_1007B4270);
    v26 = JUMeasurementsZero[1];
    v34 = JUMeasurementsZero[3];
    v33 = 0.0;
  }

  sub_10002A400(a2 + 25, a2[28]);
  Measurable.measuredSize(fitting:in:)();
  v36 = v26 - v34 + v33 + v22 - v47 + v24 + v48 + v35;
  v37 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_10002A400(v37 + 9, *(v37 + 12));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v39 = v38;
  v40 = *(v7 + 8);
  v40(v9, v6);
  v41 = v36 + v39;
  v42 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_10002A400(&v37[*(v42 + 68)], *&v37[*(v42 + 68) + 24]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v44 = v43;
  v40(v9, v6);
  return v11 + v41 + v44;
}

double sub_1002D74C8(void *a1, void *a2, uint64_t a3, double a4)
{
  v89 = a3;
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v94 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64));
  v11 = *v10;
  v12 = a4 - v10[1];
  v14 = v10[2];
  v13 = v10[3];
  v92 = v10;
  v15 = v12 - v13;
  v87 = v14;
  v88 = v11;
  v16 = a4 - v11 - v14;
  v17 = [a1 traitCollection];
  v18 = UITraitCollection.isSizeClassRegular.getter();

  sub_100031660((a2 + 30), v104, &qword_100975610, &qword_1007B5690);
  if (v105)
  {
    sub_10002A400(v104, v105);
    Measurable.measuredSize(fitting:in:)();
    v20 = v19;
    sub_100007000(v104);
  }

  else
  {
    sub_10002B894(v104, &qword_100975610, &qword_1007B5690);
    v20 = 0.0;
  }

  sub_100031660((a2 + 30), v104, &qword_100975610, &qword_1007B5690);
  v21 = v105;
  sub_10002B894(v104, &qword_100975610, &qword_1007B5690);
  v90 = v8;
  v91 = v7;
  if (v21)
  {
    v22 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400((v92 + *(v22 + 48)), *(v92 + *(v22 + 48) + 24));
    v23 = v94;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v25 = v24;
    (*(v8 + 8))(v23, v7);
    if (v18)
    {
LABEL_6:
      v26 = v15 - v20 - v25;
      goto LABEL_9;
    }
  }

  else
  {
    v25 = 0.0;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  v26 = v15;
LABEL_9:
  v93 = v26;
  sub_10002A400(a2 + 5, a2[8]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v28 = v27;
  v30 = v29;
  v31 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v102 = a1;
  sub_10002849C(&qword_100979010, qword_1007BE140);
  v32 = a2;
  v33 = v92;
  Conditional.evaluate(with:)();
  *&v102 = v104[0];
  v84 = v30;
  v85 = v28;
  AnyDimension.topMargin(from:in:)();
  v83 = v34;
  sub_10002A400(v32 + 5, v32[8]);
  dispatch thunk of LayoutTextView.languageAwareOutsets.getter();
  v82 = v35;
  sub_10002A400(v32 + 10, v32[13]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v37 = v36;
  v39 = v38;
  v40 = *(v31 + 36);
  *&v102 = a1;
  v81 = v40;
  v41 = v33;
  Conditional.evaluate(with:)();
  *&v102 = v104[0];
  AnyDimension.topMargin(from:in:)();
  v42 = v16;
  v44 = v37 - v39 + v43;
  v45 = (v32 + 15);
  v95 = v32;
  sub_10002A400(v32 + 15, v32[18]);
  v86 = v42;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v47 = v46;
  v49 = v48;
  *&v102 = a1;
  Conditional.evaluate(with:)();
  *&v102 = v104[0];
  AnyDimension.topMargin(from:in:)();
  v51 = v47 - v49 + v50;
  if (v51 >= v44)
  {
    sub_10002C0AC(v45, &v102);
    v45 = (v32 + 10);
  }

  else
  {
    sub_10002C0AC((v32 + 10), &v102);
  }

  sub_10002C0AC(v45, &v100);
  v99[0] = a1;
  Conditional.evaluate(with:)();
  v52 = v104[0];
  v99[0] = a1;
  Conditional.evaluate(with:)();
  v53 = v104[0];
  if (v51 >= v44)
  {
    v54 = v104[0];
  }

  else
  {
    v54 = v52;
  }

  v99[3] = &type metadata for CGFloat;
  v99[4] = &protocol witness table for CGFloat;
  v99[0] = v54;
  if (v51 >= v44)
  {
    v53 = v52;
  }

  v97 = &type metadata for CGFloat;
  v98 = &protocol witness table for CGFloat;
  *&v96 = v53;
  sub_100005A38(&v102, v104);
  sub_10002C0AC(v99, v106);
  sub_100005A38(&v100, &v107);
  sub_100005A38(&v96, &v108);
  sub_100007000(v99);
  sub_10002A400(v104, v105);
  v55 = v93;
  v56 = v86;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v58 = v57;
  v60 = v59;
  sub_10002A400(v106, v106[3]);
  AnyDimension.topMargin(from:in:)();
  v62 = v61;
  sub_100031660((v95 + 20), &v100, &unk_10097E890, qword_1007B4270);
  v63 = v91;
  if (v101)
  {
    sub_100005A38(&v100, &v102);
    sub_10002A400(&v102, v103);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v65 = v64;
    v67 = v66;
    v99[0] = a1;
    Conditional.evaluate(with:)();
    v99[0] = v100;
    v55 = v93;
    AnyDimension.topMargin(from:in:)();
    v69 = v65 - v67 + v68;
    sub_100007000(&v102);
  }

  else
  {
    sub_10002B894(&v100, &unk_10097E890, qword_1007B4270);
    v69 = 0.0;
  }

  v70 = v90;
  v71 = v69 + v58 - v60 + v62 + v85 - v84 + v83 + v82 + v41[15];
  sub_10002A400((v41 + *(v31 + 52)), *(v41 + *(v31 + 52) + 24));
  v72 = v94;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v74 = v73;
  v75 = *(v70 + 8);
  v75(v72, v63);
  v76 = v71 + v74 + sub_1002D6F40(a1, v95, v55, v56);
  sub_10002A400(v41 + 4, *(v41 + 7));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v78 = v77;
  v75(v72, v63);
  v79 = v87 + v88 + v76 + v78;
  sub_10002B894(v104, &qword_1009856E0, &qword_1007C6240);
  return v79;
}

double sub_1002D7D34(void *a1, void *a2, uint64_t a3, double a4)
{
  sub_1002D74C8(a1, a2, a3, a4);
  type metadata accessor for ProductLockupAccessibilityLayout(0);
  return a4;
}

uint64_t sub_1002D7D88(uint64_t a1)
{
  *(a1 + 8) = sub_1002D7E0C(&qword_10097E8C0, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
  result = sub_1002D7E0C(&qword_10097E8C8, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002D7E0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002D7E7C(uint64_t a1)
{
  sub_100154428(319, &unk_10098A3C0, &protocol descriptor for LayoutView);
  if (v1 <= 0x3F)
  {
    sub_100154428(319, &qword_10097E940, &protocol descriptor for LayoutTextView);
    if (v2 <= 0x3F)
    {
      sub_100154308(319, &unk_10098A3D0, &unk_10097E950, &qword_1007B1360);
      if (v3 <= 0x3F)
      {
        sub_100154308(319, &qword_10098A3E0, &unk_10097E960, &unk_1007B1330);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ProductLockupAccessibilityLayout.Metrics(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002D7FE4(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    sub_100154428(319, &qword_1009842D0, &protocol descriptor for AnyDimension);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_1002D80C4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002D80C4(uint64_t a1)
{
  if (!qword_10097EA30[0])
  {
    sub_10002D1A8(&qword_100973F50, &qword_1007B4260);
    v1 = type metadata accessor for Conditional();
    if (!v2)
    {
      atomic_store(v1, qword_10097EA30);
    }
  }
}

char *sub_1002D8130(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for CornerStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_formattedDatePlaceholder;
  type metadata accessor for Placeholder();
  v15 = static Placeholder.titleText.getter();
  v17 = v16;
  if (qword_10096E398 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D1A48);
  v20 = sub_10025097C(v15, v17, v19);

  *&v5[v14] = v20;
  v21 = OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_appEventPlaceholder;
  (*(v11 + 104))(v13, enum case for CornerStyle.continuous(_:), v10);
  type metadata accessor for RoundedCornerView();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondarySystemBackgroundColor];
  [v24 setBackgroundColor:v25];

  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  (*(v11 + 8))(v13, v10);
  *&v5[v21] = v24;
  v26 = type metadata accessor for AppEventPlaceholderView();
  v31.receiver = v5;
  v31.super_class = v26;
  v27 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v28 = *&v27[OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_formattedDatePlaceholder];
  v29 = v27;
  [v29 addSubview:v28];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_appEventPlaceholder]];

  return v29;
}

uint64_t sub_1002D840C()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for AppEventPlaceholderView();
  v28.receiver = v0;
  v28.super_class = v10;
  objc_msgSendSuper2(&v28, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  result = CGRectIsEmpty(v29);
  if ((result & 1) == 0)
  {
    v23 = v2;
    if (qword_10096D5D8 != -1)
    {
      swift_once();
    }

    sub_1002C9618(&unk_1009CEDC8, v26);
    v12 = *&v0[OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_formattedDatePlaceholder];
    v25[3] = type metadata accessor for DynamicTypeLabel();
    v25[4] = &protocol witness table for UILabel;
    v25[0] = v12;
    sub_1002C9618(v26, v24);
    v13 = v12;
    static Locale.storefront.getter();
    LOBYTE(v12) = Locale.hasExtraTallWritingSystem.getter();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      LayoutTextView.withLanguageAwareOutsets.getter();
      sub_1002C9674(v26);
    }

    else
    {
      sub_1002C9674(v26);
      sub_10002C0AC(v25, &v24[168]);
    }

    memset(&v24[208], 0, 120);
    memcpy(v27, v24, sizeof(v27));
    sub_100007000(v25);
    LayoutMarginsAware<>.layoutFrame.getter();
    AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(v1, v14, v15, v16, v17);
    (*(v3 + 8))(v5, v23);
    LayoutMarginsAware<>.layoutFrame.getter();
    sub_1002C97E0();
    v19 = v18;
    v20 = *(v1 + OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_appEventPlaceholder);
    LayoutMarginsAware<>.layoutFrame.getter();
    MinX = CGRectGetMinX(v30);
    LayoutMarginsAware<>.layoutFrame.getter();
    Width = CGRectGetWidth(v31);
    LayoutMarginsAware<>.layoutFrame.getter();
    [v20 setFrame:{MinX, v19, Width, CGRectGetHeight(v32) - v19}];
    return sub_1001A927C(v27);
  }

  return result;
}

id sub_1002D87BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppEventPlaceholderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002D8860()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_formattedDatePlaceholder;
  type metadata accessor for Placeholder();
  v7 = static Placeholder.titleText.getter();
  v9 = v8;
  if (qword_10096E398 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, qword_1009D1A48);
  v12 = sub_10025097C(v7, v9, v11);

  *(v1 + v6) = v12;
  v13 = OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_appEventPlaceholder;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  type metadata accessor for RoundedCornerView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 secondarySystemBackgroundColor];
  [v16 setBackgroundColor:v17];

  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  (*(v3 + 8))(v5, v2);
  *(v1 + v13) = v16;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002D8A94(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v74 = a3;
  v72 = a2;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AdamId();
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v75 = &v65 - v11;
  v12 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v65 - v13;
  v15 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v15 - 8);
  v17 = &v65 - v16;
  v18 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v18 - 8);
  v20 = &v65 - v19;
  v21 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v21 - 8);
  v23 = &v65 - v22;
  v24 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  *&v25 = __chkstk_darwin(v24 - 8).n128_u64[0];
  v27 = &v65 - v26;
  v28 = OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView;
  v29 = *&v4[OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView];
  v78 = a1;
  if (v29 || (v30 = [v4 traitCollection], v31 = v8, v32 = v4, v33 = sub_10021B990(v30), v30, v34 = v33, v4 = v32, v8 = v31, sub_10021AE78(v34), sub_10021AE84(0), (v29 = *&v4[v28]) != 0))
  {
    v35 = sub_10002849C(&unk_100973240, qword_1007B2220);
    v36 = *(*(v35 - 8) + 56);
    v77 = v27;
    v36(v27, 1, 1, v35);
    v70 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView;
    v37 = *&v29[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView];
    v76 = v29;
    v38 = Lockup.icon.getter();
    if (v38)
    {
    }

    [v37 setHidden:v38 == 0];
    v39 = v76;
    v40 = *&v76[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
    v41 = type metadata accessor for OfferStyle();
    (*(*(v41 - 8) + 56))(v23, 1, 1, v41);
    v42 = type metadata accessor for OfferEnvironment();
    (*(*(v42 - 8) + 56))(v20, 1, 1, v42);
    v43 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
    (*(*(v43 - 8) + 56))(v17, 1, 1, v43);
    v44 = type metadata accessor for OfferTint();
    (*(*(v44 - 8) + 56))(v14, 1, 1, v44);
    sub_1004F3190(v78, v40, v77, v74, 1, 0, v23, v20, v14, v17);
    sub_10002B894(v14, &unk_100973AD0, &unk_1007B17C0);
    v40[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v40 setNeedsLayout];
    sub_10002B894(v17, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v20, &unk_100970160, &unk_1007BDDE0);
    sub_10002B894(v23, &qword_100973AE0, &unk_1007B17D0);
    v45 = v75;
    Lockup.adamId.getter();
    v46 = Lockup.crossLinkTitle.getter();
    v48 = v47;
    v68 = Lockup.crossLinkSubtitle.getter();
    v50 = v49;
    v51 = Lockup.includeBetaApps.getter();
    if (v48 && v50)
    {
      v52 = v51;
      v67 = v46;
      v53 = v73;
      v54 = v69;
      (*(v73 + 16))(v69, v45, v8);
      sub_10002849C(&unk_100973AF0, &qword_1007B3960);
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v66 = v8;
      v55 = v79[0];
      type metadata accessor for CrossLinkPresenter(0);
      swift_allocObject();
      v56 = v76;
      v74 = v4;
      v57 = v56;
      v39 = v76;
      v58 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v54, v67, v48, v68, v50, v52 & 1, v29, &off_1008B5970, v55, *(&v55 + 1));
      (*(v53 + 8))(v75, v66);
      sub_10002B894(v77, &unk_100973230, &unk_1007B17E0);
      v59 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v57[v59] = v58;
      v4 = v74;
    }

    else
    {

      v60 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v39[v60] = 0;

      v61 = sub_10014024C(0, 0);
      (*(v73 + 8))(v45, v8, v61);
      sub_10002B894(v77, &unk_100973230, &unk_1007B17E0);
    }

    if (Lockup.icon.getter())
    {
      if (qword_10096D420 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v62, qword_1009CE9A0);
      SmallLockupLayout.Metrics.artworkSize.getter();
      v63 = v70;
      [*&v29[v70] contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      v64 = *&v29[v63];
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v64 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v80 = 0;
      memset(v79, 0, sizeof(v79));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_10002B894(v79, &qword_10096FB90, &qword_1007B2A50);
    }

    [v4 setNeedsLayout];
  }
}

void sub_1002D93E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);

    v9 = a1;
    ArtworkView.image.setter();
  }
}

void sub_1002D9464(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v2[OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView])
  {
    v18 = *&v2[OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView];
    if (v18)
    {
      goto LABEL_9;
    }
  }

  sub_10021AE78(0);
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v10, qword_1009D0758);
  (*(v11 + 16))(v13, v14, v10);
  if (qword_10096D428 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v6, qword_1009CE9B8);
  (*(v7 + 16))(v9, v15, v6);
  v16 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  v17 = sub_1001C6E04(v13, v9, 0, 0.0, 0.0, 0.0, 0.0);
  [v17 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];
  sub_10021AE84(v17);
  v18 = *&v3[OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView];
  if (v18)
  {
LABEL_9:
    v19 = v18;
    [v3 setNeedsLayout];
  }
}

void sub_1002D9730()
{
  if (*(v0 + 24) == 1 && (v1 = *(v0 + 16)) != 0 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
  {
    v3 = (v0 + 25);
    v13 = *(v0 + 25);
    *(v0 + 25) = 1;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = (v0 + 25);
    v4 = *(v0 + 25);
    *(v0 + 25) = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(v0 + 16);
  if (!v5 || (v6 = [v5 rightBarButtonItems]) == 0)
  {
LABEL_16:
    v14 = *(v0 + 16);
    if (v14)
    {
      goto LABEL_17;
    }

    return;
  }

  v7 = v6;
  sub_100039F40();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_31;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
LABEL_9:
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v11 = *(v8 + 8 * i + 32);
        }

        v12 = v11;
        [v11 setHidden:*v3];
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    while (1)
    {

      v14 = *(v0 + 16);
      if (!v14)
      {
        break;
      }

LABEL_17:
      v15 = [v14 rightBarButtonItems];
      if (!v15)
      {
        return;
      }

      v16 = v15;
      sub_100039F40();
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v8 >> 62)
      {
        v0 = _CocoaArrayWrapper.endIndex.getter();
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v0 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      if (v0 >= 1)
      {
        for (j = 0; j != v0; ++j)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v18 = *(v8 + 8 * j + 32);
          }

          v19 = v18;
          [v18 setHidden:*v3];
        }

LABEL_27:

        return;
      }

      __break(1u);
LABEL_31:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (v9)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_1002D9980()
{

  return swift_deallocClassInstance();
}

void sub_1002D99E0()
{
  if (*(v0 + 24) == 1)
  {
    v1 = *(v0 + 16);
    if (v1 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
    {
      v4 = *(v0 + 25);
      *(v0 + 25) = 1;
      if (v4)
      {
        return;
      }
    }

    else
    {
      v3 = *(v0 + 25);
      *(v0 + 25) = 0;
      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    v5 = (v0 + 25);
    v6 = *(v0 + 16);
    if (v6)
    {
      v7 = [v6 rightBarButtonItems];
      if (v7)
      {
        v8 = v7;
        sub_100039F40();
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v9 >> 62)
        {
          v10 = _CocoaArrayWrapper.endIndex.getter();
          if (v10)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10)
          {
LABEL_11:
            if (v10 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v10; ++i)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v12 = *(v9 + 8 * i + 32);
              }

              v13 = v12;
              [v12 setHidden:*v5];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1002D9B58()
{
  v0 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  sub_100005644(v0, qword_1009CF328);
  sub_1000056A8(v0, qword_1009CF328);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_1002D9C08()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TitledParagraphLayout.Metrics();
  sub_100005644(v4, qword_1009CF358);
  sub_1000056A8(v4, qword_1009CF358);
  if (qword_10096DE20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D09E0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v12[3] = type metadata accessor for StaticDimension();
  v12[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v12);
  v10 = v0;
  v11 = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v9);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  v10 = type metadata accessor for ZeroDimension();
  v11 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v9);
  static ZeroDimension.zero.getter();
  return TitledParagraphLayout.Metrics.init(textSpace:bodyTopSpace:columnWidth:columnMargin:)();
}

uint64_t sub_1002D9E4C(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = type metadata accessor for FontSource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v20 = *(v9 - 8);
  v21 = v9;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TitledParagraphLayout.Metrics();
  sub_100005644(v12, a4);
  v22 = sub_1000056A8(v12, a4);
  if (qword_10096DE20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v13, qword_1009D09E0);
  v14 = *(*(v13 - 8) + 16);
  v14(v8, v19, v13);
  v15 = enum case for FontSource.useCase(_:);
  v16 = *(v6 + 104);
  v16(v8, enum case for FontSource.useCase(_:), v5);
  Conditional<>.init(accessibleLayoutConstant:regularLayoutConstant:source:)();
  Conditional<>.anyDimension.getter();
  (*(v20 + 8))(v11, v21);
  v14(v8, v19, v13);
  v16(v8, v15, v5);
  v24[3] = type metadata accessor for StaticDimension();
  v24[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v24);
  v23[3] = v5;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v23);
  (*(v6 + 16))(v17, v8, v5);
  StaticDimension.init(_:scaledLike:)();
  (*(v6 + 8))(v8, v5);
  return TitledParagraphLayout.Metrics.init(textSpace:bodyTopSpace:columnWidth:columnMargin:)();
}

char *sub_1002DA15C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v82 = type metadata accessor for DirectionalTextAlignment();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v74[-v12];
  v14 = type metadata accessor for Separator.Position();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for Separator();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v74[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_separatorView;
  (*(v15 + 104))(v17, enum case for Separator.Position.bottom(_:), v14, v20);
  v87[3] = type metadata accessor for ZeroDimension();
  v87[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v87);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v24 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v26 = *(v19 + 40);
  v27 = v24;
  v26(&v24[v25], v22, v18);
  swift_endAccess();

  *&v5[v23] = v27;
  v28 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView;
  v84 = sub_100005744(0, &qword_100970180, UIColor_ptr);
  v29 = static UIColor.defaultBackground.getter();
  v30 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v31 = sub_10059F344(v29, 0.0, 0.0, 0.0, 0.0);
  v83 = v5;
  *&v5[v28] = v31;
  v79 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  if (qword_10096DE20 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for FontUseCase();
  v33 = sub_1000056A8(v32, qword_1009D09E0);
  v34 = *(v32 - 8);
  v77 = *(v34 + 16);
  v78 = v33;
  v77(v13, v33, v32);
  v76 = *(v34 + 56);
  v76(v13, 0, 1, v32);
  v75 = enum case for DirectionalTextAlignment.none(_:);
  v35 = v81;
  v80 = *(v80 + 104);
  v36 = v82;
  (v80)(v81);
  v37 = type metadata accessor for DynamicTypeLabel();
  v38 = objc_allocWithZone(v37);
  v39 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = v83;
  v41 = v78;
  *&v83[v79] = v39;
  v79 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v77(v13, v41, v32);
  v76(v13, 0, 1, v32);
  (v80)(v35, v75, v36);
  v42 = objc_allocWithZone(v37);
  *&v40[v79] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v43 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_itemLayoutContext;
  v44 = type metadata accessor for ItemLayoutContext();
  (*(*(v44 - 8) + 56))(&v40[v43], 1, 1, v44);
  v40[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_useDetailPageStyling] = 0;
  *&v40[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_pageTraits] = 0;
  v45 = type metadata accessor for TitledParagraphCollectionViewCell(0);
  v86.receiver = v40;
  v86.super_class = v45;
  v46 = objc_msgSendSuper2(&v86, "initWithFrame:", a1, a2, a3, a4);
  v47 = [v46 contentView];
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v48 = [v46 contentView];
  v49 = static UIColor.defaultBackground.getter();
  [v48 setBackgroundColor:v49];

  v50 = [v46 contentView];
  [v50 addSubview:*&v46[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_separatorView]];

  v51 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  v52 = *&v46[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  v53 = static UIColor.secondaryText.getter();
  [v52 setTextColor:v53];

  v54 = *&v46[v51];
  v55 = static UIColor.defaultBackground.getter();
  [v54 setBackgroundColor:v55];

  [*&v46[v51] setNumberOfLines:1];
  v56 = [v46 contentView];
  [v56 addSubview:*&v46[v51]];

  v57 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v58 = *&v46[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
  v59 = static UIColor.secondaryText.getter();
  [v58 setTextColor:v59];

  v60 = *&v46[v57];
  v61 = static UIColor.defaultBackground.getter();
  [v60 setBackgroundColor:v61];

  v62 = v46;
  v63 = [v62 contentView];
  [v63 addSubview:*&v46[v57]];

  v64 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView;
  v65 = qword_10096D650;
  v66 = *&v62[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView];
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  sub_1000056A8(v67, qword_1009CF328);
  v85 = v62;
  Conditional.evaluate(with:)();

  v68 = v87[0];
  v69 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
  v70 = *&v66[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  *&v66[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines] = v87[0];
  v71 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if (v66[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] == 1)
  {
    [*&v66[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] setNumberOfLines:?];
    v68 = *&v66[v69];
  }

  if (v68 != v70 && (v66[v71] & 1) != 0)
  {
    sub_1005A0320();
  }

  v72 = [v62 contentView];
  [v72 addSubview:*&v62[v64]];

  return v62;
}

id sub_1002DAA90()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  if (v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_useDetailPageStyling] == 1)
  {
    if (qword_10096DE28 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for FontUseCase();
    v7 = sub_1000056A8(v6, qword_1009D09F8);
    v8 = *(v6 - 8);
    (*(v8 + 16))(v4, v7, v6);
    (*(v8 + 56))(v4, 0, 1, v6);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v9 = static UIColor.primaryText.getter();
  }

  else
  {
    if (qword_10096DE20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for FontUseCase();
    v11 = sub_1000056A8(v10, qword_1009D09E0);
    v12 = *(v10 - 8);
    (*(v12 + 16))(v4, v11, v10);
    (*(v12 + 56))(v4, 0, 1, v10);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v9 = static UIColor.secondaryText.getter();
  }

  v13 = v9;
  [v5 setTextColor:v9];

  return [v1 setNeedsLayout];
}

void *sub_1002DAD18()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v74 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for TitledParagraphLayout();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TitledParagraphLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v65 - v10;
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  v15 = type metadata accessor for Separator();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TitledParagraphCollectionViewCell(0);
  v77.receiver = v1;
  v77.super_class = v19;
  objc_msgSendSuper2(&v77, "layoutSubviews");
  result = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_pageTraits];
  if (result)
  {
    v68 = v3;
    v69 = v2;
    v21 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_separatorView];
    v70 = result;
    swift_unknownObjectRetain();
    [v1 bounds];
    v22 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
    swift_beginAccess();
    (*(v16 + 16))(v18, &v21[v22], v15);
    Separator.frame(forBoundingRect:in:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    (*(v16 + 8))(v18, v15);
    [v21 setFrame:{v24, v26, v28, v30}];
    v31 = [v1 contentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    LayoutMarginsAware<>.layoutFrame.getter();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = [v1 traitCollection];
    v41 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_useDetailPageStyling;
    v42 = v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_useDetailPageStyling];
    v67 = v40;
    if ((v42 & 1) != 0 || (static TitledParagraphLayout.isMultiColumn(compatibleWith:)() & 1) == 0)
    {
      v50 = UITraitCollection.prefersAccessibilityLayouts.getter();
      v66 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel];
      [v66 setTextAlignment:0];
      if (v50)
      {
        v51 = 0;
      }

      else
      {
        v51 = 2;
      }

      [*&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel] setTextAlignment:{v51, *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel]}];
      if (v1[v41] == 1)
      {
        v49 = v68;
        v46 = v14;
        if (qword_10096D668 != -1)
        {
          swift_once();
        }

        v52 = qword_1009CF370;
      }

      else
      {
        v49 = v68;
        v46 = v14;
        if (qword_10096D658 != -1)
        {
          swift_once();
        }

        v52 = qword_1009CF340;
      }

      v47 = v7;
      v53 = sub_1000056A8(v6, v52);
      v45 = *(v7 + 16);
      v45(v11, v53, v6);
      (*(v7 + 32))(v46, v11, v6);
    }

    else
    {
      v66 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel];
      [v66 setTextAlignment:2];
      v65 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
      [v65 setTextAlignment:2];
      v78.origin.x = v33;
      v78.origin.y = v35;
      v78.size.width = v37;
      v78.size.height = v39;
      Width = CGRectGetWidth(v78);
      if (qword_10096D660 != -1)
      {
        swift_once();
      }

      v44 = sub_1000056A8(v6, qword_1009CF358);
      v45 = *(v7 + 16);
      v46 = v14;
      v47 = v7;
      v45(v46, v44, v6);
      v48 = v70;
      sub_1002DBD10(v70, Width);
      TitledParagraphLayout.Metrics.columnWidth.setter();
      [v48 pageMarginInsets];
      TitledParagraphLayout.Metrics.columnMargin.setter();
      v49 = v68;
    }

    v45(v71, v46, v6);
    v54 = type metadata accessor for DynamicTypeLabel();
    v68 = v6;
    v55 = v46;
    v76[13] = v54;
    v76[14] = &protocol witness table for UIView;
    v56 = v66;
    v76[9] = &protocol witness table for UIView;
    v76[10] = v66;
    v76[8] = v54;
    v57 = v65;
    v76[5] = v65;
    v58 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView];
    v59 = type metadata accessor for ExpandableTextView();
    v76[4] = &protocol witness table for UIView;
    v76[3] = v59;
    v76[0] = v58;
    v60 = v56;
    v61 = v57;
    v62 = v58;
    v63 = v72;
    TitledParagraphLayout.init(metrics:allowsMultiColumn:primaryText:secondaryText:bodyText:)();
    v64 = v74;
    TitledParagraphLayout.placeChildren(relativeTo:in:)();
    swift_unknownObjectRelease();

    (*(v49 + 8))(v64, v69);
    (*(v73 + 8))(v63, v75);
    return (*(v47 + 8))(v55, v68);
  }

  return result;
}

double sub_1002DB538(void *a1, char a2, double a3, double a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v15 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v52 - v17;
  if (a2)
  {
    v19 = [a1 traitCollection];
    v20 = static TitledParagraphLayout.isMultiColumn(compatibleWith:)();

    if (v20)
    {
      v21 = sub_1002DBD10(a6, a3);
      [a6 pageMarginInsets];
      a3 = a3 - (v21 + v22);
    }
  }

  if (a7)
  {
    v23 = a3 <= a4 ? a3 : a4;
    if (v23 != 0.0)
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v27 = a7;
      v28 = [a1 traitCollection];
      v29 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v30 = objc_allocWithZone(v29);
      v31 = &v30[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins];
      *v31 = UIEdgeInsetsZero.top;
      v31[1] = left;
      v31[2] = bottom;
      v31[3] = right;
      *&v30[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines] = a8;
      v32 = &v30[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize];
      *v32 = a3;
      v32[1] = a4;
      *&v30[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_traitCollection] = v28;
      *&v30[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_attributedText] = v27;
      v53.receiver = v30;
      v53.super_class = v29;
      v33 = objc_msgSendSuper2(&v53, "init");
      if (qword_10096E9D0 != -1)
      {
        swift_once();
      }

      v34 = qword_10098CEC8;
      v35 = [qword_10098CEC8 objectForKey:v33];
      if (v35)
      {
        v36 = v35;

        a3 = *&v36[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
      }

      else
      {
        v37 = qword_10096E9C8;
        v36 = v27;
        if (v37 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for FontUseCase();
        v39 = sub_1000056A8(v38, qword_10098CEB0);
        v40 = *(v38 - 8);
        (*(v40 + 16))(v18, v39, v38);
        (*(v40 + 56))(v18, 0, 1, v38);
        static TextMeasurable.defaultTextAlignment.getter();
        static TextMeasurable.defaultLineBreakMode.getter();
        static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)();
        v42 = v41;
        v44 = v43;
        v46 = v45;

        sub_10002B894(v18, &qword_100972ED0, &unk_1007B17B0);
        v47 = type metadata accessor for ExpandableTextView.CacheValue();
        v48 = objc_allocWithZone(v47);
        v49 = &v48[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
        *v49 = a3;
        v49[1] = UIEdgeInsetsZero.top + bottom + v42;
        *(v49 + 2) = v44;
        *(v49 + 3) = v46;
        v52.receiver = v48;
        v52.super_class = v47;
        v50 = objc_msgSendSuper2(&v52, "init");
        [v34 setObject:v50 forKey:v33];
      }
    }
  }

  return a3;
}

void sub_1002DB940(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TitledParagraphCollectionViewCell(0);
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView];
  if (qword_10096D650 != -1)
  {
    swift_once();
  }

  v4 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  sub_1000056A8(v4, qword_1009CF328);
  v10 = v1;
  v5 = v1;
  Conditional.evaluate(with:)();

  v6 = v11;
  v7 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
  v8 = *(v3 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines);
  *(v3 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines) = v11;
  v9 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if (*(v3 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed) == 1)
  {
    [*(v3 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setNumberOfLines:v10];
    v6 = *(v3 + v7);
  }

  if (v6 != v8 && (*(v3 + v9) & 1) != 0)
  {
    sub_1005A0320();
  }
}

id sub_1002DBB20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitledParagraphCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TitledParagraphCollectionViewCell(uint64_t a1)
{
  result = qword_10097EBD8;
  if (!qword_10097EBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002DBC48(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1002DBD10(void *a1, double a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  [a1 pageMarginInsets];
  v13 = (a2 + v12 * -4.0) / 5.0;
  static Dimensions.defaultRoundingRule.getter();
  v21 = v13;
  (*(v5 + 16))(v7, v11, v4);
  v14 = (*(v5 + 88))(v7, v4);
  if (v14 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v15 = round(v13);
LABEL_11:
    (*(v5 + 8))(v11, v4);
    return v15;
  }

  if (v14 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v15 = rint(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v15 = ceil(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v15 = floor(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v15 = trunc(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    (*(v5 + 8))(v11, v4);
    v17 = ceil(v13);
    v18 = floor(v13);
    if (v13 < 0.0)
    {
      return v18;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    Double._roundSlowPath(_:)();
    v19 = *(v5 + 8);
    v19(v11, v4);
    v19(v7, v4);
    return v21;
  }
}

void sub_1002DBF80()
{
  v1 = v0;
  v46 = type metadata accessor for DirectionalTextAlignment();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v3 - 8);
  v43 = &v37[-v4];
  v5 = type metadata accessor for Separator.Position();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Separator();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_separatorView;
  (*(v6 + 104))(v8, enum case for Separator.Position.bottom(_:), v5, v11);
  v48[3] = type metadata accessor for ZeroDimension();
  v48[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v48);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v15 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v17 = *(v10 + 40);
  v18 = v15;
  v17(&v15[v16], v13, v9);
  swift_endAccess();

  *(v1 + v14) = v18;
  v19 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView;
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v20 = static UIColor.defaultBackground.getter();
  v21 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v22 = sub_10059F344(v20, 0.0, 0.0, 0.0, 0.0);
  v47 = v1;
  *(v1 + v19) = v22;
  v42 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  if (qword_10096DE20 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D09E0);
  v25 = *(v23 - 8);
  v40 = *(v25 + 16);
  v41 = v24;
  v26 = v43;
  v40(v43, v24, v23);
  v39 = *(v25 + 56);
  v39(v26, 0, 1, v23);
  v38 = enum case for DirectionalTextAlignment.none(_:);
  v27 = v45;
  v44 = *(v44 + 104);
  v28 = v46;
  (v44)(v45);
  v29 = type metadata accessor for DynamicTypeLabel();
  v30 = objc_allocWithZone(v29);
  v31 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v32 = v47;
  v33 = v41;
  *(v47 + v42) = v31;
  v42 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v40(v26, v33, v23);
  v39(v26, 0, 1, v23);
  (v44)(v27, v38, v28);
  v34 = objc_allocWithZone(v29);
  *(v32 + v42) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v35 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_itemLayoutContext;
  v36 = type metadata accessor for ItemLayoutContext();
  (*(*(v36 - 8) + 56))(v32 + v35, 1, 1, v36);
  *(v32 + OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_useDetailPageStyling) = 0;
  *(v32 + OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_pageTraits) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002DC54C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell(0);
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = [v0 contentView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  v4 = *&v0[OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_productTapToRateView];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 setFrame:?];
  }

  v6 = *&v0[OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_productReviewActionsView];
  if (v6)
  {
    v7 = v6;
    [v0 bounds];
    [v7 setFrame:?];
  }
}

id sub_1002DC800(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  v4 = type metadata accessor for ItemLayoutContext();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_productTapToRateView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_productReviewActionsView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell(0);
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1002DC8F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericProductReviewActionCollectionViewCell(uint64_t a1)
{
  result = qword_10097EC10;
  if (!qword_10097EC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002DC9DC(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002DCA78()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Separator.Position();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Separator();
  sub_100005644(v8, qword_1009CF3B8);
  sub_1000056A8(v8, qword_1009CF3B8);
  (*(v5 + 104))(v7, enum case for Separator.Position.bottom(_:), v4);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v13[3] = type metadata accessor for StaticDimension();
  v13[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v13);
  v12[3] = v0;
  v12[4] = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v12);
  (*(v1 + 16))(v9, v3, v0);
  v10 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  return Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
}

char *sub_1002DCCC0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for Separator.Position();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor;
  sub_100028BB8();
  *&v4[v14] = static UIColor.defaultLine.getter();
  v15 = &v4[OBJC_IVAR____TtC8AppStore13SeparatorView_lineCompositingFilter];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  (*(v11 + 104))(v13, enum case for Separator.Position.bottom(_:), v10);
  v22[3] = type metadata accessor for ZeroDimension();
  v22[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v22);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore13SeparatorView_lineView] = v16;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  [v17 setUserInteractionEnabled:0];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v17 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v18 = OBJC_IVAR____TtC8AppStore13SeparatorView_lineView;
  [*&v17[OBJC_IVAR____TtC8AppStore13SeparatorView_lineView] setBackgroundColor:*&v17[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor]];
  [v17 addSubview:*&v17[v18]];

  return v17;
}

uint64_t sub_1002DCF64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore13SeparatorView_lineCompositingFilter;
  swift_beginAccess();
  sub_1002DD864(a1, v1 + v3);
  swift_endAccess();
  v4 = [*(v1 + OBJC_IVAR____TtC8AppStore13SeparatorView_lineView) layer];
  sub_10006C234(v1 + v3, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_10002A400(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100007000(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 setCompositingFilter:v11];

  swift_unknownObjectRelease();
  return sub_10003D444(a1);
}

id sub_1002DD370()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v1;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "layoutSubviews", v5);
  LayoutMarginsAware<>.layoutFrame.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v1 traitCollection];
  static Separator.thickness(compatibleWith:)();
  v18 = v17;

  swift_beginAccess();
  Separator.verticalOutset.getter();
  swift_endAccess();
  sub_10002A400(v25, v25[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v20 = v19;
  (*(v4 + 8))(v7, v3);
  sub_100007000(v25);
  v21 = *&v1[OBJC_IVAR____TtC8AppStore13SeparatorView_lineView];
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  v23 = v20 + CGRectGetMinY(v28);
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  return [v21 setFrame:{MinX, v23, CGRectGetWidth(v29), v18}];
}

uint64_t type metadata accessor for SeparatorView(uint64_t a1)
{
  result = qword_10097EC60;
  if (!qword_10097EC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002DD6E4(uint64_t a1)
{
  result = type metadata accessor for Separator();
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

double sub_1002DD790(void *a1, double a2, double a3)
{
  v7 = *v3;
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007B0B70;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

uint64_t sub_1002DD864(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009711D0, &unk_1007B1A10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1002DD8D4()
{
  v1 = type metadata accessor for Separator.Position();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor;
  sub_100028BB8();
  *(v0 + v5) = static UIColor.defaultLine.getter();
  v6 = (v0 + OBJC_IVAR____TtC8AppStore13SeparatorView_lineCompositingFilter);
  *v6 = 0u;
  v6[1] = 0u;
  (*(v2 + 104))(v4, enum case for Separator.Position.bottom(_:), v1);
  v8[3] = type metadata accessor for ZeroDimension();
  v8[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v8);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002DDA58()
{
  v0 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = type metadata accessor for PageGrid.HorizontalMargins();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v16 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007B23A0;
  v46 = v18 + v17;
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  v44 = v6;
  PageGrid.DirectionalValue.init(_:)();
  v41 = v15;
  v43 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 2 * v28 + v48;
  v51 = 0x4010000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  v30(v3, v45, v29);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v34 = v9;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 4 * v48;
  v51 = 0x4014000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4018000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_10097EC70 = v39;
  return result;
}

unint64_t sub_1002DE488()
{
  result = qword_10097EC78;
  if (!qword_10097EC78)
  {
    type metadata accessor for InvalidateAllWidgetsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EC78);
  }

  return result;
}

uint64_t sub_1002DE4E0()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  InvalidateAllWidgetsAction.run()();
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return Promise.__allocating_init(value:)();
}

void sub_1002DE5D8()
{
  if (([v0 isViewLoaded] & 1) == 0)
  {
    v1._countAndFlagsBits = 0x535F474E494D4F43;
    v1._object = 0xEB000000004E4F4FLL;
    v2._countAndFlagsBits = 0;
    v2._object = 0xE000000000000000;
    localizedString(_:comment:)(v1, v2);
    v3 = objc_allocWithZone(_UIContentUnavailableView);
    v4 = String._bridgeToObjectiveC()();

    v5 = [v3 initWithFrame:v4 title:0 style:{0.0, 0.0, 0.0, 0.0}];

    [v0 setView:v5];
  }
}

id sub_1002DE8A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComingSoonViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002DE900()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for AccessibilityDetailsShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_1002DEBE8(&qword_10097F2C0, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1002DEBE8(&qword_10097F2C8, type metadata accessor for AccessibilityDetailsShelfSupplementaryProvider, &unk_1007C37A0);

  return v2;
}

unint64_t sub_1002DEA00@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for AccessibilityDetailsShelfLayoutSpacingProvider;
  result = sub_1002DEB94();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1002DEA34@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v2 = PageGridCache.init()();
  swift_allocObject();
  v3 = PageGridCache.init()();
  a1[3] = &type metadata for AccessibilityDetailsPageGridProvider;
  result = sub_1002DEB40();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for AccessibilityDetailsViewController(uint64_t a1)
{
  result = qword_10097ECD0;
  if (!qword_10097ECD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002DEB40()
{
  result = qword_10097F2B0;
  if (!qword_10097F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F2B0);
  }

  return result;
}

unint64_t sub_1002DEB94()
{
  result = qword_10097F2B8;
  if (!qword_10097F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F2B8);
  }

  return result;
}

uint64_t sub_1002DEBE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002DEC30(uint64_t a1)
{
  result = type metadata accessor for ShelfBasedCollectionViewControllerDependencies();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1002DED68(unsigned int *a1, uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v5 + v10, v15, &unk_10097F510, &unk_1007B2700);
  if (v16)
  {
    sub_10002C0AC(v15, v14);
    sub_10002B894(v15, &unk_10097F510, &unk_1007B2700);
    sub_10002A400(v14, v14[3]);
    (*(v7 + 104))(v9, *a1, v6);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v7 + 8))(v9, v6);
    v11 = sub_100007000(v14);
  }

  else
  {
    v11 = sub_10002B894(v15, &unk_10097F510, &unk_1007B2700);
  }

  return a2(v11);
}

uint64_t sub_1002DEF2C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v19 = swift_isaMask & *v0;
  sub_10002849C(&qword_1009717B0, &unk_1007B2A00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007C6680;
  v18 = *((v3 & v2) + 0x230);
  swift_getWitnessTable();
  type metadata accessor for OnDemandShelfFetchingCollectionElementsObserver();
  swift_allocObject();
  swift_retain_n();
  *(v4 + 32) = OnDemandShelfFetchingCollectionElementsObserver.init(presenter:)();
  *(v4 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v5 = swift_allocObject();
  v6 = sub_1002EA58C(&qword_10097F4E0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_1007BD168);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  swift_getWitnessTable();
  v7 = *&v1[qword_1009CF410];

  v8 = v1;
  v9 = v7;
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ComponentContainerCollectionElementsObserver();
  swift_allocObject();
  v10 = v8;
  *(v4 + 64) = ComponentContainerCollectionElementsObserver.init(presenter:parent:scrollObserver:impressionsCalculator:)();
  *(v4 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  v11 = *((v3 & v2) + 0x258);
  v20[0] = *((v3 & v2) + 0x228);
  v20[1] = v18;
  v12 = *(v19 + 584);
  v21 = *(v19 + 568);
  v22 = v12;
  v23 = v11;
  type metadata accessor for BaseDiffableShelfViewController(0, v20);
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ImpressionsCollectionElementsObserver();
  swift_allocObject();
  *(v4 + 80) = ImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:)();
  *(v4 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  type metadata accessor for VideoRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v4 + 96) = VideoRegistrationCollectionElementsObserver.init()();
  *(v4 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  type metadata accessor for PlayableViewRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v4 + 112) = PlayableViewRegistrationCollectionElementsObserver.init()();
  *(v4 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for ArtworkLoadingCollectionElementsObserver();
  swift_allocObject();
  *(v4 + 128) = ArtworkLoadingCollectionElementsObserver.init(componentTypeMappingProvider:)();
  *(v4 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v13 = *&v10[qword_10097F2E8];
  v14 = sub_1002EA58C(&qword_10097F4E8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D3008);
  *(v4 + 144) = v13;
  *(v4 + 152) = v14;
  v15 = *&v10[qword_10097F2E0];
  v16 = sub_1002EA58C(&unk_10097F4F0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_1007CC3D8);
  *(v4 + 160) = v15;
  *(v4 + 168) = v16;
  swift_getWitnessTable();
  type metadata accessor for SelectionHandlerCollectionElementsObserver();
  swift_allocObject();

  *(v4 + 176) = SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)();
  *(v4 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v4 + 192) = *&v10[qword_10097F2D8];
  *(v4 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  type metadata accessor for AutomationCollectionElementsObserver();
  swift_allocObject();

  *(v4 + 208) = AutomationCollectionElementsObserver.init()();
  *(v4 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  swift_getWitnessTable();
  type metadata accessor for InlineUnifiedMessageCollectionElementsObserver();
  swift_allocObject();
  *(v4 + 224) = InlineUnifiedMessageCollectionElementsObserver.init(presenter:parentViewController:)();
  *(v4 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

void sub_1002DF48C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v43 = swift_isaMask & *v2;
  v6 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v6 - 8);
  v7 = *((v5 & v4) + 0x238);
  v8 = *((v5 & v4) + 0x240);
  v9 = *((v5 & v4) + 0x248);
  v10 = *((v5 & v4) + 0x250);
  v11 = *((v5 & v4) + 0x258);
  v41 = *((v5 & v4) + 0x228);
  v42 = v7;
  v44 = v41;
  v45 = v7;
  v46 = v8;
  v47 = v9;
  v48 = v10;
  v49 = v11;
  updated = type metadata accessor for DiffablePagePresenter.UpdatePhase();
  v13 = *(updated - 8);
  v14 = __chkstk_darwin(updated);
  v16 = (&v40 - v15);
  (*(v13 + 16))(&v40 - v15, a1, updated, v14);
  v17 = (*(v13 + 88))(v16, updated);
  if (v17 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v13 + 8))(v16, updated);
    *(v2 + qword_1009CF3E8) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter())
    {
      PendingPageRender.isLayoutPending.setter();
    }

    v18 = qword_10097F2F0;
    swift_beginAccess();
    v19 = *(v2 + v18);
    if (v19)
    {
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 2) = v41;
      v22 = v42;
      *(v21 + 3) = *(v43 + 560);
      *(v21 + 4) = v22;
      *(v21 + 5) = v8;
      *(v21 + 6) = v9;
      *(v21 + 7) = v10;
      *(v21 + 8) = v11;
      *(v21 + 9) = v20;
      v23 = &v19[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v24 = *&v19[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v25 = *&v19[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
      *v23 = sub_1002E9FF4;
      v23[1] = v21;
      v26 = v19;

      sub_10001F63C(v24, v25);
    }

    v27 = dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
    v28 = [objc_opt_self() sharedApplication];
    v29 = [v28 launchedToTest];

    if (!v29)
    {

      return;
    }

    if (v27)
    {
      v30 = objc_opt_self();

      v31 = [v30 defaultCenter];
      type metadata accessor for PageRenderMetricsPresenter();
      v32 = static PageRenderMetricsPresenter.pageEndNotification.getter();
      [v31 addObserver:v2 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v32 object:v27];

      return;
    }

    sub_100094120();
    v39 = swift_allocError();
    sub_10021CA80(v39);
    goto LABEL_16;
  }

  if (v17 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v13 + 96))(v16, updated);
    v33 = *v16;
    v34 = v16[1];
    v35 = v16[2];
    type metadata accessor for JUContentUnavailableViewController();
    swift_getWitnessTable();
    swift_errorRetain();

    sub_10000827C(v34, v35);
    v36 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
    (*((swift_isaMask & *v2) + 0x168))(v36);
    sub_10021CA80(v33);
    sub_10001F63C(v34, v35);
LABEL_16:

    return;
  }

  if (v17 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v37 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v38 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    (*((swift_isaMask & *v2) + 0x168))(v38);
    swift_getWitnessTable();
    MetricsPagePresenter.prepareToObserveAssets(_:)();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    (*(v13 + 8))(v16, updated);
  }
}

uint64_t sub_1002DFB8C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1009CF3D8;
  swift_beginAccess();
  v4 = type metadata accessor for ShelfBasedCollectionViewControllerDependencies();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1002DFC14(uint64_t a1)
{
  v3 = qword_1009CF3D8;
  swift_beginAccess();
  v4 = type metadata accessor for ShelfBasedCollectionViewControllerDependencies();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double sub_1002DFD44(uint64_t a1)
{
  *(v1 + qword_10097F300) = a1;

  return result;
}

uint64_t sub_1002DFD5C(uint64_t a1)
{
  v2 = *(v1 + qword_10097F308);
  *(v1 + qword_10097F308) = a1;
  return _objc_release_x1(a1, v2);
}

id sub_1002DFDA0()
{
  v1 = [v0 navigationItem];

  return v1;
}

double sub_1002DFDD8(uint64_t a1)
{
  *(v1 + qword_10097F318) = a1;

  return result;
}

void sub_1002DFDF0(char a1)
{
  v2 = *(v1 + qword_1009CF428);
  *(v1 + qword_1009CF428) = a1;
  sub_1002E3C10(v2);
}

double sub_1002DFE08()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x258);
  v3 = *(v1 + 0x238);
  v6 = *(v1 + 0x228);
  v7 = v3;
  v8 = *(v1 + 584);
  v9 = v2;
  type metadata accessor for BaseDiffableShelfViewController(0, &v6);
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.pageGridProvider.getter();
  sub_10002849C(&qword_10097AB20, &qword_1007C2218);
  sub_10002849C(&unk_10097F5C0, &qword_1007C69E0);
  if (swift_dynamicCast())
  {
    sub_10002A400(&v6, *(&v7 + 1));
    dispatch thunk of PageGridCaching.invalidateCache()();
    sub_100007000(&v6);
  }

  else
  {
    *&v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_10002B894(&v6, &qword_10097AB28, &qword_1007C2220);
  }

  type metadata accessor for TodayCardGridTracker();
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v5 = v10;
  if (v10)
  {
    swift_beginAccess();
    *(v5 + 16) = _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1002DFFDC(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097F530, &qword_1007BCF10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = sub_10002849C(&unk_10097F490, &qword_1007C2210);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_100031660(a1, &v16[-1] - v7, &unk_10097F490, &qword_1007C2210);
  v9 = sub_10002849C(&qword_100977FC8, &qword_1007C6940);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002B894(v8, &unk_10097F490, &qword_1007C2210);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  else
  {
    SnapshotUpdate.contentSnapshot.getter();
    (*(v10 + 8))(v8, v9);
    v11 = ModelMappedDiffableDataSourceContentSnapshot.reloadedItems.getter();
    (*(v3 + 8))(v5, v2);
    v12 = sub_10002849C(&qword_10097AB08, &unk_1007C69D0);
    v13 = sub_100097060(&unk_10097F5B0, &qword_10097AB08, &unk_1007C69D0, &protocol conformance descriptor for Set<A>);
  }

  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  result = ComponentHeightCache.invalidate(items:)();
  if (v17)
  {
    return sub_100007000(v16);
  }

  return result;
}

uint64_t sub_1002E0268(uint64_t result)
{
  if ((*(v1 + qword_1009CF3E8) & 1) == 0)
  {
    return dispatch thunk of TimedMetricsPagePresenter.didLoad()();
  }

  return v2;
}

uint64_t sub_1002E02A4()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = type metadata accessor for GenericPageShelfSupplementaryProvider();
  v4 = *(v0 + qword_1009CF3E0);
  v5 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  v6 = *((v2 & v1) + 0x230);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_10026D92C(v4, v5, v3, v6, WitnessTable);
  sub_1002EA58C(&unk_10097F5A0, type metadata accessor for GenericPageShelfSupplementaryProvider, &unk_1007C37A0);

  return v8;
}

uint64_t sub_1002E039C()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x258);
  v3 = *(v1 + 0x238);
  v7[0] = *(v1 + 0x228);
  v7[1] = v3;
  v7[2] = *(v1 + 584);
  v8 = v2;
  type metadata accessor for BaseDiffableShelfViewController(0, v7);
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for GenericPageItemSupplementaryProvider();
  v4 = swift_allocObject();
  sub_10002C0AC(v7, v4 + 16);
  type metadata accessor for GenericPageSeparatorItemSupplementaryProvider();
  v5 = swift_allocObject();
  sub_100005A38(v7, v5 + 16);
  *(v4 + 56) = v5;
  sub_1002EA58C(&qword_10097C0C8, type metadata accessor for GenericPageItemSupplementaryProvider, &unk_1007D1698);
  return v4;
}

void *sub_1002E04F0()
{
  v1 = v0;
  v119 = swift_isaMask & *v0;
  v2 = type metadata accessor for ShelfBackground();
  v114 = *(v2 - 8);
  v115 = v2;
  __chkstk_darwin(v2);
  v106 = (&v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v109 = (&v101 - v5);
  v113 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v105 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = &v101 - v8;
  v9 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v9 - 8);
  v110 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = type metadata accessor for ShelfLayoutContext();
  v117 = *(v14 - 8);
  v118 = v14;
  __chkstk_darwin(v14);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v101 - v18;
  v120 = sub_10002849C(&qword_100975028, &unk_1007C69C0);
  v20 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v101 - v23;
  v25 = type metadata accessor for PaginatedPagePresenterState();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = _swiftEmptyArrayStorage;
  dispatch thunk of DiffablePagePresenter.paginationState.getter();
  v29 = (*(v26 + 88))(v28, v25);
  v107 = v16;
  v111 = v19;
  if (v29 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    (*(v26 + 96))(v28, v25);
    sub_100007000(v28);
    v30 = [v0 traitCollection];
    if (qword_10096E6C0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for StaticDimension();
    sub_1000056A8(v31, qword_1009D2460);
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007B0B70;
    *(v32 + 32) = v30;
    v33 = v30;
    v34 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v36 = v35;

    v37 = objc_opt_self();
    v38 = [v37 fractionalWidthDimension:1.0];
    v39 = [v37 absoluteDimension:v36];
    v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

    type metadata accessor for InfiniteScrollFooterView();
    v41 = v40;
    static UICollectionReusableView.elementKind.getter();
    v42 = String._bridgeToObjectiveC()();

    v43 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v41 elementKind:v42 alignment:5];

    v44 = v43;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v45 = v125;
  }

  else
  {
    (*(v26 + 8))(v28, v25);
    v45 = _swiftEmptyArrayStorage;
  }

  v46 = qword_10097F2F8;
  swift_beginAccess();
  v47 = *(v1 + v46);
  if (!v47)
  {
    return v45;
  }

  v48 = v47;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v49 = v120;
  v50 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
  v53 = *(v20 + 8);
  v51 = v20 + 8;
  v52 = v53;
  v53(v24, v49);
  if (v50 < 1)
  {
    v57 = v117;
    v56 = v118;
    v58 = *(v1 + v46);
    if (!v58)
    {
      return v45;
    }

    goto LABEL_21;
  }

  v54 = *(v119 + 600);
  v55 = *(v119 + 568);
  v121 = *(v119 + 552);
  v122 = v55;
  v123 = *(v119 + 584);
  v124 = v54;
  type metadata accessor for BaseDiffableShelfViewController(0, &v121);
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfLayoutContext(for:)();
  v57 = v117;
  v56 = v118;
  if ((*(v117 + 48))(v13, 1, v118) == 1)
  {
    sub_10002B894(v13, &qword_10097F480, &unk_1007C4AB0);
    v58 = *(v1 + v46);
    if (!v58)
    {
      return v45;
    }

    goto LABEL_21;
  }

  v102 = v45;
  v104 = v52;
  v103 = v51;
  v59 = v56;
  v60 = v111;
  (*(v57 + 32))(v111, v13, v59);
  v61 = v108;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v62 = v57;
  v63 = v109;
  v64 = v113;
  ReadOnlyLens.subscript.getter();

  v65 = v64;
  v66 = v63;
  (*(v112 + 8))(v61, v65);
  v68 = v114;
  v67 = v115;
  if ((*(v114 + 88))(v63, v115) != enum case for ShelfBackground.color(_:))
  {
    v57 = v62;
    (*(v62 + 8))(v60, v59);
    (*(v68 + 8))(v66, v67);
    v56 = v59;
    v52 = v104;
    v45 = v102;
    v58 = *(v1 + v46);
    if (!v58)
    {
      return v45;
    }

    goto LABEL_21;
  }

  (*(v68 + 96))(v63, v67);

  v69 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
  v70 = type metadata accessor for ShelfBackgroundStyle();
  (*(*(v70 - 8) + 8))(v63 + v69, v70);
  v71 = objc_opt_self();
  v72 = [v71 fractionalWidthDimension:1.0];
  v73 = [v71 absoluteDimension:2000.0];
  v74 = [objc_opt_self() sizeWithWidthDimension:v72 heightDimension:v73];

  v75 = String._bridgeToObjectiveC()();
  v76 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v74 elementKind:v75 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v76 setExtendsBoundary:0];
  v77 = v76;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v57 = v62;
  v56 = v59;
  (*(v62 + 8))(v111, v59);
  v45 = v125;
  v52 = v104;
  v58 = *(v1 + v46);
  if (v58)
  {
LABEL_21:
    v78 = v58;
    v79 = v116;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v80 = v120;
    v81 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
    v52(v79, v80);
    if (v81 >= 1)
    {
      v82 = *(v119 + 600);
      v83 = *(v119 + 568);
      v121 = *(v119 + 552);
      v122 = v83;
      v123 = *(v119 + 584);
      v124 = v82;
      type metadata accessor for BaseDiffableShelfViewController(0, &v121);
      swift_getWitnessTable();
      v84 = v110;
      ShelfBasedCollectionViewController.shelfLayoutContext(for:)();
      if ((*(v57 + 48))(v84, 1, v56) == 1)
      {
        sub_10002B894(v84, &qword_10097F480, &unk_1007C4AB0);
      }

      else
      {
        v85 = v107;
        (*(v57 + 32))(v107, v84, v56);
        v86 = v105;
        ShelfLayoutContext.shelf.getter();
        swift_getKeyPath();
        v87 = v106;
        v88 = v113;
        ReadOnlyLens.subscript.getter();

        (*(v112 + 8))(v86, v88);
        v90 = v114;
        v89 = v115;
        if ((*(v114 + 88))(v87, v115) == enum case for ShelfBackground.color(_:))
        {
          (*(v90 + 96))(v87, v89);

          v91 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
          v92 = type metadata accessor for ShelfBackgroundStyle();
          (*(*(v92 - 8) + 8))(v87 + v91, v92);
          v93 = objc_opt_self();
          v94 = [v93 fractionalWidthDimension:1.0];
          v95 = [v93 absoluteDimension:2000.0];
          v96 = [objc_opt_self() sizeWithWidthDimension:v94 heightDimension:v95];

          v97 = String._bridgeToObjectiveC()();
          v98 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v96 elementKind:v97 alignment:5 absoluteOffset:{0.0, 2000.0}];

          [v98 setExtendsBoundary:0];
          v99 = v98;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          (*(v57 + 8))(v85, v56);
          return v125;
        }

        else
        {
          (*(v57 + 8))(v85, v56);
          (*(v90 + 8))(v87, v89);
        }
      }
    }
  }

  return v45;
}

double sub_1002E143C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = swift_isaMask & *v3;
  type metadata accessor for InfiniteScrollFooterView();
  if (static UICollectionReusableView.elementKind.getter() == a1 && v8 == a2)
  {

    goto LABEL_11;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
LABEL_11:

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    *(a3 + 24) = sub_10002849C(&qword_10097BA80, &qword_1007C38F8);
    *(a3 + 32) = sub_100097060(&unk_10097F590, &qword_10097BA80, &qword_1007C38F8, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_1000056E0(a3);
    goto LABEL_12;
  }

  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001007FB9B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = *(v7 + 552);
    *(v12 + 24) = *(v7 + 560);
    *(v12 + 40) = *(v7 + 576);
    *(v12 + 48) = *(v7 + 584);
    *(v12 + 64) = *(v7 + 600);
    *(v12 + 72) = v11;
    *(a3 + 24) = sub_10002849C(&qword_10097F570, &qword_1007C6980);
    *(a3 + 32) = sub_100097060(&qword_10097F578, &qword_10097F570, &qword_1007C6980, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_1000056E0(a3);
    sub_100005744(0, &qword_10097F580, UICollectionReusableView_ptr);
    swift_bridgeObjectRetain_n();
LABEL_12:
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    return result;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1002E184C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & v2;
  v5 = sub_10002849C(&qword_10097F538, &unk_1007CC7C0);
  __chkstk_darwin(v5 - 8);
  v48 = v34 - v6;
  v7 = sub_10002849C(&unk_10097F540, &unk_1007C6960);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v34 - v8;
  v39 = *((v3 & v2) + 0x248);
  v38 = *((v3 & v2) + 0x250);
  v37 = *((v3 & v2) + 0x258);
  *&v51[24] = v39;
  v52 = v38;
  v53 = v37;
  v9 = *((v3 & v2) + 0x228);
  v35 = *(v4 + 568);
  v36 = (v4 + 560);
  *v51 = v9;
  *&v51[8] = v35;
  updated = type metadata accessor for DiffablePagePresenter.UpdatePhase();
  v10 = type metadata accessor for EventSubscription();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v42 = v34 - v11;
  v12 = sub_10002849C(&unk_10097F4A0, &qword_1007C6948);
  v13 = *(v12 - 8);
  v49 = v12;
  v50 = v13;
  __chkstk_darwin(v12);
  v40 = v34 - v14;
  v15 = sub_10002849C(&qword_100977F80, &unk_1007BCED0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - v17;
  v34[1] = *(v1 + qword_1009CF3E0);
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1002EA1F8;
  *(v19 + 24) = 0;
  sub_10002849C(&unk_10097F550, &qword_1007C6970);
  *&v20 = v9;
  *(&v20 + 1) = *v36;
  *v51 = v20;
  *&v51[16] = v35;
  v52 = v39;
  v53 = v38;
  v54 = v37;
  type metadata accessor for BaseDiffableShelfViewController(0, v51);
  v39 = &protocol conformance descriptor for SyncEvent<A>;
  sub_100097060(&qword_100977F88, &unk_10097F550, &qword_1007C6970, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v51);
  (*(v16 + 8))(v18, v15);
  DiffablePagePresenter.onPerformAction.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1002EA25C;
  *(v21 + 24) = 0;
  v22 = sub_10002849C(&qword_10097F4B0, &qword_1007C6950);
  v23 = v39;
  v24 = sub_100097060(&qword_10097F4B8, &qword_10097F4B0, &qword_1007C6950, v39);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v25 = v40;
  v37 = v22;
  v38 = v24;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v51);
  (*(v50 + 8))(v25, v49);
  TimedMetricsPagePresenter.onUpdatePhaseChanged.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1002EA2C0;
  *(v26 + 24) = 0;
  type metadata accessor for SyncEvent();
  swift_getWitnessTable();
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v27 = v42;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v51);
  (*(v43 + 8))(v27, v44);
  DiffablePagePresenter.onPaginationStateChanged.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1002EA34C;
  *(v28 + 24) = 0;
  sub_10002849C(&qword_10097F560, &qword_1007C6978);
  sub_100097060(&qword_10097F568, &qword_10097F560, &qword_1007C6978, v23);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v29 = v45;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v51);
  (*(v46 + 8))(v29, v47);
  if (*(v1 + qword_10097F300))
  {
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1002EA3B0;
    *(v30 + 24) = 0;

    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v31 = v48;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v51);
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v31 = v48;
  }

  (*(v50 + 56))(v31, v32, 1, v49);
  return sub_10002B894(v31, &qword_10097F538, &unk_1007CC7C0);
}

void sub_1002E20C0(uint64_t a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v28 = sub_10002849C(&qword_10097F530, &qword_1007BCF10);
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - v6;
  v8 = sub_10002849C(&unk_10097F490, &qword_1007C2210);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_10002849C(&qword_100977FC8, &qword_1007C6940);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_1002DFFDC(v10);
  sub_10002B894(v10, &unk_10097F490, &qword_1007C2210);
  v13 = SnapshotUpdate.useReloadData.getter();
  v14 = qword_10097F2F8;
  if (v13)
  {
    swift_beginAccess();
    v15 = *&v2[v14];
    if (!v15)
    {
      goto LABEL_7;
    }

    v16 = v15;
    SnapshotUpdate.contentSnapshot.getter();
    dispatch thunk of ModelMappedDiffableDataSource.applySnapshotUsingReloadData(_:animatingDifferences:completion:)();
  }

  else
  {
    swift_beginAccess();
    v17 = *&v2[v14];
    if (!v17)
    {
      goto LABEL_7;
    }

    v16 = v17;
    SnapshotUpdate.contentSnapshot.getter();
    SnapshotUpdate.animated.getter();
    dispatch thunk of ModelMappedDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  (*(v5 + 8))(v7, v28);
LABEL_7:
  v18 = *(v4 + 600);
  v19 = *(v4 + 568);
  v29[0] = *(v4 + 552);
  v29[1] = v19;
  v29[2] = *(v4 + 584);
  v30 = v18;
  type metadata accessor for BaseDiffableShelfViewController(0, v29);
  swift_getWitnessTable();
  dispatch thunk of VisibleShelfSupplementaryCollectionElementsObserver.reconfigureVisibleShelfSupplementaries<A>(in:asPartOf:)();
  v20 = [v2 collectionView];
  if (!v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v20 window];

  if (v22)
  {

    v23 = [v2 collectionView];
    if (!v23)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v24 = v23;
    dispatch thunk of CompoundScrollObserver.didScroll(in:)();
  }

  v25 = [v2 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  [v25 bounds];

  ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
  if (SnapshotUpdate.isInitialFullPageSnapshot.getter())
  {
    ArtworkLoader.didFinishLoadingInitialViewport()();
  }
}

uint64_t sub_1002E250C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_100031660(a2, v5, &unk_1009711D0, &unk_1007B1A10);

  sub_1002E2CB4(v2, v5);
  return sub_10002B894(&v4, &qword_10097C510, &qword_1007C4328);
}

void sub_1002E258C()
{
  v1 = swift_isaMask & *v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];

    v4 = *(v1 + 600);
    v5 = *(v1 + 568);
    v6[0] = *(v1 + 552);
    v6[1] = v5;
    v6[2] = *(v1 + 584);
    v7 = v4;
    type metadata accessor for BaseDiffableShelfViewController(0, v6);
    swift_getWitnessTable();
    ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
    sub_10021D284();
  }

  else
  {
    __break(1u);
  }
}

double sub_1002E26A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28[1] = a1;
  v28[0] = swift_isaMask & *v2;
  v5 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v5 - 8);
  v7 = v28 - v6;
  v8 = type metadata accessor for ItemLayoutContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v33 = v28 - v13;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = *(type metadata accessor for IndexPath() - 8);
    v16 = (v9 + 48);
    v31 = v9;
    v17 = (v9 + 32);
    v18 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v34 = *(v15 + 72);
    v19 = _swiftEmptyArrayStorage;
    v29 = v16;
    v30 = v11;
    v32 = v3;
    do
    {
      sub_1002E7968(v18, v3);
      if ((*v16)(v7, 1, v8) == 1)
      {
        sub_10002B894(v7, &unk_1009731E0, &unk_1007B0B60);
      }

      else
      {
        v20 = *v17;
        v21 = v33;
        (*v17)(v33, v7, v8);
        v20(v11, v21, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1000340B4(0, v19[2] + 1, 1, v19);
        }

        v23 = v19[2];
        v22 = v19[3];
        if (v23 >= v22 >> 1)
        {
          v19 = sub_1000340B4((v22 > 1), v23 + 1, 1, v19);
        }

        v19[2] = v23 + 1;
        v24 = v19 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23;
        v11 = v30;
        v20(v24, v30, v8);
        v3 = v32;
        v16 = v29;
      }

      v18 += v34;
      --v14;
    }

    while (v14);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  if (v19[2])
  {
    v25 = *(v28[0] + 600);
    v26 = *(v28[0] + 568);
    v35[0] = *(v28[0] + 552);
    v35[1] = v26;
    v35[2] = *(v28[0] + 584);
    v36 = v25;
    type metadata accessor for BaseDiffableShelfViewController(0, v35);
    swift_getWitnessTable();
    ShelfBasedCollectionViewController.collectionElementsObserver.getter();
    swift_getObjectType();
    dispatch thunk of CollectionElementsObserver.prefetchCells(in:collectionView:asPartOf:)();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1002E2A90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  v11 = *(v2 + qword_10097F2E0);
  v12 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  swift_beginAccess();
  sub_100031660(v11 + v12, v10, &unk_10097DAE0, &qword_1007B5CA0);
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v7, 1, 1, v13);
  swift_beginAccess();
  sub_1000F4070(v7, v11 + v12);
  swift_endAccess();
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_10002B894(v10, &unk_10097DAE0, &qword_1007B5CA0);
    return sub_100031660(a1, a2, &unk_10097DAE0, &qword_1007B5CA0);
  }

  else
  {
    (*(v14 + 32))(a2, v10, v13);
    return (v15)(a2, 0, 1, v13);
  }
}

void sub_1002E2CB4(Class isa, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v56 - v5;
  v7 = type metadata accessor for IndexPath();
  v59 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v56 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031660(a2, v92, &unk_1009711D0, &unk_1007B1A10);
  if (v92[3])
  {
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    if (swift_dynamicCast())
    {
      v16 = v61[1];
      [v16 bounds];
      LOBYTE(v86) = 1;
      *&v68 = v16;
      *(&v68 + 1) = v17;
      *&v69 = v18;
      *(&v69 + 1) = v19;
      *&v70 = v20;
      BYTE8(v70) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v71 = _Q0;
      v72 = _Q0;
      v73 = 15;
      sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      *v15 = static OS_dispatch_queue.main.getter();
      (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
      v26 = _dispatchPreconditionTest(_:)();
      v27 = *(v13 + 8);
      v13 += 8;
      v27(v15, v12);
      if (v26)
      {
        v76 = xmmword_100975F50;
        v77 = xmmword_100975F60;
        v78 = xmmword_100975F70;
        v74 = xmmword_100975F30;
        v75 = xmmword_100975F40;
        v82 = v70;
        v83 = v71;
        v84 = v72;
        v80 = v68;
        v81 = v69;
        v86 = xmmword_100975F30;
        v87 = xmmword_100975F40;
        v89 = xmmword_100975F60;
        v90 = xmmword_100975F70;
        v79 = qword_100975F80;
        v85 = v73;
        v91 = qword_100975F80;
        v88 = xmmword_100975F50;
        sub_100031660(&v74, &v62, &unk_10097F520, &unk_1007BA430);
        xmmword_100975F50 = v82;
        xmmword_100975F60 = v83;
        xmmword_100975F70 = v84;
        qword_100975F80 = v85;
        xmmword_100975F30 = v80;
        xmmword_100975F40 = v81;
        sub_10002B894(&v86, &unk_10097F520, &unk_1007BA430);
        sub_10019DADC(&v68, &v62);
        sub_1002E8F60(v60, isa, v61);
        v64 = xmmword_100975F50;
        v65 = xmmword_100975F60;
        v66 = xmmword_100975F70;
        v67 = qword_100975F80;
        v62 = xmmword_100975F30;
        v63 = xmmword_100975F40;
        xmmword_100975F30 = v74;
        xmmword_100975F40 = v75;
        xmmword_100975F50 = v76;
        xmmword_100975F60 = v77;
        xmmword_100975F70 = v78;
        qword_100975F80 = v79;
        sub_10002B894(&v62, &unk_10097F520, &unk_1007BA430);
        sub_10019DB38(&v68);

        return;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    sub_10002B894(v92, &unk_1009711D0, &unk_1007B1A10);
  }

  v57 = isa;
  v28 = [v60 collectionView];
  if (!v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = v28;
  v30 = [v28 indexPathsForSelectedItems];

  if (v30)
  {
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v31 + 16))
    {
      v32 = v59;
      (*(v59 + 16))(v9, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v7);

      v33 = *(v32 + 32);
      v34 = v58;
      v56 = v7;
      v33(v58, v9, v7);
      v35 = [v60 collectionView];
      if (!v35)
      {
LABEL_22:
        __break(1u);

        v52 = *(v13 + 0x20 + 16);
        v64 = *(v13 + 0x20);
        v65 = v52;
        v66 = *(v13 + 0x40);
        v67 = *(v13 + 0x50);
        v53 = *(v13 + 16);
        v62 = *v13;
        v63 = v53;
        v54 = v77;
        *(v13 + 0x20) = v76;
        *(v13 + 0x20 + 16) = v54;
        *(v13 + 0x40) = v78;
        *(v13 + 0x50) = v79;
        v55 = v75;
        *v13 = v74;
        *(v13 + 16) = v55;
        sub_10002B894(&v62, &unk_10097F520, &unk_1007BA430);
        __break(1u);
        return;
      }

      v36 = v35;
      v37 = v34;
      v38 = IndexPath._bridgeToObjectiveC()().super.isa;
      v39 = [v36 cellForItemAtIndexPath:v38];

      if (v39)
      {
        v40 = v39;
        [v40 bounds];
        LOBYTE(v86) = 1;
        *&v68 = v39;
        *(&v68 + 1) = v41;
        *&v69 = v42;
        *(&v69 + 1) = v43;
        *&v70 = v44;
        BYTE8(v70) = 1;
        __asm { FMOV            V0.2D, #10.0 }

        v71 = _Q0;
        v72 = _Q0;
        v73 = 15;
        sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
        *v15 = static OS_dispatch_queue.main.getter();
        (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
        v46 = _dispatchPreconditionTest(_:)();
        v47 = *(v13 + 8);
        v13 += 8;
        v47(v15, v12);
        v48 = v56;
        if (v46)
        {
          v76 = xmmword_100975F50;
          v77 = xmmword_100975F60;
          v78 = xmmword_100975F70;
          v74 = xmmword_100975F30;
          v75 = xmmword_100975F40;
          v82 = v70;
          v83 = v71;
          v84 = v72;
          v80 = v68;
          v81 = v69;
          v86 = xmmword_100975F30;
          v87 = xmmword_100975F40;
          v89 = xmmword_100975F60;
          v90 = xmmword_100975F70;
          v79 = qword_100975F80;
          v85 = v73;
          v91 = qword_100975F80;
          v88 = xmmword_100975F50;
          sub_100031660(&v74, &v62, &unk_10097F520, &unk_1007BA430);
          xmmword_100975F50 = v82;
          xmmword_100975F60 = v83;
          xmmword_100975F70 = v84;
          qword_100975F80 = v85;
          xmmword_100975F30 = v80;
          xmmword_100975F40 = v81;
          sub_10002B894(&v86, &unk_10097F520, &unk_1007BA430);
          sub_10019DADC(&v68, &v62);
          sub_1002E8F60(v60, v57, v92);
          v64 = xmmword_100975F50;
          v65 = xmmword_100975F60;
          v66 = xmmword_100975F70;
          v67 = qword_100975F80;
          v62 = xmmword_100975F30;
          v63 = xmmword_100975F40;
          xmmword_100975F30 = v74;
          xmmword_100975F40 = v75;
          xmmword_100975F50 = v76;
          xmmword_100975F60 = v77;
          xmmword_100975F70 = v78;
          qword_100975F80 = v79;
          sub_10002B894(&v62, &unk_10097F520, &unk_1007BA430);
          sub_10019DB38(&v68);

          (*(v59 + 8))(v58, v48);

          return;
        }

        goto LABEL_20;
      }

      (*(v59 + 8))(v37, v56);
    }

    else
    {
    }
  }

  v49 = *&v60[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v50 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v6, 1, v50) == 1)
  {
    sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
  }

  else
  {
    sub_1005F9AF4(v57, 1, v49, v6);

    (*(v51 + 8))(v6, v50);
  }
}