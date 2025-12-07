uint64_t sub_100066E84(uint64_t a1)
{
  v1 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v1);
  static VerticalAlignment.center.getter();
  sub_1000683B8(&qword_10016D320, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_100002BE4(&qword_10016D328, &qword_100113670);
  sub_100068400();
  return LazyHStack.init(alignment:spacing:pinnedViews:content:)();
}

uint64_t sub_100066FBC(void **a1)
{
  v8 = sub_100009584(*a1);
  KeyPath = swift_getKeyPath();
  v2 = sub_100002BE4(&qword_10016D348, &qword_1001136B0);
  v3 = sub_100002BE4(&qword_10016D340, &qword_100113678);
  v4 = sub_100012C48(&qword_10016D350, &qword_10016D348, &qword_1001136B0, &protocol conformance descriptor for [A]);
  v5 = sub_1000683B8(&qword_10016D300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v6 = sub_100012C48(&qword_10016D338, &qword_10016D340, &qword_100113678, &protocol conformance descriptor for IDView<A, B>);
  return ForEach<>.init(_:id:content:)(&v8, KeyPath, sub_100067180, 0, v2, v3, v4, v5, v6);
}

void sub_100067120(id *a1)
{
  v1 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_100067180(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 8);
  v5 = v3;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_1000684B4();
  View.containerRelativeFrame(_:alignment:)();

  v6 = a2 + *(sub_100002BE4(&qword_10016D360, &qword_1001136B8) + 36);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = [v4 UUID];
  sub_100002BE4(&qword_10016D340, &qword_100113678);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void *sub_100067288@<X0>(void *a2@<X8>)
{
  type metadata accessor for PrescriptionCarouselView(0);
  sub_100002BE4(&qword_10016D288, &qword_100113600);
  result = State.wrappedValue.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_1000672F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PrescriptionCarouselView(0);
  sub_100002BE4(&qword_10016D288, &qword_100113600);
  State.wrappedValue.setter();
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000673BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = v17 - v9;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*a1 + 16) > a2)
  {
    v11 = *a1 + 16 * a2;
    v12 = *(v11 + 40);
    v13 = *(v11 + 32);
    v14 = v12;
    v15 = [v13 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    type metadata accessor for PrescriptionCarouselView(0);
    sub_10000C178(v10, v7, &unk_10016F2E0, qword_100113590);
    sub_100002BE4(&qword_10016D1A0, &unk_100113560);
    State.wrappedValue.setter();
    return sub_100009908(v10, &unk_10016F2E0, qword_100113590);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006757C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C178(a2, v7, &unk_10016F2E0, qword_100113590);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100009908(v7, &unk_10016F2E0, qword_100113590);
  }

  v13 = (*(v9 + 32))(v11, v7, v8);
  __chkstk_darwin(v13);
  v18[-2] = v11;
  v15 = sub_1000678B8(sub_10006800C, &v18[-4], v14);
  if ((v16 & 1) == 0)
  {
    v17 = v15;
    v19 = *(a3 + *(type metadata accessor for PrescriptionCarouselView(0) + 24));
    v18[1] = v17;
    sub_100002BE4(&qword_10016D288, &qword_100113600);
    State.wrappedValue.setter();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000677AC(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_1000678B8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = a3 + 32;
  while (1)
  {
    v11 = *(v6 + 16 * v5);
    v12 = v11;
    v7 = v11;
    v8 = *(&v11 + 1);
    v9 = v13(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_100067990(uint64_t *a1)
{
  v2 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v21 - v7;
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = *(type metadata accessor for PrescriptionCarouselView(0) + 20);
  sub_100002BE4(&qword_10016D1A0, &unk_100113560);
  v24 = v11;
  State.wrappedValue.getter();
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v8, 1, v12) == 1)
  {
    v15 = *a1;
    if (*(*a1 + 16))
    {
      v23 = a1;
      v16 = *(v15 + 40);
      v17 = *(v15 + 32);
      v22 = v16;
      v18 = [v17 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    (*(v13 + 56))(v10, v19, 1, v12);
    if (v14(v8, 1, v12) != 1)
    {
      sub_100009908(v8, &unk_10016F2E0, qword_100113590);
    }
  }

  else
  {
    (*(v13 + 32))(v10, v8, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
  }

  sub_10000C178(v10, v5, &unk_10016F2E0, qword_100113590);
  State.wrappedValue.setter();
  return sub_100009908(v10, &unk_10016F2E0, qword_100113590);
}

uint64_t sub_100067C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrescriptionCarouselView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrescriptionCarouselView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067D10(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PrescriptionCarouselView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10006757C(a1, a2, v6);
}

unint64_t sub_100067D90()
{
  result = qword_10016D270;
  if (!qword_10016D270)
  {
    sub_10000459C(&unk_10016F2E0, qword_100113590);
    sub_1000683B8(&qword_10016D278, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D270);
  }

  return result;
}

uint64_t sub_100067E44()
{
  v1 = type metadata accessor for PrescriptionCarouselView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_100002BE4(&qword_10016D1A0, &unk_100113560);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100067FAC()
{
  v1 = *(type metadata accessor for PrescriptionCarouselView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_100067990(v2);
}

unint64_t sub_100068034()
{
  result = qword_10016D2D8;
  if (!qword_10016D2D8)
  {
    sub_10000459C(&qword_10016D298, &qword_100113610);
    sub_100012C48(&qword_10016D2E0, &qword_10016D2E8, &qword_100113648, &protocol conformance descriptor for ScrollView<A>);
    sub_100012C48(&qword_10016D2F0, &qword_10016D2D0, &qword_100113640, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D2D8);
  }

  return result;
}

double sub_100068118(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
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
  return result;
}

void *sub_10006813C@<X0>(void *a1@<X8>)
{
  type metadata accessor for PrescriptionCarouselView(0);

  return sub_100067288(a1);
}

uint64_t sub_1000681B0()
{
  v1 = type metadata accessor for PrescriptionCarouselView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 20);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_100002BE4(&qword_10016D1A0, &unk_100113560);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100068320(uint64_t *a1)
{
  v3 = *(type metadata accessor for PrescriptionCarouselView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000672F8(a1, v4, v5, v6);
}

uint64_t sub_1000683B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100068400()
{
  result = qword_10016D330;
  if (!qword_10016D330)
  {
    sub_10000459C(&qword_10016D328, &qword_100113670);
    sub_100012C48(&qword_10016D338, &qword_10016D340, &qword_100113678, &protocol conformance descriptor for IDView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D330);
  }

  return result;
}

unint64_t sub_1000684B4()
{
  result = qword_10016D358;
  if (!qword_10016D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D358);
  }

  return result;
}

uint64_t sub_100068508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100068550(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000685A4()
{
  result = qword_10016D368;
  if (!qword_10016D368)
  {
    sub_10000459C(&qword_10016D280, &qword_1001135F8);
    sub_10000459C(&qword_10016D258, &qword_1001135E8);
    sub_10000459C(&unk_10016F2E0, qword_100113590);
    sub_100012C48(&qword_10016D268, &qword_10016D258, &qword_1001135E8, &protocol conformance descriptor for VStack<A>);
    sub_100067D90();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D368);
  }

  return result;
}

unint64_t sub_1000686D0()
{
  result = qword_10016D370;
  if (!qword_10016D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D370);
  }

  return result;
}

unint64_t sub_100068724()
{
  result = qword_10016D380;
  if (!qword_10016D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D380);
  }

  return result;
}

void sub_1000687D8(void *a1)
{
  v1 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_10006883C()
{
  v1 = [*v0 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t sub_10006889C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100068AB8(a1, a2, v4);
}

unint64_t sub_100068914(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100068B70(a1, v2);
}

unint64_t sub_100068958(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100068BDC(a1, v4);
}

unint64_t sub_10006899C(uint64_t a1)
{
  type metadata accessor for JoeColorType();
  sub_100069318(&qword_10016C038, &type metadata accessor for JoeColorType, &protocol conformance descriptor for JoeColorType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100068CA4(a1, v2);
}

unint64_t sub_100068A34(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100068E64(v1, v2);
}

unint64_t sub_100068AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100068B70(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100068BDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000692BC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100064580(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100068CA4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for JoeColorType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100069318(&qword_10016D388, &type metadata accessor for JoeColorType, &protocol conformance descriptor for JoeColorType);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100068E64(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = qword_100113858[a1];
    while (qword_100113858[*(*(v2 + 48) + v4)] != v6)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

uint64_t sub_100068F50(void *a1)
{
  v1 = [a1 metadata];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  v6 = sub_10006889C(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_1000076F0(*(v3 + 56) + 32 * v6, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = [objc_opt_self() mainBundle];
    v17._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0x5F4C41434954504FLL;
    v11._object = 0xEF53545245534E49;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v17)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  return v15;
}

uint64_t sub_1000690E8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  strcpy(v14, "Prescription(");
  HIWORD(v14[1]) = -4864;
  v8._countAndFlagsBits = sub_100068F50(a1);
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x734965746164203BLL;
  v9._object = 0xED00002064657573;
  String.append(_:)(v9);
  v10 = [a1 dateIssued];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100069318(&qword_10016B468, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  (*(v5 + 8))(v7, v4);
  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return v14[0];
}

uint64_t sub_100069318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100069360()
{
  swift_getKeyPath();
  sub_10006ACBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1000693E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10006ACBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_100069478(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10006ACBC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100069514(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_10006957C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_10006960C();
}

uint64_t sub_10006960C()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = sub_100002BE4(&qword_10016D500, &qword_100113918);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_100002BE4(&qword_10016D508, &qword_100113920);
  v1[8] = swift_task_alloc();
  v3 = sub_100002BE4(&qword_10016D510, &qword_100113928);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_100002BE4(&qword_10016D518, &qword_100113930);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100069808, 0, 0);
}

uint64_t sub_100069808()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_10006A040(v1);
  HKAnchoredObjectQueryDescriptor.Results.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_10006AD30();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_100069904;
  v6 = v0[12];
  v7 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v4);
}

uint64_t sub_100069904()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100069B8C;
  }

  else
  {
    v2 = sub_100069A18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100069A18()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[7], v1, v2);
    v6 = HKAnchoredObjectQueryDescriptor.Result.addedSamples.getter();
    v0[17] = v6;
    v7 = swift_task_alloc();
    v0[18] = v7;
    *v7 = v0;
    v7[1] = sub_100069E64;

    return sub_10006A2E4(v6);
  }
}

uint64_t sub_100069B8C()
{
  *(v0 + 16) = *(v0 + 128);
  sub_100002BE4(&qword_10016BBA0, &qword_1001110E0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100069C20, 0, 0);
}

uint64_t sub_100069C20()
{
  v14 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  if (qword_100168E88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_1001820C0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s failed to fetch prescription samples with error: %@", v4, 0x16u);
    sub_1000077E0(v5);

    sub_1000052E4(v6);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100069E64()
{

  return _swift_task_switch(sub_100069F7C, 0, 0);
}

uint64_t sub_100069F7C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = sub_10006AD30();
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_100069904;
  v3 = v0[12];
  v4 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v3, v1);
}

uint64_t sub_10006A040@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = sub_100002BE4(&qword_10016D4D8, &qword_100113900);
  v14 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v13 - v2;
  v4 = sub_100002BE4(&qword_10016D4E0, &qword_100113908);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = [objc_opt_self() predicateForObjectsWithMetadataKey:_HKPrivateMetadataKeyVisionACCPayload];
  sub_100031904(0, &qword_10016D4E8, HKSample_ptr);
  v9 = v8;
  static HKSamplePredicate.visionPrescription(_:)();

  sub_100002BE4(&qword_10016D4F0, &qword_100113910);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10010D3B0;
  (*(v5 + 16))(v11 + v10, v7, v4);
  sub_100031904(0, &qword_10016D4F8, HKVisionPrescription_ptr);
  HKAnchoredObjectQueryDescriptor.init(predicates:anchor:limit:)();
  HKAnchoredObjectQueryDescriptor.results(for:)();

  (*(v14 + 8))(v3, v1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10006A2E4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return _swift_task_switch(sub_10006A32C, 0, 0);
}

uint64_t sub_10006A32C()
{
  v35 = v0;
  v1 = v0[5];
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v31 = v0)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v0[5] + 32;
    v1 = _swiftEmptyArrayStorage;
    v30 = i;
    while (1)
    {
      if (v4)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_17;
        }

        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v33 = v7;
      sub_10006A750(&v33, &v34);

      if (v34)
      {
        v32 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_100008F88(0, *(v1 + 2) + 1, 1, v1);
        }

        v11 = *(v1 + 2);
        v10 = *(v1 + 3);
        v12 = v32;
        if (v11 >= v10 >> 1)
        {
          v13 = sub_100008F88((v10 > 1), v11 + 1, 1, v1);
          v12 = v32;
          v1 = v13;
        }

        *(v1 + 2) = v11 + 1;
        *&v1[16 * v11 + 32] = v12;
        i = v30;
        v0 = v31;
      }

      ++v3;
      if (v9 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    i = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_19:
  v14 = v0[6];
  swift_getKeyPath();
  v0[2] = v14;
  sub_10006ACBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[2] = v14;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();

  sub_1000DAE40(v15);
  swift_endAccess();
  v0[2] = v14;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (qword_100168E88 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006B0C(v16, qword_1001820C0);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v31;
    v20 = swift_slowAlloc();
    *&v34 = swift_slowAlloc();
    *v20 = 136315394;
    v21 = _typeName(_:qualified:)();
    v23 = sub_100006B44(v21, v22, &v34);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    v24 = Array.description.getter();
    v26 = v25;

    v27 = sub_100006B44(v24, v26, &v34);

    *(v20 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s added prescriptions %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v19 = v31;
  }

  v28 = v19[1];

  return v28();
}

void sub_10006A750(void **a1@<X0>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = sub_1000E42FC();
  if (v3)
  {
    if (qword_100168E88 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006B0C(v7, qword_1001820C0);
    v8 = v5;
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v11 = 136315650;
      v13 = _typeName(_:qualified:)();
      v15 = sub_100006B44(v13, v14, &v34);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      *(v11 + 22) = 2112;
      v16 = v8;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v17;
      v12[1] = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s failed to make Prescription for sample %@; error: %@", v11, 0x20u);
      sub_100002BE4(&unk_100169C20, &unk_10010D6B0);
      swift_arrayDestroy();

      sub_1000052E4(v32);
    }

    else
    {
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v18 = v6;
    if (qword_100168E88 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006B0C(v19, qword_1001820C0);
    v20 = v5;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v33 = v18;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v23 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = a3;
      v28 = sub_100006B44(v25, v26, &v34);

      *(v23 + 4) = v28;
      a3 = v27;
      *(v23 + 12) = 2112;
      *(v23 + 14) = v20;
      *v24 = v20;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s returning prescription for sample %@", v23, 0x16u);
      sub_1000077E0(v24);

      sub_1000052E4(v31);

      v18 = v33;
    }

    *a3 = v20;
    a3[1] = v18;
    v30 = v20;
  }
}

uint64_t sub_10006AB08()
{

  v1 = OBJC_IVAR____TtC17AppleVisionProApp20PrescriptionProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrescriptionProvider(uint64_t a1)
{
  result = qword_10016D3C0;
  if (!qword_10016D3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006AC08(uint64_t a1)
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

unint64_t sub_10006ACBC()
{
  result = qword_10016D4D0;
  if (!qword_10016D4D0)
  {
    type metadata accessor for PrescriptionProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D4D0);
  }

  return result;
}

unint64_t sub_10006AD30()
{
  result = qword_10016D520;
  if (!qword_10016D520)
  {
    sub_10000459C(&qword_10016D518, &qword_100113930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D520);
  }

  return result;
}

uint64_t sub_10006ADB8(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016A578, &qword_10010F540);
  __chkstk_darwin(v2 - 8);
  sub_10000C178(a1, &v5 - v3, &qword_10016A578, &qword_10010F540);
  return EnvironmentValues.horizontalSizeClass.setter();
}

void sub_10006AE60()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x495645445F4C4C41;
  v1._object = 0xEB00000000534543;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_10016D528 = v4;
}

uint64_t sub_10006AF1C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = type metadata accessor for ContentMarginPlacement();
  v107 = *(v3 - 8);
  v108 = v3;
  __chkstk_darwin(v3);
  v106 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DeviceTab(0);
  v6 = v5 - 8;
  v92 = *(v5 - 8);
  __chkstk_darwin(v5);
  v112 = v7;
  v94 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100002BE4(&qword_10016D658, &qword_100113A30);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v81 - v8;
  v93 = sub_100002BE4(&qword_10016D638, &qword_100113A18);
  __chkstk_darwin(v93);
  v113 = &v81 - v9;
  v97 = sub_100002BE4(&qword_10016D698, &unk_100113A58);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v81 - v10;
  v99 = sub_100002BE4(&qword_10016D620, &qword_100113A08);
  __chkstk_darwin(v99);
  v98 = &v81 - v11;
  v102 = sub_100002BE4(&qword_10016D618, &qword_100113A00);
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v81 - v12;
  v105 = sub_100002BE4(&qword_10016D610, &qword_1001139F8);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v81 - v13;
  v14 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v15 = __chkstk_darwin(v14 - 8);
  v88 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v81 - v17;
  v19 = type metadata accessor for Device();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v82 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v116 = &v81 - v23;
  v117 = a1;
  v24 = *&a1[*(v6 + 44)];
  if (v24)
  {
    v25 = *(v24 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider);
    v26 = *(v24 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_prescriptionProvider);
    v27 = *(v24 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_softwareUpdateProvider);
    v28 = *(v24 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_tipProvider);
    swift_getKeyPath();
    v29 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider___observationRegistrar;
    v119 = v25;
    v30 = sub_100073638(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);

    v115 = v26;

    v114 = v27;

    v118 = v28;

    v87 = v29;
    v86 = v30;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
    swift_beginAccess();
    v85 = v31;
    sub_10000C178(v25 + v31, v18, &qword_10016B010, &qword_100110020);
    v32 = *(v20 + 48);
    v33 = v32(v18, 1, v19);
    v110 = v20;
    v111 = v19;
    v84 = v20 + 48;
    v83 = v32;
    if (v33 == 1)
    {
      v34 = v116;
      sub_10006BF28();
      v35 = (v32)(v18, 1, v19);
      if (v35 != 1)
      {
        v35 = sub_100009908(v18, &qword_10016B010, &qword_100110020);
      }
    }

    else
    {
      v34 = v116;
      v35 = (*(v20 + 32))(v116, v18, v19);
    }

    __chkstk_darwin(v35);
    v36 = v117;
    v37 = v118;
    *(&v81 - 6) = v117;
    *(&v81 - 5) = v25;
    v77 = v34;
    v78 = v114;
    static Axis.Set.vertical.getter();
    sub_100002BE4(&qword_10016D6A0, &qword_100113A90);
    sub_100012C48(&qword_10016D6A8, &qword_10016D6A0, &qword_100113A90, &protocol conformance descriptor for VStack<A>);
    v38 = v89;
    v39 = ScrollView.init(_:showsIndicators:content:)();
    __chkstk_darwin(v39);
    v79 = v25;
    v80 = v36;
    sub_100002BE4(&qword_10016D660, &unk_100113A38);
    sub_100012C48(&qword_10016D668, &qword_10016D658, &qword_100113A30, &protocol conformance descriptor for ScrollView<A>);
    sub_100012C48(&qword_10016D670, &qword_10016D660, &unk_100113A38, &protocol conformance descriptor for TupleToolbarContent<A>);
    v40 = v113;
    v41 = v91;
    View.toolbar<A>(content:)();
    (*(v90 + 8))(v38, v41);
    v42 = &v40[*(sub_100002BE4(&qword_10016D650, &qword_100113A28) + 36)];
    *v42 = 0x6C6C6F726373;
    *(v42 + 1) = 0xE600000000000000;
    v43 = v94;
    sub_100072210(v36, v94);
    v44 = *(v92 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v37;
    sub_100072D28(v43, v45 + ((v44 + 24) & ~v44), type metadata accessor for DeviceTab);
    v46 = &v40[*(v93 + 36)];
    *v46 = sub_10007243C;
    v46[1] = v45;
    v46[2] = 0;
    v46[3] = 0;
    swift_getKeyPath();
    v119 = v25;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v47 = v88;
    sub_10000C178(v25 + v85, v88, &qword_10016B010, &qword_100110020);
    v48 = v111;
    if (v83(v47, 1, v111))
    {
      sub_100009908(v47, &qword_10016B010, &qword_100110020);
      v49 = 0;
      v50 = 0;
    }

    else
    {
      v51 = v110;
      v52 = v82;
      (*(v110 + 16))(v82, v47, v48);
      sub_100009908(v47, &qword_10016B010, &qword_100110020);
      v49 = Device.productType.getter();
      v50 = v53;
      (*(v51 + 8))(v52, v48);
    }

    v119 = v49;
    v120 = v50;
    v54 = v117;
    sub_100072210(v117, v43);
    v55 = swift_allocObject();
    sub_100072D28(v43, v55 + ((v44 + 16) & ~v44), type metadata accessor for DeviceTab);
    sub_100002BE4(&qword_10016B278, &qword_100113A20);
    sub_100071CF8();
    sub_100071F0C();
    v56 = v95;
    v57 = v113;
    View.onChange<A>(of:initial:_:)();

    sub_100009908(v57, &qword_10016D638, &qword_100113A18);
    v58 = swift_allocObject();
    v59 = v118;
    *(v58 + 16) = sub_100072524;
    *(v58 + 24) = v59;
    v60 = v99;
    v61 = v98;
    v62 = &v98[*(v99 + 36)];
    v63 = enum case for ScenePhase.active(_:);
    v64 = type metadata accessor for ScenePhase();
    (*(*(v64 - 8) + 104))(v62, v63, v64);
    v65 = &v62[*(type metadata accessor for ScenePhaseViewModifier(0) + 20)];
    *v65 = &unk_100113AA0;
    *(v65 + 1) = v58;
    (*(v96 + 32))(v61, v56, v97);
    v66 = *(v54 + 1);
    v123 = *v54;
    v124 = v66;

    sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
    State.projectedValue.getter();

    v67 = sub_100002BE4(&qword_10016D628, &qword_100113A10);
    v68 = sub_100071BD4();
    v69 = sub_100071F88();
    v78 = v68;
    v79 = v69;
    v77 = v67;
    v70 = v100;
    View.sheet<A>(isPresented:onDismiss:content:)();

    sub_100009908(v61, &qword_10016D620, &qword_100113A08);
    static Edge.Set.bottom.getter();
    v71 = v106;
    static ContentMarginPlacement.automatic.getter();
    v119 = v60;
    v120 = v67;
    v121 = v68;
    v122 = v69;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v73 = v103;
    v74 = v102;
    View.contentMargins(_:_:for:)();
    (*(v107 + 8))(v71, v108);
    (*(v101 + 8))(v70, v74);
    sub_100002BE4(&qword_10016D6B0, &qword_100113AB0);
    type metadata accessor for ToolbarPlacement();
    *(swift_allocObject() + 16) = xmmword_10010D3B0;
    static ToolbarPlacement.navigationBar.getter();
    v119 = v74;
    v120 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v75 = v105;
    View.toolbar(_:for:)();

    (*(v104 + 8))(v73, v75);
    return (*(v110 + 8))(v116, v111);
  }

  else
  {
    type metadata accessor for AppDelegate(0);
    sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006BF28()
{
  v1 = type metadata accessor for Device.Source();
  __chkstk_darwin(v1 - 8);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v12._object = 0xE000000000000000;
  v4._object = 0x800000010011D950;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v12);

  v7 = [v2 mainBundle];
  v13._object = 0xE000000000000000;
  v8._object = 0x800000010011D950;
  v8._countAndFlagsBits = 0xD000000000000010;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v13);

  static Device.Source.localDevice.getter();
  return Device.init(name:serialNumber:buildNumber:productType:productName:osVersion:source:)();
}

uint64_t sub_10006C108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = static HorizontalAlignment.center.getter();
  *(a7 + 8) = 0x4038000000000000;
  *(a7 + 16) = 0;
  v14 = sub_100002BE4(&qword_10016D748, &unk_100113BE8);
  return sub_10006C1A0(a1, a2, a3, a4, a5, a6, (a7 + *(v14 + 44)));
}

uint64_t sub_10006C1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v228 = a6;
  v234 = a5;
  v245 = a4;
  v239 = a3;
  v264 = a1;
  v231 = a7;
  v215 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  v9 = __chkstk_darwin(v215);
  v214 = &v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v213 = &v202 - v11;
  v212 = type metadata accessor for PrescriptionCarouselView(0);
  __chkstk_darwin(v212);
  v219 = (&v202 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v218 = sub_100002BE4(&qword_10016D750, &qword_100113BF8);
  v13 = __chkstk_darwin(v218);
  v216 = &v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v217 = &v202 - v15;
  v233 = sub_100002BE4(&qword_10016D758, &qword_100113C00);
  v230 = *(v233 - 8);
  __chkstk_darwin(v233);
  v229 = &v202 - v16;
  v17 = sub_100002BE4(&qword_10016D760, &qword_100113C08);
  v18 = __chkstk_darwin(v17 - 8);
  v253 = &v202 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v258 = &v202 - v20;
  v235 = type metadata accessor for VisionCompanionFeatures();
  v254 = *(v235 - 8);
  __chkstk_darwin(v235);
  v232 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SoftwareUpdateView(0);
  __chkstk_darwin(updated - 8);
  v255 = &v202 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_100002BE4(&qword_10016D768, &qword_100113C10);
  v24 = __chkstk_darwin(v206);
  v204 = &v202 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v205 = &v202 - v26;
  v27 = sub_100002BE4(&qword_10016D770, &qword_100113C18);
  v243 = *(v27 - 8);
  v244 = v27;
  __chkstk_darwin(v27);
  v203 = (&v202 - v28);
  v29 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  __chkstk_darwin(v29 - 8);
  v240 = &v202 - v30;
  v246 = type metadata accessor for SoftwareUpdateInfo();
  v242 = *(v246 - 8);
  __chkstk_darwin(v246);
  v241 = &v202 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100002BE4(&qword_10016D780, &qword_100113C28);
  v33 = __chkstk_darwin(v32 - 8);
  v252 = &v202 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v263 = &v202 - v35;
  v36 = type metadata accessor for MobileGestaltCoordinator();
  v261 = *(v36 - 8);
  v262 = v36;
  __chkstk_darwin(v36);
  v260 = &v202 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DeviceInfoView(0);
  __chkstk_darwin(v38 - 8);
  v211 = &v202 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_100002BE4(&qword_10016D788, &qword_100113C30);
  v40 = __chkstk_darwin(v210);
  v208 = &v202 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v209 = &v202 - v42;
  v43 = sub_100002BE4(&qword_10016D790, &qword_100113C38);
  *&v238 = *(v43 - 8);
  *(&v238 + 1) = v43;
  __chkstk_darwin(v43);
  v207 = (&v202 - v44);
  v236 = type metadata accessor for Device();
  v223 = *(v236 - 8);
  __chkstk_darwin(v236);
  v237 = &v202 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100002BE4(&qword_10016D798, &qword_100113C40);
  v47 = __chkstk_darwin(v46 - 8);
  v251 = &v202 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v257 = &v202 - v49;
  v221 = sub_100002BE4(&qword_10016D7A0, &qword_100113C48) - 8;
  v50 = __chkstk_darwin(v221);
  v250 = &v202 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v256 = (&v202 - v52);
  v53 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v54 = __chkstk_darwin(v53 - 8);
  v222 = &v202 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v57 = &v202 - v56;
  v247 = (sub_100002BE4(&qword_10016D7A8, &qword_100113C50) - 8);
  v58 = __chkstk_darwin(v247);
  v249 = &v202 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v61 = &v202 - v60;
  v259 = type metadata accessor for DeviceTab(0);
  v62 = *(v259 - 8);
  v63 = *(v62 + 64);
  __chkstk_darwin(v259);
  sub_100072210(a1, &v202 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v248 = swift_allocObject();
  sub_100072D28(&v202 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0), v248 + v64, type metadata accessor for DeviceTab);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v226 = v311;
  v227 = v309;
  v224 = v314;
  v225 = v313;
  v316 = v310;
  v315 = v312;
  swift_getKeyPath();
  v65 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider___observationRegistrar;
  *&v300 = a2;
  sub_100073638(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  v220 = v65;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v66 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  sub_10000C178(a2 + v66, v57, &qword_10016B010, &qword_100110020);
  v67 = v264;
  sub_10006E504(v57, v61);
  v68 = v57;
  v69 = v67;
  sub_100009908(v68, &qword_10016B010, &qword_100110020);
  swift_getKeyPath();
  *&v300 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v70 = &v61[*(sub_100002BE4(&qword_10016D7B0, &qword_100113C58) + 36)];
  sub_10000C178(a2 + v66, v70, &qword_10016B010, &qword_100110020);
  v71 = sub_100002BE4(&qword_10016D7B8, &qword_100113C60);
  *(v70 + v71[7]) = 0x4059000000000000;
  *(v70 + v71[8]) = 0x4000000000000000;
  v72 = (v70 + v71[9]);
  *v72 = static FeatureEligibilityState.airplayReceiverBackgroundDiscoveryEligible.getter;
  v72[1] = 0;
  LOBYTE(v270) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v70) = v300;
  v73 = *(&v300 + 1);
  v74 = &v61[*(sub_100002BE4(&qword_10016D7C0, &qword_100113C68) + 36)];
  *v74 = v70;
  *(v74 + 1) = v73;
  v75 = *(v247 + 11);
  v247 = v61;
  *&v61[v75] = 0x3FF0000000000000;
  v76 = v256;
  *v256 = 0;
  v76[1] = 0;
  *(v76 + 16) = 1;
  v77 = v221;
  v78 = v76 + *(v221 + 48);
  v79 = v76;
  *v78 = static HorizontalAlignment.center.getter();
  *(v78 + 1) = 0;
  v78[16] = 1;
  v80 = sub_100002BE4(&qword_10016D7C8, &qword_100113C70);
  sub_10006F10C(v239, v69, a2, &v78[*(v80 + 44)]);
  *(v79 + *(v77 + 52)) = 0x4024000000000000;
  swift_getKeyPath();
  *&v300 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v81 = v222;

  sub_10000C178(a2 + v66, v81, &qword_10016B010, &qword_100110020);
  v82 = v223;
  v83 = v236;
  if ((*(v223 + 48))(v81, 1) == 1)
  {
    sub_100009908(v81, &qword_10016B010, &qword_100110020);
    v84 = 1;
    v85 = v257;
    v86 = v241;
    v87 = *(&v238 + 1);
  }

  else
  {
    v88 = v237;
    (*(v82 + 32))(v237, v81, v83);
    v89 = v207;
    *v207 = 0;
    *(v89 + 8) = 0;
    *(v89 + 16) = 0;
    v90 = v211;
    (*(v82 + 16))(v211, v88, v83);
    v91 = *(v69 + *(v259 + 36));
    if (!v91)
    {
      goto LABEL_30;
    }

    v92 = sub_100002BE4(&qword_10016D810, &qword_100113D48);
    v239 = *(v92 + 40);
    v94 = v260;
    v93 = v261;
    v95 = v262;
    (*(v261 + 16))(v260, v91 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v262);
    v96 = MobileGestaltCoordinator.isPadDevice.getter();
    (*(v93 + 8))(v94, v95);
    (*(v82 + 8))(v237, v83);
    v97 = v208;
    sub_100072D28(v90, v208, type metadata accessor for DeviceInfoView);
    v98 = (v97 + *(v210 + 36));
    *v98 = v96 & 1;
    v98[1] = 1;
    v99 = v97;
    v100 = v209;
    sub_10001D504(v99, v209, &qword_10016D788, &qword_100113C30);
    sub_10001D504(v100, v89 + v239, &qword_10016D788, &qword_100113C30);
    *(v89 + *(v92 + 44)) = 0x4024000000000000;
    v87 = *(&v238 + 1);
    *(v89 + *(*(&v238 + 1) + 36)) = 0xBFF0000000000000;
    v85 = v257;
    sub_10001D504(v89, v257, &qword_10016D790, &qword_100113C38);
    v84 = 0;
    v86 = v241;
  }

  (*(v238 + 56))(v85, v84, 1, v87);
  swift_getKeyPath();
  v101 = v245;
  *&v300 = v245;
  sub_100073638(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider, &unk_100119378);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v102 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo;
  swift_beginAccess();
  v103 = v240;
  sub_10000C178(v101 + v102, v240, &qword_10016D778, &qword_100113C20);
  v104 = v242;
  v105 = v246;
  v106 = (*(v242 + 48))(v103, 1, v246);
  v107 = v255;
  if (v106 == 1)
  {
    sub_100009908(v103, &qword_10016D778, &qword_100113C20);
LABEL_11:
    v124 = 1;
    v123 = v244;
    goto LABEL_12;
  }

  (*(v104 + 32))(v86, v103, v105);
  swift_getKeyPath();
  *&v300 = v101;
  v108 = v86;
  v109 = v104;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v101 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber + 8))
  {
    (*(v104 + 8))(v108, v105);
    goto LABEL_11;
  }

  v110 = v203;
  *v203 = 0;
  *(v110 + 8) = 0;
  *(v110 + 16) = 0;
  (*(v104 + 16))(v107, v108, v105);
  v111 = *(v264 + *(v259 + 36));
  if (!v111)
  {
    goto LABEL_30;
  }

  v112 = sub_100002BE4(&qword_10016D808, &qword_100113D40);
  v113 = *(v112 + 40);
  v115 = v260;
  v114 = v261;
  v116 = v262;
  (*(v261 + 16))(v260, v111 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v262);
  v117 = MobileGestaltCoordinator.isPadDevice.getter();
  (*(v114 + 8))(v115, v116);
  (*(v109 + 8))(v108, v246);
  v118 = v204;
  sub_100072D28(v255, v204, type metadata accessor for SoftwareUpdateView);
  v119 = (v118 + *(v206 + 36));
  *v119 = v117 & 1;
  v119[1] = 1;
  v120 = v118;
  v121 = v205;
  sub_10001D504(v120, v205, &qword_10016D768, &qword_100113C10);
  sub_10001D504(v121, v110 + v113, &qword_10016D768, &qword_100113C10);
  *(v110 + *(v112 + 44)) = 0x4024000000000000;
  v122 = v244;
  *(v110 + *(v244 + 36)) = 0xC000000000000000;
  sub_10001D504(v110, v263, &qword_10016D770, &qword_100113C18);
  v123 = v122;
  v124 = 0;
LABEL_12:
  (*(v243 + 56))(v263, v124, 1, v123);
  v125 = enum case for VisionCompanionFeatures.airPlayReceiver(_:);
  v126 = v254;
  v127 = v232;
  v128 = v235;
  v223 = *(v254 + 104);
  (v223)(v232, enum case for VisionCompanionFeatures.airPlayReceiver(_:), v235);
  v129 = VisionCompanionFeatures.isEnabled.getter();
  v130 = *(v126 + 8);
  v254 = v126 + 8;
  v130(v127, v128);
  if (v129)
  {
    v300 = 0uLL;
    LOBYTE(v301) = 0;
    sub_10006F554(v264, &v302);
    v245 = *(&v300 + 1);
    v246 = v300;
    v243 = v302;
    v244 = v301;
    v241 = v304;
    v242 = v303;
    v239 = v306;
    v240 = v305;
    v255 = 0xC008000000000000;
    *&v238 = v307;
    *(&v238 + 1) = 0x4024000000000000;
  }

  else
  {
    v245 = 0;
    v246 = 0;
    v243 = 0;
    v244 = 0;
    v241 = 0;
    v242 = 0;
    v239 = 0;
    v240 = 0;
    v238 = 0uLL;
    v255 = 0;
  }

  swift_getKeyPath();
  v131 = v234;
  *&v300 = v234;
  sub_100073638(&qword_10016D7D8, type metadata accessor for TipProvider, &unk_100119894);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v132 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips;
  swift_beginAccess();
  if (*(*(v131 + v132) + 16))
  {
    swift_getKeyPath();
    *&v300 = v131;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v133 = *(v131 + v132);
    v134 = *(v131 + OBJC_IVAR____TtC17AppleVisionProApp11TipProvider_pabProvider);
    v135 = *(v264 + *(v259 + 36));
    if (!v135)
    {
      type metadata accessor for AppDelegate(0);
      sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);

      EnvironmentObject.error()();
      __break(1u);
      goto LABEL_30;
    }

    v136 = v260;
    v137 = v261;
    v138 = v262;
    (*(v261 + 16))(v260, v135 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v262);
    v237 = v133;

    v236 = v134;

    v139 = MobileGestaltCoordinator.isPadDevice.getter();
    (*(v137 + 8))(v136, v138);
    v140 = v232;
    v141 = v125;
    v142 = v235;
    (v223)(v232, v141, v235);
    LOBYTE(v136) = VisionCompanionFeatures.isEnabled.getter();
    v130(v140, v142);
    v143 = 0xC008000000000000;
    if (v136)
    {
      v143 = 0xC010000000000000;
    }

    v254 = v143;
    v232 = v139 & 1;
    v235 = 0x4024000000000000;
    v223 = 256;
  }

  else
  {
    v236 = 0;
    v237 = 0;
    v235 = 0;
    v254 = 0;
    v232 = 0;
    v223 = 0;
  }

  v144 = v228;
  v145 = v229;
  swift_getKeyPath();
  *&v300 = v144;
  sub_100073638(&qword_10016D4D0, type metadata accessor for PrescriptionProvider, &unk_1001138A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v146 = v233;
  if (*(*(v144 + 16) + 16))
  {
    *v145 = 0;
    *(v145 + 8) = 0;
    *(v145 + 16) = 0;
    swift_getKeyPath();
    *&v300 = v144;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v147 = v219;
    *v219 = *(v144 + 16);
    v148 = v212;
    v149 = type metadata accessor for UUID();
    v150 = v213;
    (*(*(v149 - 8) + 56))(v213, 1, 1, v149);
    sub_10000C178(v150, v214, &unk_10016F2E0, qword_100113590);

    State.init(wrappedValue:)();
    v151 = v147;
    sub_100009908(v150, &unk_10016F2E0, qword_100113590);
    v152 = *(v148 + 24);
    *&v270 = 0;
    State.init(wrappedValue:)();
    *(v147 + v152) = v300;
    v153 = *(v264 + *(v259 + 36));
    if (!v153)
    {
      goto LABEL_30;
    }

    v146 = v233;
    v154 = *(v233 + 40);
    v156 = v260;
    v155 = v261;
    v157 = v262;
    (*(v261 + 16))(v260, v153 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v262);
    v158 = MobileGestaltCoordinator.isPadDevice.getter();
    (*(v155 + 8))(v156, v157);
    v159 = v216;
    sub_100072D28(v151, v216, type metadata accessor for PrescriptionCarouselView);
    v160 = (v159 + *(v218 + 36));
    *v160 = v158 & 1;
    v160[1] = 0;
    v161 = v159;
    v162 = v217;
    sub_10001D504(v161, v217, &qword_10016D750, &qword_100113BF8);
    sub_10001D504(v162, v145 + v154, &qword_10016D750, &qword_100113BF8);
    *(v145 + *(v146 + 44)) = 0x4024000000000000;
    v163 = v258;
    sub_10001D504(v145, v258, &qword_10016D758, &qword_100113C00);
    v164 = 0;
    v131 = v234;
  }

  else
  {
    v164 = 1;
    v163 = v258;
  }

  v165 = v264;
  (*(v230 + 56))(v163, v164, 1, v146);
  type metadata accessor for AppDelegate(0);
  sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
  v228 = EnvironmentObject.init()();
  v233 = v166;
  LOBYTE(v270) = 0;
  State.init(wrappedValue:)();
  LODWORD(v229) = v300;
  v230 = *(&v300 + 1);
  *&v270 = 0;
  *(&v270 + 1) = 0xE000000000000000;
  State.init(wrappedValue:)();
  v167 = *(v165 + *(v259 + 36));
  if (v167)
  {
    v264 = *(&v300 + 1);
    v222 = v300;
    v259 = v301;
    v169 = v260;
    v168 = v261;
    v170 = v262;
    (*(v261 + 16))(v260, v167 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v262);
    v171 = v131;

    v172 = MobileGestaltCoordinator.isPadDevice.getter();
    (*(v168 + 8))(v169, v170);
    LODWORD(v262) = v172 & 1;
    v173 = v316;
    LOBYTE(v170) = v315;
    v174 = v249;
    sub_10000C178(v247, v249, &qword_10016D7A8, &qword_100113C50);
    v175 = v250;
    sub_10000C178(v256, v250, &qword_10016D7A0, &qword_100113C48);
    v176 = v251;
    sub_10000C178(v257, v251, &qword_10016D798, &qword_100113C40);
    v177 = v252;
    sub_10000C178(v263, v252, &qword_10016D780, &qword_100113C28);
    v178 = v223 | v232;
    v261 = v223 | v232;
    v179 = v253;
    sub_10000C178(v258, v253, &qword_10016D760, &qword_100113C08);
    *&v266 = sub_100072C90;
    *(&v266 + 1) = v248;
    *&v267 = v227;
    BYTE8(v267) = v173;
    *&v268 = v226;
    BYTE8(v268) = v170;
    *&v269 = v225;
    *(&v269 + 1) = v224;
    v180 = v267;
    v181 = v231;
    *v231 = v266;
    v181[1] = v180;
    v182 = v269;
    v181[2] = v268;
    v181[3] = v182;
    v183 = sub_100002BE4(&qword_10016D7E0, &qword_100113CF0);
    sub_10000C178(v174, v181 + v183[12], &qword_10016D7A8, &qword_100113C50);
    sub_10000C178(v175, v181 + v183[16], &qword_10016D7A0, &qword_100113C48);
    sub_10000C178(v176, v181 + v183[20], &qword_10016D798, &qword_100113C40);
    sub_10000C178(v177, v181 + v183[24], &qword_10016D780, &qword_100113C28);
    v184 = v181 + v183[28];
    *&v270 = v246;
    *(&v270 + 1) = v245;
    *&v271 = v244;
    *(&v271 + 1) = v243;
    *&v272 = v242;
    *(&v272 + 1) = v241;
    *&v273 = v240;
    *(&v273 + 1) = v239;
    v274 = v238;
    v185 = v273;
    *(v184 + 2) = v272;
    *(v184 + 3) = v185;
    *(v184 + 4) = v274;
    v186 = v255;
    *(v184 + 10) = v255;
    v187 = v271;
    *v184 = v270;
    *(v184 + 1) = v187;
    v188 = (v181 + v183[32]);
    v275 = v186;
    v276[0] = 0;
    v276[1] = 0;
    *&v277 = 0;
    *(&v277 + 1) = v237;
    *&v278 = v236;
    *(&v278 + 1) = v178;
    *&v279 = v235;
    *(&v279 + 1) = v254;
    v189 = v277;
    v190 = v278;
    *v188 = 0u;
    v188[1] = v189;
    v191 = v279;
    v188[2] = v190;
    v188[3] = v191;
    sub_10000C178(v179, v181 + v183[36], &qword_10016D760, &qword_100113C08);
    v192 = v181 + v183[40];
    v193 = v228;
    *&v280 = v171;
    *(&v280 + 1) = v228;
    v194 = v233;
    *&v281 = v233;
    LOBYTE(v177) = v229;
    BYTE8(v281) = v229;
    *(&v281 + 9) = *v265;
    HIDWORD(v281) = *&v265[3];
    v195 = v230;
    v196 = v222;
    *&v282 = v230;
    *(&v282 + 1) = v222;
    *&v283 = v264;
    *(&v283 + 1) = v259;
    LOBYTE(v284) = v262;
    HIBYTE(v284) = 1;
    v197 = v280;
    v198 = v281;
    v199 = v282;
    v200 = v283;
    *(v192 + 32) = v284;
    *(v192 + 2) = v199;
    *(v192 + 3) = v200;
    *v192 = v197;
    *(v192 + 1) = v198;
    sub_10000C178(&v266, &v300, &qword_10016D7E8, &qword_100113CF8);
    sub_10000C178(&v270, &v300, &qword_10016D7F0, &qword_100113D00);
    sub_10000C178(v276, &v300, &qword_10016D7F8, &qword_100113D08);
    sub_10000C178(&v280, &v300, &qword_10016D800, &qword_100113D10);
    sub_100009908(v258, &qword_10016D760, &qword_100113C08);
    sub_100009908(v263, &qword_10016D780, &qword_100113C28);
    sub_100009908(v257, &qword_10016D798, &qword_100113C40);
    sub_100009908(v256, &qword_10016D7A0, &qword_100113C48);
    sub_100009908(v247, &qword_10016D7A8, &qword_100113C50);
    v285[0] = v171;
    v285[1] = v193;
    v285[2] = v194;
    v286 = v177;
    *v287 = *v265;
    *&v287[3] = *&v265[3];
    v288 = v195;
    v289 = v196;
    v290 = v264;
    v291 = v259;
    v292 = v262;
    v293 = 1;
    sub_100009908(v285, &qword_10016D800, &qword_100113D10);
    sub_100009908(v253, &qword_10016D760, &qword_100113C08);
    memset(v294, 0, sizeof(v294));
    v295 = v237;
    v296 = v236;
    v297 = v261;
    v298 = v235;
    v299 = v254;
    sub_100009908(v294, &qword_10016D7F8, &qword_100113D08);
    *&v300 = v246;
    *(&v300 + 1) = v245;
    v301 = v244;
    v302 = v243;
    v303 = v242;
    v304 = v241;
    v305 = v240;
    v306 = v239;
    v307 = v238;
    v308 = v255;
    sub_100009908(&v300, &qword_10016D7F0, &qword_100113D00);
    sub_100009908(v252, &qword_10016D780, &qword_100113C28);
    sub_100009908(v251, &qword_10016D798, &qword_100113C40);
    sub_100009908(v250, &qword_10016D7A0, &qword_100113C48);
    sub_100009908(v249, &qword_10016D7A8, &qword_100113C50);
  }

  EnvironmentObject.error()();
  __break(1u);
LABEL_30:
  type metadata accessor for AppDelegate(0);
  sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10006E214(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DeviceTab(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for GlobalCoordinateSpace();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  v18 = fmax(fmin(CGRectGetMinY(v23) / -500.0, 4.0), -4.0);
  v22[1] = static Color.clear.getter();
  *v22 = v18;
  sub_100072210(a2, v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_100072D28(v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for DeviceTab);
  View.onChange<A>(of:initial:_:)();
}

uint64_t sub_10006E490(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *a2;
  sub_100002BE4(&qword_10016D830, &qword_100113DB8);
  State.wrappedValue.getter();
  sub_10003F3BC(v3, 0.005);
}

uint64_t sub_10006E504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v123 = type metadata accessor for AutomationSemantics();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v120 = &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for MobileGestaltCoordinator();
  v128 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100002BE4(&qword_10016D840, &qword_100113DC8);
  __chkstk_darwin(v113);
  v124 = &KeyPath - v10;
  v114 = sub_100002BE4(&qword_10016D848, &qword_100113DD0);
  __chkstk_darwin(v114);
  v116 = &KeyPath - v11;
  v115 = sub_100002BE4(&qword_10016D850, &qword_100113DD8);
  __chkstk_darwin(v115);
  v117 = &KeyPath - v12;
  v118 = sub_100002BE4(&qword_10016D858, &qword_100113DE0);
  __chkstk_darwin(v118);
  v119 = &KeyPath - v13;
  v14 = v2;
  *&v133 = sub_100071058(a1);
  *(&v133 + 1) = v15;
  static CharacterSet.illegalCharacters.getter();
  sub_100012928();
  v16 = StringProtocol.trimmingCharacters(in:)();
  v18 = v17;
  v19 = *(v7 + 8);
  v19(v9, v6);

  *&v133 = v16;
  *(&v133 + 1) = v18;
  static CharacterSet.whitespacesAndNewlines.getter();
  v20 = StringProtocol.trimmingCharacters(in:)();
  v22 = v21;
  v19(v9, v6);

  *&v133 = v20;
  *(&v133 + 1) = v22;
  v130[0] = 95;
  v130[1] = 0xE100000000000000;
  v129[0] = 32;
  v129[1] = 0xE100000000000000;
  v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v25 = v24;

  *&v133 = v23;
  *(&v133 + 1) = v25;
  v130[0] = 45;
  v130[1] = 0xE100000000000000;
  v129[0] = 32;
  v129[1] = 0xE100000000000000;
  v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v28 = v27;

  *&v133 = v26;
  *(&v133 + 1) = v28;
  v29 = Text.init<A>(_:)();
  v31 = v30;
  LOBYTE(v28) = v32;
  static Font.largeTitle.getter();
  v33 = Text.font(_:)();
  v35 = v34;
  v37 = v36;

  sub_10001297C(v29, v31, v28 & 1);

  static Font.Weight.bold.getter();
  v38 = Text.fontWeight(_:)();
  v40 = v39;
  v42 = v41;
  sub_10001297C(v33, v35, v37 & 1);

  v43 = (v14 + *(type metadata accessor for DeviceTab(0) + 36));
  if (*v43)
  {
    v44 = v128;
    v45 = *(v128 + 16);
    v46 = *v43;
    v47 = *v43 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator;
    v48 = v111;
    v49 = v112;
    v127 = v128 + 16;
    v126 = v45;
    v45(v111, v47, v112);
    v50 = MobileGestaltCoordinator.isPadDevice.getter();
    v51 = *(v44 + 8);
    v52 = v49;
    v128 = v44 + 8;
    v125 = v51;
    v51(v48, v49);
    if (v50)
    {
      v53 = static HierarchicalShapeStyle.secondary.getter();
    }

    else
    {
      v53 = static HierarchicalShapeStyle.primary.getter();
    }

    LODWORD(v133) = v53;
    v110 = Text.foregroundStyle<A>(_:)();
    v109 = v54;
    v56 = v55;
    v108 = v57;
    sub_10001297C(v38, v40, v42 & 1);

    v107 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator;
    v58 = v46;
    v126(v48, v46 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v52);
    v59 = v48;
    v60 = MobileGestaltCoordinator.isPadDevice.getter();
    v125(v59, v52);
    v106 = v60 & 1;
    KeyPath = swift_getKeyPath();
    v61 = swift_getKeyPath();
    v56 &= 1u;
    v132 = v56;
    v131 = 0;
    v62 = v124;
    v63 = (v124 + *(v113 + 36));
    v64 = *(sub_100002BE4(&qword_10016D860, &qword_100113E48) + 28);
    v65 = enum case for Text.TruncationMode.tail(_:);
    v66 = type metadata accessor for Text.TruncationMode();
    v67 = v65;
    v68 = v52;
    v69 = v58;
    (*(*(v66 - 8) + 104))(v63 + v64, v67, v66);
    *v63 = swift_getKeyPath();
    v70 = v109;
    *v62 = v110;
    *(v62 + 8) = v70;
    *(v62 + 16) = v56;
    v71 = KeyPath;
    *(v62 + 24) = v108;
    *(v62 + 32) = v71;
    *(v62 + 40) = v106;
    *(v62 + 48) = v61;
    *(v62 + 56) = 3;
    *(v62 + 64) = 0;
    v72 = v59;
    v73 = v107;
    v74 = v126;
    v126(v72, v58 + v107, v68);
    MobileGestaltCoordinator.isPadDevice.getter();
    v75 = v125;
    v125(v72, v68);
    v74(v72, v58 + v73, v68);
    LOBYTE(v74) = MobileGestaltCoordinator.isPadDevice.getter();
    v75(v72, v68);
    if (v74)
    {
      static Alignment.center.getter();
    }

    else
    {
      static Alignment.leading.getter();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v76 = v116;
    sub_10001D504(v124, v116, &qword_10016D840, &qword_100113DC8);
    v77 = (v76 + *(v114 + 36));
    v78 = v138;
    v77[4] = v137;
    v77[5] = v78;
    v77[6] = v139;
    v79 = v134;
    *v77 = v133;
    v77[1] = v79;
    v80 = v136;
    v77[2] = v135;
    v77[3] = v80;
    v81 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v90 = v117;
    sub_10001D504(v76, v117, &qword_10016D848, &qword_100113DD0);
    v91 = v90 + *(v115 + 36);
    *v91 = v81;
    *(v91 + 8) = v83;
    *(v91 + 16) = v85;
    *(v91 + 24) = v87;
    *(v91 + 32) = v89;
    *(v91 + 40) = 0;
    v92 = static Edge.Set.top.getter();
    v126(v72, v69 + v73, v68);
    MobileGestaltCoordinator.isPadDevice.getter();
    v125(v72, v68);
    EdgeInsets.init(_all:)();
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v101 = v119;
    sub_10001D504(v90, v119, &qword_10016D850, &qword_100113DD8);
    v102 = v101 + *(v118 + 36);
    *v102 = v92;
    *(v102 + 8) = v94;
    *(v102 + 16) = v96;
    *(v102 + 24) = v98;
    *(v102 + 32) = v100;
    *(v102 + 40) = 0;
    memset(v130, 0, sizeof(v130));
    memset(v129, 0, sizeof(v129));
    v103 = v120;
    static AutomationSemantics.productPage(elementName:id:parentId:)();
    sub_100009908(v129, &qword_100169A38, &qword_10010D460);
    sub_100009908(v130, &qword_100169A38, &qword_10010D460);
    sub_100072F10();
    View.automationSemantics(_:)();
    (*(v121 + 8))(v103, v123);
    return sub_100009908(v101, &qword_10016D858, &qword_100113DE0);
  }

  else
  {
    type metadata accessor for AppDelegate(0);
    sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006F10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v42 = a4;
  v6 = type metadata accessor for DeviceModelConfiguratorView(0);
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_10016D820, &qword_100113DA8);
  v9 = __chkstk_darwin(v8 - 8);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  v13 = sub_100002BE4(&qword_10016D828, &qword_100113DB0);
  v14 = v13 - 8;
  v15 = __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  v20 = type metadata accessor for Device();
  (*(*(v20 - 8) + 16))(v19, a1, v20);
  v21 = *(a2 + 40);
  v43 = *(a2 + 32);
  *&v44 = v21;
  sub_100002BE4(&qword_10016D830, &qword_100113DB8);
  State.wrappedValue.getter();
  v22 = v45;
  v23 = *(a2 + 48);
  v24 = *(a2 + 56);
  v45 = v23;
  v46 = v24;
  sub_100002BE4(&qword_10016D6C0, &qword_100113AF0);
  State.projectedValue.getter();
  v25 = v43;
  v26 = type metadata accessor for DeviceModelSection(0);
  v27 = v44;
  *&v19[v26[5]] = v22;
  v28 = &v19[v26[6]];
  *v28 = v25;
  *(v28 + 8) = v27;
  *&v19[v26[7]] = v38;
  *&v19[*(v14 + 44)] = 0;
  v29 = *(a2 + 24);
  LOBYTE(v43) = *(a2 + 16);
  *&v44 = v29;

  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.getter();
  if (v45 == 1)
  {
    v43 = v23;
    *&v44 = v24;
    State.wrappedValue.getter();
    type metadata accessor for DeviceModelParameters(0);
    sub_100073638(&qword_10016CC90, type metadata accessor for DeviceModelParameters, &unk_100112B40);
    v30 = v37;
    Bindable<A>.init(wrappedValue:)();
    sub_100072D28(v30, v12, type metadata accessor for DeviceModelConfiguratorView);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v39 + 56))(v12, v31, 1, v40);
  sub_10000C178(v19, v17, &qword_10016D828, &qword_100113DB0);
  v32 = v41;
  sub_10000C178(v12, v41, &qword_10016D820, &qword_100113DA8);
  v33 = v42;
  sub_10000C178(v17, v42, &qword_10016D828, &qword_100113DB0);
  v34 = sub_100002BE4(&qword_10016D838, &qword_100113DC0);
  sub_10000C178(v32, v33 + *(v34 + 48), &qword_10016D820, &qword_100113DA8);
  sub_100009908(v12, &qword_10016D820, &qword_100113DA8);
  sub_100009908(v19, &qword_10016D828, &qword_100113DB0);
  sub_100009908(v32, &qword_10016D820, &qword_100113DA8);
  return sub_100009908(v17, &qword_10016D828, &qword_100113DB0);
}

uint64_t sub_10006F554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v22 = type metadata accessor for MobileGestaltCoordinator();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DeviceTab(0);
  type metadata accessor for SceneDelegate();
  sub_100073638(&qword_10016D538, type metadata accessor for SceneDelegate, &unk_100119300);
  v6 = EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  v7 = v28;
  v8 = v29;
  v9 = v30;
  swift_getKeyPath();
  v25 = v7;
  v26 = v8;
  v27 = v9;
  sub_100002BE4(&qword_10016D818, &qword_100113DA0);
  Binding.subscript.getter();

  v10 = v23;
  v19 = v24;

  v11 = EnvironmentObject.init()();
  v13 = *(v21 + *(v20 + 36));
  if (v13)
  {
    v14 = v11;
    v15 = v12;
    v16 = v22;
    (*(v3 + 16))(v5, v13 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator, v22);
    v17 = MobileGestaltCoordinator.isPadDevice.getter();
    result = (*(v3 + 8))(v5, v16);
    *a2 = v14;
    *(a2 + 8) = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v19;
    *(a2 + 40) = v17 & 1;
    *(a2 + 41) = 1;
  }

  else
  {
    type metadata accessor for AppDelegate(0);
    sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006F824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = sub_100002BE4(&qword_10016D6C8, &qword_100113B20);
  __chkstk_darwin(v5);
  v7 = &v38 - v6;
  v8 = sub_100002BE4(&qword_10016D6D0, &qword_100113B28);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v42 = &v38 - v10;
  v11 = sub_100002BE4(&qword_10016D6D8, &qword_100113B30);
  v41 = *(v11 - 8);
  __chkstk_darwin(v11);
  v40 = &v38 - v12;
  v13 = sub_100002BE4(&qword_10016D6E0, &qword_100113B38);
  v14 = __chkstk_darwin(v13 - 8);
  v43 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v38 - v16;
  v18 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v18 - 8);
  v19 = sub_100002BE4(&qword_10016D6E8, &qword_100113B40);
  v46 = *(v19 - 8);
  v47 = v19;
  __chkstk_darwin(v19);
  v21 = &v38 - v20;
  static ToolbarItemPlacement.topBarLeading.getter();
  v48 = a1;
  v49 = a2;
  sub_100002BE4(&qword_10016D6F0, &qword_100113B48);
  sub_1000727A4();
  v44 = v21;
  v22 = ToolbarItem<>.init(placement:content:)();
  if (sub_100092298(v22))
  {
    v23 = static ToolbarItemPlacement.topBarTrailing.getter();
    v38 = &v38;
    __chkstk_darwin(v23);
    *(&v38 - 2) = a2;
    v39 = v11;
    sub_100002BE4(&qword_10016D708, &qword_100113B58);
    v24 = v9;
    v25 = v8;
    sub_100012C48(&qword_10016D710, &qword_10016D708, &qword_100113B58, &protocol conformance descriptor for Button<A>);
    v26 = v40;
    ToolbarItem<>.init(placement:content:)();
    v27 = sub_100012C48(&qword_10016D700, &qword_10016D6D8, &qword_100113B30, &protocol conformance descriptor for ToolbarItem<A, B>);
    v28 = v42;
    v29 = v39;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v30 = v43;
    (*(v24 + 16))(v43, v28, v25);
    (*(v24 + 56))(v30, 0, 1, v25);
    v50 = v29;
    v51 = v27;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100009908(v30, &qword_10016D6E0, &qword_100113B38);
    (*(v24 + 8))(v28, v25);
    (*(v41 + 8))(v26, v29);
  }

  else
  {
    v31 = v43;
    (*(v9 + 56))(v43, 1, 1, v8);
    v32 = sub_100012C48(&qword_10016D700, &qword_10016D6D8, &qword_100113B30, &protocol conformance descriptor for ToolbarItem<A, B>);
    v50 = v11;
    v51 = v32;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100009908(v31, &qword_10016D6E0, &qword_100113B38);
  }

  v33 = *(v5 + 48);
  v35 = v46;
  v34 = v47;
  v36 = v44;
  (*(v46 + 16))(v7, v44, v47);
  sub_10000C178(v17, &v7[v33], &qword_10016D6E0, &qword_100113B38);
  TupleToolbarContent.init(_:)();
  sub_100009908(v17, &qword_10016D6E0, &qword_100113B38);
  return (*(v35 + 8))(v36, v34);
}

uint64_t sub_10006FE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = a3;
  v5 = type metadata accessor for DeviceTab(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_100002BE4(&qword_10016A060, &qword_100113B50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  swift_getKeyPath();
  v18[1] = a1;
  sub_100073638(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(*(a1 + 16) + 16) < 2uLL)
  {
    v15 = 1;
    v16 = v18[0];
  }

  else
  {
    sub_100072210(a2, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    sub_100072D28(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for DeviceTab);
    sub_100002BE4(&qword_10016A0B8, &qword_10010ECF0);
    sub_10001D8A0();
    Button.init(action:label:)();
    v14 = v18[0];
    (*(v9 + 32))(v18[0], v11, v8);
    v15 = 0;
    v16 = v14;
  }

  return (*(v9 + 56))(v16, v15, 1, v8);
}

double sub_100070128(uint64_t a1)
{
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.setter();
  return result;
}

void sub_100070188(uint64_t a1@<X8>)
{
  if (qword_100168F68 != -1)
  {
    swift_once();
  }

  sub_100012928();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.Weight.medium.getter();
  v7 = Text.fontWeight(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10001297C(v2, v4, v6 & 1);

  LOBYTE(v2) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = 0;
}

uint64_t sub_1000702C4(uint64_t a1)
{
  v2 = type metadata accessor for DeviceTab(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100072210(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100072D28(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for DeviceTab);
  sub_100002BE4(&qword_10016D718, &qword_100113B60);
  sub_100072A34();
  return Button.init(action:label:)();
}

uint64_t sub_100070418(uint64_t a1)
{

  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

__n128 sub_1000704B0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100002BE4(&qword_100169A80, &qword_10010D480);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v21 = Image.init(systemName:)();
  static Color.white.getter();
  v20 = Color.opacity(_:)();

  v5 = static Alignment.topTrailing.getter();
  v7 = v6;
  v8 = Image.init(systemName:)();
  v9 = type metadata accessor for Font.Design();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = static Font.system(size:weight:design:)();
  sub_100009908(v4, &qword_100169A80, &qword_10010D480);
  KeyPath = swift_getKeyPath();
  v12 = static Color.accentColor.getter();
  v13 = static Color.white.getter();
  v14 = static Alignment.center.getter();
  *&v25 = v8;
  *(&v25 + 1) = KeyPath;
  v26.n128_u64[0] = v10;
  v26.n128_u64[1] = v12;
  *&v27 = v13;
  HIWORD(v27) = v24;
  *(&v27 + 10) = v23;
  WORD4(v27) = 256;
  *&v28 = v14;
  *(&v28 + 1) = v15;
  *&v29 = v5;
  *(&v29 + 1) = v7;
  v41 = v28;
  v42 = v29;
  v39 = v26;
  v40 = v27;
  v38 = v25;
  v30[0] = v8;
  v30[1] = KeyPath;
  v30[2] = v10;
  v30[3] = v12;
  v30[4] = v13;
  v31 = 256;
  v33 = v24;
  v32 = v23;
  v34 = v14;
  v35 = v15;
  v36 = v5;
  v37 = v7;
  sub_10000C178(&v25, &v22, &qword_10016D740, &unk_100113B78);
  sub_100009908(v30, &qword_10016D740, &unk_100113B78);
  v16 = v20;
  *a1 = v21;
  *(a1 + 8) = v16;
  v17 = v41;
  *(a1 + 48) = v40;
  *(a1 + 64) = v17;
  *(a1 + 80) = v42;
  result = v39;
  *(a1 + 16) = v38;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10007071C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E5480();
  sub_10004F388(0);
  v30[3] = &_s20TetsuoAnalyticsEventON;
  v30[4] = sub_1000250D8();
  LOBYTE(v30[0]) = 9;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(v30);
  v10 = *(a2 + *(type metadata accessor for DeviceTab(0) + 36));
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider);
    swift_getKeyPath();
    v30[0] = v11;
    sub_100073638(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
    swift_beginAccess();
    sub_10000C178(v11 + v12, v5, &qword_10016B010, &qword_100110020);

    v13 = *(v7 + 48);
    if (v13(v5, 1, v6) == 1)
    {
      sub_10006BF28();
      if (v13(v5, 1, v6) != 1)
      {
        sub_100009908(v5, &qword_10016B010, &qword_100110020);
      }
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
    }

    v14 = Device.productType.getter();
    v16 = v15;
    v17._countAndFlagsBits = v14;
    v17._object = v16;
    v18 = _findStringSwitchCase(cases:string:)(&off_100159AA0, v17);

    v19 = *(a2 + 48);
    v20 = *(a2 + 56);
    v28 = v19;
    v29 = v20;
    sub_100002BE4(&qword_10016D6C0, &qword_100113AF0);
    State.wrappedValue.getter();
    v21 = v27;
    swift_getKeyPath();
    v28 = v21;
    sub_100073638(&qword_10016CC90, type metadata accessor for DeviceModelParameters, &unk_100112B40);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LODWORD(v16) = *(v21 + 16);

    v22 = "SpatialGalleryItemUnfavorited";
    if (v16)
    {
      v23 = "RealityDevice14,1";
    }

    else
    {
      v23 = "SpatialGalleryItemUnfavorited";
    }

    if (v18)
    {
      v22 = "RealityDevice14,1";
    }

    if ((v23 | 0x8000000000000000) == (v22 | 0x8000000000000000))
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        type metadata accessor for DeviceModelParameters(0);
        swift_allocObject();
        v25 = sub_10005E800(v18 != 0);
        v28 = v19;
        v29 = v20;
        v27 = v25;
        State.wrappedValue.setter();
      }
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    type metadata accessor for AppDelegate(0);
    sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_100070BF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a2[1])
  {
    v3 = *a2;
    v4 = a2[1];
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  v6 = _findStringSwitchCase(cases:string:)(&off_100159AA0, v5);

  sub_100002BE4(&qword_10016D6C0, &qword_100113AF0);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_100073638(&qword_10016CC90, type metadata accessor for DeviceModelParameters, &unk_100112B40);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v12 + 16);

  v8 = "SpatialGalleryItemUnfavorited";
  if (v7)
  {
    v9 = "RealityDevice14,1";
  }

  else
  {
    v9 = "SpatialGalleryItemUnfavorited";
  }

  if (v6)
  {
    v8 = "RealityDevice14,1";
  }

  if ((v9 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      type metadata accessor for DeviceModelParameters(0);
      swift_allocObject();
      sub_10005E800(v6 != 0);
      State.wrappedValue.setter();
    }
  }

  return result;
}

uint64_t sub_100070DE8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100070E80, v4, v3);
}

uint64_t sub_100070E80()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100070EEC@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for DeviceSelectionView(0);
  sub_100073638(&qword_10016D6B8, type metadata accessor for DeviceSelectionView, &unk_10010FF24);
  NavigationStack.init<>(root:)();
  v3 = [objc_opt_self() systemBackgroundColor];
  v4 = Color.init(_:)();
  v5 = static Edge.Set.all.getter();
  result = sub_100002BE4(&qword_10016D628, &qword_100113A10);
  v7 = a2 + *(result + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
  return result;
}

uint64_t sub_100070FD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for DeviceSelectionView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_100002BE4(&qword_10016A568, &unk_10010F530);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_100071058(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (!has_internal_ui)
  {
    sub_10000C178(a1, v5, &qword_10016B010, &qword_100110020);
    v13 = type metadata accessor for Device();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v5, 1, v13) == 1)
    {
      sub_100009908(v5, &qword_10016B010, &qword_100110020);
    }

    else
    {
      countAndFlagsBits = Device.name.getter();
      v16 = v15;
      (*(v14 + 8))(v5, v13);
      if (v16)
      {
        return countAndFlagsBits;
      }
    }

LABEL_11:
    v21 = [objc_opt_self() mainBundle];
    v27._object = 0xE000000000000000;
    v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v22.value._object = 0xEB00000000656C62;
    v23._object = 0x800000010011D950;
    v23._countAndFlagsBits = 0xD000000000000010;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v27)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v9 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.myDeviceNameOverride.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 stringForKey:v10];

  if (!v11)
  {
    sub_10000C178(a1, v7, &qword_10016B010, &qword_100110020);
    v17 = type metadata accessor for Device();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v7, 1, v17) == 1)
    {
      sub_100009908(v7, &qword_10016B010, &qword_100110020);
    }

    else
    {
      countAndFlagsBits = Device.name.getter();
      v20 = v19;
      (*(v18 + 8))(v7, v17);
      if (v20)
      {
        return countAndFlagsBits;
      }
    }

    goto LABEL_11;
  }

  countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return countAndFlagsBits;
}

uint64_t sub_1000713E8@<X0>(uint64_t a1@<X8>)
{
  State.init(wrappedValue:)();
  *a1 = v9;
  *(a1 + 8) = v10;
  State.init(wrappedValue:)();
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  type metadata accessor for ScrollState(0);
  *(swift_allocObject() + 16) = 0;
  ObservationRegistrar.init()();
  State.init(wrappedValue:)();
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  type metadata accessor for DeviceModelParameters(0);
  swift_allocObject();
  sub_10005E800(1);
  State.init(wrappedValue:)();
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  v2 = type metadata accessor for DeviceTab(0);
  v3 = v2[8];
  *(a1 + v3) = swift_getKeyPath();
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  swift_storeEnumTagMultiPayload();
  v4 = (a1 + v2[9]);
  type metadata accessor for AppDelegate(0);
  sub_100073638(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
  *v4 = EnvironmentObject.init()();
  v4[1] = v5;
  v6 = (a1 + v2[10]);
  type metadata accessor for SceneDelegate();
  sub_100073638(&qword_10016D538, type metadata accessor for SceneDelegate, &unk_100119300);
  result = EnvironmentObject.init()();
  *v6 = result;
  v6[1] = v8;
  return result;
}

uint64_t sub_100071644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002BE4(&qword_10016A678, &unk_100113980);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100071714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016A678, &unk_100113980);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000717C4(uint64_t a1)
{
  sub_100071908();
  if (v1 <= 0x3F)
  {
    sub_100073524(319, &qword_10016D5B0, type metadata accessor for ScrollState, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_100073524(319, &qword_10016D5B8, type metadata accessor for DeviceModelParameters, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100071958(319);
        if (v4 <= 0x3F)
        {
          sub_100025958(319);
          if (v5 <= 0x3F)
          {
            sub_1000719BC(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100071908()
{
  if (!qword_10016D5A8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10016D5A8);
    }
  }
}

void sub_100071958(uint64_t a1)
{
  if (!qword_10016A718)
  {
    sub_10000459C(&qword_10016A578, &qword_10010F540);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10016A718);
    }
  }
}

void sub_1000719BC(uint64_t a1)
{
  if (!qword_10016D5C0)
  {
    type metadata accessor for SceneDelegate();
    sub_100073638(&qword_10016D538, type metadata accessor for SceneDelegate, &unk_100119300);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10016D5C0);
    }
  }
}

uint64_t sub_100071A6C()
{
  sub_100002BE4(&qword_10016D608, &qword_1001139F0);
  sub_10000459C(&qword_10016D610, &qword_1001139F8);
  sub_10000459C(&qword_10016D618, &qword_100113A00);
  sub_10000459C(&qword_10016D620, &qword_100113A08);
  sub_10000459C(&qword_10016D628, &qword_100113A10);
  sub_100071BD4();
  sub_100071F88();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_100071BD4()
{
  result = qword_10016D630;
  if (!qword_10016D630)
  {
    sub_10000459C(&qword_10016D620, &qword_100113A08);
    sub_10000459C(&qword_10016D638, &qword_100113A18);
    sub_10000459C(&qword_10016B278, &qword_100113A20);
    sub_100071CF8();
    sub_100071F0C();
    swift_getOpaqueTypeConformance2();
    sub_100073638(&qword_10016A610, type metadata accessor for ScenePhaseViewModifier, &unk_10010F3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D630);
  }

  return result;
}

unint64_t sub_100071CF8()
{
  result = qword_10016D640;
  if (!qword_10016D640)
  {
    sub_10000459C(&qword_10016D638, &qword_100113A18);
    sub_100071D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D640);
  }

  return result;
}

unint64_t sub_100071D84()
{
  result = qword_10016D648;
  if (!qword_10016D648)
  {
    sub_10000459C(&qword_10016D650, &qword_100113A28);
    sub_10000459C(&qword_10016D658, &qword_100113A30);
    sub_10000459C(&qword_10016D660, &unk_100113A38);
    sub_100012C48(&qword_10016D668, &qword_10016D658, &qword_100113A30, &protocol conformance descriptor for ScrollView<A>);
    sub_100012C48(&qword_10016D670, &qword_10016D660, &unk_100113A38, &protocol conformance descriptor for TupleToolbarContent<A>);
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_10016A7C0, &qword_10016A7C8, &qword_10010F7D0, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D648);
  }

  return result;
}

unint64_t sub_100071F0C()
{
  result = qword_10016D678;
  if (!qword_10016D678)
  {
    sub_10000459C(&qword_10016B278, &qword_100113A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D678);
  }

  return result;
}

unint64_t sub_100071F88()
{
  result = qword_10016D680;
  if (!qword_10016D680)
  {
    sub_10000459C(&qword_10016D628, &qword_100113A10);
    sub_100012C48(&qword_10016D688, &qword_10016D690, &unk_100113A48, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D680);
  }

  return result;
}

uint64_t sub_10007206C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DeviceModelView(0);
  v5 = v4[5];
  v6 = type metadata accessor for Device();
  (*(*(v6 - 8) + 16))(a1 + v5, v2, v6);
  v7 = type metadata accessor for DeviceModelSection(0);
  v8 = *(v2 + *(v7 + 20));
  swift_getKeyPath();
  sub_100073638(&qword_10016B738, type metadata accessor for ScrollState, &unk_100110C80);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v8 + 16);
  sub_100002BE4(&qword_10016CD58, &qword_100112F88);
  Binding.projectedValue.getter();
  v10 = *(v2 + *(v7 + 28));
  *(a1 + v4[6]) = v9;
  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + v4[7]) = v10;
}

uint64_t sub_100072210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceTab(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100072274()
{
  v1 = type metadata accessor for DeviceTab(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v1[8];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007243C()
{
  v1 = *(type metadata accessor for DeviceTab(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10007071C(v2, v3);
}

double sub_1000724A4(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for DeviceTab(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100070BF8(a1, a2, v6);
}

uint64_t sub_100072528()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100072560()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000FA04;

  return sub_100070DE8(v2, v3);
}

uint64_t sub_100072628@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10007267C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000726D4(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

unint64_t sub_1000727A4()
{
  result = qword_10016D6F8;
  if (!qword_10016D6F8)
  {
    sub_10000459C(&qword_10016D6F0, &qword_100113B48);
    sub_100012C48(&qword_10016A058, &qword_10016A060, &qword_100113B50, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D6F8);
  }

  return result;
}

uint64_t sub_10007285C()
{
  v1 = type metadata accessor for DeviceTab(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_100072A34()
{
  result = qword_10016D720;
  if (!qword_10016D720)
  {
    sub_10000459C(&qword_10016D718, &qword_100113B60);
    sub_100072AEC();
    sub_100012C48(&qword_10016D738, &qword_10016D740, &unk_100113B78, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D720);
  }

  return result;
}

unint64_t sub_100072AEC()
{
  result = qword_10016D728;
  if (!qword_10016D728)
  {
    sub_10000459C(&qword_10016D730, &unk_100113B68);
    sub_100012C48(&qword_10016A5D0, &qword_10016A5D8, &unk_10010F630, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D728);
  }

  return result;
}

uint64_t sub_100072BA4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100072C1C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DeviceTab(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100072C90(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceTab(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10006E214(a1, v4);
}

uint64_t sub_100072D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_100072D98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager);
  *a2 = v2;
  return v2;
}

void sub_100072DB4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager);
  *(*a2 + OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager) = *a1;
  v3 = v2;
}

uint64_t sub_100072E30@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100072E84@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100072F10()
{
  result = qword_10016D868;
  if (!qword_10016D868)
  {
    sub_10000459C(&qword_10016D858, &qword_100113DE0);
    sub_100072F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D868);
  }

  return result;
}

unint64_t sub_100072F9C()
{
  result = qword_10016D870;
  if (!qword_10016D870)
  {
    sub_10000459C(&qword_10016D850, &qword_100113DD8);
    sub_100073028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D870);
  }

  return result;
}

unint64_t sub_100073028()
{
  result = qword_10016D878;
  if (!qword_10016D878)
  {
    sub_10000459C(&qword_10016D848, &qword_100113DD0);
    sub_1000730B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D878);
  }

  return result;
}

unint64_t sub_1000730B4()
{
  result = qword_10016D880;
  if (!qword_10016D880)
  {
    sub_10000459C(&qword_10016D840, &qword_100113DC8);
    sub_10007316C();
    sub_100012C48(&qword_10016D8A8, &qword_10016D860, &qword_100113E48, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D880);
  }

  return result;
}

unint64_t sub_10007316C()
{
  result = qword_10016D888;
  if (!qword_10016D888)
  {
    sub_10000459C(&qword_10016D890, &qword_100113E88);
    sub_100021FAC();
    sub_100012C48(&qword_10016D898, &qword_10016D8A0, &unk_100113E90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D888);
  }

  return result;
}

uint64_t sub_100073224(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for DeviceTab(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10006E490(a1, a2, v6);
}

uint64_t sub_1000732B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100073388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100073440(uint64_t a1)
{
  type metadata accessor for Device();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ScrollState(319);
    if (v2 <= 0x3F)
    {
      sub_100073524(319, &qword_10016CD00, type metadata accessor for DeviceModelParameters, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DeviceProvider(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100073524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100073638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100073690(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000736A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1000736EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10007373C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = [objc_allocWithZone(type metadata accessor for LayerResizableUIView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = v6;
    if (sub_100073854(a2, v3))
    {
      v8 = [v5 layer];
      [v8 addSublayer:v7];

      v7 = v8;
    }
  }

  v9 = v5;
  sub_100030B38(v9, v3);

  return v9;
}

uint64_t sub_100073854(uint64_t a1, unsigned __int8 a2)
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x69736E6172546E69;
    }

    if (a2 == 1)
    {
      v5 = 0x800000010011C670;
    }

    else
    {
      v5 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    v4 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v6 = 0xD000000000000010;
  v7 = 0x800000010011C670;
  if (*(a1 + 17) != 1)
  {
    v6 = 0x69736E6172546E69;
    v7 = 0xEC0000006E6F6974;
  }

  if (*(a1 + 17))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x657263536C6C7566;
  }

  if (*(a1 + 17))
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xEA00000000006E65;
  }

  if (v4 != v8 || v5 != v9)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      v10 = 1;
      return v10 & 1;
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(a1 + 17) && *(a1 + 17) != 1)
    {

      v13 = a2;
      if (!a2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v10 = 0;
      if ((v12 & 1) == 0)
      {
        return v10 & 1;
      }

      v13 = a2;
      if (!a2)
      {
        goto LABEL_30;
      }
    }

    if (v13 == 1)
    {
      goto LABEL_20;
    }

LABEL_30:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v10 & 1;
  }

LABEL_20:

  v10 = 1;
  return v10 & 1;
}

void sub_100073AFC(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 32))
  {
    sub_100030B38(a1, v4);
  }
}

uint64_t sub_100073B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100073CE8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100073BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100073CE8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100073C58(uint64_t a1)
{
  sub_100073CE8();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100073C84()
{
  result = qword_10016D960;
  if (!qword_10016D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D960);
  }

  return result;
}

unint64_t sub_100073CE8()
{
  result = qword_10016D968;
  if (!qword_10016D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D968);
  }

  return result;
}

uint64_t sub_100073D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002BE4(&qword_10016D970, &qword_1001140B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100002BE4(&qword_10016D978, &qword_1001140B8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100073EA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_100002BE4(&qword_10016D970, &qword_1001140B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100002BE4(&qword_10016D978, &qword_1001140B8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for AppHeroModel(uint64_t a1)
{
  result = qword_10016D9D8;
  if (!qword_10016D9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100074028(uint64_t a1)
{
  sub_10001EA88();
  if (v1 <= 0x3F)
  {
    sub_10001EC3C(319, &qword_10016D9E8, &qword_10016A198, &qword_10010EF20);
    if (v2 <= 0x3F)
    {
      sub_10001EC3C(319, &qword_10016D9F0, &qword_10016D9F8, &qword_1001140D8);
      if (v3 <= 0x3F)
      {
        sub_10001EC3C(319, &qword_10016DA00, &qword_10016DA08, &qword_1001140E0);
        if (v4 <= 0x3F)
        {
          sub_10001EC3C(319, &qword_10016DA10, &unk_10016DA18, &qword_1001140E8);
          if (v5 <= 0x3F)
          {
            sub_10001EC3C(319, &qword_10016A1C8, &unk_10016A1D0, &qword_10010EF30);
            if (v6 <= 0x3F)
            {
              sub_10001EC3C(319, &qword_10016B270, &qword_10016B278, &qword_100113A20);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000741F8()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for AppHeroModel(0) + 64) + 8))
  {
    static String.Encoding.utf8.getter();
    v5 = String.data(using:allowLossyConversion:)();
    v7 = v6;
    (*(v2 + 8))(v4, v1);
    if (v7 >> 60 != 15)
    {
      v8 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v19[0] = 0;
      v10 = [v8 JSONObjectWithData:isa options:0 error:v19];

      if (v10)
      {
        v11 = v19[0];
        _bridgeAnyObjectToAny(_:)();
        sub_10003DCC8(v5, v7);
        swift_unknownObjectRelease();
        sub_100002BE4(&qword_10016DB28, &unk_1001142C0);
        if (swift_dynamicCast())
        {
          return v18[1];
        }
      }

      else
      {
        v13 = v19[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10003DCC8(v5, v7);
      }
    }
  }

  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006B0C(v14, qword_100182048);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "There wasn an error serializing the artwork JSON", v17, 2u);
  }

  return 0;
}

uint64_t sub_100074508(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v8 = sub_1000741F8();
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  if (!*(v8 + 16) || (v10 = sub_10006889C(a1, a2), (v11 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_1000076F0(*(v9 + 56) + 32 * v10, v23);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006B0C(v16, qword_100182048);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, a4, v19, 2u);
    }

    return 0;
  }

  if (!v21 && v22 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006B0C(v12, qword_100182048);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, a3, v15, 2u);
    }

    return 0;
  }

  return sub_10003F724(v21, v22);
}

unint64_t sub_100074768(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x70756B636F6CLL;
      break;
    case 3:
      result = 0x4970756F53746F68;
      break;
    case 4:
      result = 0x726574614D657375;
      break;
    case 5:
      result = 0x4D747865746E6F63;
      break;
    case 6:
      result = 0x6575676573;
      break;
    case 7:
      result = 0x6C6562616CLL;
      break;
    case 8:
      result = 1701667182;
      break;
    case 9:
      result = 0x656E696C676174;
      break;
    case 10:
      result = 0x63416F546C6C6163;
      break;
    case 11:
      result = 0x74756F6B61657262;
      break;
    case 12:
      result = 0x6B726F77747261;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void sub_10007492C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = sub_100002BE4(&qword_10016D978, &qword_1001140B8);
  __chkstk_darwin(v52);
  v4 = v49 - v3;
  v5 = sub_100002BE4(&qword_10016D970, &qword_1001140B0);
  __chkstk_darwin(v5);
  v7 = v49 - v6;
  v55 = sub_100002BE4(&qword_10016DA80, &unk_100114180);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = v49 - v8;
  v10 = type metadata accessor for AppHeroModel(0);
  v11 = __chkstk_darwin(v10);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 20);
  v15 = type metadata accessor for ImpressionMetrics();
  v16 = *(*(v15 - 8) + 56);
  v61 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = *(v10 + 36);
  v18 = type metadata accessor for Models.Menu();
  v19 = *(*(v18 - 8) + 56);
  v60 = v17;
  v19(&v13[v17], 1, 1, v18);
  v20 = *(v10 + 40);
  v57 = v13;
  v21 = &v13[v20];
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v59 = &v13[v20];
  sub_10001FD78(&v62, &v13[v20], &qword_10016A248, &qword_100114390);
  v22 = a1[3];
  v56 = a1;
  sub_10000524C(a1, v22);
  sub_100075694();
  v54 = v9;
  v23 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v58 = v23;
    v25 = v57;
    sub_1000052E4(v56);
LABEL_4:
    sub_100009908(v25 + v61, &qword_10016D970, &qword_1001140B0);

    sub_100009908(v25 + v60, &qword_10016D978, &qword_1001140B8);
    sub_100009908(v59, &qword_10016A230, &unk_10010F030);

    return;
  }

  v24 = v4;
  v50 = v10;
  sub_100002BE4(&qword_10016A238, &qword_100114380);
  v65 = 0;
  sub_100012C48(&qword_10016DA90, &qword_10016A238, &qword_100114380, &protocol conformance descriptor for CodeAnyHashable<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v63;
  v27 = v57;
  *v57 = v62;
  v27[1] = v26;
  *(v27 + 4) = v64;
  LOBYTE(v62) = 1;
  sub_1000756E8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10001FD78(v7, v27 + v61, &qword_10016D970, &qword_1001140B0);
  sub_100002BE4(&qword_10016DAA8, &qword_100114190);
  v65 = 2;
  sub_100075820();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v50;
  v29 = (v27 + v50[6]);
  v30 = *(&v62 + 1);
  *v29 = v62;
  v29[1] = v30;
  v49[0] = v30;
  sub_100002BE4(&qword_10016DAC8, &qword_100114198);
  v65 = 3;
  sub_10007597C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = (v27 + v28[7]);
  v32 = *(&v62 + 1);
  *v31 = v62;
  v31[1] = v32;
  LOBYTE(v62) = 4;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v49[1] = v32;
  *(v27 + v28[8]) = v33 & 1;
  LOBYTE(v62) = 5;
  sub_100075AD8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10001FD78(v24, v27 + v60, &qword_10016D978, &qword_1001140B8);
  sub_100002BE4(&qword_10016A230, &unk_10010F030);
  v65 = 6;
  sub_100075C58();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10001FD78(&v62, v59, &qword_10016A230, &unk_10010F030);
  sub_100002BE4(&qword_10016B2F8, &qword_1001141A0);
  v65 = 7;
  sub_100038CC0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = (v27 + v28[11]);
  v35 = *(&v62 + 1);
  *v34 = v62;
  v34[1] = v35;
  v65 = 8;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v58 = 0;
  v36 = (v27 + v28[12]);
  v37 = *(&v62 + 1);
  *v36 = v62;
  v36[1] = v37;
  v65 = 9;
  v38 = v58;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v58 = v38;
  if (v38)
  {
    (*(v53 + 8))(v54, v55);
    sub_1000052E4(v56);
    v25 = v57;
    sub_100009908(v57, &qword_10016A238, &qword_100114380);
    goto LABEL_4;
  }

  v39 = (v57 + v50[13]);
  v40 = *(&v62 + 1);
  *v39 = v62;
  v39[1] = v40;
  v65 = 10;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v58 = 0;
  v41 = (v57 + v50[14]);
  v42 = *(&v62 + 1);
  *v41 = v62;
  v41[1] = v42;
  v65 = 11;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v58 = 0;
  v43 = (v57 + v50[15]);
  v44 = *(&v62 + 1);
  *v43 = v62;
  v43[1] = v44;
  v65 = 12;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v58 = 0;
  v45 = (v57 + v50[16]);
  v46 = *(&v62 + 1);
  *v45 = v62;
  v45[1] = v46;
  v65 = 13;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v58 = 0;
  v47 = v50[17];
  (*(v53 + 8))(v54, v55);
  v48 = v57;
  *(v57 + v47) = v62;
  sub_100075D08(v48, v51);
  sub_1000052E4(v56);
  sub_100075D6C(v48);
}

uint64_t sub_1000753AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100076020(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000753E0(uint64_t a1)
{
  v2 = sub_100075694();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007541C(uint64_t a1)
{
  v2 = sub_100075694();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100075458@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000C178(v2 + *(a1 + 40), v6, &qword_10016A230, &unk_10010F030);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1000754B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016D978, &qword_1001140B8);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_10000C178(v2 + *(a1 + 36), &v9 - v6, &qword_10016D978, &qword_1001140B8);
  return sub_10001D504(v7, a2, &unk_10016DA18, &qword_1001140E8);
}

uint64_t sub_10007558C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016D970, &qword_1001140B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_10000C178(v2 + *(a1 + 20), &v9 - v6, &qword_10016D970, &qword_1001140B0);
  return sub_10001D504(v7, a2, &qword_10016A198, &qword_10010EF20);
}

unint64_t sub_100075694()
{
  result = qword_10016DA88;
  if (!qword_10016DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DA88);
  }

  return result;
}

unint64_t sub_1000756E8()
{
  result = qword_10016DA98;
  if (!qword_10016DA98)
  {
    sub_10000459C(&qword_10016D970, &qword_1001140B0);
    sub_10007576C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DA98);
  }

  return result;
}

unint64_t sub_10007576C()
{
  result = qword_10016DAA0;
  if (!qword_10016DAA0)
  {
    sub_10000459C(&qword_10016A198, &qword_10010EF20);
    sub_100075C10(&qword_10016A268, &type metadata accessor for ImpressionMetrics, &protocol conformance descriptor for ImpressionMetrics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAA0);
  }

  return result;
}

unint64_t sub_100075820()
{
  result = qword_10016DAB0;
  if (!qword_10016DAB0)
  {
    sub_10000459C(&qword_10016DAA8, &qword_100114190);
    sub_1000758A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAB0);
  }

  return result;
}

unint64_t sub_1000758A4()
{
  result = qword_10016DAB8;
  if (!qword_10016DAB8)
  {
    sub_10000459C(&qword_10016D9F8, &qword_1001140D8);
    sub_100075928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAB8);
  }

  return result;
}

unint64_t sub_100075928()
{
  result = qword_10016DAC0;
  if (!qword_10016DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAC0);
  }

  return result;
}

unint64_t sub_10007597C()
{
  result = qword_10016DAD0;
  if (!qword_10016DAD0)
  {
    sub_10000459C(&qword_10016DAC8, &qword_100114198);
    sub_100075A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAD0);
  }

  return result;
}

unint64_t sub_100075A00()
{
  result = qword_10016DAD8;
  if (!qword_10016DAD8)
  {
    sub_10000459C(&qword_10016DA08, &qword_1001140E0);
    sub_100075A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAD8);
  }

  return result;
}

unint64_t sub_100075A84()
{
  result = qword_10016DAE0;
  if (!qword_10016DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAE0);
  }

  return result;
}

unint64_t sub_100075AD8()
{
  result = qword_10016DAE8;
  if (!qword_10016DAE8)
  {
    sub_10000459C(&qword_10016D978, &qword_1001140B8);
    sub_100075B5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAE8);
  }

  return result;
}

unint64_t sub_100075B5C()
{
  result = qword_10016DAF0;
  if (!qword_10016DAF0)
  {
    sub_10000459C(&unk_10016DA18, &qword_1001140E8);
    sub_100075C10(&qword_10016DAF8, &type metadata accessor for Models.Menu, &protocol conformance descriptor for Models.Menu);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DAF0);
  }

  return result;
}

uint64_t sub_100075C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100075C58()
{
  result = qword_10016DB00;
  if (!qword_10016DB00)
  {
    sub_10000459C(&qword_10016A230, &unk_10010F030);
    sub_100012C48(&qword_10016DB08, &unk_10016A1D0, &qword_10010EF30, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DB00);
  }

  return result;
}

uint64_t sub_100075D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppHeroModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100075D6C(uint64_t a1)
{
  v2 = type metadata accessor for AppHeroModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppHeroModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppHeroModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100075F1C()
{
  result = qword_10016DB10;
  if (!qword_10016DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DB10);
  }

  return result;
}

unint64_t sub_100075F74()
{
  result = qword_10016DB18;
  if (!qword_10016DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DB18);
  }

  return result;
}

unint64_t sub_100075FCC()
{
  result = qword_10016DB20;
  if (!qword_10016DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DB20);
  }

  return result;
}

uint64_t sub_100076020(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010011D5D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70756B636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4970756F53746F68 && a2 == 0xEB000000006F666ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726574614D657375 && a2 == 0xEF72756C426C6169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656E696C676174 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x63416F546C6C6163 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x74756F6B61657262 && a2 == 0xEC000000657A6953 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010011E5D0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1000764A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100076574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppTextComponentModel(uint64_t a1)
{
  result = qword_10016DB88;
  if (!qword_10016DB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100076670(uint64_t a1)
{
  sub_10001EA88();
  if (v1 <= 0x3F)
  {
    sub_10001EB04(319);
    if (v2 <= 0x3F)
    {
      sub_100076714(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100076714(uint64_t a1)
{
  if (!qword_10016A1C8)
  {
    sub_10000459C(&unk_10016A1D0, &qword_10010EF30);
    v1 = type metadata accessor for DiscardOnError();
    if (!v2)
    {
      atomic_store(v1, &qword_10016A1C8);
    }
  }
}

uint64_t sub_100076778@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  __chkstk_darwin(v3);
  v5 = &v29 - v4;
  v6 = sub_100002BE4(&qword_10016DBD0, &qword_100114388);
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for AppTextComponentModel(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 20);
  v14 = type metadata accessor for ImpressionMetrics();
  v15 = *(*(v14 - 8) + 56);
  v36 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = *(v9 + 28);
  v34 = v12;
  v17 = &v12[v16];
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_10001FD78(&v37, v17, &qword_10016A248, &qword_100114390);
  v18 = a1[3];
  v35 = a1;
  sub_10000524C(a1, v18);
  sub_100076F18();
  v19 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    v20 = v36;
    sub_1000052E4(v35);
    sub_100009908(v34 + v20, &qword_10016A118, &unk_10010EEF0);
    return sub_100009908(v17, &qword_10016A230, &unk_10010F030);
  }

  else
  {
    v33 = v3;
    sub_100002BE4(&qword_10016A238, &qword_100114380);
    v40 = 0;
    sub_100012C48(&qword_10016DA90, &qword_10016A238, &qword_100114380, &protocol conformance descriptor for CodeAnyHashable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v38;
    v22 = v34;
    *v34 = v37;
    *(v22 + 16) = v21;
    *(v22 + 32) = v39;
    LOBYTE(v37) = 1;
    sub_100012C48(&qword_10016DBE0, &qword_10016A118, &unk_10010EEF0, &protocol conformance descriptor for CodeByExpressibleByJSON<A>);
    v23 = v5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v31;
    sub_10001FD78(v23, v22 + v36, &qword_10016A118, &unk_10010EEF0);
    LOBYTE(v37) = 2;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = (v22 + *(v9 + 24));
    *v26 = v25;
    v26[1] = v27;
    sub_100002BE4(&qword_10016A230, &unk_10010F030);
    v40 = 3;
    sub_100075C58();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v24 + 8))(v8, v32);
    sub_10001FD78(&v37, v17, &qword_10016A230, &unk_10010F030);
    sub_100076F6C(v22, v30);
    sub_1000052E4(v35);
    return sub_100076FD0(v22);
  }
}

unint64_t sub_100076C90()
{
  v1 = 25705;
  v2 = 1954047348;
  if (*v0 != 2)
  {
    v2 = 0x6575676573;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100076CF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100077144(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100076D20(uint64_t a1)
{
  v2 = sub_100076F18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100076D5C(uint64_t a1)
{
  v2 = sub_100076F18();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100076D98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000C178(v2 + *(a1 + 28), v6, &qword_10016A230, &unk_10010F030);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_100076E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_10000C178(v2 + *(a1 + 20), &v9 - v6, &qword_10016A118, &unk_10010EEF0);
  return sub_1000200DC(v7, a2);
}

unint64_t sub_100076EC0()
{
  result = qword_10016DBC8;
  if (!qword_10016DBC8)
  {
    type metadata accessor for AppTextComponentModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DBC8);
  }

  return result;
}

unint64_t sub_100076F18()
{
  result = qword_10016DBD8;
  if (!qword_10016DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DBD8);
  }

  return result;
}

uint64_t sub_100076F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppTextComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100076FD0(uint64_t a1)
{
  v2 = type metadata accessor for AppTextComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100077040()
{
  result = qword_10016DBE8;
  if (!qword_10016DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DBE8);
  }

  return result;
}

unint64_t sub_100077098()
{
  result = qword_10016DBF0;
  if (!qword_10016DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DBF0);
  }

  return result;
}

unint64_t sub_1000770F0()
{
  result = qword_10016DBF8;
  if (!qword_10016DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DBF8);
  }

  return result;
}

uint64_t sub_100077144(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010011D5D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000772A4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000772C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
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

uint64_t sub_10007731C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_100077378(void *result, int a2)
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

uint64_t sub_1000773BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007748C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AsyncARViewWrapper(uint64_t a1)
{
  result = qword_10016DC58;
  if (!qword_10016DC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100077590(uint64_t a1)
{
  type metadata accessor for Device();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DeviceProvider(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DeviceModelParameters(319);
      if (v3 <= 0x3F)
      {
        sub_100077684(319, &qword_10016DC68, &type metadata for LoadingState);
        if (v4 <= 0x3F)
        {
          sub_100077684(319, &qword_10016DC70, &type metadata for Double);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100077684(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL sub_100077714(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }

    return v3 > 3;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      return v3 == 3;
    }

    return v3 > 3;
  }

  return v3 == 2;
}

uint64_t sub_100077790@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for AsyncARViewWrapper(0);
  v4 = *(v3 - 8);
  v30 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v6 = v5;
  v7 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_10016DCB0, &qword_100114590);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = (&v28 - v9);
  v11 = sub_100002BE4(&qword_10016DCB8, &qword_100114598);
  v12 = *(v11 - 8);
  v32 = v11;
  v33 = v12;
  __chkstk_darwin(v11);
  v35 = &v28 - v13;
  *v10 = static Alignment.center.getter();
  v10[1] = v14;
  v15 = sub_100002BE4(&qword_10016DCC0, &qword_1001145A0);
  sub_100077BB4(v2, v10 + *(v15 + 44));
  sub_100079E40(v2, v7);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v31 = v6;
  v17 = swift_allocObject();
  sub_100079EA8(v7, v17 + v16);
  v18 = (v10 + *(v8 + 36));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v18 = &unk_1001145B0;
  v18[1] = v17;
  sub_100079E40(v2, v7);
  v19 = swift_allocObject();
  sub_100079EA8(v7, v19 + v16);
  v28 = type metadata accessor for Device();
  v20 = sub_10007A058();
  v21 = sub_10007AE74(&qword_10016B020, &type metadata accessor for Device, &protocol conformance descriptor for Device);
  v22 = v29;
  View.onChange<A>(of:initial:_:)();

  sub_100009908(v10, &qword_10016DCB0, &qword_100114590);
  v36 = *(v2 + *(v30 + 40));
  sub_100002BE4(&qword_10016DCE8, &qword_1001145C0);
  State.wrappedValue.getter();
  v23 = v39;
  sub_100079E40(v2, v7);
  v24 = swift_allocObject();
  sub_100079EA8(v7, v24 + v16);
  *&v36 = v22;
  *(&v36 + 1) = v28;
  v37 = v20;
  v38 = v21;
  swift_getOpaqueTypeConformance2();
  sub_10007A2F0();
  v25 = v35;
  v26 = v32;
  View.onChange<A>(of:initial:_:)();

  sub_10007A344(v23);
  return (*(v33 + 8))(v25, v26);
}

uint64_t sub_100077BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v90 = sub_100002BE4(&qword_10016DD08, &qword_1001145E0);
  __chkstk_darwin(v90);
  v80 = &v80 - v3;
  v93 = sub_100002BE4(&qword_10016DD10, &qword_1001145E8);
  __chkstk_darwin(v93);
  v89 = &v80 - v4;
  v85 = sub_100002BE4(&qword_10016DD18, &qword_1001145F0);
  __chkstk_darwin(v85);
  v88 = (&v80 - v5);
  v92 = sub_100002BE4(&qword_10016DD20, &qword_1001145F8);
  __chkstk_darwin(v92);
  v87 = &v80 - v6;
  v7 = sub_100002BE4(&qword_10016DD28, &qword_100114600);
  __chkstk_darwin(v7);
  v9 = &v80 - v8;
  v81 = sub_100002BE4(&qword_10016DD30, &qword_100114608);
  __chkstk_darwin(v81);
  v11 = &v80 - v10;
  v82 = sub_100002BE4(&qword_10016DD38, &qword_100114610);
  __chkstk_darwin(v82);
  v13 = &v80 - v12;
  v83 = sub_100002BE4(&qword_10016DD40, &qword_100114618);
  __chkstk_darwin(v83);
  v15 = &v80 - v14;
  v86 = sub_100002BE4(&qword_10016DD48, &qword_100114620);
  v16 = __chkstk_darwin(v86);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v84 = &v80 - v19;
  v20 = type metadata accessor for AsyncARViewWrapper(0);
  v21 = a1;
  v135 = *(a1 + v20[8]);
  sub_100002BE4(&qword_10016DCE8, &qword_1001145C0);
  State.wrappedValue.getter();
  v22 = v124;
  if (v124 < 3)
  {
    ProgressView<>.init<>()();
    static UnitPoint.center.getter();
    v23 = &v9[*(v7 + 36)];
    __asm { FMOV            V2.2D, #1.5 }

    *v23 = _Q2;
    *(v23 + 2) = v29;
    *(v23 + 3) = v30;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10001D504(v9, v11, &qword_10016DD28, &qword_100114600);
    v31 = &v11[*(v81 + 36)];
    v32 = v140;
    *(v31 + 4) = v139;
    *(v31 + 5) = v32;
    *(v31 + 6) = v141;
    v33 = v136;
    *v31 = v135;
    *(v31 + 1) = v33;
    v34 = v138;
    *(v31 + 2) = v137;
    *(v31 + 3) = v34;
    v35 = static Color.clear.getter();
    v36 = static Edge.Set.all.getter();
    sub_10001D504(v11, v13, &qword_10016DD30, &qword_100114608);
    v37 = &v13[*(v82 + 36)];
    *v37 = v35;
    v37[8] = v36;
    v38 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    sub_10001D504(v13, v15, &qword_10016DD38, &qword_100114610);
    v40 = &v15[*(v83 + 36)];
    *v40 = KeyPath;
    v40[1] = v38;
    sub_10001D504(v15, v18, &qword_10016DD40, &qword_100114618);
    v41 = &v18[*(v86 + 36)];
    *v41 = sub_1000789E4;
    v41[1] = 0;
    v41[2] = 0;
    v41[3] = 0;
    v42 = &qword_10016DD48;
    v43 = &qword_100114620;
    v44 = v18;
    v45 = v84;
    sub_10001D504(v44, v84, &qword_10016DD48, &qword_100114620);
    sub_10000C178(v45, v88, &qword_10016DD48, &qword_100114620);
    swift_storeEnumTagMultiPayload();
    sub_100002BE4(&qword_10016DD98, &qword_100114640);
    sub_10007A6AC();
    sub_10007A9EC();
    v46 = v87;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v46, v89, &qword_10016DD20, &qword_1001145F8);
    swift_storeEnumTagMultiPayload();
    sub_10007A620();
    sub_10007AC74();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v46, &qword_10016DD20, &qword_1001145F8);
    v47 = v45;
LABEL_7:
    v69 = v42;
    v70 = v43;
    return sub_100009908(v47, v69, v70);
  }

  v48 = v80;
  v49 = v88;
  v50 = v89;
  v51 = v90;
  if (v124 != 3)
  {
    v57 = type metadata accessor for Device();
    (*(*(v57 - 8) + 16))(v48, v21, v57);
    v58 = *(v21 + v20[5]);
    v59 = *(v21 + v20[7]);
    v60 = type metadata accessor for ARViewRepresentable(0);
    *(v48 + v60[5]) = v58;
    *(v48 + v60[6]) = v59;
    *(v48 + v60[7]) = v22;
    v61 = (v48 + *(sub_100002BE4(&qword_10016DD50, &qword_100114628) + 36));
    *v61 = sub_1000789C4;
    v61[1] = 0;
    v61[2] = 0;
    v61[3] = 0;
    v62 = (v21 + v20[9]);
    v64 = v62[1];
    *&v135 = *v62;
    v63 = v135;
    *(&v135 + 1) = v64;

    sub_100002BE4(&qword_10016DCF8, &qword_100118900);
    State.wrappedValue.getter();
    v65 = v124;
    *(v48 + *(sub_100002BE4(&qword_10016DD58, &unk_100114630) + 36)) = v65;
    v66 = static Animation.easeInOut(duration:)();
    *&v135 = v63;
    *(&v135 + 1) = v64;
    State.wrappedValue.getter();
    v67 = v124;
    v68 = (v48 + *(v51 + 36));
    *v68 = v66;
    v68[1] = v67;
    v42 = &qword_10016DD08;
    v43 = &qword_1001145E0;
    sub_10000C178(v48, v50, &qword_10016DD08, &qword_1001145E0);
    swift_storeEnumTagMultiPayload();
    sub_10007A620();
    sub_10007AC74();
    _ConditionalContent<>.init(storage:)();
    v47 = v48;
    goto LABEL_7;
  }

  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui)
  {
    v53 = static HorizontalAlignment.center.getter();
    LOBYTE(v109) = 0;
    sub_100078768(&v135);
    v104 = v137;
    v105 = v138;
    v106 = v139;
    v102 = v135;
    v103 = v136;
    v107[2] = v137;
    v107[3] = v138;
    v108 = v139;
    v107[0] = v135;
    v107[1] = v136;
    sub_10000C178(&v102, &v124, &qword_10016DE10, &qword_100114670);
    sub_100009908(v107, &qword_10016DE10, &qword_100114670);
    *(&v101[1] + 7) = v103;
    *(&v101[2] + 7) = v104;
    *(&v101[3] + 7) = v105;
    *(&v101[4] + 7) = v106;
    *(v101 + 7) = v102;
    v54 = v109;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v55 = static Color.clear.getter();
    v56 = static Edge.Set.all.getter();
    *(&v125[1] + 1) = v101[1];
    *(&v125[2] + 1) = v101[2];
    *&v124 = v53;
    *(&v124 + 1) = 0x4028000000000000;
    LOBYTE(v125[0]) = v54;
    *(&v125[3] + 1) = v101[3];
    v125[4] = *(&v101[3] + 15);
    *(v125 + 1) = v101[0];
    *&v126 = sub_1000789A4;
    *(&v126 + 1) = 0;
    v127 = 0uLL;
    v132 = v98;
    v133 = v99;
    v134[0] = v100;
    v128 = v94;
    v129 = v95;
    v130 = v96;
    v131 = v97;
    *&v134[1] = v55;
    BYTE8(v134[1]) = v56;
    sub_10007AEC8(&v124);
  }

  else
  {
    sub_10007AEBC(&v124);
  }

  v121 = v132;
  v122 = v133;
  v123[0] = v134[0];
  *(v123 + 10) = *(v134 + 10);
  v117 = v128;
  v118 = v129;
  v119 = v130;
  v120 = v131;
  v113 = v125[3];
  v114 = v125[4];
  v115 = v126;
  v116 = v127;
  v109 = v124;
  v110 = v125[0];
  v111 = v125[1];
  v112 = v125[2];
  sub_100002BE4(&qword_10016DDA8, &qword_100114648);
  sub_10007AA78();
  _ConditionalContent<>.init(storage:)();
  v71 = v148;
  v49[12] = v147;
  v49[13] = v71;
  v49[14] = v149[0];
  *(v49 + 234) = *(v149 + 10);
  v72 = v144;
  v49[8] = v143;
  v49[9] = v72;
  v73 = v146;
  v49[10] = v145;
  v49[11] = v73;
  v74 = v140;
  v49[4] = v139;
  v49[5] = v74;
  v75 = v142;
  v49[6] = v141;
  v49[7] = v75;
  v76 = v136;
  *v49 = v135;
  v49[1] = v76;
  v77 = v138;
  v49[2] = v137;
  v49[3] = v77;
  swift_storeEnumTagMultiPayload();
  sub_10000C178(&v135, &v124, &qword_10016DD98, &qword_100114640);
  sub_100002BE4(&qword_10016DD98, &qword_100114640);
  sub_10007A6AC();
  sub_10007A9EC();
  v78 = v87;
  _ConditionalContent<>.init(storage:)();
  sub_10000C178(v78, v50, &qword_10016DD20, &qword_1001145F8);
  swift_storeEnumTagMultiPayload();
  sub_10007A620();
  sub_10007AC74();
  _ConditionalContent<>.init(storage:)();
  sub_100009908(&v135, &qword_10016DD98, &qword_100114640);
  v47 = v78;
  v69 = &qword_10016DD20;
  v70 = &qword_1001145F8;
  return sub_100009908(v47, v69, v70);
}

double sub_100078768@<D0>(uint64_t a1@<X8>)
{
  v24 = Image.init(systemName:)();
  v23 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v21 = static Color.orange.getter();
  v20 = swift_getKeyPath();
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.caption.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10001297C(v2, v4, v6 & 1);

  static Color.secondary.getter();
  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_10001297C(v7, v9, v11 & 1);

  *a1 = v24;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v23;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;
  *(a1 + 56) = v16 & 1;
  *(a1 + 64) = v18;

  sub_100003AE4(v12, v14, v16 & 1);

  sub_10001297C(v12, v14, v16 & 1);

  return result;
}

void sub_100078A04(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100168E80 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_1001820A8);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_100078AFC()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100078BA8;

  return sub_100078CE4();
}

uint64_t sub_100078BA8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007B054, v1, v0);
}

uint64_t sub_100078CE4()
{
  v1[21] = v0;
  v2 = type metadata accessor for ContinuousClock();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[25] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[26] = v4;
  v1[27] = v3;

  return _swift_task_switch(sub_100078DD8, v4, v3);
}

uint64_t sub_100078DD8()
{
  v1 = v0[21];
  v2 = (v1 + *(type metadata accessor for AsyncARViewWrapper(0) + 32));
  v3 = *v2;
  v0[28] = *v2;
  v4 = v2[1];
  v0[5] = v3;
  v0[29] = v4;
  v0[6] = v4;
  v0[15] = 1;
  v0[30] = sub_100002BE4(&qword_10016DCE8, &qword_1001145C0);
  State.wrappedValue.setter();
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_100078EE0;
  v6 = v0[21];

  return sub_10008B280(v6);
}

uint64_t sub_100078EE0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 256) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return _swift_task_switch(sub_100079008, v4, v3);
}

uint64_t sub_100079008()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[28];
  if (v1)
  {

    v0[13] = v3;
    v0[14] = v2;
    v0[20] = v1;
    State.wrappedValue.setter();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[7] = v3;
    v0[8] = v2;
    v0[16] = 2;
    State.wrappedValue.setter();
    v6 = swift_task_alloc();
    v0[33] = v6;
    *v6 = v0;
    v6[1] = sub_10007913C;

    return sub_1000BD234();
  }
}

uint64_t sub_10007913C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 272) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return _swift_task_switch(sub_100079264, v4, v3);
}

uint64_t sub_100079264()
{
  v15 = v0;
  if (v0[34])
  {
    static Clock<>.continuous.getter();
    v1 = swift_task_alloc();
    v0[35] = v1;
    *v1 = v0;
    v1[1] = sub_100079548;

    return sub_100105428(50000000000000000, 0, 0, 0, 1);
  }

  else
  {

    sub_10007A5BC();
    swift_allocError();
    swift_willThrow();
    if (qword_100168E80 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006B0C(v3, qword_1001820A8);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = sub_100006B44(v8, v9, &v14);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to load device model: %s", v6, 0xCu);
      sub_1000052E4(v7);
    }

    v12 = v0[28];
    v11 = v0[29];
    v0[9] = v12;
    v0[10] = v11;
    v0[17] = 3;
    sub_10007A610(v12);

    State.wrappedValue.setter();

    sub_10007A344(v12);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100079548()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  v3 = v2[27];
  v4 = v2[26];
  if (v0)
  {
    v5 = sub_100079770;
  }

  else
  {
    v5 = sub_1000796D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000796D0()
{
  v1 = v0[34];
  v2 = v0[29];
  v3 = v0[28];

  v0[11] = v3;
  v0[12] = v2;
  v0[19] = v1;
  State.wrappedValue.setter();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100079770()
{
  v14 = v0;

  if (qword_100168E80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_1001820A8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100006B44(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to load device model: %s", v4, 0xCu);
    sub_1000052E4(v5);
  }

  v10 = v0[28];
  v9 = v0[29];
  v0[9] = v10;
  v0[10] = v9;
  v0[17] = 3;
  sub_10007A610(v10);

  State.wrappedValue.setter();

  sub_10007A344(v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100079984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AsyncARViewWrapper(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_100079E40(a3, v7);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_100079EA8(v7, v14 + v13);
  sub_1000EE5F8(0, 0, v10, &unk_1001145D0, v14);
}

uint64_t sub_100079B3C()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100079BE8;

  return sub_100078CE4();
}

uint64_t sub_100079BE8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000285C8, v1, v0);
}

uint64_t sub_100079D24(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();
}

void sub_100079DB8(double a1)
{
  type metadata accessor for AsyncARViewWrapper(0);
  sub_100002BE4(&qword_10016DCF8, &qword_100118900);
  State.wrappedValue.setter();
}

uint64_t sub_100079E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncARViewWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncARViewWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079F0C()
{
  type metadata accessor for AsyncARViewWrapper(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_100078AFC();
}

uint64_t sub_100079FD8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AsyncARViewWrapper(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100079984(a1, a2, v6);
}

unint64_t sub_10007A058()
{
  result = qword_10016DCC8;
  if (!qword_10016DCC8)
  {
    sub_10000459C(&qword_10016DCB0, &qword_100114590);
    sub_100012C48(&qword_10016DCD0, &qword_10016DCD8, &qword_1001145B8, &protocol conformance descriptor for ZStack<A>);
    sub_10007AE74(&qword_10016DCE0, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DCC8);
  }

  return result;
}

uint64_t sub_10007A140()
{
  v1 = type metadata accessor for AsyncARViewWrapper(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for Device();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  if (*(v0 + v3 + *(v1 + 32)) >= 4uLL)
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007A270(uint64_t a1, unint64_t *a2)
{
  v5 = *(type metadata accessor for AsyncARViewWrapper(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100079D24(a1, a2, v6);
}

unint64_t sub_10007A2F0()
{
  result = qword_10016DCF0;
  if (!qword_10016DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DCF0);
  }

  return result;
}

unint64_t sub_10007A344(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_10007A394()
{
  v1 = type metadata accessor for AsyncARViewWrapper(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for Device();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  if (*(v0 + v3 + *(v1 + 32)) >= 4uLL)
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007A4CC()
{
  type metadata accessor for AsyncARViewWrapper(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_100079B3C();
}

unint64_t sub_10007A5BC()
{
  result = qword_10016DD00;
  if (!qword_10016DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD00);
  }

  return result;
}

unint64_t sub_10007A610(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_10007A620()
{
  result = qword_10016DD60;
  if (!qword_10016DD60)
  {
    sub_10000459C(&qword_10016DD20, &qword_1001145F8);
    sub_10007A6AC();
    sub_10007A9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD60);
  }

  return result;
}

unint64_t sub_10007A6AC()
{
  result = qword_10016DD68;
  if (!qword_10016DD68)
  {
    sub_10000459C(&qword_10016DD48, &qword_100114620);
    sub_10007A738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD68);
  }

  return result;
}

unint64_t sub_10007A738()
{
  result = qword_10016DD70;
  if (!qword_10016DD70)
  {
    sub_10000459C(&qword_10016DD40, &qword_100114618);
    sub_10007A7F0();
    sub_100012C48(&qword_10016A068, &qword_10016A070, &qword_10010EC90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD70);
  }

  return result;
}

unint64_t sub_10007A7F0()
{
  result = qword_10016DD78;
  if (!qword_10016DD78)
  {
    sub_10000459C(&qword_10016DD38, &qword_100114610);
    sub_10007A8A8();
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD78);
  }

  return result;
}

unint64_t sub_10007A8A8()
{
  result = qword_10016DD80;
  if (!qword_10016DD80)
  {
    sub_10000459C(&qword_10016DD30, &qword_100114608);
    sub_10007A934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD80);
  }

  return result;
}

unint64_t sub_10007A934()
{
  result = qword_10016DD88;
  if (!qword_10016DD88)
  {
    sub_10000459C(&qword_10016DD28, &qword_100114600);
    sub_100012C48(&qword_100169F58, &qword_100169F30, &qword_10010EB30, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD88);
  }

  return result;
}

unint64_t sub_10007A9EC()
{
  result = qword_10016DD90;
  if (!qword_10016DD90)
  {
    sub_10000459C(&qword_10016DD98, &qword_100114640);
    sub_10007AA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DD90);
  }

  return result;
}

unint64_t sub_10007AA78()
{
  result = qword_10016DDA0;
  if (!qword_10016DDA0)
  {
    sub_10000459C(&qword_10016DDA8, &qword_100114648);
    sub_10007AB30();
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DDA0);
  }

  return result;
}

unint64_t sub_10007AB30()
{
  result = qword_10016DDB0;
  if (!qword_10016DDB0)
  {
    sub_10000459C(&qword_10016DDB8, &qword_100114650);
    sub_10007ABBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DDB0);
  }

  return result;
}

unint64_t sub_10007ABBC()
{
  result = qword_10016DDC0;
  if (!qword_10016DDC0)
  {
    sub_10000459C(&qword_10016DDC8, &qword_100114658);
    sub_100012C48(&qword_10016DDD0, &qword_10016DDD8, &qword_100114660, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DDC0);
  }

  return result;
}

unint64_t sub_10007AC74()
{
  result = qword_10016DDE0;
  if (!qword_10016DDE0)
  {
    sub_10000459C(&qword_10016DD08, &qword_1001145E0);
    sub_10007AD2C();
    sub_100012C48(&qword_10016DE00, &qword_10016DE08, &qword_100114668, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DDE0);
  }

  return result;
}

unint64_t sub_10007AD2C()
{
  result = qword_10016DDE8;
  if (!qword_10016DDE8)
  {
    sub_10000459C(&qword_10016DD58, &unk_100114630);
    sub_10007ADB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DDE8);
  }

  return result;
}

unint64_t sub_10007ADB8()
{
  result = qword_10016DDF0;
  if (!qword_10016DDF0)
  {
    sub_10000459C(&qword_10016DD50, &qword_100114628);
    sub_10007AE74(&qword_10016DDF8, type metadata accessor for ARViewRepresentable, &unk_100114A24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DDF0);
  }

  return result;
}

uint64_t sub_10007AE74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007AEF8()
{
  sub_10000459C(&qword_10016DCB8, &qword_100114598);
  sub_10000459C(&qword_10016DCB0, &qword_100114590);
  type metadata accessor for Device();
  sub_10007A058();
  sub_10007AE74(&qword_10016B020, &type metadata accessor for Device, &protocol conformance descriptor for Device);
  swift_getOpaqueTypeConformance2();
  sub_10007A2F0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10007AFF8()
{
  result = qword_10016DE18;
  if (!qword_10016DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016DE18);
  }

  return result;
}

uint64_t sub_10007B058()
{
  swift_getKeyPath();
  sub_10007B6FC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10007B0CC(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10007B6FC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10007B1D0()
{
  swift_getKeyPath();
  sub_10007B6FC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10007B244(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;
}

uint64_t sub_10007B280()
{
  swift_getKeyPath();
  sub_10007B6FC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10007B2F4(uint64_t a1)
{
  if (*(v1 + 32) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10007B6FC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *sub_10007B3F8(uint64_t a1)
{
  v1[3] = 0;
  type metadata accessor for GuestUserSessionModel(0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = 0;
  v4 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  v5 = type metadata accessor for GuestUserHandoverService();
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + v4, 1, 1, v5);
  ObservationRegistrar.init()();
  v1[4] = v3;
  ObservationRegistrar.init()();
  v1[2] = a1;
  return v1;
}

uint64_t sub_10007B504()
{

  v1 = OBJC_IVAR____TtC17AppleVisionProApp24AirplayReceiverMainModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AirplayReceiverMainModel(uint64_t a1)
{
  result = qword_10016DE50;
  if (!qword_10016DE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007B60C(uint64_t a1)
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

uint64_t sub_10007B6C0()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

unint64_t sub_10007B6FC()
{
  result = qword_10016F280;
  if (!qword_10016F280)
  {
    type metadata accessor for AirplayReceiverMainModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F280);
  }

  return result;
}

uint64_t sub_10007B764()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_10007B7A0(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_100002BE4(&qword_10016E1A0, &qword_100114D18);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ARView.RenderOptions();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_10007DA7C(&qword_10016E1A8, &type metadata accessor for ARView.RenderOptions, &protocol conformance descriptor for ARView.RenderOptions);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_10007DA7C(&qword_10016E1B0, &type metadata accessor for ARView.RenderOptions, &protocol conformance descriptor for ARView.RenderOptions);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_10001D504(v7, v27, &qword_10016E1A0, &qword_100114D18);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_10007BAA4(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_100002BE4(&qword_10016E188, &qword_100114B78);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ARView.DebugOptions();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_10007DA7C(&qword_10016E180, &type metadata accessor for ARView.DebugOptions, &protocol conformance descriptor for ARView.DebugOptions);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_10007DA7C(&qword_10016E190, &type metadata accessor for ARView.DebugOptions, &protocol conformance descriptor for ARView.DebugOptions);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_10001D504(v7, v27, &qword_10016E188, &qword_100114B78);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

double sub_10007BDA8()
{
  v1 = *(v0 + *(type metadata accessor for ARViewRepresentable(0) + 24));
  swift_getKeyPath();
  sub_10007DA7C(&qword_10016CC90, type metadata accessor for DeviceModelParameters, &unk_100112B40);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = __sincosf_stret((v1[5] * 0.017453) * 0.5);
  v3 = vmulq_n_f32(xmmword_100114910, v2.__sinval);
  v3.i32[3] = LODWORD(v2.__cosval);
  v18 = v3;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = __sincosf_stret((v1[6] * 0.017453) * 0.5);
  v17 = vmulq_n_f32(xmmword_100114920, v4.__sinval);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = __sincosf_stret((v1[7] * 0.017453) * 0.5);
  v6 = vmulq_n_f32(xmmword_100114930, v5.__sinval);
  v6.i32[3] = LODWORD(v5.__cosval);
  v7 = vnegq_f32(v6);
  v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
  v9 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v6, v7, 8uLL), *v17.f32, 1), vextq_s8(v8, v8, 8uLL), v17.f32[0]);
  v10 = vrev64q_s32(v6);
  v10.i32[0] = v7.i32[1];
  v10.i32[3] = v7.i32[2];
  v11 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v6, v4.__cosval), v10, v17, 2), v9);
  v12 = vnegq_f32(v18);
  v13 = vtrn2q_s32(v18, vtrn1q_s32(v18, v12));
  v14 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v18, v12, 8uLL), *v11.f32, 1), vextq_s8(v13, v13, 8uLL), v11.f32[0]);
  v15 = vrev64q_s32(v18);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  *&result = vaddq_f32(v14, vmlaq_laneq_f32(vmulq_laneq_f32(v18, v11, 3), v15, v11, 2)).u64[0];
  return result;
}

uint64_t sub_10007BFB0(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v57 = type metadata accessor for Entity.ComponentSet();
  *&v60 = *(v57 - 8);
  __chkstk_darwin(v57);
  v52 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for OrthographicCameraComponent();
  v55 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ARView.RenderOptions();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v48 - v10;
  v12 = type metadata accessor for ARView.Environment.Background();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for ARView.CameraMode();
  __chkstk_darwin(v13);
  (*(v15 + 104))(v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ARView.CameraMode.nonAR(_:));
  v16 = objc_allocWithZone(type metadata accessor for ARView());
  v17 = ARView.init(frame:cameraMode:automaticallyConfigureSession:)();
  v18 = [objc_opt_self() clearColor];
  static ARView.Environment.Background.color(_:)();

  v19 = dispatch thunk of ARView.environment.modify();
  ARView.Environment.background.setter();
  v19(v62, 0);
  static ARView.RenderOptions.disableAREnvironmentLighting.getter();
  v20 = ARView.renderOptions.modify();
  sub_10007B7A0(v11, v9);
  v21 = *(v6 + 8);
  v21(v9, v5);
  v21(v11, v5);
  v20(v62, 0);
  static ARView.RenderOptions.disableDepthOfField.getter();
  v22 = ARView.renderOptions.modify();
  sub_10007B7A0(v11, v9);
  v21(v9, v5);
  v21(v11, v5);
  v22(v62, 0);
  static ARView.RenderOptions.disableCameraGrain.getter();
  v58 = v17;
  v23 = ARView.renderOptions.modify();
  sub_10007B7A0(v11, v9);
  v21(v9, v5);
  v21(v11, v5);
  v23(v62, 0);
  static ARView.RenderOptions.disableGroundingShadows.getter();
  v24 = ARView.renderOptions.modify();
  sub_10007B7A0(v11, v9);
  v21(v9, v5);
  v21(v11, v5);
  v24(v62, 0);
  v25 = type metadata accessor for AnchorEntity();
  sub_100002BE4(&qword_10016E198, &qword_100114B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001119B0;
  v51 = type metadata accessor for ARViewRepresentable(0);
  v27 = *(v2 + *(v51 + 24));
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC17AppleVisionProApp21DeviceModelParameters___observationRegistrar;
  v62[0] = v27;
  sub_10007DA7C(&qword_10016CC90, type metadata accessor for DeviceModelParameters, &unk_100112B40);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(inited + 32) = v27[12];
  swift_getKeyPath();
  v62[0] = v27;
  v48[4] = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(inited + 36) = v27[13];
  swift_getKeyPath();
  v62[0] = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(inited + 40) = v27[14];
  sub_10007D9F8(inited);
  v54 = v29;
  swift_setDeallocating();
  v30 = AnchorEntity.__allocating_init(world:)();
  v31 = type metadata accessor for Entity();
  swift_allocObject();
  v32 = Entity.init()();
  OrthographicCameraComponent.init()();
  v33 = v52;
  dispatch thunk of Entity.components.getter();
  Entity.ComponentSet.set<A>(_:)();
  v34 = *(v60 + 8);
  *&v60 = v60 + 8;
  v49 = v34;
  v34(v33, v57);
  HasTransform.position.getter();
  v48[2] = v31;
  HasTransform.look(at:from:upVector:relativeTo:)();
  v48[3] = v25;
  HasHierarchy.addChild(_:preservingWorldTransform:)();
  dispatch thunk of ARView.scene.getter();

  dispatch thunk of Scene.addAnchor(_:)();

  v48[1] = sub_100002BE4(&qword_10016E178, &qword_100114A80);
  UIViewRepresentableContext.coordinator.getter();
  *(v62[0] + 32) = v30;
  *&v54 = v30;

  swift_getKeyPath();
  v62[0] = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OrthographicCameraComponent.scale.setter();
  swift_getKeyPath();
  v62[0] = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OrthographicCameraComponent.far.setter();
  swift_getKeyPath();
  v62[0] = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OrthographicCameraComponent.near.setter();
  v53 = v32;
  dispatch thunk of Entity.components.getter();
  Entity.ComponentSet.set<A>(_:)();
  v49(v33, v57);
  if (*(v50 + *(v51 + 28)))
  {

    v35 = Entity.clone(recursive:)();

LABEL_5:
    swift_getKeyPath();
    v62[0] = v27;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v37 = (v27 + 11);
    vld1q_dup_f32(v37);
    HasTransform.scale.setter();
    sub_10007BDA8();
    HasTransform.orientation.setter();
    swift_getKeyPath();
    v62[0] = v27;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LODWORD(v38) = v27[8];
    v60 = v38;
    swift_getKeyPath();
    v62[0] = v27;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v39 = v60;
    DWORD1(v39) = v27[9];
    v60 = v39;
    swift_getKeyPath();
    v62[0] = v27;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = AnchorEntity.__allocating_init(world:)();
    HasHierarchy.addChild(_:preservingWorldTransform:)();
    v41 = v58;
    dispatch thunk of ARView.scene.getter();

    dispatch thunk of Scene.addAnchor(_:)();

    UIViewRepresentableContext.coordinator.getter();
    *(v62[0] + 16) = v35;

    UIViewRepresentableContext.coordinator.getter();

    (*(v55 + 8))(v59, v61);
    *(v62[0] + 40) = v40;

    return v41;
  }

  v36 = sub_1000BD63C();
  if (v36)
  {
    v35 = v36;
    goto LABEL_5;
  }

  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100006B0C(v43, qword_100181FA0);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v41 = v58;
  if (v46)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Failed loading Vision product 3D model in fallback.", v47, 2u);
  }

  else
  {
  }

  (*(v55 + 8))(v59, v61);
  return v41;
}

void sub_10007CBF4(uint64_t a1)
{
  v71.i64[0] = a1;
  v2 = sub_100002BE4(&qword_10016E170, &qword_100114A78);
  __chkstk_darwin(v2 - 8);
  v4 = &v65 - v3;
  v5 = type metadata accessor for ARView.DebugOptions();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v65 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v65 - v14;
  __chkstk_darwin(v13);
  v17 = &v65 - v16;
  sub_100002BE4(&qword_10016E178, &qword_100114A80);
  UIViewRepresentableContext.coordinator.getter();
  v18 = *(v72[0] + 16);

  if (v18)
  {
    v70.i64[0] = v18;
    *&v66 = type metadata accessor for ARViewRepresentable(0);
    v19 = *(v66 + 24);
    *&v67 = v1;
    v20 = *(v1 + v19);
    swift_getKeyPath();
    v21 = OBJC_IVAR____TtC17AppleVisionProApp21DeviceModelParameters___observationRegistrar;
    v72[0] = v20;
    v68 = sub_10007DA7C(&qword_10016CC90, type metadata accessor for DeviceModelParameters, &unk_100112B40);
    v69 = v21;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v20 + 105) == 1)
    {
      static ARView.DebugOptions.showStatistics.getter();
      v22 = dispatch thunk of ARView.debugOptions.modify();
      sub_10007BAA4(v17, v15);
      v23 = *(v6 + 8);
      v23(v15, v5);
      v23(v17, v5);
      v22(v72, 0);
    }

    else
    {
      static ARView.DebugOptions.showStatistics.getter();
      v71.i64[0] = dispatch thunk of ARView.debugOptions.modify();
      (*(v6 + 16))(v17);
      sub_10007DA7C(&qword_10016E180, &type metadata accessor for ARView.DebugOptions, &protocol conformance descriptor for ARView.DebugOptions);
      dispatch thunk of SetAlgebra.intersection(_:)();
      if (dispatch thunk of SetAlgebra.isEmpty.getter())
      {
        v28 = *(v6 + 8);
        v28(v9, v5);
        v28(v12, v5);
        v29 = 1;
      }

      else
      {
        dispatch thunk of SetAlgebra.subtract(_:)();
        (*(v6 + 8))(v12, v5);
        (*(v6 + 32))(v4, v9, v5);
        v29 = 0;
      }

      (*(v6 + 56))(v4, v29, 1, v5);
      sub_10007D950(v4);
      (v71.i64[0])(v72, 0);
    }

    v30 = *(v67 + *(v66 + 20));
    swift_getKeyPath();
    v72[0] = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = -(v30 * *(v20 + 72));
    swift_getKeyPath();
    v72[0] = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = *(v20 + 76);
    v33 = v32 * 0.017453;
    if (v31 < (v32 * 0.017453))
    {
      v33 = v31;
    }

    v34 = -(v32 * 0.017453);
    if (v33 >= v34)
    {
      v34 = v33;
    }

    v36 = __sincosf_stret(v34 * 0.5);
    v35.f32[0] = v36.__cosval;
    v71 = v35;
    v67 = xmmword_100114910;
    v70 = vmulq_n_f32(xmmword_100114910, v36.__sinval);
    swift_getKeyPath();
    v72[0] = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v37 = __sincosf_stret((*(v20 + 20) * 0.017453) * 0.5);
    v38 = vmulq_n_f32(v67, v37.__sinval);
    v38.i32[3] = LODWORD(v37.__cosval);
    v67 = v38;
    swift_getKeyPath();
    v72[0] = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = __sincosf_stret((*(v20 + 24) * 0.017453) * 0.5);
    *&v39 = v40.__cosval;
    v66 = v39;
    v65 = vmulq_n_f32(xmmword_100114920, v40.__sinval);
    swift_getKeyPath();
    v72[0] = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v41 = __sincosf_stret((*(v20 + 28) * 0.017453) * 0.5);
    v42 = vmulq_n_f32(xmmword_100114930, v41.__sinval);
    v42.i32[3] = LODWORD(v41.__cosval);
    v43 = vnegq_f32(v42);
    v44 = vtrn2q_s32(v42, vtrn1q_s32(v42, v43));
    v45 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v42, v43, 8uLL), *v65.f32, 1), vextq_s8(v44, v44, 8uLL), v65.f32[0]);
    v46 = vrev64q_s32(v42);
    v46.i32[0] = v43.i32[1];
    v46.i32[3] = v43.i32[2];
    v47 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v42, *&v66), v46, v65, 2), v45);
    v48 = vnegq_f32(v67);
    v49 = vtrn2q_s32(v67, vtrn1q_s32(v67, v48));
    v50 = vrev64q_s32(v67);
    v50.i32[0] = v48.i32[1];
    v50.i32[3] = v48.i32[2];
    v51 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v67, v48, 8uLL), *v47.f32, 1), vextq_s8(v49, v49, 8uLL), v47.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v67, v47, 3), v50, v47, 2));
    v52 = vnegq_f32(v51);
    v53 = vtrn2q_s32(v51, vtrn1q_s32(v51, v52));
    v54 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v51, v52, 8uLL), *v70.f32, 1), vextq_s8(v53, v53, 8uLL), v70.f32[0]);
    v55 = vrev64q_s32(v51);
    v55.i32[0] = v52.i32[1];
    v55.i32[3] = v52.i32[2];
    v56 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v51, v71.f32[0]), v55, v70, 2), v54);
    v57 = vmulq_f32(v56, v56);
    v58 = vadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
    if (vaddv_f32(v58) == 0.0)
    {
      v59 = xmmword_100114940;
    }

    else
    {
      v60 = vadd_f32(v58, vdup_lane_s32(v58, 1)).u32[0];
      v61 = vrsqrte_f32(v60);
      v62 = vmul_f32(v61, vrsqrts_f32(v60, vmul_f32(v61, v61)));
      v59 = vmulq_n_f32(v56, vmul_f32(v62, vrsqrts_f32(v60, vmul_f32(v62, v62))).f32[0]);
    }

    v71 = v59;
    type metadata accessor for Entity();
    v63 = HasTransform.transform.modify();
    v64[1] = v71;
    v63(v72, 0);
  }

  else
  {
    if (qword_100168E28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006B0C(v24, qword_100181FA0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "No model entity found in coordinator", v27, 2u);
    }
  }
}

uint64_t sub_10007D3E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10007D46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007D53C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ARViewRepresentable(uint64_t a1)
{
  result = qword_10016E120;
  if (!qword_10016E120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007D640(uint64_t a1)
{
  type metadata accessor for Device();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DeviceModelParameters(319);
    if (v2 <= 0x3F)
    {
      sub_10007D6E4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10007D6E4(uint64_t a1)
{
  if (!qword_10016E130)
  {
    type metadata accessor for Entity();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10016E130);
    }
  }
}

double sub_10007D78C@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ARViewRepresentable.Coordinator();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *a1 = v2;
  return result;
}

uint64_t sub_10007D7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007DA7C(&qword_10016E168, type metadata accessor for ARViewRepresentable, &unk_100114994);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10007D85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007DA7C(&qword_10016E168, type metadata accessor for ARViewRepresentable, &unk_100114994);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10007D8F0(uint64_t a1)
{
  sub_10007DA7C(&qword_10016E168, type metadata accessor for ARViewRepresentable, &unk_100114994);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10007D950(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016E170, &qword_100114A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007D9F8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_10007DA7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10007DAC4()
{
  v0 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = static BundleIdentifierConstants.currentPrivacyVersion.getter();
  static UserDefaultUtilities.SharedConstants.privacyViewVersion.getter();
  v5 = String._bridgeToObjectiveC()();

  [v3 setInteger:v4 forKey:v5];

  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (v7)
  {
    type metadata accessor for AppDelegate(0);
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() currentNotificationCenter];
      [v10 setDelegate:v9];

      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v12 = static MainActor.shared.getter();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = &protocol witness table for MainActor;
      v13[4] = v9;
      sub_1000EE5F8(0, 0, v2, &unk_10011A290, v13);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10007DD1C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007DD5C()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  sub_100002BE4(&unk_100171500, &qword_10011A530);
  v2 = swift_task_alloc();
  v1[4] = v2;
  v3 = type metadata accessor for Storefront();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_10007DEB4;

  return static Storefront.current.getter(v2);
}

uint64_t sub_10007DEB4()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 88) = v3;
  *(v1 + 96) = v2;

  return _swift_task_switch(sub_10007DFF8, v3, v2);
}

uint64_t sub_10007DFF8()
{
  v20 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009908(v3, &unk_100171500, &qword_10011A530);
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006B0C(v4, qword_100182108);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v7 = 136315138;
      v9 = _typeName(_:qualified:)();
      v11 = sub_100006B44(v9, v10, &v19);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s Unable to determine users region based on App Store.", v7, 0xCu);
      sub_1000052E4(v8);
    }

    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_10007E2B8;

    return sub_10007E6BC();
  }

  else
  {
    v14 = v0[7];

    (*(v2 + 32))(v14, v3, v1);
    v15 = Storefront.countryCode.getter();
    v17 = sub_10007E45C(v15, v16);

    (*(v2 + 8))(v14, v1);

    v18 = v0[1];

    return v18(v17 & 1);
  }
}

uint64_t sub_10007E2B8(char a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return _swift_task_switch(sub_10007E3E0, v4, v3);
}

uint64_t sub_10007E3E0()
{

  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10007E45C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6164616E6143 && a2 == 0xE600000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x796E616D726547 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x6F4B206874756F53 && a2 == 0xEB00000000616572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 5128515 && a2 == 0xE300000000000000 || ((v6 = _stringCompareWithSmolCheck(_:_:expecting:)(), a1 == 5588292) ? (v7 = a2 == 0xE300000000000000) : (v7 = 0), !v7 ? (v8 = 0) : (v8 = 1), (v6 & 1) != 0 || (v8 & 1) != 0 || ((v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), a1 == 5394251) ? (v10 = a2 == 0xE300000000000000) : (v10 = 0), !v10 ? (v11 = 0) : (v11 = 1), (v9 & 1) != 0 || (v11 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 16707 && a2 == 0xE200000000000000 || ((v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), a1 == 17732) ? (v13 = a2 == 0xE200000000000000) : (v13 = 0), !v13 ? (v14 = 0) : (v14 = 1), (v12 & 1) != 0 || (v14 & 1) != 0 || ((v15 = _stringCompareWithSmolCheck(_:_:expecting:)(), a1 == 21067) ? (v16 = a2 == 0xE200000000000000) : (v16 = 0), !v16 ? (v17 = 0) : (v17 = 1), (v15 & 1) != 0 || (v17 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))))
  {

    return sub_10007EF2C();
  }

  else
  {

    return sub_10007F080();
  }
}

uint64_t sub_10007E6BC()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007E760, v3, v2);
}

uint64_t sub_10007E760()
{
  v57 = v1;
  v2 = v1;

  v3 = [objc_opt_self() currentEstimates];
  sub_10007F5D8();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_57;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &PINViewModel.ivar_lyt; v6; i = &PINViewModel.ivar_lyt)
  {
    v8 = 0;
    v9 = v4 & 0xC000000000000001;
    v54 = v4 & 0xFFFFFFFFFFFFFF8;
    v10 = &selRef_currentNotificationCenter;
    v53 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v9)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v54 + 16))
        {
          __break(1u);
          goto LABEL_67;
        }

        v11 = *(v4 + 8 * v8 + 32);
      }

      v0 = v11;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v55 = v8 + 1;
      v12 = [v11 v10[2]];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v14 == 0x6164616E6143 && v16 == 0xE600000000000000;
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v14 == 0x796E616D726547 && v16 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v14 == 0x6F4B206874756F53 && v16 == 0xEB00000000616572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v14 == 5128515 && v16 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v14 == 5588292 && v16 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v14 == 5394251 && v16 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v14 == 16707 && v16 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v14 == 17732 && v16 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v14 == 21067 && v16 == 0xE200000000000000)
        {

LABEL_50:
          if (i[468] == -1)
          {
LABEL_51:
            v30 = type metadata accessor for Logger();
            sub_100006B0C(v30, qword_100182108);
            v31 = Logger.logObject.getter();
            v32 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v56 = v34;
              *v33 = 136315138;
              v35 = _typeName(_:qualified:)();
              v37 = sub_100006B44(v35, v36, &v56);

              *(v33 + 4) = v37;
              _os_log_impl(&_mh_execute_header, v31, v32, "%s User is in a restricted location.", v33, 0xCu);
              sub_1000052E4(v34);
            }

            v38 = sub_10007EF2C();
            goto LABEL_54;
          }

LABEL_67:
          swift_once();
          goto LABEL_51;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_50;
        }

        if (i[468] != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_100006B0C(v19, qword_100182108);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v51 = v6;
          v22 = swift_slowAlloc();
          v52 = v2;
          v50 = swift_slowAlloc();
          v56 = v50;
          *v22 = 136315138;
          v23 = _typeName(_:qualified:)();
          v25 = v5;
          v26 = i;
          v27 = v4;
          v28 = v0;
          v29 = sub_100006B44(v23, v24, &v56);

          *(v22 + 4) = v29;
          v0 = v28;
          v4 = v27;
          i = v26;
          v5 = v25;
          _os_log_impl(&_mh_execute_header, v20, v21, "%s User is in a unrestricted location.", v22, 0xCu);
          sub_1000052E4(v50);
          v2 = v52;

          v6 = v51;
        }

        v10 = &selRef_currentNotificationCenter;
        v9 = v53;
        if (v5)
        {
          if (_CocoaArrayWrapper.endIndex.getter() == 1)
          {
LABEL_55:

            v38 = sub_10007F080();
LABEL_54:
            v39 = v38;

            goto LABEL_63;
          }
        }

        else if (*(v54 + 16) == 1)
        {
          goto LABEL_55;
        }
      }

      ++v8;
      if (v55 == v6)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_57:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_58:

  if (i[468] != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100006B0C(v40, qword_100182108);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v56 = v44;
    *v43 = 136315138;
    v45 = _typeName(_:qualified:)();
    v47 = sub_100006B44(v45, v46, &v56);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v41, v42, "%s Unable to determine users Regulatory domain.", v43, 0xCu);
    sub_1000052E4(v44);
  }

  v39 = sub_10007F1D4();
LABEL_63:
  v48 = *(v2 + 8);

  return v48(v39 & 1);
}

uint64_t sub_10007EF2C()
{
  swift_getObjectType();
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006B0C(v0, qword_100182108);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100006B44(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s User is in a restricted location.", v3, 0xCu);
    sub_1000052E4(v4);
  }

  return 1;
}

uint64_t sub_10007F080()
{
  swift_getObjectType();
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006B0C(v0, qword_100182108);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100006B44(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s User is in a unrestricted location.", v3, 0xCu);
    sub_1000052E4(v4);
  }

  return 0;
}

uint64_t sub_10007F1D4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100002BE4(&qword_10016E1C0, &unk_100114D30);
  __chkstk_darwin(v1 - 8);
  v3 = &v31 - v2;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.current.getter();
  Locale.region.getter();
  v8 = type metadata accessor for Locale.Region();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_100009908(v3, &qword_10016E1C0, &unk_100114D30);
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006B0C(v10, qword_100182108);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v31 = ObjectType;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = 136315138;
      v16 = _typeName(_:qualified:)();
      v18 = sub_100006B44(v16, v17, &v32);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s Unable to determine users region based on Locale.", v14, 0xCu);
      sub_1000052E4(v15);
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      v23 = _typeName(_:qualified:)();
      v25 = sub_100006B44(v23, v24, &v32);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s User is in a restricted location.", v21, 0xCu);
      sub_1000052E4(v22);
    }

    (*(v5 + 8))(v7, v4);
    v26 = 1;
  }

  else
  {
    v27 = Locale.Region.identifier.getter();
    v29 = v28;
    (*(v9 + 8))(v3, v8);
    v26 = sub_10007E45C(v27, v29);

    (*(v5 + 8))(v7, v4);
  }

  return v26 & 1;
}

unint64_t sub_10007F5D8()
{
  result = qword_10016E1B8;
  if (!qword_10016E1B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016E1B8);
  }

  return result;
}

uint64_t sub_10007F624(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 153) = a3;
  *(v3 + 160) = a1;
  *(v3 + 168) = a2;
  sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v4 = type metadata accessor for URL();
  *(v3 + 192) = v4;
  *(v3 + 200) = *(v4 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10007F744, 0, 0);
}

uint64_t sub_10007F744()
{
  v35 = v0;
  v1 = *(v0 + 153);
  if (*(v0 + 153))
  {
    if (v1 == 1)
    {
      v2 = [objc_opt_self() mainBundle];
      v3 = String._bridgeToObjectiveC()();
      v4 = String._bridgeToObjectiveC()();
      v5 = [v2 URLForResource:v3 withExtension:v4];

      if (v5)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        if (qword_100168E60 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_100006B0C(v6, qword_100182048);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v34[0] = v10;
          *v9 = 136315138;
          *(v9 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v34);
          _os_log_impl(&_mh_execute_header, v7, v8, "%s - Using JETPACK - Local Dev", v9, 0xCu);
          sub_1000052E4(v10);
        }

        (*(*(v0 + 200) + 32))(*(v0 + 160), *(v0 + 208), *(v0 + 192));
LABEL_22:

        v30 = *(v0 + 8);
LABEL_29:

        return v30();
      }

      if (qword_100168E60 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100006B0C(v31, qword_100182048);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v34[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v34);
        v23 = "%s - Unable to find a local jetpack in the bundle.";
        goto LABEL_27;
      }
    }

    else
    {
      v15 = *(v0 + 192);
      v16 = *(v0 + 200);
      v17 = *(v0 + 184);
      URL.init(string:)();
      if ((*(v16 + 48))(v17, 1, v15) != 1)
      {
        v24 = *(*(v0 + 200) + 32);
        v24(*(v0 + 224), *(v0 + 184), *(v0 + 192));
        if (qword_100168E60 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_100006B0C(v25, qword_100182048);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v34[0] = v29;
          *v28 = 136315138;
          *(v28 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v34);
          _os_log_impl(&_mh_execute_header, v26, v27, "%s - Using JETPACK - Staging", v28, 0xCu);
          sub_1000052E4(v29);
        }

        v24(*(v0 + 160), *(v0 + 224), *(v0 + 192));
        goto LABEL_22;
      }

      sub_100009908(*(v0 + 184), &qword_10016BA40, &qword_100110FC0);
      if (qword_100168E60 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100006B0C(v18, qword_100182048);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v34[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v34);
        v23 = "%s - Unable to construct Jetpack Staging URL";
LABEL_27:
        _os_log_impl(&_mh_execute_header, v19, v20, v23, v21, 0xCu);
        sub_1000052E4(v22);
      }
    }

    sub_100080DE4();
    swift_allocError();
    *v32 = v1;
    swift_willThrow();

    v30 = *(v0 + 8);
    goto LABEL_29;
  }

  v11 = Bag.amsBag.getter();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 stringForKey:v12];
  *(v0 + 232) = v13;
  swift_unknownObjectRelease();

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10007FEF8;
  v14 = swift_continuation_init();
  *(v0 + 136) = sub_100002BE4(&qword_10016E1D0, &qword_100114D68);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100080858;
  *(v0 + 104) = &unk_10015D2A0;
  *(v0 + 112) = v14;
  [v13 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10007FEF8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1000805FC;
  }

  else
  {
    v2 = sub_100080008;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100080008()
{
  v36 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 144);
  v5 = String.init(_:)(v4);
  URL.init(string:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009908(*(v0 + 176), &qword_10016BA40, &qword_100110FC0);
    p_ivar_lyt = &PINViewModel.ivar_lyt;
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006B0C(v7, qword_100182048);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      *v10 = 136315394;
      *(v10 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v35);
      *(v10 + 12) = 2080;
      v11 = sub_100006B44(v5._countAndFlagsBits, v5._object, v35);

      *(v10 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s - Unable to construct Jetpack URL from %s", v10, 0x16u);
      swift_arrayDestroy();
      p_ivar_lyt = (&PINViewModel + 16);
    }

    else
    {
    }

    sub_100080DE4();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();

    if (p_ivar_lyt[460] != -1)
    {
      swift_once();
    }

    sub_100006B0C(v7, qword_100182048);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35[0] = v30;
      *v28 = 136315394;
      *(v28 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v35);
      *(v28 + 12) = 2112;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v31;
      *v29 = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s Problem creating the Jetpack URL from the Bag%@", v28, 0x16u);
      sub_100009908(v29, &unk_100169C20, &unk_10010D6B0);

      sub_1000052E4(v30);
    }

    v32 = *(v0 + 232);
    swift_allocError();
    *v33 = 0;
    swift_willThrow();

    v24 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 216);
    v13 = *(v0 + 192);
    v14 = *(v0 + 200);
    v15 = *(v0 + 176);

    v16 = *(v14 + 32);
    v16(v12, v15, v13);
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006B0C(v17, qword_100182048);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 232);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, v35);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - Using JETPACK - Production", v22, 0xCu);
      sub_1000052E4(v23);
    }

    v16(*(v0 + 160), *(v0 + 216), *(v0 + 192));

    v24 = *(v0 + 8);
  }

  return v24();
}

uint64_t sub_1000805FC(uint64_t a1)
{
  v14 = v1;
  swift_willThrow();
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100182048);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_100006B44(0xD000000000000013, 0x8000000100114D30, &v13);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Problem creating the Jetpack URL from the Bag%@", v5, 0x16u);
    sub_100009908(v6, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v7);
  }

  v9 = *(v1 + 232);
  sub_100080DE4();
  swift_allocError();
  *v10 = 0;
  swift_willThrow();

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_100080858(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_10000524C((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    sub_100002BE4(&qword_10016BBA0, &qword_1001110E0);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_100080938(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6C61636F4CLL;
  if (v2 != 1)
  {
    v4 = 0x676E6967617453;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1685025360;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6C61636F4CLL;
  if (*a2 != 1)
  {
    v8 = 0x676E6967617453;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1685025360;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100080A2C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100080AC4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100080B48(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100080BDC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100080E50(*a1);
  *a2 = result;
  return result;
}

void sub_100080C0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C61636F4CLL;
  if (v2 != 1)
  {
    v5 = 0x676E6967617453;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1685025360;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100080C60@<X0>(uint64_t a2@<X8>)
{
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  v5 = &enum case for JetPackSigningPolicy.required(_:);
  if (has_internal_ui)
  {
    v6 = type metadata accessor for TetsuoJetpackInfo(0);
    if (*(v2 + *(v6 + 20)) && *(v2 + *(v6 + 20)) == 1)
    {

      v5 = &enum case for JetPackSigningPolicy.ignoreMissingButValidateIfProvided(_:);
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v7)
      {
        v5 = &enum case for JetPackSigningPolicy.ignoreMissingButValidateIfProvided(_:);
      }
    }
  }

  v8 = *v5;
  v9 = type metadata accessor for JetPackSigningPolicy();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2, v8, v9);
}

uint64_t type metadata accessor for TetsuoJetpackInfo(uint64_t a1)
{
  result = qword_10016E230;
  if (!qword_10016E230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100080DE4()
{
  result = qword_10016E1C8;
  if (!qword_10016E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E1C8);
  }

  return result;
}

unint64_t sub_100080E50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100159BE0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100080EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100080F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Bag();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_100081044(uint64_t a1)
{
  result = type metadata accessor for Bag();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000810CC()
{
  result = qword_10016E268;
  if (!qword_10016E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E268);
  }

  return result;
}

unint64_t sub_100081124()
{
  result = qword_10016E270;
  if (!qword_10016E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E270);
  }

  return result;
}

unint64_t sub_100081178()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081BA8(v1, v8);
  v9 = sub_100002BE4(&qword_10016C220, &qword_100112330);
  v10 = (*(*(v9 - 8) + 48))(v8, 7, v9);
  if (v10 > 3)
  {
    if (v10 > 5)
    {
      v19 = 0;
      v20 = 0xE000000000000000;
      if (v10 == 6)
      {
        _StringGuts.grow(_:)(52);
        v15 = "hatsNewInVisionOS&referrer=";
        v16 = 0xD000000000000032;
      }

      else
      {
        _StringGuts.grow(_:)(61);
        v15 = "9f35a1637fc30b/app.jetpack";
        v16 = 0xD00000000000003BLL;
      }
    }

    else
    {
      if (v10 == 4)
      {
        return 0xD000000000000055;
      }

      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v15 = "itCareVP&referrer=";
      v16 = 0xD000000000000035;
    }

    v17 = v15 | 0x8000000000000000;
    String.append(_:)(*&v16);
    v18._countAndFlagsBits = static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
    String.append(_:)(v18);

    return v19;
  }

  else if (v10 > 1)
  {
    if (v10 == 2)
    {
      return 0xD00000000000004BLL;
    }

    else
    {
      return 0xD000000000000055;
    }
  }

  else if (v10)
  {
    return 0xD00000000000004ALL;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    v11._countAndFlagsBits = 0xD000000000000047;
    v11._object = 0x800000010011EA20;
    String.append(_:)(v11);
    sub_100081C0C();
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13 = v19;
    (*(v3 + 8))(v5, v2);
    return v13;
  }
}

id sub_1000814F0()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v3 = result;
    URL._bridgeToObjectiveC()(v2);
    v5 = v4;
    sub_10000B7F4(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 openSensitiveURL:v5 withOptions:isa];

    sub_10004F388(0);
    v0[5] = &_s20TetsuoAnalyticsEventON;
    v0[6] = sub_1000250D8();
    *(v0 + 16) = 8;
    static AnalyticsCoordinator.submitEvent(_:payload:)();

    sub_1000052E4(v0 + 2);
    v7 = v0[1];

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100081630()
{
  v0 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v3 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  sub_100081178();
  URL.init(string:)();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100045318(v5);
    if (qword_100168E50 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006B0C(v13, qword_100182018);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "tried to open a url but destination url is nil", v16, 2u);
    }
  }

  else
  {
    v17 = *(v7 + 32);
    v17(v12, v5, v6);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
    (*(v7 + 16))(v10, v12, v6);
    v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    v17((v20 + v19), v10, v6);
    sub_1000EE5F8(0, 0, v2, &unk_100114EF8, v20);

    (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_1000819A8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100081A6C(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000FA04;

  return sub_1000814D0(a1, v6, v7, v1 + v5);
}

uint64_t type metadata accessor for ExternalLinkCoordinator.ExternalDestination(uint64_t a1)
{
  result = qword_10016E2F0;
  if (!qword_10016E2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100081BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100081C0C()
{
  result = qword_10016E278;
  if (!qword_10016E278)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E278);
  }

  return result;
}

uint64_t sub_100081C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C220, &qword_100112330);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 8)
  {
    return v5 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100081D04(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 7);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100002BE4(&qword_10016C220, &qword_100112330);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100081D94(uint64_t a1)
{
  sub_100081DEC();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_100081DEC()
{
  if (!qword_10016E300)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_10016E300);
    }
  }
}

uint64_t sub_100081E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100081F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TVStoreExtensionView(uint64_t a1)
{
  result = qword_10016E380;
  if (!qword_10016E380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100082034(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1000820B8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000820B8(uint64_t a1)
{
  if (!qword_10016E390)
  {
    sub_10000459C(&unk_10016E398, &qword_100117BA0);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &qword_10016E390);
    }
  }
}

void sub_100082150(uint64_t a1, uint64_t a2)
{
  _convertErrorToNSError(_:)();
  v3 = (a2 + *(type metadata accessor for TVStoreExtensionView(0) + 20));
  v4 = *v3;
  v5 = *(v3 + 2);
  v13 = v4;
  v14 = v5;
  sub_100002BE4(&qword_10016E3D8, &qword_100115028);
  Binding.wrappedValue.setter();
  if (qword_100168EB8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006B0C(v6, qword_100182150);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *&v13 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100006B44(0xD000000000000014, 0x8000000100114F20, &v13);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_100006B44(v10, v11, &v13);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Error launching TV app extension: %s", v9, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_100082348(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1000823B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = objc_opt_self();
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  sub_1000826C8(v2, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_100082828(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  aBlock[4] = sub_10008288C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100082348;
  aBlock[3] = &unk_10015D458;
  v11 = _Block_copy(aBlock);

  v12 = [v5 createTVAppExtensionViewControllerWithURL:v8 completionBlock:v11];
  _Block_release(v11);

  return v12;
}

uint64_t sub_100082540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082684(&qword_10016E3D0, &unk_100114F60);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000825C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082684(&qword_10016E3D0, &unk_100114F60);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100082640(uint64_t a1)
{
  sub_100082684(&qword_10016E3D0, &unk_100114F60);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100082684(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TVStoreExtensionView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000826C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVStoreExtensionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008272C()
{
  v1 = (type metadata accessor for TVStoreExtensionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100082828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVStoreExtensionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10008288C(uint64_t a1)
{
  v3 = *(type metadata accessor for TVStoreExtensionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100082150(a1, v4);
}

uint64_t sub_1000828FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100082928(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for MetricsPipeline();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100002BE4(&qword_10016E3E0, &unk_100115030);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = sub_100002BE4(&qword_10016AEC0, &unk_10010FF00);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_100082B14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for MetricsPipeline();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100002BE4(&qword_10016E3E0, &unk_100115030);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = sub_100002BE4(&qword_10016AEC0, &unk_10010FF00);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for TVPageView(uint64_t a1)
{
  result = qword_10016E440;
  if (!qword_10016E440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100082D38(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MetricsPipeline();
    if (v2 <= 0x3F)
    {
      sub_100082E6C(319, &qword_10016A6F0, &qword_10016A6F8, &unk_10010F740);
      if (v3 <= 0x3F)
      {
        sub_100082E6C(319, &qword_10016E450, &unk_10016E398, &qword_100117BA0);
        if (v4 <= 0x3F)
        {
          sub_100082E6C(319, &unk_10016E458, &qword_10016B420, &qword_100110790);
          if (v5 <= 0x3F)
          {
            sub_100082EC0(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100082E6C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000459C(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100082EC0(uint64_t a1)
{
  if (!qword_10016AF30)
  {
    type metadata accessor for DismissAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10016AF30);
    }
  }
}

uint64_t sub_100082F34@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016A568, &unk_10010F530);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TVPageView(0);
  sub_10000C178(v1 + *(v10 + 40), v9, &qword_10016A568, &unk_10010F530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10008313C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for TVPageView(0);
  v4 = v3 - 8;
  v30 = *(v3 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v3);
  v6 = type metadata accessor for TVStoreExtensionView(0);
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_10016E4A0, &qword_1001150A8);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 16))(v8, v2, v12);
  v13 = (v2 + *(v4 + 40));
  v14 = *v13;
  v28 = v13[1];
  v29 = v14;
  v34 = v14;
  v35 = v28;
  v27 = sub_100002BE4(&qword_10016E4A8, &unk_1001150B0);
  State.projectedValue.getter();
  v15 = v33;
  v16 = &v8[*(v6 + 20)];
  *v16 = v32;
  *(v16 + 2) = v15;
  sub_100002BE4(&qword_10016D6B0, &qword_100113AB0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_10010D3B0;
  static ToolbarPlacement.navigationBar.getter();
  sub_1000841BC(&qword_10016E3C8, type metadata accessor for TVStoreExtensionView, &unk_100114FD8);
  View.toolbarVisibility(_:for:)();

  sub_100083AA8(v8);
  LOBYTE(v8) = static Edge.Set.bottom.getter();
  v17 = static SafeAreaRegions.all.getter();
  v18 = &v11[*(sub_100002BE4(&qword_10016E4B0, &unk_1001150C0) + 36)];
  *v18 = v17;
  v18[8] = v8;
  sub_100083B04(v2, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v20 = swift_allocObject();
  sub_100083B6C(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v21 = &v11[*(sub_100002BE4(&qword_10016E4B8, &unk_1001150D0) + 36)];
  *v21 = sub_100083BD0;
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
  sub_100083B04(v2, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = swift_allocObject();
  sub_100083B6C(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v19);
  v23 = &v11[*(v9 + 36)];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = sub_100083BE8;
  *(v23 + 3) = v22;
  *&v32 = v29;
  *(&v32 + 1) = v28;
  State.wrappedValue.getter();
  v24 = v34;
  *&v32 = v34;
  sub_100083B04(v2, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  sub_100083B6C(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v19);
  sub_100002BE4(&unk_10016E398, &qword_100117BA0);
  sub_100083F98(&qword_10016E4C0, &qword_10016E4A0, &qword_1001150A8, sub_100083F68);
  sub_100084108();
  View.onChange<A>(of:initial:_:)();

  return sub_100084250(v11);
}

double sub_100083604()
{
  v0 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v11[-1] - v4;
  Date.init()();
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  type metadata accessor for TVPageView(0);
  sub_10000C178(v5, v3, &qword_10016B420, &qword_100110790);
  sub_100002BE4(&qword_10016E3E0, &unk_100115030);
  State.wrappedValue.setter();
  sub_1000842B8(v5);
  sub_10004F388(0);
  v11[3] = &_s20TetsuoAnalyticsEventON;
  v11[4] = sub_1000250D8();
  LOBYTE(v11[0]) = 12;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(v11);
  v7 = URL.absoluteString.getter();
  sub_10004B668(0.0, v7, v8, 0);

  return result;
}

uint64_t sub_1000837AC()
{
  v0 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  type metadata accessor for TVPageView(0);
  sub_100002BE4(&qword_10016E3E0, &unk_100115030);
  State.wrappedValue.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1000842B8(v2);
  }

  (*(v4 + 32))(v9, v2, v3);
  v11 = URL.absoluteString.getter();
  v13 = v12;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v15 = v14;
  v16 = *(v4 + 8);
  v16(v7, v3);
  sub_10004B668(v15, v11, v13, 0);

  return (v16)(v9, v3);
}

uint64_t sub_1000839C4(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DismissAction();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    sub_100082F34(v7);
    DismissAction.callAsFunction()();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_100083AA8(uint64_t a1)
{
  v2 = type metadata accessor for TVStoreExtensionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}