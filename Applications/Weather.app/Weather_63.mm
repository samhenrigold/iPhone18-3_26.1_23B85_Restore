void *sub_1006B9654(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC6D0, &qword_100A6D070);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    v2 = sub_10002D7F8(v17, v18);
    v3 = __chkstk_darwin(v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for InteractionDonationManager(0);
    v16[3] = v8;
    v16[4] = &off_100C5ECE0;
    v16[0] = v7;
    type metadata accessor for InteractionDonationStoreObserver();
    v9 = swift_allocObject();
    v10 = sub_10002D7F8(v16, v8);
    v11 = __chkstk_darwin(v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[5] = v8;
    v9[6] = &off_100C5ECE0;
    v9[2] = v15;
    sub_100006F14(v16);
    sub_100006F14(v17);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006B985C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4460, &unk_100A6B650);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v3 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v23;
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v5 = v20;
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v21;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA740, &qword_100A4FE48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v7 = type metadata accessor for WeatherConditionBackgroundStoreObserver(0);
    ObjectType = swift_getObjectType();
    v9 = swift_getObjectType();
    v10 = sub_10002D7F8(v18, v19);
    v11 = __chkstk_darwin(v10);
    v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13, v11);
    v15 = type metadata accessor for WeatherConditionBackgroundTimeDataFactory();
    v16 = sub_100048AFC(v3, v5, v13, v7, ObjectType, v15, v9, v4, &off_100C58978, v6);
    sub_100006F14(v18);
    return v16;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1006B9AAC(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1900, &qword_100A76CF8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v2)
  {
    type metadata accessor for TimeStoreObserver();
    result = swift_allocObject();
    result[2] = v2;
    result[3] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006B9B64(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v2)
  {
    type metadata accessor for WeatherDataDebounceMiddleware(0);
    swift_allocObject();
    return sub_10004C028(v2, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B9C2C(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v5 = sub_1000161C0(a1, a1[3]);
  a2(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v7 = sub_1000038D8();
    a3(v7);
    result = swift_allocObject();
    *(result + 16) = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006B9CB4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v2)
  {
    type metadata accessor for ShortcutItemUpdater();
    result = swift_allocObject();
    result[2] = v2;
    *(result + 3) = v3;
    result[5] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B9D4C()
{
  type metadata accessor for UnitManagerMiddleware();

  return swift_allocObject();
}

uint64_t sub_1006B9DA4(uint64_t a1)
{
  if (*(a1 + 24) == 2)
  {
    return 1;
  }

  v1 = a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002D061C();

    v1 = v2;
  }

  *(v1 + 24) = 2;
  return v1;
}

uint64_t sub_1006B9E0C(uint64_t a1)
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002D061C();

    a1 = v2;
  }

  *(a1 + 16) = &_swiftEmptySetSingleton;

  return a1;
}

void sub_1006B9E6C(uint64_t a1@<X8>)
{
  v4 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v4 - 8);
  sub_1000281F0();
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  v8 = qword_100CE80C8;
  swift_beginAccess();
  sub_1000955E0(v1 + v8, v7, &qword_100CB3AB0, &unk_100A2FB80);
  v9 = type metadata accessor for URL();
  if (sub_100024D10(v7, 1, v9) == 1)
  {
    sub_1000180EC(v7, &qword_100CB3AB0, &unk_100A2FB80);
    sub_10095DB8C();
    (*(*(v9 - 8) + 16))(v2, a1, v9);
    sub_10001B350(v2, 0, 1, v9);
    swift_beginAccess();
    sub_100035B94(v2, v1 + v8, &qword_100CB3AB0, &unk_100A2FB80);
    swift_endAccess();
  }

  else
  {
    (*(*(v9 - 8) + 32))(a1, v7, v9);
  }
}

uint64_t sub_1006BA03C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1006BA0E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  sub_100007FD0();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000281F0();
  v12 = __chkstk_darwin(v11);
  v14 = v17 - v13;
  v15 = *(v9 + 16);
  v15(v17 - v13, v12);
  v17[4] = v5;
  v17[5] = v6;
  v17[6] = v7;
  swift_getKeyPath();
  v17[0] = v5;
  v17[1] = v6;
  v17[2] = v7;
  swift_getKeyPath();
  (v15)(v4, v14, v5);

  static Published.subscript.setter();
  return (*(v9 + 8))(v14, v5);
}

uint64_t sub_1006BA254(uint64_t a1)
{
  sub_100006508(a1);
  result = sub_100047F80();
  *v1 = result;
  return result;
}

uint64_t sub_1006BA284@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1006B9E04();
  *a1 = result;
  return result;
}

void *sub_1006BA2B4(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v8 = type metadata accessor for LocationViewDescriptor();
  v18[3] = v8;
  v18[4] = &off_100C76318;
  v18[0] = a1;
  type metadata accessor for NotificationsOptInStoreObserver();
  v9 = swift_allocObject();
  v10 = sub_10002D7F8(v18, v8);
  v11 = __chkstk_darwin(v10);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v9[7] = v8;
  v9[8] = &off_100C76318;
  v9[3] = 0;
  v9[4] = v15;
  v9[2] = 0;
  sub_10022C350(&qword_100CD1948, &qword_100A76D30);
  swift_allocObject();
  v9[24] = OnlyOnceDeferredPromise.init()();
  swift_allocObject();
  v9[25] = OnlyOnceDeferredPromise.init()();
  sub_100013188(a2, (v9 + 9));
  sub_100013188(a3, (v9 + 14));
  sub_100013188(a4, (v9 + 19));
  sub_100006F14(v18);
  return v9;
}

uint64_t sub_1006BA454()
{
  v1 = *(type metadata accessor for EndpointConfiguration() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1006B7E24(v2);
}

uint64_t sub_1006BA4B8(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9E64(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA4E0(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9E0C(v2);
  *v1 = result;
  return result;
}

void sub_1006BA508(uint64_t a1)
{
  sub_100006508(a1);
  sub_1006B9E08();
  *v1 = v2;
}

uint64_t sub_1006BA538(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9DA4(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA560(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9DA0(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA588(uint64_t a1)
{
  sub_100006508(a1);
  result = sub_1006B9D9C();
  *v1 = result;
  return result;
}

uint64_t sub_1006BA5B0(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9D98(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA5D8(uint64_t a1)
{
  sub_100006508(a1);
  result = sub_1006B9D94();
  *v1 = result;
  return result;
}

uint64_t sub_1006BA600(uint64_t a1)
{
  v2 = sub_100006508(a1);
  result = sub_1006B9D90(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1006BA628(uint64_t a1)
{
  sub_100006508(a1);
  result = sub_1006B9D8C();
  *v1 = result;
  return result;
}

uint64_t sub_1006BA650(uint64_t a1)
{
  sub_100006508(a1);
  result = sub_1006B9D88();
  *v1 = result;
  return result;
}

uint64_t sub_1006BA6E8()
{

  return swift_deallocObject();
}

uint64_t sub_1006BA734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainStateProcessingContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006BA798(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD1998, &qword_100A76D68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006BA808(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1006BA820@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a1 & 0xFE) == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1 ^ 1;
  }

  if ((a1 & 0xFE) == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = (a1 >> 8) & 0xFF00 | (((a1 >> 8) & 1) << 16);
  }

  v12 = sub_1003199B0(v11 | v10 & 1);
  v31 = v13;
  v32 = v12;
  v30 = v14;
  v29 = sub_1003198A0(v11 | v10 & 1);
  v16 = v15;
  v17 = v11 | v10 & 1;
  if (*(v6 + 16) == 1)
  {
    v18 = sub_100319B28(v17);
  }

  else
  {
    v18 = sub_100319C5C(v17);
  }

  v20 = v18;
  v21 = v19;
  v22 = sub_100319A18(v11 | v10 & 1);
  v24 = v23;
  v25 = *(v6 + 17);
  if (v10)
  {
    v26 = 40.0;
  }

  else
  {
    v26 = 33.0;
  }

  v27 = *(type metadata accessor for TipView(0) + 32);
  *(a6 + v27) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  swift_storeEnumTagMultiPayload();
  *(a6 + 32) = v32;
  *(a6 + 40) = v31;
  *(a6 + 48) = v30;
  *(a6 + 56) = v29;
  *(a6 + 64) = v16;
  *(a6 + 72) = v20;
  *(a6 + 80) = v21;
  *(a6 + 88) = v22;
  *(a6 + 96) = v24;
  *a6 = v25;
  *(a6 + 8) = v26;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 104) = a2;
  *(a6 + 112) = a3;
  *(a6 + 120) = a4;
  *(a6 + 128) = a5;
}

unint64_t sub_1006BA9F0()
{
  result = qword_100CD1AA8;
  if (!qword_100CD1AA8)
  {
    result = swift_getWitnessTable(aF_4, &type metadata for ConditionsChartID, v0, v1);
    atomic_store(result, &qword_100CD1AA8);
  }

  return result;
}

uint64_t sub_1006BAA44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1006BAAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1006BAAFC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10022C350(&qword_100CD1AC0, &qword_100A76FA8);
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  sub_1000161C0(a1, a1[3]);
  sub_1006BAF78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v4);
}

Swift::Int sub_1006BAC34(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void *sub_1006BAC84(void *a1)
{
  v3 = sub_10022C350(&qword_100CD1AB0, &qword_100A76FA0);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_1000161C0(a1, a1[3]);
  sub_1006BAF78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100006F14(a1);
  return v9;
}

uint64_t sub_1006BADD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006BAA44(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1006BAE04(uint64_t a1)
{
  v2 = sub_1006BAF78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006BAE40(uint64_t a1)
{
  v2 = sub_1006BAF78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006BAE7C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10077ED50(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void *sub_1006BAEC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1006BAC84(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Int sub_1006BAF30(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1006BAF78()
{
  result = qword_100CD1AB8;
  if (!qword_100CD1AB8)
  {
    result = swift_getWitnessTable(aH_7, &type metadata for ConditionsChartID.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD1AB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConditionsChartID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1006BB07C()
{
  result = qword_100CD1AC8;
  if (!qword_100CD1AC8)
  {
    result = swift_getWitnessTable(byte_100A7704C, &type metadata for ConditionsChartID.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD1AC8);
  }

  return result;
}

unint64_t sub_1006BB0D4()
{
  result = qword_100CD1AD0;
  if (!qword_100CD1AD0)
  {
    result = swift_getWitnessTable(aI_57, &type metadata for ConditionsChartID.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD1AD0);
  }

  return result;
}

unint64_t sub_1006BB12C()
{
  result = qword_100CD1AD8;
  if (!qword_100CD1AD8)
  {
    result = swift_getWitnessTable(byte_100A76FE4, &type metadata for ConditionsChartID.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD1AD8);
  }

  return result;
}

uint64_t type metadata accessor for DetailViewVisibilityTrackerModel(uint64_t a1)
{
  result = qword_100CD1B38;
  if (!qword_100CD1B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006BB1F4(uint64_t a1)
{
  result = type metadata accessor for DetailType();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Location();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for DetailViewOrigin();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1006BB290(uint64_t a1)
{
  v2 = type metadata accessor for DetailComponentAction(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004C5794(a1, v4);
  LOBYTE(a1) = v4[*(sub_10022C350(&qword_100CA6680, &qword_100A3DB20) + 48)];
  (*(v6 + 32))(v8, v4, v5);
  if ((a1 & 1) == 0)
  {
    v9 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1006BB524();
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 openURL:v12 options:isa completionHandler:0];
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1006BB49C(uint64_t a1, uint64_t a2)
{
  if ((sub_100747474(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DetailViewVisibilityTrackerModel(0);
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return sub_1007474BC(a1 + v5, a2 + v5);
}

unint64_t sub_1006BB524()
{
  result = qword_100CA3040;
  if (!qword_100CA3040)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable(aM_29, v3, v0, v1);
    atomic_store(result, &qword_100CA3040);
  }

  return result;
}

uint64_t sub_1006BB580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = type metadata accessor for DisplayMetrics(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for LocationViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v81 - v15;
  __chkstk_darwin(v17);
  v19 = &v81 - v18;
  v20 = sub_10001082C();
  sub_10015CDC4(v20, a4, v21);
  v22 = type metadata accessor for LocationDynamicContentConfiguration(0);
  sub_100006514();
  v90 = a2;
  sub_10015CDC4(a2, a4 + v23, v24);
  v88 = v22;
  memcpy((a4 + *(v22 + 24)), a3, 0x48uLL);
  if (qword_100CA26B8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_10000703C(v25, qword_100D90A90);
  sub_100008CB0();
  sub_10015CDC4(a1, v19, v27);
  sub_10015CDC4(a1, v16, v22);
  v87 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v83 = v10;
    v31 = v30;
    v32 = swift_slowAlloc();
    v85 = a4;
    v82 = v32;
    v92 = v32;
    *v31 = 141558787;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    Location.Identifier.name.getter();
    v84 = a3;
    v34 = v33;
    sub_100147BBC(v19, type metadata accessor for LocationViewModel);
    v35 = sub_100019CF4();
    v37 = sub_100078694(v35, v34, v36);

    *(v31 + 14) = v37;
    *(v31 + 22) = 2082;
    if (v16[*(v89 + 64)])
    {
      v38 = 0xE400000000000000;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    sub_100147BBC(v16, type metadata accessor for LocationViewModel);
    v39 = sub_100019CF4();
    v41 = sub_100078694(v39, v38, v40);

    *(v31 + 24) = v41;
    *(v31 + 32) = 2082;
    a3 = v84;
    v91 = *(v84 + 49);
    sub_1006BBE20();
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = sub_100078694(v42, v43, &v92);

    *(v31 + 34) = v44;
    _os_log_impl(&_mh_execute_header, v28, v29, "LocationGridView: location=%{private,mask.hash}s determining wantsMapCell. model.shouldShowAnyMap=%{public}s, mapPresentationStyle=%{public}s", v31, 0x2Au);
    v45 = v82;
    swift_arrayDestroy();
    a4 = v85;
    sub_100003884(v45);
    v46 = v31;
    v10 = v83;
    sub_100003884(v46);
  }

  else
  {

    sub_100008CB0();
    sub_100147BBC(v16, v47);
    sub_100147BBC(v19, v29);
  }

  v48 = sub_10001082C();
  sub_10015CDC4(v48, v13, v49);
  sub_100006514();
  sub_10015CDC4(v90, v10, v50);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v92 = v54;
    *v53 = 141558531;
    *(v53 + 4) = 1752392040;
    *(v53 + 12) = 2081;
    Location.Identifier.name.getter();
    v55 = v10;
    v57 = v56;
    sub_10001CAA4();
    sub_100147BBC(v58, v59);
    v60 = sub_100019CF4();
    v62 = sub_100078694(v60, v57, v61);

    *(v53 + 14) = v62;
    *(v53 + 22) = 2082;
    sub_1006BBDC8();
    ShortDescribable.description.getter();
    v64 = v63;
    sub_10001F558();
    sub_100147BBC(v55, v65);
    v66 = sub_100019CF4();
    v68 = sub_100078694(v66, v64, v67);

    *(v53 + 24) = v68;
    _os_log_impl(&_mh_execute_header, v51, v52, "LocationGridView: location=%{private,mask.hash}s determining wantsMapCell. displayMetrics=%{public}s", v53, 0x20u);
    swift_arrayDestroy();
    sub_100003884(v54);
    sub_100003884(v53);
  }

  else
  {

    sub_10001F558();
    sub_100147BBC(v10, v69);
    sub_10001CAA4();
    sub_100147BBC(v13, v70);
  }

  v72 = v88;
  v71 = v89;
  if (*(a1 + *(v89 + 64)) == 1)
  {
    v73 = *(a3 + 49) == 3;
    *(a4 + *(v88 + 28)) = v73;
  }

  else
  {
    v73 = 0;
    *(a4 + *(v88 + 28)) = 0;
  }

  v74 = *(a1 + *(v71 + 96));
  if (v74 == 25)
  {
    if (v73)
    {
      v75 = 256;
    }

    else
    {
      v75 = 0;
    }

    sub_100499598(v75 | *(a3 + 48), *(a1 + *(v71 + 32)));
  }

  else
  {
    sub_10030AFA4(*(a3 + 48), v73, v74);
  }

  v77 = v76;
  sub_10001F558();
  sub_100147BBC(v90, v78);
  sub_10001CAA4();
  result = sub_100147BBC(a1, v79);
  *(a4 + *(v72 + 32)) = v77;
  return result;
}

uint64_t sub_1006BBB58(uint64_t a1, uint64_t a2)
{
  if ((sub_100163AEC(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LocationDynamicContentConfiguration(0);
  if ((sub_1000BB930(a1 + v4[5], a2 + v4[5]) & 1) == 0)
  {
    return 0;
  }

  memcpy(v10, (a1 + v4[6]), sizeof(v10));
  memcpy(__dst, (a2 + v4[6]), sizeof(__dst));
  if (!sub_1001309B8(v10, __dst) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v6 = v4[8];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7)
  {
    if (v8)
    {

      v9 = sub_1009E9A44(v7, v8);

      if (v9)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t type metadata accessor for LocationDynamicContentConfiguration(uint64_t a1)
{
  result = qword_100CD1BD0;
  if (!qword_100CD1BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006BBCC4(uint64_t a1)
{
  type metadata accessor for LocationViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DisplayMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1006BBD78();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1006BBD78()
{
  if (!qword_100CD1BE0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD1BE0);
    }
  }
}

unint64_t sub_1006BBDC8()
{
  result = qword_100CD1C20;
  if (!qword_100CD1C20)
  {
    v3 = type metadata accessor for DisplayMetrics(255);
    result = swift_getWitnessTable(byte_100A9EBB8, v3, v0, v1);
    atomic_store(result, &qword_100CD1C20);
  }

  return result;
}

unint64_t sub_1006BBE20()
{
  result = qword_100CD1C28;
  if (!qword_100CD1C28)
  {
    result = swift_getWitnessTable(a1_26, &unk_100C73218, v0, v1);
    atomic_store(result, &qword_100CD1C28);
  }

  return result;
}

uint64_t sub_1006BBE74()
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v3 - v2) = 0;
  swift_storeEnumTagMultiPayload();
  sub_10000FE08();
  sub_10004F034(v4, v7, v6, v5);
  sub_1000E17D8(v9);
  return sub_1000547B8(v4);
}

uint64_t sub_1006BBF4C(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int *a4)
{
  v9 = type metadata accessor for ConfiguredUnit();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = *(v4 + 16);
  v19 = *(v4 + 24);
  v21 = v18;
  sub_100035AD0(a1, v13, a2, a3);
  (*(v10 + 104))(v13, *a4, v9);
  (*(v10 + 32))(v17, v13, v9);
  type metadata accessor for ConfiguredUnitsAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_10004F034(v17, v22, v21, v19);
  sub_1000E17D8(v22);
  return sub_1000547B8(v17);
}

uint64_t sub_1006BC168()
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  type metadata accessor for ConfiguredUnitsAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_10000FE08();
  sub_10004F034(v4, v7, v6, v5);
  sub_1000E17D8(v9);
  return sub_1000547B8(v4);
}

void *sub_1006BC25C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D70, &qword_100A77248);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4D00, &qword_100A2EF78);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v22, v23);
      v7 = __chkstk_darwin(v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for AveragesDetailInteractor();
      v21[3] = v12;
      v21[4] = &off_100C63F48;
      v21[0] = v11;
      v13 = type metadata accessor for AveragesDetailModule();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, v12);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[5] = v12;
      v14[6] = &off_100C63F48;
      v14[2] = v20;
      v14[7] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C5BD98;
      *a2 = v14;
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

uint64_t sub_1006BC4D8()
{
  sub_10022C350(&qword_100CD1D68, &qword_100A77240);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1D70, &qword_100A77248);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1D78, &qword_100A77250);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1D80, &qword_100A77258);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1D88, &qword_100A77260);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1D90, &qword_100A77268);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1D98, &qword_100A77270);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DA0, &qword_100A77278);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DA8, &qword_100A77280);
  RegistrationContainer.register<A>(_:name:factory:)();

  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DB0, &qword_100A77288);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DB8, &qword_100A77290);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DC0, &qword_100A77298);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DC8, &qword_100A772A0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DD0, &qword_100A772A8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DD8, &qword_100A772B0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DE0, &qword_100A772B8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DE8, &qword_100A772C0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DF0, &qword_100A772C8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1DF8, &unk_100A772D0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC9678, &qword_100A67900);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1E00, &qword_100A772E0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1E08, &qword_100A772E8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1E10, &unk_100A772F0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4D00, &qword_100A2EF78);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_1006BCB38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v5 = result;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4918, &unk_100A2EC30);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v8)
    {
      a2[3] = &type metadata for AveragesDetailTracker;
      a2[4] = &off_100C636C8;
      v6 = swift_allocObject();
      *a2 = v6;
      *(v6 + 16) = v5;
      return sub_100013188(&v7, v6 + 24);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1006BCC30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v27;
  if (v27)
  {
    v23 = v28;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CD1D68, &qword_100A77240);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v26)
    {
      v6 = sub_10002D7F8(v25, v26);
      v7 = __chkstk_darwin(v6);
      v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v24[3] = &type metadata for AveragesDetailTracker;
      v24[4] = &off_100C636C8;
      v11 = swift_allocObject();
      v24[0] = v11;
      v12 = v9[1];
      v11[1] = *v9;
      v11[2] = v12;
      v11[3] = v9[2];
      v13 = type metadata accessor for AveragesDetailInteractor();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v24, &type metadata for AveragesDetailTracker);
      v16 = __chkstk_darwin(v15);
      v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v14[7] = &type metadata for AveragesDetailTracker;
      v14[8] = &off_100C636C8;
      v20 = swift_allocObject();
      v21 = v18[1];
      v20[1] = *v18;
      v20[2] = v21;
      v20[3] = v18[2];
      v14[2] = v5;
      v14[3] = v23;
      v14[4] = v20;
      sub_100006F14(v24);
      result = sub_100006F14(v25);
      a2[3] = v13;
      a2[4] = &off_100C63F48;
      *a2 = v14;
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

void *sub_1006BCEF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D80, &qword_100A77258);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v35)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CD1DA0, &qword_100A77278);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v33)
    {
      v5 = sub_10002D7F8(v34, v35);
      v29[2] = v29;
      v6 = __chkstk_darwin(v5);
      v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v8, v6);
      v10 = sub_10002D7F8(v32, v33);
      v29[1] = v29;
      v11 = __chkstk_darwin(v10);
      v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v13, v11);
      v31[3] = &type metadata for PrecipitationAveragesDetailInputFactory;
      v31[4] = &off_100C4F690;
      v31[0] = swift_allocObject();
      memcpy((v31[0] + 16), v8, 0x78uLL);
      v30[3] = &type metadata for TemperatureAveragesDetailInputFactory;
      v30[4] = &off_100C4DF08;
      v30[0] = swift_allocObject();
      memcpy((v30[0] + 16), v13, 0x78uLL);
      v15 = type metadata accessor for AveragesDetailInputFactory();
      v16 = swift_allocObject();
      v17 = sub_10002D7F8(v31, &type metadata for PrecipitationAveragesDetailInputFactory);
      v18 = __chkstk_darwin(v17);
      v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20, v18);
      v22 = sub_10002D7F8(v30, &type metadata for TemperatureAveragesDetailInputFactory);
      v23 = __chkstk_darwin(v22);
      v25 = v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25, v23);
      v16[5] = &type metadata for PrecipitationAveragesDetailInputFactory;
      v16[6] = &off_100C4F690;
      v27 = swift_allocObject();
      v16[2] = v27;
      memcpy((v27 + 16), v20, 0x78uLL);
      v16[10] = &type metadata for TemperatureAveragesDetailInputFactory;
      v16[11] = &off_100C4DF08;
      v28 = swift_allocObject();
      v16[7] = v28;
      memcpy((v28 + 16), v25, 0x78uLL);
      sub_100006F14(v30);
      sub_100006F14(v31);
      sub_100006F14(v32);
      result = sub_100006F14(v34);
      a2[3] = v15;
      a2[4] = &off_100C58580;
      *a2 = v16;
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

void *sub_1006BD390@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D88, &qword_100A77260);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D90, &qword_100A77268);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D98, &qword_100A77270);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    a2[3] = &type metadata for PrecipitationAveragesDetailInputFactory;
    a2[4] = &off_100C4F690;
    v5 = swift_allocObject();
    *a2 = v5;
    sub_100013188(&v10, v5 + 16);
    sub_100013188(&v8, v5 + 56);
    return sub_100013188(&v6, v5 + 96);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1006BD524@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D98, &qword_100A77270);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DA8, &qword_100A77280);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D90, &qword_100A77268);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    a2[3] = &type metadata for TemperatureAveragesDetailInputFactory;
    a2[4] = &off_100C4DF08;
    v5 = swift_allocObject();
    *a2 = v5;
    sub_100013188(&v10, v5 + 16);
    sub_100013188(&v8, v5 + 56);
    return sub_100013188(&v6, v5 + 96);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1006BD6B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DC0, &qword_100A77298);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v35)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CD1DF0, &qword_100A772C8);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v33)
    {
      v5 = sub_10002D7F8(v34, v35);
      v29[2] = v29;
      v6 = __chkstk_darwin(v5);
      v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v8, v6);
      v10 = sub_10002D7F8(v32, v33);
      v29[1] = v29;
      v11 = __chkstk_darwin(v10);
      v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v13, v11);
      v31[3] = &type metadata for PrecipitationAveragesDetailViewModelFactory;
      v31[4] = &off_100C6AC00;
      v31[0] = swift_allocObject();
      memcpy((v31[0] + 16), v8, 0xC8uLL);
      v30[3] = &type metadata for TemperatureAveragesDetailViewModelFactory;
      v30[4] = &off_100C587E8;
      v30[0] = swift_allocObject();
      memcpy((v30[0] + 16), v13, 0xC8uLL);
      v15 = type metadata accessor for AveragesDetailViewModelFactory();
      v16 = swift_allocObject();
      v17 = sub_10002D7F8(v31, &type metadata for PrecipitationAveragesDetailViewModelFactory);
      v18 = __chkstk_darwin(v17);
      v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20, v18);
      v22 = sub_10002D7F8(v30, &type metadata for TemperatureAveragesDetailViewModelFactory);
      v23 = __chkstk_darwin(v22);
      v25 = v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25, v23);
      v16[5] = &type metadata for PrecipitationAveragesDetailViewModelFactory;
      v16[6] = &off_100C6AC00;
      v27 = swift_allocObject();
      v16[2] = v27;
      memcpy((v27 + 16), v20, 0xC8uLL);
      v16[10] = &type metadata for TemperatureAveragesDetailViewModelFactory;
      v16[11] = &off_100C587E8;
      v28 = swift_allocObject();
      v16[7] = v28;
      memcpy((v28 + 16), v25, 0xC8uLL);
      sub_100006F14(v30);
      sub_100006F14(v31);
      sub_100006F14(v32);
      result = sub_100006F14(v34);
      a2[3] = v15;
      a2[4] = &off_100C70328;
      *a2 = v16;
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

void *sub_1006BDB54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DB0, &qword_100A77288);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DD0, &qword_100A772A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DD8, &qword_100A772B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DE0, &qword_100A772B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4908, &unk_100A2EC20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    a2[3] = &type metadata for PrecipitationAveragesDetailViewModelFactory;
    a2[4] = &off_100C6AC00;
    v5 = swift_allocObject();
    *a2 = v5;
    sub_100013188(&v14, v5 + 16);
    sub_100013188(&v12, v5 + 56);
    sub_100013188(&v10, v5 + 96);
    sub_100013188(&v8, v5 + 136);
    return sub_100013188(&v6, v5 + 176);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1006BDD60@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UnitManager();
  result = static UnitManager.standard.getter();
  *a1 = result;
  a1[1] = &protocol witness table for UnitManager;
  return result;
}

void *sub_1006BDD9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DC8, &qword_100A772A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CC9678, &qword_100A67900);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v9)
    {
      a2[3] = &type metadata for PrecipitationAveragesHeroChartViewModelFactory;
      a2[4] = &off_100C4DD78;
      v7 = swift_allocObject();
      *a2 = v7;
      type metadata accessor for WeatherService();
      v7[9] = static WeatherService.statisticsPastDaysToFetch.getter();
      v7[2] = v5;
      v7[3] = v6;
      return sub_100013188(&v8, (v7 + 4));
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1006BDEDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DE8, &qword_100A772C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = &type metadata for PrecipitationMonthlyAveragesChartViewModelFactory;
    a2[4] = &off_100C76F60;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_100013188(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006BDFA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DB0, &qword_100A77288);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DF8, &unk_100A772D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1E00, &qword_100A772E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1E08, &qword_100A772E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4908, &unk_100A2EC20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    a2[3] = &type metadata for TemperatureAveragesDetailViewModelFactory;
    a2[4] = &off_100C587E8;
    v5 = swift_allocObject();
    *a2 = v5;
    sub_100013188(&v14, v5 + 16);
    sub_100013188(&v12, v5 + 56);
    sub_100013188(&v10, v5 + 96);
    sub_100013188(&v8, v5 + 136);
    return sub_100013188(&v6, v5 + 176);
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1006BE1B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1930, &unk_100A41F60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9678, &qword_100A67900);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    a2[3] = &type metadata for TemperatureAveragesHeroChartViewModelFactory;
    a2[4] = &off_100C7B318;
    v6 = swift_allocObject();
    *a2 = v6;
    sub_100013188(&v9, v6 + 16);
    *(v6 + 56) = v5;
    return sub_100013188(&v7, v6 + 64);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1006BE320@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1E10, &unk_100A772F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = &type metadata for TemperatureMonthlyAveragesChartViewModelFactory;
    a2[4] = &off_100C49508;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_100013188(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006BE3E8(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v21;
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v23;
  v4 = v24;
  v6 = v22;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1D78, &qword_100A77250);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v19, v20);
  v17 = type metadata accessor for AveragesDetailInputFactory();
  v18 = &off_100C58580;
  v16[0] = v7;
  sub_100035B30(v16, v15);
  v8 = swift_allocObject();
  sub_100013188(v15, v8 + 16);

  sub_100006F14(v16);
  sub_100006F14(v19);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1006BE7FC;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1DB8, &qword_100A77290);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v20)
  {
    v10 = *sub_1000161C0(v19, v20);
    v17 = type metadata accessor for AveragesDetailViewModelFactory();
    v18 = &off_100C70328;
    v16[0] = v10;
    sub_100035B30(v16, v15);
    v11 = swift_allocObject();
    sub_100013188(v15, v11 + 16);

    sub_100006F14(v16);
    sub_100006F14(v19);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1006BE804;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10009F868;
    *(v13 + 24) = v9;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1006BE80C;
    *(v14 + 24) = v12;
    sub_10022C350(&qword_100CA4D00, &qword_100A2EF78);
    swift_allocObject();
    return sub_10024BB60(v3, v6, v5, v4, sub_100266DE8, 0, sub_10009F81C, v13, sub_1000E87D0, v14);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006BE7A8@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  v3 = type metadata accessor for AveragesDetailViewModel(0);

  return sub_10001B350(a2, 0, 1, v3);
}

uint64_t sub_1006BE814()
{
  sub_100006F14(v0 + 2);
  sub_100006F14(v0 + 7);
  sub_100006F14(v0 + 12);

  return swift_deallocObject();
}

uint64_t type metadata accessor for MoonScrubberView(uint64_t a1)
{
  result = qword_100CD1E78;
  if (!qword_100CD1E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006BE8D4(uint64_t a1)
{
  sub_1006BE990(319);
  if (v1 <= 0x3F)
  {
    sub_1006BEA34(319);
    if (v2 <= 0x3F)
    {
      sub_1006BEA98();
      if (v3 <= 0x3F)
      {
        type metadata accessor for MoonScrubberStorage(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1006BE990(uint64_t a1)
{
  if (!qword_100CD1E88)
  {
    sub_10022E824(&qword_100CA4D38, &unk_100A7E1D0);
    sub_100006F64(&qword_100CA4D40, &qword_100CA4D38, &unk_100A7E1D0, asc_100AA1480);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CD1E88);
    }
  }
}

void sub_1006BEA34(uint64_t a1)
{
  if (!qword_100CD1E90)
  {
    sub_10022E824(&qword_100CA6BC0, &unk_100A31BE0);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100CD1E90);
    }
  }
}

unint64_t sub_1006BEA98()
{
  result = qword_100CD1E98;
  if (!qword_100CD1E98)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CD1E98);
  }

  return result;
}

uint64_t sub_1006BEB10@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v76 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  v90 = &v73 - v3;
  v4 = type metadata accessor for MoonScrubberView(0);
  v85 = *(v4 - 8);
  v5 = (v4 - 8);
  __chkstk_darwin(v4 - 8);
  v86 = v6;
  v87 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10022C350(&qword_100CA6BC0, &unk_100A31BE0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v88 = &v73 - v8;
  type metadata accessor for Date();
  sub_1000037C4();
  v92 = v10;
  v93 = v9;
  __chkstk_darwin(v9);
  v83 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v91 = &v73 - v13;
  v14 = type metadata accessor for MoonScrubberViewModel(0);
  v15 = (v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  __chkstk_darwin(v21);
  v23 = &v73 - v22;
  v24 = type metadata accessor for ScrubberView(0);
  v78 = v24;
  __chkstk_darwin(v24);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10022C350(&qword_100CD1ED8, &qword_100A77380);
  sub_1000037C4();
  v74 = v27;
  __chkstk_darwin(v28);
  v84 = &v73 - v29;
  v31 = v5[8];
  v30 = v5[9];
  v79 = v5;
  v32 = *(v1 + v30);
  sub_100035B30(v1 + v31, (v26 + 8));
  v33 = v5[10];
  v94 = v1;
  v80 = *(v1 + v33);
  v34 = *(v1 + 8);

  sub_100989B78();
  v82 = *&v23[v15[10]];

  sub_1006BF7B0(v23, type metadata accessor for MoonScrubberViewModel);
  sub_100989B78();
  v35 = *&v20[v15[11]];

  sub_1006BF7B0(v20, type metadata accessor for MoonScrubberViewModel);
  sub_100989B78();
  v36 = v15[12];
  v37 = &v26[*(v24 + 40)];
  v38 = *(type metadata accessor for ScrubberViewModel(0) + 24);
  type metadata accessor for TimeZone();
  sub_1000037E8();
  (*(v39 + 16))(&v37[v38], &v17[v36]);
  sub_1006BF7B0(v17, type metadata accessor for MoonScrubberViewModel);
  *v37 = v82;
  *(v37 + 1) = v35;
  v40 = v78;
  v82 = v34;
  sub_100989B78();
  v41 = *(v92 + 16);
  v41(v91, &v23[v15[9]], v93);
  v81 = v23;
  sub_1006BF7B0(v23, type metadata accessor for MoonScrubberViewModel);
  sub_10022C350(&qword_100CD1E18, &unk_100A77300);
  State.projectedValue.getter();
  *&v26[v40[20]] = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  swift_storeEnumTagMultiPayload();
  *v26 = v32;
  *(v26 + 6) = v80;
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v26 + 7) = sub_10085834C();
  *(v26 + 8) = sub_1008583AC();
  *(v26 + 9) = [objc_allocWithZone(UIImpactFeedbackGenerator) init];
  v42 = &v26[v40[11]];
  v98 = 0;
  sub_100004880();
  State.init(wrappedValue:)();
  v43 = *(&v95 + 1);
  *v42 = v95;
  *(v42 + 1) = v43;
  v44 = &v26[v40[12]];
  v98 = 0;
  LOBYTE(v99) = 1;
  sub_10022C350(&qword_100CA6188, qword_100A53E20);
  sub_100004880();
  State.init(wrappedValue:)();
  v45 = BYTE8(v95);
  v46 = v96;
  *v44 = v95;
  v44[8] = v45;
  *(v44 + 2) = v46;
  v47 = v91;
  v48 = v93;
  v41(v83, v91, v93);
  State.init(wrappedValue:)();
  (*(v92 + 8))(v47, v48);
  sub_100014CEC();
  sub_100008CE0();
  sub_100014CEC();
  sub_100008CE0();
  v49 = &v26[v40[16]];
  v98 = 0;
  v99 = 0;
  sub_100004880();
  State.init(wrappedValue:)();
  v50 = v96;
  *v49 = v95;
  *(v49 + 2) = v50;
  sub_100014CEC();
  sub_100008CE0();
  v51 = &v26[v40[18]];
  LOBYTE(v98) = 1;
  sub_100004880();
  State.init(wrappedValue:)();
  v52 = *(&v95 + 1);
  *v51 = v95;
  *(v51 + 1) = v52;
  v53 = &v26[v40[21]];
  *v53 = FocusState.init<>()() & 1;
  *(v53 + 1) = v54;
  v53[16] = v55 & 1;
  v56 = v81;
  sub_100989B78();
  v57 = v88;
  sub_1002ACB5C(v56, v88);
  sub_1006BF7B0(v56, type metadata accessor for MoonScrubberViewModel);
  v58 = v87;
  sub_1006BF5B4(v94, v87);
  v59 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v60 = swift_allocObject();
  sub_1006BF618(v58, v60 + v59);
  sub_100010848();
  v63 = sub_1006BF808(v61, v62, byte_100A9CD78);
  v64 = sub_1006BF6FC();
  v65 = v84;
  v66 = v89;
  View.onChange<A>(of:initial:_:)();

  sub_1000180EC(v57, &qword_100CA6BC0, &unk_100A31BE0);
  sub_1006BF7B0(v26, type metadata accessor for ScrubberView);
  v67 = enum case for DynamicTypeSize.xxLarge(_:);
  v68 = type metadata accessor for DynamicTypeSize();
  sub_1000037E8();
  v70 = v90;
  (*(v69 + 104))(v90, v67, v68);
  sub_1006BF808(&qword_100CA5390, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *&v95 = v40;
    *(&v95 + 1) = v66;
    v96 = v63;
    v97 = v64;
    sub_100008CC8();
    swift_getOpaqueTypeConformance2();
    sub_10000652C(&qword_100CA53C8);
    v72 = v75;
    View.dynamicTypeSize<A>(_:)();
    sub_1000180EC(v70, &unk_100CE1680, &unk_100A450F0);
    return (*(v74 + 8))(v65, v72);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006BF4A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&qword_100CA6BC0, &unk_100A31BE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_1002ACB5C(a2, &v10 - v7);
  type metadata accessor for MoonScrubberView(0);
  sub_1002ACB5C(v8, v5);
  sub_10022C350(&qword_100CD1E18, &unk_100A77300);
  State.wrappedValue.setter();
  return sub_1000180EC(v8, &qword_100CA6BC0, &unk_100A31BE0);
}

uint64_t sub_1006BF5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonScrubberView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006BF618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonScrubberView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006BF67C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MoonScrubberView(0);

  return sub_1006BF4A8(a1, a2);
}

unint64_t sub_1006BF6FC()
{
  result = qword_100CD1EE8;
  if (!qword_100CD1EE8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CA6BC0, &unk_100A31BE0);
    v4[0] = sub_1006BF808(&qword_100CD1EF0, type metadata accessor for ScrubberDateSelection, byte_100AA0C68);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CD1EE8);
  }

  return result;
}

uint64_t sub_1006BF7B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1006BF808(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1006BF858(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_1006BF898(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1006BF92C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1006BF918(v2 | *a1, v3 | *a2);
}

uint64_t sub_1006BF95C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CC3D28, &unk_100A77500);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  type metadata accessor for MainActor();
  sub_1006BFF58(v1, &v21);
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_10001CABC(v9);
  sub_1006BFF58(v1, &v21);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_10001CABC(v11);
  Binding.init(get:set:)();
  sub_10022C350(&qword_100CB8160, &qword_100A5D2E0);
  sub_100422844();
  Toggle.init(isOn:label:)();
  v12 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v14 = &v7[*(v5 + 44)];
  *v14 = KeyPath;
  v14[1] = v12;
  if ((*(v2 + 2) & 1) != 0 || (*(v2 + 3) & 1) == 0)
  {
    if (*(v2 + 4))
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      v15 = *v2 ^ 1;
    }
  }

  else
  {
    LOBYTE(v15) = 1;
  }

  v16 = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v15 & 1;
  sub_1006BFFA8(v7, a1);
  result = sub_10022C350(&qword_100CC3D30, &unk_100A5D350);
  v19 = (a1 + *(result + 36));
  *v19 = v16;
  v19[1] = sub_100168F20;
  v19[2] = v17;
  return result;
}

void sub_1006BFBC0(__int16 *a1@<X2>, _BYTE *a2@<X8>)
{
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  if (v5 == 1 && ((a1[1] & 1) != 0 || (*(a1 + 3) & 1) == 0))
  {
    if (a1[2])
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = *a1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4 & 1;
}

uint64_t sub_1006BFC5C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.setter();
  return (*(a4 + 8))(v5);
}

uint64_t sub_1006BFCD0@<X0>(uint64_t a1@<X8>)
{
  v2 = LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)(v2, v4, v3 & 1, v5, 0, 0, 0, "Toggle for turning on or off severe weather notifications", 57, 2);
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = 256;
  return result;
}

void *sub_1006BFD9C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[34];
  v4 = v1[35];
  v5 = v1[80];
  v6 = v1[81];
  sub_1006BFE9C(v1, __src);
  v7 = swift_allocObject();
  result = memcpy((v7 + 16), __src, 0x52uLL);
  *a1 = v3;
  *(a1 + 1) = v4;
  *(a1 + 2) = v5;
  *(a1 + 3) = v6;
  *(a1 + 4) = v4;
  *(a1 + 8) = sub_1006BFED4;
  *(a1 + 16) = v7;
  *(a1 + 24) = v3 & v5;
  *(a1 + 32) = 0;
  return result;
}

unint64_t sub_1006BFEE8()
{
  result = qword_100CD1EF8;
  if (!qword_100CD1EF8)
  {
    result = swift_getWitnessTable(byte_100A774B0, &unk_100C66B48, v0, v1);
    atomic_store(result, &qword_100CD1EF8);
  }

  return result;
}

uint64_t sub_1006BFFA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC3D28, &unk_100A77500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C0018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

void sub_1006C0138()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  sub_100031EE8();
  sub_100060DE0(v6, v0, &qword_100CA3538, &qword_100A2D560);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_100024D10(v0, 1, v11);

  if (v12 == 1)
  {
    sub_100018144(v0, &qword_100CA3538, &qword_100A2D560);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v0, v11);
  }

  v13 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100018144(v6, &qword_100CA3538, &qword_100A2D560);
    sub_1000244CC();
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_1000244CC();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v2;

  swift_task_create();

  sub_100018144(v6, &qword_100CA3538, &qword_100A2D560);

LABEL_9:
  sub_10000536C();
}

void sub_1006C03F4()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  sub_100031EE8();
  sub_100060DE0(v6, v0, &qword_100CA3538, &qword_100A2D560);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_100024D10(v0, 1, v11);

  if (v12 == 1)
  {
    sub_100018144(v0, &qword_100CA3538, &qword_100A2D560);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v0, v11);
  }

  v13 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100018144(v6, &qword_100CA3538, &qword_100A2D560);
    sub_1000244CC();
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v2;
    sub_10022C350(&qword_100CD1FC0, &qword_100A77710);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_1000244CC();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v2;

  sub_10022C350(&qword_100CD1FC0, &qword_100A77710);
  swift_task_create();

  sub_100018144(v6, &qword_100CA3538, &qword_100A2D560);

LABEL_9:
  sub_10000536C();
}

uint64_t sub_1006C06C4()
{
  v14 = v0;

  if (qword_100CA26F0 != -1)
  {
    sub_10001F570(&qword_100CA26F0);
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90B38);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    *(v0 + 32) = v5;
    swift_errorRetain();
    sub_10022C350(&qword_100CD8220, &qword_100A4A330);
    v8 = String.init<A>(describing:)();
    v10 = sub_100078694(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to read notification subscriptions from store: %{public}s", v6, 0xCu);
    sub_100006F14(v7);
  }

  else
  {
  }

  sub_100003B14();

  return v11();
}

uint64_t NotificationSubscriptionMonitor.deinit()
{

  sub_100006F14((v0 + 64));

  return v0;
}

uint64_t NotificationSubscriptionMonitor.__deallocating_deinit()
{
  NotificationSubscriptionMonitor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1006C0974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_10006CF08(&qword_100CD1F00, 255, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1006C0A3C, v6, v5);
}

uint64_t sub_1006C0A3C()
{
  sub_100013494();
  sub_10000488C();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = sub_10003A31C(v2);
    *v3 = v4;
    sub_10000CDDC(v3);

    return sub_1000D86A0();
  }

  else
  {

    if (qword_100CA26F0 != -1)
    {
      sub_10001F570(&qword_100CA26F0);
    }

    v6 = type metadata accessor for Logger();
    sub_10000703C(v6, qword_100D90B38);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (sub_1000054A4(v8))
    {
      v9 = sub_10000389C();
      sub_100025054(v9);
      sub_10000FA14(&_mh_execute_header, v10, v11, "Self deallocated in NotificationSubscriptionMonitor.subscribed");
      sub_100007E54();
    }

    sub_100003B14();

    return v12();
  }
}

uint64_t sub_1006C0B84()
{
  sub_100003B08();
  sub_10003000C();
  v2 = *v1;
  sub_100003AF8();
  *v3 = v2;

  sub_100031EF8();
  v5 = *(v4 + 64);
  v6 = *(v0 + 56);

  return _swift_task_switch(sub_1000DC36C, v6, v5);
}

uint64_t sub_1006C0C90()
{
  sub_100013494();
  sub_100028784();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_10000622C(v1);

  return sub_1006C0974(v3, v4, v5, v6);
}

uint64_t sub_1006C0D3C()
{
  v1 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100031EE8();
  v3 = type metadata accessor for TaskPriority();
  sub_10001B350(v0, 1, 1, v3);
  sub_100007E8C();
  v4 = swift_allocObject();
  swift_weakInit();

  v5 = static NotificationsActor.shared.getter();
  sub_100010860();
  v8 = sub_10006CF08(v6, 255, v7, &protocol conformance descriptor for NotificationsActor.Actor);
  sub_100018450();
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v4;

  sub_1006C0138();
}

uint64_t sub_1006C0E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_10006CF08(&qword_100CD1F00, 255, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1006C0F30, v6, v5);
}

uint64_t sub_1006C0F30()
{
  sub_100013494();
  sub_10000488C();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = sub_10003A31C(v2);
    *v3 = v4;
    sub_10000CDDC(v3);

    return sub_1000D86A0();
  }

  else
  {

    if (qword_100CA26F0 != -1)
    {
      sub_10001F570(&qword_100CA26F0);
    }

    v6 = type metadata accessor for Logger();
    sub_10000703C(v6, qword_100D90B38);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (sub_1000054A4(v8))
    {
      v9 = sub_10000389C();
      sub_100025054(v9);
      sub_10000FA14(&_mh_execute_header, v10, v11, "Self deallocated in NotificationSubscriptionMonitor.unsubscribed");
      sub_100007E54();
    }

    sub_100003B14();

    return v12();
  }
}

uint64_t sub_1006C1078()
{
  sub_100013494();
  sub_100028784();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_10000622C(v1);

  return sub_1006C0E68(v3, v4, v5, v6);
}

uint64_t NotificationSubscriptionMonitor.notificationAvailabilityChange(_:)()
{
  v0 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  v2 = sub_100031DD4();
  sub_1000061CC(v2);
  sub_100007E8C();
  swift_allocObject();
  swift_weakInit();

  static NotificationsActor.shared.getter();
  sub_100010860();
  sub_10006CF08(v3, 255, v4, &protocol conformance descriptor for NotificationsActor.Actor);
  sub_100018450();
  v5 = swift_allocObject();
  sub_1000242CC(v5);
  sub_10000EB8C();
  sub_1006C0138();
}

uint64_t sub_1006C1208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_10006CF08(&qword_100CD1F00, 255, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1006C12D0, v6, v5);
}

uint64_t sub_1006C12D0()
{
  sub_100013494();
  sub_10000488C();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = sub_10003A31C(v2);
    *v3 = v4;
    sub_10000CDDC(v3);

    return sub_1000D86A0();
  }

  else
  {

    if (qword_100CA26F0 != -1)
    {
      sub_10001F570(&qword_100CA26F0);
    }

    v6 = type metadata accessor for Logger();
    sub_10000703C(v6, qword_100D90B38);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (sub_1000054A4(v8))
    {
      v9 = sub_10000389C();
      sub_100025054(v9);
      sub_10000FA14(&_mh_execute_header, v10, v11, "Self deallocated in NotificationSubscriptionMonitor.notificationAvailabilityChange");
      sub_100007E54();
    }

    sub_100003B14();

    return v12();
  }
}

uint64_t sub_1006C1418()
{
  sub_100013494();
  sub_100028784();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_10000622C(v1);

  return sub_1006C1208(v3, v4, v5, v6);
}

uint64_t sub_1006C14DC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1006C15D0;

  return v5(v2 + 32);
}

uint64_t sub_1006C15D0()
{
  sub_100003B08();
  sub_10000C7E4();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100003AF8();
  *v5 = v4;

  *v3 = *(v2 + 32);
  sub_100003B14();

  return v6();
}

uint64_t sub_1006C16D0()
{
  sub_100013494();
  sub_100011388();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_100014158(v1);

  return v4(v3);
}

uint64_t sub_1006C1760()
{
  sub_100013494();
  sub_100011388();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_100014158(v1);

  return v4(v3);
}

uint64_t sub_1006C17F0(uint64_t a1)
{
  v214 = type metadata accessor for TimeState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v220 = v3;
  v4 = sub_1000038CC();
  v213 = type metadata accessor for NotificationsOptInState(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v219 = v6;
  v7 = sub_1000038CC();
  v212 = type metadata accessor for NotificationsState(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v218 = v9;
  v10 = sub_1000038CC();
  v210 = type metadata accessor for LocationsState(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v217 = v12;
  v13 = sub_1000038CC();
  v208 = type metadata accessor for EnvironmentState(v13);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v216 = v15;
  v16 = sub_1000038CC();
  v205 = type metadata accessor for AppConfigurationState(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v215 = v18;
  v19 = sub_10022C350(&qword_100CA65C0, &unk_100A313E0);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100003990(&v186 - v21);
  v22 = sub_10022C350(&qword_100CA65D0, &unk_100A313F0);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_100003990(&v186 - v24);
  v25 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_100003990(&v186 - v27);
  v28 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  sub_100003990(v31);
  v32 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_10000E70C();
  v211 = v35;
  v36 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_10000E70C();
  v209 = v39;
  v40 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v41 = sub_100003810(v40);
  __chkstk_darwin(v41);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_10000E70C();
  v207 = v43;
  v44 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v45 = sub_100003810(v44);
  __chkstk_darwin(v45);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_10000E70C();
  v204 = v47;
  v48 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v49 = sub_100003810(v48);
  __chkstk_darwin(v49);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_10000E70C();
  v203 = v51;
  v52 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v53 = sub_100003810(v52);
  __chkstk_darwin(v53);
  v55 = &v186 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  sub_10000E70C();
  sub_100003990(v57);
  v58 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v59 = sub_100003810(v58);
  __chkstk_darwin(v59);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v60);
  v62 = &v186 - v61;
  v63 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v64);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v65);
  v67 = &v186 - v66;
  __chkstk_darwin(v68);
  sub_100003908();
  __chkstk_darwin(v69);
  v71 = &v186 - v70;
  v72 = type metadata accessor for LocationPreviewViewState(0);
  v73 = sub_100003810(v72);
  __chkstk_darwin(v73);
  v75 = &v186 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v77);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v78);
  v80 = (&v186 - v79);
  sub_100022FF8();
  v81 = a1;
  v187 = v82;
  sub_1000951B0(a1 + v82, v80, v83);
  v84 = *v80;
  v85 = *(v80 + *(v76 + 36) + 8) == 1;
  v206 = v76;
  v193 = v55;
  if (v85)
  {
    v86 = objc_opt_self();

    v87 = [v86 currentDevice];
    [v87 userInterfaceIdiom];

    LODWORD(v87) = *(v80 + *(v76 + 28));
    sub_100028940();
    if (v87 == 1)
    {
LABEL_7:

      return 1;
    }
  }

  else
  {

    sub_100028940();
  }

  if (*(v84 + 64) != 1)
  {
    goto LABEL_7;
  }

  v88 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  sub_100019D00();
  sub_1000951B0(v81 + v88, v71, v89);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_1000048B0();
    sub_10009EFC8(v71, v90);
    return 1;
  }

  sub_1000D388C(v71, v75, type metadata accessor for LocationPreviewViewState);
  sub_100003934();
  sub_10001B350(v93, v94, v95, v205);
  sub_100003934();
  sub_10001B350(v96, v97, v98, v208);
  sub_100003934();
  sub_10001B350(v99, v100, v101, v210);
  sub_100003934();
  sub_10001B350(v102, v103, v104, v212);
  sub_100003934();
  sub_10001B350(v105, v106, v107, v213);
  sub_100003934();
  sub_10001B350(v108, v109, v110, v214);
  sub_100003934();
  sub_10001B350(v111, v112, v113, v206);
  type metadata accessor for PreviewLocation(0);
  v114 = v189;
  sub_100003934();
  sub_10001B350(v115, v116, v117, v118);
  v119 = type metadata accessor for LocationPreviewModalViewState(0);
  v120 = v191;
  swift_storeEnumTagMultiPayload();
  v121 = v119;
  v122 = v81;
  sub_10001B350(v120, 0, 1, v121);
  type metadata accessor for SelectedSearchResult(0);
  v123 = v192;
  sub_100003934();
  sub_10001B350(v124, v125, v126, v127);
  v186 = v88;
  v128 = v190;
  sub_10043DB64(v114, v120, v123, v190);

  sub_1000180EC(v123, &qword_100CA65C0, &unk_100A313E0);
  sub_1000180EC(v120, &qword_100CA65D0, &unk_100A313F0);
  sub_1000180EC(v114, &qword_100CA65C8, &unk_100A31670);
  sub_10009EFC8(v75, type metadata accessor for LocationPreviewViewState);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v128, 0, 1, v63);
  sub_100019D00();
  sub_1000951B0(v122 + v186, v67, v129);
  v130 = v194;
  sub_1002AB08C(v128, v194, &qword_100CA65E8, &unk_100A31410);
  sub_1000038B4(v130, 1, v63);
  if (v85)
  {
    sub_1000180EC(v130, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_1000048B0();
    sub_10009EFC8(v67, v131);
    sub_100010878();
    sub_1000D388C(v130, v67, v132);
  }

  v133 = v198;
  v134 = v197;
  v135 = *(&v196 + 1);
  v136 = v193;
  v137 = v188;
  sub_100010878();
  sub_1000D388C(v67, v135, v138);
  v198 = *(v122 + 16);
  LODWORD(v197) = *(v122 + 24);
  sub_1002AB08C(v62, v137, &qword_100CA6640, qword_100A32640);
  v139 = sub_10000C834();
  v140 = v205;
  sub_1000038B4(v139, v141, v205);
  if (v85)
  {
    v142 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_1000951B0(v142, v215, v143);
    v144 = sub_10000C834();
    v146 = sub_100024D10(v144, v145, v140);

    v85 = v146 == 1;
    v147 = v212;
    v148 = v210;
    v149 = v208;
    if (!v85)
    {
      sub_1000180EC(v137, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_1000D388C(v137, v215, type metadata accessor for AppConfigurationState);

    v147 = v212;
    v148 = v210;
    v149 = v208;
  }

  sub_1002AB08C(v202, v136, &qword_100CA6638, &unk_100A31460);
  sub_1000038B4(v136, 1, v149);
  if (v85)
  {
    v150 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    sub_1000951B0(v122 + v150, v216, type metadata accessor for EnvironmentState);
    sub_1000038B4(v136, 1, v149);
    v151 = v213;
    if (!v85)
    {
      sub_1000180EC(v136, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_1000D388C(v136, v216, type metadata accessor for EnvironmentState);
    v151 = v213;
  }

  v152 = v195;
  sub_1002AB08C(v203, v195, &qword_100CA6630, &unk_100A32630);
  sub_1000038B4(v152, 1, v148);
  if (v85)
  {
    v153 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_1000951B0(v153, v217, v154);
    sub_1000038B4(v152, 1, v148);
    if (!v85)
    {
      sub_1000180EC(v152, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_1000D388C(v152, v217, type metadata accessor for LocationsState);
  }

  v155 = v196;
  sub_1002AB08C(v204, v196, &qword_100CA6628, &unk_100A31450);
  sub_1000038B4(v155, 1, v147);
  if (v85)
  {
    v156 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_1000951B0(v156, v218, v157);
    sub_1000038B4(v155, 1, v147);
    v158 = v200;
    if (!v85)
    {
      sub_1000180EC(v155, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_1000D388C(v155, v218, type metadata accessor for NotificationsState);
    v158 = v200;
  }

  sub_1002AB08C(v207, v134, &qword_100CA6620, &unk_100A32620);
  sub_1000038B4(v134, 1, v151);
  if (v85)
  {
    v159 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_1000951B0(v159, v219, v160);
    sub_1000038B4(v134, 1, v151);
    v161 = v201;
    if (!v85)
    {
      sub_1000180EC(v134, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_1000D388C(v134, v219, type metadata accessor for NotificationsOptInState);
    v161 = v201;
  }

  sub_1002AB08C(v209, v158, &qword_100CA6618, &unk_100A31440);
  v162 = v214;
  sub_1000038B4(v158, 1, v214);
  if (v85)
  {
    v163 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_1000951B0(v163, v220, v164);
    sub_1000038B4(v158, 1, v162);
    v165 = v206;
    if (!v85)
    {
      sub_1000180EC(v158, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_1000D388C(v158, v220, type metadata accessor for TimeState);
    v165 = v206;
  }

  sub_1002AB08C(v211, v161, &qword_100CA6610, &unk_100A32610);
  v166 = sub_10000C834();
  sub_1000038B4(v166, v167, v165);
  if (v85)
  {
    sub_100022FF8();
    sub_1000951B0(v122 + v187, v133, v168);
    v169 = sub_10000C834();
    sub_1000038B4(v169, v170, v165);
    v171 = v133;
    if (!v85)
    {
      sub_1000180EC(v161, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_1000D388C(v161, v133, type metadata accessor for ViewState);
    v171 = v133;
  }

  sub_100010878();
  v172 = v199;
  sub_1000D388C(v135, v199, v173);
  v175 = *(v122 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v174 = *(v122 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v177 = *(v122 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v176 = *(v122 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v178 = v122 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  v179 = *(v122 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v180 = v122;
  v182 = *(v122 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v181 = *(v178 + 16);
  v183 = *(v180 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v185) = v179;
  sub_10003E038(v198, v197, v215, v216, v217, v218, v219, v220, v171, v172, v175, v174, v177, v176, v185, v182, v181, v183, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202);
  v91 = v184;

  return v91;
}

uint64_t sub_1006C2878@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for LocationViewComponentContainerDescriptor(0, a1, a2, a3);
  v6 = sub_100588E2C(v5);
  if (v6)
  {
    sub_1001B3B30(v6 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, a4);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for LocationComponentContainerViewModel(0);

  return sub_10001B350(a4, v7, 1, v8);
}

uint64_t sub_1006C2908(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1006C2D24()
{
  sub_10000C778();
  v29 = v0;
  v2 = v1;
  v32 = v3;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v36 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v34 = v7;
  v35 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchTime();
  sub_100007FD0();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100003C38();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v29 - v19;
  __chkstk_darwin(v21);
  v23 = &v29 - v22;
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  v31 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v13 + 8);
  v30 = v11;
  v24(v17, v11);
  + infix(_:_:)();
  v24(v20, v11);
  v37[4] = v32;
  v37[5] = v2;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 1107296256;
  v37[2] = sub_1000742F0;
  v37[3] = &unk_100C67210;
  v25 = _Block_copy(v37);

  static DispatchQoS.unspecified.getter();
  v37[0] = _swiftEmptyArrayStorage;
  sub_100121A00(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v31;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v25);

  v27 = sub_10001173C();
  v28(v27);
  (*(v34 + 8))(v10, v35);
  v24(v23, v30);
  sub_10000536C();
}

uint64_t sub_1006C30F0(void *a1)
{
  v1 = a1[3];
  v8 = a1[2];
  v9 = v1;
  v2 = a1[5];
  v10 = a1[4];
  v11 = v2;
  v3 = *(*(v2 + 8) + 8);
  swift_getAssociatedTypeWitness();
  v12[0] = v8;
  v12[1] = swift_getAssociatedTypeWitness();
  v12[2] = v10;
  v12[3] = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for Page(0, v12);
  return sub_1006C2908(sub_1006D4748, &v7, v1, v4, &type metadata for Never, v3, &protocol witness table for Never, v5);
}

uint64_t sub_1006C320C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a2;
  v23 = a1;
  v24 = a8;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v15 = &v22 - v14;
  __chkstk_darwin(v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  v25[3] = a6;
  v25[4] = a7;
  v19 = type metadata accessor for AnimatableTabView(0, v25);
  (*(v22 + *(v19 + 76)))(v23);
  swift_checkMetadataState();
  dispatch thunk of Identifiable.id.getter();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_1006C33D8(v18, v15, a3, AssociatedTypeWitness, a5, AssociatedConformanceWitness, v24);
}

uint64_t sub_1006C33D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for Page(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t sub_1006C34A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a5;
  v57 = a7;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59 = a2;
  v60 = AssociatedTypeWitness;
  v61 = a4;
  v62 = AssociatedConformanceWitness;
  v14 = type metadata accessor for LazyHStackAnimatableTabView(0, &v59);
  v52 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v51 = &v47 - v18;
  v59 = a2;
  v60 = AssociatedTypeWitness;
  v61 = a4;
  v62 = AssociatedConformanceWitness;
  v19 = type metadata accessor for LegacyLazyPageAnimatableTabView(0, &v59);
  v49 = *(v19 - 8);
  __chkstk_darwin(v19);
  v48 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v47 = &v47 - v22;
  v50 = type metadata accessor for EnvironmentValues();
  v23 = *(v50 - 8);
  __chkstk_darwin(v50);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for _ConditionalContent();
  v55 = *(v26 - 8);
  v56 = v26;
  __chkstk_darwin(v26);
  v54 = &v47 - v27;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v62 = v53;
  v63 = a6;
  v28 = a1 + *(type metadata accessor for AnimatableTabView(0, &v59) + 80);
  v29 = *v28;
  if (*(v28 + 8) == 1)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v29, 0);
    (*(v23 + 8))(v25, v50);
    if (v59 != 1)
    {
      goto LABEL_6;
    }
  }

  v31 = [objc_opt_self() currentDevice];
  v32 = [v31 userInterfaceIdiom];

  if (v32 != 1)
  {
    v39 = v48;
    sub_1006C3B30();
    WitnessTable = swift_getWitnessTable(byte_100A77AD4, v19);
    v41 = v47;
    sub_1000833D8(v39, v19, WitnessTable);
    v35 = *(v49 + 8);
    v35(v39, v19);
    sub_1000833D8(v41, v19, WitnessTable);
    swift_getWitnessTable(byte_100A77A84, v14);
    v36 = v54;
    sub_1003E8038();
    v35(v39, v19);
    v37 = v41;
    v38 = v19;
    goto LABEL_8;
  }

LABEL_6:
  sub_1006C3B30();
  v33 = swift_getWitnessTable(byte_100A77A84, v14);
  v34 = v51;
  sub_1000833D8(v16, v14, v33);
  v35 = *(v52 + 8);
  v35(v16, v14);
  sub_1000833D8(v34, v14, v33);
  swift_getWitnessTable(byte_100A77AD4, v19);
  v36 = v54;
  sub_10012D09C();
  v35(v16, v14);
  v37 = v34;
  v38 = v14;
LABEL_8:
  v35(v37, v38);
  v42 = swift_getWitnessTable(byte_100A77AD4, v19);
  v43 = swift_getWitnessTable(byte_100A77A84, v14);
  v58[0] = v42;
  v58[1] = v43;
  v44 = v56;
  v45 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v56, v58);
  sub_1000833D8(v36, v44, v45);
  return (*(v55 + 8))(v36, v44);
}

void sub_1006C3B30()
{
  sub_10000C778();
  v20[2] = v2;
  v21 = v1;
  v4 = v3;
  v20[1] = *(v3 + 48);
  sub_100043A44();
  swift_getAssociatedTypeWitness();
  sub_1000717DC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Binding();
  sub_1000037C4();
  v7 = __chkstk_darwin(v6);
  v9 = v20 - v8;
  (*(v10 + 16))(v20 - v8, v0 + *(v4 + 60), v7);
  v11 = (v0 + *(v4 + 64));
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v0 + *(v4 + 68));
  v15 = *(v0 + *(v4 + 72));

  v16 = sub_1006C30F0(v4);
  v17 = *(v4 + 16);
  v18 = *(v4 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21(v9, v13, v12, v14, v15, v16, v17, AssociatedTypeWitness, v18, AssociatedConformanceWitness);
  sub_10000536C();
}

uint64_t sub_1006C3CD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = a6;
  swift_getAssociatedTypeWitness();
  v22 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for LegacyLazyPageAnimatableTabView(0, &v22);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = a1;
  AssociatedTypeWitness = a2;
  v24 = a3;
  AssociatedConformanceWitness = a4;
  v26 = a5;
  type metadata accessor for AnimatableTabView(0, &v22);
  sub_1006C3B30();
  WitnessTable = swift_getWitnessTable(byte_100A77AD4, v11, v21);
  sub_1000833D8(v14, v11, WitnessTable);
  v19 = *(v12 + 8);
  v19(v14, v11);
  sub_1000833D8(v17, v11, WitnessTable);
  return (v19)(v17, v11);
}

uint64_t sub_1006C3EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v44 = a6;
  v45 = a7;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v40 = a2;
  v46 = a8;
  v47 = a10;
  v48 = a11;
  v15 = type metadata accessor for TransitionContext(255, &v45);
  v16 = type metadata accessor for Optional();
  __chkstk_darwin(v16 - 8);
  v18 = &v39 - v17;
  v19 = type metadata accessor for Optional();
  __chkstk_darwin(v19 - 8);
  v21 = &v39 - v20;
  v22 = type metadata accessor for Binding();
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v45 = a7;
  v46 = a8;
  v47 = a10;
  v48 = a11;
  v23 = type metadata accessor for LazyHStackAnimatableTabView(0, &v45);
  sub_10001B350(v21, 1, 1, a8);
  sub_100123640(v21, a7, a8);
  v24 = (a9 + v23[14]);
  v25 = v41;
  *v24 = v40;
  v24[1] = v25;
  *(a9 + v23[15]) = v42;
  v26 = a9 + v23[16];
  *v26 = sub_1001241A8(0) & 1;
  *(v26 + 8) = v27;
  v28 = a9 + v23[17];
  *v28 = sub_1001241A8(0) & 1;
  *(v28 + 8) = v29;
  v30 = a9 + v23[18];
  *v30 = sub_1001241A8(0) & 1;
  *(v30 + 8) = v31;
  sub_10001B350(v18, 1, 1, v15);
  sub_1001246D8(v18, a7, a8, a10, a11);
  v32 = (a9 + v23[20]);
  *v32 = sub_100126398(0);
  v32[1] = v33;
  *(a9 + v23[21]) = v43;
  *(a9 + v23[22]) = v44;
  v34 = a9 + v23[23];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  v35 = a9 + v23[24];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  v36 = a9 + v23[25];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  v37 = a9 + v23[26];
  result = swift_getKeyPath();
  *v37 = result;
  *(v37 + 8) = 0;
  return result;
}

void *sub_1006C41FC()
{
  type metadata accessor for Binding();

  return Binding.wrappedValue.getter();
}

uint64_t sub_1006C423C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  type metadata accessor for Binding();
  Binding.wrappedValue.setter();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_1006C4330()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1)
  {
    return 0;
  }

  return static Solarium.isEnabled.getter();
}

uint64_t sub_1006C43AC(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + *(a1 + 84)))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = v1 + *(a1 + 92);
    v7 = *v8;
    if (*(v8 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v9 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000E4DF8(v7, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v7) = v11[15];
    }
  }

  return v7 & 1;
}

uint64_t sub_1006C4514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a1;
  v62 = a6;
  v66 = a2;
  v67 = a3;
  v53 = a3;
  v68 = a4;
  v69 = a5;
  v10 = type metadata accessor for LazyHStackAnimatableTabView(0, &v66);
  v57 = *(v10 - 8);
  v58 = v10;
  v59 = *(v57 + 64);
  __chkstk_darwin(v10);
  v55 = a4;
  v56 = &v44 - v11;
  v66 = a2;
  v67 = a3;
  v54 = a2;
  v68 = a4;
  v69 = a5;
  v61 = type metadata accessor for Page(255, &v66);
  v12 = type metadata accessor for Array();
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v45 = a5;
  v13 = type metadata accessor for PageContainer(255, &v66);
  v14 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v13);
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v66 = v16;
  v67 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v13;
  v67 = v14;
  v68 = WitnessTable;
  v69 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = v13;
  v67 = v14;
  v68 = WitnessTable;
  v69 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v66 = v13;
  v67 = &type metadata for Solarium;
  v68 = OpaqueTypeMetadata2;
  v69 = WitnessTable;
  v70 = &protocol witness table for Solarium;
  v71 = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for _ConditionalContent();
  v66 = v13;
  v67 = &type metadata for Solarium;
  v68 = OpaqueTypeMetadata2;
  v69 = WitnessTable;
  v70 = &protocol witness table for Solarium;
  v71 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v65[0] = &protocol witness table for EmptyView;
  v65[1] = v22;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v21, v65);
  v23 = type metadata accessor for VStack();
  v49 = v23;
  v48 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v23);
  v66 = v23;
  v67 = v48;
  v47 = &opaque type descriptor for <<opaque return type of View.containerRelativeFrame(_:alignment:)>>;
  swift_getOpaqueTypeMetadata2();
  v24 = type metadata accessor for ModifiedContent();
  v46 = v24;
  v51 = v12;
  v50 = swift_getWitnessTable(&protocol conformance descriptor for [A], v12);
  v25 = v53;
  v66 = v12;
  v67 = v53;
  v68 = v24;
  v69 = v50;
  v70 = a5;
  v26 = type metadata accessor for ForEach();
  v52 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v29);
  v32 = &v44 - v31;
  v33 = v57;
  v34 = v58;
  v64[2] = *(v60 + *(v58 + 88));
  v35 = v56;
  (*(v57 + 16))(v56, v30);
  v36 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 2) = v54;
  *(v37 + 3) = v25;
  v39 = v45;
  *(v37 + 4) = v38;
  *(v37 + 5) = v39;
  (*(v33 + 32))(&v37[v36], v35, v34);

  v66 = v49;
  v67 = v48;
  v64[0] = swift_getOpaqueTypeConformance2();
  v64[1] = &protocol witness table for _GeometryGroupEffect;
  v40 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v46, v64);
  swift_getWitnessTable(byte_100A77A4C, v61);
  ForEach<>.init(_:content:)();
  v63 = v40;
  v41 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v26, &v63);
  sub_1000833D8(v28, v26, v41);
  v42 = *(v52 + 8);
  v42(v28, v26);
  sub_1000833D8(v32, v26, v41);
  return (v42)(v32, v26);
}

uint64_t sub_1006C4B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v48 = a5;
  v47 = a4;
  v46 = a3;
  v50 = a2;
  v49 = a1;
  v51 = a7;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v8 = type metadata accessor for PageContainer(255, &v60);
  v9 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v8);
  v11 = type metadata accessor for EmptyVisualEffect();
  v12 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v60 = v11;
  v61 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v8;
  v61 = v9;
  v62 = WitnessTable;
  v63 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = v8;
  v61 = v9;
  v62 = WitnessTable;
  v63 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeConformance2();
  v60 = v8;
  v61 = &type metadata for Solarium;
  v62 = OpaqueTypeMetadata2;
  v63 = WitnessTable;
  v64 = &protocol witness table for Solarium;
  v65 = v15;
  swift_getOpaqueTypeMetadata2();
  v16 = type metadata accessor for _ConditionalContent();
  v60 = v8;
  v61 = &type metadata for Solarium;
  v62 = OpaqueTypeMetadata2;
  v63 = WitnessTable;
  v64 = &protocol witness table for Solarium;
  v65 = v15;
  v59[0] = &protocol witness table for EmptyView;
  v59[1] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v16, v59);
  v17 = type metadata accessor for VStack();
  v44 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v40 - v19;
  v21 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v17, v18);
  v60 = v17;
  v61 = v21;
  v41 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v42 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v40 - v23;
  v43 = v25;
  v26 = type metadata accessor for ModifiedContent();
  v45 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v40 - v30;
  v52 = v46;
  v53 = v47;
  v54 = v48;
  v55 = v7;
  v56 = v49;
  v57 = v50;
  j___s7SwiftUI19HorizontalAlignmentV6centerACvgZ(v16);
  VStack.init(alignment:spacing:content:)();
  sub_10022C350(&qword_100CB59A8, &qword_100A4D640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v7) = static Axis.Set.horizontal.getter();
  *(inited + 32) = v7;
  v33 = static Axis.Set.vertical.getter();
  *(inited + 33) = v33;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v7)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v33)
  {
    Axis.Set.init(rawValue:)();
  }

  static Alignment.center.getter();
  v34 = v41;
  View.containerRelativeFrame(_:alignment:)();
  (*(v44 + 8))(v20, v17);
  v60 = v17;
  v61 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v43;
  sub_1006C6068(v43, v35);
  (*(v42 + 8))(v24, v36);
  v58[0] = v35;
  v58[1] = &protocol witness table for _GeometryGroupEffect;
  v37 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v26, v58);
  sub_1000833D8(v28, v26, v37);
  v38 = *(v45 + 8);
  v38(v28, v26);
  sub_1000833D8(v31, v26, v37);
  return (v38)(v31, v26);
}

uint64_t sub_1006C5190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v116 = a2;
  v112 = a1;
  v109 = a7;
  v120 = a3;
  v121 = a4;
  v122 = a5;
  v123 = a6;
  type metadata accessor for TransitionContext(255, &v120);
  v97 = type metadata accessor for Optional();
  __chkstk_darwin(v97);
  v99 = &v88 - v11;
  v120 = a3;
  v121 = a4;
  v122 = a5;
  v123 = a6;
  v114 = a5;
  v115 = a6;
  v111 = type metadata accessor for Page(0, &v120);
  v95 = *(v111 - 8);
  __chkstk_darwin(v111);
  v96 = &v88 - v12;
  v120 = a3;
  v121 = a4;
  v122 = a5;
  v123 = a6;
  v13 = type metadata accessor for PageContainer(0, &v120);
  v100 = *(v13 - 8);
  __chkstk_darwin(v13);
  v98 = &v88 - v14;
  v15 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v13);
  v17 = type metadata accessor for EmptyVisualEffect();
  v18 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v120 = v17;
  v121 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v120 = v13;
  v121 = v15;
  v122 = WitnessTable;
  v123 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v120 = v13;
  v121 = v15;
  v122 = WitnessTable;
  v123 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v108 = v13;
  v120 = v13;
  v121 = &type metadata for Solarium;
  v113 = OpaqueTypeMetadata2;
  v122 = OpaqueTypeMetadata2;
  v123 = WitnessTable;
  v117 = WitnessTable;
  v124 = &protocol witness table for Solarium;
  v125 = v21;
  v107 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v94 = *(v22 - 8);
  __chkstk_darwin(v22);
  v93 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v92 = &v88 - v25;
  v26 = *(a4 - 1);
  __chkstk_darwin(v27);
  v88 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v89 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v32 = &v88 - v31;
  v33 = *(v29 - 8);
  __chkstk_darwin(v34);
  v110 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v88 - v37;
  __chkstk_darwin(v39);
  v41 = &v88 - v40;
  v106 = v22;
  v105 = type metadata accessor for _ConditionalContent();
  v104 = *(v105 - 8);
  v42 = __chkstk_darwin(v105);
  v103 = &v88 - v43;
  v44 = *(v111 + 52);
  v91 = v26;
  (*(v26 + 16))(v41, v112 + v44, a4, v42);
  sub_10001B350(v41, 0, 1, a4);
  v101 = a3;
  v120 = a3;
  v121 = a4;
  v122 = v114;
  v123 = v115;
  v102 = type metadata accessor for LazyHStackAnimatableTabView(0, &v120);
  type metadata accessor for State();
  State.wrappedValue.getter();
  v90 = TupleTypeMetadata2;
  v45 = *(TupleTypeMetadata2 + 48);
  v46 = *(v33 + 16);
  v46(v32, v41, v29);
  v46(&v32[v45], v38, v29);
  if (sub_100024D10(v32, 1, a4) == 1)
  {
    v47 = *(v33 + 8);
    v47(v38, v29);
    v47(v41, v29);
    v48 = sub_100024D10(&v32[v45], 1, a4);
    v49 = v116;
    if (v48 == 1)
    {
      v47(v32, v29);
      v50 = v102;
LABEL_13:
      v65 = v96;
      (*(v95 + 16))(v96, v112, v111);
      v66 = (v49 + *(v50 + 56));
      v67 = *v66;
      v68 = v66[1];
      type metadata accessor for State();

      v69 = v99;
      State.wrappedValue.getter();
      v70 = v98;
      v71 = v68;
      v72 = v101;
      v74 = v114;
      v73 = v115;
      sub_10012CE9C(v65, v67, v71, v69, v101, a4, v114, v115, v98);
      v75 = Solarium.init()();
      __chkstk_darwin(v75);
      *(&v88 - 6) = v72;
      *(&v88 - 5) = a4;
      *(&v88 - 4) = v74;
      *(&v88 - 3) = v73;
      v76 = swift_checkMetadataState();
      v54 = v107;
      v87 = v107;
      v77 = v93;
      v53 = v108;
      View.staticIf<A, B>(_:then:)();
      (*(v100 + 8))(v70, v53);
      v120 = v53;
      v121 = &type metadata for Solarium;
      v122 = v76;
      v123 = v117;
      v124 = &protocol witness table for Solarium;
      v125 = v54;
      v78 = swift_getOpaqueTypeConformance2();
      v79 = v92;
      v80 = v106;
      sub_1000833D8(v77, v106, v78);
      v81 = *(v94 + 8);
      v81(v77, v80);
      sub_1000833D8(v79, v80, v78);
      v56 = v103;
      v52 = v117;
      sub_10012D09C();
      v81(v77, v80);
      v82 = v80;
      v55 = v113;
      v81(v79, v82);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v46(v110, v32, v29);
  if (sub_100024D10(&v32[v45], 1, a4) == 1)
  {
    v51 = *(v33 + 8);
    v51(v38, v29);
    v51(v41, v29);
    (*(v91 + 8))(v110, a4);
    v49 = v116;
LABEL_6:
    (*(v89 + 8))(v32, v90);
    v52 = v117;
    v50 = v102;
    goto LABEL_7;
  }

  v60 = v91;
  v61 = v88;
  (*(v91 + 32))(v88, &v32[v45], a4);
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();
  v63 = *(v60 + 8);
  v63(v61, a4);
  v64 = *(v33 + 8);
  v64(v38, v29);
  v64(v41, v29);
  v63(v110, a4);
  v64(v32, v29);
  v49 = v116;
  v52 = v117;
  v50 = v102;
  if (v62)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((sub_1006C43AC(v50) & 1) == 0)
  {
    if ((sub_1006C4330() & 1) == 0)
    {
      goto LABEL_13;
    }

    v57 = v49 + *(v50 + 72);
    v58 = *v57;
    v59 = *(v57 + 8);
    LOBYTE(v120) = v58;
    v121 = v59;
    sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
    State.wrappedValue.getter();
    if (v118)
    {
      goto LABEL_13;
    }
  }

  v54 = v107;
  v53 = v108;
  v120 = v108;
  v55 = v113;
  v121 = &type metadata for Solarium;
  v122 = v113;
  v123 = v52;
  v124 = &protocol witness table for Solarium;
  v125 = v107;
  swift_getOpaqueTypeConformance2();
  v56 = v103;
  sub_1003E8038();
LABEL_14:
  v120 = v53;
  v121 = &type metadata for Solarium;
  v122 = v55;
  v123 = v52;
  v124 = &protocol witness table for Solarium;
  v125 = v54;
  v83 = swift_getOpaqueTypeConformance2();
  v119[0] = &protocol witness table for EmptyView;
  v119[1] = v83;
  v84 = v105;
  v85 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v105, v119);
  sub_1000833D8(v56, v84, v85);
  return (*(v104 + 8))(v56, v84);
}

uint64_t sub_1006C5E4C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[3] = a2;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v16 = a3 + *(type metadata accessor for LazyHStackAnimatableTabView(0, v21) + 104);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  static os_log_type_t.fault.getter();
  v18 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000E4DF8(v17, 0);
  (*(v13 + 8))(v15, v12);
  if (LOBYTE(v21[0]) == 1)
  {
LABEL_5:
    ScrollTransitionPhase.isIdentity.getter();
  }

LABEL_6:
  type metadata accessor for EmptyVisualEffect();
  sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  return VisualEffect.opacity(_:)();
}

uint64_t sub_1006C607C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v75 = a6;
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  v11 = type metadata accessor for LazyHStackAnimatableTabView(0, &v86);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v71 - v14;
  (*(v12 + 16))(&v71 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v74 = v17;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  (*(v12 + 32))(v17 + v16, v15, v11);
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  type metadata accessor for Page(255, &v86);
  v71 = type metadata accessor for Array();
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  v72 = a5;
  v18 = type metadata accessor for PageContainer(255, &v86);
  v19 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v18);
  v21 = type metadata accessor for EmptyVisualEffect();
  v22 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v86 = v21;
  v87 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v18;
  v87 = v19;
  v88 = WitnessTable;
  v89 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = v18;
  v87 = v19;
  v88 = WitnessTable;
  v89 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v86 = v18;
  v87 = &type metadata for Solarium;
  v88 = OpaqueTypeMetadata2;
  v89 = WitnessTable;
  v90 = &protocol witness table for Solarium;
  v91 = v25;
  swift_getOpaqueTypeMetadata2();
  v26 = type metadata accessor for _ConditionalContent();
  v86 = v18;
  v87 = &type metadata for Solarium;
  v88 = OpaqueTypeMetadata2;
  v89 = WitnessTable;
  v90 = &protocol witness table for Solarium;
  v91 = v25;
  v27 = swift_getOpaqueTypeConformance2();
  v85[0] = &protocol witness table for EmptyView;
  v85[1] = v27;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v26, v85);
  v28 = type metadata accessor for VStack();
  v29 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v28);
  v86 = v28;
  v87 = v29;
  swift_getOpaqueTypeMetadata2();
  v30 = type metadata accessor for ModifiedContent();
  v31 = v71;
  v32 = swift_getWitnessTable(&protocol conformance descriptor for [A], v71);
  v86 = v31;
  v87 = a3;
  v88 = v30;
  v89 = v32;
  v90 = a5;
  v33 = type metadata accessor for ForEach();
  v86 = v28;
  v87 = v29;
  v84[0] = swift_getOpaqueTypeConformance2();
  v84[1] = &protocol witness table for _GeometryGroupEffect;
  v83 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v30, v84);
  v34 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v33, &v83);
  v36 = type metadata accessor for WireframeScrollInterestView(255, v33, v34, v35);
  swift_getWitnessTable(byte_100A45998, v36);
  v37 = type metadata accessor for LazyHStack();
  v38 = swift_getWitnessTable(&protocol conformance descriptor for LazyHStack<A>, v37);
  v86 = v37;
  v87 = v38;
  swift_getOpaqueTypeMetadata2();
  v86 = v37;
  v87 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = type metadata accessor for ScrollView();
  v40 = swift_getWitnessTable(&protocol conformance descriptor for ScrollView<A>, v39);
  v86 = v39;
  v87 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v86 = v39;
  v87 = v40;
  v42 = swift_getOpaqueTypeConformance2();
  v86 = v39;
  v87 = &type metadata for Solarium;
  v88 = v41;
  v89 = v40;
  v90 = &protocol witness table for Solarium;
  v91 = v42;
  v73 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  swift_getOpaqueTypeMetadata2();
  v43 = type metadata accessor for ModifiedContent();
  v86 = v39;
  v87 = &type metadata for Solarium;
  v88 = v41;
  v89 = v40;
  v90 = &protocol witness table for Solarium;
  v91 = v42;
  v82[0] = swift_getOpaqueTypeConformance2();
  v82[1] = &protocol witness table for _AppearanceActionModifier;
  v44 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v43, v82);
  v86 = v43;
  v87 = a3;
  v45 = v72;
  v88 = v44;
  v89 = v72;
  v46 = swift_getOpaqueTypeMetadata2();
  v47 = type metadata accessor for PagingScrollTargetBehavior();
  v86 = v43;
  v87 = a3;
  v88 = v44;
  v89 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v86 = v46;
  v87 = v47;
  v88 = v48;
  v89 = &protocol witness table for PagingScrollTargetBehavior;
  v49 = swift_getOpaqueTypeMetadata2();
  v86 = v46;
  v87 = v47;
  v88 = v48;
  v89 = &protocol witness table for PagingScrollTargetBehavior;
  v50 = swift_getOpaqueTypeConformance2();
  v86 = v49;
  v87 = v50;
  swift_getOpaqueTypeMetadata2();
  v51 = type metadata accessor for ModifiedContent();
  v52 = type metadata accessor for ModifiedContent();
  v86 = v49;
  v87 = v50;
  v81[0] = swift_getOpaqueTypeConformance2();
  v81[1] = &protocol witness table for _AllowsHitTestingModifier;
  v80[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v51, v81);
  v80[1] = &protocol witness table for _TransactionModifier;
  v53 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v52, v80);
  v54 = v45[1];
  v86 = v52;
  v87 = a3;
  v88 = v53;
  v89 = v54;
  v55 = swift_getOpaqueTypeMetadata2();
  v86 = v52;
  v87 = a3;
  v88 = v53;
  v89 = v54;
  v56 = swift_getOpaqueTypeConformance2();
  v86 = v55;
  v87 = a3;
  v88 = v56;
  v89 = v54;
  v57 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for ForceInvalidationAfterExtendedLaunch(255);
  v58 = type metadata accessor for ModifiedContent();
  v86 = v55;
  v87 = a3;
  v88 = v56;
  v89 = v54;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = sub_1006D5DC4();
  v61 = sub_100121A00(&qword_100CD2340, type metadata accessor for ForceInvalidationAfterExtendedLaunch, byte_100A77C28);
  v79[0] = v59;
  v79[1] = v61;
  v62 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v58, v79);
  v86 = v57;
  v87 = &type metadata for UsePostExtendedLaunchTabViewInvalidationWorkaround;
  v88 = v58;
  v89 = v59;
  v90 = v60;
  v91 = v62;
  v63 = swift_getOpaqueTypeMetadata2();
  v64 = type metadata accessor for Array();
  v86 = v57;
  v87 = &type metadata for UsePostExtendedLaunchTabViewInvalidationWorkaround;
  v88 = v58;
  v89 = v59;
  v90 = v60;
  v91 = v62;
  v65 = swift_getOpaqueTypeConformance2();
  v78 = v54;
  v66 = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v64, &v78);
  v86 = v63;
  v87 = v64;
  v88 = v65;
  v89 = v66;
  swift_getOpaqueTypeMetadata2();
  v86 = v63;
  v87 = v64;
  v88 = v65;
  v89 = v66;
  swift_getOpaqueTypeConformance2();
  v76 = ScrollViewReader.init(content:)();
  v77 = v67;
  v68 = type metadata accessor for ScrollViewReader();
  v69 = swift_getWitnessTable(&protocol conformance descriptor for ScrollViewReader<A>, v68);
  sub_1000833D8(&v76, v68, v69);

  v76 = v86;
  v77 = v87;
  sub_1000833D8(&v76, v68, v69);
}

uint64_t sub_1006C6A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v108 = a2;
  v116 = a1;
  v117 = a7;
  v137 = a3;
  v138 = a4;
  v139 = a5;
  v140 = a6;
  v107 = type metadata accessor for LazyHStackAnimatableTabView(0, &v137);
  v114 = *(v107 - 8);
  v115 = *(v114 + 64);
  __chkstk_darwin(v107);
  v113 = &v96 - v11;
  v111 = type metadata accessor for ScrollViewProxy();
  v110 = *(v111 - 8);
  v112 = *(v110 + 64);
  __chkstk_darwin(v111);
  v109 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a3;
  v137 = a3;
  v138 = a4;
  v121 = a5;
  v139 = a5;
  v140 = a6;
  type metadata accessor for Page(255, &v137);
  v120 = type metadata accessor for Array();
  v137 = a3;
  v138 = a4;
  v123 = a4;
  v139 = a5;
  v140 = a6;
  v13 = type metadata accessor for PageContainer(255, &v137);
  v14 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v13);
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v137 = v16;
  v138 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v137 = v13;
  v138 = v14;
  v139 = WitnessTable;
  v140 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v137 = v13;
  v138 = v14;
  v139 = WitnessTable;
  v140 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v137 = v13;
  v138 = &type metadata for Solarium;
  v139 = OpaqueTypeMetadata2;
  v140 = WitnessTable;
  v141 = &protocol witness table for Solarium;
  v142 = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for _ConditionalContent();
  v137 = v13;
  v138 = &type metadata for Solarium;
  v139 = OpaqueTypeMetadata2;
  v140 = WitnessTable;
  v141 = &protocol witness table for Solarium;
  v142 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v136[0] = &protocol witness table for EmptyView;
  v136[1] = v22;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v21, v136);
  v23 = type metadata accessor for VStack();
  v24 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v23);
  v137 = v23;
  v138 = v24;
  swift_getOpaqueTypeMetadata2();
  v25 = type metadata accessor for ModifiedContent();
  v26 = v120;
  v27 = swift_getWitnessTable(&protocol conformance descriptor for [A], v120);
  v137 = v26;
  v138 = a4;
  v139 = v25;
  v140 = v27;
  v141 = a6;
  v28 = type metadata accessor for ForEach();
  v137 = v23;
  v138 = v24;
  v135[0] = swift_getOpaqueTypeConformance2();
  v135[1] = &protocol witness table for _GeometryGroupEffect;
  v134 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v25, v135);
  v29 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v28, &v134);
  v31 = type metadata accessor for WireframeScrollInterestView(255, v28, v29, v30);
  swift_getWitnessTable(byte_100A45998, v31);
  v32 = type metadata accessor for LazyHStack();
  v33 = swift_getWitnessTable(&protocol conformance descriptor for LazyHStack<A>, v32);
  v137 = v32;
  v138 = v33;
  swift_getOpaqueTypeMetadata2();
  v137 = v32;
  v138 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = type metadata accessor for ScrollView();
  v35 = swift_getWitnessTable(&protocol conformance descriptor for ScrollView<A>, v34);
  v137 = v34;
  v138 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v137 = v34;
  v138 = v35;
  v37 = swift_getOpaqueTypeConformance2();
  v137 = v34;
  v138 = &type metadata for Solarium;
  v139 = v36;
  v140 = v35;
  v141 = &protocol witness table for Solarium;
  v142 = v37;
  v106 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  swift_getOpaqueTypeMetadata2();
  v38 = type metadata accessor for ModifiedContent();
  v137 = v34;
  v138 = &type metadata for Solarium;
  v139 = v36;
  v140 = v35;
  v141 = &protocol witness table for Solarium;
  v142 = v37;
  v133[0] = swift_getOpaqueTypeConformance2();
  v133[1] = &protocol witness table for _AppearanceActionModifier;
  v39 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v38, v133);
  v40 = v123;
  v137 = v38;
  v138 = v123;
  v139 = v39;
  v140 = a6;
  v41 = swift_getOpaqueTypeMetadata2();
  v42 = type metadata accessor for PagingScrollTargetBehavior();
  v137 = v38;
  v138 = v40;
  v139 = v39;
  v140 = a6;
  v119 = a6;
  v43 = swift_getOpaqueTypeConformance2();
  v137 = v41;
  v138 = v42;
  v139 = v43;
  v140 = &protocol witness table for PagingScrollTargetBehavior;
  v44 = swift_getOpaqueTypeMetadata2();
  v137 = v41;
  v138 = v42;
  v139 = v43;
  v140 = &protocol witness table for PagingScrollTargetBehavior;
  v45 = swift_getOpaqueTypeConformance2();
  v137 = v44;
  v138 = v45;
  swift_getOpaqueTypeMetadata2();
  v46 = type metadata accessor for ModifiedContent();
  v47 = type metadata accessor for ModifiedContent();
  v137 = v44;
  v138 = v45;
  v132[0] = swift_getOpaqueTypeConformance2();
  v132[1] = &protocol witness table for _AllowsHitTestingModifier;
  v131[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v46, v132);
  v131[1] = &protocol witness table for _TransactionModifier;
  v48 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v47, v131);
  v49 = a6[1];
  v137 = v47;
  v138 = v40;
  v139 = v48;
  v140 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v137 = v47;
  v138 = v40;
  v139 = v48;
  v140 = v49;
  v51 = swift_getOpaqueTypeConformance2();
  v137 = v50;
  v138 = v40;
  v139 = v51;
  v140 = v49;
  v118 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v52 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for ForceInvalidationAfterExtendedLaunch(255);
  v53 = type metadata accessor for ModifiedContent();
  v137 = v50;
  v138 = v40;
  v139 = v51;
  v140 = v49;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_1006D5DC4();
  v56 = sub_100121A00(&qword_100CD2340, type metadata accessor for ForceInvalidationAfterExtendedLaunch, byte_100A77C28);
  v130[0] = v54;
  v130[1] = v56;
  v57 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v53, v130);
  v137 = v52;
  v138 = &type metadata for UsePostExtendedLaunchTabViewInvalidationWorkaround;
  v139 = v53;
  v140 = v54;
  v141 = v55;
  v142 = v57;
  v58 = swift_getOpaqueTypeMetadata2();
  v102 = v58;
  v105 = *(v58 - 8);
  __chkstk_darwin(v58);
  v60 = &v96 - v59;
  v97 = &v96 - v59;
  v61 = type metadata accessor for Array();
  v99 = v61;
  v137 = v52;
  v138 = &type metadata for UsePostExtendedLaunchTabViewInvalidationWorkaround;
  v139 = v53;
  v140 = v54;
  v141 = v55;
  v142 = v57;
  v62 = swift_getOpaqueTypeConformance2();
  v100 = v62;
  v129 = v49;
  v101 = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v61, &v129);
  v137 = v58;
  v138 = v61;
  v139 = v62;
  v140 = v101;
  v104 = swift_getOpaqueTypeMetadata2();
  v106 = *(v104 - 8);
  __chkstk_darwin(v104);
  v98 = &v96 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v103 = &v96 - v65;
  v66 = v107;
  v67 = v108;
  sub_1006C7884(v107, v60);
  v137 = *(v67 + *(v66 + 88));
  v125 = v122;
  v68 = v123;
  v126 = v123;
  v127 = v121;
  v128 = v119;

  v69 = swift_checkMetadataState();
  v70 = swift_getWitnessTable(&protocol conformance descriptor for [A], v69);
  v72 = sub_1006C2908(sub_1006D6864, v124, v69, v68, &type metadata for Never, v70, &protocol witness table for Never, v71);
  v120 = v72;

  v137 = v72;
  v73 = v110;
  v74 = v109;
  v75 = v111;
  (*(v110 + 16))(v109, v116, v111);
  v76 = v114;
  v77 = v113;
  v78 = v66;
  (*(v114 + 16))(v113, v67, v66);
  v79 = v73;
  v80 = (*(v73 + 80) + 48) & ~*(v73 + 80);
  v81 = (v112 + *(v76 + 80) + v80) & ~*(v76 + 80);
  v82 = swift_allocObject();
  *(v82 + 2) = v122;
  *(v82 + 3) = v68;
  v83 = v119;
  *(v82 + 4) = v121;
  *(v82 + 5) = v83;
  (*(v79 + 32))(&v82[v80], v74, v75);
  (*(v76 + 32))(&v82[v81], v77, v78);
  v84 = swift_checkMetadataState();
  v85 = v102;
  v86 = v100;
  v87 = v101;
  static VerticalSizingBehaviorKey.defaultValue.getter();
  v88 = v98;
  v89 = v85;
  v90 = v97;
  View.onChange<A>(of:initial:_:)();

  (*(v105 + 8))(v90, v89);
  v137 = v89;
  v138 = v84;
  v139 = v86;
  v140 = v87;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = v103;
  v93 = v104;
  sub_1000833D8(v88, v104, v91);
  v94 = v106[1];
  v94(v88, v93);
  sub_1000833D8(v92, v93, v91);
  return (v94)(v92, v93);
}

uint64_t sub_1006C7884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v196 = a2;
  v3 = *(a1 + 24);
  v197 = type metadata accessor for Optional();
  v144 = *(v197 - 8);
  __chkstk_darwin(v197);
  v198 = &v144 - v4;
  v194 = *(v3 - 1);
  __chkstk_darwin(v5);
  v195 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v193 = &v144 - v8;
  v9 = *(a1 + 16);
  v214 = *(a1 + 32);
  v210 = a1;
  v229 = v9;
  v230 = v3;
  v10 = v9;
  v231 = v214;
  v147 = type metadata accessor for TransitionContext(255, &v229);
  v148 = type metadata accessor for Optional();
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v144 - v11;
  v12 = type metadata accessor for ScrollIndicatorVisibility();
  v191 = *(v12 - 8);
  v192 = v12;
  __chkstk_darwin(v12);
  v190 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for PagingScrollTargetBehavior();
  v189 = *(v207 - 8);
  __chkstk_darwin(v207);
  v188 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for Binding();
  v185 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v144 - v15;
  v213 = *(a1 - 8);
  v204 = *(v213 + 64);
  __chkstk_darwin(v16);
  v211 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = v10;
  v229 = v10;
  v230 = v3;
  v231 = v214;
  type metadata accessor for Page(255, &v229);
  v209 = type metadata accessor for Array();
  v229 = v10;
  v230 = v3;
  v149 = v3;
  v231 = v214;
  v18 = type metadata accessor for PageContainer(255, &v229);
  v19 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v18);
  v21 = type metadata accessor for EmptyVisualEffect();
  v22 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v229 = v21;
  v230 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v229 = v18;
  v230 = v19;
  *&v231 = WitnessTable;
  *(&v231 + 1) = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v229 = v18;
  v230 = v19;
  *&v231 = WitnessTable;
  *(&v231 + 1) = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v229 = v18;
  v230 = &type metadata for Solarium;
  *&v231 = OpaqueTypeMetadata2;
  *(&v231 + 1) = WitnessTable;
  v232 = &protocol witness table for Solarium;
  v233 = v25;
  swift_getOpaqueTypeMetadata2();
  v26 = type metadata accessor for _ConditionalContent();
  v229 = v18;
  v230 = &type metadata for Solarium;
  *&v231 = OpaqueTypeMetadata2;
  *(&v231 + 1) = WitnessTable;
  v232 = &protocol witness table for Solarium;
  v233 = v25;
  v27 = swift_getOpaqueTypeConformance2();
  v228[0] = &protocol witness table for EmptyView;
  v228[1] = v27;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v26, v228);
  v28 = type metadata accessor for VStack();
  v29 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v28);
  v229 = v28;
  v230 = v29;
  swift_getOpaqueTypeMetadata2();
  v30 = type metadata accessor for ModifiedContent();
  v31 = v209;
  v32 = swift_getWitnessTable(&protocol conformance descriptor for [A], v209);
  v229 = v31;
  v230 = v3;
  *&v231 = v30;
  *(&v231 + 1) = v32;
  v205 = *(&v214 + 1);
  v232 = *(&v214 + 1);
  v33 = type metadata accessor for ForEach();
  v229 = v28;
  v230 = v29;
  v227[0] = swift_getOpaqueTypeConformance2();
  v227[1] = &protocol witness table for _GeometryGroupEffect;
  v209 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v226 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v30, v227);
  v34 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v33, &v226);
  v36 = type metadata accessor for WireframeScrollInterestView(255, v33, v34, v35);
  swift_getWitnessTable(byte_100A45998, v36);
  v37 = type metadata accessor for LazyHStack();
  v38 = swift_getWitnessTable(&protocol conformance descriptor for LazyHStack<A>, v37);
  v229 = v37;
  v230 = v38;
  v202 = swift_getOpaqueTypeMetadata2();
  v229 = v37;
  v230 = v38;
  v201 = swift_getOpaqueTypeConformance2();
  v39 = type metadata accessor for ScrollView();
  v203 = *(v39 - 8);
  v40 = __chkstk_darwin(v39);
  v200 = &v144 - v41;
  v42 = swift_getWitnessTable(&protocol conformance descriptor for ScrollView<A>, v39, v40);
  v229 = v39;
  v230 = v42;
  v43 = swift_getOpaqueTypeMetadata2();
  v229 = v39;
  v230 = v42;
  v44 = swift_getOpaqueTypeConformance2();
  v229 = v39;
  v230 = &type metadata for Solarium;
  *&v231 = v43;
  v153 = v43;
  *(&v231 + 1) = v42;
  v232 = &protocol witness table for Solarium;
  v233 = v44;
  v45 = v44;
  v199 = v44;
  v167 = swift_getOpaqueTypeMetadata2();
  v173 = *(v167 - 8);
  __chkstk_darwin(v167);
  v159 = &v144 - v46;
  v47 = type metadata accessor for ModifiedContent();
  v175 = *(v47 - 8);
  __chkstk_darwin(v47);
  v164 = &v144 - v48;
  v229 = v39;
  v230 = &type metadata for Solarium;
  *&v231 = v43;
  *(&v231 + 1) = v42;
  v232 = &protocol witness table for Solarium;
  v233 = v45;
  v163 = swift_getOpaqueTypeConformance2();
  v225[0] = v163;
  v225[1] = &protocol witness table for _AppearanceActionModifier;
  v49 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v47, v225);
  v50 = v47;
  v161 = v47;
  v162 = v49;
  v51 = v149;
  v229 = v47;
  v230 = v149;
  *&v231 = v49;
  v52 = v49;
  *(&v231 + 1) = *(&v214 + 1);
  v53 = swift_getOpaqueTypeMetadata2();
  v169 = *(v53 - 8);
  __chkstk_darwin(v53);
  v160 = &v144 - v54;
  v229 = v50;
  v230 = v51;
  *&v231 = v52;
  *(&v231 + 1) = *(&v214 + 1);
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v53;
  v155 = v53;
  v57 = v207;
  v229 = v53;
  v230 = v207;
  *&v231 = v55;
  *(&v231 + 1) = &protocol witness table for PagingScrollTargetBehavior;
  v58 = v55;
  v156 = v55;
  v59 = swift_getOpaqueTypeMetadata2();
  v166 = *(v59 - 8);
  __chkstk_darwin(v59);
  v154 = &v144 - v60;
  v229 = v56;
  v230 = v57;
  *&v231 = v58;
  *(&v231 + 1) = &protocol witness table for PagingScrollTargetBehavior;
  v61 = swift_getOpaqueTypeConformance2();
  v229 = v59;
  v230 = v61;
  v150 = v61;
  v151 = v59;
  v62 = v61;
  v63 = swift_getOpaqueTypeMetadata2();
  v172 = *(v63 - 8);
  __chkstk_darwin(v63);
  v152 = &v144 - v64;
  v174 = v65;
  v66 = type metadata accessor for ModifiedContent();
  v170 = *(v66 - 8);
  __chkstk_darwin(v66);
  v168 = &v144 - v67;
  v68 = type metadata accessor for ModifiedContent();
  v177 = *(v68 - 8);
  __chkstk_darwin(v68);
  v176 = &v144 - v69;
  v229 = v59;
  v230 = v62;
  v70 = v51;
  v157 = swift_getOpaqueTypeConformance2();
  v224[0] = v157;
  v224[1] = &protocol witness table for _AllowsHitTestingModifier;
  v71 = v209;
  v171 = v66;
  v158 = swift_getWitnessTable(v209, v66, v224);
  v223[0] = v158;
  v223[1] = &protocol witness table for _TransactionModifier;
  v72 = swift_getWitnessTable(v71, v68, v223);
  v73 = *(v205 + 1);
  v229 = v68;
  v230 = v70;
  *&v231 = v72;
  *(&v231 + 1) = v73;
  v74 = swift_getOpaqueTypeMetadata2();
  v179 = *(v74 - 8);
  __chkstk_darwin(v74);
  v206 = &v144 - v75;
  v178 = v68;
  v229 = v68;
  v230 = v70;
  v165 = v72;
  *&v231 = v72;
  *(&v231 + 1) = v73;
  v180 = swift_getOpaqueTypeConformance2();
  v181 = v74;
  v229 = v74;
  v230 = v70;
  *&v231 = v180;
  *(&v231 + 1) = v73;
  v209 = v73;
  v76 = swift_getOpaqueTypeMetadata2();
  v182 = *(v76 - 8);
  v183 = v76;
  __chkstk_darwin(v76);
  v208 = &v144 - v77;
  v78 = static Axis.Set.horizontal.getter();
  v79 = v212;
  v219[2] = v212;
  v219[3] = v70;
  v220 = v214;
  v80 = v186;
  v221 = v186;
  v81 = v200;
  sub_100127D4C(v78, sub_1006D5E58, v219, v202, v201);
  Solarium.init()();
  v215 = v79;
  v216 = v70;
  v217 = v214;
  v218 = v80;
  swift_checkMetadataState();
  v142 = v199;
  v82 = v159;
  View.staticIf<A, B>(_:then:)();
  (*(v203 + 8))(v81, v39);
  v83 = v213;
  v84 = v211;
  v85 = v210;
  v202 = *(v213 + 16);
  v203 = v213 + 16;
  v202(v211, v80, v210);
  v86 = *(v83 + 80);
  v87 = (v86 + 48) & ~v86;
  v200 = (v87 + v204);
  v201 = v86;
  v88 = swift_allocObject();
  *(v88 + 16) = v79;
  *(v88 + 24) = v70;
  *(v88 + 32) = v214;
  v89 = *(v83 + 32);
  v204 = v87;
  v213 = v83 + 32;
  v199 = v89;
  v89(v88 + v87, v84, v85);
  v90 = v164;
  v91 = v167;
  View.onAppear(perform:)();
  v92 = v80;

  (*(v173 + 8))(v82, v91);
  v93 = v80 + *(v85 + 52);
  v94 = type metadata accessor for State();
  v95 = v184;
  v167 = v94;
  v173 = v93;
  State.projectedValue.getter();
  v97 = v160;
  v96 = v161;
  View.scrollPosition<A>(id:anchor:)();
  (*(v185 + 8))(v95, v187);
  v98 = v90;
  v99 = v152;
  (*(v175 + 8))(v98, v96);
  v100 = v188;
  PagingScrollTargetBehavior.init()();
  v102 = v154;
  v101 = v155;
  v103 = v207;
  View.scrollTargetBehavior<A>(_:)();
  (*(v189 + 8))(v100, v103);
  (*(v169 + 8))(v97, v101);
  v104 = v190;
  static ScrollIndicatorVisibility.hidden.getter();
  v105 = v151;
  sub_10012BC6C();
  View.scrollIndicators(_:axes:)();
  (*(v191 + 8))(v104, v192);
  v106 = v210;
  (*(v166 + 8))(v102, v105);
  if ((sub_1006C43AC(v106) & 1) == 0)
  {
    v107 = v148;
    type metadata accessor for State();
    v108 = v145;
    State.wrappedValue.getter();
    sub_100024D10(v108, 1, v147);
    (*(v146 + 8))(v108, v107);
  }

  v109 = v168;
  v110 = v174;
  View.allowsHitTesting(_:)();
  (*(v172 + 8))(v99, v110);
  v111 = v176;
  v112 = v171;
  View.transaction(_:)();
  (*(v170 + 8))(v109, v112);
  v113 = v193;
  sub_1006C41FC();
  v114 = v211;
  v202(v211, v92, v106);
  v115 = swift_allocObject();
  *(v115 + 16) = v212;
  *(v115 + 24) = v70;
  *(v115 + 32) = v214;
  v199(v115 + v204, v114, v106);
  v116 = v178;
  static VerticalSizingBehaviorKey.defaultValue.getter();
  View.onChange<A>(of:initial:_:)();

  v117 = v70;
  v118 = v194;
  v119 = *(v194 + 8);
  v207 = v194 + 8;
  v205 = v119;
  v119(v113, v117);
  (*(v177 + 8))(v111, v116);
  v120 = v198;
  State.wrappedValue.getter();
  v121 = v120;
  if (sub_100024D10(v120, 1, v117) == 1)
  {
    v122 = v195;
    v123 = v106;
    sub_1006C41FC();
    v124 = v198;
    if (sub_100024D10(v198, 1, v117) != 1)
    {
      (*(v144 + 8))(v124, v197);
    }
  }

  else
  {
    v123 = v106;
    v125 = *(v118 + 32);
    v122 = v195;
    v125(v195, v121, v117);
  }

  v126 = v211;
  v202(v211, v92, v123);
  v127 = swift_allocObject();
  v128 = v212;
  *&v129 = v212;
  *(&v129 + 1) = v117;
  v130 = v214;
  *(v127 + 16) = v129;
  *(v127 + 32) = v130;
  v199(v127 + v204, v126, v123);
  v131 = v180;
  v132 = v181;
  v133 = v209;
  static VerticalSizingBehaviorKey.defaultValue.getter();
  v134 = v206;
  View.onChange<A>(of:initial:_:)();

  v205(v122, v117);
  v135 = (*(v179 + 8))(v134, v132);
  __chkstk_darwin(v135);
  *(&v144 - 4) = v128;
  *(&v144 - 3) = v117;
  v143 = *(&v214 + 1);
  type metadata accessor for ForceInvalidationAfterExtendedLaunch(255);
  v136 = v183;
  v137 = type metadata accessor for ModifiedContent();
  v229 = v132;
  v230 = v117;
  *&v231 = v131;
  *(&v231 + 1) = v133;
  v138 = swift_getOpaqueTypeConformance2();
  sub_1006D5DC4();
  v139 = sub_100121A00(&qword_100CD2340, type metadata accessor for ForceInvalidationAfterExtendedLaunch, byte_100A77C28);
  v222[0] = v138;
  v222[1] = v139;
  v142 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v137, v222);
  v140 = v208;
  View.staticIf<A, B>(_:then:)();
  return (*(v182 + 8))(v140, v136);
}

uint64_t sub_1006C9004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v9 = type metadata accessor for Page(0, v11);
  return (*(*(a3 - 8) + 16))(a6, a1 + *(v9 + 52), a3);
}

uint64_t sub_1006C9090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v17 - v14;
  v19[0] = a5;
  v19[1] = a6;
  v19[2] = a7;
  v19[3] = a8;
  type metadata accessor for LazyHStackAnimatableTabView(0, v19);
  type metadata accessor for State();
  State.wrappedValue.getter();
  v18 = a8;
  swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v12, &v18);
  ScrollViewProxy.scrollTo<A>(_:anchor:)();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1006C91F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a1;
  v68 = a6;
  v78 = a2;
  v79 = a3;
  v65 = a2;
  v80 = a4;
  v81 = a5;
  v66 = a4;
  v70 = a5;
  type metadata accessor for Page(255, &v78);
  v10 = type metadata accessor for Array();
  v78 = a2;
  v79 = a3;
  v11 = a3;
  v69 = a3;
  v80 = a4;
  v81 = a5;
  v12 = type metadata accessor for PageContainer(255, &v78);
  v13 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v12);
  v15 = type metadata accessor for EmptyVisualEffect();
  v16 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v78 = v15;
  v79 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = v12;
  v79 = v13;
  v80 = WitnessTable;
  v81 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v78 = v12;
  v79 = v13;
  v80 = WitnessTable;
  v81 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v78 = v12;
  v79 = &type metadata for Solarium;
  v80 = OpaqueTypeMetadata2;
  v81 = WitnessTable;
  v82 = &protocol witness table for Solarium;
  v83 = v19;
  swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for _ConditionalContent();
  v78 = v12;
  v79 = &type metadata for Solarium;
  v80 = OpaqueTypeMetadata2;
  v81 = WitnessTable;
  v82 = &protocol witness table for Solarium;
  v83 = v19;
  v77[0] = &protocol witness table for EmptyView;
  v77[1] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v20, v77);
  v21 = type metadata accessor for VStack();
  v22 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v21);
  v78 = v21;
  v79 = v22;
  swift_getOpaqueTypeMetadata2();
  v23 = type metadata accessor for ModifiedContent();
  v24 = swift_getWitnessTable(&protocol conformance descriptor for [A], v10);
  v78 = v10;
  v79 = v11;
  v80 = v23;
  v81 = v24;
  v82 = v70;
  v25 = type metadata accessor for ForEach();
  v78 = v21;
  v79 = v22;
  v76[0] = swift_getOpaqueTypeConformance2();
  v76[1] = &protocol witness table for _GeometryGroupEffect;
  v75 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v23, v76);
  v26 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v25, &v75);
  v28 = type metadata accessor for WireframeScrollInterestView(255, v25, v26, v27);
  swift_getWitnessTable(byte_100A45998, v28);
  v29 = type metadata accessor for LazyHStack();
  v30 = swift_getWitnessTable(&protocol conformance descriptor for LazyHStack<A>, v29);
  v78 = v29;
  v79 = v30;
  swift_getOpaqueTypeMetadata2();
  v78 = v29;
  v79 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = type metadata accessor for ScrollView();
  v32 = swift_getWitnessTable(&protocol conformance descriptor for ScrollView<A>, v31);
  v78 = v31;
  v79 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v78 = v31;
  v79 = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v78 = v31;
  v79 = &type metadata for Solarium;
  v80 = v33;
  v81 = v32;
  v82 = &protocol witness table for Solarium;
  v83 = v34;
  swift_getOpaqueTypeMetadata2();
  v35 = type metadata accessor for ModifiedContent();
  v78 = v31;
  v79 = &type metadata for Solarium;
  v80 = v33;
  v81 = v32;
  v82 = &protocol witness table for Solarium;
  v83 = v34;
  v64[1] = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  v74[0] = swift_getOpaqueTypeConformance2();
  v74[1] = &protocol witness table for _AppearanceActionModifier;
  v36 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v35, v74);
  v78 = v35;
  v79 = v69;
  v80 = v36;
  v81 = v70;
  v37 = swift_getOpaqueTypeMetadata2();
  v38 = type metadata accessor for PagingScrollTargetBehavior();
  v78 = v35;
  v79 = v69;
  v80 = v36;
  v81 = v70;
  v39 = swift_getOpaqueTypeConformance2();
  v78 = v37;
  v79 = v38;
  v80 = v39;
  v81 = &protocol witness table for PagingScrollTargetBehavior;
  v40 = swift_getOpaqueTypeMetadata2();
  v78 = v37;
  v79 = v38;
  v80 = v39;
  v81 = &protocol witness table for PagingScrollTargetBehavior;
  v41 = swift_getOpaqueTypeConformance2();
  v78 = v40;
  v79 = v41;
  swift_getOpaqueTypeMetadata2();
  v42 = type metadata accessor for ModifiedContent();
  v43 = type metadata accessor for ModifiedContent();
  v78 = v40;
  v79 = v41;
  v73[0] = swift_getOpaqueTypeConformance2();
  v73[1] = &protocol witness table for _AllowsHitTestingModifier;
  v72[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v42, v73);
  v72[1] = &protocol witness table for _TransactionModifier;
  v44 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v43, v72);
  v45 = *(v70 + 1);
  v78 = v43;
  v79 = v69;
  v80 = v44;
  v81 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v78 = v43;
  v79 = v69;
  v80 = v44;
  v81 = v45;
  v47 = swift_getOpaqueTypeConformance2();
  v78 = v46;
  v79 = v69;
  v80 = v47;
  v81 = v45;
  v48 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for ForceInvalidationAfterExtendedLaunch(255);
  v49 = type metadata accessor for ModifiedContent();
  v78 = v46;
  v79 = v69;
  v80 = v47;
  v81 = v45;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_1006D5DC4();
  v71[0] = v50;
  v71[1] = sub_100121A00(&qword_100CD2340, type metadata accessor for ForceInvalidationAfterExtendedLaunch, byte_100A77C28);
  v52 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v49, v71);
  v78 = v48;
  v79 = &type metadata for UsePostExtendedLaunchTabViewInvalidationWorkaround;
  v80 = v49;
  v81 = v50;
  v82 = v51;
  v83 = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v56 = v64 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v59 = v64 - v58;
  v78 = v65;
  v79 = v69;
  v80 = v66;
  v81 = v70;
  v60 = type metadata accessor for LazyHStackAnimatableTabView(0, &v78);
  sub_1006C7884(v60, v56);
  v78 = v48;
  v79 = &type metadata for UsePostExtendedLaunchTabViewInvalidationWorkaround;
  v80 = v49;
  v81 = v50;
  v82 = v51;
  v83 = v52;
  v61 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v56, v53, v61);
  v62 = *(v54 + 8);
  v62(v56, v53);
  sub_1000833D8(v59, v53, v61);
  return (v62)(v59, v53);
}

uint64_t sub_1006C9AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a1;
  v54 = a6;
  v10 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v10 - 8);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a2;
  v65 = a3;
  v50 = a2;
  v66 = a4;
  v67 = a5;
  v51 = a4;
  v55 = a5;
  type metadata accessor for Page(255, &v64);
  v12 = type metadata accessor for Array();
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v13 = type metadata accessor for PageContainer(255, &v64);
  v14 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v13);
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v64 = v16;
  v65 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v13;
  v65 = v14;
  v66 = WitnessTable;
  v67 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = v13;
  v65 = v14;
  v66 = WitnessTable;
  v67 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v64 = v13;
  v65 = &type metadata for Solarium;
  v66 = OpaqueTypeMetadata2;
  v67 = WitnessTable;
  v68 = &protocol witness table for Solarium;
  v69 = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for _ConditionalContent();
  v64 = v13;
  v65 = &type metadata for Solarium;
  v66 = OpaqueTypeMetadata2;
  v67 = WitnessTable;
  v68 = &protocol witness table for Solarium;
  v69 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v63[0] = &protocol witness table for EmptyView;
  v63[1] = v22;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v21, v63);
  v23 = type metadata accessor for VStack();
  v24 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v23);
  v64 = v23;
  v65 = v24;
  swift_getOpaqueTypeMetadata2();
  v25 = type metadata accessor for ModifiedContent();
  v26 = swift_getWitnessTable(&protocol conformance descriptor for [A], v12);
  v64 = v12;
  v65 = a3;
  v66 = v25;
  v67 = v26;
  v68 = v55;
  v27 = type metadata accessor for ForEach();
  v64 = v23;
  v65 = v24;
  v62[0] = swift_getOpaqueTypeConformance2();
  v62[1] = &protocol witness table for _GeometryGroupEffect;
  v61 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v25, v62);
  v28 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v27, &v61);
  v30 = type metadata accessor for WireframeScrollInterestView(255, v27, v28, v29);
  swift_getWitnessTable(byte_100A45998, v30);
  v31 = type metadata accessor for LazyHStack();
  v49 = *(v31 - 8);
  v32 = __chkstk_darwin(v31);
  v34 = &v46 - v33;
  v47 = swift_getWitnessTable(&protocol conformance descriptor for LazyHStack<A>, v31, v32);
  v64 = v31;
  v65 = v47;
  v48 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  v35 = swift_getOpaqueTypeMetadata2();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v46 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v46 - v40;
  v56 = v50;
  v57 = a3;
  v58 = v51;
  v59 = v55;
  v60 = v53;
  static VerticalAlignment.center.getter();
  sub_100128E20();
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  v42 = v47;
  View.scrollTargetLayout(isEnabled:)();
  (*(v49 + 8))(v34, v31);
  v64 = v31;
  v65 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v38, v35, v43);
  v44 = *(v36 + 8);
  v44(v38, v35);
  sub_1000833D8(v41, v35, v43);
  return (v44)(v41, v35);
}

uint64_t sub_1006CA150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a1;
  v41 = a6;
  v45 = a2;
  v46 = a3;
  v38 = a2;
  v39 = a4;
  v47 = a4;
  v48 = a5;
  type metadata accessor for Page(255, &v45);
  v37 = type metadata accessor for Array();
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v10 = type metadata accessor for PageContainer(255, &v45);
  v11 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v10);
  v13 = type metadata accessor for EmptyVisualEffect();
  v14 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v45 = v13;
  v46 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v10;
  v46 = v11;
  v47 = WitnessTable;
  v48 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = v10;
  v46 = v11;
  v47 = WitnessTable;
  v48 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v45 = v10;
  v46 = &type metadata for Solarium;
  v47 = OpaqueTypeMetadata2;
  v48 = WitnessTable;
  v49 = &protocol witness table for Solarium;
  v50 = v17;
  swift_getOpaqueTypeMetadata2();
  v18 = type metadata accessor for _ConditionalContent();
  v45 = v10;
  v46 = &type metadata for Solarium;
  v47 = OpaqueTypeMetadata2;
  v48 = WitnessTable;
  v49 = &protocol witness table for Solarium;
  v50 = v17;
  v44[0] = &protocol witness table for EmptyView;
  v44[1] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v18, v44);
  v19 = type metadata accessor for VStack();
  v20 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v19);
  v45 = v19;
  v46 = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for ModifiedContent();
  v22 = swift_getWitnessTable(&protocol conformance descriptor for [A], v37);
  v45 = v37;
  v46 = a3;
  v47 = v21;
  v48 = v22;
  v49 = a5;
  v23 = type metadata accessor for ForEach();
  v45 = v19;
  v46 = v20;
  v43[0] = swift_getOpaqueTypeConformance2();
  v43[1] = &protocol witness table for _GeometryGroupEffect;
  v42 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v21, v43);
  v24 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v23, &v42);
  v26 = type metadata accessor for WireframeScrollInterestView(0, v23, v24, v25);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v37 - v31;
  v45 = v38;
  v46 = a3;
  v47 = v39;
  v48 = a5;
  v33 = type metadata accessor for LazyHStackAnimatableTabView(0, &v45);
  sub_100129F80(v33, v29);
  v34 = swift_getWitnessTable(byte_100A45998, v26);
  sub_1000833D8(v29, v26, v34);
  v35 = *(v27 + 8);
  v35(v29, v26);
  sub_1000833D8(v32, v26, v34);
  return (v35)(v32, v26);
}

uint64_t sub_1006CA5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a2;
  v65 = a1;
  v66 = a7;
  v67 = a4;
  v71 = a3;
  v72 = a4;
  v58 = a3;
  v59 = a5;
  v73 = a5;
  v74 = a6;
  v63 = type metadata accessor for LazyHStackAnimatableTabView(0, &v71);
  v61 = *(v63 - 8);
  v62 = *(v61 + 64);
  __chkstk_darwin(v63);
  v60 = &v54 - v11;
  v71 = a3;
  v72 = a4;
  v73 = a5;
  v74 = a6;
  type metadata accessor for Page(255, &v71);
  v12 = type metadata accessor for Array();
  v71 = a3;
  v72 = a4;
  v73 = a5;
  v74 = a6;
  v57 = a6;
  v13 = type metadata accessor for PageContainer(255, &v71);
  v14 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v13);
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v71 = v16;
  v72 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = v13;
  v72 = v14;
  v73 = WitnessTable;
  v74 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = v13;
  v72 = v14;
  v73 = WitnessTable;
  v74 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v71 = v13;
  v72 = &type metadata for Solarium;
  v73 = OpaqueTypeMetadata2;
  v74 = WitnessTable;
  v75 = &protocol witness table for Solarium;
  v76 = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for _ConditionalContent();
  v71 = v13;
  v72 = &type metadata for Solarium;
  v73 = OpaqueTypeMetadata2;
  v74 = WitnessTable;
  v75 = &protocol witness table for Solarium;
  v76 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v70[0] = &protocol witness table for EmptyView;
  v70[1] = v22;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v21, v70);
  v23 = type metadata accessor for VStack();
  v24 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v23);
  v71 = v23;
  v72 = v24;
  swift_getOpaqueTypeMetadata2();
  v25 = type metadata accessor for ModifiedContent();
  v26 = swift_getWitnessTable(&protocol conformance descriptor for [A], v12);
  v71 = v12;
  v72 = v67;
  v73 = v25;
  v74 = v26;
  v75 = a6;
  v27 = type metadata accessor for ForEach();
  v71 = v23;
  v72 = v24;
  v69[0] = swift_getOpaqueTypeConformance2();
  v69[1] = &protocol witness table for _GeometryGroupEffect;
  v68 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v25, v69);
  v28 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v27, &v68);
  v30 = type metadata accessor for WireframeScrollInterestView(255, v27, v28, v29);
  swift_getWitnessTable(byte_100A45998, v30);
  v31 = type metadata accessor for LazyHStack();
  v32 = swift_getWitnessTable(&protocol conformance descriptor for LazyHStack<A>, v31);
  v71 = v31;
  v72 = v32;
  swift_getOpaqueTypeMetadata2();
  v71 = v31;
  v72 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = type metadata accessor for ScrollView();
  v55 = swift_getWitnessTable(&protocol conformance descriptor for ScrollView<A>, v33);
  v71 = v33;
  v72 = v55;
  v56 = &opaque type descriptor for <<opaque return type of View.onScrollPhaseChange(_:)>>;
  v34 = swift_getOpaqueTypeMetadata2();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v54 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v38);
  v41 = &v54 - v40;
  v43 = v60;
  v42 = v61;
  v44 = v63;
  (*(v61 + 16))(v60, v64, v63, v39);
  v45 = (*(v42 + 80) + 48) & ~*(v42 + 80);
  v46 = swift_allocObject();
  v47 = v67;
  *(v46 + 2) = v58;
  *(v46 + 3) = v47;
  v48 = v57;
  *(v46 + 4) = v59;
  *(v46 + 5) = v48;
  (*(v42 + 32))(&v46[v45], v43, v44);
  v49 = swift_checkMetadataState();
  v50 = v55;
  View.onScrollPhaseChange(_:)();

  v71 = v49;
  v72 = v50;
  v51 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v37, v34, v51);
  v52 = *(v35 + 8);
  v52(v37, v34);
  sub_1000833D8(v41, v34, v51);
  return (v52)(v41, v34);
}

uint64_t sub_1006CAC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v7 = (a3 + *(type metadata accessor for LazyHStackAnimatableTabView(0, &v12) + 72));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v12) = *v7;
  v13 = v9;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  result = ScrollPhase.isScrolling.getter();
  if (v11 != (result & 1))
  {
    ScrollPhase.isScrolling.getter();
    LOBYTE(v12) = v8;
    v13 = v9;
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1006CADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v17 - v14;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  type metadata accessor for LazyHStackAnimatableTabView(0, v17);
  sub_1006C41FC();
  sub_10001B350(v15, 0, 1, a3);
  (*(v10 + 16))(v12, v15, v9);
  type metadata accessor for State();
  State.wrappedValue.setter();
  return (*(v10 + 8))(v15, v9);
}

void sub_1006CAF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v122 = a2;
  v109 = *(a5 - 8);
  __chkstk_darwin(a1);
  v107 = v12;
  v108 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v13;
  v130 = v14;
  v131 = v15;
  v132 = v16;
  v17 = type metadata accessor for LazyHStackAnimatableTabView(0, &v129);
  v106 = *(v17 - 8);
  v104 = *(v106 + 64);
  __chkstk_darwin(v17);
  v105 = &v95 - v18;
  v129 = a4;
  v130 = a5;
  v131 = a6;
  v132 = a7;
  v114 = type metadata accessor for TransitionContext(255, &v129);
  v115 = type metadata accessor for Optional();
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v103 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v102 = &v95 - v21;
  __chkstk_darwin(v22);
  v110 = &v95 - v23;
  v129 = a4;
  v130 = a5;
  v123 = a6;
  v124 = a7;
  v131 = a6;
  v132 = a7;
  v24 = type metadata accessor for Page(255, &v129);
  v25 = type metadata accessor for Optional();
  v118 = *(v25 - 8);
  v119 = v25;
  __chkstk_darwin(v25);
  v116 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v95 - v28;
  v120 = *(v24 - 8);
  __chkstk_darwin(v30);
  v101 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v100 = &v95 - v33;
  __chkstk_darwin(v34);
  v117 = &v95 - v35;
  __chkstk_darwin(v36);
  v121 = &v95 - v37;
  v38 = (a3 + *(v17 + 68));
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v129) = *v38;
  v130 = v40;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  v41 = State.wrappedValue.getter();
  if (v126)
  {
    LOBYTE(v129) = v39;
    v130 = v40;
    LOBYTE(v126) = 0;
    State.wrappedValue.setter();
  }

  else
  {
    v112 = v17;
    v42 = *(a3 + *(v17 + 88));
    v129 = v42;
    __chkstk_darwin(v41);
    *(&v95 - 6) = a4;
    *(&v95 - 5) = a5;
    v43 = v124;
    *(&v95 - 4) = v123;
    *(&v95 - 3) = v43;
    v111 = a3;
    *(&v95 - 2) = a3;
    v44 = type metadata accessor for Array();

    swift_getWitnessTable(&protocol conformance descriptor for [A], v44);
    Sequence.first(where:)();

    if (sub_100024D10(v29, 1, v24) == 1)
    {
      (*(v118 + 8))(v29, v119);
      if (qword_100CA26B8 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_10000703C(v45, qword_100D90A90);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "[LazyHStack AnimatableTabView] The internal tab view selection does not correspond to a known page", v48, 2u);
      }

      sub_1006D3104();
    }

    else
    {
      v98 = *(v120 + 32);
      v49 = v98(v121, v29, v24);
      v99 = &v95;
      v129 = v42;
      __chkstk_darwin(v49);
      v97 = a4;
      *(&v95 - 6) = a4;
      *(&v95 - 5) = a5;
      v96 = a5;
      v50 = v124;
      *(&v95 - 4) = v123;
      *(&v95 - 3) = v50;
      *(&v95 - 2) = v122;

      v51 = v116;
      Sequence.first(where:)();

      v52 = v24;
      if (sub_100024D10(v51, 1, v24) == 1)
      {
        (*(v118 + 8))(v51, v119);
        if (qword_100CA26B8 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_10000703C(v53, qword_100D90A90);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "[LazyHStack AnimatableTabView] The tab view destination does not correspond to a known page", v56, 2u);
        }

        sub_1006D3104();
        (*(v120 + 8))(v121, v52);
      }

      else
      {
        v57 = v117;
        v98(v117, v51, v24);
        v58 = v112;
        v59 = v111;
        v60 = (v111 + *(v112 + 56));
        if (*v60)
        {
          v119 = *v60;
          v61 = v24;
          v62 = v60[1];
          v63 = (v111 + *(v112 + 80));
          v65 = *v63;
          v64 = v63[1];
          v129 = *v63;
          v130 = v64;

          sub_10022C350(&qword_100CD2330, &unk_100A77B58);
          State.wrappedValue.getter();
          if (__OFADD__(v128, 1))
          {
            __break(1u);
          }

          else
          {
            v126 = v65;
            v127 = v64;
            v125 = v128 + 1;
            State.wrappedValue.setter();

            v129 = v65;
            v130 = v64;
            State.wrappedValue.getter();
            v66 = v126;
            v67 = (v59 + *(v58 + 76));
            v68 = v115;
            type metadata accessor for State();
            v69 = v110;
            State.wrappedValue.getter();
            v70 = sub_100024D10(v69, 1, v114);
            v71 = *(v113 + 8);
            v71(v69, v68);
            v72 = v96;
            if (v70 == 1 || (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
            {
              v74 = v66;
              v116 = v66;
              v75 = *(v120 + 16);
              v118 = v62;
              v76 = v100;
              v95 = v61;
              v75(v100, v121, v61);
              v110 = v67;
              v77 = v101;
              v75(v101, v117, v61);
              v78 = v102;
              v79 = v74;
              v80 = v72;
              sub_1006CC0B0(v76, v77, v79, v97, v72, v123, v124, v102);
              sub_10001B350(v78, 0, 1, v114);
              v81 = v115;
              (*(v113 + 16))(v103, v78, v115);
              State.wrappedValue.setter();
              v71(v78, v81);
              v82 = v106;
              v83 = v105;
              v84 = v112;
              (*(v106 + 16))(v105, v111, v112);
              v85 = v109;
              v86 = v108;
              (*(v109 + 16))(v108, v122, v80);
              v87 = (*(v82 + 80) + 48) & ~*(v82 + 80);
              v88 = (v104 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
              v89 = (*(v85 + 80) + v88 + 8) & ~*(v85 + 80);
              v90 = swift_allocObject();
              *(v90 + 2) = v97;
              *(v90 + 3) = v80;
              v91 = v124;
              *(v90 + 4) = v123;
              *(v90 + 5) = v91;
              (*(v82 + 32))(&v90[v87], v83, v84);
              *&v90[v88] = v116;
              (*(v85 + 32))(&v90[v89], v86, v80);
              sub_1006C2D24();

              v92 = *(v120 + 8);
              v93 = v95;
              v92(v117, v95);
              v92(v121, v93);
            }

            else
            {
              sub_1006D3104();
              v73 = *(v120 + 8);
              v73(v117, v61);
              v73(v121, v61);
            }
          }
        }

        else
        {
          sub_1006D3104();
          v94 = *(v120 + 8);
          v94(v57, v52);
          v94(v121, v52);
        }
      }
    }
  }
}

uint64_t sub_1006CBBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a2;
  v38 = a5;
  v39 = a1;
  v46 = *(a4 - 8);
  __chkstk_darwin(a1);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v35 - v12;
  v37 = *(v10 - 8);
  __chkstk_darwin(v14);
  v41 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  v42 = a3;
  v43 = a4;
  v22 = v38;
  v44 = v38;
  v45 = a6;
  v23 = type metadata accessor for Page(0, &v42);
  (*(v46 + 16))(v21, v39 + *(v23 + 52), a4);
  sub_10001B350(v21, 0, 1, a4);
  v42 = a3;
  v43 = a4;
  v24 = a6;
  v25 = v37;
  v39 = v24;
  v44 = v22;
  v45 = v24;
  type metadata accessor for LazyHStackAnimatableTabView(0, &v42);
  type metadata accessor for State();
  State.wrappedValue.getter();
  v40 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = *(v25 + 16);
  v27(v13, v21, v10);
  v27(&v13[v26], v18, v10);
  if (sub_100024D10(v13, 1, a4) != 1)
  {
    v27(v41, v13, v10);
    if (sub_100024D10(&v13[v26], 1, a4) != 1)
    {
      v31 = v46;
      (*(v46 + 32))(v36, &v13[v26], a4);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *(v31 + 8);
      v46 = v31 + 8;
      v32(v36, a4);
      v33 = *(v25 + 8);
      v33(v18, v10);
      v33(v21, v10);
      v32(v41, a4);
      v33(v13, v10);
      return v29 & 1;
    }

    v30 = *(v25 + 8);
    v30(v18, v10);
    v30(v21, v10);
    (*(v46 + 8))(v41, a4);
    goto LABEL_6;
  }

  v28 = *(v25 + 8);
  v28(v18, v10);
  v28(v21, v10);
  if (sub_100024D10(&v13[v26], 1, a4) != 1)
  {
LABEL_6:
    (*(v35 + 8))(v13, v40);
    v29 = 0;
    return v29 & 1;
  }

  v28(v13, v10);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_1006CC0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v15 = type metadata accessor for Page(0, &v20);
  v16 = *(*(v15 - 8) + 32);
  v16(a8, a1, v15);
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v17 = type metadata accessor for TransitionContext(0, &v20);
  result = (v16)(a8 + *(v17 + 52), a2, v15);
  *(a8 + *(v17 + 56)) = a3;
  return result;
}

void sub_1006CC1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[1] = a3;
  v22 = a2;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v11 = type metadata accessor for TransitionContext(0, &v23);
  v21 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v20 - v16;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  type metadata accessor for LazyHStackAnimatableTabView(0, &v23);
  type metadata accessor for State();
  State.wrappedValue.getter();
  if (sub_100024D10(v17, 1, v11))
  {
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v18 = v21;
    (*(v21 + 16))(v13, v17, v11);
    (*(v15 + 8))(v17, v14);
    v19 = *&v13[*(v11 + 56)];
    (*(v18 + 8))(v13, v11);
    if (v19 == v22)
    {
      sub_1006D3104();
    }
  }
}

uint64_t sub_1006CC3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  __chkstk_darwin(a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v15 = type metadata accessor for LazyHStackAnimatableTabView(0, &v25);
  v16 = (a3 + *(v15 + 64));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v25) = *v16;
  v26 = v18;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  if (v24)
  {
    LOBYTE(v25) = v17;
    v26 = v18;
    v24 = 0;
  }

  else
  {
    (*(v8 + 16))(v10, a2, a5);
    sub_1006C423C(v10, v15);
    v19 = (a3 + *(v15 + 68));
    v20 = *v19;
    v21 = *(v19 + 1);
    LOBYTE(v25) = v20;
    v26 = v21;
    v24 = 1;
  }

  return State.wrappedValue.setter();
}

uint64_t sub_1006CC574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a1;
  v75 = a6;
  v72 = type metadata accessor for ForceInvalidationAfterExtendedLaunch(0);
  __chkstk_darwin(v72);
  v73 = (v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = a2;
  v85 = a3;
  v76 = a3;
  v86 = a4;
  v87 = a5;
  type metadata accessor for Page(255, &v84);
  v11 = type metadata accessor for Array();
  v84 = a2;
  v85 = a3;
  v86 = a4;
  v87 = a5;
  v12 = a5;
  v71 = a5;
  v13 = type metadata accessor for PageContainer(255, &v84);
  v14 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v13);
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v84 = v16;
  v85 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v13;
  v85 = v14;
  v86 = WitnessTable;
  v87 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = v13;
  v85 = v14;
  v86 = WitnessTable;
  v87 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v84 = v13;
  v85 = &type metadata for Solarium;
  v86 = OpaqueTypeMetadata2;
  v87 = WitnessTable;
  v88 = &protocol witness table for Solarium;
  v89 = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for _ConditionalContent();
  v84 = v13;
  v85 = &type metadata for Solarium;
  v86 = OpaqueTypeMetadata2;
  v87 = WitnessTable;
  v88 = &protocol witness table for Solarium;
  v89 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v83[0] = &protocol witness table for EmptyView;
  v83[1] = v22;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v21, v83);
  v23 = type metadata accessor for VStack();
  v24 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v23);
  v84 = v23;
  v85 = v24;
  swift_getOpaqueTypeMetadata2();
  v25 = type metadata accessor for ModifiedContent();
  v26 = swift_getWitnessTable(&protocol conformance descriptor for [A], v11);
  v27 = v76;
  v84 = v11;
  v85 = v76;
  v86 = v25;
  v87 = v26;
  v88 = v12;
  v28 = type metadata accessor for ForEach();
  v84 = v23;
  v85 = v24;
  v82[0] = swift_getOpaqueTypeConformance2();
  v82[1] = &protocol witness table for _GeometryGroupEffect;
  v81 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v25, v82);
  v29 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v28, &v81);
  v31 = type metadata accessor for WireframeScrollInterestView(255, v28, v29, v30);
  swift_getWitnessTable(byte_100A45998, v31);
  v32 = type metadata accessor for LazyHStack();
  v33 = swift_getWitnessTable(&protocol conformance descriptor for LazyHStack<A>, v32);
  v84 = v32;
  v85 = v33;
  swift_getOpaqueTypeMetadata2();
  v84 = v32;
  v85 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = type metadata accessor for ScrollView();
  v35 = swift_getWitnessTable(&protocol conformance descriptor for ScrollView<A>, v34);
  v84 = v34;
  v85 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v84 = v34;
  v85 = v35;
  v37 = swift_getOpaqueTypeConformance2();
  v84 = v34;
  v85 = &type metadata for Solarium;
  v86 = v36;
  v87 = v35;
  v88 = &protocol witness table for Solarium;
  v89 = v37;
  swift_getOpaqueTypeMetadata2();
  v38 = type metadata accessor for ModifiedContent();
  v84 = v34;
  v85 = &type metadata for Solarium;
  v86 = v36;
  v87 = v35;
  v88 = &protocol witness table for Solarium;
  v89 = v37;
  v80[0] = swift_getOpaqueTypeConformance2();
  v80[1] = &protocol witness table for _AppearanceActionModifier;
  v39 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v38, v80);
  v84 = v38;
  v85 = v27;
  v40 = v71;
  v86 = v39;
  v87 = v71;
  v41 = swift_getOpaqueTypeMetadata2();
  v42 = type metadata accessor for PagingScrollTargetBehavior();
  v84 = v38;
  v85 = v27;
  v86 = v39;
  v87 = v40;
  v43 = swift_getOpaqueTypeConformance2();
  v84 = v41;
  v85 = v42;
  v86 = v43;
  v87 = &protocol witness table for PagingScrollTargetBehavior;
  v44 = swift_getOpaqueTypeMetadata2();
  v84 = v41;
  v85 = v42;
  v86 = v43;
  v87 = &protocol witness table for PagingScrollTargetBehavior;
  v45 = swift_getOpaqueTypeConformance2();
  v84 = v44;
  v85 = v45;
  swift_getOpaqueTypeMetadata2();
  v46 = type metadata accessor for ModifiedContent();
  v47 = type metadata accessor for ModifiedContent();
  v84 = v44;
  v85 = v45;
  v79[0] = swift_getOpaqueTypeConformance2();
  v79[1] = &protocol witness table for _AllowsHitTestingModifier;
  v70 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v78[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v46, v79);
  v78[1] = &protocol witness table for _TransactionModifier;
  v48 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v47, v78);
  v49 = v40[1];
  v84 = v47;
  v85 = v27;
  v86 = v48;
  v87 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v71 = v50;
  v84 = v47;
  v85 = v27;
  v86 = v48;
  v87 = v49;
  v69 = swift_getOpaqueTypeConformance2();
  v84 = v50;
  v85 = v27;
  v86 = v69;
  v87 = v49;
  v68[1] = swift_getOpaqueTypeMetadata2();
  v51 = v72;
  v52 = type metadata accessor for ModifiedContent();
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v55 = v68 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v58 = v68 - v57;
  KeyPath = swift_getKeyPath();
  v60 = v73;
  *v73 = KeyPath;
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  swift_storeEnumTagMultiPayload();
  v61 = v60 + *(v51 + 20);
  type metadata accessor for ExtendedAppLaunchState(0);
  sub_100121A00(&qword_100CB84D0, type metadata accessor for ExtendedAppLaunchState, asc_100A4C40C);
  *v61 = Environment.init<A>(_:)();
  *(v61 + 8) = v62 & 1;
  v84 = v71;
  v85 = v76;
  v86 = v69;
  v87 = v49;
  v63 = swift_getOpaqueTypeConformance2();
  View.modifier<A>(_:)();
  sub_1006D5FBC(v60);
  v64 = sub_100121A00(&qword_100CD2340, type metadata accessor for ForceInvalidationAfterExtendedLaunch, byte_100A77C28);
  v77[0] = v63;
  v77[1] = v64;
  v65 = swift_getWitnessTable(v70, v52, v77);
  sub_1000833D8(v55, v52, v65);
  v66 = *(v53 + 8);
  v66(v55, v52);
  sub_1000833D8(v58, v52, v65);
  return (v66)(v58, v52);
}

uint64_t sub_1006CCF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a3;
  v29 = a1;
  v30 = a2;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v33 = type metadata accessor for TransitionContext(255, &v35);
  v34 = type metadata accessor for Optional();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v28 - v19;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v21 = type metadata accessor for LazyHStackAnimatableTabView(0, &v35);
  v22 = v29 + *(v21 + 64);
  v23 = *v22;
  v24 = *(v22 + 8);
  LOBYTE(v35) = v23;
  v36 = v24;
  v39 = 1;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.setter();
  (*(*(a4 - 8) + 16))(v20, v30, a4);
  sub_10001B350(v20, 0, 1, a4);
  (*(v15 + 16))(v17, v20, v14);
  type metadata accessor for State();
  State.wrappedValue.setter();
  (*(v15 + 8))(v20, v14);
  sub_10001B350(v13, 1, 1, v33);
  v25 = v32;
  v26 = v34;
  (*(v32 + 16))(v31, v13, v34);
  type metadata accessor for State();
  State.wrappedValue.setter();
  return (*(v25 + 8))(v13, v26);
}

uint64_t sub_1006CD230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1006CD2D0();
  v6 = v5;
  v7 = sub_10022C350(&qword_100CD2478, &qword_100A77D28);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = sub_10022C350(qword_100CD2480, &unk_100A77D30);
  v9 = (a2 + *(result + 52));
  *v9 = v4;
  v9[1] = v6;
  return result;
}

unint64_t sub_1006CD2D0()
{
  v1 = v0;
  v2 = 0xD000000000000013;
  v3 = type metadata accessor for EnvironmentValues();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  sub_1001681D4();
  (*(v7 + 104))(v9, enum case for LayoutDirection.leftToRight(_:), v6);
  v13 = static LayoutDirection.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if ((v13 & 1) == 0)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v25 = 0xD00000000000002DLL;
    v26 = 0x8000000100ADB7E0;
    v15 = *(v1 + *(type metadata accessor for ForceInvalidationAfterExtendedLaunch(0) + 20) + 8);

    if ((v15 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      v16 = (*(v24 + 8))(v5, v3);
    }

    v19 = sub_1004237C8(v16, v17);

    if (v19)
    {
      v20 = 0x65736C6166;
    }

    else
    {
      v20 = 1702195828;
    }

    if (v19)
    {
      v21 = 0xE500000000000000;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    v22 = v21;
    String.append(_:)(*&v20);

    return v25;
  }

  return v2;
}

uint64_t sub_1006CD5E4()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA29B8 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  return v1;
}

void *sub_1006CD66C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v29 = *(v3 + 16);
  v29(&v25 - v7, v6);
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();
  v10 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v9;
  *(v11 + 3) = &protocol witness table for MainActor;
  v13 = a1[2];
  v27 = a1[3];
  v12 = v27;
  v28 = v13;
  *(v11 + 4) = v13;
  *(v11 + 5) = v12;
  v14 = a1[4];
  v25 = a1[5];
  v15 = v25;
  v26 = v14;
  *(v11 + 6) = v14;
  *(v11 + 7) = v15;
  v16 = *(v3 + 32);
  v16(&v11[v10], v8, a1);
  v17 = v31;
  (v29)(v31, v30, a1);
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  *(v19 + 2) = v18;
  v21 = v27;
  v20 = v28;
  *(v19 + 3) = &protocol witness table for MainActor;
  *(v19 + 4) = v20;
  v22 = v25;
  v23 = v26;
  *(v19 + 5) = v21;
  *(v19 + 6) = v23;
  *(v19 + 7) = v22;
  v16(&v19[v10], v17, a1);
  return Binding.init(get:set:)();
}

double sub_1006CD898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[0] = a4;
  v8[1] = a5;
  v8[2] = a6;
  v8[3] = a7;
  type metadata accessor for LegacyLazyPageAnimatableTabView(0, v8);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return result;
}

uint64_t sub_1006CD900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  __chkstk_darwin(a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v11;
  v16[1] = v12;
  v16[2] = v13;
  v16[3] = v14;
  type metadata accessor for LegacyLazyPageAnimatableTabView(0, v16);
  (*(v8 + 16))(v10, a1, a6);
  type metadata accessor for State();
  return State.wrappedValue.setter();
}

uint64_t sub_1006CD9FC(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + *(a1 + 92)))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = v1 + *(a1 + 96);
    v7 = *v8;
    if (*(v8 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v9 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000E4DF8(v7, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v7) = v11[15];
    }
  }

  return v7 & 1;
}

uint64_t sub_1006CDB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v52 = a1;
  v57 = *(a1 - 8);
  __chkstk_darwin(a1);
  v54 = v2;
  v56 = &v45[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v61 = v3[3];
  v4 = v61;
  v62 = v5;
  v63 = v6;
  v64 = v7;
  type metadata accessor for Page(255, &v61);
  v8 = type metadata accessor for Array();
  v50 = v6;
  v51 = v8;
  v53 = v4;
  v61 = v4;
  v62 = v5;
  v63 = v6;
  v64 = v7;
  v9 = type metadata accessor for PageContainer(255, &v61);
  v10 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v9);
  v12 = type metadata accessor for EmptyVisualEffect();
  v13 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v61 = v12;
  v62 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v9;
  v62 = v10;
  v63 = WitnessTable;
  v64 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = v9;
  v62 = v10;
  v63 = WitnessTable;
  v64 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v61 = v9;
  v62 = &type metadata for Solarium;
  v63 = OpaqueTypeMetadata2;
  v64 = WitnessTable;
  v65 = &protocol witness table for Solarium;
  v66 = v16;
  swift_getOpaqueTypeMetadata2();
  v17 = type metadata accessor for _ConditionalContent();
  v61 = v9;
  v62 = &type metadata for Solarium;
  v63 = OpaqueTypeMetadata2;
  v64 = WitnessTable;
  v65 = &protocol witness table for Solarium;
  v66 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v60[0] = &protocol witness table for EmptyView;
  v60[1] = v18;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v17, v60);
  v19 = type metadata accessor for VStack();
  v20 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v19);
  v61 = v19;
  v62 = v5;
  v63 = v20;
  v64 = v7;
  v21 = type metadata accessor for IDView();
  v22 = v51;
  v23 = swift_getWitnessTable(&protocol conformance descriptor for [A], v51);
  v61 = v22;
  v62 = v5;
  v51 = v5;
  v63 = v21;
  v64 = v23;
  v49 = v7;
  v65 = v7;
  v24 = type metadata accessor for ForEach();
  v59 = swift_getWitnessTable(&protocol conformance descriptor for IDView<A, B>, v21);
  v47 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v24, &v59);
  v48 = v24;
  v26 = type metadata accessor for WireframeScrollInterestView(0, v24, v47, v25);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v45[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v32 = &v45[-v31];
  if (qword_100CA1F38 != -1)
  {
    swift_once();
  }

  v46 = byte_100D8FB88;
  v33 = v52;
  v34 = v56;
  v35 = *(v55 + *(v52 + 64));
  v36 = v57;
  (*(v57 + 16))(v56);
  v37 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v38 = swift_allocObject();
  v40 = v50;
  v39 = v51;
  *(v38 + 2) = v53;
  *(v38 + 3) = v39;
  v41 = v49;
  *(v38 + 4) = v40;
  *(v38 + 5) = v41;
  (*(v36 + 32))(&v38[v37], v34, v33);

  sub_10012A5C4(6447476, 0xE300000000000000, v46, v35, sub_1006D5954, v48, v47, v29);
  v42 = swift_getWitnessTable(byte_100A45998, v26);
  sub_1000833D8(v29, v26, v42);
  v43 = *(v27 + 8);
  v43(v29, v26);
  sub_1000833D8(v32, v26, v42);
  return (v43)(v32, v26);
}

uint64_t sub_1006CE0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a1;
  v57 = a6;
  v61 = a2;
  v62 = a3;
  v49 = a2;
  v50 = a4;
  v63 = a4;
  v64 = a5;
  v10 = type metadata accessor for LegacyLazyPageAnimatableTabView(0, &v61);
  v52 = *(v10 - 8);
  v53 = v10;
  v54 = *(v52 + 64);
  __chkstk_darwin(v10);
  v51 = &v45 - v11;
  v61 = a2;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v56 = type metadata accessor for Page(255, &v61);
  v58 = type metadata accessor for Array();
  v61 = a2;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v12 = type metadata accessor for PageContainer(255, &v61);
  v13 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v12);
  v15 = type metadata accessor for EmptyVisualEffect();
  v16 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v61 = v15;
  v62 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v12;
  v62 = v13;
  v63 = WitnessTable;
  v64 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = v12;
  v62 = v13;
  v63 = WitnessTable;
  v64 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v61 = v12;
  v62 = &type metadata for Solarium;
  v63 = OpaqueTypeMetadata2;
  v64 = WitnessTable;
  v65 = &protocol witness table for Solarium;
  v66 = v19;
  swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for _ConditionalContent();
  v61 = v12;
  v62 = &type metadata for Solarium;
  v63 = OpaqueTypeMetadata2;
  v64 = WitnessTable;
  v65 = &protocol witness table for Solarium;
  v66 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v60[0] = &protocol witness table for EmptyView;
  v60[1] = v21;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v20, v60);
  v22 = type metadata accessor for VStack();
  v23 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v22);
  v61 = v22;
  v62 = a3;
  v24 = a3;
  v63 = v23;
  v64 = a5;
  v45 = a5;
  v25 = type metadata accessor for IDView();
  v46 = v25;
  v26 = v58;
  v47 = swift_getWitnessTable(&protocol conformance descriptor for [A], v58);
  v61 = v26;
  v62 = a3;
  v63 = v25;
  v64 = v47;
  v65 = a5;
  v27 = type metadata accessor for ForEach();
  v48 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v30);
  v33 = &v45 - v32;
  v34 = v52;
  v35 = v53;
  v61 = *(v55 + *(v53 + 56));
  v36 = v51;
  (*(v52 + 16))(v51, v31);
  v37 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v38 = swift_allocObject();
  v39 = v50;
  *(v38 + 2) = v49;
  *(v38 + 3) = v24;
  v40 = v45;
  *(v38 + 4) = v39;
  *(v38 + 5) = v40;
  (*(v34 + 32))(&v38[v37], v36, v35);

  v41 = swift_getWitnessTable(&protocol conformance descriptor for IDView<A, B>, v46);
  swift_getWitnessTable(byte_100A77A4C, v56);
  ForEach<>.init(_:content:)();
  v59 = v41;
  v42 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v27, &v59);
  sub_1000833D8(v29, v27, v42);
  v43 = *(v48 + 8);
  v43(v29, v27);
  sub_1000833D8(v33, v27, v42);
  return (v43)(v33, v27);
}

uint64_t sub_1006CE66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a5;
  v43 = a4;
  v45 = a1;
  v46 = a2;
  v47 = a7;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  v9 = type metadata accessor for PageContainer(255, &v55);
  v10 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v9);
  v12 = type metadata accessor for EmptyVisualEffect();
  v13 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v55 = v12;
  v56 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v9;
  v56 = v10;
  v57 = WitnessTable;
  v58 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = v9;
  v56 = v10;
  v57 = WitnessTable;
  v58 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v55 = v9;
  v56 = &type metadata for Solarium;
  v57 = OpaqueTypeMetadata2;
  v58 = WitnessTable;
  v59 = &protocol witness table for Solarium;
  v60 = v16;
  swift_getOpaqueTypeMetadata2();
  v17 = type metadata accessor for _ConditionalContent();
  v55 = v9;
  v56 = &type metadata for Solarium;
  v57 = OpaqueTypeMetadata2;
  v58 = WitnessTable;
  v59 = &protocol witness table for Solarium;
  v60 = v16;
  v54[0] = &protocol witness table for EmptyView;
  v54[1] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v17, v54);
  v18 = type metadata accessor for VStack();
  v39 = v18;
  v42 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v38 = &v36 - v20;
  v40 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v18, v19);
  v21 = v43;
  v55 = v18;
  v56 = v43;
  v57 = v40;
  v58 = a6;
  v22 = a6;
  v37 = a6;
  v23 = type metadata accessor for IDView();
  v41 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v36 - v27;
  v29 = a3;
  v48 = a3;
  v49 = v21;
  v30 = v44;
  v50 = v44;
  v51 = v22;
  v52 = v45;
  v53 = v46;
  j___s7SwiftUI19HorizontalAlignmentV6centerACvgZ(v17);
  v31 = v38;
  VStack.init(alignment:spacing:content:)();
  v55 = v29;
  v56 = v21;
  v57 = v30;
  v58 = v37;
  type metadata accessor for Page(0, &v55);
  v32 = v39;
  View.id<A>(_:)();
  (*(v42 + 8))(v31, v32);
  v33 = swift_getWitnessTable(&protocol conformance descriptor for IDView<A, B>, v23);
  sub_1000833D8(v25, v23, v33);
  v34 = *(v41 + 8);
  v34(v25, v23);
  sub_1000833D8(v28, v23, v33);
  return (v34)(v28, v23);
}

uint64_t sub_1006CEB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v77 = a2;
  v78 = a1;
  v86 = a7;
  v92 = a3;
  v93 = a4;
  v94 = a5;
  v95 = a6;
  type metadata accessor for TransitionContext(255, &v92);
  v71 = type metadata accessor for Optional();
  __chkstk_darwin(v71);
  v73 = &v66 - v11;
  v92 = a3;
  v93 = a4;
  v94 = a5;
  v95 = a6;
  v87 = a6;
  v88 = type metadata accessor for Page(0, &v92);
  v69 = *(v88 - 8);
  __chkstk_darwin(v88);
  v70 = &v66 - v12;
  v92 = a3;
  v93 = a4;
  v94 = a5;
  v95 = a6;
  v13 = type metadata accessor for PageContainer(0, &v92);
  v74 = *(v13 - 8);
  __chkstk_darwin(v13);
  v72 = &v66 - v14;
  v15 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v13);
  v17 = type metadata accessor for EmptyVisualEffect();
  v18 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v92 = v17;
  v93 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = v13;
  v93 = v15;
  v94 = WitnessTable;
  v95 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = v13;
  v93 = v15;
  v94 = WitnessTable;
  v95 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v84 = v13;
  v85 = WitnessTable;
  v92 = v13;
  v93 = &type metadata for Solarium;
  v89 = OpaqueTypeMetadata2;
  v94 = OpaqueTypeMetadata2;
  v95 = WitnessTable;
  v96 = &protocol witness table for Solarium;
  v97 = v21;
  v83 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v68 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v67 = &v66 - v26;
  v27 = *(a4 - 1);
  __chkstk_darwin(v28);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v31;
  v82 = type metadata accessor for _ConditionalContent();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v66 - v32;
  v75 = a3;
  v92 = a3;
  v93 = a4;
  v76 = a5;
  v94 = a5;
  v95 = v87;
  v33 = type metadata accessor for LegacyLazyPageAnimatableTabView(0, &v92);
  type metadata accessor for State();
  v34 = v77;
  State.wrappedValue.getter();
  v35 = v78;
  LOBYTE(OpaqueTypeConformance2) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v27 + 8))(v30, a4);
  if (OpaqueTypeConformance2 & 1) != 0 || (sub_1006CD9FC(v33) & 1) == 0 && (*(v34 + v33[20]) != 1 || (v62 = v34 + v33[19], v63 = *v62, v64 = *(v62 + 8), LOBYTE(v92) = v63, v93 = v64, sub_10022C350(&qword_100CA5A80, &qword_100A2FF90), State.wrappedValue.getter(), (v90)))
  {
    v36 = v70;
    (*(v69 + 16))(v70, v35, v88);
    v37 = (v34 + v33[15]);
    v38 = *v37;
    v39 = v37[1];
    type metadata accessor for State();

    v40 = v73;
    State.wrappedValue.getter();
    v41 = v24;
    v42 = v72;
    v43 = v39;
    v44 = v75;
    v45 = v76;
    v46 = v87;
    sub_10012CE9C(v36, v38, v43, v40, v75, a4, v76, v87, v72);
    v47 = Solarium.init()();
    __chkstk_darwin(v47);
    *(&v66 - 6) = v44;
    *(&v66 - 5) = a4;
    *(&v66 - 4) = v45;
    *(&v66 - 3) = v46;
    v48 = swift_checkMetadataState();
    v49 = v83;
    v65 = v83;
    v50 = v84;
    v51 = v85;
    View.staticIf<A, B>(_:then:)();
    (*(v74 + 8))(v42, v50);
    v92 = v50;
    v93 = &type metadata for Solarium;
    v94 = v48;
    v95 = v51;
    v96 = &protocol witness table for Solarium;
    v97 = v49;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = v67;
    v54 = v81;
    sub_1000833D8(v41, v81, v52);
    v55 = *(v68 + 8);
    v55(v41, v54);
    sub_1000833D8(v53, v54, v52);
    v56 = v79;
    sub_10012D09C();
    v55(v41, v54);
    v55(v53, v54);
    v57 = v89;
  }

  else
  {
    v50 = v84;
    v51 = v85;
    v92 = v84;
    v57 = v89;
    v93 = &type metadata for Solarium;
    v94 = v89;
    v95 = v85;
    v49 = v83;
    v96 = &protocol witness table for Solarium;
    v97 = v83;
    swift_getOpaqueTypeConformance2();
    v56 = v79;
    sub_1003E8038();
  }

  v92 = v50;
  v93 = &type metadata for Solarium;
  v94 = v57;
  v95 = v51;
  v96 = &protocol witness table for Solarium;
  v97 = v49;
  v58 = swift_getOpaqueTypeConformance2();
  v91[0] = &protocol witness table for EmptyView;
  v91[1] = v58;
  v59 = v82;
  v60 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v82, v91);
  sub_1000833D8(v56, v59, v60);
  return (*(v80 + 8))(v56, v59);
}

void sub_1006CF448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_10000C778();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v88 = v31;
  v93 = v32;
  v95 = v33;
  v90 = v34;
  v91 = a21;
  v94 = type metadata accessor for ScrollTransitionConfiguration();
  sub_1000037C4();
  v92 = v35;
  __chkstk_darwin(v36);
  sub_1000037D8();
  v89 = v38 - v37;
  v96 = v30;
  v97 = v28;
  v83 = v30;
  v84 = v28;
  v39 = v28;
  v98 = v26;
  v99 = v24;
  v85 = v26;
  v86 = v24;
  v40 = v24;
  v87 = v22(0, &v96);
  sub_1000037C4();
  v42 = v41;
  __chkstk_darwin(v43);
  v45 = &v79 - v44;
  v96 = v30;
  v97 = v39;
  v98 = v26;
  v99 = v40;
  v46 = type metadata accessor for PageContainer(255, &v96);
  v47 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  v48 = sub_100006558();
  swift_getWitnessTable(v48, v46, v46);
  sub_100052704();
  v49 = type metadata accessor for EmptyVisualEffect();
  sub_100010890();
  v52 = sub_100121A00(v50, v51, &protocol conformance descriptor for EmptyVisualEffect);
  v96 = v49;
  v97 = v52;
  sub_10001CAD0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = v46;
  v97 = v47;
  v54 = v47;
  v98 = v46;
  v99 = OpaqueTypeConformance2;
  v55 = v46;
  v80 = OpaqueTypeConformance2;
  v81 = &opaque type descriptor for <<opaque return type of View.scrollTransition<A>(_:axis:transition:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1000037C4();
  v82 = v57;
  __chkstk_darwin(v58);
  sub_100003C38();
  v60 = __chkstk_darwin(v59);
  v62 = &v79 - v61;
  v63 = v45;
  v64 = v87;
  (*(v42 + 16))(v45, v88, v87, v60);
  v65 = (*(v42 + 80) + 48) & ~*(v42 + 80);
  v66 = swift_allocObject();
  v67 = v84;
  *(v66 + 2) = v83;
  *(v66 + 3) = v67;
  v68 = v86;
  *(v66 + 4) = v85;
  *(v66 + 5) = v68;
  (*(v42 + 32))(&v66[v65], v63, v64);
  v69 = swift_checkMetadataState();
  v70 = v89;
  static ScrollTransitionConfiguration.interactive.getter();
  v71 = v54;
  v72 = v55;
  v73 = v80;
  View.scrollTransition<A>(_:axis:transition:)();

  (*(v92 + 8))(v70, v94);
  v96 = v69;
  v97 = v71;
  v98 = v72;
  v99 = v73;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = sub_1000D42A0();
  sub_1000833D8(v75, v76, v74);
  v77 = *(v82 + 8);
  v78 = sub_1000D42A0();
  v77(v78);
  sub_1000833D8(v62, OpaqueTypeMetadata2, v74);
  (v77)(v62, OpaqueTypeMetadata2);
  sub_10000536C();
}

uint64_t sub_1006CF830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v129 = *(a1 - 8);
  __chkstk_darwin(a1);
  v136 = v2;
  v137 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 24);
  v130 = *(v4 - 1);
  __chkstk_darwin(v3);
  v128 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v6;
  v7 = *(v6 + 16);
  v139 = *(v6 + 32);
  v150 = v7;
  v151 = v4;
  v8 = v7;
  v138 = v7;
  v152 = v139;
  v102 = type metadata accessor for TransitionContext(255, &v150);
  v103 = type metadata accessor for Optional();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v99 - v9;
  v150 = v8;
  v151 = v4;
  v152 = v139;
  type metadata accessor for Page(255, &v150);
  v10 = type metadata accessor for Array();
  v150 = v8;
  v151 = v4;
  v152 = v139;
  v11 = type metadata accessor for PageContainer(255, &v150);
  v12 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v11);
  v14 = type metadata accessor for EmptyVisualEffect();
  v15 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v150 = v14;
  v151 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v150 = v11;
  v151 = v12;
  *&v152 = WitnessTable;
  *(&v152 + 1) = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v150 = v11;
  v151 = v12;
  *&v152 = WitnessTable;
  *(&v152 + 1) = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v150 = v11;
  v151 = &type metadata for Solarium;
  *&v152 = OpaqueTypeMetadata2;
  *(&v152 + 1) = WitnessTable;
  v153 = &protocol witness table for Solarium;
  v154 = v18;
  v133 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  swift_getOpaqueTypeMetadata2();
  v19 = type metadata accessor for _ConditionalContent();
  v150 = v11;
  v151 = &type metadata for Solarium;
  *&v152 = OpaqueTypeMetadata2;
  *(&v152 + 1) = WitnessTable;
  v153 = &protocol witness table for Solarium;
  v154 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v149[0] = &protocol witness table for EmptyView;
  v149[1] = v20;
  v132 = &protocol conformance descriptor for <> _ConditionalContent<A, B>;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v19, v149);
  v21 = type metadata accessor for VStack();
  v22 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v21);
  v150 = v21;
  v151 = v4;
  *&v152 = v22;
  v134 = *(&v139 + 1);
  *(&v152 + 1) = *(&v139 + 1);
  v23 = type metadata accessor for IDView();
  v24 = swift_getWitnessTable(&protocol conformance descriptor for [A], v10);
  v150 = v10;
  v151 = v4;
  *&v152 = v23;
  *(&v152 + 1) = v24;
  v153 = *(&v139 + 1);
  v25 = type metadata accessor for ForEach();
  v148 = swift_getWitnessTable(&protocol conformance descriptor for IDView<A, B>, v23);
  v26 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v25, &v148);
  v28 = type metadata accessor for WireframeScrollInterestView(255, v25, v26, v27);
  v29 = swift_getWitnessTable(byte_100A45998, v28);
  v150 = v4;
  v151 = v28;
  *&v152 = *(&v139 + 1);
  *(&v152 + 1) = v29;
  v30 = type metadata accessor for TabView();
  v31 = type metadata accessor for PageTabViewStyle();
  v32 = swift_getWitnessTable(&protocol conformance descriptor for TabView<A, B>, v30);
  v150 = v30;
  v151 = v31;
  *&v152 = v32;
  *(&v152 + 1) = &protocol witness table for PageTabViewStyle;
  swift_getOpaqueTypeMetadata2();
  v33 = type metadata accessor for LazyPageTabViewStyle();
  v150 = v30;
  v151 = v33;
  *&v152 = v32;
  *(&v152 + 1) = &protocol witness table for LazyPageTabViewStyle;
  swift_getOpaqueTypeMetadata2();
  v34 = type metadata accessor for _ConditionalContent();
  v104 = v34;
  v35 = type metadata accessor for Group();
  v123 = *(v35 - 8);
  __chkstk_darwin(v35);
  v110 = &v99 - v36;
  v37 = type metadata accessor for ModifiedContent();
  v122 = *(v37 - 8);
  __chkstk_darwin(v37);
  v117 = &v99 - v38;
  v39 = type metadata accessor for ModifiedContent();
  v126 = *(v39 - 8);
  __chkstk_darwin(v39);
  v124 = &v99 - v40;
  v150 = v30;
  v151 = v31;
  *&v152 = v32;
  *(&v152 + 1) = &protocol witness table for PageTabViewStyle;
  v41 = swift_getOpaqueTypeConformance2();
  v150 = v30;
  v151 = v33;
  *&v152 = v32;
  *(&v152 + 1) = &protocol witness table for LazyPageTabViewStyle;
  v42 = swift_getOpaqueTypeConformance2();
  v147[0] = v41;
  v147[1] = v42;
  v146 = swift_getWitnessTable(v132, v34, v147);
  v125 = v35;
  v106 = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v35, &v146);
  v145[0] = v106;
  v145[1] = &protocol witness table for _AllowsHitTestingModifier;
  v120 = v37;
  v108 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v37, v145);
  v144[0] = v108;
  v144[1] = &protocol witness table for _TransactionModifier;
  v43 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v39, v144);
  v150 = v39;
  v151 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v150 = v39;
  v151 = v43;
  v45 = swift_getOpaqueTypeConformance2();
  v150 = v39;
  v151 = &type metadata for Solarium;
  *&v152 = v44;
  *(&v152 + 1) = v43;
  v153 = &protocol witness table for Solarium;
  v154 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v112 = *(v46 - 8);
  __chkstk_darwin(v46);
  v132 = &v99 - v47;
  v150 = v39;
  v151 = &type metadata for Solarium;
  v107 = v44;
  *&v152 = v44;
  *(&v152 + 1) = v43;
  v153 = &protocol witness table for Solarium;
  v154 = v45;
  v105 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = *(v134 + 8);
  v150 = v46;
  v151 = v4;
  *&v152 = v48;
  *(&v152 + 1) = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v118 = *(v50 - 8);
  __chkstk_darwin(v50);
  v133 = &v99 - v51;
  v115 = v46;
  v150 = v46;
  v151 = v4;
  v109 = v48;
  *&v152 = v48;
  *(&v152 + 1) = v49;
  v52 = swift_getOpaqueTypeConformance2();
  v121 = v50;
  v150 = v50;
  v151 = v4;
  v114 = v52;
  *&v152 = v52;
  *(&v152 + 1) = v49;
  v134 = v49;
  v53 = v135;
  v119 = swift_getOpaqueTypeMetadata2();
  v116 = *(v119 - 8);
  __chkstk_darwin(v119);
  v111 = &v99 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v113 = &v99 - v56;
  v140 = v138;
  v141 = v4;
  v142 = v139;
  v143 = v53;
  v57 = v110;
  Group<A>.init(content:)();
  v58 = v127;
  if ((sub_1006CD9FC(v127) & 1) == 0)
  {
    v59 = v103;
    type metadata accessor for State();
    v60 = v100;
    State.wrappedValue.getter();
    sub_100024D10(v60, 1, v102);
    (*(v101 + 8))(v60, v59);
  }

  v61 = v117;
  v62 = v125;
  View.allowsHitTesting(_:)();
  (*(v123 + 8))(v57, v62);
  v63 = v124;
  v64 = v120;
  View.transaction(_:)();
  (*(v122 + 8))(v61, v64);
  v65 = Solarium.init()();
  __chkstk_darwin(v65);
  *&v66 = v138;
  v67 = v138;
  *(&v66 + 1) = v4;
  v68 = v139;
  *(&v99 - 3) = v66;
  *(&v99 - 2) = v68;
  swift_checkMetadataState();
  v98 = v105;
  View.staticIf<A, B>(_:then:)();
  v126[1](v63, v39);
  type metadata accessor for Binding();
  v69 = v128;
  Binding.wrappedValue.getter();
  v70 = v129;
  v71 = v53;
  v72 = *(v129 + 16);
  v124 = (v129 + 16);
  v126 = v72;
  v73 = v137;
  (v72)(v137, v71, v58);
  v74 = *(v70 + 80);
  v125 = (v74 + 48) & ~v74;
  v75 = swift_allocObject();
  *(v75 + 16) = v67;
  *(v75 + 24) = v4;
  *(v75 + 32) = v139;
  v76 = v58;
  v129 = *(v70 + 32);
  (v129)(v75 + ((v74 + 48) & ~v74), v73, v58);
  v77 = v115;
  static VerticalSizingBehaviorKey.defaultValue.getter();
  v78 = v69;
  v79 = v132;
  View.onChange<A>(of:initial:_:)();

  v80 = *(v130 + 8);
  v80(v78, v4);
  (*(v112 + 8))(v79, v77);
  type metadata accessor for State();
  v81 = v135;
  v82 = v78;
  State.wrappedValue.getter();
  v83 = v137;
  (v126)(v137, v81, v76);
  v84 = v125;
  v85 = swift_allocObject();
  *(v85 + 16) = v138;
  *(v85 + 24) = v4;
  *(v85 + 32) = v139;
  (v129)(v85 + v84, v83, v76);
  v86 = v121;
  v87 = v114;
  v88 = v134;
  static VerticalSizingBehaviorKey.defaultValue.getter();
  v89 = v111;
  v90 = v82;
  v91 = v88;
  v92 = v133;
  View.onChange<A>(of:initial:_:)();

  v80(v90, v4);
  (*(v118 + 8))(v92, v86);
  v150 = v86;
  v151 = v4;
  *&v152 = v87;
  *(&v152 + 1) = v91;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = v113;
  v95 = v119;
  sub_1000833D8(v89, v119, v93);
  v96 = *(v116 + 8);
  v96(v89, v95);
  sub_1000833D8(v94, v95, v93);
  return (v96)(v94, v95);
}

uint64_t sub_1006D09AC@<X0>(char *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v138 = a4;
  v136 = a1;
  v134 = a6;
  v141 = type metadata accessor for LazyPageTabViewStyle();
  v122 = *(v141 - 8);
  __chkstk_darwin(v141);
  v121 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = a2;
  v146 = a3;
  v11 = a2;
  v137 = a2;
  v147 = a4;
  v148 = a5;
  v139 = a5;
  type metadata accessor for Page(255, &v145);
  v12 = type metadata accessor for Array();
  v145 = v11;
  v146 = a3;
  v147 = a4;
  v148 = a5;
  v13 = type metadata accessor for PageContainer(255, &v145);
  v14 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v13);
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v145 = v16;
  v146 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v145 = v13;
  v146 = v14;
  v147 = WitnessTable;
  v148 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v145 = v13;
  v146 = v14;
  v147 = WitnessTable;
  v148 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v145 = v13;
  v146 = &type metadata for Solarium;
  v147 = OpaqueTypeMetadata2;
  v148 = WitnessTable;
  v149 = &protocol witness table for Solarium;
  v150 = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for _ConditionalContent();
  v145 = v13;
  v146 = &type metadata for Solarium;
  v147 = OpaqueTypeMetadata2;
  v148 = WitnessTable;
  v149 = &protocol witness table for Solarium;
  v150 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v144[0] = &protocol witness table for EmptyView;
  v144[1] = v22;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v21, v144);
  v23 = type metadata accessor for VStack();
  v24 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v23);
  v145 = v23;
  v146 = a3;
  v25 = a3;
  v26 = v139;
  v147 = v24;
  v148 = v139;
  v27 = type metadata accessor for IDView();
  v28 = swift_getWitnessTable(&protocol conformance descriptor for [A], v12);
  v145 = v12;
  v146 = v25;
  v147 = v27;
  v148 = v28;
  v149 = v26;
  v29 = v26;
  v30 = type metadata accessor for ForEach();
  v143 = swift_getWitnessTable(&protocol conformance descriptor for IDView<A, B>, v27);
  v31 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v30, &v143);
  v33 = type metadata accessor for WireframeScrollInterestView(255, v30, v31, v32);
  v34 = swift_getWitnessTable(byte_100A45998, v33);
  v145 = v25;
  v146 = v33;
  v147 = v29;
  v148 = v34;
  v35 = type metadata accessor for TabView();
  v36 = swift_getWitnessTable(&protocol conformance descriptor for TabView<A, B>, v35);
  v145 = v35;
  v146 = v141;
  v147 = v36;
  v148 = &protocol witness table for LazyPageTabViewStyle;
  v37 = swift_getOpaqueTypeMetadata2();
  v120 = *(v37 - 8);
  __chkstk_darwin(v37);
  v119 = &v110 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v118 = &v110 - v40;
  v41 = type metadata accessor for PageTabViewStyle.IndexDisplayMode();
  v117 = *(v41 - 8);
  __chkstk_darwin(v41);
  v115 = &v110 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v114 = &v110 - v44;
  v45 = type metadata accessor for PageTabViewStyle();
  v116 = *(v45 - 8);
  __chkstk_darwin(v45);
  v113 = &v110 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for Binding();
  v47 = type metadata accessor for Optional();
  __chkstk_darwin(v47 - 8);
  v124 = (&v110 - v48);
  v49 = swift_checkMetadataState();
  v126 = *(v49 - 8);
  __chkstk_darwin(v49);
  v125 = &v110 - v50;
  v140 = v51;
  v145 = v51;
  v146 = v45;
  v131 = v45;
  v135 = v36;
  v147 = v36;
  v148 = &protocol witness table for PageTabViewStyle;
  v52 = swift_getOpaqueTypeMetadata2();
  v112 = *(v52 - 8);
  __chkstk_darwin(v52);
  v111 = &v110 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v110 = &v110 - v55;
  v56 = type metadata accessor for EnvironmentValues();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v59 = &v110 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v52;
  v132 = v37;
  v130 = type metadata accessor for _ConditionalContent();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v110 - v60;
  v145 = v137;
  v146 = v25;
  v133 = v25;
  v147 = v138;
  v148 = v29;
  v61 = type metadata accessor for LegacyLazyPageAnimatableTabView(0, &v145);
  v62 = &v136[*(v61 + 100)];
  v63 = *v62;
  if (v62[8] != 1)
  {

    static os_log_type_t.fault.getter();
    v84 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v63, 0);
    (*(v57 + 8))(v59, v56);
    if (v145 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v85 = v124;
    v86 = v136;
    sub_1006CD66C(v61, v124);
    v87 = sub_10001B350(v85, 0, 1, v123);
    __chkstk_darwin(v87);
    v88 = v138;
    v89 = v133;
    *(&v110 - 6) = v137;
    *(&v110 - 5) = v89;
    v90 = v139;
    *(&v110 - 4) = v88;
    *(&v110 - 3) = v90;
    *(&v110 - 2) = v86;
    swift_checkMetadataState();
    v91 = v125;
    TabView.init(selection:content:)();
    v92 = v114;
    static PageTabViewStyle.IndexDisplayMode.never.getter();
    v93 = v117;
    (*(v117 + 16))(v115, v92, v41);
    v94 = v113;
    PageTabViewStyle.init(indexDisplayMode:)();
    (*(v93 + 8))(v92, v41);
    v95 = v111;
    v96 = v140;
    v80 = v131;
    v97 = v135;
    View.tabViewStyle<A>(_:)();
    (*(v116 + 8))(v94, v80);
    (*(v126 + 8))(v91, v96);
    v145 = v96;
    v146 = v80;
    v147 = v97;
    v148 = &protocol witness table for PageTabViewStyle;
    v98 = v97;
    v99 = swift_getOpaqueTypeConformance2();
    v100 = v110;
    v101 = v127;
    sub_1000833D8(v95, v127, v99);
    v102 = *(v112 + 8);
    v102(v95, v101);
    sub_1000833D8(v100, v101, v99);
    v145 = v140;
    v146 = v141;
    v147 = v98;
    v148 = &protocol witness table for LazyPageTabViewStyle;
    swift_getOpaqueTypeConformance2();
    v83 = v128;
    sub_1003E8038();
    v103 = v95;
    v75 = v135;
    v102(v103, v101);
    v102(v100, v101);
    goto LABEL_6;
  }

  if (v63)
  {
    goto LABEL_5;
  }

LABEL_3:
  v64 = v124;
  v65 = v136;
  sub_1006CD66C(v61, v124);
  v66 = sub_10001B350(v64, 0, 1, v123);
  __chkstk_darwin(v66);
  v67 = v138;
  v68 = v133;
  *(&v110 - 6) = v137;
  *(&v110 - 5) = v68;
  v69 = v139;
  *(&v110 - 4) = v67;
  *(&v110 - 3) = v69;
  *(&v110 - 2) = v65;
  swift_checkMetadataState();
  v70 = v125;
  TabView.init(selection:content:)();
  v71 = v121;
  static TabViewStyle<>.lazyPage.getter();
  v72 = v119;
  v74 = v140;
  v73 = v141;
  v75 = v135;
  View.tabViewStyle<A>(_:)();
  (*(v122 + 8))(v71, v73);
  (*(v126 + 8))(v70, v74);
  v145 = v74;
  v146 = v73;
  v147 = v75;
  v148 = &protocol witness table for LazyPageTabViewStyle;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = v118;
  v78 = v132;
  sub_1000833D8(v72, v132, v76);
  v79 = *(v120 + 8);
  v79(v72, v78);
  sub_1000833D8(v77, v78, v76);
  v145 = v74;
  v80 = v131;
  v146 = v131;
  v147 = v75;
  v148 = &protocol witness table for PageTabViewStyle;
  swift_getOpaqueTypeConformance2();
  v81 = v128;
  sub_10012D09C();
  v79(v72, v78);
  v82 = v78;
  v83 = v81;
  v79(v77, v82);
LABEL_6:
  v104 = v140;
  v145 = v140;
  v146 = v80;
  v147 = v75;
  v148 = &protocol witness table for PageTabViewStyle;
  v105 = swift_getOpaqueTypeConformance2();
  v145 = v104;
  v146 = v141;
  v147 = v75;
  v148 = &protocol witness table for LazyPageTabViewStyle;
  v106 = swift_getOpaqueTypeConformance2();
  v142[0] = v105;
  v142[1] = v106;
  v107 = v130;
  v108 = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v130, v142);
  sub_1000833D8(v83, v107, v108);
  return (*(v129 + 8))(v83, v107);
}

void sub_1006D1904()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v48 = v4;
  v49 = v5;
  v6 = sub_100120104();
  type metadata accessor for Page(v6, v7);
  v47 = type metadata accessor for Array();
  v8 = sub_100120104();
  v10 = type metadata accessor for PageContainer(v8, v9);
  v11 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  v12 = sub_100006558();
  WitnessTable = swift_getWitnessTable(v12, v10);
  type metadata accessor for EmptyVisualEffect();
  sub_100010890();
  sub_100121A00(v14, v15, &protocol conformance descriptor for EmptyVisualEffect);
  sub_10001CAD0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v52 = v10;
  v53 = v11;
  v54 = WitnessTable;
  v55 = OpaqueTypeConformance2;
  v18 = sub_100088480(&v52);
  v52 = v10;
  v53 = &type metadata for Solarium;
  v54 = OpaqueTypeMetadata2;
  v55 = WitnessTable;
  v56 = &protocol witness table for Solarium;
  v57 = v18;
  swift_getOpaqueTypeMetadata2();
  v19 = type metadata accessor for _ConditionalContent();
  v52 = v10;
  v53 = &type metadata for Solarium;
  v54 = OpaqueTypeMetadata2;
  v55 = WitnessTable;
  v56 = &protocol witness table for Solarium;
  v57 = v18;
  v51[0] = &protocol witness table for EmptyView;
  v51[1] = sub_100088480(&v52);
  v20 = sub_10001F590();
  swift_getWitnessTable(v20, v19, v51);
  sub_10000381C();
  v21 = type metadata accessor for VStack();
  v22 = sub_100008CF4();
  v23 = swift_getWitnessTable(v22, v21);
  v52 = v21;
  v53 = v3;
  v54 = v23;
  v55 = v1;
  sub_100120104();
  v24 = type metadata accessor for IDView();
  v25 = sub_100016D5C();
  v26 = swift_getWitnessTable(v25, v47);
  v52 = v47;
  v53 = v3;
  v54 = v24;
  v55 = v26;
  v56 = v1;
  sub_100120104();
  v27 = type metadata accessor for ForEach();
  v28 = sub_100052028();
  v50 = swift_getWitnessTable(v28, v24);
  v29 = sub_100008C6C();
  v30 = swift_getWitnessTable(v29, v27, &v50);
  v32 = type metadata accessor for WireframeScrollInterestView(0, v27, v30, v31);
  sub_1000037C4();
  v34 = v33;
  __chkstk_darwin(v35);
  sub_100003C38();
  v38 = v36 - v37;
  __chkstk_darwin(v39);
  v52 = v48;
  v53 = v3;
  v54 = v49;
  v55 = v1;
  v40 = type metadata accessor for LegacyLazyPageAnimatableTabView(0, &v52);
  sub_1006CDB64(v40, v38);
  v41 = sub_100074E00();
  v42 = swift_getWitnessTable(v41, v32);
  sub_1000833D8(v38, v32, v42);
  v43 = *(v34 + 8);
  v43(v38, v32);
  v44 = sub_1000D42A0();
  sub_1000833D8(v44, v45, v42);
  v46 = sub_1000D42A0();
  (v43)(v46);
  sub_10000536C();
}

uint64_t sub_1006D1C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a2;
  v74 = a1;
  v75 = a7;
  v82 = a3;
  v83 = a4;
  v67 = a3;
  v84 = a5;
  v85 = a6;
  v68 = a5;
  v72 = type metadata accessor for LegacyLazyPageAnimatableTabView(0, &v82);
  v70 = *(v72 - 8);
  v71 = *(v70 + 64);
  __chkstk_darwin(v72);
  v69 = &v63 - v11;
  v82 = a3;
  v83 = a4;
  v84 = a5;
  v85 = a6;
  type metadata accessor for Page(255, &v82);
  v63 = type metadata accessor for Array();
  v82 = a3;
  v83 = a4;
  v84 = a5;
  v85 = a6;
  v12 = type metadata accessor for PageContainer(255, &v82);
  v13 = sub_10022E824(&qword_100CC5C30, &qword_100A61508);
  WitnessTable = swift_getWitnessTable(byte_100A77CA8, v12);
  v15 = type metadata accessor for EmptyVisualEffect();
  v16 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  v82 = v15;
  v83 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v12;
  v83 = v13;
  v84 = WitnessTable;
  v85 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = v12;
  v83 = v13;
  v84 = WitnessTable;
  v85 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v82 = v12;
  v83 = &type metadata for Solarium;
  v84 = OpaqueTypeMetadata2;
  v85 = WitnessTable;
  v86 = &protocol witness table for Solarium;
  v87 = v19;
  swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for _ConditionalContent();
  v82 = v12;
  v83 = &type metadata for Solarium;
  v84 = OpaqueTypeMetadata2;
  v85 = WitnessTable;
  v86 = &protocol witness table for Solarium;
  v87 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v81[0] = &protocol witness table for EmptyView;
  v81[1] = v21;
  v64 = &protocol conformance descriptor for <> _ConditionalContent<A, B>;
  swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v20, v81);
  v22 = type metadata accessor for VStack();
  v23 = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v22);
  v82 = v22;
  v83 = a4;
  v84 = v23;
  v85 = a6;
  v24 = type metadata accessor for IDView();
  v25 = v63;
  v26 = swift_getWitnessTable(&protocol conformance descriptor for [A], v63);
  v82 = v25;
  v83 = a4;
  v27 = a4;
  v66 = a4;
  v84 = v24;
  v85 = v26;
  v86 = a6;
  v65 = a6;
  v28 = type metadata accessor for ForEach();
  v80 = swift_getWitnessTable(&protocol conformance descriptor for IDView<A, B>, v24);
  v29 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v28, &v80);
  v31 = type metadata accessor for WireframeScrollInterestView(255, v28, v29, v30);
  v32 = swift_getWitnessTable(byte_100A45998, v31);
  v82 = v27;
  v83 = v31;
  v84 = a6;
  v85 = v32;
  v33 = type metadata accessor for TabView();
  v34 = type metadata accessor for PageTabViewStyle();
  v35 = swift_getWitnessTable(&protocol conformance descriptor for TabView<A, B>, v33);
  v82 = v33;
  v83 = v34;
  v84 = v35;
  v85 = &protocol witness table for PageTabViewStyle;
  swift_getOpaqueTypeMetadata2();
  v36 = type metadata accessor for LazyPageTabViewStyle();
  v82 = v33;
  v83 = v36;
  v84 = v35;
  v85 = &protocol witness table for LazyPageTabViewStyle;
  swift_getOpaqueTypeMetadata2();
  v37 = type metadata accessor for _ConditionalContent();
  v38 = type metadata accessor for Group();
  v39 = type metadata accessor for ModifiedContent();
  v40 = type metadata accessor for ModifiedContent();
  v82 = v33;
  v83 = v34;
  v84 = v35;
  v85 = &protocol witness table for PageTabViewStyle;
  v41 = swift_getOpaqueTypeConformance2();
  v82 = v33;
  v83 = v36;
  v84 = v35;
  v85 = &protocol witness table for LazyPageTabViewStyle;
  v42 = swift_getOpaqueTypeConformance2();
  v79[0] = v41;
  v79[1] = v42;
  v78 = swift_getWitnessTable(v64, v37, v79);
  v77[0] = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v38, &v78);
  v77[1] = &protocol witness table for _AllowsHitTestingModifier;
  v76[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v39, v77);
  v76[1] = &protocol witness table for _TransactionModifier;
  v43 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v40, v76, v40);
  v82 = v40;
  v83 = v43;
  v64 = &opaque type descriptor for <<opaque return type of View.onScrollPhaseChange(_:)>>;
  v44 = swift_getOpaqueTypeMetadata2();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = &v63 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v48);
  v51 = &v63 - v50;
  v52 = v70;
  v53 = v69;
  v54 = v72;
  (*(v70 + 16))(v69, v73, v72, v49);
  v55 = (*(v52 + 80) + 48) & ~*(v52 + 80);
  v56 = swift_allocObject();
  v57 = v66;
  *(v56 + 2) = v67;
  *(v56 + 3) = v57;
  v58 = v65;
  *(v56 + 4) = v68;
  *(v56 + 5) = v58;
  (*(v52 + 32))(&v56[v55], v53, v54);
  v59 = swift_checkMetadataState();
  View.onScrollPhaseChange(_:)();

  v82 = v59;
  v83 = v43;
  v60 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v47, v44, v60);
  v61 = *(v45 + 8);
  v61(v47, v44);
  sub_1000833D8(v51, v44, v60);
  return (v61)(v51, v44);
}

uint64_t sub_1006D241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v7 = (a3 + *(type metadata accessor for LegacyLazyPageAnimatableTabView(0, &v12) + 76));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v12) = *v7;
  v13 = v9;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  result = ScrollPhase.isScrolling.getter();
  if (v11 != (result & 1))
  {
    ScrollPhase.isScrolling.getter();
    LOBYTE(v12) = v8;
    v13 = v9;
    return State.wrappedValue.setter();
  }

  return result;
}

void sub_1006D24E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v113 = a2;
  v100 = *(a5 - 8);
  __chkstk_darwin(a1);
  v98 = v12;
  v99 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v13;
  v121 = v14;
  v122 = v15;
  v123 = v16;
  v17 = type metadata accessor for LegacyLazyPageAnimatableTabView(0, &v120);
  v97 = *(v17 - 8);
  v95 = *(v97 + 64);
  __chkstk_darwin(v17);
  v96 = &v86 - v18;
  v120 = a4;
  v121 = a5;
  v122 = a6;
  v123 = a7;
  v106 = type metadata accessor for TransitionContext(255, &v120);
  v103 = type metadata accessor for Optional();
  v105 = *(v103 - 8);
  __chkstk_darwin(v103);
  v94 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v93 = &v86 - v21;
  __chkstk_darwin(v22);
  v102 = &v86 - v23;
  v120 = a4;
  v121 = a5;
  v114 = a7;
  v115 = a6;
  v122 = a6;
  v123 = a7;
  v24 = type metadata accessor for Page(255, &v120);
  v25 = type metadata accessor for Optional();
  v108 = *(v25 - 8);
  v109 = v25;
  __chkstk_darwin(v25);
  v107 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v86 - v28;
  v111 = *(v24 - 8);
  __chkstk_darwin(v30);
  v92 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v91 = &v86 - v33;
  __chkstk_darwin(v34);
  v110 = &v86 - v35;
  __chkstk_darwin(v36);
  v112 = &v86 - v37;
  v38 = (a3 + *(v17 + 72));
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v120) = *v38;
  v121 = v40;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  v41 = State.wrappedValue.getter();
  if (v117)
  {
    LOBYTE(v120) = v39;
    v121 = v40;
    LOBYTE(v117) = 0;
    State.wrappedValue.setter();
  }

  else
  {
    v104 = v17;
    v42 = *(a3 + *(v17 + 56));
    v120 = v42;
    __chkstk_darwin(v41);
    *(&v86 - 6) = a4;
    *(&v86 - 5) = a5;
    v43 = v114;
    *(&v86 - 4) = v115;
    *(&v86 - 3) = v43;
    v101 = a3;
    *(&v86 - 2) = a3;
    v44 = type metadata accessor for Array();

    swift_getWitnessTable(&protocol conformance descriptor for [A], v44);
    Sequence.first(where:)();

    if (sub_100024D10(v29, 1, v24) == 1)
    {
      (*(v108 + 8))(v29, v109);
      if (qword_100CA26B8 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_10000703C(v45, qword_100D90A90);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "The internal tab view selection does not correspond to a known page", v48, 2u);
      }

      sub_1006D3104();
    }

    else
    {
      v87 = *(v111 + 32);
      v49 = v87(v112, v29, v24);
      v90 = &v86;
      v120 = v42;
      __chkstk_darwin(v49);
      v89 = a4;
      *(&v86 - 6) = a4;
      *(&v86 - 5) = a5;
      v86 = a5;
      v50 = v114;
      *(&v86 - 4) = v115;
      *(&v86 - 3) = v50;
      *(&v86 - 2) = v113;

      v51 = v107;
      Sequence.first(where:)();

      if (sub_100024D10(v51, 1, v24) == 1)
      {
        (*(v108 + 8))(v51, v109);
        if (qword_100CA26B8 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_10000703C(v52, qword_100D90A90);
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "The tab view destination does not correspond to a known page", v55, 2u);
        }

        sub_1006D3104();
        (*(v111 + 8))(v112, v24);
      }

      else
      {
        v88 = v24;
        v87(v110, v51, v24);
        v56 = v104;
        v57 = v101;
        v58 = (v101 + *(v104 + 88));
        v60 = *v58;
        v59 = v58[1];
        v120 = *v58;
        v121 = v59;

        sub_10022C350(&qword_100CD2330, &unk_100A77B58);
        State.wrappedValue.getter();
        if (__OFADD__(v119, 1))
        {
          __break(1u);
        }

        else
        {
          v117 = v60;
          v118 = v59;
          v116 = v119 + 1;
          State.wrappedValue.setter();

          v120 = v60;
          v121 = v59;
          State.wrappedValue.getter();
          v61 = v117;
          v62 = v57 + *(v56 + 84);
          v63 = v103;
          v64 = type metadata accessor for State();
          v65 = v102;
          v109 = v62;
          State.wrappedValue.getter();
          LODWORD(v62) = sub_100024D10(v65, 1, v106);
          v108 = *(v105 + 8);
          (v108)(v65, v63);
          v66 = v114;
          v67 = v86;
          if (v62 == 1 || (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
          {
            v68 = *(v111 + 16);
            v69 = v61;
            v107 = v61;
            v70 = v91;
            v102 = v64;
            v71 = v88;
            v68(v91, v112);
            v72 = v92;
            (v68)(v92, v110, v71);
            v73 = v93;
            sub_1006CC0B0(v70, v72, v69, v89, v67, v115, v66, v93);
            sub_10001B350(v73, 0, 1, v106);
            (*(v105 + 16))(v94, v73, v63);
            State.wrappedValue.setter();
            (v108)(v73, v63);
            v74 = (v101 + *(v104 + 60));
            v75 = *v74;
            v108 = v74[1];
            v109 = v75;
            v76 = v97;
            v77 = v96;
            (*(v97 + 16))(v96);
            v78 = v100;
            v79 = v99;
            (*(v100 + 16))(v99, v113, v67);
            v80 = (*(v76 + 80) + 48) & ~*(v76 + 80);
            v81 = (v95 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
            v82 = (*(v78 + 80) + v81 + 8) & ~*(v78 + 80);
            v83 = swift_allocObject();
            *(v83 + 2) = v89;
            *(v83 + 3) = v67;
            *(v83 + 4) = v115;
            *(v83 + 5) = v66;
            (*(v76 + 32))(&v83[v80], v77, v104);
            *&v83[v81] = v107;
            (*(v78 + 32))(&v83[v82], v79, v67);
            sub_1006C2D24();
          }

          else
          {
            sub_1006D3104();
          }

          v84 = *(v111 + 8);
          v85 = v88;
          v84(v110, v88);
          v84(v112, v85);
        }
      }
    }
  }
}

void sub_1006D3104()
{
  sub_10000C778();
  v0 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  Transaction.disablesPageScrollAnimations.setter();
  Transaction.disablesAnimations.setter();
  Transaction.animation.setter();
  static os_signpost_type_t.event.getter();
  sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
  v7 = OS_os_log.init(subsystem:category:)();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v2 + 8))(v6, v0);
  withTransaction<A>(_:_:)();

  sub_10000536C();
}

uint64_t sub_1006D32AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  __chkstk_darwin(a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v13;
  v19 = v14;
  v20 = v15;
  v21 = v16;
  type metadata accessor for Page(0, &v18);
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  type metadata accessor for LegacyLazyPageAnimatableTabView(0, &v18);
  type metadata accessor for State();
  State.wrappedValue.getter();
  LOBYTE(a5) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v10 + 8))(v12, a4);
  return a5 & 1;
}

uint64_t sub_1006D33FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1000437E8();
  type metadata accessor for Page(v6, v7);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void sub_1006D3478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[1] = a3;
  v22 = a2;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v11 = type metadata accessor for TransitionContext(0, &v23);
  v21 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v20 - v16;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  type metadata accessor for LegacyLazyPageAnimatableTabView(0, &v23);
  type metadata accessor for State();
  State.wrappedValue.getter();
  if (sub_100024D10(v17, 1, v11))
  {
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v18 = v21;
    (*(v21 + 16))(v13, v17, v11);
    (*(v15 + 8))(v17, v14);
    v19 = *&v13[*(v11 + 56)];
    (*(v18 + 8))(v13, v11);
    if (v19 == v22)
    {
      sub_1006D3104();
    }
  }
}

uint64_t sub_1006D36C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  __chkstk_darwin(a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v15 = type metadata accessor for LegacyLazyPageAnimatableTabView(0, &v25);
  v16 = (a3 + *(v15 + 68));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v25) = *v16;
  v26 = v18;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  if (v24)
  {
    LOBYTE(v25) = v17;
    v26 = v18;
    v24 = 0;
  }

  else
  {
    (*(v8 + 16))(v10, a2, a5);
    type metadata accessor for Binding();
    Binding.wrappedValue.setter();
    v19 = (a3 + *(v15 + 72));
    v20 = *v19;
    v21 = *(v19 + 1);
    LOBYTE(v25) = v20;
    v26 = v21;
    v24 = 1;
  }

  return State.wrappedValue.setter();
}

uint64_t sub_1006D3858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a3;
  v28 = a2;
  v26 = a1;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v29 = type metadata accessor for TransitionContext(255, &v30);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v27 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = *(a4 - 8);
  __chkstk_darwin(v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v20 = type metadata accessor for LegacyLazyPageAnimatableTabView(0, &v30);
  v21 = v26 + *(v20 + 68);
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v30) = v22;
  v31 = v23;
  v34 = 1;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.setter();
  (*(v16 + 16))(v19, v28, a4);
  type metadata accessor for State();
  State.wrappedValue.setter();
  sub_10001B350(v15, 1, 1, v29);
  (*(v11 + 16))(v27, v15, v10);
  type metadata accessor for State();
  State.wrappedValue.setter();
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1006D3AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v6 = type metadata accessor for PageContainer(0, &v15);
  v7 = (a1 + *(v6 + 64));
  v8 = *v7;
  v9 = v7[1];
  v15 = *v7;
  v16 = v9;
  sub_10022C350(&qword_100CD2470, &qword_100A77CF8);
  State.wrappedValue.getter();
  v10 = *(v14 + 16);

  if (v10 == 1)
  {
    v15 = v8;
    v16 = v9;
    State.wrappedValue.getter();
    *(v14 + 16) = 0;
  }

  else
  {
    v11 = a1 + *(v6 + 60);
    v12 = *(v11 + 8);
    LOBYTE(v15) = *v11;
    v16 = v12;

    sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
    State.wrappedValue.getter();
    State.wrappedValue.setter();
  }
}

uint64_t sub_1006D3C24(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v5 = a3[3];
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  swift_getAssociatedTypeWitness();
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v14 = result;
  v15 = v13 | 7;
  v16 = (v13 | 7) + *(v6 + 64);
  if (v12 >= a2)
  {
LABEL_29:
    if (v7 >= v11)
    {
      v26 = a1;
      v10 = v7;
      v14 = v5;
    }

    else
    {
      v24 = (((&a1[v16] & ~v15) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) == 0)
      {
        v25 = *v24;
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        return (v25 + 1);
      }

      v26 = ((v24 + v13 + 8) & ~v13);
    }

    return sub_100024D10(v26, v10, v14);
  }

  else
  {
    v17 = ((((((*(*(result - 8) + 64) + ((v13 + 16) & ~v13) + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v17 <= 3)
    {
      v18 = ((a2 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = a1[v17];
        if (!a1[v17])
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 2:
        v21 = *&a1[v17];
        if (!*&a1[v17])
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *&a1[v17];
        if (!v21)
        {
          goto LABEL_29;
        }

LABEL_25:
        v22 = (v21 - 1) << (8 * v17);
        if (v17 <= 3)
        {
          v23 = *a1;
        }

        else
        {
          v22 = 0;
          v23 = *a1;
        }

        result = v12 + (v23 | v22) + 1;
        break;
      default:
        goto LABEL_29;
    }
  }

  return result;
}

void sub_1006D3EC8(unsigned int *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = (v15 | 7) + *(v8 + 64);
  v17 = ((v15 + 16) & ~v15) + *(*(AssociatedTypeWitness - 8) + 64);
  v18 = ((((((v17 + (v16 & ~(v15 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 >= a3)
  {
    v21 = 0;
  }

  else
  {
    if (v18 <= 3)
    {
      v19 = ((a3 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (v14 >= a2)
  {
    switch(v21)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_63:
        __break(1u);
        return;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v9 >= v13)
        {
          v28 = a1;
          v29 = a2;
          v12 = v9;
          AssociatedTypeWitness = v7;
        }

        else
        {
          v24 = ((a1 + v16) & ~(v15 | 7));
          if (v13 < a2)
          {
            if (v17 <= 3)
            {
              v25 = ~(-1 << (8 * v17));
            }

            else
            {
              v25 = -1;
            }

            if (v17)
            {
              v26 = v25 & (~v13 + a2);
              if (v17 <= 3)
              {
                v27 = v17;
              }

              else
              {
                v27 = 4;
              }

              bzero(v24, v17);
              switch(v27)
              {
                case 2:
                  *v24 = v26;
                  break;
                case 3:
                  *v24 = v26;
                  v24[2] = BYTE2(v26);
                  break;
                case 4:
                  *v24 = v26;
                  break;
                default:
                  *v24 = v26;
                  break;
              }
            }

            return;
          }

          v30 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v12 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v31 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v31 = (a2 - 1);
            }

            *v30 = v31;
            return;
          }

          v28 = ((v30 + v15 + 8) & ~v15);
          v29 = a2;
        }

        sub_10001B350(v28, v29, v12, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    v22 = ~v14 + a2;
    bzero(a1, ((((((v17 + (v16 & ~(v15 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v18 <= 3)
    {
      v23 = (v22 >> 8) + 1;
    }

    else
    {
      v23 = 1;
    }

    if (v18 > 3)
    {
      *a1 = v22;
    }

    else
    {
      *a1 = v22;
    }

    switch(v21)
    {
      case 1:
        *(a1 + v18) = v23;
        break;
      case 2:
        *(a1 + v18) = v23;
        break;
      case 3:
        goto LABEL_63;
      case 4:
        *(a1 + v18) = v23;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1006D424C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006D429C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1006D4338(_BYTE *a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a3;
  v13 = type metadata accessor for EnvironmentValues();
  v38 = *(v13 - 8);
  v39 = v13;
  __chkstk_darwin(v13);
  v37 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v49 = a7;
  v15 = type metadata accessor for TransitionContext(255, &v46);
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  __chkstk_darwin(v20);
  if (*a1 == 1 && (*a2 & 1) == 0)
  {
    v35 = &v35 - v21;
    v36 = v22;
    v46 = a4;
    v47 = a5;
    v48 = a6;
    v49 = a7;
    v23 = type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier(0, &v46);
    v24 = v40;
    (*(v17 + 16))(v19, v40 + *(v23 + 60), v16);
    if (sub_100024D10(v19, 1, v15) == 1)
    {
      (*(v17 + 8))(v19, v16);
    }

    else
    {
      v26 = v35;
      v25 = v36;
      (*(v36 + 32))(v35, v19, v15);
      v46 = a4;
      v47 = a5;
      v48 = a6;
      v49 = a7;
      type metadata accessor for Page(0, &v46);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v27 = *v24;
        v28 = *(v24 + 8);

        if ((v28 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v29 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v24 = v40;
          v30 = v37;
          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v38 + 8))(v30, v39);
          v27 = v46;
        }

        *(v27 + 16) = 1;

        v31 = v24 + *(v23 + 64);
        v33 = *(v31 + 1);
        v34 = v31[16];
        v46 = *v31;
        v32 = v46;
        v47 = v33;
        LOBYTE(v48) = v34;

        sub_10022C350(&unk_100CB3AA0, &unk_100A55B90);
        Binding.wrappedValue.getter();
        v42 = v32;
        v43 = v33;
        v44 = v34;
        v41 = (v45 & 1) == 0;
        Binding.wrappedValue.setter();
        (*(v36 + 8))(v35, v15);
      }

      else
      {
        (*(v25 + 8))(v26, v15);
      }
    }
  }
}

uint64_t sub_1006D4770(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7)
  {
    v9 = v7 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v7 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v6 + 84);
  }

  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v10 <= v15)
  {
    v10 = v15;
  }

  v16 = *(v6 + 80);
  v17 = *(*(v5 - 8) + 64);
  if (v7)
  {
    v18 = 7;
  }

  else
  {
    v18 = 8;
  }

  v19 = *(v12 + 80);
  if (v14)
  {
    v20 = 8;
  }

  else
  {
    v20 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v16 | 7;
  v22 = ((v16 + 16) & ~v16) + v17 + v21;
  v23 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8) + 31;
  v24 = v19 | v16;
  v25 = (v19 | v16) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v26 = v24 + 16;
  v27 = *(*(v11 - 8) + 64) + v16;
  if (v10 >= a2)
  {
LABEL_44:
    v35 = ~v16;
    if (v8 == v10)
    {
      v36 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {

        return sub_100024D10((v36 + v16 + 8) & v35, v7, v5);
      }

      v37 = *v36;
LABEL_53:
      if (v37 >= 0xFFFFFFFF)
      {
        LODWORD(v37) = -1;
      }

      return (v37 + 1);
    }

    v38 = (v22 + result) & ~v21;
    if (v9 == v10)
    {
      v39 = sub_100024D10(v38, v7, v5);
      if (v39 >= 2)
      {
        return v39 - 1;
      }

      else
      {
        return 0;
      }
    }

    v40 = ((v23 + v38) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) == 0)
    {
      v37 = *v40;
      goto LABEL_53;
    }

    if (v14)
    {
      v41 = (v26 + ((((((v40 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v25;
      if (v13 >= v7)
      {
        v7 = v13;
        v5 = v11;
      }

      else
      {
        v41 = (v27 + v41) & v35;
      }

      v42 = sub_100024D10(v41, v7, v5);
      v43 = v42 != 0;
      result = (v42 - 1);
      if (result != 0 && v43)
      {
        return result;
      }
    }

    return 0;
  }

  v28 = ((v20 + (((v27 & ~v16) + v17 + (((v27 & ~v16) + v17 + v24) & ~v24) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v26 + ((((((((v23 + (v22 & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v25) + 95) & 0xFFFFFFFFFFFFFFF8) + 9;
  v29 = (a2 - v10 + 255) >> 8;
  if (v28 <= 3)
  {
    v30 = v29 + 1;
  }

  else
  {
    v30 = 2;
  }

  if (v30 >= 0x10000)
  {
    LODWORD(v31) = 4;
  }

  else
  {
    LODWORD(v31) = 2;
  }

  if (v30 < 0x100)
  {
    LODWORD(v31) = 1;
  }

  if (v30 >= 2)
  {
    v31 = v31;
  }

  else
  {
    v31 = 0;
  }

  switch(v31)
  {
    case 1:
      v32 = *(result + v28);
      if (!*(result + v28))
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    case 2:
      v32 = *(result + v28);
      if (!*(result + v28))
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    case 3:
      __break(1u);
      return result;
    case 4:
      v32 = *(result + v28);
      if (!v32)
      {
        goto LABEL_44;
      }

LABEL_40:
      v33 = (v32 - 1) << (8 * v28);
      if (v28 <= 3)
      {
        v34 = *result;
      }

      else
      {
        v33 = 0;
        v34 = *result;
      }

      result = v10 + (v34 | v33) + 1;
      break;
    default:
      goto LABEL_44;
  }

  return result;
}

void sub_1006D4AC0(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a4 + 16);
  v15 = *(v14 - 8);
  if (v13 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  v17 = *(v15 + 84);
  if (v10 <= v17)
  {
    v18 = *(v15 + 84);
  }

  else
  {
    v18 = *(v9 + 84);
  }

  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v20 = 2147483646;
  }

  else
  {
    v20 = v19;
  }

  if (v16 <= v20)
  {
    v16 = v20;
  }

  v21 = *(v9 + 80);
  v22 = *(*(v8 - 8) + 64);
  v23 = ((v21 + 16) & ~v21) + v22 + (v21 | 7);
  if (v10)
  {
    v24 = *(*(v8 - 8) + 64);
  }

  else
  {
    v24 = v22 + 1;
  }

  v25 = ((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 31;
  v26 = *(v15 + 80) | v21;
  v27 = (*(v15 + 80) | v21) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v28 = v26 + 16;
  v29 = (v26 + 16 + ((((((((v25 + (v23 & ~(v21 | 7))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v27;
  v30 = *(v15 + 64) + v21;
  v31 = ((v30 & ~v21) + v22 + (((v30 & ~v21) + v22 + v26) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = v31 + 8;
  v33 = v31 + 9;
  if (v18)
  {
    v34 = v32;
  }

  else
  {
    v34 = v33;
  }

  v35 = ((((v34 + 7) & 0xFFFFFFFFFFFFFFF8) + v29 + 95) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v16 < a3)
  {
    v36 = (a3 - v16 + 255) >> 8;
    if (v35 <= 3)
    {
      v37 = v36 + 1;
    }

    else
    {
      v37 = 2;
    }

    if (v37 >= 0x10000)
    {
      v38 = 4;
    }

    else
    {
      v38 = 2;
    }

    if (v37 < 0x100)
    {
      v38 = 1;
    }

    if (v37 >= 2)
    {
      v7 = v38;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v16 < a2)
  {
    v39 = ~v16 + a2;
    bzero(a1, ((((v34 + 7) & 0xFFFFFFFFFFFFFFF8) + v29 + 95) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v35 <= 3)
    {
      v40 = (v39 >> 8) + 1;
    }

    else
    {
      v40 = 1;
    }

    if (v35 > 3)
    {
      *a1 = v39;
    }

    else
    {
      *a1 = v39;
    }

    switch(v7)
    {
      case 1:
        a1[v35] = v40;
        break;
      case 2:
        *&a1[v35] = v40;
        break;
      case 3:
        goto LABEL_91;
      case 4:
        *&a1[v35] = v40;
        break;
      default:
        return;
    }

    return;
  }

  v41 = ~v21;
  switch(v7)
  {
    case 1:
      a1[v35] = 0;
      if (a2)
      {
        goto LABEL_55;
      }

      return;
    case 2:
      *&a1[v35] = 0;
      if (a2)
      {
        goto LABEL_55;
      }

      return;
    case 3:
LABEL_91:
      __break(1u);
      return;
    case 4:
      *&a1[v35] = 0;
      goto LABEL_54;
    default:
LABEL_54:
      if (!a2)
      {
        return;
      }

LABEL_55:
      if (v11 == v16)
      {
        v42 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v10 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v43 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v43 = (a2 - 1);
          }

          *v42 = v43;
          return;
        }

        v49 = (v42 + v21 + 8) & v41;
        goto LABEL_72;
      }

      v44 = (&a1[v23] & ~(v21 | 7));
      if (v12 == v16)
      {
        if (v13 < a2)
        {
          v45 = ((v24 + 7) & 0xFFFFFFF8) + 8;
          if (((v24 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
          {
            return;
          }

          v46 = ~v13;
LABEL_80:
          v50 = v46 + a2;
          v51 = v44;
          v52 = v45;
          goto LABEL_81;
        }

        a2 = (a2 + 1);
        v49 = v44;
      }

      else
      {
        v47 = ((v44 + v25) & 0xFFFFFFFFFFFFFFF8);
        if ((v16 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v48 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v48 = (a2 - 1);
          }

          *v47 = v48;
          return;
        }

        v44 = ((v28 + ((((((v47 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v27);
        if (v20 < a2)
        {
          v45 = ((v34 + 7) & 0xFFFFFFF8) + 8;
          if (((v34 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
          {
            return;
          }

          v46 = ~v20;
          goto LABEL_80;
        }

        v50 = a2 - v18;
        if (a2 >= v18)
        {
          if (!v32)
          {
            return;
          }

          v51 = ((v28 + ((((((v47 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v27);
          v52 = v32;
LABEL_81:
          bzero(v51, v52);
          *v44 = v50;
          return;
        }

        if (v17 >= v10)
        {
          a2 = (a2 + 1);
          v49 = (v28 + ((((((v47 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v27;
          v10 = v17;
          v8 = v14;
        }

        else
        {
          v49 = (v44 + v30) & v41;
          a2 = (a2 + 1);
        }
      }

LABEL_72:

      sub_10001B350(v49, a2, v10, v8);
      return;
  }
}