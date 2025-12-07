uint64_t sub_100036118(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_100036134(uint64_t a1, uint64_t a2, char a3)
{
  sub_100036860();
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10002ED78(a1, a2, a3, v6);
}

Swift::Int sub_1000361D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      Hasher._combine(_:)(0);
      return Hasher._finalize()();
    }

    v4 = 3;
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = 2;
LABEL_7:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_100036284(void *a1, int64_t a2, char a3)
{
  result = sub_10002EE5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000362A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100036860();
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v4 += 24;
      sub_10002CBE8(v6, v5, v7);
      sub_10002EF90(v8, v6, v5, v7);
      sub_10002349C(v8[0], v8[1], v9);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

void *sub_10003634C(uint64_t a1)
{
  v3 = type metadata accessor for RoutingSessionConfiguration.ItemType();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v50 = (v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v55 = v36 - v7;
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v36[1] = v1;
  v56 = _swiftEmptyArrayStorage;
  sub_100036798(0, v8, 0);
  v9 = v56;
  v10 = a1 + 56;
  v11 = _HashTable.startBucket.getter();
  v12 = 0;
  v46 = v4 + 88;
  v47 = v4 + 16;
  v45 = enum case for RoutingSessionConfiguration.ItemType.audioSession(_:);
  v39 = enum case for RoutingSessionConfiguration.ItemType.appSpecific(_:);
  v40 = (v4 + 96);
  v41 = v8;
  v43 = v3;
  v44 = (v4 + 8);
  v37 = enum case for RoutingSessionConfiguration.ItemType.standard(_:);
  v38 = a1 + 64;
  v48 = a1 + 56;
  v49 = a1;
  v42 = v4;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_29;
    }

    v54 = v9;
    v16 = *(a1 + 36);
    v51 = v12;
    v52 = v16;
    v17 = *(v4 + 16);
    v18 = v55;
    v17(v55, *(a1 + 48) + *(v4 + 72) * v11, v3);
    v19 = v50;
    v17(v50, v18, v3);
    v20 = (*(v4 + 88))(v19, v3);
    if (v20 == v45)
    {
      (*v40)(v19, v3);
      v53 = 0;
      v21 = 0;
      v22 = *v19;
      v9 = v54;
LABEL_12:
      v10 = v48;
      goto LABEL_15;
    }

    v9 = v54;
    if (v20 == v39)
    {
      (*v40)(v19, v3);
      v23 = v19;
      v22 = *v19;
      v53 = *(v23 + 1);
      v21 = 1;
      goto LABEL_12;
    }

    v10 = v48;
    if (v20 != v37)
    {
      goto LABEL_33;
    }

    v22 = 0;
    v53 = 0;
    v21 = 3;
LABEL_15:
    (*v44)(v55, v3);
    v56 = v9;
    v25 = v9[2];
    v24 = v9[3];
    if (v25 >= v24 >> 1)
    {
      sub_100036798((v24 > 1), v25 + 1, 1);
      v9 = v56;
    }

    v9[2] = v25 + 1;
    v26 = &v9[3 * v25];
    v27 = v53;
    v26[4] = v22;
    v26[5] = v27;
    *(v26 + 48) = v21;
    a1 = v49;
    v13 = 1 << *(v49 + 32);
    if (v11 >= v13)
    {
      goto LABEL_30;
    }

    v28 = *(v10 + 8 * v15);
    if ((v28 & (1 << v11)) == 0)
    {
      goto LABEL_31;
    }

    if (v52 != *(v49 + 36))
    {
      goto LABEL_32;
    }

    v29 = v28 & (-2 << (v11 & 0x3F));
    if (v29)
    {
      v13 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v14 = v51;
    }

    else
    {
      v30 = v15 << 6;
      v31 = v15 + 1;
      v32 = (v38 + 8 * v15);
      while (v31 < (v13 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          sub_10000A16C(v11, v52, 0);
          v13 = __clz(__rbit64(v33)) + v30;
          goto LABEL_26;
        }
      }

      sub_10000A16C(v11, v52, 0);
LABEL_26:
      v14 = v51;
    }

    v12 = v14 + 1;
    v11 = v13;
    v4 = v42;
    v3 = v43;
    if (v12 == v41)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

char *sub_100036798(char *a1, int64_t a2, char a3)
{
  result = sub_100035FA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t _s12mediaremoted14HostedItemTypeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      if (!a6)
      {
        return a1 == a4;
      }

      return 0;
    }

    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 0;
  }

  if (a3 != 2)
  {
    return a6 == 3 && !(a5 | a4);
  }

  if (a6 != 2)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100036860()
{
  result = qword_100524168;
  if (!qword_100524168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524168);
  }

  return result;
}

void sub_1000368B4(Swift::Int result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_41;
  }

  if (a5)
  {
    sub_100267434(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1002676F4();
      goto LABEL_41;
    }

    sub_10026785C(v11 + 1);
  }

  v13 = *v5;
  Hasher.init(_seed:)();
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      Hasher._combine(_:)(0);
      goto LABEL_16;
    }

    v14 = 3;
    goto LABEL_14;
  }

  if (a3)
  {
    v14 = 2;
LABEL_14:
    Hasher._combine(_:)(v14);
    String.hash(into:)();
    goto LABEL_16;
  }

  Hasher._combine(_:)(1uLL);
  Hasher._combine(_:)(result);
LABEL_16:
  v15 = Hasher._finalize()();
  v16 = v13 + 56;
  v17 = -1 << *(v13 + 32);
  a4 = v15 & ~v17;
  if (((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_41;
  }

  v18 = ~v17;
  v19 = *(v13 + 48);
  v21 = a3 == 3 && (a2 | result) == 0;
  while (1)
  {
    v22 = (v19 + 24 * a4);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v22 + 16);
    if (v25 <= 1)
    {
      break;
    }

    if (v25 == 2)
    {
      if (a3 == 2)
      {
        goto LABEL_35;
      }
    }

    else if (v21)
    {
      goto LABEL_40;
    }

LABEL_25:
    a4 = (a4 + 1) & v18;
    if (((*(v16 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (!v25)
  {
    if (!a3 && v23 == result)
    {
      goto LABEL_40;
    }

    goto LABEL_25;
  }

  if (a3 != 1)
  {
    goto LABEL_25;
  }

LABEL_35:
  v26 = v23 == result && v24 == a2;
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_40:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_41:
  v27 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v28 = *(v27 + 48) + 24 * a4;
  *v28 = result;
  *(v28 + 8) = a2;
  *(v28 + 16) = a3;
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v31;
  }
}

uint64_t sub_100036B00()
{
  v1 = v0;
  v2 = type metadata accessor for RoutingSessionConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RoutingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  v29 = v27;
  v30 = v28;
  v10._countAndFlagsBits = 60;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x746E656469202D20;
  v12._object = 0xEF203A7265696669;
  String.append(_:)(v12);
  String.append(_:)(*(v0 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier));
  v13._countAndFlagsBits = 0x656C646E7562202CLL;
  v13._object = 0xEA0000000000203ALL;
  String.append(_:)(v13);
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x203A65646F6D202CLL;
  v17._object = 0xE800000000000000;
  String.append(_:)(v17);
  v18 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_routingMode;
  swift_beginAccess();
  (*(v7 + 16))(v9, v1 + v18, v6);
  sub_100004930(&unk_100524C30, &type metadata accessor for RoutingMode, &protocol conformance descriptor for RoutingMode);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  (*(v7 + 8))(v9, v6);
  v20._countAndFlagsBits = 0x6769666E6F63202CLL;
  v20._object = 0xEA0000000000203ALL;
  String.append(_:)(v20);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v2);
  sub_100004930(&qword_100525F58, &type metadata accessor for RoutingSessionConfiguration, &protocol conformance descriptor for RoutingSessionConfiguration);
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  (*(v3 + 8))(v5, v2);
  v22._countAndFlagsBits = 0x7865746E6F63202CLL;
  v22._object = 0xEB00000000203A74;
  String.append(_:)(v22);

  v23._countAndFlagsBits = sub_100036EFC();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  return v29;
}

uint64_t sub_100036EFC()
{
  v1 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x203A6975202D20;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  if (*(v0 + 16))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._countAndFlagsBits = 0x646E61707865202CLL;
  v8._object = 0xEC000000203A6465;
  String.append(_:)(v8);

  v9 = Set.description.getter();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x656C62617473202CLL;
  v13._object = 0xEA0000000000203ALL;
  String.append(_:)(v13);
  if (*(v0 + 81))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v0 + 81))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  if (*(v0 + 40))
  {
    v19 = *(v0 + 64);
    v18 = *(v0 + 72);
    v21 = *(v0 + 48);
    v20 = *(v0 + 56);
    v22 = *(v0 + 80);

    sub_10026D0B8(v21, v20, v19, v18, v22);
    sub_1002856A4();
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    sub_1002485A4(v21, v20, v19, v18, v22);

    v24._countAndFlagsBits = 8236;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    v25 = 0x203A65646968;
    v1 = 0xE600000000000000;
  }

  else
  {
    v25 = 0;
  }

  v26 = v1;
  String.append(_:)(*&v25);

  v27._countAndFlagsBits = 0x203A776F6873;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  swift_beginAccess();

  v28 = Set.description.getter();
  v30 = v29;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 62;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  return 0;
}

uint64_t sub_100037240()
{
  v1 = v0;
  v2 = [v0 localizedTitle];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      return v4;
    }
  }

  v9 = [v1 collectionInfo];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v9;
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = kMRMediaRemoteNowPlayingCollectionInfoKeyCollectionType;
  v12 = kMRMediaRemoteNowPlayingCollectionInfoKeyCollectionType;
  sub_1001BC5A8(&qword_100523738, &unk_100457AF0);
  sub_100037570();
  AnyHashable.init<A>(_:)();
  if (!*(v11 + 16))
  {
    goto LABEL_23;
  }

  v13 = sub_10001BF64(v26);
  if ((v14 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_100020E0C(*(v11 + 56) + 32 * v13, &v27);
  sub_10001BF10(v26);

  if (!*(&v28 + 1))
  {
LABEL_25:
    sub_100037768(&v27);
    return 0;
  }

  if (swift_dynamicCast())
  {
    result = kMRMediaRemoteNowPlayingCollectionInfoCollectionTypeRadio;
    if (!kMRMediaRemoteNowPlayingCollectionInfoCollectionTypeRadio)
    {
      __break(1u);
      return result;
    }

    v16 = v26[0];
    v15 = v26[1];
    if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v17)
    {

LABEL_17:
      v19 = [v1 collectionInfo];
      if (!v19)
      {
LABEL_24:
        v27 = 0u;
        v28 = 0u;
        goto LABEL_25;
      }

      v20 = v19;
      v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = kMRMediaRemoteNowPlayingCollectionInfoKeyTitle;
      AnyHashable.init<A>(_:)();
      if (*(v21 + 16))
      {
        v23 = sub_10001BF64(v26);
        if (v24)
        {
          sub_100020E0C(*(v21 + 56) + 32 * v23, &v27);
          sub_10001BF10(v26);

          if (*(&v28 + 1))
          {
            if (swift_dynamicCast())
            {
              return v26[0];
            }

            return 0;
          }

          goto LABEL_25;
        }
      }

LABEL_23:

      sub_10001BF10(v26);
      goto LABEL_24;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_17;
    }
  }

  return 0;
}

void *sub_100037528()
{
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers);
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
    *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers) = &_swiftEmptyDictionarySingleton;
  }

  return v1;
}

unint64_t sub_100037570()
{
  result = qword_100523740;
  if (!qword_100523740)
  {
    sub_1001C2EC8(&qword_100523738, &unk_100457AF0);
    sub_10024C7D8(&qword_100523748, &unk_100457B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523740);
  }

  return result;
}

uint64_t sub_100037610(SEL *a1, uint64_t a2, uint64_t a3)
{
  v6 = [v3 *a1];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v13 = a2;
  *(&v13 + 1) = a3;
  AnyHashable.init<A>(_:)();
  if (!*(v8 + 16) || (v9 = sub_10001BF64(&v12), (v10 & 1) == 0))
  {

    sub_10001BF10(&v12);
LABEL_10:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_11;
  }

  sub_100020E0C(*(v8 + 56) + 32 * v9, &v13);
  sub_10001BF10(&v12);

  if (!*(&v14 + 1))
  {
LABEL_11:
    sub_100037768(&v13);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100037768(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_100522890, &qword_100450610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000377D0()
{
  v1 = v0;
  v2 = [v0 userInfo];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_10001BF64(v8), (v6 & 1) == 0))
  {

    sub_10001BF10(v8);
LABEL_8:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_9;
  }

  sub_100020E0C(*(v4 + 56) + 32 * v5, &v9);
  sub_10001BF10(v8);

  if (!*(&v10 + 1))
  {
LABEL_9:
    sub_100037768(&v9);
    return [v1 duration];
  }

  result = swift_dynamicCast();
  if (!result)
  {
    return [v1 duration];
  }

  return result;
}

uint64_t sub_100037908()
{
  if (*v0 == 0xD000000000000010 && 0x800000010043D9D0 == v0[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void sub_100037BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100037FDC(uint64_t a1)
{
  v2 = [*(a1 + 32) hearingAidName];
  if (v2 == *(a1 + 40))
  {
  }

  else
  {
    v8 = v2;
    v3 = [v2 isEqual:?];

    if ((v3 & 1) == 0)
    {
      v4 = MRLogCategoryMediaControl();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40);
        *buf = 134218242;
        v10 = v5;
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HearingAidHelper] <%p> setHearingAidName - value: %@", buf, 0x16u);
      }

      [*(a1 + 32) setHearingAidName:*(a1 + 40)];
      v7 = [*(a1 + 32) hearingAidDidChangeHandler];
      v7[2]();
    }
  }
}

MRDMediaUserState *__cdecl sub_1000387C8(id a1, ICMediaUserState *a2)
{
  v2 = a2;
  v3 = [[MRDMediaUserState alloc] initWithUserState:v2];

  return v3;
}

void sub_100038830(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
  }

  else
  {
    v16 = v3;
    v4 = [v3 isEqual:v2];

    if ((v4 & 1) == 0)
    {
      v5 = _MRLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionEligibilityMonitor] Eligibility status changed: %{public}@", buf, 0xCu);
      }

      if (*(a1 + 48))
      {
        v7 = _MRLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 48);
          *buf = 138543362;
          v18 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionEligibilityMonitor] \tHosting state reason: %{public}@", buf, 0xCu);
        }
      }

      if (*(a1 + 56))
      {
        v9 = _MRLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 56);
          *buf = 138543362;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionEligibilityMonitor] \tJoining state reason: %{public}@", buf, 0xCu);
        }
      }

      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [*(a1 + 32) differenceFrom:*(*(a1 + 40) + 8)];
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[MRDGroupSessionEligibilityMonitor] Eligibility changes: %@", buf, 0xCu);
      }

      v13 = [*(a1 + 32) copy];
      v14 = *(a1 + 40);
      v15 = *(v14 + 8);
      *(v14 + 8) = v13;

      [*(a1 + 40) _onQueue_notifyObservers:*(a1 + 32)];
    }
  }
}

uint64_t sub_100038AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001BC5A8(&qword_100526D60, &qword_1004589D0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = OBJC_IVAR____TtC12mediaremoted15RouteNormalizer____lazy_storage___mac;
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

uint64_t sub_100038D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100526D60, &qword_1004589D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100038E1C(id a1, MRAVOutputDevice *a2)
{
  v2 = [(MRAVOutputDevice *)a2 groupID];
  v3 = v2 != 0;

  return v3;
}

BOOL sub_100038E54(id a1, MRAVOutputDevice *a2)
{
  v2 = [(MRAVOutputDevice *)a2 airPlayGroupID];
  v3 = v2 != 0;

  return v3;
}

uint64_t sub_100038F14()
{
  _StringGuts.grow(_:)(30);

  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 40;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  String.append(_:)(v0[3]);
  v3._countAndFlagsBits = 0x646E7562202D2029;
  v3._object = 0xEC000000203A656CLL;
  String.append(_:)(v3);
  v4._countAndFlagsBits = (*(v0->_countAndFlagsBits + 144))();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A646970202CLL;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  (*(v0->_countAndFlagsBits + 168))();
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 60;
}

uint64_t sub_1000390B8(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_1001BC5A8(&qword_100524188, &qword_100455098);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for RoutingSession.Properties();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_100017F84(&qword_100524190, &type metadata accessor for RoutingSession.Properties, &protocol conformance descriptor for RoutingSession.Properties);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_100017F84(&qword_100524198, &type metadata accessor for RoutingSession.Properties, &protocol conformance descriptor for RoutingSession.Properties);
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
  sub_10003AEF0(v7, v27, &qword_100524188, &qword_100455098);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_1000393BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100031588(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100039510();
      goto LABEL_7;
    }

    sub_10032A6D0(v13, a3 & 1);
    v20 = sub_100031588(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for RoutingSessionServer.Client(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for HostedRoutingSessionSnapshot(0) - 8) + 72) * v10;

    return sub_10003974C(a1, v18);
  }

LABEL_13:
  sub_10032C5F0(v10, a2, a1, v16);
}

void *sub_100039510()
{
  v1 = v0;
  v2 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BC5A8(&qword_100526720, &qword_1004584E8);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_10002ADF8(*(v5 + 56) + v22, v4, type metadata accessor for HostedRoutingSessionSnapshot);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_10002AF68(v4, *(v7 + 56) + v22, type metadata accessor for HostedRoutingSessionSnapshot);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_10003974C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000397B4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100039818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v3 = sub_1001BC5A8(&qword_100523C08, &qword_100451AE0);
  __chkstk_darwin(v3 - 8);
  v135 = &v126 - v4;
  v140 = type metadata accessor for RoutingControls();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v146 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for Date();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v145 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v7 - 8);
  v136 = &v126 - v8;
  v9 = sub_1001BC5A8(&qword_100523C10, &qword_100451AE8);
  __chkstk_darwin(v9 - 8);
  v144 = &v126 - v10;
  v11 = type metadata accessor for RoutingItem();
  v12 = *(v11 - 8);
  v160 = v11;
  v161 = v12;
  v13 = __chkstk_darwin(v11);
  v132 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v141 = &v126 - v15;
  v129 = type metadata accessor for RoutingSession.Action.Kind();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v128 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for RoutingSession.Action();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v134 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for HostedRoutingItem(0);
  v155 = *(v158 - 1);
  v18 = __chkstk_darwin(v158);
  v159 = (&v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v22 = &v126 - v21;
  v23 = __chkstk_darwin(v20);
  v156 = &v126 - v24;
  v25 = __chkstk_darwin(v23);
  v157 = &v126 - v26;
  __chkstk_darwin(v25);
  v28 = &v126 - v27;
  v29 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  __chkstk_darwin(v29 - 8);
  v133 = &v126 - v30;
  v31 = type metadata accessor for RoutingSession.Properties();
  v152 = *(v31 - 8);
  v32 = __chkstk_darwin(v31);
  v142 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v151 = &v126 - v35;
  __chkstk_darwin(v34);
  v37 = &v126 - v36;
  v38 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  __chkstk_darwin(v38 - 8);
  v40 = &v126 - v39;
  v41 = type metadata accessor for HostedRoutingSession(0);
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = (&v126 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D9AC(a1, v40, &qword_100523620, &unk_1004511D0);
  v45 = *(v42 + 48);
  v150 = v41;
  if (v45(v40, 1, v41) == 1)
  {
    sub_1000038A4(a1, &qword_100523620, &unk_1004511D0);
    sub_1000038A4(v40, &qword_100523620, &unk_1004511D0);
    v46 = 1;
    v47 = v147;
    goto LABEL_75;
  }

  sub_100032E08(v40, v44, type metadata accessor for HostedRoutingSession);
  LOBYTE(v162) = 0;
  sub_100017F84(&qword_100523C20, &type metadata accessor for RoutingSession.Properties, &protocol conformance descriptor for RoutingSession.Properties);
  dispatch thunk of OptionSet.init(rawValue:)();
  v49 = *v44;
  v48 = v44[1];
  v55 = *v44 == 0x4C41434F4CLL;
  v143 = a1;
  v148 = v37;
  v149 = v31;
  v153 = v48;
  v154 = v44;
  v126 = v49;
  if ((!v55 || v48 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v158 = _swiftEmptyArrayStorage;
    v53 = v141;
    goto LABEL_51;
  }

  v51 = sub_10003AC60();
  v52 = v51[2];
  v53 = v141;
  v54 = v155;
  if (v52)
  {
    v31 = 0;
    a1 = 34816;
    do
    {
      v58 = v51[2];
      if (v31 >= v58)
      {
        goto LABEL_77;
      }

      sub_10003271C(v51 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v31, v28, type metadata accessor for HostedRoutingItem);
      v59 = v28 + v158[16];
      v60 = *v59;
      v61 = *(v59 + 8);
      v62 = *(v59 + 16);
      v63 = (v62 >> 8) & 6 | (v62 >> 7) & 1;
      if (v63 > 3)
      {
        if (v63 != 4 && v63 != 5)
        {
          goto LABEL_19;
        }

        v64 = v62 & 0xF97F;
      }

      else if (v63 <= 1)
      {
        if (v63)
        {
          goto LABEL_31;
        }

        v64 = *(v60 + 32);
        v65 = v60 + 16;
        v60 = *(v60 + 16);
        v61 = *(v65 + 8);
      }

      else
      {
        v64 = v62 & 0xF97F;
      }

      if (v64 >> 11 == 17)
      {
        v55 = v64 == 34816 && v61 == 0;
        if (v55 && v60 == 7 || v63 == 3)
        {
LABEL_31:

          v66 = v133;
          sub_100032E08(v28, v133, type metadata accessor for HostedRoutingItem);
          (*(v54 + 56))(v66, 0, 1, v158);
          sub_1000038A4(v66, &qword_100523C18, &qword_100451AF0);
          goto LABEL_33;
        }
      }

      else if (v63 == 3)
      {
        goto LABEL_31;
      }

LABEL_19:
      ++v31;
      sub_10002181C(v28, type metadata accessor for HostedRoutingItem);
    }

    while (v52 != v31);
  }

  v67 = v133;
  (*(v54 + 56))(v133, 1, 1, v158);
  sub_1000038A4(v67, &qword_100523C18, &qword_100451AF0);
  v68 = v142;
  static RoutingSession.Properties.supportsAudioSampling.getter();
  v69 = v151;
  sub_1000390B8(v151, v68);
  v70 = *(v152 + 8);
  v71 = v68;
  v72 = v149;
  v70(v71, v149);
  v70(v69, v72);
LABEL_33:
  v162 = v154[2];

  sub_100032CAC(v73, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
  v28 = v162;
  v31 = v162[2];
  if (v31)
  {
    v74 = 0;
    v51 = _swiftEmptyArrayStorage;
    a1 = v155;
    while (1)
    {
      v58 = *(v28 + 16);
      if (v74 >= v58)
      {
        break;
      }

      v75 = (*(a1 + 80) + 32) & ~*(a1 + 80);
      v76 = *(a1 + 72);
      v77 = v157;
      sub_10003271C(v28 + v75 + v76 * v74, v157, type metadata accessor for HostedRoutingItem);
      if ((*(v77 + v158[11]) & 8) != 0 && *(v77 + v158[9]) == 1)
      {
        sub_100032E08(v77, v156, type metadata accessor for HostedRoutingItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v162 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002A42C(0, v51[2] + 1, 1);
          v51 = v162;
        }

        v80 = v51[2];
        v79 = v51[3];
        if (v80 >= v79 >> 1)
        {
          sub_10002A42C((v79 > 1), v80 + 1, 1);
          v51 = v162;
        }

        v51[2] = v80 + 1;
        sub_100032E08(v156, v51 + v75 + v80 * v76, type metadata accessor for HostedRoutingItem);
        a1 = v155;
      }

      else
      {
        sub_10002181C(v77, type metadata accessor for HostedRoutingItem);
      }

      if (v31 == ++v74)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v50 = sub_100032F14((v58 > 1), v51, 1, v50, &qword_100524180, &qword_100455090, &type metadata accessor for RoutingSession.Action);
    goto LABEL_48;
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_46:

  v81 = v51[2];

  if (!v81)
  {
    v158 = _swiftEmptyArrayStorage;
    a1 = v143;
    v37 = v148;
    v31 = v149;
    goto LABEL_51;
  }

  static LocalizedStrings.RoutingSession.Action.shareAudio.getter();
  (*(v127 + 104))(v128, enum case for RoutingSession.Action.Kind.shareAudio(_:), v129);

  RoutingSession.Action.init(title:symbolName:kind:sessionIdentifier:)();
  v50 = sub_100032F14(0, 1, 1, _swiftEmptyArrayStorage, &qword_100524180, &qword_100455090, &type metadata accessor for RoutingSession.Action);
  v28 = *(v50 + 2);
  v58 = *(v50 + 3);
  v51 = (v28 + 1);
  a1 = v143;
  v31 = v149;
  if (v28 >= v58 >> 1)
  {
    goto LABEL_78;
  }

LABEL_48:
  v37 = v148;
  v82 = v131;
  v83 = v130;
  *(v50 + 2) = v51;
  v84 = *(v83 + 32);
  v83 += 32;
  v85 = (*(v83 + 48) + 32) & ~*(v83 + 48);
  v158 = v50;
  v84(v50 + v85 + *(v83 + 40) * v28, v134, v82);
LABEL_51:
  v86 = v150;
  if (*(v154 + v150[14]) == 1)
  {
    v87 = v142;
    static RoutingSession.Properties.limitedRouting.getter();
    v88 = v151;
    sub_1000390B8(v151, v87);
    v89 = *(v152 + 8);
    v89(v87, v31);
    v89(v88, v31);
    v86 = v150;
  }

  if (*(v154 + v86[15]) == 1)
  {
    v90 = v142;
    static RoutingSession.Properties.requiresAuthorization.getter();
    v91 = v151;
    sub_1000390B8(v151, v90);
    v92 = *(v152 + 8);
    v92(v90, v31);
    v92(v91, v31);
  }

  v93 = v154;
  v94 = v154[2];
  v95 = *(v94 + 16);
  if (v95)
  {
    v162 = _swiftEmptyArrayStorage;

    sub_10003AF58(0, v95, 0);
    v96 = v94 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
    v97 = *(v155 + 72);
    v98 = v162;
    do
    {
      sub_10003271C(v96, v22, type metadata accessor for HostedRoutingItem);
      v99 = v159;
      sub_10003271C(v22, v159, type metadata accessor for HostedRoutingItem);
      sub_1002592C0(v99, v53);
      sub_10002181C(v22, type metadata accessor for HostedRoutingItem);
      v162 = v98;
      v101 = v98[2];
      v100 = v98[3];
      if (v101 >= v100 >> 1)
      {
        sub_10003AF58((v100 > 1), v101 + 1, 1);
        v98 = v162;
      }

      v98[2] = v101 + 1;
      (*(v161 + 32))(v98 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v101, v53, v160);
      v96 += v97;
      --v95;
    }

    while (v95);
    a1 = v143;
    v37 = v148;
    v31 = v149;
    v102 = v154;
  }

  else
  {

    v102 = v93;
  }

  v103 = *(v102 + 24);
  v104 = *(v103 + 16);
  if (v104)
  {
    v162 = _swiftEmptyArrayStorage;
    sub_10003AF58(0, v104, 0);
    v105 = v103 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
    v106 = *(v155 + 72);
    v107 = v162;
    v108 = v132;
    do
    {
      sub_10003271C(v105, v22, type metadata accessor for HostedRoutingItem);
      v109 = v159;
      sub_10003271C(v22, v159, type metadata accessor for HostedRoutingItem);
      sub_1002592C0(v109, v108);
      sub_10002181C(v22, type metadata accessor for HostedRoutingItem);
      v162 = v107;
      v111 = v107[2];
      v110 = v107[3];
      if (v111 >= v110 >> 1)
      {
        sub_10003AF58((v110 > 1), v111 + 1, 1);
        v107 = v162;
      }

      v107[2] = v111 + 1;
      (*(v161 + 32))(v107 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v111, v108, v160);
      v105 += v106;
      --v104;
    }

    while (v104);
    a1 = v143;
    v37 = v148;
    v31 = v149;
    v102 = v154;
  }

  v112 = v150;
  v113 = v136;
  sub_10001D9AC(v102 + v150[7], v136, &qword_100523640, qword_100451520);
  sub_10003AF9C(v113, v144);
  (*(v137 + 16))(v145, v102 + v112[13], v138);
  v114 = (v102 + v112[12]);
  v115 = *v114;
  LODWORD(v161) = *(v114 + 4);
  (*(v139 + 16))(v146, v102 + v112[8], v140);
  v116 = (v102 + v112[11]);
  v117 = v116[1];
  if (v117)
  {
    v118 = *v116;
    v159 = v117;
    v160 = v118;
  }

  else
  {
    v159 = 0x800000010043DD00;
    v160 = 0xD000000000000013;
  }

  v119 = v102 + v112[16];
  if (*(v119 + 8))
  {
    v156 = *(v119 + 32);
    v157 = v115;

    v37 = v148;
    v31 = v149;
    a1 = v143;
    v120 = v135;
    v102 = v154;
    RoutingSession.HostInfo.init(name:symbolName:productName:isVisibleSilentHost:isPersonalHost:)();
    v121 = type metadata accessor for RoutingSession.HostInfo();
    (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
  }

  else
  {
    v122 = type metadata accessor for RoutingSession.HostInfo();
    (*(*(v122 - 8) + 56))(v135, 1, 1, v122);
  }

  v123 = v152;
  (*(v152 + 16))(v151, v37, v31);
  LOBYTE(v162) = v161;
  v47 = v147;
  RoutingSession.init(identifier:preferredItems:remainingItems:nowPlayingInfo:lastPlayingSnapshot:volume:controls:actions:symbolName:hostInfo:properties:)();
  sub_1000038A4(a1, &qword_100523620, &unk_1004511D0);
  (*(v123 + 8))(v37, v31);
  sub_10002181C(v102, type metadata accessor for HostedRoutingSession);
  v46 = 0;
LABEL_75:
  v124 = type metadata accessor for RoutingSession();
  return (*(*(v124 - 8) + 56))(v47, v46, 1, v124);
}

void *sub_10003AC60()
{
  v1 = type metadata accessor for HostedRoutingItem(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v22 = *(v0 + 16);

  result = sub_100032CAC(v8, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
  v10 = v22;
  v11 = v22[2];
  if (v11)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    v20 = v5;
    v21 = v1;
    while (v12 < v10[2])
    {
      v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v15 = *(v2 + 72);
      sub_10003271C(v10 + v14 + v15 * v12, v7, type metadata accessor for HostedRoutingItem);
      if (v7[*(v1 + 36)] == 1)
      {
        sub_100032E08(v7, v5, type metadata accessor for HostedRoutingItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002A42C(0, v13[2] + 1, 1);
          v13 = v22;
        }

        v18 = v13[2];
        v17 = v13[3];
        if (v18 >= v17 >> 1)
        {
          sub_10002A42C((v17 > 1), v18 + 1, 1);
          v13 = v22;
        }

        v13[2] = v18 + 1;
        v5 = v20;
        result = sub_100032E08(v20, v13 + v14 + v18 * v15, type metadata accessor for HostedRoutingItem);
        v1 = v21;
      }

      else
      {
        result = sub_10002181C(v7, type metadata accessor for HostedRoutingItem);
      }

      if (v11 == ++v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_13:

    return v13;
  }

  return result;
}

uint64_t sub_10003AEF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001BC5A8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_10003AF58(void *a1, int64_t a2, char a3)
{
  result = sub_1000311D0(a1, a2, a3, *v3, &qword_1005241A0, &qword_1004550A0, &type metadata accessor for RoutingItem);
  *v3 = result;
  return result;
}

uint64_t sub_10003AF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
  v21 = *(v3 - 8);
  v22 = v3;
  __chkstk_darwin(v3);
  v23 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D9AC(a1, v11, &qword_100523640, qword_100451520);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000038A4(a1, &qword_100523640, qword_100451520);
    sub_1000038A4(v11, &qword_100523640, qword_100451520);
    v16 = 1;
    v17 = v24;
LABEL_5:
    v19 = type metadata accessor for RoutingSession.NowPlayingInfo();
    return (*(*(v19 - 8) + 56))(v17, v16, 1, v19);
  }

  v20 = a1;
  sub_100032E08(v11, v15, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  (*(v6 + 16))(v8, &v15[*(v12 + 36)], v5);
  result = (*(v21 + 16))(v23, &v15[*(v12 + 40)], v22);
  if (*(*(v15 + 6) + 16))
  {

    v25 = 0;
    v17 = v24;
    RoutingSession.NowPlayingInfo.init(title:subtitle:playbackInfo:trackInfo:artworkToken:applicationBundleIdentifier:playbackProcessIdentifier:)();
    sub_1000038A4(v20, &qword_100523640, qword_100451520);
    sub_10002181C(v15, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v16 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003B370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10003B434(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL sub_10003B478(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 72) outputDevices];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003B550;
  v9[3] = &unk_1004B8A40;
  v10 = v3;
  v5 = v3;
  v6 = [v4 msv_firstWhere:v9];
  v7 = v6 == 0;

  return v7;
}

BOOL sub_10003B550(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uid];
  if ([v4 containsUID:v5])
  {
    v6 = 1;
  }

  else if ([*(a1 + 32) isLocalDevice])
  {
    v6 = [v3 deviceType] != 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL sub_10003B6D8(id a1, MRDAVHostedRoutingControllerGroup *a2)
{
  v2 = [(MRDAVHostedRoutingControllerGroup *)a2 concreteEndpoint];
  v3 = [v2 isNativeEndpoint];

  return v3;
}

id sub_10003B790(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [(MRAVOutputDevice *)v2 descriptor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(MRAVOutputDevice *)v2 avOutputDevice];
    v5 = [v4 name];
    if (v5)
    {
      [v3 setName:v5];
    }

    else
    {
      v6 = [v3 name];
      [v3 setName:v6];
    }
  }

  v7 = [[MRAVOutputDeviceDescription alloc] initWithDescriptor:v3];

  return v7;
}

void sub_10003BA3C(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 80) allObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10003BCBC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 object];
  [v2 _removeClient:v3];
}

void sub_10003BE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003BE34(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(*(a1 + 40) + 8) + 40) addObject:{*(*(&v7 + 1) + 8 * v6), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10003C32C(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v5 = [*(v4 + 32) debugName];
  v6 = [NSString stringWithFormat:@"<%@:%p %@", v3, v4, v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(a1 + 32) + 9) == 1)
  {
    v9 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@" TOMBSTONED"];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingString:@">"];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void sub_10003C5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003C604(uint64_t a1)
{
  if (([*(*(a1 + 32) + 136) isValid] & 1) == 0)
  {
    Error = MRMediaRemoteCreateError();
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = Error;
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [*(*(a1 + 32) + 136) cryptoSession];
    if (([v5 isValid] & 1) == 0)
    {
      v6 = [*(*(a1 + 32) + 168) requiresCustomPairing];

      if (!v6)
      {
        goto LABEL_8;
      }

      v7 = MRMediaRemoteCreateError();
      v8 = *(*(a1 + 40) + 8);
      v5 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }

LABEL_8:
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    if (*(*(a1 + 32) + 152) || (v12 = MRMediaRemoteCreateError(), v13 = *(*(a1 + 40) + 8), v14 = *(v13 + 40), *(v13 + 40) = v12, v14, !*(*(*(a1 + 40) + 8) + 40)))
    {
      if (!*(*(a1 + 32) + 144))
      {
        v9 = MRMediaRemoteCreateError();
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }
    }
  }
}

void sub_10003C8B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 msv_map:&stru_1004C1378];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC] addEndpointsAddedCallback: %@", &v9, 0xCu);
  }

  v6 = [v3 msv_compactMap:&stru_1004C13B8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained recommender];
  [v8 updateRouteCandidates:v6];
}

MRIRRoute *__cdecl sub_10003C9D0(id a1, MRAVEndpoint *a2)
{
  v2 = a2;
  if ([(MRAVEndpoint *)v2 shouldDonate])
  {
    v3 = [MRIRRoute routeWithEndpoint:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10003CB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003CB9C(uint64_t a1, void *a2)
{
  v3 = [a2 msv_firstWhere:&stru_1004BFB48];
  v4 = [MRRequestDetails alloc];
  v5 = [v4 initWithInitiator:MRRequestDetailsInitiatorPrewarming requestID:0 reason:@"MRDSystemEndpointControllerHelper added DUGL"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10016BCC8;
  v6[3] = &unk_1004B6FC0;
  v6[4] = *(a1 + 32);
  [v3 connectToExternalDeviceWithOptions:0 details:v5 completion:v6];
}

void sub_10003CD0C(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 24));
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1[4] + 80);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        *(*(a1[6] + 8) + 24) |= [*(*(&v7 + 1) + 8 * v6) notifications];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10003CE28(uint64_t a1)
{
  v2 = [*(a1 + 32) _onSerialQueue_deviceInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10003CE74(uint64_t a1)
{
  v2 = [*(a1 + 32) endpoint];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) _onReloadQueue_hostedExternalDeviceEndpointDidChange:v2];
    v2 = v3;
  }
}

NSString *__cdecl sub_10003CFC4(id a1, MRAVEndpoint *a2)
{
  v2 = a2;
  v3 = [(MRAVEndpoint *)v2 localizedName];
  v4 = [(MRAVEndpoint *)v2 uniqueIdentifier];

  v5 = [NSString stringWithFormat:@"%@ - %@", v3, v4];

  return v5;
}

void sub_10003D164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_10003D278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003D328(char a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___MRDGroupSessionCreateTimingEvents_tracked] = 0;
  v4 = &v1[OBJC_IVAR___MRDGroupSessionCreateTimingEvents_eventName];
  *v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[1] = v5;
  v6 = OBJC_IVAR___MRDGroupSessionCreateTimingEvents_propertyMap;
  sub_1001BC5A8(&qword_100522D78, &qword_100450950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 48) = v8;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v9;
  v10 = sub_10003D4B4(inited, &qword_100522EA8, &qword_100450CA0, &qword_100522EB0, &unk_100450CA8);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100522D80, &qword_1004509D0);
  swift_arrayDestroy();
  *&v1[v6] = v10;
  *&v1[OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyGroup] = 0;
  *&v1[OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyInvitation] = 0;
  v1[OBJC_IVAR___MRDGroupSessionCreateTimingEvents_routeType] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

unint64_t sub_10003D4B4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_1001BC5A8(a2, a3);
    v9 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v11 = *(i - 2);
      v12 = *(i - 1);
      v13 = *i;

      result = sub_10003D6A4(v11, a4, a5);
      if (v15)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      v16 = (v9[7] + 16 * result);
      *v16 = v12;
      v16[1] = v13;
      v17 = v9[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v9[2] = v19;
      if (!--v5)
      {

        return v9;
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

unint64_t sub_10003D5C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      sub_1001BC5A8(a3, a4);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10003D6A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1001BC5A8(a2, a3);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003D5C4(a1, v6, a2, a3);
}

BOOL sub_10003D7AC()
{
  v1 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v13 - v6;
  (*((swift_isaMask & *v0) + 0x68))(v5);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  sub_1000038A4(v7, &qword_1005228D8, &unk_100450060);
  if (v10 == 1)
  {
    Date.init()();
    (*(v9 + 56))(v4, 0, 1, v8);
    v11 = OBJC_IVAR___MRDTimingEvent_startDate;
    swift_beginAccess();
    sub_10003DBB8(v4, v0 + v11);
    swift_endAccess();
  }

  return v10 == 1;
}

id sub_10003D968(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = v1;
    type metadata accessor for TimingEvent(0);
    v6 = SystemGroupSessionRemoteControlService.__allocating_init()();
    v7 = *(v1 + v2);
    *(v5 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

uint64_t sub_10003DB44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DBB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003DC28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_10001D9AC(v2 + v4, a2, &qword_1005228D8, &unk_100450060);
}

id SystemGroupSessionRemoteControlService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_10003DDEC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009F34;

  return sub_10003DFC4(v2);
}

uint64_t type metadata accessor for TimingEvent(uint64_t a1)
{
  result = qword_10052B5A8;
  if (!qword_10052B5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003DEEC()
{
  type metadata accessor for SymmetricKeySize();
  *(v0 + 32) = swift_task_alloc();
  type metadata accessor for NearbyGroup();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1001E2118;

  return NearbyGroup.__allocating_init(members:service:)(&_swiftEmptySetSingleton, 1);
}

uint64_t sub_10003DFC4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001E0E88;

  return sub_10003DEEC();
}

uint64_t sub_10003E4FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E534()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E56C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003E5C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003E604()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E644()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003E68C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003E6CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003E71C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E764()
{
  v1 = sub_1001BC5A8(&qword_100521678, &unk_10044EB50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10003E820()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E858()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E890()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E8C8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003E950()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10003E9B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E9F0()
{
  v1 = sub_1001BC5A8(&qword_100521B98, &qword_10044EE30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10003EAE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003EB2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003EB80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003EBB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003EBF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003EC30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003EC78()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10003ECC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003ED1C()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003ED6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003EDC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003EE10()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003EE80()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003EED0()
{
  sub_1001C4034(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003EF10()
{
  sub_1001C4034(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003EF5C()
{
  sub_1001C4034(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003EFAC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003F034()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F06C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F0A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F0F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003F148()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003F190()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F1C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003F218()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003F260()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003F2B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003F300()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F358()
{
  v1 = sub_1001BC5A8(&qword_100522920, &qword_100450090);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003F440()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003F480()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F4B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003F538()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003F670()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003F6B4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003F704()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F754()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F78C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F7E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003F828()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F860()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003F8A8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F8E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F918()
{
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003FA1C()
{
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003FB20()
{
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003FBD0()
{
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003FC94()
{
  v1 = *(v0 + 16);
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10003FDBC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003FDFC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FE34(uint64_t result, uint64_t a2, unsigned int a3)
{
  if ((~a3 & 0x6FE) != 0)
  {
    return sub_10001DAE0(result, a2, a3);
  }

  return result;
}

uint64_t sub_10003FE48(uint64_t result, uint64_t a2, unsigned int a3)
{
  if ((~a3 & 0x6FE) != 0)
  {
    return sub_100019550(result, a2, a3);
  }

  return result;
}

uint64_t sub_10003FE5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FE94()
{

  v1 = *(v0 + 40);
  if ((~v1 & 0xFC) != 0)
  {
    sub_1002548A0(*(v0 + 24), *(v0 + 32), v1 | (*(v0 + 42) << 16));
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003FEEC()
{
  if (*(v0 + 16) >= 3uLL)
  {
  }

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FF2C()
{
  sub_1002548A0(*(v0 + 16), *(v0 + 24), *(v0 + 32) | (*(v0 + 34) << 16));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003FF7C()
{
  v1 = type metadata accessor for MusicFavoriteStatusController.Status();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1002548A0(*(v0 + 16), *(v0 + 24), *(v0 + 32) | (*(v0 + 34) << 16));

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5) >= 3uLL)
  {
  }

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000400C0()
{
  v1 = *(v0 + 32);
  if ((~v1 & 0x6FE) != 0)
  {
    sub_100019550(*(v0 + 16), *(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_100040108(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for RoutingControls();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[18];

  return v15(v16, a2, v14);
}

uint64_t sub_100040280(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for RoutingControls();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[18];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000403F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RoutingSessionConfiguration.Attribution();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000404A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RoutingSessionConfiguration.Attribution();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100040548()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100040594()
{

  sub_1002485A4(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000405F8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100040638()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040670()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000406C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000406F8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004076C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000407A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000407E8()
{
  v1 = type metadata accessor for ContinuousClock();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v12 = v3 | v8;
  v11 = (((((((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v12 | 7);
}

uint64_t sub_100040988()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000409D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040A10()
{
  sub_1000196F4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100040A54()
{
  v1 = *(v0 + 32);
  if ((~v1 & 0x6FE) != 0)
  {
    sub_100019550(*(v0 + 16), *(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_100040AB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040AF0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040B28()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100040B68()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100040BB0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100040BF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040C74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040CCC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100040D2C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100040D84()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100040DDC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040E14()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100040E74()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100040ED4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040F14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040F4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040F84()
{
  v1 = type metadata accessor for ContinuousClock();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v12 = v3 | v8;
  v10 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v12 | 7);
}

uint64_t sub_1000411A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000411DC()
{

  sub_1002485A4(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100041244()
{

  sub_1002485A4(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1000412BC()
{

  sub_1002485A4(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_100041334()
{

  sub_1002485A4(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10004138C()
{

  sub_1002485A4(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_100041404()
{
  v1 = type metadata accessor for HostedRoutingSourceSession(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v0 + v3 + v1[7];
  v7 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    sub_1002488FC(*(v6 + 48), *(v6 + 56), *(v6 + 60));

    v8 = *(v7 + 36);
    v9 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
    v10 = *(v7 + 40);
    v11 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  v12 = v1[8];
  v13 = type metadata accessor for RoutingControls();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  if (*(v5 + v1[15] + 8))
  {
  }

  v14 = v1[18];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = v0 + ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_1002485A4(*(v16 + 16), *(v16 + 24), *(v16 + 32), *(v16 + 40), *(v16 + 48));

  return _swift_deallocObject(v0, ((v3 + v4 + 63) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000416E4()
{

  sub_1002485A4(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100041754()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004179C()
{
  v1 = type metadata accessor for HostedRoutingSourceSession(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[7];
  v7 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    sub_1002488FC(*(v6 + 48), *(v6 + 56), *(v6 + 60));

    v8 = *(v7 + 36);
    v9 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
    v10 = *(v7 + 40);
    v11 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  v12 = v1[8];
  v13 = type metadata accessor for RoutingControls();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  if (*(v5 + v1[15] + 8))
  {
  }

  v14 = v1[18];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return _swift_deallocObject(v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100041A5C()
{

  sub_1002485A4(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_100041ADC()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100041B2C()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  v6 = v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);

  sub_1002485A4(*(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48));

  return _swift_deallocObject(v0, ((((v5 + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100041C54()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 49) & ~v8;
  v13 = *(v7 + 64);
  v10 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  v11 = sub_1002485A4(*(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40), *(v0 + v5 + 48));
  (*(v7 + 8))(v0 + v9, v6, v11);

  return _swift_deallocObject(v0, v9 + v13, v10 | 7);
}

uint64_t sub_100041E04()
{
  v1 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for RoutingControl();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100041F64()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100041FF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042040()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_1002485A4(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100042154()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100042298()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000422F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042328()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042374()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100042A7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100042AB4()
{
  v1 = type metadata accessor for RoutingSessionConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100042BB8()
{
  v1 = (sub_1001BC5A8(&qword_100525F38, &unk_100458130) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[14];
  v6 = type metadata accessor for HostedRoutingSession(0);
  if (!(*(*(v6 - 1) + 48))(v5, 1, v6))
  {

    v7 = v5 + v6[7];
    v8 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {

      sub_1002488FC(*(v7 + 48), *(v7 + 56), *(v7 + 60));

      v9 = *(v8 + 36);
      v10 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
      (*(*(v10 - 8) + 8))(v7 + v9, v10);
      v11 = *(v8 + 40);
      v12 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
      (*(*(v12 - 8) + 8))(v7 + v11, v12);
    }

    v13 = v6[8];
    v14 = type metadata accessor for RoutingControls();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);

    v15 = v6[13];
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
    if (*(v5 + v6[16] + 8))
    {
    }
  }

  type metadata accessor for HostedRoutingSessionSnapshot(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100042EDC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100042F24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100042F64()
{
  v28 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v1 = *(*(v28 - 8) + 80);
  v2 = (v1 + 80) & ~v1;
  v3 = *(*(v28 - 8) + 64);
  v27 = type metadata accessor for RoutingSessionConfiguration();
  v25 = *(v27 - 8);
  v4 = *(v25 + 80);
  v5 = *(v25 + 64);
  v26 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v24 = *(v26 - 8);
  v6 = *(v24 + 80);
  v23 = *(v24 + 64);

  sub_1002485A4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  v7 = v0 + v2;
  v8 = type metadata accessor for HostedRoutingSession(0);
  if (!(*(*(v8 - 1) + 48))(v0 + v2, 1, v8))
  {
    v22 = v5;

    v9 = v7 + v8[7];
    v10 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      sub_1002488FC(*(v9 + 48), *(v9 + 56), *(v9 + 60));

      v20 = *(v10 + 36);
      v11 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
      (*(*(v11 - 8) + 8))(v9 + v20, v11);
      v21 = *(v10 + 40);
      v12 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
      (*(*(v12 - 8) + 8))(v9 + v21, v12);
    }

    v13 = v8[8];
    v14 = type metadata accessor for RoutingControls();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);

    v15 = v8[13];
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 8))(v7 + v15, v16);
    v5 = v22;
    if (*(v7 + v8[16] + 8))
    {
    }
  }

  v17 = (v2 + v3 + v4) & ~v4;
  v18 = (((((v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6;

  (*(v25 + 8))(v0 + v17, v27);

  (*(v24 + 8))(v0 + v18, v26);

  return _swift_deallocObject(v0, ((((((v23 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v1 | v4 | v6 | 7);
}

uint64_t sub_100043400()
{
  v1 = type metadata accessor for RoutingDialog.Action();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000434F8()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000435D0()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100043724()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100043774()
{
  v1 = type metadata accessor for RoutingSessionConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for HostedRoutingSessionSnapshot(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  v10 = sub_1002485A4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  (*(v2 + 8))(v0 + v4, v1, v10);
  v11 = v0 + v8;
  v12 = type metadata accessor for HostedRoutingSession(0);
  if (!(*(*(v12 - 1) + 48))(v0 + v8, 1, v12))
  {

    v13 = v11 + v12[7];
    v14 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      sub_1002488FC(*(v13 + 48), *(v13 + 56), *(v13 + 60));

      v22 = *(v14 + 36);
      v15 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
      (*(*(v15 - 8) + 8))(v13 + v22, v15);
      v23 = *(v14 + 40);
      v16 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
      (*(*(v16 - 8) + 8))(v13 + v23, v16);
    }

    v17 = v12[8];
    v18 = type metadata accessor for RoutingControls();
    (*(*(v18 - 8) + 8))(v11 + v17, v18);

    v19 = v12[13];
    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 8))(v11 + v19, v20);
    if (*(v11 + v12[16] + 8))
    {
    }
  }

  return _swift_deallocObject(v0, ((((((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_100043B78()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100043BC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043C2C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100043C74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043CAC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100043CF4()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {

    sub_10023DCB0(*(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24));
  }

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_100043DE0()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100043E54()
{
  v1 = type metadata accessor for RoutingSessionConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v12 = v3 | v8;
  v10 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  sub_1002485A4(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v12 | 7);
}

uint64_t sub_10004400C()
{

  if (*(v0 + 40))
  {

    sub_10023DCB0(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100044064()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000440B4()
{
  sub_1000196F4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100044164()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004419C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000441DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044214()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004425C()
{

  sub_1002485A4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_1000442B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000442EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044334()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004436C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000443A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000443E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044434()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004448C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000444C4()
{
  v1 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000445CC()
{
  v1 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000446DC()
{
  v1 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100044798()
{
  v1 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100044848()
{
  v1 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004492C()
{
  v1 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100044A44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100044A94()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100044AEC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044B24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100044B6C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100044BAC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100044BF4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100044C34()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100044C84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100044CBC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100044D14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100044D64()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100044DA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100044DEC()
{
  v1 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100044EEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044F24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044F5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100044F9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044FD4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100045098()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000450E4()
{
  v1 = sub_1001BC5A8(&qword_100528780, &unk_10045AE20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000451A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000451F0()
{
  v1 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000452E4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000453D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045408()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000454B8()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100045528()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100045570()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000455CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045604()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004563C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004567C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000456C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045700()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045738()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045774()
{
  v1 = type metadata accessor for Participant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  sub_1001C4034(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100045848()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045890()
{
  v1 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  sub_1001C4034(*(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100045968(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001C4034(result, a2);
  }

  return result;
}

void sub_10004620C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100046224(void *a1)
{
  v2 = *(a1[4] + 32);
  v7 = [NSNumber numberWithInteger:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v7];
  v4 = [v3 outputDeviceUID];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100046A74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) outputDeviceUID];

  v5 = _MRLogForCategory();
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v8 = [*(a1 + 40) name];
      v9 = [*(a1 + 40) requestID];
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:*(a1 + 48)];
      v17 = 138543874;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      v21 = 2048;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v17, 0x20u);
      goto LABEL_13;
    }

    if (!v13)
    {
      goto LABEL_14;
    }

    v8 = [*(a1 + 40) name];
    v9 = [*(a1 + 40) requestID];
    v10 = [*(a1 + 32) outputDeviceUID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v17 = 138544130;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    v23 = 2048;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", &v17, 0x2Au);
LABEL_8:

LABEL_13:
    goto LABEL_14;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = [*(a1 + 40) name];
    v9 = [*(a1 + 40) requestID];
    v10 = [*(a1 + 32) outputDeviceUID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v17 = 138544386;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v3;
    v23 = 2114;
    v24 = v10;
    v25 = 2048;
    v26 = v12;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v17, 0x34u);
    goto LABEL_8;
  }

  if (v7)
  {
    sub_1003A47C8(a1, v3, v6);
  }

LABEL_14:

  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }
}

void sub_100046D54(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    v2 = *(*(a1 + 32) + 96);
  }

  v6 = *(a1 + 48);
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) type]);
  [v2 setObject:v6 forKeyedSubscript:v7];
}

void sub_100046DFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    dispatch_group_enter(*(a1 + 32));
    v7 = qos_class_self();
    v8 = dispatch_get_global_queue(v7, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100046F10;
    v11[3] = &unk_1004B69F8;
    v10 = *(a1 + 32);
    v9 = v10;
    v12 = v10;
    [v5 waitForPlaybackWithTimeout:v8 queue:v11 completion:7.0];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100046F10(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100046F70(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_100046FD4(uint64_t a1)
{
  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v2 = *(*(a1 + 32) + 96);
    active = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) type]);
    v4 = [v2 objectForKeyedSubscript:active];
    v5 = v4;
    if (v4 != *(a1 + 48))
    {
      v6 = [v4 isEqual:?];

      if (v6)
      {
        goto LABEL_6;
      }

      v7 = [NSError alloc];
      active = MRMediaRemoteActiveEndpointTypeCopyDescription();
      v8 = [v7 initWithMRError:25 format:{@"Another client updated %@SystemEndpoint during update process", active}];
      v9 = *(*(a1 + 72) + 8);
      v5 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }

LABEL_6:
  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v10 = [*(a1 + 32) _onSerialQueue_updateSystemEndpoint:*(a1 + 40) event:*(a1 + 80) eventReason:*(a1 + 56)];
    v11 = *(*(a1 + 72) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *(*(a1 + 64) + 16);

  return v13();
}

void sub_10004789C(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 80)])
  {
    v2 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:&off_1004E04A0];
    v3 = [v2 outputDeviceUID];
    v4 = *(a1 + 40);
    v5 = v4[1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100047A4C;
    v13[3] = &unk_1004B6A98;
    v14 = v3;
    v15 = v2;
    v16 = v4;
    v6 = v2;
    v7 = v3;
    [v4 _onSerialQueue_reconnectToOutputDevice:v7 queue:v5 completion:v13];
  }

  else if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 88)])
  {
    v12 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:&off_1004E04B8];
    v8 = [v12 outputDeviceUID];
    v9 = *(a1 + 40);
    v10 = +[NSBundle mainBundle];
    v11 = [v10 bundleIdentifier];
    [v9 _onSerialQueue_clearActiveEndpointType:2 outputDeviceUID:v8 event:4 reason:@"Origin unregistered" clientBundleIdentifier:v11];
  }
}

void sub_100047A4C(uint64_t a1, int a2)
{
  if (a2)
  {
    v12 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:*(a1 + 32) reason:@"Reconncetion"];
    [v12 setDemoteWhenSyncingToCompanion:{objc_msgSend(*(a1 + 40), "demoteWhenSyncingToCompanion")}];
    v3 = *(a1 + 48);
    v4 = [v12 reason];
    v5 = [v3 _onSerialQueue_updateSystemEndpoint:v12 event:9 eventReason:v4];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = +[NSBundle mainBundle];
    v9 = [v8 bundleIdentifier];
    [v6 _onSerialQueue_clearActiveEndpointType:0 outputDeviceUID:v7 event:4 reason:@"Reconnection" clientBundleIdentifier:v9];

    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = +[NSBundle mainBundle];
    v4 = [v12 bundleIdentifier];
    [v10 _onSerialQueue_clearActiveEndpointType:2 outputDeviceUID:v11 event:4 reason:@"Reconnection" clientBundleIdentifier:v4];
  }
}

void sub_100047D5C(uint64_t a1)
{
  v10 = [[NSString alloc] initWithFormat:@"Playback changed for %@", *(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 bundleIdentifier];
  [v2 _onSerialQueue_reevaluateActiveEndpoint:0 event:v3 eventReason:v10 clientBundleIdentifier:v5];

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = +[NSBundle mainBundle];
  v9 = [v8 bundleIdentifier];
  [v6 _onSerialQueue_reevaluateActiveEndpoint:2 event:v7 eventReason:v10 clientBundleIdentifier:v9];

  [*(a1 + 40) _onSerialQueue_maybeSetupPlaybackTimerForEvent:*(a1 + 48)];
}

uint64_t sub_100048D90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 outputDeviceUID];
  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 isEqual:v3];
  }

  return v4;
}

uint64_t sub_100048F74(uint64_t a1, void *a2)
{
  v3 = [a2 outputDeviceUID];
  v4 = v3;
  if (v3 == *(a1 + 32))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:?];
  }

  return v5;
}

uint64_t sub_100049A50(uint64_t a1)
{
  v5 = *(a1 + 56);
  v6 = v5 > 9;
  v7 = (1 << v5) & 0x209;
  if (!v6 && v7 != 0)
  {
    return 1;
  }

  v14 = v1;
  if (!*(a1 + 64) && [*(a1 + 32) changeType])
  {
    return 1;
  }

  v11 = [*(a1 + 40) outputDeviceUID];
  v12 = v11;
  if (v11 == *(a1 + 48))
  {
  }

  else
  {
    v13 = [v11 isEqual:?];

    if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

void sub_100049AF4(uint64_t a1)
{
  v3 = [*(a1 + 32) copy];
  [v3 setPreviousOutputDeviceUID:*(a1 + 40)];
  [v3 setChangeType:*(a1 + 56)];
  v2 = [*(a1 + 48) delegate];
  [v2 systemEndpointController:*(a1 + 48) activeSystemEndpointDidChangeForRequest:v3 type:*(a1 + 64)];
}

id sub_100049B74(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"migrationPlaybackSession"])
  {
    v2 = &kMRChangeActiveSystemReasonMigrate;
LABEL_9:
    v3 = *v2;
LABEL_10:
    v4 = v3;
    goto LABEL_11;
  }

  if ([v1 containsString:@"ResolveActiveEndpoint"])
  {
    v2 = &kMRChangeActiveSystemReasonFallbackCouldNotResolve;
    goto LABEL_9;
  }

  if ([v1 containsString:@"invalid route error"])
  {
    v2 = &kMRChangeActiveSystemReasonInvalidRoute;
    goto LABEL_9;
  }

  if ([v1 containsString:@"from external device client"])
  {
    v2 = &kMRChangeActiveSystemReasonExternalDevice;
    goto LABEL_9;
  }

  if ([v1 containsString:@"Analytics: "])
  {
    v3 = [v1 stringByReplacingOccurrencesOfString:@"Analytics: " withString:&stru_1004D2058];
    goto LABEL_10;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

id sub_100049C70(uint64_t a1)
{
  v12[0] = kMRChangeActiveSystemEndpointClientKey;
  v2 = [*(a1 + 32) clientBundleIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"unknown";
  }

  v13 = v4;
  v12[1] = kMRChangeActiveSystemEndpointTypeKey;
  v12[2] = kMRChangeActiveSystemEndpointChangeTypeKey;
  v14 = vbslq_s8(vceqzq_s64(*(a1 + 40)), vdupq_n_s64(@"unknown"), *(a1 + 40));
  v15 = *(a1 + 56);
  v12[3] = kMRChangeActiveSystemEndpointReasonKey;
  v12[4] = kMRChangeActiveSystemEndpointIsLocalKey;
  v5 = [*(a1 + 32) outputDeviceUID];
  v6 = [NSNumber numberWithInt:v5 == 0];
  v16 = v6;
  v12[5] = kMRChangeActiveSystemEndpointTimeSinceLastChangeKey;
  v7 = [*(a1 + 64) date];
  [v7 timeIntervalSinceNow];
  v9 = [NSNumber numberWithDouble:fabs(v8)];
  v17 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:v12 count:6];

  return v10;
}

void sub_100049FE4(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = dispatch_time(0, (a3 * 1000000000.0));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004A0DC;
  v11[3] = &unk_1004B6BB0;
  v7 = *(a1 + 32);
  v12 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v13 = v8;
  v14 = v9;
  v15 = v5;
  v10 = v5;
  dispatch_after(v6, v7, v11);
}

void sub_10004A0DC(uint64_t a1)
{
  v2 = +[MRDAutoConnectionController sharedConnectionController];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004A1A8;
  v6[3] = &unk_1004B6B88;
  v7 = *(a1 + 56);
  [v2 connectToOutputDevice:v3 reason:v4 queue:v5 completion:v6];
}

uint64_t sub_10004A1A8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

void sub_10004A1C8(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10004A2B4;
    v5[3] = &unk_1004B6C28;
    v6 = v4;
    v7 = *(a1 + 40);
    (v4)[2](v6, v5, 3.0);
  }
}

void sub_10004A2B4(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004A36C;
    v6[3] = &unk_1004B6C00;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    (*(v5 + 16))(v5, v6, 7.0);
  }
}

void sub_10004A61C(void *a1)
{
  v2 = [NSString alloc];
  active = MRMediaRemoteActiveEndpointTypeCopyDescription();
  v4 = sub_100035750(a1[5]);
  v8 = [v2 initWithFormat:@" %@ timeout event %@ after <%lf> seconds ", active, v4, a1[6]];

  v5 = a1[4];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 bundleIdentifier];
  [v5 _onSerialQueue_reevaluateActiveEndpoint:0 event:2 eventReason:v8 clientBundleIdentifier:v7];
}

void sub_10004A950(uint64_t a1)
{
  v2 = [NSString alloc];
  v3 = [*(a1 + 32) origin];
  v4 = sub_100035750(*(a1 + 48));
  v8 = [v2 initWithFormat:@"%@ playback timedout event %@ after <%lf> seconds", v3, v4, *(a1 + 56)];

  v5 = *(a1 + 40);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 bundleIdentifier];
  [v5 _onSerialQueue_reevaluateActiveEndpoint:0 event:6 eventReason:v8 clientBundleIdentifier:v7];
}

void sub_10004AC3C(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);
  v2 = dispatch_queue_create("com.apple.mediaremote.systemEndpointController.userDefaults.serialQueue", v1);
  v3 = qword_1005291C0;
  qword_1005291C0 = v2;
}

id sub_10004ACC0(void *a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A4990(a1, v2);
  }

  [*(a1[5] + 56) setObject:a1[4] forKey:@"SystemEndpoint"];
  return [*(a1[5] + 56) setObject:a1[6] forKey:@"SystemEndpointRecentlyDismissedRecommendations"];
}

void sub_10004AF9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"type"];
  v6 = [v5 intValue];

  v18 = objc_alloc_init(MRDSystemEndpointEntry);
  [(MRDSystemEndpointEntry *)v18 setType:v6];
  v7 = [v4 objectForKeyedSubscript:@"event"];
  -[MRDSystemEndpointEntry setEvent:](v18, "setEvent:", [v7 intValue]);

  v8 = [v4 objectForKeyedSubscript:@"uid"];
  [(MRDSystemEndpointEntry *)v18 setOutputDeviceUID:v8];

  v9 = [v4 objectForKeyedSubscript:@"date"];
  [(MRDSystemEndpointEntry *)v18 setDate:v9];

  v10 = [v4 objectForKeyedSubscript:@"eventreason"];
  [(MRDSystemEndpointEntry *)v18 setEventReason:v10];

  v11 = [v4 objectForKeyedSubscript:@"selectionreason"];
  [(MRDSystemEndpointEntry *)v18 setSelectionReason:v11];

  v12 = [v4 objectForKeyedSubscript:@"changeType"];
  -[MRDSystemEndpointEntry setChangeType:](v18, "setChangeType:", [v12 intValue]);

  v13 = [v4 objectForKeyedSubscript:@"demoteWhenSyncingToCompanion"];
  -[MRDSystemEndpointEntry setDemoteWhenSyncingToCompanion:](v18, "setDemoteWhenSyncingToCompanion:", [v13 BOOLValue]);

  v14 = [v4 objectForKeyedSubscript:@"supportsIdleReset"];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &__kCFBooleanTrue;
  }

  -[MRDSystemEndpointEntry setSupportsIdleReset:](v18, "setSupportsIdleReset:", [v15 BOOLValue]);

  v16 = *(*(a1 + 32) + 32);
  v17 = [NSNumber numberWithInteger:v6];
  [v16 setObject:v18 forKeyedSubscript:v17];
}

void sub_10004B1B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = +[NSBundle mainBundle];
  v2 = [v3 bundleIdentifier];
  [v1 _onSerialQueue_reevaluateActiveEndpoint:0 event:0 eventReason:@"Startup" clientBundleIdentifier:v2];
}

void sub_10004B658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10004B6AC(uint64_t a1, void *a2)
{
  v3 = [a2 deviceUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t sub_10004B6F0(uint64_t a1, void *a2)
{
  v3 = [a2 deviceUID];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

void sub_10004C0CC(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"MRDGroupSessionServerDidStartEligibilityMonitoringNotification" object:0];
}

void sub_10004C298(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MRDGroupSessionServerDidStartNotification" object:*(a1 + 32)];
}

void sub_10004C478(uint64_t a1)
{
  [*(a1 + 32) notifyActiveSessionStateChanged];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MRDGroupSessionServerDidStopNotification" object:*(a1 + 32)];
}

void sub_10004C728(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 listener];
  v4 = [v6 endpoint];
  v5 = [v4 _endpoint];
  xpc_dictionary_set_value(v3, "MRXPC_MEDIA_CONTROLS_XPC_ENDPOINT_KEY", v5);
}

void sub_10004CBAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004CC70;
  v10[3] = &unk_1004B6E30;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  sub_100008278(v7, v10);
}

uint64_t sub_10004CC70(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    return MRAddClientErrorToXPCMessage();
  }

  else
  {
    return MRAddStringToXPCMessage();
  }
}

void sub_10004CC98(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 identifier];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_10004CD14(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  if (a3)
  {
    [v6 trackWithError:v7];
  }

  else
  {
    v9 = [v6 request];
    [v9 end];

    [*(a1 + 32) track];
  }

  v10 = *(a1 + 40);
  v11 = [v8 identifier];

  (*(v10 + 16))(v10, v11, v7);
}

void sub_10004D014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1003A4A0C(v9);
    }

    [*(a1 + 40) joinGroupSessionWithToken:*(a1 + 48) completion:*(a1 + 72)];
    [*(a1 + 56) trackWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Found equivalent WHA endpoint: %@, connecting", buf, 0xCu);
    }

    v10 = [*(a1 + 56) recon];
    [v10 end];

    v23 = MREndpointConnectionReasonUserInfoKey;
    v24 = @"MRDGroupSessionManager";
    v11 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v12 = [*(a1 + 56) whaConnect];
    [v12 start];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10004D26C;
    v19[3] = &unk_1004B6F70;
    v18 = *(a1 + 64);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v22 = *(a1 + 72);
    v15 = *(a1 + 56);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v18;
    *(&v17 + 1) = v13;
    v20 = v17;
    v21 = v16;
    [v5 connectToExternalDeviceWithOptions:1 userInfo:v11 completion:v19];
  }
}

void sub_10004D26C(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] setLastConnectionError:v3];
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[MRDGroupSessionServer] Failed to connect to WHA endpoint with error: %@.\nJoining session directly", &buf, 0xCu);
    }

    [a1[5] joinGroupSessionWithToken:a1[6] completion:a1[8]];
    [a1[7] trackWithError:v3];
  }

  else
  {
    v5 = [a1[7] whaConnect];
    [v5 end];

    [a1[7] track];
    v6 = [a1[6] equivalentMediaIdentifier];
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Connected to equivalent WHA endpoint, ASE switching to: %@", &buf, 0xCu);
    }

    v8 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v6 reason:@"MRGroupSession.wha-connected"];
    v9 = +[MRDMediaRemoteServer server];
    v10 = [v9 routingServer];
    v11 = [v10 systemEndpointController];
    [v11 updateSystemEndpointForRequest:v8];

    v12 = [a1[5] session];
    v13 = [v12 joinToken];
    v14 = [v13 equivalentMediaIdentifier];
    LODWORD(v11) = [v14 isEqual:v6];

    if (v11)
    {
      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Immediately found active group session for device: %@", &buf, 0xCu);
      }

      (*(a1[8] + 2))();
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v40 = 0x3032000000;
      v41 = sub_100034FA0;
      v42 = sub_100035994;
      v43 = objc_alloc_init(MRDGroupSessionManagerObserverHelper);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10004D78C;
      v34[3] = &unk_1004B6EF8;
      v34[4] = a1[4];
      p_buf = &buf;
      v35 = a1[8];
      v16 = objc_retainBlock(v34);
      v17 = [MSVBlockGuard alloc];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10004D8E8;
      v31[3] = &unk_1004B6F20;
      v18 = v6;
      v32 = v18;
      v19 = v16;
      v33 = v19;
      v20 = [v17 initWithTimeout:v31 interruptionHandler:60.0];
      v21 = _MRLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 138412290;
        v38 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Waiting for active group session for device: %@", v37, 0xCu);
      }

      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_10004D9E0;
      v27 = &unk_1004B6F48;
      v28 = v18;
      v22 = v20;
      v29 = v22;
      v23 = v19;
      v30 = v23;
      [*(*(&buf + 1) + 40) setActiveSessionDidChange:&v24];
      [a1[5] addObserver:{*(*(&buf + 1) + 40), v24, v25, v26, v27}];

      _Block_object_dispose(&buf, 8);
    }
  }
}

void sub_10004D768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004D78C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D880;
  block[3] = &unk_1004B6ED0;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_10004D880(uint64_t a1)
{
  [*(*(*(a1 + 56) + 8) + 40) setActiveSessionDidChange:0];
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void sub_10004D8E8(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Timed out waiting to join group session for device: %@", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [NSError msv_errorWithDomain:MRGroupSessionError code:15 debugDescription:@"Timed out waiting to auto-join ASE group session"];
  (*(v4 + 16))(v4, 0, v5);
}

void sub_10004D9E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[MRDGroupSessionServer] Active session changed: %@", &v12, 0xCu);
  }

  v5 = [v3 joinToken];
  v6 = [v5 equivalentMediaIdentifier];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = [*(a1 + 40) disarm];
    v9 = _MRLogForCategory();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Joined active group session for device: %@", &v12, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1003A4A50((a1 + 32), v10);
      }
    }
  }
}

uint64_t sub_10004DED8(uint64_t result, uint64_t a2)
{
  if (*(result + 32))
  {
    return MRAddClientErrorToXPCMessage();
  }

  return result;
}

void sub_10004DF84(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  if (IsSystemMediaApplication)
  {
    v5 = +[MRDMusicUserStateCenter sharedCenter];
    v6 = [v5 localActiveIdentity];

    if (v6)
    {
      v7 = [v6 protobufData];
      MRAddDataToXPCMessage();
    }
  }
}

void sub_10004E540(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004E5D8;
  v6[3] = &unk_1004B6E08;
  v7 = v3;
  v5 = v3;
  sub_100008278(v4, v6);
}

uint64_t sub_10004E5D8(uint64_t result, uint64_t a2)
{
  if (*(result + 32))
  {
    return MRAddClientErrorToXPCMessage();
  }

  return result;
}

uint64_t sub_10004E788(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 32))
  {
    MRAddClientErrorToXPCMessage();
    v3 = v7;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v4 data];
    MRAddDataToXPCMessage();
  }

  return _objc_release_x2();
}

void sub_10004E8E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004E9A4;
  v10[3] = &unk_1004B6E30;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  sub_100008278(v7, v10);
}

void sub_10004E9A4(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v4 = a2;
    MRAddClientErrorToXPCMessage();
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = a2;
    v4 = [v2 protobufData];
    MRAddDataToXPCMessage();
  }
}

uint64_t sub_10004EB6C(uint64_t result, uint64_t a2)
{
  if (*(result + 32))
  {
    return MRAddClientErrorToXPCMessage();
  }

  return result;
}

void sub_10004EC18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004ECD8;
  v10[3] = &unk_1004B6E30;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  sub_100008278(v7, v10);
}

uint64_t sub_10004ECD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    return MRAddStringToXPCMessage();
  }

  else
  {
    return MRAddClientErrorToXPCMessage();
  }
}

void sub_10004F3C4(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionManager];
  v3 = [v2 session];

  if (v3)
  {
    v4 = [[MRGroupSessionInfo alloc] initWithGroupSession:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:v4 forKeyedSubscript:MRActiveGroupSessionInfoUserInfoKey];
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A4ACC(v4, a1);
  }

  v7 = +[MRDMediaRemoteServer server];
  v8 = _MRGroupSessionInfoDidChangeNotification;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004F658;
  v20[3] = &unk_1004B7038;
  v10 = *(a1 + 40);
  v9 = (a1 + 40);
  v21 = v10;
  [v7 postClientNotificationNamed:v8 userInfo:v5 predicate:v20];

  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [*(v9 - 1) eligibilityMonitor];
  v13 = [v12 eligibilityStatus];

  v14 = [v13 copy];
  [v5 setObject:v14 forKeyedSubscript:MRGroupSessionEligibilityStatusUserInfoKey];

  v15 = _MRLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A4B60(v11, v9);
  }

  v16 = +[MRDMediaRemoteServer server];
  v17 = _MRGroupSessionEligibilityDidChangeNotification;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004F694;
  v18[3] = &unk_1004B7038;
  v19 = *v9;
  [v16 postClientNotificationNamed:v17 userInfo:v5 predicate:v18];
}

BOOL sub_10004FAF8(id a1, MRDMediaRemoteClient *a2, NSDictionary *a3, id *a4)
{
  v4 = a2;
  v5 = [(MRDMediaRemoteClient *)v4 bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  if (IsSystemMediaApplication)
  {
    v7 = +[MRUserSettings currentSettings];
    [v7 nowPlayingUIWakingPlayerEventAssertionDuration];
    [(MRDMediaRemoteClient *)v4 takeAssertion:7 forReason:@"MediaRemoteLocalMusicIdentityChanged" duration:?];
  }

  return IsSystemMediaApplication;
}

id sub_1000500E0(uint64_t a1)
{
  v6[0] = kMREventNearbyNotificationTypeProximityCard;
  v5[0] = kMREventNearbyNotificationTypeKey;
  v5[1] = kMREventSessionCreatedRouteKey;
  v1 = [*(a1 + 32) hostInfo];
  v2 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v1 routeType]);
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

BOOL sub_100050328(id a1, MRDMediaRemoteClient *a2, NSDictionary *a3, id *a4)
{
  v4 = a2;
  v5 = sub_100007AC4(v4);
  if (v5)
  {
    v6 = +[MRUserSettings currentSettings];
    [v6 nowPlayingUIWakingPlayerEventAssertionDuration];
    [(MRDMediaRemoteClient *)v4 takeAssertion:7 forReason:@"MediaRemoteActiveGroupSessionStateChanged" duration:?];
  }

  return v5;
}

BOOL sub_1000505E4(id a1, MRDMediaRemoteClient *a2, NSDictionary *a3, id *a4)
{
  v4 = a2;
  v5 = sub_100007AC4(v4);
  if (v5)
  {
    v6 = +[MRUserSettings currentSettings];
    [v6 nowPlayingUIWakingPlayerEventAssertionDuration];
    [(MRDMediaRemoteClient *)v4 takeAssertion:7 forReason:@"MediaRemoteLocalGroupSessionEligibilityStatusChanged" duration:?];
  }

  return v5;
}

void sub_1000511A4(uint64_t a1)
{
  v2 = [*(a1 + 32) isAsserting];
  v3 = _MRLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Stop timer elapsed but there are group session assertions - not stopping", v5, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Stop timer elapsed with no assertions remaining - stopping", buf, 2u);
    }

    [*(a1 + 40) stop];
  }
}

void sub_100051724(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100051A0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] <%p> Server proxy error %@.", &v6, 0x16u);
  }
}

void sub_100051BB0(uint64_t a1)
{
  v4 = [*(a1 + 32) transportParticipants:*(a1 + 40) forSession:*(a1 + 48)];
  v2 = [*(a1 + 32) client];
  v3 = [*(a1 + 48) identifier];
  [v2 session:v3 didUpdateParticipants:v4];
}

void sub_100051D10(uint64_t a1)
{
  v4 = [*(a1 + 32) client];
  v2 = [*(a1 + 40) identifier];
  v3 = [NSSet setWithArray:*(a1 + 48)];
  [v4 session:v2 didUpdateMembers:v3];
}

void sub_100051E58(uint64_t a1)
{
  [*(a1 + 32) removeObserver:*(a1 + 40)];
  v4 = [*(a1 + 40) client];
  v2 = [*(a1 + 32) identifier];
  v3 = [NSError msv_errorWithDomain:MRGroupSessionError code:1 debugDescription:@"Session state changed to invalidated."];
  [v4 session:v2 didInvalidateWithError:v3];
}

void sub_100051FDC(id *a1)
{
  v2 = [a1[4] msv_compactMap:&stru_1004B7160];
  v5 = [NSSet setWithArray:v2];

  v3 = [a1[5] client];
  v4 = [a1[6] identifier];
  [v3 session:v4 didUpdatePendingParticipants:v5];
}

id sub_100052090(id a1, MRDGroupSessionParticipant *a2)
{
  v2 = a2;
  v3 = [(MRDGroupSessionParticipant *)v2 identity];

  if (v3)
  {
    v4 = [MRCodableGroupSessionParticipant alloc];
    v5 = [(MRDGroupSessionParticipant *)v2 identifier];
    v6 = [(MRDGroupSessionParticipant *)v2 identity];
    v7 = [v4 initWithIdentifier:v5 identity:v6 connected:0 guest:-[MRDGroupSessionParticipant guest](v2 hidden:{"guest"), -[MRDGroupSessionParticipant hidden](v2, "hidden")}];

    [v7 setPending:1];
  }

  else
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Dropping participant with no identity for transport: %@", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

void sub_1000522D0(uint64_t a1)
{
  v3 = [*(a1 + 32) client];
  v2 = [*(a1 + 40) identifier];
  [v3 session:v2 didUpdateSynchronizedMetadata:*(a1 + 48)];
}

void sub_1000523F4(uint64_t a1)
{
  v3 = [*(a1 + 32) client];
  v2 = [*(a1 + 40) identifier];
  [v3 session:v2 didChangeState:1];
}

void sub_100052518(uint64_t a1)
{
  v3 = [*(a1 + 32) client];
  v2 = [*(a1 + 40) identifier];
  [v3 session:v2 didChangeState:3];
}

void sub_10005263C(uint64_t a1)
{
  if ([*(a1 + 32) type])
  {
    v2 = [*(a1 + 32) client];
    [v2 discoveredSessionsDidChange:*(a1 + 40)];
  }
}

void sub_100052790(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  v3 = *(a1 + 32);
  if (v2)
  {
    v5 = [v3 client];
    [v5 activeSessionDidChange:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 40);

    [v3 reevaluatePendingStateFromSession:v4];
  }
}

void sub_1000528A0(uint64_t a1)
{
  if ([*(a1 + 32) type])
  {
    v2 = [*(a1 + 32) client];
    [v2 activeSessionDidChange:0];
  }
}

void sub_1000529E4(uint64_t a1)
{
  if ([*(a1 + 32) type])
  {
    v2 = [*(a1 + 32) client];
    [v2 activeSessionDidChange:*(a1 + 40)];
  }
}

void sub_100052ADC(uint64_t a1)
{
  if ([*(a1 + 32) type])
  {
    v2 = [*(a1 + 32) client];
    [v2 activeSessionDidChange:0];
  }
}

void sub_100052C30(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  v3 = *(a1 + 32);
  if (v2)
  {
    v5 = [v3 client];
    [v5 activeSessionDidChange:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 40);

    [v3 reevaluatePendingStateFromSession:v4];
  }
}

void sub_1000532A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000532F0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 7);
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003A4F84(a1, v4);
    }

    [a1[5] removeObserver:v3];
    v5 = [v3 client];
    v6 = [a1[6] identifier];
    v7 = [NSError msv_errorWithDomain:MRGroupSessionError code:1 debugDescription:@"Timed out waiting for session to be joined."];
    [v5 session:v6 didInvalidateWithError:v7];
  }
}

id sub_1000535CC(id a1, MRDGroupSessionParticipant *a2)
{
  v2 = a2;
  v3 = [(MRDGroupSessionParticipant *)v2 identity];

  if (v3)
  {
    v4 = [MRCodableGroupSessionParticipant alloc];
    v5 = [(MRDGroupSessionParticipant *)v2 identifier];
    v6 = [(MRDGroupSessionParticipant *)v2 identity];
    v7 = [v4 initWithIdentifier:v5 identity:v6 connected:0 guest:-[MRDGroupSessionParticipant guest](v2 hidden:{"guest"), -[MRDGroupSessionParticipant hidden](v2, "hidden")}];

    [v7 setPending:1];
  }

  else
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Dropping participant with no identity for transport: %@", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

void sub_1000543A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000543C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identity];

  if (v4)
  {
    v5 = [MRCodableGroupSessionParticipant alloc];
    v6 = [v3 identifier];
    v7 = [v3 identity];
    v8 = [v5 initWithIdentifier:v6 identity:v7 connected:objc_msgSend(v3 guest:"connected") hidden:{objc_msgSend(v3, "guest"), objc_msgSend(v3, "hidden")}];

    v9 = [v3 identifier];
    v10 = [*(a1 + 32) identifier];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      [v8 setLocal:1];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v12 = [v3 identifier];
    v13 = [*(a1 + 40) identifier];
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      [v8 setHost:1];
    }
  }

  else
  {
    v15 = _MRLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Dropping participant with no identity for transport: %@", &v17, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

void sub_100054BC4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [[MRCommandResult alloc] initWithHandlerStatuses:&off_1004E0E38 sendError:0];
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Yielding AVRCP command to callCenterHandler", buf, 2u);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, v3);
    }
  }

  else
  {
    v6 = [NSString alloc];
    v7 = [*(a1 + 32) commandID];
    v3 = [v6 initWithFormat:@"com.apple.mediaremote.remotecontrol.%@", v7];

    v8 = [v3 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, *(a1 + 56), 0);
    v11 = dispatch_queue_create(v8, v10);

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100054DA0;
    block[3] = &unk_1004B71F8;
    v13 = *(a1 + 32);
    v12 = v13.i64[0];
    v15 = vextq_s8(v13, v13, 8uLL);
    v16 = *(a1 + 48);
    dispatch_async(v11, block);
  }
}

void sub_100055164(uint64_t a1, void *a2)
{
  v34 = a2;
  kdebug_trace();
  v36 = a1;
  v3 = [*(a1 + 32) optionValueForKey:kMRMediaRemoteOptionDirectUserInteraction];
  v4 = [v3 BOOLValue];

  v33 = [v34 error];
  v5 = [v33 domain];
  if (![v5 isEqualToString:kMRMediaRemoteFrameworkErrorDomain])
  {
    goto LABEL_4;
  }

  v6 = [v33 code] == 46;

  if ((v6 & v4) == 1)
  {
    v7 = *(v36 + 40);
    v5 = MRLocalizedString();
    v8 = MRLocalizedString();
    v9 = MRLocalizedString();
    v10 = [v7 _onQueue_presentDialogWithTitle:v5 message:v8 defaultButtonTitle:v9 alternateButtonTitle:0 completion:0];

LABEL_4:
  }

  v32 = [v34 playerPath];
  if (!v33 && v32)
  {
    v31 = [*(v36 + 40) _effectiveContextIDForCommand:*(v36 + 32)];
    if (v31 && [*(v36 + 40) _isCommandCacheCreating:{objc_msgSend(*(v36 + 32), "commandType")}])
    {
      *v49 = 0;
      v50 = v49;
      v51 = 0x3032000000;
      v52 = sub_100034FB0;
      v53 = sub_10003599C;
      v54 = 0;
      v41 = _NSConcreteStackBlock;
      v42 = 3221225472;
      v43 = sub_1000556F4;
      v44 = &unk_1004B7248;
      v11 = v32;
      v45 = v11;
      v12 = v31;
      v13 = *(v36 + 40);
      v35 = v12;
      v46 = v12;
      v47 = v13;
      v48 = v49;
      msv_dispatch_sync_on_queue();
      v14 = [*(v50 + 5) completionBlockDictionary];
      v15 = [v14 count] == 0;

      if (!v15)
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v16 = [*(v50 + 5) completionBlockDictionary];
        v17 = [v16 countByEnumeratingWithState:&v37 objects:v59 count:16];
        if (v17)
        {
          v18 = *v38;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v38 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v37 + 1) + 8 * i);
              v21 = [*(v50 + 5) commandDictionary];
              v22 = [v21 objectForKeyedSubscript:v20];
              v23 = [v22 mutableCopy];

              [v23 setPlayerPath:v11];
              [v23 setCommandType:{objc_msgSend(v20, "unsignedIntValue")}];
              v24 = _MRLogForCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v56 = v11;
                v57 = 2114;
                v58 = v35;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Sending cachable command to player path %{public}@ for context %{public}@.", buf, 0x16u);
              }

              v25 = *(v36 + 40);
              v26 = [*(v50 + 5) completionBlockDictionary];
              v27 = [v26 objectForKeyedSubscript:v20];
              [v25 _forwardCommand:v23 completion:v27];
            }

            v17 = [v16 countByEnumeratingWithState:&v37 objects:v59 count:16];
          }

          while (v17);
        }
      }

      _Block_object_dispose(v49, 8);
    }
  }

  if (*(v36 + 48))
  {
    v28 = _MRLogForCategory();
    v29 = [*(v36 + 32) commandID];
    v30 = [v29 hash];

    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *v49 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, v30, "SendCommandDaemon", "", v49, 2u);
    }

    (*(*(v36 + 48) + 16))();
  }
}

void sub_1000556C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000556F4(void *a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v10 = 138543618;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Caching resolved player path %{public}@ for context %{public}@.", &v10, 0x16u);
  }

  v5 = [*(a1[6] + 64) objectForKeyedSubscript:a1[5]];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(a1[7] + 8) + 40))
  {
    v8 = a1[4];
    v9 = [*(a1[6] + 64) objectForKeyedSubscript:a1[5]];
    [v9 setPlayerPath:v8];
  }

  else
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1003A5134();
    }
  }
}

void sub_100055830(uint64_t a1)
{
  v2 = objc_alloc_init(MRDRedirectionCacheEntry);
  v3 = +[NSMutableDictionary dictionary];
  [(MRDRedirectionCacheEntry *)v2 setCommandDictionary:v3];

  v4 = +[NSMutableDictionary dictionary];
  [(MRDRedirectionCacheEntry *)v2 setCompletionBlockDictionary:v4];

  [*(*(a1 + 32) + 64) setObject:v2 forKeyedSubscript:*(a1 + 40)];
  v5 = dispatch_time(0, 60000000000);
  v6 = *(*(a1 + 32) + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100055954;
  v9[3] = &unk_1004B68F0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  dispatch_after(v5, v6, v9);
}

id sub_100055954(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Expiring player path for context %{public}@.", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 64) setObject:0 forKeyedSubscript:*(a1 + 32)];
}

void sub_100055A10(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
  v3 = _MRLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v22 = 138543362;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got a cacheable command from assistant, context: %{public}@.", &v22, 0xCu);
    }

    v6 = [v2 playerPath];

    if (v6)
    {
      v3 = [v2 playerPath];
      if (v3)
      {
        [*(a1 + 56) setPlayerPath:v3];
        v7 = _MRLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [*(a1 + 56) playerPath];
          v22 = 138543362;
          v23 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Redirecting to cached path: %{public}@", &v22, 0xCu);
        }
      }
    }

    else
    {
      v10 = _MRLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v22 = 138543362;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding command to assistant cache, context: %{public}@.", &v22, 0xCu);
      }

      v12 = [v2 completionBlockDictionary];
      v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 48) commandType]);
      v3 = [v12 objectForKeyedSubscript:v13];

      if (v3)
      {
        v14 = [[NSError alloc] initWithMRError:137];
        v15 = [[MRCommandResult alloc] initWithError:v14];
        (*(v3 + 16))(v3, v15);
      }

      v16 = *(a1 + 48);
      v17 = [v2 commandDictionary];
      v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 48) commandType]);
      [v17 setObject:v16 forKeyedSubscript:v18];

      v19 = objc_retainBlock(*(a1 + 64));
      v20 = [v2 completionBlockDictionary];
      v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 48) commandType]);
      [v20 setObject:v19 forKeyedSubscript:v21];

      *(*(*(a1 + 72) + 8) + 24) = 1;
    }
  }

  else if (v4)
  {
    v9 = *(a1 + 40);
    v22 = 138543362;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No assistant cache active, context: %{public}@.", &v22, 0xCu);
  }
}

void sub_100055FBC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100056090;
    block[3] = &unk_1004B72C0;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void sub_1000560A8(id *a1, int a2)
{
  if (a2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [a1[4] commandID];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Command <%{public}@> ignored because of device state", &buf, 0xCu);
    }

    (*(a1[7] + 2))();
  }

  else
  {
    v5 = dispatch_group_create();
    v6 = [NSString alloc];
    v7 = [a1[4] commandID];
    v8 = [v6 initWithFormat:@"com.apple.mediaremote.broadcastcommand.%@", v7];
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);

    *&buf = 0;
    *(&buf + 1) = &buf;
    v65 = 0x2020000000;
    v66 = 0;
    v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(a1[5], "count")}];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = a1[5];
    v13 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v13)
    {
      v14 = *v58;
      v36 = *v58;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v58 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v57 + 1) + 8 * i);
          v38 = [a1[4] mutableCopy];
          v17 = [a1[6] _createBroadcastCommandPlayerPathForClient:v16];
          [v38 setPlayerPath:v17];

          dispatch_group_enter(v5);
          v18 = _MRLogForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v13;
            v20 = v12;
            v21 = v5;
            v22 = v11;
            v23 = [a1[4] commandID];
            v24 = [v16 bundleIdentifier];
            *v61 = 138543618;
            *&v61[4] = v23;
            *&v61[12] = 2112;
            *&v61[14] = v24;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Broadcasting command <%{public}@> to client: <%@>", v61, 0x16u);

            v11 = v22;
            v5 = v21;
            v12 = v20;
            v13 = v19;
            v14 = v36;
          }

          v25 = a1[6];
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_100056670;
          v50[3] = &unk_1004B7338;
          p_buf = &buf;
          v51 = v11;
          v26 = v12;
          v27 = a1[6];
          v52 = v26;
          v53 = v27;
          v54 = v16;
          v55 = v5;
          [v25 _sendRemoteControlCommand:v38 toDestinationClient:v16 withLegacyCompletion:v50];
        }

        v13 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v13);
    }

    *v61 = 0;
    *&v61[8] = v61;
    *&v61[16] = 0x2020000000;
    v62 = 0;
    v28 = +[MRUserSettings currentSettings];
    [v28 broadcastCommandWaitDuration];
    v30 = v29;

    v31 = [MSVTimer alloc];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000567A4;
    v44[3] = &unk_1004B7360;
    v48 = v61;
    v45 = a1[4];
    v49 = v30;
    v47 = a1[7];
    v32 = v12;
    v46 = v32;
    v33 = [v31 initWithInterval:0 repeats:v11 queue:v44 block:v30];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000568AC;
    block[3] = &unk_1004B7388;
    v42 = v61;
    v34 = a1[7];
    v43 = &buf;
    v40 = v32;
    v41 = v34;
    v35 = v32;
    dispatch_group_notify(v5, v11, block);

    _Block_object_dispose(v61, 8);
    _Block_object_dispose(&buf, 8);
  }
}

void sub_100056670(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 72) + 8);
  if (*(v6 + 24))
  {
    *(v6 + 24) = a2;
  }

  v8 = *(a1 + 40);
  v9 = v5;
  v7 = v5;
  msv_dispatch_sync_on_queue();
  dispatch_group_leave(*(a1 + 64));
}

void sub_100056748(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _createBroadcastCommandResponseFromStatuses:*(a1 + 48) forClient:*(a1 + 56)];
  [v1 addObject:v2];
}

uint64_t sub_1000567A4(uint64_t result)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = _MRLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(v1 + 32) commandID];
      v4 = *(v1 + 64);
      v5 = 138543618;
      v6 = v3;
      v7 = 2048;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Broadcast command %{public}@ timedout after %lf seconds", &v5, 0x16u);
    }

    *(*(*(v1 + 56) + 8) + 24) = 1;
    return (*(*(v1 + 48) + 16))();
  }

  return result;
}

void *sub_1000568AC(void *result)
{
  v1 = *(result[6] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(result[5] + 16))(result[5], *(*(result[7] + 8) + 24), result[4]);
  }

  return result;
}

void sub_100056980(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = *(*(a1 + 32) + 32);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100056B90;
  v16 = &unk_1004B73D8;
  v17 = *(a1 + 40);
  v4 = v2;
  v18 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:&v13];
  if ([v4 count])
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 count];
      v7 = *(a1 + 40);
      *buf = 134218242;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing %lld context(s) for client %@", buf, 0x16u);
    }
  }

  [*(*(a1 + 32) + 32) removeObjectsForKeys:v4];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) commandClientsRestriction];
  v10 = [v9 requester];

  if (v8 == v10)
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[RestrictedCommandClients Mode] %@ is gone, disabling restricted mode", buf, 0xCu);
    }

    [*(a1 + 32) setCommandClientsRestriction:0];
  }
}

void sub_100056B90(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 originatingAppDisplayID];
  v6 = [*(a1 + 32) bundleIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [*(a1 + 40) addObject:v8];
  }
}

void sub_100056E5C(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [*(a1 + 32) requestInfo];
  v4 = [v2 destinationPlayerPath];
  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 nowPlayingServer];
  v7 = [v4 origin];
  v8 = [v6 originClientForOrigin:v7];

  v9 = [v8 createNewApplicationConnectionCallback];
  if (v9)
  {
    v10 = [[MRDApplicationConnection alloc] initWithContext:v2];
    [(MRDApplicationConnection *)v10 setClientBoundMessageHandler:*(a1 + 48)];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100057048;
    v15[3] = &unk_1004B7428;
    v15[4] = *(a1 + 40);
    v16 = v10;
    v18 = *(a1 + 56);
    v17 = v2;
    v11 = v9[2];
    v12 = v10;
    v11(v9, v12, v3, v15);
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = [[NSError alloc] initWithMRError:14];
    (*(v13 + 16))(v13, 0, v14);
  }
}

void sub_100057048(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057150;
  block[3] = &unk_1004B7400;
  v12 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = *(a1 + 32);
  v10 = v7;
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v6;
  v13 = v10;
  v14 = v8;
  v9 = v3;
  dispatch_async(v4, block);
}

void sub_100057150(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 invalidate:?];
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    [v2 activate];
    (*(*(a1 + 64) + 16))();
    v5 = *(a1 + 40);
    v7 = [*(a1 + 48) applicationConnections];
    v6 = [*(a1 + 56) identifier];
    [v7 setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_1000572B4(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationConnections];
  v3 = [*(a1 + 40) context];
  v4 = [v3 identifier];
  v5 = [v2 objectForKeyedSubscript:v4];

  [v5 handleClientBoundMessage:*(a1 + 40)];
}

void sub_1000573E8(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationConnections];
  v3 = [*(a1 + 40) context];
  v4 = [v3 identifier];
  v5 = [v2 objectForKeyedSubscript:v4];

  [v5 handleServerBoundMessage:*(a1 + 40)];
}

void sub_10005751C(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationConnections];
  v3 = [*(a1 + 40) context];
  v4 = [v3 identifier];
  v6 = [v2 objectForKeyedSubscript:v4];

  v5 = [*(a1 + 40) error];
  [v6 invalidate:v5];
}

id sub_100057820(uint64_t a1)
{
  [*(a1 + 32) setEnqueuedCommands:*(*(a1 + 40) + 16)];
  v2 = [*(*(a1 + 40) + 32) allValues];
  [*(a1 + 32) setRemoteControlContexts:v2];

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 104);

  return [v3 setCommandClientsRestriction:v4];
}

MRDMutableRemoteControlCommand *sub_100057A98(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = MRCreatePlayerPathFromXPCMessage();
  uint64 = xpc_dictionary_get_uint64(v4, "MRXPC_COMMAND_KEY");
  v7 = MRCreateDataFromXPCMessage();

  v8 = [v5 copy];
  if ([v3 entitlements] & 2) != 0 || (sub_100060D94(v5))
  {
    v9 = 0;
  }

  else
  {
    [v8 setClient:0];
    [v8 setPlayer:0];
    v9 = 1;
  }

  v10 = +[MRDMediaRemoteServer server];
  v11 = [v10 nowPlayingServer];
  v12 = [v11 resolveExistingPlayerPath:v8];

  v13 = [MRDMutableRemoteControlCommand alloc];
  v14 = [v3 bundleIdentifier];
  v15 = [(MRDRemoteControlCommand *)v13 initWithCommandType:uint64 playerPath:v12 unresolvedPlayerPath:v8 senderAppDisplayID:v14 optionsData:v7];

  if (v9)
  {
    v16 = [NSString alloc];
    v17 = [v3 bundleIdentifier];
    v18 = [(MRDRemoteControlCommand *)v15 commandID];
    v19 = [v16 initWithFormat:@"Client <%@> missing entitlement needed to send command <%@> to arbitrary apps. Sending to NowPlayingApp instead of <%@>.", v17, v18, v5];

    v20 = _MRLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1003A5174();
    }

    v21 = _MRLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1003A51E4();
    }
  }

  return v15;
}

void sub_100057CD0(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v4)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (reply)
    {
      v6 = _MRLogForCategory();
      v7 = [*(a1 + 40) commandID];
      v8 = [v7 hash];

      if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        *v9 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SendCommandXPCResultFromDaemon", "", v9, 2u);
      }

      MRAddCommandResultToXPCMessage();
      xpc_connection_send_message(v4, reply);
    }
  }
}

void sub_100057F50(uint64_t a1, unsigned int a2, void *a3)
{
  v9 = a3;
  v5 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v5)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    v7 = reply;
    if (reply)
    {
      xpc_dictionary_set_uint64(reply, "MRXPC_COMMAND_SEND_ERROR_KEY", a2);
      if (v9)
      {
        v8 = MRCreateDataFromArray();
        MRAddDataToXPCMessage();
      }

      xpc_connection_send_message(v5, v7);
    }
  }
}

void sub_100058138(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteUIService];
  v3 = [v2 isValid];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) bundleIdentifier];
    v9 = sub_100058224(v4, v5);

    v6 = [MRDMediaRemoteUIService alloc];
    v7 = [*(a1 + 32) bundleIdentifier];
    v8 = [(MRDMediaRemoteUIService *)v6 initWithClientBundleIdentifier:v7 configurationData:v9 endpoint:*(a1 + 48)];
    [*(a1 + 32) setRemoteUIService:v8];
  }
}

id sub_100058224(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 routingServer];
  v7 = [v6 recommendationController];
  v8 = [v7 _updateMediaControlsBlob:v4 sender:v3];

  return v8;
}

void sub_100058430(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteUIService];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000584D0;
  v3[3] = &unk_1004B6FC0;
  v4 = *(a1 + 40);
  [v2 presentWithCompletion:v3];
}

void sub_1000584D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100058568;
  v6[3] = &unk_1004B6E08;
  v7 = v3;
  v5 = v3;
  sub_100008278(v4, v6);
}

void sub_10005878C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableArray);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100058884;
  v9[3] = &unk_1004B7310;
  v9[4] = v6;
  v10 = v5;
  v11 = *(a1 + 48);
  v12 = v4;
  v8 = v4;
  dispatch_sync(v7, v9);
  MRAddPropertyListToXPCMessage();
}

void sub_100058884(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        if (![*(a1 + 48) isResolved] || (objc_msgSend(v10, "playerPath"), v11 = objc_claimAutoreleasedReturnValue(), v12 = MRNowPlayingPlayerPathEqualToPlayerPath(), v11, v12))
        {
          v13 = *(a1 + 56);
          v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 commandType]);
          [v13 addObject:v14];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *(*(a1 + 32) + 24);
  v16 = [*(a1 + 40) bundleIdentifier];
  LODWORD(v15) = [v15 containsObject:v16];

  if (v15)
  {
    [*(a1 + 56) addObject:&off_1004E04E8];
  }
}

void sub_100058DA4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 error];
  MRAddErrorToXPCMessage();
}

void sub_100058DFC(uint64_t a1)
{
  if (!*(*(a1 + 32) + 24))
  {
    v2 = objc_alloc_init(NSMutableSet);
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;
  }

  if (*(a1 + 40))
  {
    v5 = *(*(a1 + 32) + 24);

    [v5 addObject:?];
  }
}

void sub_100058E70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 32);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10005927C;
    v42[3] = &unk_1004B6E08;
    v43 = v6;
    sub_100008278(v8, v42);
    v9 = v43;
  }

  else
  {
    v10 = +[MRDMediaRemoteServer server];
    v11 = [v10 nowPlayingServer];
    v9 = [v11 queryExistingPlayerPathForXPCMessage:*(a1 + 32) forClient:*(a1 + 40)];

    v12 = [v9 playerPath];
    MRAddPlayerPathToXPCMessage();

    v13 = MRCreatePlayerPathFromXPCMessage();
    v14 = +[MRDMediaRemoteServer server];
    v15 = [v14 nowPlayingServer];
    v16 = [v13 origin];
    v17 = [v15 originClientForOrigin:v16];

    v18 = [v17 activeNowPlayingClient];
    v19 = [v18 activePlayerClient];

    v20 = [v9 playerClient];
    v21 = v20;
    if (v20 == v19)
    {
    }

    else
    {
      v22 = [v19 isPlaying];

      if (v22)
      {
        v32 = v13;
        v23 = [*(a1 + 48) startEvent:@"SendPause" role:3];
        v24 = *(a1 + 48);
        v25 = [v19 playerPath];
        v26 = [v25 description];
        [v24 addEventInput:v26 withKey:@"playerPath" toEventID:v23];

        v44 = kMRMediaRemoteOptionRemoteControlInterfaceIdentifier;
        v45 = @"Pause because migration";
        [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v27 = [v19 playerPath];
        v36 = _NSConcreteStackBlock;
        v37 = 3221225472;
        v38 = sub_10005928C;
        v39 = &unk_1004B7530;
        v40 = *(a1 + 48);
        v41 = v23;
        v13 = v32;
        MRMediaRemoteSendCommandToPlayer();
      }
    }

    v28 = [*(a1 + 48) startEvent:@"BlessApp" role:3];
    v29 = [v5 bundleIdentifier];
    sub_10019FC4C(v29);

    [*(a1 + 48) endEventWithID:v28];
    LODWORD(v28) = [*(a1 + 48) startEvent:@"SendPlaybackSession" role:3];
    MRAddProtobufToXPCMessage();
    v30 = *(a1 + 32);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10005929C;
    v33[3] = &unk_1004B7558;
    v35 = v28;
    v31 = *(a1 + 72);
    v33[4] = *(a1 + 64);
    v34 = v31;
    [v5 relayXPCMessage:v30 andReply:1 resultCallback:v33];
  }
}

void sub_10005929C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MRCreateProtobufFromXPCMessage();
  v5 = [v4 request];
  [v5 endEventWithID:*(a1 + 48)];

  MRAddProtobufToXPCMessage();
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100059378;
  v9[3] = &unk_1004B68F0;
  v9[4] = v7;
  v10 = v6;
  dispatch_async(v8, v9);
}

void sub_100059384(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = [[NSError alloc] initWithMRError:4 description:@"No bundleID provided"];
  MRAddClientErrorToXPCMessage();
}

void sub_100059B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100059BA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && notify_is_valid_token(WeakRetained[14]))
  {
    notify_cancel(WeakRetained[14]);
  }

  sub_100008278(*(a1 + 32), &stru_1004B75E0);
}

void sub_100059C1C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = [[MRAudioFadeResponseMessage alloc] initWithFadeDuration:1000 error:0];
  MRAddProtobufToXPCMessage();
}

void sub_100059C8C(id *a1, int a2)
{
  if ([a1[4] disarm])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    if (WeakRetained)
    {
      state64 = 0;
      if (notify_get_state(a2, &state64))
      {
        v5 = _MRLogForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1003A5258();
        }
      }

      v6 = dispatch_time(0, 1000000 * state64);
      v7 = WeakRetained[1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100059DC4;
      block[3] = &unk_1004B7650;
      v9 = a1[5];
      v10 = state64;
      dispatch_after(v6, v7, block);
    }

    notify_cancel(a2);
  }
}

uint64_t sub_100059DC4(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100059E38;
  v3[3] = &unk_1004B7628;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return sub_100008278(v1, v3);
}

void sub_100059E38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRAudioFadeResponseMessage alloc] initWithFadeDuration:*(a1 + 32) error:0];
  MRAddProtobufToXPCMessage();
}

void sub_100059EB4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:0];
  MRAddProtobufToXPCMessage();
}

uint64_t sub_10005A2D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToData:*(a1 + 32)])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToData:*(a1 + 40)] ^ 1;
  }

  return v4;
}

void sub_10005A324(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allObjects];
  v5 = MRCreateDataFromArray();

  MRAddDataToXPCMessage();
}

void sub_10005A554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005A56C(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_createAndActivateConnection:*(a1 + 40) forClient:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10005A5BC(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    v3 = a2;
    [v2 code];
    MRAddErrorToXPCMessage();
  }
}

void sub_10005A710(uint64_t a1)
{
  v4 = [*(a1 + 32) applicationConnections];
  v2 = [*(a1 + 40) identifier];
  v3 = [v4 objectForKeyedSubscript:v2];
  [v3 invalidate:*(a1 + 48)];
}

void sub_10005AA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005AA60(uint64_t a1)
{
  v6 = [*(a1 + 32) applicationConnections];
  v2 = [*(a1 + 40) identifier];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10005AAE4(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    v3 = a2;
    [v2 code];
    MRAddErrorToXPCMessage();
  }
}

void sub_10005AF34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_10005AF54(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v5 type];
    v7 = MRCreateXPCMessage();
    MRAddProtobufToXPCMessage();
    [WeakRetained relayXPCMessage:v7 andReply:0];
  }

  else
  {
    v7 = [[NSError alloc] initWithMRError:179];
    [v8 invalidate:v7];
  }
}

void sub_10005B03C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B11C;
  block[3] = &unk_1004B77E8;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_10005B11C(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationConnections];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    [v4 setType:0];
    if (*(a1 + 48))
    {
      [v4 invalidate:?];
    }

    else
    {
      [v4 setLocalInvalidationXPCClient:*(a1 + 56)];
      [v4 activate];
    }
  }

  else
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 64);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlServer] createAndActivateConnection - connection: %@ lost before activation", &v7, 0xCu);
    }
  }
}

void sub_10005B544(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationConnections];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

id *sub_10005B610(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] _clearAllQueuedCommandsForReason:@"phone call began"];
  }

  return result;
}

void sub_10005B81C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 64);
    v8 = [*(a1 + 32) appOptions];
    v6 = [*(a1 + 32) routeUID];
    if ([v6 length])
    {
      v9 = (v7 | 2) == 2;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = [*(a1 + 40) routingServer];
      [v10 pickCachedRouteWithUID:v6];
    }

    v11 = [*(a1 + 48) _resolvedLocalDeviceDestinationAppDisplayIdentifierForCommand:*(a1 + 32)];
    v12 = [*(a1 + 48) _destinationClientForRemoteControlCommand:*(a1 + 32)];
    if (v12 | v11)
    {
      v15 = v12;
LABEL_18:
      v18 = [*(a1 + 32) destinationAppDisplayID];
      if (v18)
      {
        v19 = v18;
        v20 = [*(a1 + 32) destinationAppDisplayID];
        v21 = [v11 isEqualToString:v20];

        if ((v21 & 1) == 0)
        {
          v22 = [[MRClient alloc] initWithProcessIdentifier:sub_10019FD60(v11) bundleIdentifier:v11];
          v23 = [MRPlayerPath alloc];
          v24 = +[MROrigin localOrigin];
          v25 = [v23 initWithOrigin:v24 client:v22 player:0];

          v26 = +[MRDMediaRemoteServer server];
          v27 = [v26 nowPlayingServer];

          v28 = [v27 resolveExistingPlayerPath:v25];
          if (v28)
          {
            [*(a1 + 32) setPlayerPath:v28];
          }
        }
      }

      v29 = [*(a1 + 32) shouldImplicitlyLaunchApplication];
      if (v15)
      {
        [*(a1 + 48) _sendRemoteControlCommand:*(a1 + 32) toDestinationClient:v15 withCompletion:*(a1 + 56)];
      }

      else if ((v29 | v8))
      {
        [*(a1 + 48) _enqueueCommand:*(a1 + 32) forApplication:v11 withCompletion:*(a1 + 56)];
      }

      else
      {
        v30 = [*(a1 + 32) unresolvedPlayerPath];
        v31 = [v30 client];

        v32 = _MRLogForCategory();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          if (v33)
          {
            v34 = *(a1 + 32);
            v39 = 138412290;
            v40 = v34;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No destination client can be found for command %@, and the option to launch the app was not included. Dropping command.", &v39, 0xCu);
          }

          v35 = *(a1 + 56);
          if (!v35)
          {
            goto LABEL_38;
          }

          v36 = 1;
        }

        else
        {
          if (v33)
          {
            v37 = *(a1 + 32);
            v39 = 138412290;
            v40 = v37;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No now playing client can be found for command %@, and the option to launch the app was not included. Dropping command.", &v39, 0xCu);
          }

          v35 = *(a1 + 56);
          if (!v35)
          {
            goto LABEL_38;
          }

          v36 = 18;
        }

        v38 = [MRCommandResult commandResultWithSendError:v36];
        (*(v35 + 16))(v35, v38);
      }

LABEL_38:

      goto LABEL_39;
    }

    v13 = [*(a1 + 40) nowPlayingServer];
    v14 = [v13 localActiveClientBundleIdentifier];
    if (!v14)
    {
      v16 = [v13 localOriginClient];
      v17 = [v16 nowPlayingDataSource];

      v11 = [v17 nowPlayingApplicationDisplayID];

      if (v11)
      {
        goto LABEL_17;
      }

      v14 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    }

    v11 = v14;
LABEL_17:
    v15 = [*(a1 + 40) clientForBundleIdentifier:v11];

    goto LABEL_18;
  }

  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v39 = 138543362;
    v40 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Command ignored because of device state: %{public}@", &v39, 0xCu);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = [MRCommandResult commandResultWithSendError:3 description:@"PhoneCall Active"];
    (*(v5 + 16))(v5, v6);
LABEL_39:
  }
}

void sub_10005BEAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 sendError];
  v5 = [v3 handlerReturnStatuses];

  (*(v2 + 16))(v2, v4, v5);
}

void sub_10005C124(uint64_t a1)
{
  v2 = [MRCommandResult commandResultWithSendError:20];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v2;
    (*(v3 + 16))();
    v2 = v4;
  }
}

void sub_10005C190(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) disarm])
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, v4);
    }
  }
}

void sub_10005C1F8(id *a1, int a2)
{
  if (a2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [a1[4] commandID];
      *buf = 138543362;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Command <%{public}@> ignored because of device state", buf, 0xCu);
    }

    v5 = a1[7];
    v6 = [MRCommandResult commandResultWithSendError:3 description:@"PhoneCall Active"];
    v5[2](v5, v6);
    goto LABEL_36;
  }

  v7 = [a1[5] commandClientsRestriction];

  if (!v7)
  {
LABEL_11:
    v14 = a1[4];
    v13 = a1[5];
    v15 = a1 + 4;
    v16 = a1[6];
    v80 = 0;
    v17 = [v13 _resolveCommandBeforeSend:v14 toClient:v16 error:&v80];
    v6 = v80;
    if (v6)
    {
      v18 = _MRLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1003A5364(a1 + 4);
      }

      v19 = a1[7];
      v20 = [MRCommandResult commandResultWithSendError:3 description:@"Processing error"];
      v19[2](v19, v20);

LABEL_35:
      goto LABEL_36;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v86 = sub_100034FB0;
    v87 = sub_10003599C;
    v88 = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = [*v15 nowPlayingAppStackEligible];
    if (*(v77 + 24) != 1)
    {
LABEL_30:
      v53 = _MRLogForCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [a1[6] bundleIdentifier];
        v55 = [a1[6] displayName];
        *v81 = 138543874;
        *&v81[4] = v17;
        *&v81[12] = 2114;
        *&v81[14] = v54;
        *&v81[22] = 2114;
        v82 = v55;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Sending command %{public}@ to %{public}@ (%{public}@).", v81, 0x20u);
      }

      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_10005D130;
      v61[3] = &unk_1004B7950;
      v56 = a1[6];
      v61[4] = a1[5];
      v62 = v17;
      v63 = a1[6];
      v65 = buf;
      v64 = a1[7];
      [v56 sendRemoteControlCommand:v62 withCompletionBlock:v61];
      v57 = [a1[5] _remoteControlContextForCommand:a1[4]];
      if (v57)
      {
        v58 = [a1[6] bundleIdentifier];
        v59 = [[MRDRoutedRemoteControlCommand alloc] initWithCommand:*v15 routedApp:v58];
        [v57 addRoutedCommand:v59];
      }

      _Block_object_dispose(&v76, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_35;
    }

    v26 = a1[4];
    v27 = a1[5];
    v28 = *(v27 + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005CBDC;
    block[3] = &unk_1004B78D8;
    block[4] = v27;
    v74 = v26;
    v75 = &v76;
    dispatch_sync(v28, block);
    if (*(v77 + 24) == 1)
    {
      v29 = +[MRDMediaRemoteServer server];
      v30 = [v29 nowPlayingServer];
      v31 = [v30 localActivePlayerClient];
      v32 = [v31 isPlaying];

      if (v32)
      {
        v33 = _MRLogForCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [*v15 commandID];
          *v81 = 138543874;
          *&v81[4] = @"sendRemoteControlCommand";
          *&v81[12] = 2114;
          *&v81[14] = v34;
          *&v81[22] = 2112;
          v82 = @"Device is already playing. Demoting nowPlayingAppStackPopEligible command to ineligible";
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", v81, 0x20u);
        }

        *(v77 + 24) = 0;
      }

      else if (v77[3])
      {
        goto LABEL_26;
      }
    }

    v35 = +[MRDMediaRemoteServer server];
    v36 = [v35 nowPlayingServer];
    v37 = [v36 localOriginClient];
    v38 = [v37 nowPlayingDataSource];

    [v38 popNowPlayingAppStack:0 forReason:6];
LABEL_26:

    if (v77[3])
    {
      v39 = _MRLogForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [*v15 commandID];
        *v81 = 138543874;
        *&v81[4] = @"sendRemoteControlCommand";
        *&v81[12] = 2114;
        *&v81[14] = v40;
        *&v81[22] = 2112;
        v82 = @"Sending nowPlayingAppStackPopEligible command...";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", v81, 0x20u);
      }

      *v81 = 0;
      *&v81[8] = v81;
      *&v81[16] = 0x3032000000;
      v82 = sub_100034FB0;
      v83 = sub_10003599C;
      v84 = 0;
      v41 = [MSVTimer alloc];
      v42 = +[MRUserSettings currentSettings];
      [v42 nowPlayingAppStackFailedPlayInterval];
      v44 = v43;
      v45 = dispatch_get_global_queue(0, 0);
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_10005CCF0;
      v69[3] = &unk_1004B7900;
      v71 = v81;
      v60 = *v15;
      v46 = *v15;
      v70 = vextq_s8(v60, v60, 8uLL);
      v72 = buf;
      v47 = [v41 initWithInterval:0 repeats:v45 queue:v69 block:v44];

      v48 = +[NSNotificationCenter defaultCenter];
      v49 = kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification;
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_10005CFA0;
      v66[3] = &unk_1004B7928;
      v66[4] = a1[5];
      v68 = v81;
      v50 = v47;
      v67 = v50;
      v51 = [v48 addObserverForName:v49 object:0 queue:0 usingBlock:v66];
      v52 = *(*&v81[8] + 40);
      *(*&v81[8] + 40) = v51;

      _Block_object_dispose(v81, 8);
    }

    goto LABEL_30;
  }

  v6 = objc_msgSend_auditToken(a1[6]);
  if (v6)
  {
    v8 = [a1[5] commandClientsRestriction];
    v9 = [v8 allowedAuditTokens];
    v10 = [v9 containsObject:v6];

    if (v10)
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a1[4];
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[RestrictedCommandClients Mode] Allowed command %@. Allow-listed.", buf, 0xCu);
      }

      goto LABEL_11;
    }
  }

  v21 = _MRLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a1[4];
    v23 = a1[6];
    *buf = 138412546;
    *&buf[4] = v22;
    *&buf[12] = 2112;
    *&buf[14] = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[RestrictedCommandClients Mode] Blocked command %@. %@ is not allow-listed", buf, 0x16u);
  }

  v24 = a1[7];
  v25 = [MRCommandResult commandResultWithSendError:3 description:@"RestrictedCommandClients Mode - Client not in allow list"];
  v24[2](v24, v25);

LABEL_36:
}

void sub_10005CB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v41 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10005CBDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 80) == 1)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) commandID];
      v5 = 138543874;
      v6 = @"sendRemoteControlCommand";
      v7 = 2114;
      v8 = v4;
      v9 = 2112;
      v10 = @"A previous nowPlayingAppStackPopEligible command already in progress. Demoting to ineligible";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v5, 0x20u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    *(v1 + 80) = 1;
  }
}

void sub_10005CCF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005CF38;
  v18[3] = &unk_1004B6958;
  v4 = *(a1 + 48);
  v18[4] = v2;
  v18[5] = v4;
  dispatch_async(v3, v18);
  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 nowPlayingServer];
  v7 = [v6 localActivePlayerClient];
  v8 = [v7 isPlaying];

  if (v8)
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) commandID];
      *buf = 138543874;
      v20 = @"sendRemoteControlCommand";
      v21 = 2114;
      v22 = v10;
      v23 = 2112;
      v24 = @"Something is already playing. Cancelling nowPlayingAppStackPop";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  else
  {
    v11 = *(a1 + 32);
    objc_sync_enter(v11);
    v9 = *(*(*(a1 + 56) + 8) + 40);
    objc_sync_exit(v11);

    if (v9)
    {
      v12 = [v9 error];

      if (v12)
      {
        v13 = 4;
      }

      else
      {
        v13 = 5;
      }
    }

    else
    {
      v13 = 3;
    }

    v14 = +[MRDMediaRemoteServer server];
    v15 = [v14 nowPlayingServer];
    v16 = [v15 localOriginClient];
    v17 = [v16 nowPlayingDataSource];

    [v17 popNowPlayingAppStack:1 forReason:v13];
  }
}

void sub_10005CF38(uint64_t a1)
{
  *(*(a1 + 32) + 80) = 0;
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_10005CFA0(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005D0C8;
    v13[3] = &unk_1004B6958;
    v8 = *(a1 + 48);
    v13[4] = v6;
    v13[5] = v8;
    dispatch_async(v7, v13);
    [*(a1 + 40) invalidate];
    v9 = +[MRDMediaRemoteServer server];
    v10 = [v9 nowPlayingServer];
    v11 = [v10 localOriginClient];
    v12 = [v11 nowPlayingDataSource];

    [v12 popNowPlayingAppStack:0 forReason:0];
  }
}

void sub_10005D0C8(uint64_t a1)
{
  *(*(a1 + 32) + 80) = 0;
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_10005D130(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _performCommandProcessingAfterSend:*(a1 + 40)];
  if ([v3 sendError])
  {
    [v3 sendError];
    v4 = MRMediaRemoteSendCommandErrorDescription();
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1003A5408(a1);
    }
  }

  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  objc_sync_exit(v6);
  (*(*(a1 + 56) + 16))();
}

void sub_10005D500(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [*(a1 + 32) _clearQueuedCommand:*(a1 + 40) forUnavailableApplicationWithDisplayID:*(a1 + 48)])
  {
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10005D8D0;
    v28 = &unk_1004B7978;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v29 = v4;
    v30 = v5;
    if (!sub_10005D8D0(&v25))
    {
LABEL_9:
      if (!*(a1 + 56))
      {
LABEL_26:

        goto LABEL_27;
      }

      v12 = [v3 userInfo];
      v9 = [v12 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if ([v9 code] == 4)
      {
        v13 = [v9 domain];
        v14 = [v13 isEqualToString:@"FBSOpenApplicationErrorDomain"];

        if (v14)
        {
          v15 = *(a1 + 56);
          v16 = 9;
LABEL_24:
          v11 = [MRCommandResult commandResultWithSendError:v16, v25, v26];
          (*(v15 + 16))(v15, v11);
          goto LABEL_25;
        }
      }

      if ([v9 code] != 5 || (objc_msgSend(v9, "domain"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", @"FBSOpenApplicationErrorDomain"), v17, !v18))
      {
        if ([v3 code] == 126 && (objc_msgSend(v3, "domain"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", kMRMediaRemoteFrameworkErrorDomain), v21, v22))
        {
          v15 = *(a1 + 56);
          v16 = 15;
        }

        else
        {
          v15 = *(a1 + 56);
          v16 = 4;
        }

        goto LABEL_24;
      }

      v19 = *(a1 + 56);
      v11 = [v9 localizedFailureReason];
      v20 = [MRCommandResult commandResultWithSendError:16 description:v11];
      (*(v19 + 16))(v19, v20);
LABEL_22:

LABEL_25:
      goto LABEL_26;
    }

    v6 = [MRDMediaRemoteServer server:v25];
    v7 = [v6 nowPlayingServer];
    v8 = [v7 localOriginClient];
    v9 = [v8 nowPlayingDataSource];

    [v9 popNowPlayingAppStack:1 forReason:1];
    v10 = [v9 topOfNowPlayingAppStack];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
      if (!v11)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    if (([v11 isEqualToString:*(a1 + 48)] & 1) == 0)
    {
      v20 = [*(a1 + 40) mutableCopy];
      [v20 setDestinationAppDisplayID:v11];
      v23 = _MRLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [*(a1 + 40) commandID];
        *buf = 138543874;
        v32 = @"sendRemoteControlCommand";
        v33 = 2114;
        v34 = v24;
        v35 = 2112;
        v36 = @"Failed to launch app, forwarding nowPlayingAppStackPopEligible command";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      [*(a1 + 32) _sendLocalCommand:v20 withCompletionHandler:*(a1 + 56)];
      goto LABEL_22;
    }

    goto LABEL_8;
  }

LABEL_27:
}

uint64_t sub_10005D8D0(uint64_t a1)
{
  result = [*(a1 + 32) nowPlayingAppStackEligible];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = +[MRUserSettings currentSettings];
    [v4 nowPlayingAppStackFailedPlayInterval];
    LOBYTE(v3) = [v3 _checkAndMaybeUpdateNowPlayingAppStackPopRateLimitingWithInterval:?];

    if (v3)
    {
      return 1;
    }

    else
    {
      v5 = _MRLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) commandID];
        v11 = 138543874;
        v12 = @"sendRemoteControlCommand";
        v13 = 2114;
        v14 = v6;
        v15 = 2112;
        v16 = @"nowPlayingAppStackPopEligible command recently sent. Ignoring due to rate limiting...";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v11, 0x20u);
      }

      v7 = +[MRDMediaRemoteServer server];
      v8 = [v7 nowPlayingServer];
      v9 = [v8 localOriginClient];
      v10 = [v9 nowPlayingDataSource];

      [v10 popNowPlayingAppStack:0 forReason:7];
      return 0;
    }
  }

  return result;
}

void sub_10005DD08(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    [*(a1[4] + 16) setObject:v3 forKey:a1[5]];
    v2 = v3;
  }

  v4 = v2;
  [v2 addObject:a1[6]];
}

void sub_10005DD88(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if ([v2 containsObject:*(a1 + 48)])
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = [v4 dateCreated];
      [v5 timeIntervalSinceNow];
      *buf = 138543618;
      v12 = v4;
      v13 = 2048;
      v14 = -v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing previously queued command %{public}@ because it timed out (enqueued for %f seconds)", buf, 0x16u);
    }

    v7 = [*(a1 + 48) _completionHandler];
    v8 = v7;
    if (v7)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005DF18;
      block[3] = &unk_1004B79A0;
      v10 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }

    [v2 removeObject:*(a1 + 48)];
  }
}

void sub_10005DF18(uint64_t a1)
{
  v2 = [MRCommandResult commandResultWithSendError:17];
  (*(*(a1 + 32) + 16))();
}

void sub_10005E1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005E228(uint64_t a1)
{
  v7 = [*(a1 + 32) bundleIdentifier];
  v2 = [*(*(a1 + 40) + 16) objectForKey:?];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 copy];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(*(a1 + 40) + 16) removeObjectForKey:v7];
  }
}

void sub_10005E3BC(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  if ([v2 containsObject:a1[6]])
  {
    *(*(a1[7] + 8) + 24) = 1;
    [v2 removeObject:a1[6]];
  }
}

id sub_10005E4CC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  if (result)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(*(a1 + 32) + 16);
      *buf = 138543618;
      v32 = v4;
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing queued commands because %{public}@ %@", buf, 0x16u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [*(*(a1 + 32) + 16) allValues];
    v16 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v15 = *v26;
      do
      {
        v6 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = v6;
          v7 = *(*(&v25 + 1) + 8 * v6);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v22;
            do
            {
              v12 = 0;
              do
              {
                if (*v22 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = [*(*(&v21 + 1) + 8 * v12) _completionHandler];
                if (v13)
                {
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_10005E788;
                  block[3] = &unk_1004B79F0;
                  v19 = *(a1 + 40);
                  v20 = v13;
                  dispatch_async(&_dispatch_main_q, block);
                }

                v12 = v12 + 1;
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v10);
          }

          v6 = v17 + 1;
        }

        while ((v17 + 1) != v16);
        v16 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v16);
    }

    return [*(*(a1 + 32) + 16) removeAllObjects];
  }

  return result;
}

void sub_10005E788(uint64_t a1)
{
  v2 = [[MRCommandResult alloc] initWithWithSendError:23 description:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_10005E904(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10005EDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005EDD4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = [MRDRemoteControlContext alloc];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) senderAppDisplayID];
    v8 = [(MRDRemoteControlContext *)v5 initWithContextID:v6 originatingAppDisplayID:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(*(a1 + 32) + 32) setObject:*(*(*(a1 + 56) + 8) + 40) forKey:*(a1 + 40)];
    v11 = dispatch_time(0, 60000000000);
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(v13 + 8);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005EF20;
    v15[3] = &unk_1004B68F0;
    v15[4] = v13;
    v16 = v12;
    dispatch_after(v11, v14, v15);
  }
}

void sub_10005F430(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ignoring command because a phone call or FaceTime is active.", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = +[MRDMediaRemoteServer server];
    v5 = [v4 nowPlayingServer];
    v6 = [v5 localOriginClient];
    v7 = [v6 nowPlayingDataSource];

    if (v7)
    {
      [v7 shouldSendCommand:*(a1 + 32)];
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10005F608(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (!v2 || ([v2 timeIntervalSinceNow], fabs(v3) > *(a1 + 48)))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = +[NSDate now];
    v5 = *(a1 + 32);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;
  }
}

void sub_10005F774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005F78C(uint64_t a1)
{
  v1 = dispatch_semaphore_create(0);
  v2 = dispatch_get_global_queue(2, 0);
  v3 = v1;
  MRProcessIDForApplication();

  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
}

BOOL sub_1000603B0(id a1, MRDNowPlayingClient *a2)
{
  v2 = [(MRDNowPlayingClient *)a2 client];
  v3 = [v2 isSystemMediaApplication];

  return v3;
}

uint64_t sub_100060D94(void *a1)
{
  v1 = a1;
  v2 = [v1 origin];
  v3 = [v2 isLocal];

  if (!v3 || (+[MRDMediaRemoteServer server](MRDMediaRemoteServer, "server"), v4 = objc_claimAutoreleasedReturnValue(), [v1 client], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "clientForPID:", objc_msgSend(v5, "processIdentifier")), v6 = objc_claimAutoreleasedReturnValue(), v5, v4, !v6))
  {
    v22 = [v1 client];
    v23 = [v22 bundleIdentifier];
    v24 = sub_100060FA4(v23);

    v6 = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v21 = 1;
    goto LABEL_7;
  }

  v7 = [v6 bundleIdentifier];
  v8 = sub_100060FA4(v7);

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = objc_alloc_init(MRPlayerPath);
  v10 = [v1 origin];
  [v9 setOrigin:v10];

  v11 = +[MRDMediaRemoteServer server];
  v12 = [v11 nowPlayingServer];
  v13 = +[MRDMediaRemoteServer server];
  v14 = [v13 nowPlayingServer];
  v15 = [v14 resolveExistingPlayerPath:v9];
  v16 = [v12 queryExistingPlayerPath:v15];

  v17 = [v16 nowPlayingClient];
  v18 = [v17 playerPath];
  v19 = [v18 client];
  v20 = [v1 client];
  v21 = [v19 isEqual:v20];

LABEL_7:
  return v21;
}

uint64_t sub_100060FA4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_1005291E0 == -1)
  {
    if (!v1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1003A5544();
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  if (([qword_1005291D8 containsObject:v2] & 1) == 0 && (MRMediaRemoteApplicationIsSystemMediaApplication() & 1) == 0 && (MRMediaRemoteApplicationIsSystemPodcastApplication() & 1) == 0)
  {
    IsSystemBooksApplication = MRMediaRemoteApplicationIsSystemBooksApplication();
    goto LABEL_7;
  }

LABEL_6:
  IsSystemBooksApplication = 1;
LABEL_7:

  return IsSystemBooksApplication;
}

void sub_100061030(id a1)
{
  v1 = [[NSSet alloc] initWithArray:&off_1004E0E50];
  v2 = qword_1005291D8;
  qword_1005291D8 = v1;
}

void sub_10006114C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100061DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v60 - 256), 8);
  _Block_object_dispose((v60 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_100061E4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(*(*(a1 + 72) + 8) + 40);
    v8 = _MRLogForCategory();
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        v28 = *(*(*(a1 + 72) + 8) + 40);
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544130;
        v50 = v26;
        v51 = 2114;
        v52 = v27;
        v53 = 2114;
        v54 = v28;
        v55 = 2048;
        v56 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 32);
        v37 = *(a1 + 40);
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138543874;
        v50 = v36;
        v51 = 2114;
        v52 = v37;
        v53 = 2048;
        v54 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v13 = [v5 debugName];
      v20 = *(*(*(a1 + 72) + 8) + 40);
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v50 = v18;
      v51 = 2114;
      v52 = v19;
      v53 = 2112;
      v54 = v13;
      v55 = 2114;
      v56 = v20;
      v57 = 2048;
      v58 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v8;
      v25 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v33 = *(a1 + 32);
      v34 = *(a1 + 40);
      v13 = [v5 debugName];
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v50 = v33;
      v51 = 2114;
      v52 = v34;
      v53 = 2112;
      v54 = v13;
      v55 = 2048;
      v56 = v35;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v8;
      v25 = 42;
    }

    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

    goto LABEL_20;
  }

  v7 = *(*(*(a1 + 72) + 8) + 40);
  v8 = _MRLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(*(*(a1 + 72) + 8) + 40);
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v50 = v10;
      v51 = 2114;
      v52 = v11;
      v53 = 2114;
      v54 = v6;
      v55 = 2114;
      v56 = v12;
      v57 = 2048;
      v58 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    sub_1003A5558(a1, v6, v8);
  }

LABEL_21:

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000622BC;
  v43[3] = &unk_1004B7B50;
  v39 = *(a1 + 56);
  v40 = *(a1 + 64);
  v45 = v6;
  v46 = v40;
  v44 = v5;
  v48 = *(a1 + 96);
  v47 = *(a1 + 80);
  v41 = v6;
  v42 = v5;
  dispatch_async(v39, v43);
}

void sub_1000622BC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  obj = *(a1 + 72);
  objc_sync_enter(obj);
  [*(*(*(a1 + 56) + 8) + 40) setDiscoveryMode:0];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    [*(*(*(a1 + 56) + 8) + 40) removeEndpointsChangedCallback:?];
  }

  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_sync_exit(obj);
}

uint64_t sub_100062384(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_1000623A4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_10006241C(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceUID];

  if (!v2)
  {
LABEL_7:
    v10 = +[MRAVClusterController sharedController];
    v11 = [v10 clusterStatus];

    if (v11 == 2)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);
        v21 = 138543874;
        v22 = v13;
        v23 = 2114;
        v24 = v14;
        v25 = 2112;
        v26 = @"Not short-circuiting because cluster secondary";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v21, 0x20u);
      }
    }

    else
    {
      if ([*(a1 + 32) isGroupLeader])
      {
        if (![*(a1 + 32) isAirPlayActive])
        {
          v19 = +[MRUserSettings currentSettings];
          v20 = [v19 supportMultiplayerHost];

          return v20 ^ 1;
        }

        v12 = _MRLogForCategory();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 40);
        v16 = *(a1 + 48);
        v21 = 138543874;
        v22 = v15;
        v23 = 2114;
        v24 = v16;
        v25 = 2112;
        v26 = @"Not short-circuiting because secondary";
        goto LABEL_16;
      }

      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        v18 = *(a1 + 48);
        v21 = 138543874;
        v22 = v17;
        v23 = 2114;
        v24 = v18;
        v25 = 2112;
        v26 = @"Not short-circuiting not group leader";
        goto LABEL_16;
      }
    }

LABEL_17:

    return 0;
  }

  v3 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  v4 = [v3 outputDevices];
  v5 = [v4 msv_firstWhere:&stru_1004B7BE0];

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v21 = 138543874;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    v25 = 2112;
    v26 = @"Maybe short-circuiting because non airplay device picked";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v21, 0x20u);
  }

  return 1;
}

BOOL sub_100062704(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [(MRAVOutputDevice *)v2 deviceType]!= 4 && [(MRAVOutputDevice *)v2 deviceType]!= 1;

  return v3;
}

void sub_100062768(void *a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * i) containsOutputDeviceWithUID:{*(*(a1[7] + 8) + 40), v11}])
        {
          v8 = _MRLogForCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = a1[4];
            v10 = a1[5];
            *buf = 138543874;
            v16 = v9;
            v17 = 2114;
            v18 = v10;
            v19 = 2112;
            v20 = @"found device in discovery";
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
          }

          (*(a1[6] + 16))();
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

int64_t sub_100062A30(id a1, PCLockscreenControlsDevice *a2, PCLockscreenControlsDevice *a3)
{
  v4 = a3;
  v5 = [(PCLockscreenControlsDevice *)a2 distance];
  v6 = [(PCLockscreenControlsDevice *)v4 distance];

  v7 = [v5 compare:v6];
  return v7;
}

id sub_100062B88(uint64_t a1, void *a2)
{
  v3 = [a2 mediaRouteID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_100062D40(uint64_t a1)
{
  result = [*(a1 + 32) invalidated];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _configureObserver];
  }

  return result;
}

void sub_1000630FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained nearbyDevices];
    v7 = [v3 mediaRouteID];
    v8 = [v6 containsObject:v7];

    if (v8)
    {
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v3 mediaRouteID];
        v13 = 138412290;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Removing device %@", &v13, 0xCu);
      }

      v11 = [v5 nearbyDevices];
      v12 = [v3 mediaRouteID];
      [v11 removeObject:v12];
    }
  }
}

void sub_100063258(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained nearbyDevices];
    v7 = [v3 mediaRouteID];
    v8 = [v6 containsObject:v7];

    if ((v8 & 1) == 0)
    {
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v3 mediaRouteID];
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Adding device %@", &v14, 0xCu);
      }

      v11 = [v5 nearbyDevices];
      v12 = [v3 mediaRouteID];
      [v11 addObject:v12];

      v13 = [v5 delegate];
      [v13 devicesUpdated];
    }
  }
}