uint64_t sub_100010778(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_10000A844();
  if (!*(a1 + 16) || (v10 = *v9, v11 = v9[1], , v12 = sub_100002F84(v10, v11), LOBYTE(v4) = v13, , (v4 & 1) == 0) || (sub_100003218(*(a1 + 56) + 32 * v12, &v29), sub_100001EB0(&qword_10005BAF8, &qword_100033380), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *&v29 = 0x7963696C6F50724FLL;
    *(&v29 + 1) = 0xE900000000000020;
    v21 = Dictionary.description.getter();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v25 = v29;
    sub_1000032B8();
    swift_allocError();
    *v26 = v25;
    *(v26 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_10000330C(a2);
    return v4 & 1;
  }

  v15 = v31[0];
  v16 = *(v31[0] + 16);
  if (!v16)
  {
    v18 = &_swiftEmptyArrayStorage;
LABEL_17:

    LOBYTE(v29) = 0;
    *(&v29 + 1) = 0;
    v30 = v18;

    v27 = sub_100008304(a1);
    if (v5)
    {

      swift_unknownObjectRelease();
      sub_10000330C(a2);
      swift_bridgeObjectRelease_n();
    }

    else
    {
      LOBYTE(v4) = v27;

      LOBYTE(v29) = v4 & 1;
      *(&v29 + 1) = 0;
      v30 = v18;

      sub_1000083C0(a1);

      swift_unknownObjectRelease();
      sub_10000330C(a2);
    }

    return v4 & 1;
  }

  v17 = 0;
  v4 = v31[0] + 32;
  v18 = &_swiftEmptyArrayStorage;
  v32 = a2;
  v28 = a3;
  while (v17 < *(v15 + 16))
  {
    sub_100003218(v4, v31);
    sub_100007C48(v31, a2, a3, &v29);
    if (v5)
    {
      sub_100003374(v31);

      swift_unknownObjectRelease();

      sub_10000330C(a2);

      return v4 & 1;
    }

    sub_100003374(v31);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1000101F0(0, v18[2] + 1, 1, v18);
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1000101F0((v19 > 1), v20 + 1, 1, v18);
    }

    ++v17;
    v18[2] = v20 + 1;
    result = sub_100007130(&v29, &v18[5 * v20 + 4]);
    v4 += 32;
    a2 = v32;
    a3 = v28;
    if (v16 == v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100010B18(char a1, uint64_t a2)
{
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v25 = 0xD000000000000019;
  v26 = 0x8000000100039450;
  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8 = *(a2 + 16);
  v9 = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v24 = &_swiftEmptyArrayStorage;
    sub_100010338(0, v8, 0);
    v9 = &_swiftEmptyArrayStorage;
    v10 = a2 + 32;
    do
    {
      sub_1000016D0(v10, v23);
      sub_100003274(v23, v23[3]);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_100003374(v23);
      v24 = v9;
      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        sub_100010338((v14 > 1), v15 + 1, 1);
        v9 = v24;
      }

      v9[2] = v15 + 1;
      v16 = &v9[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      v10 += 40;
      --v8;
    }

    while (v8);
  }

  v23[0] = v9;
  sub_100001EB0(&qword_10005BB50, "|*");
  sub_100010E24();
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 62;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  return v25;
}

unint64_t sub_100010D10(uint64_t a1)
{
  result = sub_100010D38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100010D38()
{
  result = qword_10005BE60;
  if (!qword_10005BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BE60);
  }

  return result;
}

uint64_t sub_100010D8C(uint64_t a1, int a2)
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

uint64_t sub_100010DD4(uint64_t result, int a2, int a3)
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

unint64_t sub_100010E24()
{
  result = qword_10005BE68;
  if (!qword_10005BE68)
  {
    sub_100006A20(&qword_10005BB50, "|*");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BE68);
  }

  return result;
}

uint64_t sub_1000111A0()
{

  sub_10000B2BC(v0 + OBJC_IVAR____TtC12eligibilitydP33_76CB2993945AB83551AB4E5A6C0D5A8815GracePeriodMock_startDate);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_1000112DC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100001EB0(&qword_10005BD00, "^/");
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v2 hasGracePeriod:v8];

  if ((v9 & 1) == 0)
  {
    type metadata accessor for GracePeriodMock(0);
    v10 = swift_allocObject();
    v11 = OBJC_IVAR____TtC12eligibilitydP33_76CB2993945AB83551AB4E5A6C0D5A8815GracePeriodMock_startDate;
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);
    v13(v10 + v11, 1, 1, v12);
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v13(v7, 1, 1, v12);
    swift_beginAccess();

    sub_100012740(v7, v10 + v11);
    swift_endAccess();
    v14 = OBJC_IVAR___DataStoreMock_dataStorage;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *&v2[v14];
    *&v2[v14] = 0x8000000000000000;
    sub_1000127B0(v10, a1, a2, isUniquelyReferenced_nonNull_native, &v16);
    *&v2[v14] = v16;
    swift_endAccess();
  }
}

uint64_t sub_1000114B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    swift_getObjectType();
    sub_1000127B0(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v16);

    *v3 = v16;
  }

  else
  {
    v9 = v3;
    v10 = sub_100002F84(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = v9;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v9;
      v16 = *v9;
      if (!v14)
      {
        sub_100012480();
        v13 = v9;
        v15 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_1000122D0(v10, v15);
      *v13 = v15;
    }
  }

  return result;
}

uint64_t sub_10001167C(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v4 = sub_100001EB0(&qword_10005BD00, "^/");
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  static Date.now.getter();
  type metadata accessor for GracePeriodMock(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC12eligibilitydP33_76CB2993945AB83551AB4E5A6C0D5A8815GracePeriodMock_startDate;
  v13 = *(v8 + 56);
  v13(v11 + OBJC_IVAR____TtC12eligibilitydP33_76CB2993945AB83551AB4E5A6C0D5A8815GracePeriodMock_startDate, 1, 1, v7);
  *(v11 + 16) = v18;
  *(v11 + 24) = a2;
  (*(v8 + 32))(v6, v10, v7);
  v13(v6, 0, 1, v7);
  swift_beginAccess();

  sub_100012740(v6, v11 + v12);
  swift_endAccess();
  v14 = OBJC_IVAR___DataStoreMock_dataStorage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v2 + v14);
  *(v2 + v14) = 0x8000000000000000;
  sub_1000127B0(v11, v18, a2, isUniquelyReferenced_nonNull_native, &v19);

  *(v2 + v14) = v19;
  return swift_endAccess();
}

uint64_t sub_1000118CC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_100011938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100001EB0(&qword_10005BD00, "^/");
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = OBJC_IVAR___DataStoreMock_dataStorage;
  swift_beginAccess();
  v11 = *(v3 + v10);
  if (*(v11 + 16) && (v12 = sub_100002F84(a1, a2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = [v14 startDate];
    if (v15)
    {
      v16 = v15;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 56))(v9, v17, 1, v20);
    return sub_10000B24C(v9, a3);
  }

  else
  {
    swift_endAccess();
    v18 = type metadata accessor for Date();
    return (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
  }
}

uint64_t sub_100011C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v6 = sub_100001EB0(&qword_10005BD00, "^/");
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a3, v9);
  type metadata accessor for GracePeriodMock(0);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC12eligibilitydP33_76CB2993945AB83551AB4E5A6C0D5A8815GracePeriodMock_startDate;
  v15 = *(v10 + 56);
  v15(v13 + OBJC_IVAR____TtC12eligibilitydP33_76CB2993945AB83551AB4E5A6C0D5A8815GracePeriodMock_startDate, 1, 1, v9);
  *(v13 + 16) = a1;
  v16 = v21;
  *(v13 + 24) = v21;
  (*(v10 + 32))(v8, v12, v9);
  v15(v8, 0, 1, v9);
  swift_beginAccess();

  sub_100012740(v8, v13 + v14);
  swift_endAccess();
  v17 = OBJC_IVAR___DataStoreMock_dataStorage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v3 + v17);
  *(v3 + v17) = 0x8000000000000000;
  sub_1000127B0(v13, v20, v16, isUniquelyReferenced_nonNull_native, &v22);
  *(v3 + v17) = v22;
  return swift_endAccess();
}

Swift::Int sub_100012028(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001EB0(&qword_10005C000, &qword_100033EE8);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000122D0(uint64_t result, uint64_t a2)
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

void *sub_100012480()
{
  v1 = v0;
  sub_100001EB0(&qword_10005C000, &qword_100033EE8);
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

unint64_t sub_1000125F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001EB0(&qword_10005C000, &qword_100033EE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100002F84(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for GracePeriodMock(uint64_t a1)
{
  result = qword_10005CEA8;
  if (!qword_10005CEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012740(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EB0(&qword_10005BD00, "^/");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000127B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_100002F84(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100012028(v16, a4 & 1);
      v11 = sub_100002F84(a2, a3);
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
      sub_100012480();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
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

void sub_100012934(uint64_t a1)
{
  sub_1000129D0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000129D0(uint64_t a1)
{
  if (!qword_10005BF10)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10005BF10);
    }
  }
}

unint64_t type metadata accessor for DataStoreMock()
{
  result = qword_10005CEB8;
  if (!qword_10005CEB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CEB8);
  }

  return result;
}

uint64_t sub_100012A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EB0(&qword_10005BD00, "^/");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012C08(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100015F58(&qword_10005CED8, &unk_1000340C4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  PersistentModel.getValue<A>(forKey:)();

  return v2;
}

uint64_t sub_100012DD4@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100015F58(&qword_10005CED8, &unk_1000340C4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  PersistentModel.getValue<A>(forKey:)();

  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_100012EC4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100015F58(&qword_10005CED8, &unk_1000340C4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100012F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100013234()
{
  swift_getKeyPath();
  sub_100015F58(&qword_10005CED8, &unk_1000340C4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  sub_100016384(&qword_10005C030, &qword_10005C038, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_100013544()
{
  swift_getKeyPath();
  sub_100015F58(&qword_10005CED8, &unk_1000340C4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  sub_100016384(&qword_10005C030, &qword_10005C038, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_100013668(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100001EB0(&qword_10005BD00, "^/");
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_10000A758(a1, &v9[-v5], &qword_10005BD00, "^/");
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_100015F58(&qword_10005CED8, &unk_1000340C4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100006A80(v6, &qword_10005BD00, "^/");
}

uint64_t sub_1000137A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  sub_100016384(&qword_10005C2D8, &qword_10005C2E0, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100013868(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100001EB0(&qword_10005BD00, "^/");
  __chkstk_darwin(v6 - 8);
  v8 = &v13[-v7];
  v9 = type metadata accessor for GracePeriod(0);
  *(v3 + 48) = sub_100001EB0(&qword_10005C2D0, &qword_100034188);
  v10 = sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  v16 = v9;
  v17 = v9;
  v18 = v10;
  v19 = v10;
  *(v3 + 56) = swift_getOpaqueTypeConformance2();
  sub_10000A3E4((v3 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v3 + 16) = 1;
  ObservationRegistrar.init()();
  sub_100003274((v3 + 24), *(v3 + 48));
  swift_getKeyPath();
  v16 = a1;
  v17 = a2;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v16 = v3;
  swift_getKeyPath();
  v14 = v3;
  v15 = v8;
  sub_100015F58(&qword_10005CED8, &unk_1000340C4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100006A80(v8, &qword_10005BD00, "^/");
  return v3;
}

uint64_t sub_100013AE0()
{
  sub_100003374(v0 + 3);
  v1 = OBJC_IVAR____TtC12eligibilitydP33_32DFF33DD6989C177E556EAF450A282611GracePeriod___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100013BBC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_100013C58(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100013CA8(a1);
  return v2;
}

uint64_t sub_100013CA8(uint64_t a1)
{
  v2 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100001EB0(&qword_10005BD88, &qword_100033D10);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v31 - v12;
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = type metadata accessor for ModelConfiguration();
  v32 = *(v16 - 8);
  v33 = v16;
  __chkstk_darwin(v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_10000A758(a1, v5, &qword_10005BD88, &qword_100033D10);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100006A80(v5, &qword_10005BD88, &qword_100033D10);
    if (!sub_10001C094())
    {
      sub_1000032B8();
      swift_allocError();
      *v29 = 0;
      *(v29 + 8) = 0;
      *(v29 + 16) = 4;
      swift_willThrow();
      sub_100006A80(v35, &qword_10005BD88, &qword_100033D10);
      goto LABEL_9;
    }

    String.init(cString:)();
    URL.init(fileURLWithPath:)();

    (*(v7 + 16))(v10, v13, v6);
    static ModelConfiguration.CloudKitDatabase.automatic.getter();
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    (*(v7 + 8))(v13, v6);
  }

  else
  {
    (*(v7 + 32))(v15, v5, v6);
    (*(v7 + 16))(v13, v15, v6);
    static ModelConfiguration.CloudKitDatabase.automatic.getter();
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    (*(v7 + 8))(v15, v6);
  }

  type metadata accessor for ModelContainer();
  sub_100001EB0(&qword_10005C008, &qword_100033F08);
  v19 = swift_allocObject();
  v31 = xmmword_100033350;
  *(v19 + 16) = xmmword_100033350;
  v20 = type metadata accessor for GracePeriod(0);
  v21 = sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  sub_100001EB0(&qword_10005C010, &qword_100033F10);
  v22 = swift_allocObject();
  *(v22 + 16) = v31;
  v23 = v33;
  *(v22 + 56) = v33;
  *(v22 + 64) = sub_100016420(&qword_10005C018, &type metadata accessor for ModelConfiguration, &protocol conformance descriptor for ModelConfiguration);
  v24 = sub_10000A3E4((v22 + 32));
  v25 = v32;
  (*(v32 + 16))(v24, v18, v23);
  v26 = v34;
  ModelContainer.__allocating_init(for:configurations:)();
  if (v26)
  {
    sub_100006A80(v35, &qword_10005BD88, &qword_100033D10);
    (*(v25 + 8))(v18, v23);
LABEL_9:
    type metadata accessor for SwiftDataStore();
    v28 = v36;
    swift_deallocPartialClassInstance();
    return v28;
  }

  type metadata accessor for ModelContext();
  swift_allocObject();
  v27 = ModelContext.init(_:)();
  sub_100006A80(v35, &qword_10005BD88, &qword_100033D10);
  (*(v25 + 8))(v18, v23);
  v28 = v36;
  *(v36 + 16) = v27;
  return v28;
}

uint64_t type metadata accessor for GracePeriod(uint64_t a1)
{
  result = qword_10005CEE0;
  if (!qword_10005CEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000142C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18 = a1;
  v19 = a2;
  v4 = sub_100001EB0(&qword_10005C020, &qword_100033F18);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_100001EB0(&qword_10005C2E8, &qword_100034190);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = sub_100001EB0(&qword_10005C028, &unk_100033F20);
  v12 = *(*(v11 - 8) + 56);
  v12(v6, 1, 1, v11);
  v13 = type metadata accessor for GracePeriod(0);
  sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  FetchDescriptor.init(predicate:sortBy:)();
  v20 = v18;
  v21 = v19;
  v22 = v13;
  Predicate.init(_:)();
  v12(v6, 0, 1, v11);
  v14 = FetchDescriptor.predicate.setter();
  (*(*v3 + 88))(v14);
  v15 = dispatch thunk of ModelContext.fetch<A>(_:)();

  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    (*(v8 + 8))(v10, v7);

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v17 = *(v15 + 32);
  }

  (*(v8 + 8))(v10, v7);
  return v17;
}

uint64_t sub_100014600@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = sub_100001EB0(&qword_10005C2F0, &qword_100034198);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_100001EB0(&qword_10005C2F8, &qword_1000341A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_100001EB0(&qword_10005C300, &qword_1000341A8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_100016630(&qword_10005C308, &qword_10005C2F8, &qword_1000341A0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = sub_100001EB0(&qword_10005C310, &unk_1000341B0);
  a4[4] = sub_100016470();
  sub_10000A3E4(a4);
  sub_100016630(&qword_10005C338, &qword_10005C300, &qword_1000341A8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100016630(&qword_10005C340, &qword_10005C2F0, &qword_100034198, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v17 = v21;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_10001496C()
{
  v1 = type metadata accessor for Logger();
  v2 = __chkstk_darwin(v1);
  (*(*v0 + 88))(v2);
  dispatch thunk of ModelContext.save()();
}

uint64_t sub_100014BD4()
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = sub_100001EB0(&qword_10005C020, &qword_100033F18);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  (*(*v0 + 88))(v3);
  type metadata accessor for GracePeriod(0);
  v6 = sub_100001EB0(&qword_10005C028, &unk_100033F20);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
  sub_100006A80(v5, &qword_10005C020, &qword_100033F18);
}

BOOL sub_100014F48(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000142C0(a1, a2);
  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t sub_100014FF4(uint64_t a1, uint64_t a2)
{
  if (!sub_1000142C0(a1, a2))
  {
    type metadata accessor for GracePeriod(0);
    swift_allocObject();

    v5 = sub_100013868(a1, a2);
    (*(*v2 + 88))(v5);
    sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
    dispatch thunk of ModelContext.insert<A>(_:)();

    sub_10001496C();
  }
}

uint64_t sub_10001520C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100001EB0(&qword_10005BD00, "^/");
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1000142C0(a1, a2);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    type metadata accessor for GracePeriod(0);
    v9 = swift_allocObject();

    v10 = sub_100013868(a1, a2);
    (*(*v2 + 88))(v10);
    sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
    dispatch thunk of ModelContext.insert<A>(_:)();

    sub_10001496C();
  }

  static Date.now.getter();
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v14[1] = v9;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v14[-2] = v9;
  v14[-1] = v7;
  sub_100015F58(&qword_10005CED8, &unk_1000340C4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100006A80(v7, &qword_10005BD00, "^/");
  sub_10001496C();
}

uint64_t sub_1000154D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (sub_1000142C0(a1, a2))
  {
    swift_getKeyPath();
    sub_100015F58(&qword_10005CED8, &unk_1000340C4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
    sub_100016384(&qword_10005C030, &qword_10005C038, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
    PersistentModel.getValue<A>(forKey:)();
  }

  else
  {
    v5 = type metadata accessor for Date();
    v6 = *(*(v5 - 8) + 56);

    return v6(a3, 1, 1, v5);
  }
}

uint64_t sub_100015910()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100015994(__int128 *a1)
{
  swift_beginAccess();
  sub_100003374((v1 + 24));
  sub_100007130(a1, v1 + 24);
  return swift_endAccess();
}

void (*sub_1000159EC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1000016D0(v1 + 24, v4);
  return sub_100015A7C;
}

void sub_100015A7C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1000016D0(*a1, v2 + 40);
    swift_beginAccess();
    sub_100003374((v3 + 24));
    sub_100007130((v2 + 40), v3 + 24);
    swift_endAccess();
    sub_100003374(v2);
  }

  else
  {
    swift_beginAccess();
    sub_100003374((v3 + 24));
    sub_100007130(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

Swift::Int sub_100015B38()
{
  Hasher.init(_seed:)();
  type metadata accessor for GracePeriod(0);
  sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100015C08(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100015C70()
{
  type metadata accessor for GracePeriod(0);
  sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  return PersistentModel.id.getter();
}

uint64_t sub_100015CD8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static PersistentModel.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_100015D78(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100015F58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GracePeriod(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100015FD0()
{
  sub_100001EB0(&qword_10005C2B8, &qword_100034150);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100033EF0;
  swift_getKeyPath();
  sub_100001EB0(&qword_10005C2C0, &qword_100034180);
  type metadata accessor for Schema.Attribute.Option();
  *(swift_allocObject() + 16) = xmmword_100033350;
  static Schema.Attribute.Option.unique.getter();
  type metadata accessor for Schema.Attribute();
  swift_allocObject();
  Schema.Attribute.init(_:originalName:hashModifier:)();
  sub_100016420(&qword_10005C2C8, &type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

uint64_t sub_100016258(__int128 *a1)
{
  type metadata accessor for GracePeriod(0);
  v2 = swift_allocObject();
  *(v2 + 48) = sub_100001EB0(&qword_10005C2D0, &qword_100034188);
  sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  sub_10000A3E4((v2 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v2 + 16) = 1;
  ObservationRegistrar.init()();
  *(v2 + 16) = 0;
  swift_beginAccess();
  sub_100003374((v2 + 24));
  sub_100007130(a1, v2 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_100016384(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006A20(&qword_10005BD00, "^/");
    sub_100016420(a2, &type metadata accessor for Date, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100016420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100016470()
{
  result = qword_10005C318;
  if (!qword_10005C318)
  {
    sub_100006A20(&qword_10005C310, &unk_1000341B0);
    sub_1000164FC();
    sub_1000165AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C318);
  }

  return result;
}

unint64_t sub_1000164FC()
{
  result = qword_10005C320;
  if (!qword_10005C320)
  {
    sub_100006A20(&qword_10005C300, &qword_1000341A8);
    sub_100016630(&qword_10005C328, &qword_10005C2F8, &qword_1000341A0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C320);
  }

  return result;
}

unint64_t sub_1000165AC()
{
  result = qword_10005C330;
  if (!qword_10005C330)
  {
    sub_100006A20(&qword_10005C2F0, &qword_100034198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C330);
  }

  return result;
}

uint64_t sub_100016630(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006A20(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000166A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t *sub_100016758(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_100010338(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100003218(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100010338((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100016874@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_100017B18(a2, a3, a4);
  if (!v4)
  {
    *a1 = result & 1;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
  }

  return result;
}

uint64_t sub_1000168B8(uint64_t *a1)
{
  v1 = type metadata accessor for Locale.Language();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  Locale.init(identifier:)();
  Locale.language.getter();
  (*(v9 + 8))(v11, v8);
  Locale.language.getter();
  v12 = Locale.Language.isEquivalent(to:)();
  v13 = *(v2 + 8);
  v13(v5, v1);
  v13(v7, v1);
  return v12 & 1;
}

uint64_t sub_100016A9C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() systemLanguages];
  if (!v6 || (v7 = v6, v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v7, v9 = sub_100016758(v8), , !v9))
  {
    v12 = sub_100003960();
    (*(v3 + 16))(v5, v12, v2);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "NSLocale systemLanguages is not an array of strings", v15, 2u);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a1)
  {
    v11.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  v17 = [objc_opt_self() preferredLocalizationsFromArray:v10.super.isa forPreferences:v11.super.isa];

  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v18 + 16))
  {

    return 0;
  }

  v19 = *(v18 + 32);

  return v19;
}

uint64_t sub_100016D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v6 = type metadata accessor for Logger();
  v51 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v46 - v9;
  v10 = type metadata accessor for Locale.Language();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  v16 = type metadata accessor for Locale();
  v48 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v46 - v20;
  sub_100001EB0(&qword_10005BB40, &unk_1000342A0);
  v22 = swift_allocObject();
  v52 = xmmword_100033350;
  *(v22 + 16) = xmmword_100033350;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;

  sub_100016A9C(v22);
  v24 = v23;

  if (!v24)
  {
    v33 = sub_100003960();
    v34 = v51;
    v35 = v47;
    (*(v51 + 16))(v47, v33, v6);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unable to determine the preferred system languages for device", v38, 2u);
    }

    (*(v34 + 8))(v35, v6);
    return 2;
  }

  v47 = v6;
  v25 = swift_allocObject();
  *(v25 + 16) = v52;
  *(v25 + 32) = v53;
  *(v25 + 40) = v54;

  sub_100016A9C(v25);
  v27 = v26;

  if (!v27)
  {

    v39 = sub_100003960();
    v40 = v51;
    v42 = v46;
    v41 = v47;
    (*(v51 + 16))(v46, v39, v47);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Unable to determine the preferred system languages for Siri", v45, 2u);
    }

    (*(v40 + 8))(v42, v41);
    return 2;
  }

  Locale.init(identifier:)();
  Locale.init(identifier:)();
  Locale.language.getter();
  Locale.language.getter();
  v28 = Locale.Language.isEquivalent(to:)();
  v29 = v50;
  v30 = *(v49 + 8);
  v30(v13, v50);
  v30(v15, v29);
  v31 = *(v48 + 8);
  v31(v19, v16);
  v31(v21, v16);
  if (v28)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000171FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];

  Locale.init(identifier:)();
  v21 = v11;
  if (sub_1000166A8(sub_100018110, v20, a3))
  {
    v12 = 2;
  }

  else
  {
    v13 = (a4 + 40);
    v14 = *(a4 + 16) + 1;
    v12 = 2;
    while (--v14)
    {
      v15 = v13 + 2;
      v17 = *(v13 - 1);
      v16 = *v13;

      v18 = sub_100016D0C(a1, a2, v17, v16);

      v13 = v15;
      if (v18 == 3)
      {
        v12 = 3;
        break;
      }
    }
  }

  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_1000173B8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 objectForInputValue:7];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 deviceLanguages];
      if (v8)
      {
        v9 = v8;
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v10 = 0;
      }

      v16 = sub_100016A9C(v10);

      return v16;
    }
  }

  v11 = sub_100003960();
  (*(v1 + 16))(v3, v11, v0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Device language input is missing", v14, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_1000175E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 objectForInputValue:10];
  if (v13)
  {
    v14 = v13;
    v45 = a2;
    v46 = v12;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = sub_1000173B8();
      if (v18)
      {
        v19 = v18;
        v43 = v17;
        v20 = sub_1000171FC(v17, v18, a1, v45);
        v21 = 2;
        if (v20 == 3)
        {
          v21 = 4;
        }

        v44 = v21;
        v22 = [v16 language];
        if (v22)
        {
          v23 = v22;
          v42 = v20;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          v27 = Locale.init(identifier:)();
          __chkstk_darwin(v27);
          *(&v42 - 2) = v11;
          v28 = sub_1000166A8(sub_100018110, (&v42 - 4), a1);
          if (v28)
          {
            (*(v9 + 8))(v11, v8);
            v29 = 2;
          }

          else
          {
            __chkstk_darwin(v28);
            *(&v42 - 2) = v11;
            v38 = sub_1000166A8(sub_100018110, (&v42 - 4), v45);
            (*(v9 + 8))(v11, v8);
            if (v38)
            {
              v29 = 3;
            }

            else
            {
              v29 = 2;
            }
          }

          v36 = sub_100016D0C(v43, v19, v24, v26);

          v37 = v42;
        }

        else
        {

          v29 = 1;
          v36 = v20;
          v37 = v20;
        }

        sub_100001EB0(&qword_10005BAE0, &unk_100033370);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000341C0;
        *(inited + 32) = 0xD000000000000024;
        *(inited + 40) = 0x8000000100039690;
        *(inited + 48) = v37;
        *(inited + 56) = 0xD000000000000022;
        *(inited + 64) = 0x80000001000396C0;
        *(inited + 72) = v29;
        *(inited + 80) = 0xD000000000000033;
        *(inited + 88) = 0x80000001000396F0;
        *(inited + 96) = v36;
        sub_1000030B4(inited);
        swift_setDeallocating();
        sub_100001EB0(&qword_10005BAE8, &unk_100034290);
        swift_arrayDestroy();
        nullsub_1();
        v35 = v40;

        goto LABEL_19;
      }
    }

    v12 = v46;
  }

  v30 = sub_100003960();
  (*(v5 + 16))(v7, v30, v4);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Missing input values for device language and siri language", v33, 2u);
  }

  (*(v5 + 8))(v7, v4);
  sub_1000030B4(&_swiftEmptyArrayStorage);
  nullsub_1();
  v35 = v34;
  v14 = v12;
LABEL_19:

  return v35;
}

uint64_t sub_100017B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10000A8B0();
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v8 = *v7;
  v9 = v7[1];

  v10 = sub_100002F84(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_100003218(*(a1 + 56) + 32 * v10, &v30);
  sub_100001EB0(&qword_10005BB50, "|*");
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v29 = v4;
  v13 = v34;
  v14 = sub_10000A8BC();
  if (!*(a1 + 16) || (v15 = *v14, v4 = v14[1], , v16 = sub_100002F84(v15, v4), v18 = v17, , (v18 & 1) == 0) || (sub_100003218(*(a1 + 56) + 32 * v16, &v30), (swift_dynamicCast() & 1) == 0))
  {

LABEL_10:
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v30 = 0xD000000000000026;
    v31 = 0x8000000100039660;
    v21 = Dictionary.description.getter();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v25 = v30;
    v26 = v31;
    sub_1000032B8();
    swift_allocError();
    *v27 = v25;
    *(v27 + 8) = v26;
    *(v27 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_10000330C(a2);
    return v4 & 1;
  }

  v19 = v34;
  LOBYTE(v30) = 0;
  v31 = 0;
  v32 = v13;
  v33 = v34;

  v20 = sub_100008304(a1);
  if (v29)
  {

    swift_unknownObjectRelease();
    sub_10000330C(a2);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    LOBYTE(v4) = v20;

    LOBYTE(v30) = v4 & 1;
    v31 = 0;
    v32 = v13;
    v33 = v19;

    sub_1000083C0(a1);

    swift_unknownObjectRelease();
    sub_10000330C(a2);
  }

  return v4 & 1;
}

uint64_t sub_100017E60(char a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(58);
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  v5._object = 0x8000000100034250;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x72746E6F43736920;
  v6._object = 0xEF3D776F6C466C6FLL;
  String.append(_:)(v6);
  if (a1)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (a1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x8000000100039620;
  String.append(_:)(v10);
  v11._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v11);

  v12._object = 0x8000000100039640;
  v12._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v12);
  v13._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0;
}

unint64_t sub_100017FF0(uint64_t a1)
{
  result = sub_100018018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100018018()
{
  result = qword_10005C348;
  if (!qword_10005C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C348);
  }

  return result;
}

__n128 sub_10001806C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100018078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000180C0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_10001812C(int a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000030B4(&_swiftEmptyArrayStorage);
  v10 = *(a3 + 16);
  if (v10)
  {
    v34 = a2;
    v35 = a3;
    v11 = 0;
    v37 = 0;
    v12 = (a3 + 32);
    v13 = 4;
    while (1)
    {
      v16 = v12[3];
      v17 = v12[4];
      sub_100003274(v12, v16);
      v14 = (*(v17 + 16))(v16, v17);
      v19 = v18;
      v21 = v20;
      v22 = v34;

      v23 = v35;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v9;
      v25 = v37;
      sub_100018514(v19, sub_100010464, 0, isUniquelyReferenced_nonNull_native, &v38, v36 & 1, v22, v23);
      v37 = v25;

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          if ((v14 & 0xFFFFFFFFFFFFFFFELL) != 2)
          {
            v14 = 3;
          }

          goto LABEL_5;
        }

        if (v13 != 4)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v13 == 1)
        {
          if ((v14 - 1) >= 3)
          {
            v14 = 1;
          }

          goto LABEL_5;
        }

        if (v13 != 2)
        {
LABEL_12:
          if (v14 == 4)
          {
            v14 = v13;
          }

          goto LABEL_5;
        }

        v14 = 2;
      }

LABEL_5:
      v9 = v38;
      v15 = sub_100004898(v11, v21);

      v12 += 5;
      v11 = v15;
      v13 = v14;
      if (!--v10)
      {
        goto LABEL_21;
      }
    }
  }

  v26 = sub_100003960();
  (*(v6 + 16))(v8, v26, v5);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136315138;
    v31 = sub_100018810(v36 & 1, a3);
    v33 = sub_1000029DC(v31, v32, &v38);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s: AndPolicy with no conditions, this is useless", v29, 0xCu);
    sub_100003374(v30);
  }

  (*(v6 + 8))(v8, v5);
LABEL_21:
  nullsub_1();
}

uint64_t sub_1000184D4@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t *a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_100018A08(a2, a3, a4);
  if (!v4)
  {
    *a1 = result & 1;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
  }

  return result;
}

uint64_t sub_100018514(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5, char a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 + 64;
  v11 = -1 << *(a1 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 64);
  v14 = (63 - v11) >> 6;
  v50 = a6 & 1;

  v15 = 0;
  v48 = v14;
  v49 = v10;
  v43 = a5;
  while (v13)
  {
    v20 = v15;
LABEL_15:
    v22 = __clz(__rbit64(v13)) | (v20 << 6);
    v23 = (*(a1 + 48) + 16 * v22);
    v24 = v23[1];
    v25 = *(*(a1 + 56) + 8 * v22);
    v56 = *v23;
    v57 = v24;
    v58 = v25;

    a2(&v53, &v56);

    v26 = v53;
    v27 = v54;
    v59 = v55;
    v28 = *a5;
    v30 = sub_100002F84(v53, v54);
    v31 = *(v28 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_26;
    }

    v34 = v29;
    if (*(v28 + 24) >= v33)
    {
      if ((a4 & 1) == 0)
      {
        sub_100010088();
      }
    }

    else
    {
      sub_10000FDE8(v33, a4 & 1);
      v35 = sub_100002F84(v26, v27);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_28;
      }

      v30 = v35;
    }

    v13 &= v13 - 1;
    v37 = *a5;
    if (v34)
    {
      v16 = *(v37[7] + 8 * v30);
      v47 = v16;
      LOBYTE(v56) = v50;
      v57 = a7;
      v58 = a8;
      sub_10000A704();
      v46 = sub_1000075D8(v16);
      LOBYTE(v56) = v50;
      v57 = a7;
      v58 = a8;
      a5 = v43;
      v17 = v59;
      v18 = sub_1000075D8(v59);

      v19 = v47;
      if (v18 >= v46)
      {
        v19 = v17;
      }

      *(v37[7] + 8 * v30) = v19;
    }

    else
    {
      v37[(v30 >> 6) + 8] |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v26;
      v38[1] = v27;
      *(v37[7] + 8 * v30) = v59;
      v39 = v37[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_27;
      }

      v37[2] = v41;
    }

    a4 = 1;
    v15 = v20;
    v14 = v48;
    v10 = v49;
  }

  v21 = v15;
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v14)
    {
      sub_100006A78(a1);
    }

    v13 = *(v10 + 8 * v20);
    ++v21;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100018810(char a1, uint64_t a2)
{
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v25 = 0xD00000000000001ALL;
  v26 = 0x8000000100039730;
  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8 = *(a2 + 16);
  v9 = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v24 = &_swiftEmptyArrayStorage;
    sub_100010338(0, v8, 0);
    v9 = &_swiftEmptyArrayStorage;
    v10 = a2 + 32;
    do
    {
      sub_1000016D0(v10, v23);
      sub_100003274(v23, v23[3]);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_100003374(v23);
      v24 = v9;
      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        sub_100010338((v14 > 1), v15 + 1, 1);
        v9 = v24;
      }

      v9[2] = v15 + 1;
      v16 = &v9[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      v10 += 40;
      --v8;
    }

    while (v8);
  }

  v23[0] = v9;
  sub_100001EB0(&qword_10005BB50, "|*");
  sub_100010E24();
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 62;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  return v25;
}

uint64_t sub_100018A08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_10000A844();
  if (!*(a1 + 16) || (v10 = *v9, v11 = v9[1], , v12 = sub_100002F84(v10, v11), LOBYTE(v4) = v13, , (v4 & 1) == 0) || (sub_100003218(*(a1 + 56) + 32 * v12, &v29), sub_100001EB0(&qword_10005BAF8, &qword_100033380), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *&v29 = 0x63696C6F50646E41;
    *(&v29 + 1) = 0xEB00000000203A79;
    v21 = Dictionary.description.getter();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v25 = v29;
    sub_1000032B8();
    swift_allocError();
    *v26 = v25;
    *(v26 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_10000330C(a2);
    return v4 & 1;
  }

  v15 = v31[0];
  v16 = *(v31[0] + 16);
  if (!v16)
  {
    v18 = &_swiftEmptyArrayStorage;
LABEL_17:

    LOBYTE(v29) = 0;
    *(&v29 + 1) = 0;
    v30 = v18;

    v27 = sub_100008304(a1);
    if (v5)
    {

      swift_unknownObjectRelease();
      sub_10000330C(a2);
      swift_bridgeObjectRelease_n();
    }

    else
    {
      LOBYTE(v4) = v27;

      LOBYTE(v29) = v4 & 1;
      *(&v29 + 1) = 0;
      v30 = v18;

      sub_1000083C0(a1);

      swift_unknownObjectRelease();
      sub_10000330C(a2);
    }

    return v4 & 1;
  }

  v17 = 0;
  v4 = v31[0] + 32;
  v18 = &_swiftEmptyArrayStorage;
  v32 = a2;
  v28 = a3;
  while (v17 < *(v15 + 16))
  {
    sub_100003218(v4, v31);
    sub_100007C48(v31, a2, a3, &v29);
    if (v5)
    {
      sub_100003374(v31);

      swift_unknownObjectRelease();

      sub_10000330C(a2);

      return v4 & 1;
    }

    sub_100003374(v31);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1000101F0(0, v18[2] + 1, 1, v18);
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1000101F0((v19 > 1), v20 + 1, 1, v18);
    }

    ++v17;
    v18[2] = v20 + 1;
    result = sub_100007130(&v29, &v18[5 * v20 + 4]);
    v4 += 32;
    a2 = v32;
    a3 = v28;
    if (v16 == v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100018DAC(uint64_t a1)
{
  result = sub_100018DD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100018DD4()
{
  result = qword_10005C350;
  if (!qword_10005C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C350);
  }

  return result;
}

uint64_t sub_100018E38(uint64_t a1, uint64_t a2, unint64_t a3, id a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 objectForInputValue:a3];
  if (v11)
  {
    v12 = v11;
    if ([v11 status] == a4)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    sub_100001EB0(&qword_10005BAE0, &unk_100033370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100033350;
    v15 = sub_10001F4BC(a3);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(inited + 32) = v16;
    *(inited + 40) = v18;
    *(inited + 48) = v13;
    sub_1000030B4(inited);
    swift_setDeallocating();
    sub_1000031B0(inited + 32);
    nullsub_1();
    v20 = v19;

    v10 = v12;
  }

  else
  {
    v21 = sub_100003960();
    (*(v7 + 16))(v9, v21, v6);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = a3;

      _os_log_impl(&_mh_execute_header, v22, v23, "Unknown input: %llu", v24, 0xCu);
    }

    else
    {
    }

    (*(v7 + 8))(v9, v6);
    sub_100001EB0(&qword_10005BAE0, &unk_100033370);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_100033350;
    v26 = sub_10001F4BC(a3);
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    *(v25 + 48) = 5;
    sub_1000030B4(v25);
    swift_setDeallocating();
    sub_1000031B0(v25 + 32);
    nullsub_1();
    v20 = v30;
  }

  return v20;
}

uint64_t sub_100019190@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_1000191D4(a2, a3, a4);
  if (!v4)
  {
    *a1 = result & 1;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
  }

  return result;
}

uint64_t sub_1000191D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_10000A874();
  if (*(a1 + 16) && (v9 = *v8, v10 = v8[1], , v11 = sub_100002F84(v9, v10), v13 = v12, , (v13 & 1) != 0) && (sub_100003218(*(a1 + 56) + 32 * v11, &v30), (swift_dynamicCast() & 1) != 0) && (v14 = v34, v15 = sub_10000A880(), *(a1 + 16)) && (v16 = *v15, v17 = v15[1], , v18 = sub_100002F84(v16, v17), v4 = v19, , (v4 & 1) != 0) && (sub_100003218(*(a1 + 56) + 32 * v18, &v30), (swift_dynamicCast() & 1) != 0))
  {
    v20 = v34;
    LOBYTE(v30) = 0;
    v31 = 0;
    v32 = v14;
    v33 = v34;
    v21 = sub_100008304(a1);
    if (!v5)
    {
      v4 = v21;
      LOBYTE(v30) = v21 & 1;
      v31 = 0;
      v32 = v14;
      v33 = v20;
      sub_1000083C0(a1);

      swift_unknownObjectRelease();
      sub_10000330C(a2);
      return v4 & 1;
    }
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v30 = 0xD000000000000012;
    v31 = 0x8000000100039780;
    v22 = Dictionary.description.getter();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26 = v30;
    v27 = v31;
    sub_1000032B8();
    swift_allocError();
    *v28 = v26;
    *(v28 + 8) = v27;
    *(v28 + 16) = 1;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  sub_10000330C(a2);
  return v4 & 1;
}

unint64_t sub_10001948C(char a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_10001F4BC(a2);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = sub_10001F528(a3);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _StringGuts.grow(_:)(31);

  if (a1)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (a1)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v15 = v14;
  String.append(_:)(*&v13);

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = v6;
  v17._object = v8;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 540884256;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v10;
  v19._object = v12;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 62;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  return 0xD000000000000022;
}

unint64_t sub_1000195EC(uint64_t a1)
{
  result = sub_100019614();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100019614()
{
  result = qword_10005C358;
  if (!qword_10005C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C358);
  }

  return result;
}

uint64_t sub_100019668(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000196C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_10001A304(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v8 = a2;
  v6 = [v8 unsignedIntValue];
  if (v6 > 0x85)
  {
    v7 = "<Unknown Domain>";
  }

  else
  {
    v7 = off_100045BE0[v6];
  }

  [v4 appendFormat:@"%s(%@) = %@\n", v7, v8, v5];
}

void sub_10001AA18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 _answerDictionaryForOverrideData:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

const char *sub_10001BE98(unint64_t a1)
{
  if (a1 > 0x85)
  {
    return "<Unknown Domain>";
  }

  else
  {
    return off_100045BE0[a1];
  }
}

char *sub_10001BEBC(const char *a1)
{
  if (a1 == 1)
  {
    v5 = 0;
    if (asprintf(&v5, "%s%s", "/", "/private/var/db/eligibilityd/eligibility.plist") != -1)
    {
      return v5;
    }

    v2 = sub_10001F638();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      return v5;
    }

    *buf = 136315394;
    v7 = "copy_eligibility_domain_public_answer_plist_path";
    v8 = 2080;
    v9 = "/private/var/db/eligibilityd/eligibility.plist";
    goto LABEL_13;
  }

  if (!a1)
  {
    v5 = 0;
    if (asprintf(&v5, "%s%s", "/", "/private/var/db/os_eligibility/eligibility.plist") != -1)
    {
      return v5;
    }

    v2 = sub_10001F638();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      return v5;
    }

    *buf = 136315394;
    v7 = "copy_eligibility_domain_answer_plist_path";
    v8 = 2080;
    v9 = "/private/var/db/os_eligibility/eligibility.plist";
LABEL_13:
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: Failed to construct absolute path for relative path: %s", buf, 0x16u);
    return v5;
  }

  v4 = sub_10001F638();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "copy_eligibility_file_path";
    v8 = 2048;
    v9 = a1;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s: Unknown eligibility answer file type: %llu", buf, 0x16u);
  }

  return 0;
}

char *sub_10001C094()
{
  v2 = 0;
  if (asprintf(&v2, "%s%s", "/", "/private/var/db/eligibilityd/datastore.data") == -1)
  {
    v0 = sub_10001F638();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v4 = "copy_eligibility_datastore_path";
      v5 = 2080;
      v6 = "/private/var/db/eligibilityd/datastore.data";
      _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: Failed to construct absolute path for relative path: %s", buf, 0x16u);
    }
  }

  return v2;
}

void sub_10001C2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001C2F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10001C308(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _onQueue_debugDictionary];

  return _objc_release_x1();
}

void sub_10001C43C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 description];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_10001C578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001C590(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_saveInputsWithError:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10001D138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001D158(uint64_t a1)
{
  v2 = [*(a1 + 32) eligibilityInputs];
  v6 = [v2 mutableCopy];

  [v6 setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
  v3 = [v6 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _onQueue_saveInputsWithError:*(a1 + 64)];
}

void sub_10001D3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001D3FC(uint64_t a1)
{
  v5 = [*(a1 + 32) eligibilityInputs];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_10001DAA0(uint64_t a1)
{
  qword_10005D4B0 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

char *sub_10001F30C(unint64_t a1)
{
  if (a1 < 5)
  {
    return (&off_1000464D8)[a1];
  }

  v3 = sub_10001F638();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "eligibility_answer_to_str";
    v6 = 2048;
    v7 = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: Unsupported answer type: %llu", &v4, 0x16u);
  }

  return 0;
}

char *sub_10001F3E4(unint64_t a1)
{
  if (a1 < 0x13)
  {
    return (&off_100046500)[a1];
  }

  v3 = sub_10001F638();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "eligibility_input_to_str";
    v6 = 2048;
    v7 = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: Unsupported input type: %llu", &v4, 0x16u);
  }

  return 0;
}

id sub_10001F4BC(unint64_t a1)
{
  if (sub_10001F3E4(a1))
  {
    [NSString stringWithUTF8String:?];
  }

  else
  {
    [NSString stringWithFormat:@"<Unknown: %llu>", a1];
  }
  v2 = ;

  return v2;
}

id sub_10001F528(unint64_t a1)
{
  if (a1 >= 8)
  {
    v3 = sub_10001F638();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v6 = "eligibility_input_status_to_str";
      v7 = 2048;
      v8 = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: Unsupported input status: %llu", buf, 0x16u);
    }

    v2 = [NSString stringWithFormat:@"<Unknown: %llu>", a1];
  }

  else
  {
    v2 = [NSString stringWithUTF8String:(&off_100046598)[a1]];
  }

  return v2;
}

id sub_10001F638()
{
  if (qword_10005D4C8 != -1)
  {
    dispatch_once(&qword_10005D4C8, &stru_1000465D8);
  }

  v1 = qword_10005D4C0;

  return v1;
}

void sub_10001F68C(id a1)
{
  qword_10005D4C0 = os_log_create("com.apple.os_eligibility", "daemon");

  _objc_release_x1();
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_10001F638();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v14 = "main";
    v15 = 2080;
    v16 = "286.40.9.0.1";
    v17 = 2080;
    v18 = "Oct 10 2025";
    v19 = 2080;
    v20 = "22:16:47";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s: eligibilityd (%s) built at %s %s started", buf, 0x2Au);
  }

  v2 = dispatch_workloop_create("com.apple.eligibility.xpc_workloop");
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create_with_target_V2("com.apple.eligibility.xpc_handler", v3, v2);

  sub_100025F54(v4, &stru_1000465F8);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

  v7 = dispatch_queue_create("com.apple.eligibility.notifications", v6);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v7, &stru_100046638);
  mach_service = xpc_connection_create_mach_service("com.apple.eligibilityd", v4, 1uLL);
  if (!mach_service)
  {
    v9 = sub_10001F638();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v14 = "main";
      v15 = 2080;
      v16 = "com.apple.eligibilityd";
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s: Unable to start xpc service %s", buf, 0x16u);
    }

    exit(1);
  }

  v10 = mach_service;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001F924;
  handler[3] = &unk_100046660;
  v12 = v2;
  xpc_connection_set_event_handler(v10, handler);
  xpc_connection_activate(v10);

  dispatch_main();
}

void sub_10001F924(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  if (xpc_get_type(v5) == &_xpc_type_connection)
  {
    xpc_connection_set_target_queue(v5, v6);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001FAB4;
    handler[3] = &unk_100046660;
    v7 = v5;
    v16 = v7;
    xpc_connection_set_event_handler(v7, handler);
    xpc_connection_resume(v7);
    v8 = v6;
    v9 = +[GlobalConfiguration sharedInstance];
    v10 = [v9 isMemoryConstrainedDevice];

    if (v10)
    {
      v11 = qword_10005D4D0;
      if (!qword_10005D4D0)
      {
        v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);
        v13 = qword_10005D4D0;
        qword_10005D4D0 = v12;

        dispatch_source_set_event_handler(qword_10005D4D0, &stru_1000466A8);
        v11 = qword_10005D4D0;
      }

      v14 = dispatch_time(0, 30000000000);
      dispatch_source_set_timer(v11, v14, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      dispatch_activate(qword_10005D4D0);
    }
  }
}

void sub_10001FAB4(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = *(v1 + 32);
  v5 = v3;
  *&v6 = -1;
  *(&v6 + 1) = -1;
  v48 = v6;
  v49 = v6;
  xpc_connection_get_audit_token();
  pid = xpc_connection_get_pid(v4);
  v8 = proc_pidpath(pid, buffer, 0x1000u);
  if (v8 < 1)
  {
    v12 = @"(unknown)";
  }

  else
  {
    v9 = v8;
    v10 = +[NSFileManager defaultManager];
    v11 = [v10 stringWithFileSystemRepresentation:buffer length:v9];

    v12 = [v11 lastPathComponent];
  }

  v13 = [NSString stringWithFormat:@"%@(%d)", v12, pid];

  v14 = xpc_copy_description(v5);
  v15 = sub_10001F638();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 136315650;
    *&buffer[4] = "_connectionHandler";
    *&buffer[12] = 2112;
    *&buffer[14] = v13;
    *&buffer[22] = 2080;
    *&buffer[24] = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: Message from %@: %s", buffer, 0x20u);
  }

  free(v14);
  if (xpc_get_type(v5) == &_xpc_type_error)
  {
    v17 = sub_10001F638();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      string = xpc_dictionary_get_string(v5, _xpc_error_key_description);
      *buffer = 136315394;
      *&buffer[4] = "_connectionHandler";
      *&buffer[12] = 2080;
      *&buffer[14] = string;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Received xpc error: %s", buffer, 0x16u);
    }

    goto LABEL_78;
  }

  reply = xpc_dictionary_create_reply(v5);
  if (!reply)
  {
    v20 = sub_10001F638();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buffer = 136315138;
      *&buffer[4] = "_connectionHandler";
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: Failed to construct reply message, canceling connection", buffer, 0xCu);
    }

    xpc_connection_cancel(v4);
    goto LABEL_79;
  }

  v17 = reply;
  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    v18 = sub_10001F638();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buffer = 136315138;
      *&buffer[4] = "eligibility_xpc_get_message_type";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: xpc message type must be a dictionary", buffer, 0xCu);
    }

    goto LABEL_77;
  }

  uint64 = xpc_dictionary_get_uint64(v5, "eligibility_message_type");
  v22 = uint64;
  if (uint64 <= 4)
  {
    if (uint64 > 2)
    {
      if (uint64 == 3)
      {
        *buffer = v48;
        *&buffer[16] = v49;
        if (sub_100020760(buffer, "com.apple.private.eligibilityd.forceDomain"))
        {
          *buffer = v48;
          *&buffer[16] = v49;
          if (sub_1000208BC(buffer))
          {
            v47 = 0;
            v23 = sub_100020A6C(v5, &v47);
            goto LABEL_50;
          }
        }

        v32 = sub_10001F638();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_76;
        }

        *buffer = 136315394;
        *&buffer[4] = "_connectionHandler";
        *&buffer[12] = 2112;
        *&buffer[14] = v13;
        v33 = "%s: Process %@ not entitled to send force domain message";
      }

      else
      {
        *buffer = v48;
        *&buffer[16] = v49;
        if (sub_100020760(buffer, "com.apple.private.eligibilityd.internalState"))
        {
          v47 = 0;
          v23 = sub_100020D4C(v17, &v47);
          goto LABEL_50;
        }

        v32 = sub_10001F638();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_76;
        }

        *buffer = 136315394;
        *&buffer[4] = "_connectionHandler";
        *&buffer[12] = 2112;
        *&buffer[14] = v13;
        v33 = "%s: Process %@ not entitled to send internal state message";
      }
    }

    else if (uint64 == 1)
    {
      *buffer = v48;
      *&buffer[16] = v49;
      if (sub_100020760(buffer, "com.apple.private.eligibilityd.setInput"))
      {
        *buffer = v48;
        *&buffer[16] = v49;
        if (sub_1000208BC(buffer))
        {
          v47 = 0;
          v23 = sub_1000210F8(v5, v13, &v47);
          goto LABEL_50;
        }
      }

      v32 = sub_10001F638();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_76;
      }

      *buffer = 136315394;
      *&buffer[4] = "_connectionHandler";
      *&buffer[12] = 2112;
      *&buffer[14] = v13;
      v33 = "%s: Process %@ not entitled to send set input message";
    }

    else
    {
      if (uint64 != 2)
      {
        goto LABEL_77;
      }

      *buffer = v48;
      *&buffer[16] = v49;
      if (sub_100020760(buffer, "com.apple.private.eligibilityd.resetDomain"))
      {
        *buffer = v48;
        *&buffer[16] = v49;
        if (sub_1000208BC(buffer))
        {
          v47 = 0;
          v23 = sub_1000209C0(v5, &v47);
          goto LABEL_50;
        }
      }

      v32 = sub_10001F638();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_76;
      }

      *buffer = 136315394;
      *&buffer[4] = "_connectionHandler";
      *&buffer[12] = 2112;
      *&buffer[14] = v13;
      v33 = "%s: Process %@ not entitled to send reset domain message";
    }

    goto LABEL_75;
  }

  if (uint64 <= 6)
  {
    if (uint64 == 5)
    {
      *buffer = v48;
      *&buffer[16] = v49;
      if (sub_100020760(buffer, "com.apple.private.eligibilityd.resetAllDomains"))
      {
        *buffer = v48;
        *&buffer[16] = v49;
        if (sub_1000208BC(buffer))
        {
          v47 = 0;
          v23 = sub_100020A24(&v47);
          goto LABEL_50;
        }
      }

      v32 = sub_10001F638();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_76;
      }

      *buffer = 136315394;
      *&buffer[4] = "_connectionHandler";
      *&buffer[12] = 2112;
      *&buffer[14] = v13;
      v33 = "%s: Process %@ not entitled to send reset all domains message";
    }

    else
    {
      *buffer = v48;
      *&buffer[16] = v49;
      if (sub_100020760(buffer, "com.apple.private.eligibilityd.forceDomainSet"))
      {
        *buffer = v48;
        *&buffer[16] = v49;
        if (sub_1000208BC(buffer))
        {
          v47 = 0;
          v23 = sub_100020C24(v5, &v47);
          goto LABEL_50;
        }
      }

      v32 = sub_10001F638();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_76;
      }

      *buffer = 136315394;
      *&buffer[4] = "_connectionHandler";
      *&buffer[12] = 2112;
      *&buffer[14] = v13;
      v33 = "%s: Process %@ not entitled to send force domain set message";
    }

LABEL_75:
    _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v33, buffer, 0x16u);
    goto LABEL_76;
  }

  switch(uint64)
  {
    case 7:
      *buffer = v48;
      *&buffer[16] = v49;
      if (sub_100020760(buffer, "com.apple.private.eligibilityd.stateDump"))
      {
        v47 = 0;
        v23 = sub_100020DE0(v17, &v47);
        goto LABEL_50;
      }

      v32 = sub_10001F638();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_76;
      }

      *buffer = 136315394;
      *&buffer[4] = "_connectionHandler";
      *&buffer[12] = 2112;
      *&buffer[14] = v13;
      v33 = "%s: Process %@ not entitled to send state dump message";
      goto LABEL_75;
    case 8:
      *buffer = v48;
      *&buffer[16] = v49;
      if (sub_100020760(buffer, "com.apple.private.eligibilityd.dumpSysdiagnoseDataToDir"))
      {
        v47 = 0;
        v23 = sub_100020E74(v5, &v47);
LABEL_50:
        v24 = v23;
        v25 = v47;
        if (v24)
        {
          v26 = 0;
LABEL_103:
          xpc_dictionary_set_int64(v17, "errorNum", v26);
          xpc_connection_send_message(v4, v17);

          goto LABEL_80;
        }

        v27 = sub_10001F638();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buffer = 136315650;
          *&buffer[4] = "_connectionHandler";
          *&buffer[12] = 2048;
          *&buffer[14] = v22;
          *&buffer[22] = 2112;
          *&buffer[24] = v25;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s: Message %llu failed: %@", buffer, 0x20u);
        }

        v28 = v25;
        v25 = v28;
        if (v28)
        {
          v29 = [v28 domain];
          v30 = [v29 isEqualToString:?];

          if (v30)
          {
            v31 = v25;
LABEL_95:
            v26 = [v31 code];
LABEL_96:
            if (v25)
            {
              v42 = [v25 description];
              v43 = [v42 UTF8String];

              if (v43)
              {
                xpc_dictionary_set_string(v17, "errorDesc", v43);
              }

              else
              {
                v44 = sub_10001F638();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buffer = 136315394;
                  *&buffer[4] = "_connectionHandler";
                  *&buffer[12] = 2112;
                  *&buffer[14] = v25;
                  _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s: Received an error, but couldn't obtain its c-string description: %@", buffer, 0x16u);
                }
              }
            }

            goto LABEL_103;
          }

          v45 = v17;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          obj = [v25 underlyingErrors];
          v34 = [obj countByEnumeratingWithState:&v50 objects:buffer count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v51;
LABEL_83:
            v37 = 0;
            while (1)
            {
              if (*v51 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v50 + 1) + 8 * v37);
              v39 = [v38 domain];
              v40 = [v39 isEqualToString:NSPOSIXErrorDomain];

              if (v40)
              {
                break;
              }

              if (v35 == ++v37)
              {
                v35 = [obj countByEnumeratingWithState:&v50 objects:buffer count:16];
                if (v35)
                {
                  goto LABEL_83;
                }

                goto LABEL_89;
              }
            }

            v31 = v38;

            v17 = v45;
            if (!v31)
            {
              goto LABEL_91;
            }

            goto LABEL_95;
          }

LABEL_89:

          v17 = v45;
        }

LABEL_91:
        v41 = sub_10001F638();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          *buffer = 136315394;
          *&buffer[4] = "_connectionHandler";
          *&buffer[12] = 2112;
          *&buffer[14] = v25;
          _os_log_fault_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "%s: Unknown underlying POSIX error for - %@", buffer, 0x16u);
        }

        v31 = 0;
        v26 = 108;
        goto LABEL_96;
      }

      v32 = sub_10001F638();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buffer = 136315394;
        *&buffer[4] = "_connectionHandler";
        *&buffer[12] = 2112;
        *&buffer[14] = v13;
        v33 = "%s: Process %@ not entitled to send sysdiagnose dump message";
        goto LABEL_75;
      }

LABEL_76:

      break;
    case 9:
      *buffer = v48;
      *&buffer[16] = v49;
      if (sub_100020760(buffer, "com.apple.private.eligibilityd.setTestMode"))
      {
        *buffer = v48;
        *&buffer[16] = v49;
        if (sub_1000208BC(buffer))
        {
          v47 = 0;
          v23 = sub_100021064(v5, &v47);
          goto LABEL_50;
        }
      }

      v32 = sub_10001F638();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_76;
      }

      *buffer = 136315394;
      *&buffer[4] = "_connectionHandler";
      *&buffer[12] = 2112;
      *&buffer[14] = v13;
      v33 = "%s: Process %@ not entitled to send set test mode message";
      goto LABEL_75;
  }

LABEL_77:
  xpc_connection_cancel(v4);
LABEL_78:

LABEL_79:
  v25 = 0;
LABEL_80:
}

void sub_1000206A4(id a1)
{
  if (!dispatch_source_testcancel(qword_10005D4D0))
  {
    v1 = sub_10001F638();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315138;
      v3 = "_tryExitWhenCleanOnWorkloop_block_invoke";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s: Running on a memory-constrained device; eager exiting when clean", &v2, 0xCu);
    }

    xpc_transaction_exit_clean();
  }
}

BOOL sub_100020760(uint64_t a1, uint64_t a2)
{
  v3 = xpc_copy_entitlement_for_token();
  v4 = v3;
  if (v3)
  {
    if (xpc_get_type(v3) == &_xpc_type_BOOL)
    {
      value = xpc_BOOL_get_value(v4);
      goto LABEL_8;
    }

    v5 = sub_10001F638();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "_checkEntitlement";
      v11 = 2080;
      v12 = a2;
      v6 = "%s: Entitlement %s was the wrong type";
LABEL_10:
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, &v9, 0x16u);
    }
  }

  else
  {
    v5 = sub_10001F638();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "_checkEntitlement";
      v11 = 2080;
      v12 = a2;
      v6 = "%s: Missing entitlement %s";
      goto LABEL_10;
    }
  }

  value = 0;
LABEL_8:

  return value;
}

uint64_t sub_1000208BC(_OWORD *a1)
{
  v2 = +[GlobalConfiguration sharedInstance];
  v3 = [v2 testMode];

  if (!v3)
  {
    return 1;
  }

  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  if (sub_100020760(v7, "com.apple.private.eligibilityd.setTestMode"))
  {
    return 1;
  }

  v6 = sub_10001F638();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v7[0]) = 136315138;
    *(v7 + 4) = "_checkTestModeEntitlement";
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s: Missing the com.apple.private.eligibilityd.setTestMode entitlement while test mode is enabled", v7, 0xCu);
  }

  return 0;
}

id sub_1000209C0(void *a1, uint64_t a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, "domain");
  v4 = +[EligibilityEngine sharedInstance];
  v5 = [v4 resetDomain:uint64 withError:a2];

  return v5;
}

id sub_100020A24(uint64_t a1)
{
  v2 = +[EligibilityEngine sharedInstance];
  v3 = [v2 resetAllDomainsWithError:a1];

  return v3;
}

id sub_100020A6C(void *a1, void *a2)
{
  v3 = a1;
  uint64 = xpc_dictionary_get_uint64(v3, "domain");
  v5 = xpc_dictionary_get_uint64(v3, "answer");
  v6 = xpc_dictionary_get_dictionary(v3, "context");

  if (v5 < 5)
  {
    v7 = +[EligibilityEngine sharedInstance];
    v13 = 0;
    v8 = [v7 forceDomainAnswer:uint64 answer:v5 context:v6 withError:&v13];
    v9 = v13;

    if (!a2)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v10 = sub_10001F638();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "_forceDomainAnswer";
    v16 = 2048;
    v17 = uint64;
    v18 = 2048;
    v19 = v5;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Attempting to force domain %llu to unknown answer value %llu", buf, 0x20u);
  }

  v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  v8 = 0;
  if (a2)
  {
LABEL_7:
    if ((v8 & 1) == 0)
    {
      v11 = v9;
      *a2 = v9;
    }
  }

LABEL_9:

  return v8;
}

id sub_100020C24(void *a1, void *a2)
{
  v3 = a1;
  uint64 = xpc_dictionary_get_uint64(v3, "domainSet");
  v5 = xpc_dictionary_get_uint64(v3, "answer");
  v6 = xpc_dictionary_get_dictionary(v3, "context");

  if (uint64 == 1 && v5 - 2 < 3)
  {
    v7 = +[EligibilityEngine sharedInstance];
    v12 = 0;
    v8 = [v7 forceDomainSetAnswers:1 answer:v5 context:v6 withError:&v12];
    v9 = v12;

    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v8 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  if ((v8 & 1) == 0)
  {
    v10 = v9;
    *a2 = v9;
  }

LABEL_8:

  return v8;
}

BOOL sub_100020D4C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[EligibilityEngine sharedInstance];
  v5 = [v4 internalStateWithError:a2];
  if (v5)
  {
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v3, "internalStateDictionary", v6);
  }

  return v5 != 0;
}

BOOL sub_100020DE0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[EligibilityEngine sharedInstance];
  v5 = [v4 stateDumpWithError:a2];
  if (v5)
  {
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v3, "stateDumpDictionary", v6);
  }

  return v5 != 0;
}

id sub_100020E74(void *a1, void *a2)
{
  string = xpc_dictionary_get_string(a1, "dirPath");
  if (!string)
  {
    v10 = sub_10001F638();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "_dumpToDirectory";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: File path read from xpc message was nil, aborting.", buf, 0xCu);
    }

LABEL_11:
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v8 = 0;
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v4 = string;
  v5 = [NSURL fileURLWithFileSystemRepresentation:string isDirectory:1 relativeToURL:0];
  if (!v5)
  {
    v11 = sub_10001F638();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "_dumpToDirectory";
      v17 = 2080;
      v18 = v4;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: Failed to convert directory path %s to an NSURL, aborting.", buf, 0x16u);
    }

    goto LABEL_11;
  }

  v6 = v5;
  v7 = +[EligibilityEngine sharedInstance];
  v14 = 0;
  v8 = [v7 dumpToDirectory:v6 withError:&v14];
  v9 = v14;

  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((v8 & 1) == 0)
  {
    v12 = v9;
    *a2 = v9;
  }

LABEL_14:

  return v8;
}

id sub_100021064(void *a1, void *a2)
{
  v3 = xpc_dictionary_get_BOOL(a1, "enabled");
  v4 = +[GlobalConfiguration sharedInstance];
  v9 = 0;
  v5 = [v4 setTestMode:v3 withError:&v9];
  v6 = v9;

  if (a2 && (v5 & 1) == 0)
  {
    v7 = v6;
    *a2 = v6;
  }

  return v5;
}

uint64_t sub_1000210F8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  uint64 = xpc_dictionary_get_uint64(v6, "input");
  v8 = xpc_dictionary_get_value(v6, "value");
  v9 = xpc_dictionary_get_uint64(v6, "status");

  if (uint64 <= 0x11 && ((0x3C216u >> uint64) & 1) != 0 && (!v8 || !v9))
  {
    if (!v8 && !v9)
    {
      v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      goto LABEL_6;
    }

    if (v9 <= 7 && ((1 << v9) & 0xE1) != 0)
    {
      v13 = +[EligibilityEngine sharedInstance];
      v14 = 0;
      v9 = [v13 setInput:uint64 to:v8 status:v9 fromProcess:v5 withError:&v14];
      v10 = v14;

      goto LABEL_6;
    }
  }

  v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  v9 = 0;
LABEL_6:
  if (a3 && (v9 & 1) == 0)
  {
    v11 = v10;
    *a3 = v10;
  }

  return v9;
}

void sub_10002128C(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  v3 = sub_10001F638();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "main_block_invoke_2";
    v7 = 2080;
    v8 = string;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Got darwin notification %s", &v5, 0x16u);
  }

  if (!strcmp(string, "AppleLanguagePreferencesChangedNotification") || !strcmp(string, "AFLanguageCodeDidChangeDarwinNotification") || !strcmp(string, "com.apple.coregraphics.GUIConsoleSessionChanged"))
  {
    v4 = +[EligibilityEngine sharedInstance];
    [v4 recomputeAllDomainAnswers];
  }
}

void sub_1000213B0(id a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v1 = +[InputManager sharedInstance];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_1000218B8;
  v23 = &unk_100046688;
  v24 = &v18;
  [v1 enumerateInputsUsingBlock:buf];
  if (*(v19 + 24) == 1)
  {
    v2 = notify_post("com.apple.os-eligibility-domain.input-needed");
    if (v2)
    {
      v3 = sub_10001F638();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v25 = 136315394;
        v26 = "_sendInputsNeededNotification";
        v27 = 1024;
        v28 = v2;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: Could not send inputs needed notification com.apple.os-eligibility-domain.input-needed: %u", v25, 0x12u);
      }
    }
  }

  _Block_object_dispose(&v18, 8);
  v18 = 0;
  if (asprintf(&v18, "%s%s", "/", "/private/var/db/os_eligibility") == -1)
  {
    v4 = sub_10001F638();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "copy_eligibility_domain_data_vault_directory_path";
      *&buf[12] = 2080;
      *&buf[14] = "/private/var/db/os_eligibility";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s: Failed to construct absolute path for relative path: %s", buf, 0x16u);
    }
  }

  v5 = v18;
  sub_100021900(v18, 1);
  free(v5);
  v18 = 0;
  if (asprintf(&v18, "%s%s", "/", "/private/var/db/eligibilityd") == -1)
  {
    v6 = sub_10001F638();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "copy_eligibility_domain_daemon_directory_path";
      *&buf[12] = 2080;
      *&buf[14] = "/private/var/db/eligibilityd";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s: Failed to construct absolute path for relative path: %s", buf, 0x16u);
    }
  }

  v7 = v18;
  sub_100021900(v18, 0);
  free(v7);
  v18 = 0;
  v8 = sub_1000282D8(&v18);
  v9 = v18;
  if (v8)
  {
    v10 = [v8 URLByAppendingPathComponent:@"Library/Caches/NeverRestore/" isDirectory:1];
    v11 = v10;
    sub_100021900([v10 fileSystemRepresentation], 0);
  }

  else
  {
    v10 = sub_10001F638();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "_createDirectories";
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Failed to obtain the URL for data container: %@", buf, 0x16u);
    }
  }

  v18 = 0;
  if (asprintf(&v18, "%s%s", "/", "/private/var/db/eligibilityd/domains.data") == -1)
  {
    v12 = sub_10001F638();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "copy_eligibility_domain_domains_serialization_path";
      *&buf[12] = 2080;
      *&buf[14] = "/private/var/db/eligibilityd/domains.data";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Failed to construct absolute path for relative path: %s", buf, 0x16u);
    }
  }

  v13 = v18;
  sub_100021B90(v18);
  free(v13);
  v18 = 0;
  if (asprintf(&v18, "%s%s", "/", "/private/var/db/eligibilityd/gestalt_data.plist") == -1)
  {
    v14 = sub_10001F638();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "copy_eligibility_domain_gestalt_data_path";
      *&buf[12] = 2080;
      *&buf[14] = "/private/var/db/eligibilityd/gestalt_data.plist";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Failed to construct absolute path for relative path: %s", buf, 0x16u);
    }
  }

  v15 = v18;
  sub_100021B90(v18);
  free(v15);
  v16 = +[EligibilityEngine sharedInstance];
  [v16 recomputeAllDomainAnswers];

  v17 = +[EligibilityEngine sharedInstance];
  [v17 scheduleDailyRecompute];
}

void sub_100021898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000218B8(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 status];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_100021900(const char *a1, int a2)
{
  if (mkdir(a1, 0x1EDu))
  {
    v4 = *__error();
    if (v4 == 17)
    {
      goto LABEL_8;
    }

    v5 = sub_10001F638();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_7;
    }

    *buf = 136315906;
    v19 = "_createDirectoryAtPath";
    v20 = 2080;
    v21 = a1;
    v22 = 2080;
    v23 = strerror(v4);
    v24 = 1024;
    v25 = v4;
    v6 = "%s: mkdir of path %s failed; this directory should already exist: %s(%d)";
    v7 = v5;
    v8 = 38;
    goto LABEL_18;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v5 = sub_10001F638();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v19 = "_createDirectoryAtPath";
    v20 = 2080;
    v21 = a1;
    v6 = "%s: Successfully created directory %s; this should already exist";
    v7 = v5;
    v8 = 22;
LABEL_18:
    _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, v6, buf, v8);
  }

LABEL_7:

LABEL_8:
  v9 = opendir(a1);
  if (v9)
  {
    v10 = v9;
    v11 = dirfd(v9);
    if (fcntl(v11, 64, 4))
    {
      v12 = sub_10001F638();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = __error();
        v15 = strerror(*v14);
        *buf = 136315650;
        v19 = "_setDataProtectionClassDForPath";
        v20 = 2080;
        v21 = a1;
        v22 = 2080;
        v23 = v15;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Failed to setclass(PROTECTION_CLASS_D) on directory %s: %s", buf, 0x20u);
      }
    }

    closedir(v10);
  }

  else
  {
    v13 = sub_10001F638();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 136315650;
      v19 = "_setDataProtectionClassDForPath";
      v20 = 2080;
      v21 = a1;
      v22 = 2080;
      v23 = v17;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: opendir of %s failed: %s", buf, 0x20u);
    }
  }
}

void sub_100021B90(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_10001F638();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v14 = "_deleteFileAtPath";
      _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "%s: Requesting to delete a Null path, that doesn't make sense", buf, 0xCu);
    }
  }

  v3 = [NSString stringWithUTF8String:a1];
  v4 = [NSURL fileURLWithPath:v3 isDirectory:0];

  v5 = +[NSFileManager defaultManager];
  v12 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v12];
  v7 = v12;

  if ((v6 & 1) == 0)
  {
    v8 = [v7 domain];
    if ([v8 isEqualToString:NSCocoaErrorDomain])
    {
      v9 = [v7 code];

      if (v9 == 4)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v10 = sub_10001F638();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v4 path];
      *buf = 136315650;
      v14 = "_deleteFileAtPath";
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v7;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Failed to remove %@: %@", buf, 0x20u);
    }
  }

LABEL_13:
}

void sub_100021F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100021F1C(uint64_t a1)
{
  result = [*(a1 + 32) testModeEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10002232C(id a1)
{
  qword_10005D4D8 = objc_alloc_init(GlobalConfiguration);

  _objc_release_x1();
}

void sub_100023CD8(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a5;
  v13 = a6;
  if (a3)
  {
    v14 = [a4 path];
    v15 = sub_10001F638();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v29 = [v11 summary];
        *buf = 136315650;
        v36 = "[MobileAssetManager _onMobileAssetQueue_fetchMobileAssetContentWithCompletion:]_block_invoke";
        v37 = 2112;
        v38 = v29;
        v39 = 2112;
        v40 = v14;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s: Config auto-asset %@ successfully locked at path:%@", buf, 0x20u);
      }

      v17 = sub_10001F638();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      if (v12)
      {
        if (v18)
        {
          v19 = [v12 summary];
          *buf = 136315394;
          v36 = "[MobileAssetManager _onMobileAssetQueue_fetchMobileAssetContentWithCompletion:]_block_invoke";
          v37 = 2112;
          v38 = v19;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s: Newer version in progress: %@", buf, 0x16u);
        }
      }

      else if (v18)
      {
        *buf = 136315138;
        v36 = "[MobileAssetManager _onMobileAssetQueue_fetchMobileAssetContentWithCompletion:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s: No newer version currently being downloaded", buf, 0xCu);
      }

      v34[0] = v14;
      v34[1] = @"Config.plist";
      v22 = [NSArray arrayWithObjects:v34 count:2];
      v23 = [NSURL fileURLWithPathComponents:v22];

      v33 = 0;
      v24 = [NSDictionary dictionaryWithContentsOfURL:v23 error:&v33];
      v25 = v33;
      if (v24)
      {
        [*(a1 + 32) _initDomainsWithConfigPlist:v24];
        v26 = +[EligibilityEngine sharedInstance];
        [v26 asyncUpdateAndRecomputeAllAnswers];

        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1000241AC;
        v31[3] = &unk_100046850;
        v27 = *(a1 + 40);
        v32 = *(a1 + 48);
        [v27 endLockUsage:@"lockEligibilityConfigOptions" completion:v31];
      }

      else
      {
        v28 = sub_10001F638();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v30 = [v23 path];
          *buf = 136315650;
          v36 = "[MobileAssetManager _onMobileAssetQueue_fetchMobileAssetContentWithCompletion:]_block_invoke";
          v37 = 2112;
          v38 = v30;
          v39 = 2112;
          v40 = v25;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s: Failed to open Mobile Asset configuration plist at %@: %@", buf, 0x20u);
        }

        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v36 = "[MobileAssetManager _onMobileAssetQueue_fetchMobileAssetContentWithCompletion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: Sucessfully locked content, but the URL given by MobileAsset was nil", buf, 0xCu);
      }

      v21 = *(a1 + 48);
      v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      (*(v21 + 16))(v21, v14);
    }
  }

  else
  {
    v20 = sub_10001F638();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[MobileAssetManager _onMobileAssetQueue_fetchMobileAssetContentWithCompletion:]_block_invoke";
      v37 = 2112;
      v38 = v13;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: Failed to get content lock on Mobile Asset: %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000241AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10001F638();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 summary];
      v10 = 136315650;
      v11 = "[MobileAssetManager _onMobileAssetQueue_fetchMobileAssetContentWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Failed to release lock on %@: %@", &v10, 0x20u);
LABEL_7:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v5 summary];
    v10 = 136315394;
    v11 = "[MobileAssetManager _onMobileAssetQueue_fetchMobileAssetContentWithCompletion:]_block_invoke";
    v12 = 2112;
    v13 = v9;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s: Successfully released lock on %@", &v10, 0x16u);
    goto LABEL_7;
  }

  (*(*(a1 + 32) + 16))();
}

id sub_1000243B8(uint64_t a1)
{
  if (qword_10005D530 != -1)
  {
    dispatch_once(&qword_10005D530, &stru_1000468B8);
  }

  v2 = qword_10005D528;
  if (os_signpost_enabled(qword_10005D528))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.apple.os_eligibility.RefetchMobileAsset", "", v4, 2u);
  }

  return [*(a1 + 32) _onMobileAssetQueue_fetchMobileAssetContentWithCompletion:&stru_100046870];
}

void sub_100024468(id a1, NSError *a2)
{
  v2 = a2;
  if (qword_10005D530 != -1)
  {
    dispatch_once(&qword_10005D530, &stru_1000468B8);
  }

  v3 = qword_10005D528;
  if (os_signpost_enabled(qword_10005D528))
  {
    LOWORD(v5) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.apple.os_eligibility.RefetchMobileAsset", "", &v5, 2u);
  }

  if (v2)
  {
    v4 = sub_10001F638();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[MobileAssetManager asyncRefetchMobileAsset]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s: Failed to fetch MobileAsset: %@", &v5, 0x16u);
    }
  }
}

void sub_1000245A8(id a1)
{
  qword_10005D528 = os_log_create("com.apple.os_eligibility", "signpost");

  _objc_release_x1();
}

void sub_1000247E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10001F638();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 summary];
      v10 = 136315650;
      v11 = "[MobileAssetManager _onMobileAssetQueue_markInterestInMobileAssetWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Failed to register interest in Mobile Asset %@: %@", &v10, 0x20u);
LABEL_7:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v5 summary];
    v10 = 136315394;
    v11 = "[MobileAssetManager _onMobileAssetQueue_markInterestInMobileAssetWithCompletion:]_block_invoke";
    v12 = 2112;
    v13 = v9;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s: Sucessfully registered interest in Mobile Asset: %@", &v10, 0x16u);
    goto LABEL_7;
  }

  (*(*(a1 + 32) + 16))();
}

id sub_100024A54(uint64_t a1)
{
  v2 = sub_10001F638();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[MobileAssetManager registerForMobileAssetUpdateNotification]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: AUTO-ASSET-NOTIFICATION: %@", &v5, 0x16u);
  }

  return [*(a1 + 40) _onMobileAssetQueue_fetchMobileAssetContentWithCompletion:&stru_100046800];
}

void sub_100024B20(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10001F638();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[MobileAssetManager registerForMobileAssetUpdateNotification]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s: Done updating values with new MobileAsset", &v5, 0xCu);
  }

  if (v2)
  {
    v4 = sub_10001F638();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[MobileAssetManager registerForMobileAssetUpdateNotification]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s: Failed to update MobileAsset on update notification: %@", &v5, 0x16u);
    }
  }
}

void sub_100024D9C(uint64_t a1)
{
  if (qword_10005D530 != -1)
  {
    dispatch_once(&qword_10005D530, &stru_1000468B8);
  }

  v2 = qword_10005D528;
  if (os_signpost_enabled(qword_10005D528))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.apple.os_eligibility.MarkInterestInMobileAsset", "", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100024E9C;
  v4[3] = &unk_1000467E0;
  v5 = v3;
  [v5 _onMobileAssetQueue_markInterestInMobileAssetWithCompletion:v4];
}

void sub_100024E9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_10005D530 != -1)
  {
    dispatch_once(&qword_10005D530, &stru_1000468B8);
  }

  v4 = qword_10005D528;
  if (os_signpost_enabled(qword_10005D528))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.apple.os_eligibility.MarkInterestInMobileAsset", "", &v7, 2u);
  }

  if (v3)
  {
    v5 = sub_10001F638();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[MobileAssetManager init]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s: Failed to express interest in MobileAsset: %@", &v7, 0x16u);
    }
  }

  else
  {
    if (qword_10005D530 != -1)
    {
      dispatch_once(&qword_10005D530, &stru_1000468B8);
    }

    v6 = qword_10005D528;
    if (os_signpost_enabled(qword_10005D528))
    {
      LOWORD(v7) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.apple.os_eligibility.FetchMobileAsset", "", &v7, 2u);
    }

    [*(a1 + 32) _onMobileAssetQueue_fetchMobileAssetContentWithCompletion:&stru_1000467B8];
  }
}

void sub_100025074(id a1, NSError *a2)
{
  v2 = a2;
  if (qword_10005D530 != -1)
  {
    dispatch_once(&qword_10005D530, &stru_1000468B8);
  }

  v3 = qword_10005D528;
  if (os_signpost_enabled(qword_10005D528))
  {
    LOWORD(v5) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.apple.os_eligibility.FetchMobileAsset", "", &v5, 2u);
  }

  if (v2)
  {
    v4 = sub_10001F638();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[MobileAssetManager init]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s: Failed to fetch MobileAsset: %@", &v5, 0x16u);
    }
  }
}

id sub_100025664(uint64_t a1)
{
  result = [*(a1 + 32) setAssetVersion:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v3 = *(a1 + 32);

    return [v3 setDomains:?];
  }

  return result;
}

void sub_1000258F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100025908(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100025A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100025B04(uint64_t a1)
{
  qword_10005D518 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_100025F54(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026020;
  v7[3] = &unk_1000468E0;
  v8 = os_transaction_create();
  v9 = v3;
  v5 = v8;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_100026020(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000277EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    if ((v3 != 0) != (v4 != 0))
    {
      v6 = 0;
    }

    else
    {
      v6 = [v3 isEqual:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t sub_100027870(void *a1, uint64_t a2)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = a1;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

void *sub_1000282D8(void *a1)
{
  os_unfair_lock_lock(&unk_10005D538);
  if (qword_10005D540)
  {
LABEL_2:
    v2 = 0;
LABEL_3:
    v3 = 0;
    goto LABEL_4;
  }

  if (!container_query_create())
  {
    v14 = sub_10001F638();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315138;
      v24 = "OEURLForContainerWithError";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Failed to create query for container", &v23, 0xCu);
    }

    goto LABEL_2;
  }

  container_query_set_class();
  v8 = xpc_string_create("com.apple.eligibilityd");
  container_query_set_identifiers();

  container_query_set_persona_unique_string();
  container_query_operation_set_flags();
  if (!container_query_get_single_result())
  {
    container_query_get_last_error();
    v15 = container_error_copy_unlocalized_description();
    v16 = sub_10001F638();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "OEURLForContainerWithError";
      v25 = 2080;
      v26[0] = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Failed to query container manager: %s", &v23, 0x16u);
    }

    free(v15);
    type = container_error_get_type();
    v18 = @"com.apple.containermanager";
    goto LABEL_26;
  }

  path = container_get_path();
  if (!path)
  {
    v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    v19 = sub_10001F638();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "OEURLForContainerWithError";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: Failed to read path from returned container", &v23, 0xCu);
    }

    goto LABEL_27;
  }

  v10 = path;
  v11 = container_copy_sandbox_token();
  if (!v11)
  {
    v20 = sub_10001F638();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "OEURLForContainerWithError";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: Failed to get sandbox token from returned container", &v23, 0xCu);
    }

    v18 = NSPOSIXErrorDomain;
    type = 1;
LABEL_26:
    v3 = [NSError errorWithDomain:v18 code:type userInfo:0];
LABEL_27:
    v2 = 0;
    goto LABEL_4;
  }

  v2 = v11;
  if (sandbox_extension_consume() != -1)
  {
    v12 = [NSURL fileURLWithFileSystemRepresentation:v10 isDirectory:1 relativeToURL:0];
    v13 = qword_10005D540;
    qword_10005D540 = v12;

    goto LABEL_3;
  }

  v21 = *__error();
  v22 = sub_10001F638();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315650;
    v24 = "OEURLForContainerWithError";
    v25 = 1024;
    LODWORD(v26[0]) = v21;
    WORD2(v26[0]) = 2080;
    *(v26 + 6) = strerror(v21);
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: Failed to consume sandbox token from returned container; error = (%d) %s", &v23, 0x1Cu);
  }

  v3 = [NSError errorWithDomain:@"com.apple.sandbox" code:v21 userInfo:0];
LABEL_4:
  free(v2);
  os_unfair_lock_unlock(&unk_10005D538);
  container_query_free();
  v4 = qword_10005D540;
  if (a1 && !qword_10005D540)
  {
    v5 = v3;
    *a1 = v3;
    v4 = qword_10005D540;
  }

  v6 = v4;

  return v4;
}

void sub_100029878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100029898(uint64_t a1)
{
  v2 = sub_10001F638();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[EligibilityEngine _onQueue_handleRecompute:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s: Expiration handler called for %@", &v4, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_100029968(id a1)
{
  qword_10005D558 = os_log_create("com.apple.os_eligibility", "signpost");

  _objc_release_x1();
}

void sub_100029CFC(uint64_t a1)
{
  v2 = +[InputManager sharedInstance];
  v3 = [v2 debugDictionary];
  v4 = a1;
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"OS_ELIGIBILITY_STATE_DUMP_INPUTS"];

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = +[MobileAssetManager sharedInstance];
  v8 = [v7 domains];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [v13 domain];
        v15 = "<Unknown Domain>";
        if (v14 <= 0x85)
        {
          v15 = off_100045BE0[v14];
        }

        v16 = [NSString stringWithUTF8String:v15];
        v17 = [v13 description];
        [v5 setObject:v17 forKeyedSubscript:v16];

        v18 = [*(v4 + 40) domainToAnswer];
        v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v13 domain]);
        v20 = [v18 objectForKeyedSubscript:v19];
        [v6 setObject:v20 forKeyedSubscript:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  v21 = [v5 copy];
  [*(v4 + 32) setObject:v21 forKeyedSubscript:@"OS_ELIGIBILITY_STATE_DUMP_DOMAINS"];

  v22 = [v6 copy];
  [*(v4 + 32) setObject:v22 forKeyedSubscript:@"OS_ELIGIBILITY_STATE_DUMP_LAST_ANSWERS"];

  v23 = [*(v4 + 40) eligibilityOverrides];
  v24 = [v23 description];
  [*(v4 + 32) setObject:v24 forKeyedSubscript:@"OS_ELIGIBILITY_STATE_DUMP_OVERRIDES"];

  v25 = +[GlobalConfiguration sharedInstance];
  v26 = [v25 debugDescription];
  [*(v4 + 32) setObject:v26 forKeyedSubscript:@"OS_ELIGIBILITY_STATE_DUMP_GLOBAL_STATE"];

  v27 = +[MobileAssetManager sharedInstance];
  v28 = [v27 debugDescription];
  [*(v4 + 32) setObject:v28 forKeyedSubscript:@"OS_ELIGIBILITY_STATE_DUMP_MOBILE_ASSET"];
}

void sub_10002A114(uint64_t a1)
{
  v5 = +[InputManager sharedInstance];
  v2 = [v5 objectForInputValue:1];
  v3 = [v2 countryCodes];
  v4 = [v3 allObjects];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"OS_ELIGIBILITY_INTERNAL_STATE_COUNTRY_LOCATION"];
}

void sub_10002A494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002A4B4(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = +[MobileAssetManager sharedInstance];
  v3 = [v2 domains];

  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v21;
    *&v5 = 136315650;
    v19 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [v9 domain];
        v11 = v10;
        v12 = *(a1 + 56);
        if (v12 == 1)
        {
          if (v10 - 1 < 0x14 || (v10 <= 0x2A ? (v13 = ((1 << v10) & 0x73F07C00000) == 0) : (v13 = 1), !v13 || (v10 - 120 <= 4 ? (v16 = ((1 << (v10 - 120)) & 0x13) == 0) : (v16 = 1), !v16)))
          {
            v14 = [*(a1 + 32) eligibilityOverrides];
            [v14 forceDomain:objc_msgSend(v9 answer:"domain") context:{*(a1 + 64), *(a1 + 40)}];
          }
        }

        else
        {
          v15 = sub_10001F638();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            *buf = v19;
            v26 = "eligibility_domain_in_domain_set";
            v27 = 2048;
            v28 = v11;
            v29 = 2048;
            v30 = v12;
            _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "%s: Checking if a domain %llu is in unknown domain set %llu", buf, 0x20u);
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v17 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v6 = v17;
    }

    while (v17);
  }

  result = [*(a1 + 32) _onQueue_recomputeAllDomainAnswers];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

void sub_10002AA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002AA34(uint64_t a1)
{
  v2 = [*(a1 + 32) eligibilityOverrides];
  [v2 forceDomain:*(a1 + 56) answer:*(a1 + 64) context:*(a1 + 40)];

  result = [*(a1 + 32) _onQueue_recomputeAllDomainAnswers];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

void sub_10002AC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002AC6C(uint64_t a1)
{
  v2 = [*(a1 + 32) eligibilityOverrides];
  [v2 resetAllAnswers];

  v3 = [*(a1 + 32) notificationsToSend];
  [v3 addObject:@"com.apple.os-eligibility-domain.input-needed"];

  result = [*(a1 + 32) _onQueue_recomputeAllDomainAnswers];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_10002AEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002AF14(uint64_t a1)
{
  v2 = [*(a1 + 32) eligibilityOverrides];
  [v2 resetAnswerForDomain:*(a1 + 48)];

  v3 = [*(a1 + 32) notificationsToSend];
  [v3 addObject:@"com.apple.os-eligibility-domain.input-needed"];

  result = [*(a1 + 32) _onQueue_recomputeAllDomainAnswers];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_10002B334(uint64_t a1)
{
  v2 = +[InputManager sharedInstance];
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [v2 setInput:v3 withError:&v7];
  v5 = v7;
  if (v4)
  {
    [*(a1 + 40) _onQueue_recomputeAllDomainAnswers];
  }

  else
  {
    v6 = sub_10001F638();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[EligibilityEngine setInput:to:status:fromProcess:withError:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s: Failed to set input value: %@", buf, 0x16u);
    }
  }
}

void sub_10002BC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002BCA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002BCB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v15 = 0;
  v6 = [NSPropertyListSerialization dataWithPropertyList:a3 format:100 options:0 error:&v15];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    v14 = v7;
    v9 = [v6 writeToURL:v5 options:268435457 error:&v14];
    v10 = v14;

    if (v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_8;
    }

    v8 = v10;
  }

  v11 = sub_10001F638();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = [v5 path];
    *buf = 136315650;
    v17 = "[EligibilityEngine _onQueue_saveDomainAnswerOutputsWithError:]_block_invoke";
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v8;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: Failed to write answer plist %@: %@", buf, 0x20u);
  }

  v12 = *(*(a1 + 32) + 8);
  v10 = *(v12 + 40);
  *(v12 + 40) = v8;
LABEL_8:
}

void sub_10002BF34(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 unsignedIntValue];
  if ((v6 - 1) >= 0x85)
  {
    v8 = sub_10001F638();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v19 = 136315394;
      v20 = "eligibility_domain_to_file";
      v21 = 2048;
      v22 = v6;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s: Unsupported domain %llu; falling back to private plist", &v19, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = qword_100034478[v6 - 1];
  }

  v9 = sub_10001BEBC(v7);
  if (v9)
  {
    v10 = v9;
    v11 = [NSString stringWithUTF8String:v9];
    free(v10);
    v12 = [NSURL fileURLWithPath:v11 isDirectory:0];
    v13 = [*(a1 + 32) objectForKey:v12];

    if (!v13)
    {
      v14 = objc_opt_new();
      [*(a1 + 32) setObject:v14 forKeyedSubscript:v12];
    }

    if (v6 > 0x85)
    {
      v15 = "<Unknown Domain>";
    }

    else
    {
      v15 = off_100045BE0[v6];
    }

    v17 = [NSString stringWithUTF8String:v15];
    v18 = [*(a1 + 32) objectForKeyedSubscript:v12];
    [v18 setObject:v5 forKeyedSubscript:v17];
  }

  else
  {
    v16 = sub_10001F638();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v19 = 136315394;
      v20 = "[EligibilityEngine _onQueue_urlToDomainData]_block_invoke";
      v21 = 2048;
      v22 = v6;
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s: Skipping domain %llu because it doesn't have a plist specified", &v19, 0x16u);
    }
  }
}

void sub_10002C32C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 unsignedIntValue];
  v9 = [v5 objectForKeyedSubscript:@"os_eligibility_answer_t"];

  v7 = *(a1 + 32);
  v8 = [NSNumber numberWithUnsignedLongLong:v6];
  [v7 setObject:v9 forKeyedSubscript:v8];
}

uint64_t sub_10002D064(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = os_eligibility_domain_for_name();
  if (v6)
  {
    v7 = v6;
    v8 = _CFXPCCreateCFObjectFromXPCObject();
    v9 = *(a1 + 32);
    v10 = [NSNumber numberWithUnsignedLongLong:v7];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }

  else
  {
    v11 = sub_10001F638();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = 136315650;
      v15 = "[EligibilityEngine _loadCurrentEligibilityOnDisk]_block_invoke";
      v16 = 2080;
      v17 = a2;
      v18 = 2048;
      v19 = v13;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: Unknown domain %s read from file %llu", &v14, 0x20u);
    }
  }

  return 1;
}

uint64_t sub_10002DA10(uint64_t a1)
{
  qword_10005D548 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}