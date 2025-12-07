uint64_t sub_1004C5540(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1004C55A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6680, &qword_100A3DB20);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1004C55F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA6680, &qword_100A3DB20);

  return sub_10001B350(a1, a2, a3, v6);
}

uint64_t sub_1004C5658(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CBF0C8, &qword_100A567E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v8 = &v15 + *(v7 + 56) - v5;
  sub_1004C5794(a1, &v15 - v5);
  sub_1004C5794(a2, v8);
  v9 = *(sub_10022C350(&qword_100CA6680, &qword_100A3DB20) + 48);
  v10 = v6[v9];
  v11 = v8[v9];
  LODWORD(a2) = static URL.== infix(_:_:)();
  v12 = type metadata accessor for URL();
  v13 = *(*(v12 - 8) + 8);
  v13(v8, v12);
  v13(v6, v12);
  return a2 & ~(v10 ^ v11) & 1;
}

uint64_t sub_1004C5794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailComponentAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C57F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = ObjectIdentifier.hashValue.getter();
  (*(a3 + 8))(a2, a3);
  return v5;
}

uint64_t sub_1004C5860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1004C589C(uint64_t a1, Swift::UInt a2, uint64_t a3, uint64_t a4)
{
  Hasher._combine(_:)(a2);

  return String.hash(into:)();
}

Swift::Int sub_1004C58F0(Swift::UInt a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004C5958()
{
  v1 = *(v0 + 8);

  return v1;
}

Swift::Int sub_1004C59BC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1004C5A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))(a3, a4);
  v7 = v6;
  if (sub_100355844(1, a2))
  {
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    while (v10)
    {
LABEL_10:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = v15 | (v12 << 6);
      if (*(*(a2 + 56) + v16) == 1)
      {
        v17 = *(a2 + 48) + 24 * v16;
        v31 = *(v17 + 8);
        v18 = *(v17 + 16);
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100109810();
          v13 = v21;
        }

        v19 = v13[2];
        if (v19 >= v13[3] >> 1)
        {
          sub_100109810();
          v13 = v22;
        }

        v13[2] = v19 + 1;
        v20 = &v13[2 * v19];
        v20[4] = v31;
        v20[5] = v18;
      }
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        _StringGuts.grow(_:)(55);
        v24._countAndFlagsBits = 0xD000000000000029;
        v24._object = 0x8000000100ACFBF0;
        String.append(_:)(v24);
        v25._countAndFlagsBits = v5;
        v25._object = v7;
        String.append(_:)(v25);

        v26._countAndFlagsBits = 0x6E6F73616552202CLL;
        v26._object = 0xEA00000000003D73;
        String.append(_:)(v26);
        sub_10022C350(&qword_100CCC930, &qword_100A41810);
        sub_100006F64(&qword_100CB2D00, &qword_100CCC930, &qword_100A41810, &protocol conformance descriptor for [A]);
        v27 = BidirectionalCollection<>.joined(separator:)();
        v29 = v28;

        v30._countAndFlagsBits = v27;
        v30._object = v29;
        String.append(_:)(v30);
        goto LABEL_18;
      }

      v10 = *(a2 + 64 + 8 * v14);
      ++v12;
      if (v10)
      {
        v12 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    _StringGuts.grow(_:)(42);

    v23._countAndFlagsBits = v5;
    v23._object = v7;
    String.append(_:)(v23);
LABEL_18:
  }
}

uint64_t sub_1004C5D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004C57F8(a3, a3, a4);
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *v4;
  sub_100239720();

  *v4 = v6;
  return result;
}

double sub_1004C5DC8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1004C70C8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

uint64_t sub_1004C5E7C(uint64_t a1)
{
  swift_beginAccess();

  sub_1002DBBC4();
  v4 = v3;

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    sub_1004C5FCC(v7, sub_1004C712C, v8);
  }
}

uint64_t sub_1004C5F64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_1004C6054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004C5DC8(a1, a2);
  sub_1004C5A1C(v5, v5, a2, a3);
  v7 = v6;

  return v7;
}

uint64_t sub_1004C60B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1004C70C8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1004C5D24(a1, v7, a3, a4);
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1004C61D0()
{

  v1 = OBJC_IVAR____TtC7WeatherP33_D30B6F20D6421CC160B6EFF5F6170CEE44EnvironmentAnimatedBackgroundDisabledReasons___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EnvironmentAnimatedBackgroundDisabledReasons(uint64_t a1)
{
  result = qword_100CBF100;
  if (!qword_100CBF100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004C62C8(uint64_t a1)
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

uint64_t sub_1004C6378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a4;
  v25 = a5;
  v26 = a2;
  v27 = a1;
  v28 = a6;
  v7 = type metadata accessor for RecordAnimatedBackgroundDisabledModifier(255, a4, a5, a4);
  swift_getWitnessTable(aAo, v7);
  v8 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for _ViewModifier_Content<A>, v8);
  v29 = v8;
  v30 = &type metadata for Bool;
  v31 = WitnessTable;
  v32 = &protocol witness table for Bool;
  v23 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  LOBYTE(v29) = HIBYTE(a3) & 1;
  v17 = swift_allocObject();
  v18 = v25;
  *(v17 + 16) = v24;
  *(v17 + 24) = v18;
  *(v17 + 32) = v26;
  *(v17 + 40) = a3 & 1;
  *(v17 + 41) = HIBYTE(a3) & 1;

  v19 = swift_checkMetadataState();
  View.onChange<A>(of:initial:_:)();

  v29 = v19;
  v30 = &type metadata for Bool;
  v31 = WitnessTable;
  v32 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v21 = *(v11 + 8);
  v21(v13, OpaqueTypeMetadata2);
  sub_1000833D8(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v21)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_1004C6614(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
  }

  sub_1004C60B0(v14, a5, a5, a6);
}

uint64_t sub_1004C6790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1004C6378(a1, *v3, v4 | *(v3 + 8), *(a2 + 16), *(a2 + 24), a3);
}

uint64_t sub_1004C67C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a5;
  v54 = a4;
  v45 = a3;
  v58 = a1;
  v59 = a6;
  v7 = type metadata accessor for DisableAnimatedBackgroundsStateModifier(255, a4, a5, a4);
  swift_getWitnessTable(byte_100A56A50, v7);
  v8 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for _ViewModifier_Content<A>, v8);
  v61 = v8;
  v62 = &type metadata for Bool;
  v63 = WitnessTable;
  v64 = &protocol witness table for Bool;
  v41[1] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v46 = v41 - v10;
  sub_10022E824(&qword_100CE1580, &unk_100A408E0);
  v11 = type metadata accessor for ModifiedContent();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v52 = v41 - v12;
  v13 = type metadata accessor for EnvironmentAnimatedBackgroundDisabledReasons(255);
  v49 = v13;
  v61 = v8;
  v62 = &type metadata for Bool;
  v63 = WitnessTable;
  v64 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = OpaqueTypeConformance2;
  v15 = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v60[0] = OpaqueTypeConformance2;
  v60[1] = v15;
  v16 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v11, v60);
  v48 = v16;
  v47 = sub_1004C70C8();
  v61 = v11;
  v62 = v13;
  v63 = v16;
  v64 = v47;
  v50 = &opaque type descriptor for <<opaque return type of View.environment<A>(_:)>>;
  v17 = swift_getOpaqueTypeMetadata2();
  v51 = *(v17 - 8);
  __chkstk_darwin(v17);
  v42 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v43 = v41 - v20;
  v21 = v45;
  v61 = a2;
  v62 = v45;
  sub_10022C350(qword_100CBF220, &qword_100A56AA8);
  v22 = State.wrappedValue.getter();
  sub_1004C5DC8(v22, v23);
  LOBYTE(WitnessTable) = sub_100355844(1, v24);

  LOBYTE(v61) = WitnessTable & 1;
  v25 = swift_allocObject();
  v26 = v53;
  v25[2] = v54;
  v25[3] = v26;
  v25[4] = a2;
  v25[5] = v21;

  swift_checkMetadataState();
  v27 = v46;
  View.onChange<A>(of:initial:_:)();

  swift_getKeyPath();
  v61 = a2;
  v62 = v21;
  v28 = State.wrappedValue.getter();
  sub_1004C5DC8(v28, v29);
  LOBYTE(v8) = sub_100355844(1, v30);

  LOBYTE(v61) = v8 & 1;
  v31 = v52;
  v32 = OpaqueTypeMetadata2;
  View.environment<A>(_:_:)();

  (*(v57 + 8))(v27, v32);
  v61 = a2;
  v62 = v21;
  State.wrappedValue.getter();
  v33 = v42;
  v35 = v48;
  v34 = v49;
  v36 = v47;
  View.environment<A>(_:)();

  (*(v56 + 8))(v31, v11);
  v61 = v11;
  v62 = v34;
  v63 = v35;
  v64 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v43;
  sub_1000833D8(v33, v17, v37);
  v39 = *(v51 + 8);
  v39(v33, v17);
  sub_1000833D8(v38, v17, v37);
  return (v39)(v38, v17);
}

void sub_1004C6DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100CA26A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000703C(v8, qword_100D90A60);

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    sub_10022C350(qword_100CBF220, &qword_100A56AA8);
    State.wrappedValue.getter();
    v12 = sub_1004C6054(a5, a5, a6);
    v14 = v13;

    v15 = sub_100078694(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, oslog, v9, "%s", v10, 0xCu);
    sub_100006F14(v11);
  }

  else
  {
  }
}

unint64_t sub_1004C6FDC()
{
  result = qword_100CBF190[0];
  if (!qword_100CBF190[0])
  {
    result = swift_getWitnessTable(aYk, &type metadata for AnimatedBackgroundDisabledReasons.AnyAnimatedBackgroundDisabledReasonID, v0, v1);
    atomic_store(result, qword_100CBF190);
  }

  return result;
}

uint64_t sub_1004C7030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1004C70C8()
{
  result = qword_100CBF218;
  if (!qword_100CBF218)
  {
    v3 = type metadata accessor for EnvironmentAnimatedBackgroundDisabledReasons(255);
    result = swift_getWitnessTable(byte_100A568DC, v3, v0, v1);
    atomic_store(result, &qword_100CBF218);
  }

  return result;
}

uint64_t sub_1004C7148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004C7190(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004C71D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004C72B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AutomationInfoViewModifier(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AutomationInfoProperty(0);
  sub_1003AFC6C(a1, &v6[*(v7 + 24)]);
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  *(v6 + 2) = swift_getKeyPath();
  v6[24] = 0;
  View.modifier<A>(_:)();
  return sub_1004C740C(v6);
}

uint64_t sub_1004C7398()
{
  sub_10022C350(&qword_100CBF338, &qword_100A56C90);
  sub_10014ADE4();
  return View.accessibilityIdentifier(_:)();
}

uint64_t sub_1004C740C(uint64_t a1)
{
  v2 = type metadata accessor for AutomationInfoViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004C7468()
{

  SettingProperty.wrappedValue.getter();
}

uint64_t sub_1004C74B0(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);

  SettingProperty.wrappedValue.setter();

  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1004C75B0(uint64_t a1)
{
  if (qword_100CA2688 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000703C(v2, qword_100D90A00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "We received a request to show the app store review prompt", v5, 2u);
  }

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;

  asyncMain(block:)();
}

void sub_1004C7718(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_1004C7A44(a2))
    {
      sub_1004C8B1C();
      v6 = static UIWindowScene.activeScene.getter();
      if (v6)
      {
        v7 = v6;
        if (qword_100CA2688 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_10000703C(v8, qword_100D90A00);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Requesting review prompt", v11, 2u);
        }

        [objc_opt_self() requestReviewInScene:v7];
        static WeatherClock.date.getter();
        sub_1004C74B0(v5);
      }

      else
      {
        if (qword_100CA2688 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_10000703C(v16, qword_100D90A00);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "No active window scene! Skipping app store review prompt", v19, 2u);
        }
      }
    }
  }

  else
  {
    if (qword_100CA2688 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000703C(v12, qword_100D90A00);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "We were deallocated! Skipping app store review prompt", v15, 2u);
    }
  }
}

uint64_t sub_1004C7A44(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppStoreReviewConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_1004C7F40())
  {
    v35 = a1;
    v36 = v9;
    if (qword_100CA2688 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000703C(v13, qword_100D90A00);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Checking if the review prompt feature is enabled", v16, 2u);
    }

    sub_1000161C0(v2 + 2, v2[5]);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.appStoreReview.getter();
    AppStoreReviewConfiguration.appReviewEnabled.getter();
    (*(v5 + 8))(v7, v4);
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA2978 != -1)
    {
      swift_once();
    }

    v17 = SettingReader.isEnabled(_:with:)();

    if (v17)
    {
      sub_1000161C0(v2 + 7, v2[10]);
      v18 = sub_100342C88();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      v21 = os_log_type_enabled(v19, v20);
      if (v18)
      {
        if (v21)
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "The review prompt featured is enabled and this user is in the chosen random sample", v22, 2u);
        }

        v23 = v35;
        v24 = sub_1004C83AC(v11, v35, v2);
        v19 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        v26 = os_log_type_enabled(v19, v25);
        if (v24 >= v23)
        {
          v27 = v36;
          if (!v26)
          {
            v12 = 0;
            goto LABEL_23;
          }

          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v19, v25, "We are not past the location count threshold. Showing the review prompt is disallowed", v34, 2u);
          v12 = 0;
        }

        else
        {
          v27 = v36;
          if (!v26)
          {
            v12 = 1;
            goto LABEL_23;
          }

          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v19, v25, "We are past the location count threshold. Showing the review prompt is allowed", v28, 2u);
          v12 = 1;
        }

        goto LABEL_21;
      }

      if (v21)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "The review prompt featured is enabled but this user is not in the chosen random sample";
        v32 = v20;
        goto LABEL_20;
      }
    }

    else
    {
      v19 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "The review prompt featured is disabled";
        v32 = v29;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v19, v32, v31, v30, 2u);
        v12 = 0;
        v27 = v36;
LABEL_21:

LABEL_23:

        (*(v27 + 8))(v11, v8);
        return v12;
      }
    }

    v12 = 0;
    v27 = v36;
    goto LABEL_23;
  }

  return 0;
}

BOOL sub_1004C7F40()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  if (qword_100CA2688 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000703C(v9, qword_100D90A00);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Checking if the prompt was shown recently ...", v12, 2u);
  }

  sub_1004C7468();
  static Date.distantPast.getter();
  sub_1004C8B60(&qword_100CA39D0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  if (v13)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "promptLastShownDate == .distantPast .. concluding that the prompt was NOT shown recently", v17, 2u);
    }

    return 0;
  }

  else
  {
    v19 = sub_1004C86F4(v1);
    static WeatherClock.date.getter();
    sub_1004C7468();
    Date.timeIntervalSince(_:)();
    v21 = v20;
    v14(v5, v2);
    v14(v8, v2);
    v18 = v21 < v19;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v24 = 67109378;
      *(v24 + 4) = v21 < v19;
      *(v24 + 8) = 2080;
      sub_1004C7468();
      sub_1004C8B60(&qword_100CA5720, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v14(v8, v2);
      v28 = sub_100078694(v25, v27, &v31);

      *(v24 + 10) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Just finished checking if the prompt was shown recently. promptWasRecentlyShown=%{BOOL}d, promptLastShownDate=%s", v24, 0x12u);
      sub_100006F14(v30);
    }
  }

  return v18;
}

uint64_t sub_1004C83AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for AppStoreReviewConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppConfiguration.appStoreReview.getter();
  v8 = AppStoreReviewConfiguration.savedLocationsCountThreshold.getter();
  (*(v5 + 8))(v7, v4);
  if (qword_100CA2688 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000703C(v9, qword_100D90A00);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    *(v12 + 4) = a2;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v10, v11, " ... now checking if we pass our location count threshold. locationCount=%ld, (app config)locationCountThreshold=%ld", v12, 0x16u);
  }

  if (qword_100CA2990 != -1)
  {
    swift_once();
  }

  sub_1004C8B60(&qword_100CBF410, v13, type metadata accessor for AppStoreReviewManager, byte_100A56D28);
  Configurable.setting<A>(_:)();
  if (v19 == 1)
  {
    if (qword_100CA2998 != -1)
    {
      swift_once();
    }

    Configurable.setting<A>(_:)();
    v8 = v18;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v14, v15, "We have a local setting override. locationCountThresholdOverrideEnabled=true. (local override)locationsCountThreshold=%ld", v16, 0xCu);
    }
  }

  return v8;
}

double sub_1004C86F4(uint64_t *a1)
{
  v26 = *a1;
  v2 = type metadata accessor for AppStoreReviewConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1 + 2, a1[5]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.appStoreReview.getter();
  (*(v7 + 8))(v9, v6);
  AppStoreReviewConfiguration.timeIntervalBetweenPrompts.getter();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  if (qword_100CA2988 != -1)
  {
    swift_once();
  }

  sub_1004C8B60(&qword_100CBF410, v12, type metadata accessor for AppStoreReviewManager, byte_100A56D28);
  Configurable.setting<A>(_:)();
  if (v27)
  {
    if (qword_100CA2688 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000703C(v13, qword_100D90A00);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v11 = 0.0;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "We have a local setting override. ignoreRepromptTimeInterval=true ... returning zero for timeIntervalBetweenPrompts";
      v18 = v15;
      v19 = v14;
      v20 = v16;
      v21 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v19, v18, v17, v20, v21);
    }
  }

  else
  {
    if (qword_100CA2688 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000703C(v22, qword_100D90A00);
    v14 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v11;
      v17 = "Returning the app config timeIntervalBetweenPrompts. value=%f";
      v18 = v23;
      v19 = v14;
      v20 = v24;
      v21 = 12;
      goto LABEL_12;
    }
  }

  return v11;
}

uint64_t sub_1004C8AB0()
{
  sub_100006F14((v0 + 16));
  sub_100006F14((v0 + 56));

  return v0;
}

uint64_t sub_1004C8AE0()
{
  sub_1004C8AB0();

  return swift_deallocClassInstance();
}

unint64_t sub_1004C8B1C()
{
  result = qword_100CBF408;
  if (!qword_100CBF408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CBF408);
  }

  return result;
}

uint64_t sub_1004C8B60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004C8BBC()
{
  result = qword_100CBF418;
  if (!qword_100CBF418)
  {
    result = swift_getWitnessTable(byte_100A56E74, &type metadata for WindowFocusState, v0, v1);
    atomic_store(result, &qword_100CBF418);
  }

  return result;
}

uint64_t sub_1004C8C10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657375636F66 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657375636F666E75 && a2 == 0xE900000000000064;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1004C8D28(char a1)
{
  if (!a1)
  {
    return 0x64657375636F66;
  }

  if (a1 == 1)
  {
    return 0x657375636F666E75;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1004C8D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004C8C10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004C8DB4(uint64_t a1)
{
  v2 = sub_1004C9B48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C8DF0(uint64_t a1)
{
  v2 = sub_1004C9B48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C8E2C(uint64_t a1)
{
  v2 = sub_1004C9C44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C8E68(uint64_t a1)
{
  v2 = sub_1004C9C44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C8EA4(uint64_t a1)
{
  v2 = sub_1004C9BF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C8EE0(uint64_t a1)
{
  v2 = sub_1004C9BF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C8F1C(uint64_t a1)
{
  v2 = sub_1004C9B9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C8F58(uint64_t a1)
{
  v2 = sub_1004C9B9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C8F94@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10022C350(&qword_100CBF428, &qword_100A56EF8);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v3;
  a2[4] = sub_1004C9A90();
  v9 = sub_100042FB0(a2);
  return (*(v5 + 32))(v9, v8, v3);
}

uint64_t sub_1004C90FC(void *a1, int a2)
{
  v33 = a2;
  sub_10022C350(&qword_100CBF480, &qword_100A56F28);
  sub_1000037C4();
  v31 = v4;
  v32 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v30 = &v26 - v6;
  sub_10022C350(&qword_100CBF488, &qword_100A56F30);
  sub_1000037C4();
  v28 = v8;
  v29 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10022C350(&qword_100CBF490, &qword_100A56F38);
  sub_1000037C4();
  v27 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_10022C350(&qword_100CBF498, &qword_100A56F40);
  sub_1000037C4();
  v19 = v18;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_1000161C0(a1, a1[3]);
  sub_1004C9B48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_1004C9BF0();
      sub_10000C88C(&type metadata for WindowFocusState.UnfocusedCodingKeys, &v35);
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_1004C9B9C();
      v24 = v30;
      sub_10000C88C(&type metadata for WindowFocusState.UnknownCodingKeys, &v36);
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_1004C9C44();
    sub_10000C88C(&type metadata for WindowFocusState.FocusedCodingKeys, &v34);
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_1004C9418(void *a1)
{
  v62 = sub_10022C350(&qword_100CBF440, &qword_100A56F00);
  sub_1000037C4();
  v60 = v2;
  sub_100003828();
  __chkstk_darwin(v3);
  v58 = &v52 - v4;
  v59 = sub_10022C350(&qword_100CBF448, &qword_100A56F08);
  sub_1000037C4();
  v57 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v52 - v7;
  v9 = sub_10022C350(&qword_100CBF450, &qword_100A56F10);
  sub_1000037C4();
  v56 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_10022C350(&qword_100CBF458, &unk_100A56F18);
  sub_1000037C4();
  v61 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v17 = a1[3];
  sub_1000161C0(a1, v17);
  sub_1004C9B48();
  v18 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_12;
  }

  v52 = v9;
  v53 = v13;
  v54 = v8;
  v55 = 0;
  v19 = v62;
  v63 = a1;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  v17 = v14;
  if (v22 == v23 >> 1)
  {
    goto LABEL_10;
  }

  if (v22 < (v23 >> 1))
  {
    v24 = v14;
    v25 = *(v21 + v22);
    v26 = sub_100618E7C();
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    v31 = v59;
    v32 = v60;
    if (v28 == v30 >> 1)
    {
      v17 = v25;
      if (v25)
      {
        v56 = v26;
        v33 = v55;
        if (v25 == 1)
        {
          v65 = 1;
          sub_1004C9BF0();
          v34 = v54;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v57 + 8))(v34, v31);
            v35 = sub_100003C88();
            v36(v35);
LABEL_21:
            sub_100006F14(v63);
            return v17;
          }
        }

        else
        {
          LODWORD(v59) = v25;
          v66 = 2;
          sub_1004C9B9C();
          v17 = v58;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v32 + 8))(v17, v19);
            v50 = sub_100003C88();
            v51(v50);
            v17 = v59;
            goto LABEL_21;
          }
        }

        v46 = sub_100003C88();
        v47(v46);
      }

      else
      {
        v64 = 0;
        sub_1004C9C44();
        v42 = v53;
        sub_10000803C();
        v43 = v55;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v43)
        {
          swift_unknownObjectRelease();
          (*(v56 + 8))(v42, v52);
          v48 = sub_100003C78();
          v49(v48, v24);
          goto LABEL_21;
        }

        v44 = sub_100003C78();
        v45(v44, v24);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v24;
LABEL_10:
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v39 = &type metadata for WindowFocusState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = sub_100003C78();
    v41(v40, v17);
LABEL_11:
    a1 = v63;
LABEL_12:
    sub_100006F14(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004C99B4(uint64_t a1)
{
  sub_1004C9AF4();

  return ShortDescribable.description.getter();
}

uint64_t sub_1004C99F0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004C9418(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1004C9A3C()
{
  result = qword_100CBF420;
  if (!qword_100CBF420)
  {
    result = swift_getWitnessTable(a5i, &type metadata for WindowFocusState, v0, v1);
    atomic_store(result, &qword_100CBF420);
  }

  return result;
}

unint64_t sub_1004C9A90()
{
  result = qword_100CBF430;
  if (!qword_100CBF430)
  {
    v3 = sub_10022E824(&qword_100CBF428, &qword_100A56EF8);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CBF430);
  }

  return result;
}

unint64_t sub_1004C9AF4()
{
  result = qword_100CBF438;
  if (!qword_100CBF438)
  {
    result = swift_getWitnessTable(byte_100A56EC4, &type metadata for WindowFocusState, v0, v1);
    atomic_store(result, &qword_100CBF438);
  }

  return result;
}

unint64_t sub_1004C9B48()
{
  result = qword_100CBF460;
  if (!qword_100CBF460)
  {
    result = swift_getWitnessTable(byte_100A5724C, &type metadata for WindowFocusState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF460);
  }

  return result;
}

unint64_t sub_1004C9B9C()
{
  result = qword_100CBF468;
  if (!qword_100CBF468)
  {
    result = swift_getWitnessTable(byte_100A571FC, &type metadata for WindowFocusState.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF468);
  }

  return result;
}

unint64_t sub_1004C9BF0()
{
  result = qword_100CBF470;
  if (!qword_100CBF470)
  {
    result = swift_getWitnessTable(aEg, &type metadata for WindowFocusState.UnfocusedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF470);
  }

  return result;
}

unint64_t sub_1004C9C44()
{
  result = qword_100CBF478;
  if (!qword_100CBF478)
  {
    result = swift_getWitnessTable(byte_100A5715C, &type metadata for WindowFocusState.FocusedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF478);
  }

  return result;
}

_BYTE *sub_1004C9C98(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1004C9DA8()
{
  result = qword_100CBF4A0;
  if (!qword_100CBF4A0)
  {
    result = swift_getWitnessTable(byte_100A57134, &type metadata for WindowFocusState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF4A0);
  }

  return result;
}

unint64_t sub_1004C9E00()
{
  result = qword_100CBF4A8;
  if (!qword_100CBF4A8)
  {
    result = swift_getWitnessTable(byte_100A57054, &type metadata for WindowFocusState.FocusedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF4A8);
  }

  return result;
}

unint64_t sub_1004C9E58()
{
  result = qword_100CBF4B0;
  if (!qword_100CBF4B0)
  {
    result = swift_getWitnessTable(aUg_0, &type metadata for WindowFocusState.FocusedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF4B0);
  }

  return result;
}

unint64_t sub_1004C9EB0()
{
  result = qword_100CBF4B8;
  if (!qword_100CBF4B8)
  {
    result = swift_getWitnessTable(byte_100A57004, &type metadata for WindowFocusState.UnfocusedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF4B8);
  }

  return result;
}

unint64_t sub_1004C9F08()
{
  result = qword_100CBF4C0;
  if (!qword_100CBF4C0)
  {
    result = swift_getWitnessTable(byte_100A5702C, &type metadata for WindowFocusState.UnfocusedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF4C0);
  }

  return result;
}

unint64_t sub_1004C9F60()
{
  result = qword_100CBF4C8;
  if (!qword_100CBF4C8)
  {
    result = swift_getWitnessTable(aI_45, &type metadata for WindowFocusState.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF4C8);
  }

  return result;
}

unint64_t sub_1004C9FB8()
{
  result = qword_100CBF4D0;
  if (!qword_100CBF4D0)
  {
    result = swift_getWitnessTable(byte_100A56FDC, &type metadata for WindowFocusState.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF4D0);
  }

  return result;
}

unint64_t sub_1004CA010()
{
  result = qword_100CBF4D8;
  if (!qword_100CBF4D8)
  {
    result = swift_getWitnessTable(aH_6, &type metadata for WindowFocusState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF4D8);
  }

  return result;
}

unint64_t sub_1004CA068()
{
  result = qword_100CBF4E0;
  if (!qword_100CBF4E0)
  {
    result = swift_getWitnessTable(byte_100A570CC, &type metadata for WindowFocusState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF4E0);
  }

  return result;
}

unint64_t sub_1004CA0C4(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1004CA118(char a1)
{
  result = 0x776569567473694CLL;
  switch(a1)
  {
    case 1:
    case 14:
      sub_10001EED0();
      result = v4 | 1;
      break;
    case 2:
      sub_10001EED0();
      result = v7 - 5;
      break;
    case 3:
      result = 0x7463616544707041;
      break;
    case 4:
    case 5:
      sub_10001EED0();
      result = v11 + 7;
      break;
    case 6:
    case 7:
    case 19:
      sub_10001EED0();
      result = v16 + 6;
      break;
    case 8:
      sub_10001EED0();
      result = v14 - 4;
      break;
    case 9:
    case 18:
    case 27:
      sub_10001EED0();
      result = v13 + 5;
      break;
    case 10:
    case 26:
      sub_10001EED0();
      result = v19 | 8;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      sub_10001EED0();
      result = v5 - 1;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 15:
      sub_10001EED0();
      result = v8 + 13;
      break;
    case 16:
      sub_10001EED0();
      result = v3 + 15;
      break;
    case 17:
      sub_10001EED0();
      result = v9 + 20;
      break;
    case 20:
      sub_10001EED0();
      result = v10 + 19;
      break;
    case 21:
      sub_10001EED0();
      result = v12 + 21;
      break;
    case 22:
      sub_10001EED0();
      result = v15 + 11;
      break;
    case 23:
      sub_10001EED0();
      result = v17 + 12;
      break;
    case 24:
      sub_10001EED0();
      result = v6 + 4;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 28:
      sub_10001EED0();
      result = v18 + 22;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerformanceTest.Name(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PerformanceTest.Name(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1004CA608@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004CA0C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1004CA638@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004CA118(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1004CA668()
{
  result = qword_100CBF4E8;
  if (!qword_100CBF4E8)
  {
    result = swift_getWitnessTable(byte_100A57350, &type metadata for PerformanceTest.Name, v0, v1);
    atomic_store(result, &qword_100CBF4E8);
  }

  return result;
}

uint64_t sub_1004CA77C()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_100007074(v0, qword_100D90328);
  sub_10000703C(v0, qword_100D90328);
  sub_10022C350(&qword_100CA55A8, &qword_100A2FAA0);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1004CA8DC()
{
  sub_10022C350(&qword_100CA5570, &unk_100A2FA70);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578, &unk_100A41670);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580, &unk_100A2FA80);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588, &unk_100A41680);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_1004CAD90()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA21B0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D90328);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_1004CAFBC@<X0>(uint64_t *a2@<X8>)
{
  sub_1004CB054();
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1004CB000()
{
  result = qword_100CBF4F0;
  if (!qword_100CBF4F0)
  {
    result = swift_getWitnessTable(byte_100A573A4, &type metadata for NotificationPredictedLocationsTip, v0, v1);
    atomic_store(result, &qword_100CBF4F0);
  }

  return result;
}

unint64_t sub_1004CB054()
{
  result = qword_100CBF4F8;
  if (!qword_100CBF4F8)
  {
    result = swift_getWitnessTable(aUl, &type metadata for NotificationPredictedLocationsTip, v0, v1);
    atomic_store(result, &qword_100CBF4F8);
  }

  return result;
}

void sub_1004CB0A8(void *a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v2 - 8);
  v4 = v44 - v3;
  v5 = type metadata accessor for ActivityAction(0);
  __chkstk_darwin(v5);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1003C12B4();
  if (v8 == 2)
  {
    v9 = 0;
LABEL_3:
    sub_1004CB5C4();
    v10 = swift_allocError();
    v12 = v11;
    v13 = sub_100166104(a1);
    *v12 = v9;
    *(v12 + 8) = v13;
    *(v12 + 40) = 0;
    swift_willThrow();
    if (qword_100CA2760 != -1)
    {
      sub_10000FAB4(&qword_100CA2760);
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C78);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v44[1] = v10;
      v45 = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_10022C350(&qword_100CD8220, &qword_100A4A330);
      v19 = String.init<A>(describing:)();
      v21 = sub_100078694(v19, v20, &v45);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "WeatherUserActivityHandler failed to handle user activity; error=%{public}s", v17, 0xCu);
      sub_100006F14(v18);
    }

    else
    {
    }

    return;
  }

  if (v8 & 1) == 0 || (v22 = sub_1003C137C(), v23) && (v24 = v22, v25 = v23, type metadata accessor for WeatherLocation(), LOBYTE(v24) = sub_100673BE8(v24, v25), , (v24))
  {
    sub_10001C408();
    swift_storeEnumTagMultiPayload();
    v26 = static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
    v27 = static VerticalSizingBehaviorKey.defaultValue.getter();
    sub_100366814(v7, v26 & 1, v27 & 1);
    sub_1002AC218(v7);
    return;
  }

  v28 = sub_1003C1484();
  if (v29)
  {
    v9 = 3;
    goto LABEL_3;
  }

  v30 = *&v28;
  v31 = sub_1003C1494();
  if (v32)
  {
    v9 = 4;
    goto LABEL_3;
  }

  v33 = v31;
  v34 = *&v31;
  v35 = sub_1003C1398();
  v37 = v36;
  if (qword_100CA2760 != -1)
  {
    sub_10000FAB4(&qword_100CA2760);
  }

  v38 = type metadata accessor for Logger();
  sub_10000703C(v38, qword_100D90C78);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 141558787;
    *(v41 + 4) = 1752392040;
    *(v41 + 12) = 2049;
    *(v41 + 14) = v30;
    *(v41 + 22) = 2160;
    *(v41 + 24) = 1752392040;
    *(v41 + 32) = 2049;
    *(v41 + 34) = v33;
    _os_log_impl(&_mh_execute_header, v39, v40, "WeatherUserActivityHandler got user activity with latitude and longitude; latitude=%{private,mask.hash}f, longitude=%{private,mask.hash}f", v41, 0x2Au);
  }

  v42 = type metadata accessor for Date();
  sub_10001B350(v4, 1, 1, v42);
  sub_100066E08();
  v43 = Dictionary.init(dictionaryLiteral:)();
  sub_1002A2C08(v35, v37, 18, v4, v43, 0, 0, v30, v34);

  sub_1001AEDF4(v4);
}

unint64_t sub_1004CB5C4()
{
  result = qword_100CBF5A8;
  if (!qword_100CBF5A8)
  {
    result = swift_getWitnessTable(byte_100A57500, &type metadata for WeatherUserActivityHandler.Error, v0, v1);
    atomic_store(result, &qword_100CBF5A8);
  }

  return result;
}

uint64_t sub_1004CB624(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004CB660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004CB6AC(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1004CB6E4()
{
  v1 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  if (*(v0 + 32))
  {
    v8 = *(v0 + 32);
  }

  else
  {
    (*(v3 + 104))(v7, enum case for Font.TextStyle.largeTitle(_:), v1);
    static Font.Weight.medium.getter();
    v8 = static Font.system(_:weight:)();
    (*(v3 + 8))(v7, v1);
    *(v0 + 32) = v8;
  }

  return v8;
}

uint64_t sub_1004CB7FC()
{
  v1 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  if (*(v0 + 48))
  {
    v15 = *(v0 + 48);
  }

  else
  {
    (*(v10 + 104))(v14, enum case for Font.TextStyle.largeTitle(_:), v8);
    static Font.Weight.medium.getter();
    static Font.system(_:weight:)();
    (*(v10 + 8))(v14, v8);
    (*(v3 + 104))(v7, enum case for Font.Leading.tight(_:), v1);
    v15 = Font.leading(_:)();

    (*(v3 + 8))(v7, v1);
    *(v0 + 48) = v15;
  }

  return v15;
}

double sub_1004CB9D8()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  result = 1.0;
  if (*(v0 + 154))
  {
    result = 4.0;
  }

  *(v0 + 64) = result;
  *(v0 + 72) = 0;
  return result;
}

uint64_t sub_1004CBA08()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_1004CB6E4();
    *(v0 + 80) = v1;
  }

  return v1;
}

uint64_t sub_1004CBA64(char a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 72) = 1;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;
  *(v1 + 128) = 0;
  *(v1 + 136) = 1;
  *(v1 + 144) = 0;
  *(v1 + 152) = 257;
  *(v1 + 154) = a1;
  return v1;
}

uint64_t sub_1004CBAB4()
{
  sub_100466914();

  return swift_deallocClassInstance();
}

uint64_t sub_1004CBB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  v19 = type metadata accessor for DayPickerInput(0);
  sub_1001D374C();
  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = *(v19 + 24);
  v22 = *(v15 + 48);
  sub_1000D47CC(a1 + v21, v18);
  sub_1000D47CC(a2 + v21, &v18[v22]);
  sub_100003A40(v18);
  if (v23)
  {
    sub_100003A40(&v18[v22]);
    if (v23)
    {
      sub_1000180EC(v18, &unk_100CB2CF0, &unk_100A2D7F0);
LABEL_15:
      v24 = static TimeZone.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_11;
  }

  sub_1000D47CC(v18, v14);
  sub_100003A40(&v18[v22]);
  if (v23)
  {
    (*(v6 + 8))(v14, v4);
LABEL_11:
    sub_1000180EC(v18, qword_100CA4F80, &unk_100A580C0);
    goto LABEL_12;
  }

  (*(v6 + 32))(v10, &v18[v22], v4);
  sub_1000E1670(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v6 + 8);
  v27(v10, v4);
  v27(v14, v4);
  sub_1000180EC(v18, &unk_100CB2CF0, &unk_100A2D7F0);
  if (v26)
  {
    goto LABEL_15;
  }

LABEL_12:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1004CBE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v182 = a1;
  v185 = a2;
  v171 = type metadata accessor for DayWeather();
  sub_1000037C4();
  v169 = v2;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v167 = v5 - v4;
  v6 = type metadata accessor for Date();
  sub_1000037C4();
  v170 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v168 = v10 - v9;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v176 = v12;
  v177 = v11;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v174 = v14 - v13;
  v15 = type metadata accessor for WeatherData(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000037D8();
  v179 = v18 - v17;
  v19 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  sub_100003810(v19);
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v164 - v21;
  v23 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v24);
  v26 = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v181 = &v164 - v28;
  v29 = sub_10022C350(&qword_100CB0D50, &qword_100A41088);
  sub_100003810(v29);
  sub_100003828();
  __chkstk_darwin(v30);
  v32 = &v164 - v31;
  v33 = type metadata accessor for ConditionDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v34);
  v180 = &v164 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000386C();
  __chkstk_darwin(v36);
  v38 = &v164 - v37;
  __chkstk_darwin(v39);
  sub_100003878();
  v175 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  v173 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v166 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v165 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  v49 = &v164 - v48;
  v50 = type metadata accessor for DayPickerInput(0);
  sub_1000037E8();
  __chkstk_darwin(v51);
  sub_1000037D8();
  v54 = v53 - v52;
  static WeatherClock.date.getter();
  v55 = v54 + *(v50 + 24);
  v172 = v6;
  v56 = v6;
  v57 = v182;
  sub_10001B350(v55, 1, 1, v56);
  static TimeZone.current.getter();
  v184 = v50;
  v58 = *(v50 + 20);
  v183 = v54;
  *(v54 + v58) = _swiftEmptyArrayStorage;
  sub_10037E2D0(v32);
  if (sub_100024D10(v32, 1, v33) == 1)
  {
    sub_1000180EC(v32, &qword_100CB0D50, &qword_100A41088);
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0(&qword_100CA2700);
    }

    v59 = type metadata accessor for Logger();
    sub_10000703C(v59, qword_100D90B68);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    v62 = sub_1000207B0(v61);
    v63 = v184;
    if (v62)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Failed to create DayPickerInput due to missing conditionDetailViewState.", v64, 2u);
      sub_100003884(v64);
    }

    goto LABEL_29;
  }

  sub_1004CD044(v32, v49);
  v65 = *(v57 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v66 = Location.id.getter();
  sub_1000864C0(v66, v67, v65);

  v68 = v49;
  if (sub_100024D10(v22, 1, v23) == 1)
  {
    sub_1000180EC(v22, &qword_100CA37B0, &unk_100A2D740);
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0(&qword_100CA2700);
    }

    v69 = type metadata accessor for Logger();
    sub_10000703C(v69, qword_100D90B68);
    sub_1000101EC();
    sub_1004CCFE8(v49, v38);
    v70 = v180;
    sub_1004CCFE8(v49, v180);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (sub_1000207B0(v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v186 = v74;
      *v73 = 136315651;
      type metadata accessor for DetailCondition();
      sub_1000147E8();
      sub_1000E1670(v75, v76, &protocol conformance descriptor for DetailCondition);
      dispatch thunk of CustomStringConvertible.description.getter();
      v182 = v49;
      v78 = v77;
      sub_1004CD0A0(v38, type metadata accessor for ConditionDetailViewState);
      v79 = sub_10002C778();
      v81 = sub_100078694(v79, v78, v80);

      *(v73 + 4) = v81;
      *(v73 + 12) = 2160;
      *(v73 + 14) = 1752392040;
      *(v73 + 22) = 2081;
      type metadata accessor for Location();
      sub_100004388();
      sub_1000E1670(v82, v83, &protocol conformance descriptor for Location);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      sub_1004CD0A0(v70, type metadata accessor for ConditionDetailViewState);
      v87 = sub_10002C778();
      sub_100078694(v87, v86, v88);
      sub_10001389C();

      *(v73 + 24) = v84;
      _os_log_impl(&_mh_execute_header, v71, v72, "Failed to create DayPickerInput due to missing weather data for location; condition=%s, location=%{private,mask.hash}s", v73, 0x20u);
      swift_arrayDestroy();
      sub_100003884(v74);
      sub_100003884(v73);

      v89 = v182;
      v90 = type metadata accessor for ConditionDetailViewState;
LABEL_28:
      sub_1004CD0A0(v89, v90);
      v63 = v184;
LABEL_29:
      v156 = v185;
      sub_1004CD044(v183, v185);
      return sub_10001B350(v156, 0, 1, v63);
    }

    sub_100005F7C();
    sub_1004CD0A0(v70, v125);
    v126 = v38;
    v127 = v71;
LABEL_27:
    sub_1004CD0A0(v126, v127);
    v89 = v68;
    v90 = v71;
    goto LABEL_28;
  }

  v91 = v22;
  v92 = v181;
  sub_1004CD044(v91, v181);
  sub_1004CCFE8(v92, v26);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v182 = v33;
    sub_10001EEE4();
    sub_1004CD0A0(v26, v128);
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0(&qword_100CA2700);
    }

    v129 = type metadata accessor for Logger();
    sub_10000703C(v129, qword_100D90B68);
    sub_1000101EC();
    v130 = v173;
    sub_1004CCFE8(v49, v173);
    v131 = v175;
    sub_1004CCFE8(v49, v175);
    v71 = Logger.logObject.getter();
    v132 = static os_log_type_t.error.getter();
    if (!sub_1000207B0(v132))
    {

      sub_100005F7C();
      sub_1004CD0A0(v131, v160);
      sub_1004CD0A0(v130, v71);
      sub_10001EEE4();
      v126 = v92;
      goto LABEL_27;
    }

    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v186 = v134;
    *v133 = 136315651;
    v135 = v130;
    v107 = type metadata accessor for DetailCondition();
    sub_1000147E8();
    sub_1000E1670(v136, v137, &protocol conformance descriptor for DetailCondition);
    v138 = dispatch thunk of CustomStringConvertible.description.getter();
    v140 = v139;
    sub_100074AD0();
    sub_1004CD0A0(v135, v141);
    v142 = sub_100078694(v138, v140, &v186);

    *(v133 + 4) = v142;
    *(v133 + 12) = 2160;
    *(v133 + 14) = 1752392040;
    *(v133 + 22) = 2081;
    type metadata accessor for Location();
    sub_100004388();
    sub_1000E1670(v143, v144, &protocol conformance descriptor for Location);
    dispatch thunk of CustomStringConvertible.description.getter();
    v146 = v145;
    sub_1004CD0A0(v131, v107);
    v147 = sub_10002C778();
    v149 = sub_100078694(v147, v146, v148);

    *(v133 + 24) = v149;
    _os_log_impl(&_mh_execute_header, v71, v132, "Failed to create DayPickerInput due to missing weather data; condition=%s, location=%{private,mask.hash}s", v133, 0x20u);
    swift_arrayDestroy();
    sub_100003884(v134);
    sub_100003884(v133);

LABEL_23:
    sub_10001EEE4();
    sub_1004CD0A0(v181, v150);
    v89 = v68;
    v90 = v107;
    goto LABEL_28;
  }

  v93 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  v94 = *(v93 + 48);
  v95 = *(v93 + 64);
  v96 = v179;
  sub_1004CD044(v26, v179);
  sub_1004CD0A0(&v26[v95], type metadata accessor for NewsDataModel);
  sub_1004CD0A0(&v26[v94], type metadata accessor for PreprocessedWeatherData);
  sub_1000161C0((v178 + 16), *(v178 + 40));
  v97 = v174;
  Location.timeZone.getter();
  v98 = sub_1000FD610(v96, v97, 1, 11, 0);
  (*(v176 + 8))(v97, v177);
  if (v98[2] < 7uLL)
  {
    v182 = v33;
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0(&qword_100CA2700);
    }

    v99 = type metadata accessor for Logger();
    sub_10000703C(v99, qword_100D90B68);
    sub_1000101EC();
    v100 = v165;
    sub_1004CCFE8(v68, v165);
    v101 = v166;
    sub_1004CCFE8(v68, v166);

    v71 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();
    if (!sub_1000207B0(v102))
    {

      swift_bridgeObjectRelease_n();
      sub_100005F7C();
      sub_1004CD0A0(v101, v161);
      sub_1004CD0A0(v100, v71);
      sub_10000877C();
      sub_1004CD0A0(v96, v162);
      sub_10001EEE4();
      v126 = v181;
      goto LABEL_27;
    }

    v103 = swift_slowAlloc();
    v104 = v96;
    v105 = swift_slowAlloc();
    v186 = v105;
    *v103 = 134218755;
    v106 = v98[2];

    *(v103 + 4) = v106;

    *(v103 + 12) = 2080;
    v107 = type metadata accessor for DetailCondition();
    sub_1000147E8();
    sub_1000E1670(v108, v109, &protocol conformance descriptor for DetailCondition);
    v110 = v100;
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10001389C();
    v112 = v111;
    sub_100074AD0();
    sub_1004CD0A0(v113, v114);
    v115 = sub_10002C778();
    sub_100078694(v115, v112, v116);
    sub_10001389C();

    *(v103 + 14) = v110;
    *(v103 + 22) = 2160;
    *(v103 + 24) = 1752392040;
    *(v103 + 32) = 2081;
    type metadata accessor for Location();
    sub_100004388();
    sub_1000E1670(v117, v118, &protocol conformance descriptor for Location);
    v119 = dispatch thunk of CustomStringConvertible.description.getter();
    v121 = v120;
    sub_1004CD0A0(v101, v107);
    v122 = sub_10002C778();
    sub_100078694(v122, v121, v123);
    sub_10001389C();

    *(v103 + 34) = v119;
    _os_log_impl(&_mh_execute_header, v71, v102, "Failed to create DayPickerInput due to invalid daily data; dayCount=%ld, condition=%s, location=%{private,mask.hash}s", v103, 0x2Au);
    swift_arrayDestroy();
    sub_100003884(v105);
    sub_100003884(v103);

    sub_10000877C();
    sub_1004CD0A0(v104, v124);
    goto LABEL_23;
  }

  v151 = v169;
  v152 = v167;
  v153 = v171;
  (*(v169 + 16))(v167, v98 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72), v171);
  v154 = v168;
  DayWeather.date.getter();
  (*(v151 + 8))(v152, v153);
  v155 = v170;
  v156 = v185;
  v157 = v172;
  (*(v170 + 16))(v185, v154, v172);
  v63 = v184;
  sub_1000D47CC(v68 + *(v33 + 24), v156 + *(v184 + 24));
  Location.timeZone.getter();
  (*(v155 + 8))(v154, v157);
  sub_10000877C();
  sub_1004CD0A0(v96, v158);
  sub_10001EEE4();
  sub_1004CD0A0(v181, v159);
  sub_1004CD0A0(v68, type metadata accessor for ConditionDetailViewState);
  sub_1004CD0A0(v183, type metadata accessor for DayPickerInput);
  *(v156 + *(v63 + 20)) = v98;
  return sub_10001B350(v156, 0, 1, v63);
}

uint64_t type metadata accessor for DayPickerInput(uint64_t a1)
{
  result = qword_100CBF7B0;
  if (!qword_100CBF7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004CCE70(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1004CCF84(319, &unk_100CBF7C0, &type metadata accessor for DayWeather, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1004CCF84(319, &qword_100CA3940, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        type metadata accessor for TimeZone();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004CCF84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1004CCFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1004CD044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1004CD0A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1004CD10C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000100AC76D0 == a2)
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

uint64_t sub_1004CD1A8(void *a1, uint64_t a2)
{
  sub_10022C350(&qword_100CBF820, &qword_100A57898);
  sub_10000FB48();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  sub_1000161C0(a1, a1[3]);
  sub_1004CD7B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10022C350(&qword_100CBF810, &qword_100A57890);
  sub_1004CD80C(&qword_100CBF828, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v9, v2);
}

void *sub_1004CD318(void *a1)
{
  sub_10022C350(&qword_100CBF800, &qword_100A57888);
  sub_10000FB48();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  v9 = sub_1000161C0(a1, a1[3]);
  sub_1004CD7B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100006F14(a1);
  }

  else
  {
    sub_10022C350(&qword_100CBF810, &qword_100A57890);
    sub_1004CD80C(&qword_100CBF818, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v2);
    v9 = v11[1];
    sub_100006F14(a1);
  }

  return v9;
}

uint64_t sub_1004CD4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004CD10C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1004CD4E0(uint64_t a1)
{
  v2 = sub_1004CD7B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004CD51C(uint64_t a1)
{
  v2 = sub_1004CD7B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1004CD564@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1004CD318(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1004CD5AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000100AC76D0;
  *(inited + 72) = sub_10022C350(&qword_100CBF810, &qword_100A57890);
  *(inited + 48) = a1;

  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CBF830, &qword_100A578A0);
  a2[4] = sub_1004CD878();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1004CD6DC(uint64_t a1)
{
  sub_1004CD8DC();

  return ShortDescribable.description.getter();
}

uint64_t sub_1004CD718@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100758080(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1004CD764()
{
  result = qword_100CBF7F8;
  if (!qword_100CBF7F8)
  {
    result = swift_getWitnessTable(byte_100A577B8, &type metadata for AutomationState, v0, v1);
    atomic_store(result, &qword_100CBF7F8);
  }

  return result;
}

unint64_t sub_1004CD7B8()
{
  result = qword_100CBF808;
  if (!qword_100CBF808)
  {
    result = swift_getWitnessTable(byte_100A5796C, &type metadata for AutomationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF808);
  }

  return result;
}

uint64_t sub_1004CD80C(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10022E824(&qword_100CBF810, &qword_100A57890);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004CD878()
{
  result = qword_100CBF838;
  if (!qword_100CBF838)
  {
    v3 = sub_10022E824(&qword_100CBF830, &qword_100A578A0);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CBF838);
  }

  return result;
}

unint64_t sub_1004CD8DC()
{
  result = qword_100CBF840;
  if (!qword_100CBF840)
  {
    result = swift_getWitnessTable(byte_100A577E0, &type metadata for AutomationState, v0, v1);
    atomic_store(result, &qword_100CBF840);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutomationState.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1004CD9E0()
{
  result = qword_100CBF848;
  if (!qword_100CBF848)
  {
    result = swift_getWitnessTable(byte_100A57944, &type metadata for AutomationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF848);
  }

  return result;
}

unint64_t sub_1004CDA38()
{
  result = qword_100CBF850;
  if (!qword_100CBF850)
  {
    result = swift_getWitnessTable(asc_100A578B4, &type metadata for AutomationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF850);
  }

  return result;
}

unint64_t sub_1004CDA90()
{
  result = qword_100CBF858;
  if (!qword_100CBF858)
  {
    result = swift_getWitnessTable(byte_100A578DC, &type metadata for AutomationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBF858);
  }

  return result;
}

uint64_t sub_1004CDAE4(uint64_t a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 6.0;
  if (result)
  {
    v2 = 12.0;
  }

  qword_100D90340 = *&v2;
  return result;
}

uint64_t sub_1004CDB14(uint64_t a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 6.0;
  if (result)
  {
    v2 = 26.0;
  }

  qword_100D90348 = *&v2;
  return result;
}

uint64_t sub_1004CDB44()
{
  v0 = type metadata accessor for UUID();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000E7AC4(&xmmword_100D8FB90, v52);
  if (v53)
  {
    v48 = v2;
    v49 = v0;
    v50 = v8;
    v51 = v6;
    sub_1000161C0(v52, v53);
    sub_10022C350(&qword_100CBF860, &unk_100A61BF0);
    v18 = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v18)
    {
      v19 = v18;
      sub_100006F14(v52);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v47 = v19;
      v20 = sub_1000668DC();
      v21 = *(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v22 = *(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v24 = *(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v23 = *(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);

      v52[0] = v21;
      v52[1] = v22;
      v52[2] = v24;
      v53 = v23;
      sub_1002DD624();
      v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v45 = v26;
      v46 = v25;

      v27 = [objc_opt_self() defaultManager];
      v28 = [v27 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v52[0] = 0xD000000000000013;
      v52[1] = 0x8000000100ACFE60;
      UUID.init()();
      v29 = UUID.uuidString.getter();
      v31 = v30;
      (*(v48 + 8))(v5, v49);
      v32._countAndFlagsBits = v29;
      v32._object = v31;
      String.append(_:)(v32);

      URL.appendingPathComponent(_:)();

      v33 = v51;
      v34 = *(v50 + 8);
      v34(v11, v51);
      URL.appendingPathExtension(_:)();
      v34(v14, v33);
      v36 = v45;
      v35 = v46;
      Data.write(to:options:)();
      v37 = [objc_opt_self() generalPasteboard];
      v38 = URL.path.getter();
      sub_1004CE134(v38, v39, v37);

      sub_10022C350(&qword_100CB97B8, &unk_100A579C0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_100A2C3F0;
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v52, "File saved to ");
      HIBYTE(v52[1]) = -18;
      v41 = URL.path(percentEncoded:)(1);
      String.append(_:)(v41);

      v42 = v52[0];
      v43 = v52[1];
      *(v40 + 56) = &type metadata for String;
      *(v40 + 32) = v42;
      *(v40 + 40) = v43;
      print(_:separator:terminator:)();

      sub_10030F778(v35, v36);

      return (v34)(v17, v33);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1004CE0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for SettingCellStyle();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1004CE134(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setString:v4];
}

uint64_t type metadata accessor for DemoPresetSaveWeatherMainStateButton(uint64_t a1)
{
  result = qword_100CBF8C0;
  if (!qword_100CBF8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004CE20C(uint64_t a1)
{
  result = type metadata accessor for SettingCellStyle();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004CE2A8(SEL *a1)
{
  if ([v1 respondsToSelector:*a1])
  {
    return sub_1004CE2F8(v1, a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004CE2F8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t type metadata accessor for SuggestedSearchResultRowView(uint64_t a1)
{
  result = qword_100CBF958;
  if (!qword_100CBF958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1004CE3CC(uint64_t a1)
{
  result = sub_100284708();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocationOfInterest();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004CE474@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v66 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v65 = (v4 - v3);
  v63 = type metadata accessor for LocationOfInterestType();
  sub_1000037C4();
  v61 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v59 = v8 - v7;
  v9 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  sub_1000037D8();
  v68 = type metadata accessor for SearchResultButtonStyle(0);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = (v12 - v11);
  v14 = type metadata accessor for SuggestedSearchResultRowView(0);
  v15 = v14 - 8;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v67 = sub_10022C350(&qword_100CBF998, &qword_100A57AB0);
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  v60 = sub_10022C350(&qword_100CBF9A0, &qword_100A57AB8);
  sub_1000037C4();
  v62 = v23;
  __chkstk_darwin(v24);
  v69 = &v58 - v25;
  sub_1004CF238(v1, &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestedSearchResultRowView);
  v26 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v27 = swift_allocObject();
  sub_1004CF16C(&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  v70 = v1;
  sub_10022C350(&qword_100CBF9A8, &qword_100A57AC0);
  sub_100006F64(&qword_100CBF9B0, &qword_100CBF9A8, &qword_100A57AC0, &protocol conformance descriptor for VStack<A>);
  Button.init(action:label:)();
  LOBYTE(v16) = *(v1 + *(v15 + 32));
  *v13 = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  *(v13 + *(v68 + 20)) = v16;
  v28 = sub_100006F64(&qword_100CBF9B8, &qword_100CBF998, &qword_100A57AB0, &protocol conformance descriptor for Button<A>);
  v29 = sub_10033CFA0(&qword_100CADEB8, type metadata accessor for SearchResultButtonStyle, asc_100AA47C0);
  v30 = v67;
  View.buttonStyle<A>(_:)();
  sub_10033CCBC(v13, type metadata accessor for SearchResultButtonStyle);
  (*(v19 + 8))(v22, v30);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v59;
  LocationOfInterest.type.getter();
  v33 = LocationOfInterestType.title.getter();
  v35 = v34;
  (*(v61 + 8))(v32, v63);
  v36._countAndFlagsBits = v33;
  v36._object = v35;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v36);

  v37._countAndFlagsBits = 8236;
  v37._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v37);
  v38._countAndFlagsBits = LocationOfInterest.searchDisplayAddress.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v38);

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v39);
  v40 = LocalizedStringKey.init(stringInterpolation:)();
  v44 = Text.init(_:tableName:bundle:comment:)(v40, v42, v41 & 1, v43, 0, 0, 0, 0, 0, 256);
  v46 = v45;
  v48 = v47;
  v71 = v67;
  v72 = v68;
  v73 = v28;
  v74 = v29;
  swift_getOpaqueTypeConformance2();
  v49 = v64;
  v50 = v60;
  v51 = v69;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v44, v46, v48 & 1);

  (*(v62 + 8))(v51, v50);
  v52 = LocationOfInterest.searchDisplayAddress.getter();
  v53 = v65;
  *v65 = v52;
  *(v53 + 8) = v54;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v55 = v49 + *(sub_10022C350(&qword_100CBF9C0, &qword_100A57B00) + 36);
  v56 = type metadata accessor for AutomationInfoProperty(0);
  sub_1004CF238(v53, v55 + *(v56 + 24), type metadata accessor for AutomationInfo);
  sub_10033CCBC(v53, type metadata accessor for AutomationInfo);
  *v55 = 0;
  *(v55 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v55 + 16) = result;
  *(v55 + 24) = 0;
  return result;
}

uint64_t sub_1004CEB5C(char *a1)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  sub_1000161C0(a1, v2);
  v4 = type metadata accessor for SuggestedSearchResultRowView(0);
  return (*(v3 + 16))(&a1[*(v4 + 20)], v2, v3);
}

uint64_t sub_1004CEBC0@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  v3 = sub_10022C350(&qword_100CBF9C8, &qword_100A57B30);
  return sub_1004CEC18(a2 + *(v3 + 44));
}

uint64_t sub_1004CEC18@<X0>(uint64_t a2@<X8>)
{
  v26 = a2;
  v2 = sub_10022C350(&qword_100CBF9D0, &qword_100A57B38);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4008000000000000;
  v7[16] = 0;
  v8 = sub_10022C350(&qword_100CBF9D8, &qword_100A57B40);
  sub_1004CEE80(&v7[*(v8 + 44)]);
  type metadata accessor for SuggestedSearchResultRowView(0);
  v28 = LocationOfInterest.searchDisplayAddress.getter();
  v29 = v9;
  sub_10002D5A4();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v24 = v15;
  KeyPath = swift_getKeyPath();
  v17 = static Color.secondary.getter();
  v18 = swift_getKeyPath();
  LOBYTE(v28) = v14 & 1;
  LOBYTE(__src[0]) = 0;
  v25 = v4;
  sub_100035AD0(v7, v4, &qword_100CBF9D0, &qword_100A57B38);
  v19 = v4;
  v20 = v26;
  sub_100035AD0(v19, v26, &qword_100CBF9D0, &qword_100A57B38);
  v21 = *(sub_10022C350(&qword_100CBF9E0, &qword_100A57BA8) + 48);
  __src[0] = v10;
  __src[1] = v12;
  LOBYTE(__src[2]) = v14 & 1;
  v22 = v24;
  __src[3] = v24;
  __src[4] = KeyPath;
  __src[5] = 1;
  LOBYTE(__src[6]) = 0;
  __src[7] = v18;
  __src[8] = v17;
  memcpy((v20 + v21), __src, 0x48uLL);
  sub_100035AD0(__src, &v28, &qword_100CBF9E8, &unk_100A57BB0);
  sub_1000180EC(v7, &qword_100CBF9D0, &qword_100A57B38);
  v28 = v10;
  v29 = v12;
  v30 = v14 & 1;
  v31 = v22;
  v32 = KeyPath;
  v33 = 1;
  v34 = 0;
  v35 = v18;
  v36 = v17;
  sub_1000180EC(&v28, &qword_100CBF9E8, &unk_100A57BB0);
  return sub_1000180EC(v25, &qword_100CBF9D0, &qword_100A57B38);
}

uint64_t sub_1004CEE80@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = type metadata accessor for LocationOfInterestType();
  v1 = *(v28 - 8);
  __chkstk_darwin(v28);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB5170, &unk_100A488B0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v28 - v9);
  type metadata accessor for SuggestedSearchResultRowView(0);
  LocationOfInterest.imageName.getter();
  v11 = Image.init(systemName:)();
  v12 = (v10 + *(v5 + 44));
  v13 = *(sub_10022C350(&qword_100CAF750, &qword_100A57BC0) + 28);
  v14 = enum case for Image.Scale.small(_:);
  v15 = type metadata accessor for Image.Scale();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v10 = v11;
  LocationOfInterest.type.getter();
  v16 = LocationOfInterestType.title.getter();
  v18 = v17;
  (*(v1 + 8))(v3, v28);
  v30 = v16;
  v31 = v18;
  sub_10002D5A4();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  LOBYTE(v18) = v22;
  v24 = v23;
  sub_100035AD0(v10, v7, &qword_100CB5170, &unk_100A488B0);
  v25 = v29;
  sub_100035AD0(v7, v29, &qword_100CB5170, &unk_100A488B0);
  v26 = v25 + *(sub_10022C350(&qword_100CBF9F0, &qword_100A57BF8) + 48);
  *v26 = v19;
  *(v26 + 8) = v21;
  *(v26 + 16) = v18 & 1;
  *(v26 + 24) = v24;
  sub_10010CD54(v19, v21, v18 & 1);

  sub_1000180EC(v10, &qword_100CB5170, &unk_100A488B0);
  sub_10010CD64(v19, v21, v18 & 1);

  return sub_1000180EC(v7, &qword_100CB5170, &unk_100A488B0);
}

uint64_t sub_1004CF16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedSearchResultRowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004CF1D0()
{
  v1 = *(type metadata accessor for SuggestedSearchResultRowView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1004CEB5C(v2);
}

uint64_t sub_1004CF238(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1004CF298()
{
  result = qword_100CBF9F8;
  if (!qword_100CBF9F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBF9C0, &qword_100A57B00);
    v4[0] = sub_1004CF354();
    v4[1] = sub_10033CFA0(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBF9F8);
  }

  return result;
}

unint64_t sub_1004CF354()
{
  result = qword_100CBFA00;
  if (!qword_100CBFA00)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CBFA08, &qword_100A57C00);
    v4[2] = sub_10022E824(&qword_100CBF998, &qword_100A57AB0);
    v4[3] = type metadata accessor for SearchResultButtonStyle(255);
    v4[4] = sub_100006F64(&qword_100CBF9B8, &qword_100CBF998, &qword_100A57AB0, &protocol conformance descriptor for Button<A>);
    v4[5] = sub_10033CFA0(&qword_100CADEB8, type metadata accessor for SearchResultButtonStyle, asc_100AA47C0);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10033CFA0(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBFA00);
  }

  return result;
}

unint64_t sub_1004CF4F4()
{
  result = qword_100CBFA10;
  if (!qword_100CBFA10)
  {
    result = swift_getWitnessTable(byte_100A57CEC, &type metadata for AirPollutantTableViewModel, v0, v1);
    atomic_store(result, &qword_100CBFA10);
  }

  return result;
}

uint64_t sub_1004CF548(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1004CF8E0();
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1004CF5F8(uint64_t a1)
{
  String.hash(into:)();
  NSObject.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1004CF650()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1004CF6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1 == a4 && a2 == a5;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1009EA9FC();
  }
}

void sub_1004CF71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  String.hash(into:)();

  sub_1005FF8C8();
}

Swift::Int sub_1004CF75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_1005FF8C8();
  return Hasher._finalize()();
}

Swift::Int sub_1004CF7D0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1004CF880(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_1005FF8C8();
  return Hasher._finalize()();
}

unint64_t sub_1004CF8E0()
{
  result = qword_100CA52E0;
  if (!qword_100CA52E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CA52E0);
  }

  return result;
}

unint64_t sub_1004CF938()
{
  result = qword_100CBFA18;
  if (!qword_100CBFA18)
  {
    result = swift_getWitnessTable(aU7_1, &type metadata for AirPollutantTableViewModel.Row, v0, v1);
    atomic_store(result, &qword_100CBFA18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PickerDetailCondition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1004CFAB0(uint64_t a1)
{
  result = type metadata accessor for DetailCondition();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004CFB38@<X0>(uint64_t a2@<X8>)
{
  sub_100988DA0();
  sub_1004DCC70(v2, v15);
  v4 = swift_allocObject();
  v5 = v15[1];
  *(v4 + 1) = v15[0];
  *(v4 + 2) = v5;
  v6 = v15[3];
  *(v4 + 3) = v15[2];
  *(v4 + 4) = v6;
  v7 = sub_10022C350(&qword_100CBFB18, &qword_100A57FC8);
  v8 = (a2 + *(v7 + 56));
  sub_10022C350(&qword_100CBFB20, &unk_100A57FD0);
  v9 = swift_allocObject();
  v10 = *(*v9 + 96);
  v11 = type metadata accessor for ConditionDetailViewModel(0);
  sub_10001B350(v9 + v10, 1, 1, v11);
  ObservationRegistrar.init()();
  result = State.init(wrappedValue:)();
  v13 = *(&v15[0] + 1);
  *v8 = *&v15[0];
  v8[1] = v13;
  v14 = (a2 + *(v7 + 52));
  *v14 = sub_1004DCCA8;
  v14[1] = v4;
  return result;
}

uint64_t sub_1004CFC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v33 = a3;
  v32 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v32);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for ConditionDetailInnerView(0);
  __chkstk_darwin(v9);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ConditionDetailViewModel.Model(0);
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CBFB28, &unk_100A57FE0);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for ConditionDetailViewModel(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DCCD0(a1, v20, type metadata accessor for ConditionDetailViewModel);
  if (sub_100024D10(v20, 1, v12) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1004DCC0C(&qword_100CBFB30, type metadata accessor for ConditionDetailInnerView, aU2);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_1004DCF48(v20, v14, type metadata accessor for ConditionDetailViewModel.Model);
    sub_1004DCCD0(v14, v11 + v9[7], type metadata accessor for ConditionDetailViewModel.Model);
    v22 = v31;
    sub_10042F370(v31 + 16, v11);
    v23 = qword_100CA20B8;
    v31 = *(v22 + 56);

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = swift_beginAccess();
    v25 = sub_100472730(v24);
    swift_endAccess();
    v11[5] = v25;
    v26 = type metadata accessor for Date();
    sub_10001B350(v8, 1, 1, v26);
    sub_1000302D8(v8, v5, &unk_100CB2CF0, &unk_100A2D7F0);
    State.init(wrappedValue:)();
    sub_100018144(v8, &unk_100CB2CF0, &unk_100A2D7F0);
    v27 = v11 + v9[9];
    v34 = 0;
    State.init(wrappedValue:)();
    v28 = v36;
    *v27 = v35;
    *(v27 + 1) = v28;
    v29 = v9[10];
    sub_100046E64();
    *(v11 + v29) = OS_os_log.init(subsystem:category:)();
    *(v11 + 6) = v31;
    sub_1004DCCD0(v11, v17, type metadata accessor for ConditionDetailInnerView);
    swift_storeEnumTagMultiPayload();
    sub_1004DCC0C(&qword_100CBFB30, type metadata accessor for ConditionDetailInnerView, aU2);
    _ConditionalContent<>.init(storage:)();
    sub_1004DCD2C(v11, type metadata accessor for ConditionDetailInnerView);
    return sub_1004DCD2C(v14, type metadata accessor for ConditionDetailViewModel.Model);
  }
}

uint64_t sub_1004D0194@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ConditionDetailViewModel.Model(0);

  return sub_10001B350(a1, 1, 1, v2);
}

void *sub_1004D01E0@<X0>(void *a1@<X8>)
{
  v11[1] = a1;
  v2 = type metadata accessor for ConditionDetailInnerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1004DCCD0(v1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConditionDetailInnerView);
  type metadata accessor for MainActor();
  v5 = static MainActor.shared.getter();
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_1004DCF48(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ConditionDetailInnerView);
  sub_1004DCCD0(v1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConditionDetailInnerView);
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_1004DCF48(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6, type metadata accessor for ConditionDetailInnerView);
  type metadata accessor for DetailCondition();
  return Binding.init(get:set:)();
}

uint64_t sub_1004D03B0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for ConditionDetailInnerView(0) + 28);
  v4 = *(type metadata accessor for ConditionDetailViewModel.Model(0) + 36);
  v5 = type metadata accessor for DetailCondition();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

uint64_t sub_1004D0440(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static Solarium.isEnabled.getter();
  if (v6)
  {
    sub_1000161C0(a4, a4[3]);
    return sub_1003175A0(a1);
  }

  else
  {
    __chkstk_darwin(v6);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_1004D0544@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v74 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v74);
  v72 = v66 - v2;
  v3 = type metadata accessor for ConditionDetailInnerView(0);
  v76 = *(v3 - 8);
  v80 = *(v76 + 8);
  v4 = v3 - 8;
  v70 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v69 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DetailCondition();
  v6 = *(v78 - 8);
  __chkstk_darwin(v78);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConditionDetailViewModel.Model(0) - 8;
  __chkstk_darwin(v9);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DetailViewVisibilityTrackerModel(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CBFBF0, &qword_100A58060);
  __chkstk_darwin(v16);
  v18 = (v66 - v17);
  v81 = sub_10022C350(&qword_100CBFBF8, &qword_100A58068);
  __chkstk_darwin(v81);
  v67 = v66 - v19;
  v71 = sub_10022C350(&qword_100CBFC00, &qword_100A58070);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v82 = v66 - v20;
  v21 = (v1 + *(v4 + 36));
  sub_1004DCCD0(v21, v11, type metadata accessor for ConditionDetailViewModel.Model);
  (*(v6 + 16))(v8, &v11[*(v9 + 44)], v78);
  sub_100863584(v8, v15);
  v22 = *(v9 + 56);
  v68 = v9;
  v23 = *(v13 + 28);
  v24 = type metadata accessor for Location();
  (*(*(v24 - 8) + 16))(&v15[v23], &v11[v22], v24);
  sub_1004DCD2C(v11, type metadata accessor for ConditionDetailViewModel.Model);
  v25 = *(v13 + 32);
  v26 = enum case for DetailViewOrigin.component(_:);
  v27 = type metadata accessor for DetailViewOrigin();
  (*(*(v27 - 8) + 104))(&v15[v25], v26, v27);
  v83 = v1;
  v28 = v1[3];
  v29 = v1[4];
  v30 = sub_1000161C0(v1, v28);
  v85 = v28;
  v86 = *(v29 + 8);
  v31 = sub_100042FB0(v84);
  (*(*(v28 - 8) + 16))(v31, v30, v28);
  v32 = v21;
  v79 = v21;
  v33 = *v21;
  v34 = v32[1];
  v66[2] = *(v9 + 44);

  v35 = DetailCondition.filledSymbolName.getter();
  v37 = v36;
  LOBYTE(v30) = DetailCondition.usesCustomSymbol.getter();
  *v18 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  swift_storeEnumTagMultiPayload();
  sub_1004DCCD0(v15, v18 + v16[9], type metadata accessor for DetailViewVisibilityTrackerModel);
  sub_10042F370(v84, v18 + v16[10]);
  v38 = (v18 + v16[11]);
  *v38 = v33;
  v38[1] = v34;
  v39 = (v18 + v16[12]);
  *v39 = v35;
  v39[1] = v37;
  *(v18 + v16[13]) = v30 & 1;
  v40 = (v18 + v16[14]);
  *v40 = 0;
  v40[1] = 0;
  *(v18 + v16[15]) = 1;
  v41 = v83;
  sub_1004D0F8C(v83, v18 + v16[16]);
  sub_1004DCD2C(v15, type metadata accessor for DetailViewVisibilityTrackerModel);
  sub_100006F14(v84);
  v77 = type metadata accessor for ConditionDetailInnerView;
  v42 = v69;
  sub_1004DCCD0(v41, v69, type metadata accessor for ConditionDetailInnerView);
  v43 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v66[1] = *(v76 + 80);
  v44 = swift_allocObject();
  v76 = type metadata accessor for ConditionDetailInnerView;
  sub_1004DCF48(v42, v44 + v43, type metadata accessor for ConditionDetailInnerView);
  sub_100006F64(&qword_100CBFC08, &qword_100CBFBF0, &qword_100A58060, byte_100A6E2E0);
  sub_1004DCC0C(&qword_100CAECC0, &type metadata accessor for DetailCondition, &protocol conformance descriptor for DetailCondition);
  v45 = v67;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v18, &qword_100CBFBF0, &qword_100A58060);
  v46 = v83;
  v47 = v42;
  v48 = v77;
  sub_1004DCCD0(v83, v42, v77);
  v49 = swift_allocObject();
  v50 = v42;
  v51 = v76;
  sub_1004DCF48(v50, v49 + v43, v76);
  v52 = (v45 + *(sub_10022C350(&qword_100CBFC10, &qword_100A580B0) + 36));
  *v52 = sub_1004D27D0;
  v52[1] = 0;
  v52[2] = sub_1004DD220;
  v52[3] = v49;
  sub_1004DCCD0(v46, v47, v48);
  v66[0] = v43;
  v53 = swift_allocObject();
  sub_1004DCF48(v47, v53 + v43, v51);
  v54 = (v45 + *(v81 + 36));
  *v54 = sub_1004DD27C;
  v54[1] = v53;
  v54[2] = 0;
  v54[3] = 0;
  sub_10022C350(&qword_100CBB758, &unk_100A51060);
  v55 = v83;
  v56 = v72;
  State.wrappedValue.getter();
  sub_1004DCCD0(v55, v47, v48);
  v57 = v66[0];
  v58 = swift_allocObject();
  sub_1004DCF48(v47, v58 + v57, v51);
  v59 = sub_1004DD314();
  v60 = sub_1004DD518();
  v61 = v74;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v56, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_100018144(v45, &qword_100CBFBF8, &qword_100A58068);
  sub_1004DCCD0(v83, v47, v77);
  v62 = swift_allocObject();
  sub_1004DCF48(v47, v62 + v57, v76);
  type metadata accessor for Date();
  v84[0] = v81;
  v84[1] = v61;
  v84[2] = v59;
  v85 = v60;
  swift_getOpaqueTypeConformance2();
  sub_1004DCC0C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v63 = v71;
  v64 = v82;
  View.onChange<A>(of:initial:_:)();

  return (*(v73 + 8))(v64, v63);
}

uint64_t sub_1004D0F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_10022C350(&qword_100CBFC40, &qword_100A580E8);
  __chkstk_darwin(v3);
  v5 = (&v39 - v4);
  v54 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v54);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ScrollIndicatorVisibility();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CBFC48, &qword_100A580F0);
  v48 = *(v11 - 8);
  v49 = v11;
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_10022C350(&qword_100CBFC50, &qword_100A580F8);
  v46 = *(v14 - 8);
  v47 = v14;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v45 = sub_10022C350(&qword_100CBFC58, &qword_100A58100);
  __chkstk_darwin(v45);
  v52 = &v39 - v17;
  v18 = sub_10022C350(&qword_100CBFC60, &qword_100A58108);
  __chkstk_darwin(v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v53 = &v39 - v22;
  v44 = type metadata accessor for ConditionDetailInnerView(0);
  v23 = (a1 + *(v44 + 36));
  v24 = *v23;
  v25 = v23[1];
  v57 = v24;
  v58 = v25;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  if (v56 <= 0.0)
  {
    *v5 = static Color.clear.getter();
    swift_storeEnumTagMultiPayload();
    sub_1004DD788();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v40 = v18;
    v42 = v3;
    v43 = v5;
    v26 = static Axis.Set.vertical.getter();
    __chkstk_darwin(v26);
    v41 = a1;
    *(&v39 - 2) = a1;
    sub_10022C350(&qword_100CBFC80, &qword_100A58110);
    sub_1004DD948();
    ScrollView.init(_:showsIndicators:content:)();
    static ScrollIndicatorVisibility.never.getter();
    sub_10022C350(&qword_100CB59A8, &qword_100A4D640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v28 = static Axis.Set.vertical.getter();
    *(inited + 32) = v28;
    v29 = static Axis.Set.horizontal.getter();
    *(inited + 33) = v29;
    Axis.Set.init(rawValue:)();
    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v28)
    {
      Axis.Set.init(rawValue:)();
    }

    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v29)
    {
      Axis.Set.init(rawValue:)();
    }

    v30 = v40;
    sub_100006F64(&qword_100CBFC78, &qword_100CBFC48, &qword_100A580F0, &protocol conformance descriptor for ScrollView<A>);
    v31 = v49;
    View.scrollIndicators(_:axes:)();
    (*(v50 + 8))(v10, v51);
    (*(v48 + 8))(v13, v31);
    v32 = v52;
    (*(v46 + 32))(v52, v16, v47);
    v33 = (v32 + *(v45 + 36));
    *v33 = sub_1004D2764;
    v33[1] = 0;
    type metadata accessor for ConditionDetailViewModel.Model(0);
    *v7 = DetailCondition.rawValue.getter();
    v7[1] = v34;
    type metadata accessor for AutomationViewInfo(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v35 = &v20[*(v30 + 36)];
    v36 = type metadata accessor for AutomationInfoProperty(0);
    sub_1004DCCD0(v7, &v35[*(v36 + 24)], type metadata accessor for AutomationInfo);
    sub_1004DCD2C(v7, type metadata accessor for AutomationInfo);
    *v35 = 0;
    *(v35 + 1) = 0xE000000000000000;
    *(v35 + 2) = swift_getKeyPath();
    v35[24] = 0;
    sub_10011C0F0(v32, v20, &qword_100CBFC58, &qword_100A58100);
    v37 = v53;
    sub_10011C0F0(v20, v53, &qword_100CBFC60, &qword_100A58108);
    sub_1000302D8(v37, v43, &qword_100CBFC60, &qword_100A58108);
    swift_storeEnumTagMultiPayload();
    sub_1004DD788();
    _ConditionalContent<>.init(storage:)();
    return sub_100018144(v37, &qword_100CBFC60, &qword_100A58108);
  }
}

uint64_t sub_1004D16CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CBFCA0, &qword_100A58150);
  sub_1004D17E8(a1, a2 + *(v4 + 44));
  v5 = static Edge.Set.bottom.getter();
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  v6 = swift_beginAccess();
  sub_1004BA570(v6);
  swift_endAccess();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = sub_10022C350(&qword_100CBFC80, &qword_100A58110);
  v16 = a2 + *(result + 36);
  *v16 = v5;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_1004D17E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_10022C350(&qword_100CBFCA8, &unk_100A58158);
  v99 = *(v3 - 8);
  v100 = v3;
  __chkstk_darwin(v3);
  v108 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v107 = &v89 - v6;
  v96 = sub_10022C350(&qword_100CBAB80, &unk_100A504E0);
  __chkstk_darwin(v96);
  v90 = &v89 - v7;
  v8 = sub_10022C350(&qword_100CBFCB0, &unk_100A58168);
  __chkstk_darwin(v8 - 8);
  v106 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v105 = &v89 - v11;
  v12 = sub_10022C350(&unk_100CE0EB0, &qword_100A310D0);
  v109 = *(v12 - 8);
  __chkstk_darwin(v12);
  v101 = &v89 - v13;
  v95 = sub_10022C350(&qword_100CBFCB8, &qword_100A58178);
  __chkstk_darwin(v95);
  v15 = (&v89 - v14);
  v104 = sub_10022C350(&qword_100CBFCC0, &unk_100A58180);
  v97 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v110 = &v89 - v18;
  v19 = type metadata accessor for ConditionDetailInnerView(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_1004DCCD0(a1, &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConditionDetailInnerView);
  v22 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v23 = swift_allocObject();
  sub_1004DCF48(&v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for ConditionDetailInnerView);
  v24 = sub_10022C350(&qword_100CB22C8, &qword_100A445C0);
  v111[10] = sub_10071E95C;
  v111[11] = 0;
  LOBYTE(v111[12]) = 0;
  v111[0] = v24;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  v102 = v12;
  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, v112, &unk_100CAF270, &qword_100A31F20);
  if (*&v112[24])
  {
    sub_100013188(v112, &v111[3]);
    v111[1] = sub_1004DDA00;
    v111[2] = v23;
    v26 = Dictionary.init(dictionaryLiteral:)();
    v111[8] = _swiftEmptyArrayStorage;
    v111[9] = v26;
    memcpy(v112, v111, sizeof(v112));
    v27 = a1 + *(v19 + 28);
    v93 = type metadata accessor for ConditionDetailViewModel.Model(0);
    v28 = v93[7];
    v29 = *(v27 + v93[8]);
    v30 = *(v27 + 16);
    v91 = v27;
    v31 = type metadata accessor for PagingChartsView(0);
    sub_1000302D8(v27 + v28, v15 + v31[6], &qword_100CB0BA8, &unk_100A40F80);
    sub_10042F370(a1, v15 + v31[7]);
    v32 = *(a1 + 40);
    v33 = (a1 + *(v19 + 36));
    v35 = v33[1];
    v111[0] = *v33;
    v34 = v111[0];
    v111[1] = v35;

    sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
    State.wrappedValue.getter();
    v36 = *&v113[0];
    sub_1004D01E0((v15 + v31[10]));
    sub_10022C350(&qword_100CBB758, &unk_100A51060);
    State.projectedValue.getter();
    *v15 = v29;
    v15[1] = v30;
    *(v15 + v31[8]) = v32;
    *(v15 + v31[9]) = v36;
    v37 = v15 + v31[12];
    LOBYTE(v113[0]) = 0;
    State.init(wrappedValue:)();
    v38 = v111[1];
    *v37 = v111[0];
    *(v37 + 1) = v38;
    v39 = v15 + v31[13];
    LOBYTE(v113[0]) = 0;
    State.init(wrappedValue:)();
    v40 = v111[1];
    *v39 = v111[0];
    *(v39 + 1) = v40;
    v111[0] = v34;
    v111[1] = v35;
    State.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v41 = (v15 + *(v95 + 36));
    v42 = v113[1];
    *v41 = v113[0];
    v41[1] = v42;
    v41[2] = v113[2];
    Solarium.init()();
    v43 = v101;
    v44 = static ViewInputPredicate.! prefix(_:)();
    v92 = &v89;
    __chkstk_darwin(v44);
    v94 = a1;
    sub_10022C350(&qword_100CBFCC8, &qword_100A58190);
    sub_1004DDA90();
    v111[0] = &type metadata for Solarium;
    v111[1] = &protocol witness table for Solarium;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CBFCE0, &qword_100CBFCC8, &qword_100A58190, &protocol conformance descriptor for IDView<A, B>);
    v46 = v91;
    v47 = v102;
    v95 = OpaqueTypeConformance2;
    View.staticIf<A, B>(_:then:)();
    v48 = *(v109 + 8);
    v109 += 8;
    v92 = v48;
    (v48)(v43, v47);
    sub_100018144(v15, &qword_100CBFCB8, &qword_100A58178);
    v49 = v93;
    v50 = (v46 + v93[11]);
    v51 = *v50;
    if (*(*v50 + 16))
    {
      v53 = v50[1];
      v52 = v50[2];
      v54 = *(v50 + 24);
      type metadata accessor for ConditionDetailLegendView(0);

      v55 = v90;
      Text.Measurements.init()();
      *v55 = v51;
      *(v55 + 8) = v53;
      *(v55 + 16) = v52;
      *(v55 + 24) = v54;
      if (qword_100CA2198 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_1004B5FD8();
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      swift_endAccess();
      v64 = static Edge.Set.all.getter();
      v65 = v96;
      v66 = v55 + *(v96 + 36);
      *v66 = v64;
      *(v66 + 8) = v57;
      *(v66 + 16) = v59;
      *(v66 + 24) = v61;
      *(v66 + 32) = v63;
      *(v66 + 40) = 0;
      v67 = v105;
      sub_10011C0F0(v55, v105, &qword_100CBAB80, &unk_100A504E0);
      v68 = 0;
      v69 = v94;
    }

    else
    {
      v67 = v105;
      v69 = v94;
      v65 = v96;
      v68 = 1;
    }

    sub_10001B350(v67, v68, 1, v65);
    v70 = *(v46 + v49[10]);
    sub_10042F370(v69, &v111[1]);
    v71 = *(v69 + 48);
    v111[0] = v70;
    v111[6] = v71;

    Solarium.init()();
    v72 = v101;
    v73 = static ViewInputPredicate.! prefix(_:)();
    __chkstk_darwin(v73);
    sub_10022C350(&qword_100CBFCE8, &qword_100A58198);
    sub_1004DDB54();
    sub_100006F64(&qword_100CBFCF8, &qword_100CBFCE8, &qword_100A58198, &protocol conformance descriptor for IDView<A, B>);
    v74 = v107;
    v75 = v102;
    View.staticIf<A, B>(_:then:)();
    (v92)(v72, v75);
    sub_1004DDBA8(v111);
    sub_1000302D8(v112, v111, &qword_100CBFD00, &qword_100A581A0);
    v76 = v97;
    v109 = *(v97 + 16);
    v77 = v103;
    (v109)(v103, v110, v104);
    v78 = v67;
    v79 = v106;
    sub_1000302D8(v78, v106, &qword_100CBFCB0, &unk_100A58168);
    v81 = v99;
    v80 = v100;
    v102 = *(v99 + 16);
    v102(v108, v74, v100);
    v82 = v98;
    sub_1000302D8(v111, v98, &qword_100CBFD00, &qword_100A581A0);
    v83 = sub_10022C350(&qword_100CBFD08, &qword_100A581A8);
    v84 = v77;
    v85 = v104;
    (v109)(v82 + v83[12], v84, v104);
    sub_1000302D8(v79, v82 + v83[16], &qword_100CBFCB0, &unk_100A58168);
    v86 = v108;
    v102(v82 + v83[20], v108, v80);
    v87 = *(v81 + 8);
    v87(v107, v80);
    sub_100018144(v105, &qword_100CBFCB0, &unk_100A58168);
    v88 = *(v76 + 8);
    v88(v110, v85);
    sub_100018144(v112, &qword_100CBFD00, &qword_100A581A0);
    v87(v86, v80);
    sub_100018144(v106, &qword_100CBFCB0, &unk_100A58168);
    v88(v103, v85);
    return sub_100018144(v111, &qword_100CBFD00, &qword_100A581A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D24AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for ConditionDetailInnerView(0);
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  return sub_100504230(a2, v4);
}

uint64_t sub_1004D253C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _StringGuts.grow(_:)(26);

  type metadata accessor for ConditionDetailInnerView(0);
  type metadata accessor for ConditionDetailViewModel.Model(0);
  v4._countAndFlagsBits = DetailCondition.title.getter();
  String.append(_:)(v4);

  sub_1000302D8(a1, a2, &qword_100CBFCB8, &qword_100A58178);
  result = sub_10022C350(&qword_100CBFCC8, &qword_100A58190);
  v6 = (a2 + *(result + 52));
  *v6 = 0xD000000000000018;
  v6[1] = 0x8000000100ACFEC0;
  return result;
}

uint64_t sub_1004D2624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _StringGuts.grow(_:)(31);

  type metadata accessor for ConditionDetailInnerView(0);
  type metadata accessor for ConditionDetailViewModel.Model(0);
  v4._countAndFlagsBits = DetailCondition.title.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  type metadata accessor for Date();
  sub_1004DCC0C(&qword_100CA5720, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  result = sub_1004DDBD8(a1, a2);
  *(a2 + 56) = 0xD00000000000001ALL;
  *(a2 + 64) = 0x8000000100ACFEA0;
  return result;
}

uint64_t sub_1004D278C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  v2 = type metadata accessor for ConditionDetailInnerView(0);
  return sub_1003177A4(a1 + *(v2 + 28));
}

uint64_t sub_1004D27D0@<X0>(double *a1@<X8>)
{
  v2 = type metadata accessor for LocalCoordinateSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.local.getter();
  GeometryProxy.frame<A>(in:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

uint64_t sub_1004D28DC(CGFloat *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 0.0;
  v9.size.height = 0.0;
  v7.origin.x = *a1;
  v7.origin.y = v3;
  v7.size.width = v4;
  v7.size.height = v5;
  result = CGRectEqualToRect(v7, v9);
  if ((result & 1) == 0)
  {
    v8.origin.x = v2;
    v8.origin.y = v3;
    v8.size.width = v4;
    v8.size.height = v5;
    CGRectGetWidth(v8);
    type metadata accessor for ConditionDetailInnerView(0);
    sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1004D29A0(uint64_t a1)
{
  v2 = type metadata accessor for ConditionDetailInnerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  sub_1004D2B60();
  v8 = type metadata accessor for TaskPriority();
  sub_10001B350(v7, 1, 1, v8);
  sub_1004DCCD0(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConditionDetailInnerView);
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_1004DCF48(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ConditionDetailInnerView);
  sub_1006C0138();
}

uint64_t sub_1004D2B60()
{
  Transaction.animation.setter();
  Transaction.disablesAnimations.setter();
  withTransaction<A>(_:_:)();
}

uint64_t sub_1004D2BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for OSSignpostID();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004D2CE0, v7, v6);
}

uint64_t sub_1004D2CE0()
{
  v1 = *(v0 + 16);

  static os_signpost_type_t.event.getter();
  v2 = *(v1 + *(type metadata accessor for ConditionDetailInnerView(0) + 40));
  OSSignpostID.init(log:)();
  os_signpost(_:dso:log:name:signpostID:)();
  v3 = sub_100003940();
  v4(v3);
  sub_1000161C0(v1, v1[3]);
  sub_1003179D4();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004D2DD8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000302D8(a2, v7, &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    return sub_100018144(v7, &unk_100CB2CF0, &unk_100A2D7F0);
  }

  (*(v9 + 32))(v11, v7, v8);
  type metadata accessor for ConditionDetailInnerView(0);
  type metadata accessor for ConditionDetailViewModel.Model(0);
  sub_1004DCC0C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    sub_1000161C0(a3, a3[3]);
    sub_100317584(v11);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1004D2FE8(uint64_t a1, char *a2, char *a3)
{
  v5 = type metadata accessor for Date();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v11 - 8);
  v29 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  type metadata accessor for ConditionDetailInnerView(0);
  sub_10022C350(&qword_100CBB758, &unk_100A51060);
  v30 = a3;
  v19 = v32;
  State.wrappedValue.getter();
  v20 = *(v19 + 16);
  v31 = a2;
  v20(v15, a2, v5);
  sub_10001B350(v15, 0, 1, v5);
  v21 = *(v8 + 56);
  sub_1000302D8(v18, v10, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000302D8(v15, &v10[v21], &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(v10, 1, v5) == 1)
  {
    sub_100018144(v15, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_100018144(v18, &unk_100CB2CF0, &unk_100A2D7F0);
    if (sub_100024D10(&v10[v21], 1, v5) == 1)
    {
      return sub_100018144(v10, &unk_100CB2CF0, &unk_100A2D7F0);
    }

    goto LABEL_6;
  }

  v23 = v29;
  sub_1000302D8(v10, v29, &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(&v10[v21], 1, v5) == 1)
  {
    sub_100018144(v15, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_100018144(v18, &unk_100CB2CF0, &unk_100A2D7F0);
    (*(v19 + 8))(v23, v5);
LABEL_6:
    result = sub_100018144(v10, qword_100CA4F80, &unk_100A580C0);
LABEL_7:
    __chkstk_darwin(result);
    v24 = v31;
    *(&v28 - 2) = v30;
    *(&v28 - 1) = v24;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  v25 = v28;
  (*(v19 + 32))(v28, &v10[v21], v5);
  sub_1004DCC0C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v19 + 8);
  v27(v25, v5);
  sub_100018144(v15, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_100018144(v18, &unk_100CB2CF0, &unk_100A2D7F0);
  v27(v23, v5);
  result = sub_100018144(v10, &unk_100CB2CF0, &unk_100A2D7F0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1004D348C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  sub_10001B350(v8, 0, 1, v9);
  type metadata accessor for ConditionDetailInnerView(0);
  sub_1000302D8(v8, v5, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_10022C350(&qword_100CBB758, &unk_100A51060);
  State.wrappedValue.setter();
  return sub_100018144(v8, &unk_100CB2CF0, &unk_100A2D7F0);
}

uint64_t sub_1004D35F4(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = a1 + *(type metadata accessor for ConditionDetailInnerView(0) + 28);
  v9 = *(type metadata accessor for ConditionDetailViewModel.Model(0) + 24);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 16))(v7, v8 + v9, v10);
  sub_10001B350(v7, 0, 1, v10);
  sub_1000302D8(v7, v4, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_10022C350(&qword_100CBB758, &unk_100A51060);
  State.wrappedValue.setter();
  return sub_100018144(v7, &unk_100CB2CF0, &unk_100A2D7F0);
}

uint64_t sub_1004D377C()
{
  v6 = *v0;
  sub_1004DDBD8(v0, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  *(v1 + 16) = v4[0];
  *(v1 + 32) = v2;
  *(v1 + 48) = v4[2];
  *(v1 + 64) = v5;

  sub_10022C350(&qword_100CBFEC0, &qword_100A58380);
  sub_10022C350(&qword_100CBFEC8, &qword_100A58388);
  sub_100006F64(&qword_100CBFED0, &qword_100CBFEC0, &qword_100A58380, &protocol conformance descriptor for [A]);
  sub_100006F64(&qword_100CBFED8, &qword_100CBFEC8, &qword_100A58388, aI_4);
  sub_1004DCC0C(&qword_100CBFEE0, type metadata accessor for ConditionDetailPlatterViewModel, asc_100A9B304);
  return ForEach<>.init(_:content:)();
}

double sub_1004D3914@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + *(type metadata accessor for ConditionDetailPlatterViewModel(0) + 40));
  sub_1004DCCD0(a1, a3, type metadata accessor for ConditionDetailPlatterViewModel);
  v7 = a2[4];
  v8 = a2[5];
  v9 = sub_1000161C0(a2 + 1, v7);
  v10 = sub_10022C350(&qword_100CBFEC8, &qword_100A58388);
  v11 = (a3 + v10[10]);
  v11[3] = v7;
  v11[4] = *(v8 + 8);
  v12 = sub_100042FB0(v11);
  (*(*(v7 - 8) + 16))(v12, v9, v7);
  sub_1004DDBD8(a2, v18);
  v13 = swift_allocObject();
  v14 = v18[1];
  *(v13 + 16) = v18[0];
  *(v13 + 32) = v14;
  *(v13 + 48) = v18[2];
  *(v13 + 64) = v19;
  *(a3 + v10[9]) = v6;
  v15 = (a3 + v10[11]);
  *v15 = sub_1004DE930;
  v15[1] = v13;
  v16 = v10[12];
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(a3 + v16) = sub_1004BA278();
  swift_endAccess();
  return result;
}

uint64_t sub_1004D3AE8@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v74 = sub_10022C350(&unk_100CE0EB0, &qword_100A310D0);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v66 - v2;
  v70 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  __chkstk_darwin(v70);
  v95 = &v66 - v3;
  v4 = sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
  __chkstk_darwin(v4 - 8);
  v99 = (&v66 - v5);
  v6 = type metadata accessor for ScrollIndicatorVisibility();
  v97 = *(v6 - 8);
  v98 = v6;
  __chkstk_darwin(v6);
  v96 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10022C350(&qword_100CBFD18, &qword_100A58208);
  __chkstk_darwin(v89);
  v85 = &v66 - v8;
  v81 = type metadata accessor for PagingScrollTargetBehavior();
  v82 = *(v81 - 8);
  __chkstk_darwin(v81);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10022C350(&qword_100CBFDF0, &qword_100A582D0);
  v79 = *(v77 - 8);
  __chkstk_darwin(v77);
  v12 = &v66 - v11;
  v83 = sub_10022C350(&qword_100CBFDF8, &qword_100A582D8);
  v84 = *(v83 - 8);
  __chkstk_darwin(v83);
  v76 = &v66 - v13;
  v87 = sub_10022C350(&qword_100CBFE00, &qword_100A582E0);
  v90 = *(v87 - 8);
  __chkstk_darwin(v87);
  v78 = &v66 - v14;
  v15 = sub_10022C350(&qword_100CBFE08, &qword_100A582E8);
  v16 = *(v15 - 8);
  v91 = v15;
  v92 = v16;
  __chkstk_darwin(v15);
  v80 = &v66 - v17;
  v18 = sub_10022C350(&qword_100CBFE10, &qword_100A582F0);
  v93 = *(v18 - 8);
  v94 = v18;
  __chkstk_darwin(v18);
  v86 = &v66 - v19;
  v88 = sub_10022C350(&qword_100CBFE18, &qword_100A582F8);
  __chkstk_darwin(v88);
  v75 = &v66 - v20;
  v69 = sub_10022C350(&qword_100CBFE20, &qword_100A58300);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v66 - v21;
  static Axis.Set.horizontal.getter();
  v100 = v1;
  sub_10022C350(&qword_100CBFE28, &qword_100A58308);
  v22 = type metadata accessor for PagingChartsView.HorizontalChartPages(255);
  v23 = sub_10022E824(&qword_100CBFE30, &qword_100A58310);
  v24 = sub_1004DCC0C(&qword_100CBFE38, type metadata accessor for PagingChartsView.HorizontalChartPages, aA_44);
  v25 = sub_1004DE1E8();
  v101 = v22;
  v102 = &type metadata for Solarium;
  v103 = v23;
  v104 = v24;
  v105 = &protocol witness table for Solarium;
  v106 = v25;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  PagingScrollTargetBehavior.init()();
  v26 = sub_100006F64(&qword_100CBFE58, &qword_100CBFDF0, &qword_100A582D0, &protocol conformance descriptor for ScrollView<A>);
  v27 = v76;
  v28 = v77;
  v29 = v81;
  View.scrollTargetBehavior<A>(_:)();
  v30 = v29;
  (*(v82 + 8))(v10, v29);
  (*(v79 + 8))(v12, v28);
  v82 = type metadata accessor for PagingChartsView(0);
  v31 = v85;
  Binding.projectedValue.getter();
  v32 = type metadata accessor for Date();
  v101 = v28;
  v102 = v30;
  v103 = v26;
  v104 = &protocol witness table for PagingScrollTargetBehavior;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_1004DCC0C(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v35 = v78;
  v36 = v83;
  View.scrollPosition<A>(id:anchor:)();
  sub_100018144(v31, &qword_100CBFD18, &qword_100A58208);
  (*(v84 + 8))(v27, v36);
  v37 = v96;
  static ScrollIndicatorVisibility.never.getter();
  static Axis.Set.horizontal.getter();
  v101 = v36;
  v102 = v32;
  v103 = OpaqueTypeConformance2;
  v104 = v34;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v80;
  v40 = v87;
  View.scrollIndicators(_:axes:)();
  (*(v97 + 8))(v37, v98);
  (*(v90 + 8))(v35, v40);
  v41 = v1;
  v42 = v99;
  sub_1000302D8(v1 + *(v82 + 24), v99, &qword_100CB0BA8, &unk_100A40F80);
  v43 = type metadata accessor for DetailChartSelection(0);
  sub_100024D10(v42, 1, v43);
  sub_100018144(v42, &qword_100CB0BA8, &unk_100A40F80);
  v101 = v40;
  v102 = v38;
  swift_getOpaqueTypeConformance2();
  v44 = v86;
  v45 = v91;
  View.scrollDisabled(_:)();
  (*(v92 + 8))(v39, v45);
  v46 = static Alignment.topLeading.getter();
  v48 = v47;
  v49 = v88;
  v50 = v75;
  v51 = &v75[*(v88 + 36)];
  v99 = v41;
  sub_1004D4AAC(v41, v51);
  v52 = (v51 + *(sub_10022C350(&qword_100CBFE60, &qword_100A58320) + 36));
  *v52 = v46;
  v52[1] = v48;
  v53 = v50;
  (*(v93 + 32))(v50, v44, v94);
  v54 = enum case for DynamicTypeSize.accessibility1(_:);
  v55 = type metadata accessor for DynamicTypeSize();
  v56 = v95;
  (*(*(v55 - 8) + 104))(v95, v54, v55);
  sub_1004DCC0C(&qword_100CA5390, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v58 = sub_1004DE2D0();
    v59 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v60 = v67;
    v61 = v70;
    View.dynamicTypeSize<A>(_:)();
    sub_100018144(v56, &unk_100CE1680, &unk_100A450F0);
    sub_100018144(v53, &qword_100CBFE18, &qword_100A582F8);
    Solarium.init()();
    v62 = v71;
    v63 = static ViewInputPredicate.! prefix(_:)();
    __chkstk_darwin(v63);
    sub_10022C350(&qword_100CBFE78, &qword_100A58328);
    v101 = v49;
    v102 = v61;
    v103 = v58;
    v104 = v59;
    swift_getOpaqueTypeConformance2();
    v101 = &type metadata for Solarium;
    v102 = &protocol witness table for Solarium;
    swift_getOpaqueTypeConformance2();
    sub_1004DE52C();
    v64 = v69;
    v65 = v74;
    View.staticIf<A, B>(_:then:)();
    (*(v73 + 8))(v62, v65);
    return (*(v68 + 8))(v60, v64);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D48B8(uint64_t a1)
{
  v2 = type metadata accessor for PagingChartsView.HorizontalChartPages(0);
  __chkstk_darwin(v2);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(a1 + 8);
  v6 = type metadata accessor for PagingChartsView(0);
  sub_10042F370(a1 + v6[7], (v4 + 8));
  v7 = (a1 + v6[13]);
  v8 = *v7;
  v9 = *(v7 + 1);
  v16 = v8;
  v17 = v9;

  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  v10 = v15;
  v11 = *(a1 + v6[9]);
  sub_10022C350(&qword_100CBFD10, &qword_100A58200);
  Binding.wrappedValue.getter();
  *v4 = v5;
  v4[48] = v10;
  *(v4 + 7) = v11;
  Solarium.init()();
  v14 = a1;
  sub_10022C350(&qword_100CBFE30, &qword_100A58310);
  sub_1004DCC0C(&qword_100CBFE38, type metadata accessor for PagingChartsView.HorizontalChartPages, aA_44);
  sub_1004DE1E8();
  View.staticIf<A, B>(_:then:)();
  return sub_1004DCD2C(v4, type metadata accessor for PagingChartsView.HorizontalChartPages);
}

uint64_t sub_1004D4AAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49[2] = a2;
  v3 = sub_10022C350(&qword_100CBFE98, &qword_100A58340);
  __chkstk_darwin(v3 - 8);
  v5 = v49 - v4;
  v58 = type metadata accessor for DetailChartViewModel(0);
  v6 = *(v58 - 8);
  __chkstk_darwin(v58);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CBFEA0, &qword_100A765B0);
  __chkstk_darwin(v9 - 8);
  v56 = v49 - v10;
  v50 = type metadata accessor for Font.TextStyle();
  v55 = *(v50 - 8);
  __chkstk_darwin(v50);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CBFD10, &qword_100A58200);
  __chkstk_darwin(v13 - 8);
  v15 = v49 - v14;
  v16 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v16 - 8);
  v57 = v49 - v17;
  v52 = type metadata accessor for StickyChartHeadersView(0);
  __chkstk_darwin(v52);
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v49[0] = v49 - v21;
  v22 = a1[1];
  v53 = *a1;
  v54 = v22;
  v23 = type metadata accessor for PagingChartsView(0);
  sub_10042F370(a1 + v23[7], v63);
  v24 = a1 + v23[13];
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v61) = v25;
  v62 = v26;

  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  v51 = v60;
  v27 = *(a1 + v23[8]);
  sub_10022C350(&qword_100CBFD18, &qword_100A58208);
  Binding.wrappedValue.getter();
  v28 = v23[10];
  v49[1] = a1;
  sub_1000302D8(a1 + v28, v15, &qword_100CBFD10, &qword_100A58200);
  v61 = 0x3FF0000000000000;
  v29 = *(v55 + 104);
  v30 = v50;
  v29(v12, enum case for Font.TextStyle.caption(_:), v50);
  sub_10014AB54();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v61 = 0x4050000000000000;
  v31 = v30;
  v32 = v15;
  v33 = v52;
  v29(v12, enum case for Font.TextStyle.body(_:), v31);
  v34 = v57;
  sub_1001BB6FC();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v35 = v33[14];
  *&v19[v35] = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  v36 = v54;
  *&v19[v33[5]] = v53;
  *&v19[v33[6]] = v36;
  sub_10042F370(v63, &v19[v33[7]]);
  v19[v33[8]] = v51;
  *&v19[v33[9]] = v27;
  sub_1000302D8(v34, &v19[v33[10]], &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000302D8(v32, &v19[v33[12]], &qword_100CBFD10, &qword_100A58200);
  v59 = v34;

  v37 = v56;
  sub_1008DC184();
  v38 = v37;
  v39 = type metadata accessor for DetailChartsViewModel(0);
  if (sub_100024D10(v38, 1, v39) == 1)
  {
    sub_100018144(v32, &qword_100CBFD10, &qword_100A58200);
    sub_100006F14(v63);
    sub_100018144(v38, &qword_100CBFEA0, &qword_100A765B0);
    v40 = 0;
LABEL_11:
    v19[v33[11]] = v40;
    v46 = v19;
    v47 = v49[0];
    sub_1004DCF48(v46, v49[0], type metadata accessor for StickyChartHeadersView);
    sub_100018144(v34, &unk_100CB2CF0, &unk_100A2D7F0);
    v48 = Solarium.init()();
    __chkstk_darwin(v48);
    sub_10022C350(&qword_100CBFEA8, &qword_100A58378);
    sub_1004DCC0C(&qword_100CBFEB0, type metadata accessor for StickyChartHeadersView, byte_100A583D0);
    sub_1004DE7B8();
    View.staticIf<A, B>(_:then:)();
    return sub_1004DCD2C(v47, type metadata accessor for StickyChartHeadersView);
  }

  else
  {
    v55 = v32;
    v41 = *(v38 + *(v39 + 20));

    result = sub_1004DCD2C(v38, type metadata accessor for DetailChartsViewModel);
    v43 = 0;
    v44 = *(v41 + 16);
    while (1)
    {
      if (v44 == v43)
      {

        sub_100018144(v55, &qword_100CBFD10, &qword_100A58200);
        sub_100006F14(v63);
        v40 = 0;
LABEL_10:
        v34 = v57;
        goto LABEL_11;
      }

      if (v43 >= *(v41 + 16))
      {
        break;
      }

      sub_1004DCCD0(v41 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v43, v8, type metadata accessor for DetailChartViewModel);
      sub_1000302D8(&v8[*(v58 + 24)], v5, &qword_100CBFE98, &qword_100A58340);
      sub_1004DCD2C(v8, type metadata accessor for DetailChartViewModel);
      v45 = type metadata accessor for LollipopViewModel(0);
      if (sub_100024D10(v5, 1, v45) != 1)
      {

        sub_100018144(v55, &qword_100CBFD10, &qword_100A58200);
        sub_100006F14(v63);
        sub_100018144(v5, &qword_100CBFE98, &qword_100A58340);
        v40 = 1;
        goto LABEL_10;
      }

      ++v43;
      result = sub_100018144(v5, &qword_100CBFE98, &qword_100A58340);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1004D5340@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = static Animation.easeInOut.getter();
  type metadata accessor for PagingChartsView(0);
  v11 = (a5 + *(sub_10022C350(a2, a3) + 36));
  sub_10022C350(&qword_100CBFE50, &qword_100A58318);
  sub_10022C350(&qword_100CBFD10, &qword_100A58200);
  Binding.wrappedValue.getter();
  *v11 = v10;
  return sub_1004DCCD0(a1, a5, a4);
}

void *sub_1004D5400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OpacityTransition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  OpacityTransition.init()();
  (*(v5 + 16))(v7, v10, v4);
  sub_1004DCC0C(&qword_100CA3DB8, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v11 = AnyTransition.init<A>(_:)();
  (*(v5 + 8))(v10, v4);
  v12 = sub_10022C350(&qword_100CBFE20, &qword_100A58300);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  *(a2 + *(sub_10022C350(&qword_100CBFE90, &unk_100A58330) + 36)) = v11;
  v13 = static Animation.easeInOut.getter();
  type metadata accessor for PagingChartsView(0);
  v14 = (a2 + *(sub_10022C350(&qword_100CBFE78, &qword_100A58328) + 36));
  sub_10022C350(&qword_100CBFE50, &qword_100A58318);
  sub_10022C350(&qword_100CBFD10, &qword_100A58200);
  result = Binding.wrappedValue.getter();
  *v14 = v13;
  return result;
}

uint64_t sub_1004D5634()
{
  v1 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v1);
  v2 = sub_10022C350(&qword_100CC0050, &qword_100A58470);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  v8 = v0;
  static VerticalAlignment.center.getter();
  v9 = 0;
  sub_1004DCC0C(&qword_100CC0058, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10022C350(&qword_100CC0060, &qword_100A58478);
  sub_1004DEEE4();
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  sub_100006F64(&qword_100CC0078, &qword_100CC0050, &qword_100A58470, &protocol conformance descriptor for LazyHStack<A>);
  View.scrollTargetLayout(isEnabled:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1004D5858(uint64_t *a1)
{
  v2 = type metadata accessor for PagingChartsView.HorizontalChartPages(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = *a1;
  swift_getKeyPath();
  sub_1004DCCD0(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PagingChartsView.HorizontalChartPages);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1004DCF48(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PagingChartsView.HorizontalChartPages);

  sub_10022C350(&qword_100CC0080, &qword_100A584A0);
  type metadata accessor for PagingChartsView.ChartPage(0);
  sub_100006F64(&qword_100CC0088, &qword_100CC0080, &qword_100A584A0, &protocol conformance descriptor for [A]);
  sub_1004DCC0C(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1004DCC0C(&qword_100CC0070, type metadata accessor for PagingChartsView.ChartPage, byte_100A587BC);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1004D5A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1004DCCD0(a1, a3, type metadata accessor for DetailChartsViewModel);
  v6 = *(a2 + 48);
  v7 = type metadata accessor for PagingChartsView.ChartPage(0);
  sub_10042F370(a2 + 8, a3 + v7[6]);
  v8 = *(a2 + 56);
  *(a3 + v7[5]) = v6;
  *(a3 + v7[7]) = v8;
  v9 = a3 + v7[8];
  result = State.init(wrappedValue:)();
  *v9 = v11;
  *(v9 + 8) = v12;
  return result;
}

uint64_t sub_1004D5B4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v50 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for PagingChartsView.ChartPage(0);
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v51);
  v40 = sub_10022C350(&qword_100CC03D8, &qword_100A58810);
  __chkstk_darwin(v40);
  v8 = &v39 - v7;
  v45 = sub_10022C350(&qword_100CC03E0, &qword_100A58818);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v10 = &v39 - v9;
  v49 = sub_10022C350(&qword_100CC03E8, &qword_100A58820);
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v42 = &v39 - v11;
  v12 = sub_10022C350(&qword_100CC03F0, &qword_100A58828);
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v46 = &v39 - v13;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_10022C350(&qword_100CC03F8, &qword_100A58830);
  v58 = *(v2 + *(type metadata accessor for DetailChartsViewModel(0) + 20));
  v54 = v2;
  sub_1004DCCD0(v2, &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PagingChartsView.ChartPage);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v41 = v6;
  v15 = swift_allocObject();
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DCF48(v39, v15 + v14, type metadata accessor for PagingChartsView.ChartPage);

  sub_10022C350(&qword_100CC0400, &qword_100A58838);
  type metadata accessor for PagingChartsView.ChartWrapperView(0);
  sub_100006F64(&qword_100CC0408, &qword_100CC0400, &qword_100A58838, &protocol conformance descriptor for [A]);
  sub_1004DCC0C(&qword_100CC0410, type metadata accessor for PagingChartsView.ChartWrapperView, aQ_53);
  sub_1004DCC0C(&qword_100CC0418, type metadata accessor for DetailChartViewModel, aA_45);
  ForEach<>.init(_:content:)();
  v16 = static Edge.Set.horizontal.getter();
  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100472710();
  EdgeInsets.init(_all:)();
  v17 = v40;
  v18 = &v8[*(v40 + 36)];
  *v18 = v16;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  v23 = sub_1004DFEB8();
  View.containerRelativeFrame(_:alignment:)();
  sub_100018144(v8, &qword_100CC03D8, &qword_100A58810);
  v24 = v54;
  v25 = v39;
  sub_1004DCCD0(v54, v39, type metadata accessor for PagingChartsView.ChartPage);
  v26 = swift_allocObject();
  sub_1004DCF48(v25, v26 + v14, type metadata accessor for PagingChartsView.ChartPage);
  v56 = v17;
  v57 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v42;
  v29 = v45;
  View.onScrollVisibilityChange(threshold:_:)();

  (*(v43 + 8))(v10, v29);
  v30 = v50;
  static AccessibilityChildBehavior.contain.getter();
  v56 = v29;
  v57 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v46;
  v33 = v49;
  View.accessibilityElement(children:)();
  (*(v52 + 8))(v30, v53);
  (*(v44 + 8))(v28, v33);
  v34 = v24 + *(v51 + 32);
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v56) = v35;
  v57 = v36;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  v56 = v33;
  v57 = v31;
  swift_getOpaqueTypeConformance2();
  v37 = v48;
  View.accessibility(hidden:)();
  return (*(v47 + 8))(v32, v37);
}

uint64_t sub_1004D630C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10022C350(&qword_100CBFE98, &qword_100A58340);
  __chkstk_darwin(v10 - 8);
  v12 = &v28[-v11];
  v13 = type metadata accessor for DetailChartViewModel(0);
  sub_1000302D8(a1 + *(v13 + 24), v12, &qword_100CBFE98, &qword_100A58340);
  v14 = type metadata accessor for LollipopViewModel(0);
  v15 = sub_100024D10(v12, 1, v14);
  sub_100018144(v12, &qword_100CBFE98, &qword_100A58340);
  v16 = type metadata accessor for PagingChartsView.ChartPage(0);
  v17 = *(a2 + v16[5]);
  v18 = type metadata accessor for PagingChartsView.ChartWrapperView(0);
  sub_1004DCCD0(a1, a3 + v18[5], type metadata accessor for DetailChartViewModel);
  sub_10042F370(a2 + v16[6], a3 + v18[6]);
  v19 = *(a2 + v16[7]);
  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  if (v15 == 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v17;
  }

  swift_beginAccess();
  v21 = sub_100472710();
  v22 = v19 - (v21 + v21);
  v23 = (a2 + v16[8]);
  v24 = *v23;
  v25 = *(v23 + 1);
  LOBYTE(v29) = v24;
  v30 = v25;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  v26 = v28[7];
  v29 = 0x3FF0000000000000;
  (*(v7 + 104))(v9, enum case for Font.TextStyle.caption(_:), v6);
  sub_10014AB54();
  result = ScaledMetric.init(wrappedValue:relativeTo:)();
  *(a3 + v18[7]) = v20;
  *(a3 + v18[8]) = v22;
  *(a3 + v18[9]) = v26;
  return result;
}

uint64_t sub_1004D65DC(char a1, uint64_t a2)
{
  type metadata accessor for PagingChartsView.ChartPage(0);
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  return State.wrappedValue.setter();
}

uint64_t sub_1004D6654@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CC0548, &qword_100A58960);
  return sub_1004D66A4(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_1004D66A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v86 = a2;
  v76 = sub_10022C350(&qword_100CC0550, &qword_100A58968);
  __chkstk_darwin(v76);
  v75 = &v66[-v3];
  v4 = sub_10022C350(&qword_100CC01C0, &qword_100A58610);
  __chkstk_darwin(v4 - 8);
  v83 = &v66[-v5];
  v82 = type metadata accessor for ConditionDetailChartFooterViewModel(0);
  __chkstk_darwin(v82);
  v74 = &v66[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10022C350(&qword_100CC0558, &qword_100A58970);
  __chkstk_darwin(v7 - 8);
  v87 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v85 = &v66[-v10];
  v11 = sub_10022C350(&qword_100CC0560, &qword_100A58978);
  __chkstk_darwin(v11);
  v13 = &v66[-v12];
  v71 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v71);
  v70 = &v66[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v69 = &v66[-v16];
  v77 = sub_10022C350(&qword_100CC0568, &qword_100A58980);
  __chkstk_darwin(v77);
  v18 = &v66[-v17];
  v19 = sub_10022C350(&qword_100CC0570, &qword_100A58988);
  __chkstk_darwin(v19 - 8);
  v84 = &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v88 = &v66[-v22];
  v23 = type metadata accessor for PagingChartsView.ChartWrapperView(0);
  v24 = a1 + v23[5];
  v25 = *(type metadata accessor for ConditionDetailChartHeaderViewModel(0) + 20);
  v89 = v24;
  sub_100926274(*(v24 + v25), v94);
  sub_1000161C0(v94, v94[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.preferredHeight.getter();
  sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
  ScaledMetric.wrappedValue.getter();
  sub_100006F14(v94);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v80 = v96;
  v81 = v94[5];
  v78 = v99;
  v79 = v98;
  v93 = 1;
  v92 = v95;
  v91 = v97;
  v26 = *(a1 + v23[9]);
  v72 = v23;
  v73 = a1;
  if (v26 == 1)
  {
    v27 = type metadata accessor for DetailChart(0);
    sub_1004DCCD0(v89, v18 + v27[7], type metadata accessor for DetailChartViewModel);
    v28 = v23[6];
    v67 = *(a1 + v23[7]);
    sub_10042F370(a1 + v28, v18 + v27[10]);
    v29 = *(a1 + v23[8]);
    *v18 = swift_getKeyPath();
    sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
    swift_storeEnumTagMultiPayload();
    v30 = v27[5];
    *(v18 + v30) = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0, &qword_100A32330);
    swift_storeEnumTagMultiPayload();
    v31 = v18 + v27[6];
    *v31 = swift_getKeyPath();
    v31[8] = 0;
    v68 = v11;
    v32 = type metadata accessor for Date();
    v33 = v69;
    sub_10001B350(v69, 1, 1, v32);
    sub_1000302D8(v33, v70, &unk_100CB2CF0, &unk_100A2D7F0);
    State.init(wrappedValue:)();
    sub_100018144(v33, &unk_100CB2CF0, &unk_100A2D7F0);
    *(v18 + v27[8]) = v67;
    *(v18 + v27[11]) = v29;
    Hasher.init()();
    v34 = type metadata accessor for DetailChartViewModel(0);
    String.hash(into:)();
    type metadata accessor for ChartViewModel(0);
    sub_1004DCC0C(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    *(v18 + *(v77 + 52)) = Hasher.finalize()();
    sub_1000302D8(v18, v13, &qword_100CC0568, &qword_100A58980);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CBB278, &unk_100A58990);
    sub_100006F64(&qword_100CC0578, &qword_100CC0568, &qword_100A58980, &protocol conformance descriptor for IDView<A, B>);
    sub_10045AF30();
    v35 = v88;
    _ConditionalContent<>.init(storage:)();
    sub_100018144(v18, &qword_100CC0568, &qword_100A58980);
  }

  else
  {
    v36 = static Color.clear.getter();
    v34 = type metadata accessor for DetailChartViewModel(0);
    type metadata accessor for ChartViewModel(0);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v90[6] = v100;
    *&v90[22] = v101;
    *&v90[38] = v102;
    v37 = *&v90[16];
    *(v13 + 10) = *v90;
    *v13 = v36;
    *(v13 + 4) = 256;
    *(v13 + 26) = v37;
    *(v13 + 42) = *&v90[32];
    *(v13 + 7) = *&v90[46];
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CBB278, &unk_100A58990);
    sub_100006F64(&qword_100CC0578, &qword_100CC0568, &qword_100A58980, &protocol conformance descriptor for IDView<A, B>);
    sub_10045AF30();
    v35 = v88;
    _ConditionalContent<>.init(storage:)();
  }

  type metadata accessor for DetailChartViewModel(0);
  v38 = v83;
  sub_1000302D8(v89 + *(v34 + 28), v83, &qword_100CC01C0, &qword_100A58610);
  if (sub_100024D10(v38, 1, v82) == 1)
  {
    sub_100018144(v38, &qword_100CC01C0, &qword_100A58610);
    v39 = 1;
    v40 = v85;
  }

  else
  {
    v41 = v74;
    sub_1004DCF48(v38, v74, type metadata accessor for ConditionDetailChartFooterViewModel);
    v42 = v75;
    sub_1004DCCD0(v41, v75, type metadata accessor for ConditionDetailChartFooterViewModel);
    v43 = v72[6];
    v44 = type metadata accessor for ConditionDetailChartFooterView(0);
    sub_10042F370(v73 + v43, &v42[*(v44 + 20)]);
    v45 = static Edge.Set.horizontal.getter();
    if (qword_100CA20B8 != -1)
    {
      swift_once();
    }

    v46 = swift_beginAccess();
    sub_100472804(v46);
    swift_endAccess();
    EdgeInsets.init(_all:)();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_1004DCD2C(v41, type metadata accessor for ConditionDetailChartFooterViewModel);
    v55 = &v42[*(sub_10022C350(&qword_100CC01B8, &qword_100A58608) + 36)];
    *v55 = v45;
    *(v55 + 1) = v48;
    *(v55 + 2) = v50;
    *(v55 + 3) = v52;
    *(v55 + 4) = v54;
    v55[40] = 0;
    v40 = v85;
    sub_10011C0F0(v42, v85, &qword_100CC0550, &qword_100A58968);
    v39 = 0;
  }

  sub_10001B350(v40, v39, 1, v76);
  v56 = v93;
  v57 = v92;
  v58 = v91;
  v59 = v84;
  sub_1000302D8(v35, v84, &qword_100CC0570, &qword_100A58988);
  v60 = v87;
  sub_1000302D8(v40, v87, &qword_100CC0558, &qword_100A58970);
  v61 = v86;
  *v86 = 0;
  *(v61 + 8) = v56;
  v62 = v80;
  v61[2] = v81;
  *(v61 + 24) = v57;
  v61[4] = v62;
  *(v61 + 40) = v58;
  v63 = v78;
  v61[6] = v79;
  v61[7] = v63;
  v64 = sub_10022C350(&qword_100CC0580, &qword_100A589A0);
  sub_1000302D8(v59, v61 + *(v64 + 48), &qword_100CC0570, &qword_100A58988);
  sub_1000302D8(v60, v61 + *(v64 + 64), &qword_100CC0558, &qword_100A58970);
  sub_100018144(v40, &qword_100CC0558, &qword_100A58970);
  sub_100018144(v88, &qword_100CC0570, &qword_100A58988);
  sub_100018144(v60, &qword_100CC0558, &qword_100A58970);
  return sub_100018144(v59, &qword_100CC0570, &qword_100A58988);
}

uint64_t sub_1004D71D0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v23 - v15;
  v25 = v4;
  (*(v4 + 16))(&v23 - v15, a1, v3, v14);
  sub_10001B350(v16, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_1000302D8(v16, v9, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000302D8(v26, &v9[v17], &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(v9, 1, v3) != 1)
  {
    sub_1000302D8(v9, v12, &unk_100CB2CF0, &unk_100A2D7F0);
    if (sub_100024D10(&v9[v17], 1, v3) != 1)
    {
      v19 = v24;
      v20 = v25;
      (*(v25 + 32))(v24, &v9[v17], v3);
      sub_1004DCC0C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v20 + 8);
      v21(v19, v3);
      sub_100018144(v16, &unk_100CB2CF0, &unk_100A2D7F0);
      v21(v12, v3);
      sub_100018144(v9, &unk_100CB2CF0, &unk_100A2D7F0);
      return v18 & 1;
    }

    sub_100018144(v16, &unk_100CB2CF0, &unk_100A2D7F0);
    (*(v25 + 8))(v12, v3);
    goto LABEL_6;
  }

  sub_100018144(v16, &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_100018144(v9, qword_100CA4F80, &unk_100A580C0);
    v18 = 0;
    return v18 & 1;
  }

  sub_100018144(v9, &unk_100CB2CF0, &unk_100A2D7F0);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1004D7580()
{
  v1 = type metadata accessor for StickyChartHeadersView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_1004DCCD0(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickyChartHeadersView);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_1004DCF48(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for StickyChartHeadersView);
  sub_1004DCCD0(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickyChartHeadersView);
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_1004DCF48(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5, type metadata accessor for StickyChartHeadersView);
  Binding.init(get:set:)();
  return v10[1];
}

uint64_t sub_1004D7750@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for DetailCondition();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StickyChartHeadersView(0);
  sub_10022C350(&qword_100CBFD10, &qword_100A58200);
  Binding.wrappedValue.getter();
  result = sub_1004D77FC(v4);
  *a1 = result;
  return result;
}

uint64_t sub_1004D77FC(uint64_t a1)
{
  v2 = type metadata accessor for DetailCondition();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DetailCondition.conditions(_:))
  {
    goto LABEL_2;
  }

  if (v7 == enum case for DetailCondition.humidity(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  else if (v7 == enum case for DetailCondition.pressure(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 1;
  }

  else if (v7 == enum case for DetailCondition.precipitationTotal(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 2;
  }

  else if (v7 == enum case for DetailCondition.uvIndex(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 4;
  }

  else if (v7 == enum case for DetailCondition.visibility(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 5;
  }

  else
  {
    if (v7 != enum case for DetailCondition.wind(_:))
    {
      sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100A2C3F0;
      v11 = DetailCondition.description.getter();
      v13 = v12;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_100035744();
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      simulateCrash(_:_:)("Encountered an unrecognized DetailCondition: %@", 47, 2, v10);

LABEL_2:
      v8 = *(v3 + 8);
      v8(a1, v2);
      v8(v6, v2);
      return 3;
    }

    (*(v3 + 8))(a1, v2);
    return 6;
  }
}

uint64_t sub_1004D7AE0(_BYTE *a1)
{
  v2 = type metadata accessor for DetailCondition();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = __chkstk_darwin(v6);
  v9 = &v14 - v8;
  switch(*a1)
  {
    case 1:
      v10 = &enum case for DetailCondition.pressure(_:);
      break;
    case 2:
      v10 = &enum case for DetailCondition.precipitationTotal(_:);
      break;
    case 3:
      v11 = enum case for TemperatureChartKind.actual(_:);
      v12 = type metadata accessor for TemperatureChartKind();
      (*(*(v12 - 8) + 104))(v9, v11, v12);
      v10 = &enum case for DetailCondition.conditions(_:);
      break;
    case 4:
      v10 = &enum case for DetailCondition.uvIndex(_:);
      break;
    case 5:
      v10 = &enum case for DetailCondition.visibility(_:);
      break;
    case 6:
      v10 = &enum case for DetailCondition.wind(_:);
      break;
    default:
      v10 = &enum case for DetailCondition.humidity(_:);
      break;
  }

  (*(v3 + 104))(v9, *v10, v2, v7);
  type metadata accessor for StickyChartHeadersView(0);
  (*(v3 + 16))(v5, v9, v2);
  sub_10022C350(&qword_100CBFD10, &qword_100A58200);
  Binding.wrappedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

double sub_1004D7CF4()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  type metadata accessor for StickyChartHeadersView(0);
  sub_10009D114();
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  sub_10001B350(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1000302D8(v15, v6, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v12, &v6[v16], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v6, 1, v0) == 1)
  {
    sub_100018144(v12, &qword_100CA6028, &qword_100A40610);
    sub_100018144(v15, &qword_100CA6028, &qword_100A40610);
    if (sub_100024D10(&v6[v16], 1, v0) == 1)
    {
      sub_100018144(v6, &qword_100CA6028, &qword_100A40610);
LABEL_11:
      if (qword_100CA20B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      return sub_100472710();
    }

    goto LABEL_6;
  }

  sub_1000302D8(v6, v9, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v6[v16], 1, v0) == 1)
  {
    sub_100018144(v12, &qword_100CA6028, &qword_100A40610);
    sub_100018144(v15, &qword_100CA6028, &qword_100A40610);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_100018144(v6, &qword_100CA64E8, &unk_100A46060);
    goto LABEL_7;
  }

  v18 = &v6[v16];
  v19 = v22;
  (*(v1 + 32))(v22, v18, v0);
  sub_1004DCC0C(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v1 + 8);
  v21(v19, v0);
  sub_100018144(v12, &qword_100CA6028, &qword_100A40610);
  sub_100018144(v15, &qword_100CA6028, &qword_100A40610);
  v21(v9, v0);
  sub_100018144(v6, &qword_100CA6028, &qword_100A40610);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_100472710() + 4.0;
}

uint64_t sub_1004D81B4(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v26 = v4;
  (*(v4 + 16))(&v24 - v15, a1, v3, v14);
  sub_10001B350(v16, 0, 1, v3);
  v17 = *(type metadata accessor for StickyChartHeadersView(0) + 40);
  v18 = *(v7 + 56);
  sub_1000302D8(v16, v9, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000302D8(v27 + v17, &v9[v18], &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(v9, 1, v3) != 1)
  {
    sub_1000302D8(v9, v12, &unk_100CB2CF0, &unk_100A2D7F0);
    if (sub_100024D10(&v9[v18], 1, v3) != 1)
    {
      v20 = v25;
      v21 = v26;
      (*(v26 + 32))(v25, &v9[v18], v3);
      sub_1004DCC0C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v21 + 8);
      v22(v20, v3);
      sub_100018144(v16, &unk_100CB2CF0, &unk_100A2D7F0);
      v22(v12, v3);
      sub_100018144(v9, &unk_100CB2CF0, &unk_100A2D7F0);
      return v19 & 1;
    }

    sub_100018144(v16, &unk_100CB2CF0, &unk_100A2D7F0);
    (*(v26 + 8))(v12, v3);
    goto LABEL_6;
  }

  sub_100018144(v16, &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_100018144(v9, qword_100CA4F80, &unk_100A580C0);
    v19 = 0;
    return v19 & 1;
  }

  sub_100018144(v9, &unk_100CB2CF0, &unk_100A2D7F0);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1004D8580()
{
  v1 = sub_10022C350(&qword_100CC0090, &qword_100A584A8);
  __chkstk_darwin(v1);
  v3 = &v6[-v2];
  *v3 = static HorizontalAlignment.leading.getter();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_10022C350(&qword_100CC0098, &qword_100A584B0);
  sub_1004D86F8(v0, &v3[*(v4 + 44)]);
  Solarium.init()();
  v7 = v0;
  sub_10022C350(&qword_100CC00A0, &qword_100A584B8);
  sub_100006F64(&qword_100CC00A8, &qword_100CC0090, &qword_100A584A8, &protocol conformance descriptor for VStack<A>);
  sub_1004DEFEC();
  View.staticIf<A, B>(_:then:)();
  return sub_100018144(v3, &qword_100CC0090, &qword_100A584A8);
}

uint64_t sub_1004D86F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for StickyChartHeadersView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10022C350(&qword_100CC0190, &qword_100A585B8);
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v9 = sub_10022C350(&qword_100CBFEA0, &qword_100A765B0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  v12 = type metadata accessor for DetailChartsViewModel(0);
  __chkstk_darwin(v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_1008DC184();
  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_100018144(v11, &qword_100CBFEA0, &qword_100A765B0);
    v15 = 1;
    v16 = v25;
  }

  else
  {
    sub_1004DCF48(v11, v14, type metadata accessor for DetailChartsViewModel);
    sub_1002EE2B8();
    v27 = v17;
    v23[1] = swift_getKeyPath();
    sub_1004DCCD0(a1, v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickyChartHeadersView);
    v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v19 = swift_allocObject();
    sub_1004DCF48(v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for StickyChartHeadersView);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1004DF934;
    *(v20 + 24) = v19;
    sub_10022C350(&qword_100CC0198, &qword_100A585F0);
    sub_10022C350(&qword_100CC01A0, &qword_100A585F8);
    sub_100006F64(&qword_100CC01A8, &qword_100CC0198, &qword_100A585F0, &protocol conformance descriptor for [A]);
    sub_100006F64(&qword_100CC01B0, &qword_100CC01A0, &qword_100A585F8, &protocol conformance descriptor for TupleView<A>);
    ForEach<>.init(_:id:content:)();
    sub_1004DCD2C(v14, type metadata accessor for DetailChartsViewModel);
    v21 = v25;
    (*(v24 + 32))(v25, v8, v6);
    v15 = 0;
    v16 = v21;
  }

  return sub_10001B350(v16, v15, 1, v6);
}

void *sub_1004D8B34@<X0>(void *a1@<X8>)
{
  result = sub_1009196E0(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1004D8B70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a1;
  v89 = a4;
  v88 = sub_10022C350(&qword_100CC01B8, &qword_100A58608);
  __chkstk_darwin(v88);
  v78 = &v76 - v6;
  v7 = sub_10022C350(&qword_100CC01C0, &qword_100A58610);
  __chkstk_darwin(v7 - 8);
  v9 = &v76 - v8;
  v83 = type metadata accessor for ConditionDetailChartFooterViewModel(0);
  __chkstk_darwin(v83);
  v77 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CC01C8, &qword_100A58618);
  __chkstk_darwin(v11 - 8);
  v87 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v86 = &v76 - v14;
  v15 = sub_10022C350(&qword_100CC01D0, &qword_100A58620);
  __chkstk_darwin(v15 - 8);
  v17 = (&v76 - v16);
  v18 = sub_10022C350(&qword_100CC01D8, &qword_100A58628);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v76 - v20;
  v22 = sub_10022C350(&qword_100CC01E0, &qword_100A58630);
  __chkstk_darwin(v22);
  v85 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v76 - v25;
  __chkstk_darwin(v27);
  v90 = &v76 - v28;
  *v17 = static Alignment.topLeading.getter();
  v17[1] = v29;
  v30 = sub_10022C350(&qword_100CC01E8, &qword_100A58638);
  sub_1004DAAC0(a3, a2, v17 + *(v30 + 44));
  v31 = *(type metadata accessor for ConditionDetailChartHeaderViewModel(0) + 20);
  v84 = a2;
  sub_100926274(*(a2 + v31), &v97);
  sub_1000161C0(&v97, v100);
  v32 = a3;
  dispatch thunk of ConditionDetailChartHeaderStyleType.preferredHeight.getter();
  sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
  ScaledMetric.wrappedValue.getter();
  sub_100006F14(&v97);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10011C0F0(v17, v21, &qword_100CC01D0, &qword_100A58620);
  v33 = &v21[*(v19 + 44)];
  v34 = v95;
  *v33 = v94;
  *(v33 + 1) = v34;
  *(v33 + 2) = v96;
  v35 = static Edge.Set.trailing.getter();
  if (!v82 && (*(a3 + *(type metadata accessor for StickyChartHeadersView(0) + 44)) & 1) == 0)
  {
    sub_10022C350(&qword_100CB2AC8, &unk_100A45020);
    ScaledMetric.wrappedValue.getter();
  }

  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_10011C0F0(v21, v26, &qword_100CC01D8, &qword_100A58628);
  v44 = &v26[*(v22 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  sub_10011C0F0(v26, v90, &qword_100CC01E0, &qword_100A58630);
  v45 = type metadata accessor for DetailChartViewModel(0);
  v46 = v84;
  type metadata accessor for ChartViewModel(0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v82 = v97;
  v81 = v99;
  v80 = v101;
  v79 = v102;
  v93 = 1;
  v92 = v98;
  v91 = v100;
  sub_1000302D8(v46 + *(v45 + 28), v9, &qword_100CC01C0, &qword_100A58610);
  if (sub_100024D10(v9, 1, v83) == 1)
  {
    sub_100018144(v9, &qword_100CC01C0, &qword_100A58610);
    v47 = 1;
    v48 = v88;
    v49 = v86;
  }

  else
  {
    v50 = v77;
    sub_1004DCF48(v9, v77, type metadata accessor for ConditionDetailChartFooterViewModel);
    v51 = v78;
    sub_1004DCCD0(v50, v78, type metadata accessor for ConditionDetailChartFooterViewModel);
    v52 = *(type metadata accessor for StickyChartHeadersView(0) + 28);
    v53 = type metadata accessor for ConditionDetailChartFooterView(0);
    sub_10042F370(v32 + v52, v51 + *(v53 + 20));
    v54 = static Edge.Set.horizontal.getter();
    if (qword_100CA20B8 != -1)
    {
      swift_once();
    }

    v55 = swift_beginAccess();
    sub_100472804(v55);
    swift_endAccess();
    EdgeInsets.init(_all:)();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_1004DCD2C(v50, type metadata accessor for ConditionDetailChartFooterViewModel);
    v48 = v88;
    v64 = v51 + *(v88 + 36);
    *v64 = v54;
    *(v64 + 8) = v57;
    *(v64 + 16) = v59;
    *(v64 + 24) = v61;
    *(v64 + 32) = v63;
    *(v64 + 40) = 0;
    v49 = v86;
    sub_10011C0F0(v51, v86, &qword_100CC01B8, &qword_100A58608);
    v47 = 0;
  }

  sub_10001B350(v49, v47, 1, v48);
  v65 = v90;
  v66 = v85;
  sub_1000302D8(v90, v85, &qword_100CC01E0, &qword_100A58630);
  v67 = v93;
  v68 = v92;
  v69 = v91;
  v70 = v87;
  sub_1000302D8(v49, v87, &qword_100CC01C8, &qword_100A58618);
  v71 = v89;
  sub_1000302D8(v66, v89, &qword_100CC01E0, &qword_100A58630);
  v72 = sub_10022C350(&qword_100CC01F0, &qword_100A58640);
  v73 = v71 + *(v72 + 48);
  *v73 = 0;
  *(v73 + 8) = v67;
  *(v73 + 16) = v82;
  *(v73 + 24) = v68;
  *(v73 + 32) = v81;
  *(v73 + 40) = v69;
  v74 = v79;
  *(v73 + 48) = v80;
  *(v73 + 56) = v74;
  sub_1000302D8(v70, v71 + *(v72 + 64), &qword_100CC01C8, &qword_100A58618);
  sub_100018144(v49, &qword_100CC01C8, &qword_100A58618);
  sub_100018144(v65, &qword_100CC01E0, &qword_100A58630);
  sub_100018144(v70, &qword_100CC01C8, &qword_100A58618);
  return sub_100018144(v66, &qword_100CC01E0, &qword_100A58630);
}

uint64_t sub_1004D941C(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = sub_10022C350(&qword_100CABAB8, &qword_100A58600);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1004D9488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StickyChartHeadersView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = static Alignment.topTrailing.getter();
  v11 = v10;
  sub_1004DCCD0(a2, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickyChartHeadersView);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_1004DCF48(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for StickyChartHeadersView);
  sub_1000302D8(a1, a3, &qword_100CC0090, &qword_100A584A8);
  result = sub_10022C350(&qword_100CC00A0, &qword_100A584B8);
  v15 = (a3 + *(result + 36));
  *v15 = sub_1004DF0D0;
  v15[1] = v13;
  v15[2] = v9;
  v15[3] = v11;
  return result;
}

uint64_t sub_1004D95FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = type metadata accessor for StickyChartHeadersView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *a1;
  sub_1004DCCD0(a2, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickyChartHeadersView);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1004DCF48(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for StickyChartHeadersView);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  *a3 = sub_1004DF138;
  a3[1] = v11;
}

uint64_t sub_1004D973C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_10022C350(&qword_100CC00C8, &qword_100A584C8);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  if (*(a2 + *(type metadata accessor for StickyChartHeadersView(0) + 44)))
  {

    return sub_10001B350(a4, 1, 1, v7);
  }

  else
  {
    *v9 = static VerticalAlignment.center.getter();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v11 = sub_10022C350(&qword_100CC00D0, &qword_100A584D0);
    sub_1004D9888(a3, a2, &v9[*(v11 + 44)]);
    sub_10011C0F0(v9, a4, &qword_100CC00C8, &qword_100A584C8);
    return sub_10001B350(a4, 0, 1, v7);
  }
}

uint64_t sub_1004D9888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CC00D8, &qword_100A584D8);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v32 = sub_10022C350(&qword_100CC00E0, &qword_100A584E0);
  __chkstk_darwin(v32);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  if (a1)
  {
    type metadata accessor for CGRect(0);

    GeometryProxy.subscript.getter();
    CGRectGetHeight(v33);
  }

  sub_1004D9BF0(v8);
  v17 = &v8[*(sub_10022C350(&qword_100CC00E8, &qword_100A584E8) + 52)];
  *v17 = 0xD000000000000017;
  *(v17 + 1) = 0x8000000100ACFEE0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v8[*(sub_10022C350(&qword_100CC00F0, &qword_100A584F0) + 36)];
  size = v33.size;
  *v18 = v33.origin;
  *(v18 + 1) = size;
  *(v18 + 2) = v34;
  v20 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v22 = &v8[*(sub_10022C350(&qword_100CC00F8, &qword_100A58528) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  LOBYTE(KeyPath) = static Edge.Set.trailing.getter();
  sub_1004D7CF4();
  EdgeInsets.init(_all:)();
  v23 = &v8[*(v6 + 36)];
  *v23 = KeyPath;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  if (*(a2 + *(type metadata accessor for StickyChartHeadersView(0) + 44)))
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 1.0;
  }

  sub_10011C0F0(v8, v13, &qword_100CC00D8, &qword_100A584D8);
  *&v13[*(v32 + 36)] = v28;
  sub_10011C0F0(v13, v16, &qword_100CC00E0, &qword_100A584E0);
  sub_1000302D8(v16, v10, &qword_100CC00E0, &qword_100A584E0);
  *a3 = 0;
  *(a3 + 8) = 1;
  v29 = sub_10022C350(&qword_100CC0100, &unk_100A58530);
  sub_1000302D8(v10, a3 + *(v29 + 48), &qword_100CC00E0, &qword_100A584E0);
  sub_100018144(v16, &qword_100CC00E0, &qword_100A584E0);
  return sub_100018144(v10, &qword_100CC00E0, &qword_100A584E0);
}

uint64_t sub_1004D9BF0@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = type metadata accessor for DetailCondition();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v49 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for BorderlessButtonMenuStyle();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10022C350(&qword_100CC0108, &qword_100A58540);
  __chkstk_darwin(v41);
  v7 = v40 - v6;
  v8 = sub_10022C350(&qword_100CC0110, &qword_100A58548);
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  __chkstk_darwin(v8);
  v42 = v40 - v10;
  v48 = sub_10022C350(&qword_100CC0118, &qword_100A58550);
  __chkstk_darwin(v48);
  v43 = v40 - v11;
  v54 = v1;
  v53 = v1;
  v40[0] = v1;
  type metadata accessor for ChartHeaderMenuLabel(0);
  sub_10022C350(&qword_100CC0120, &qword_100A58558);
  sub_1004DCC0C(&qword_100CC0128, type metadata accessor for ChartHeaderMenuLabel, byte_100A5876C);
  v12 = sub_10022E824(&qword_100CC0130, &qword_100A58560);
  v13 = type metadata accessor for InlinePickerStyle();
  v14 = sub_100006F64(&qword_100CC0138, &qword_100CC0130, &qword_100A58560, &protocol conformance descriptor for Picker<A, B, C>);
  v55 = v12;
  v56 = v13;
  v57 = v14;
  v58 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  Menu.init(content:label:)();
  v15 = static Animation.default.getter();
  v40[1] = *(type metadata accessor for StickyChartHeadersView(0) + 48);
  v16 = v41;
  v17 = (v7 + *(v41 + 36));
  sub_10022C350(&qword_100CBFE50, &qword_100A58318);
  sub_10022C350(&qword_100CBFD10, &qword_100A58200);
  Binding.wrappedValue.getter();
  *v17 = v15;
  BorderlessButtonMenuStyle.init()();
  v18 = sub_1004DF208();
  v19 = sub_1004DCC0C(&qword_100CC0158, &type metadata accessor for BorderlessButtonMenuStyle, &protocol conformance descriptor for BorderlessButtonMenuStyle);
  v20 = v42;
  v21 = v16;
  v22 = v44;
  View.menuStyle<A>(_:)();
  v23 = v22;
  (*(v45 + 8))(v5, v22);
  sub_100018144(v7, &qword_100CC0108, &qword_100A58540);
  v24 = LocalizedStringKey.init(stringLiteral:)();
  v28 = Text.init(_:tableName:bundle:comment:)(v24, v26, v25 & 1, v27, 0, 0, 0, "Accessibility label for the popup button that presents the weather chart condition picker", 89, 2);
  v30 = v29;
  LOBYTE(v7) = v31;
  v55 = v21;
  v56 = v23;
  v57 = v18;
  v58 = v19;
  swift_getOpaqueTypeConformance2();
  v32 = v43;
  v33 = v46;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v28, v30, v7 & 1);

  (*(v47 + 8))(v20, v33);
  v34 = v49;
  Binding.wrappedValue.getter();
  v35 = v34;
  v36 = DetailCondition.title.getter();
  v38 = v37;
  (*(v50 + 8))(v35, v51);
  v55 = v36;
  v56 = v38;
  sub_10002D5A4();
  ModifiedContent<>.accessibilityValue<A>(_:)();

  return sub_100018144(v32, &qword_100CC0118, &qword_100A58550);
}

uint64_t sub_1004DA24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = type metadata accessor for InlinePickerStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CC0130, &qword_100A58560);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - v9;
  v25 = sub_1004D7580();
  v26 = v11;
  v27 = v12;
  v13 = [objc_opt_self() mainBundle];
  v28._object = 0x8000000100ACFF80;
  v14._countAndFlagsBits = 0x6F697469646E6F43;
  v15._object = 0x8000000100ACFF60;
  v28._countAndFlagsBits = 0xD000000000000033;
  v15._countAndFlagsBits = 0xD00000000000001CLL;
  v14._object = 0xE90000000000006ELL;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v13, v14, v28);

  v22 = v16;
  sub_10002D5A4();
  v22._countAndFlagsBits = Text.init<A>(_:)();
  v22._object = v17;
  v23 = v18 & 1;
  v24 = v19;
  v21[4] = a1;
  sub_10022C350(&qword_100CC0160, &qword_100A58570);
  sub_1004DC960();
  sub_1004DF2F4();
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  sub_100006F64(&qword_100CC0138, &qword_100CC0130, &qword_100A58560, &protocol conformance descriptor for Picker<A, B, C>);
  View.pickerStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1004DA55C(uint64_t a1)
{
  type metadata accessor for StickyChartHeadersView(0);
  swift_getKeyPath();

  sub_10022C350(&qword_100CC0178, &qword_100A585A8);
  sub_10022C350(&qword_100CC0180, &qword_100A585B0);
  sub_100006F64(&qword_100CC0188, &qword_100CC0178, &qword_100A585A8, &protocol conformance descriptor for [A]);
  sub_1004DC960();
  type metadata accessor for ConditionPickerLabel(255);
  sub_1004DCC0C(&qword_100CC0170, type metadata accessor for ConditionPickerLabel, aI4);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1004DA6E4()
{
  v1 = type metadata accessor for DetailCondition();
  v2 = __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v0, v2);
  return sub_1004D77FC(v4);
}

uint64_t sub_1004DA79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetailCondition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConditionPickerLabel(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for DetailChartConditionInfo(0) + 20);
  v12 = *(v5 + 16);
  v12(v10, a1 + v11, v4);
  v12(v7, a1 + v11, v4);
  LOBYTE(a1) = sub_1004D77FC(v7);
  sub_1004DCF48(v10, a2, type metadata accessor for ConditionPickerLabel);
  result = sub_10022C350(&qword_100CA2CF8, &qword_100A2C440);
  v14 = (a2 + *(result + 36));
  *v14 = a1;
  v14[1] = 1;
  return result;
}

uint64_t sub_1004DA92C()
{
  v1 = type metadata accessor for Font.TextStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StickyChartHeadersView(0);
  type metadata accessor for ChartHeaderMenuLabel(0);
  sub_10022C350(&qword_100CBFD10, &qword_100A58200);
  Binding.wrappedValue.getter();
  v9 = 0x4050000000000000;
  v5 = enum case for Font.TextStyle.body(_:);
  v6 = *(v2 + 104);
  v6(v4, enum case for Font.TextStyle.body(_:), v1);
  sub_1001BB6FC();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v9 = 0x4041000000000000;
  v6(v4, v5, v1);
  return ScaledMetric.init(wrappedValue:relativeTo:)();
}

uint64_t sub_1004DAAC0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v55 = a3;
  v4 = sub_10022C350(&qword_100CC01F8, &qword_100A58648);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - v6;
  v8 = sub_10022C350(&qword_100CC0200, &qword_100A58650);
  __chkstk_darwin(v8);
  v10 = v46 - v9;
  v49 = type metadata accessor for LollipopDetailView(0);
  __chkstk_darwin(v49);
  v48 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10022C350(&qword_100CC0208, &qword_100A58658);
  __chkstk_darwin(v50);
  v52 = v46 - v12;
  v54 = sub_10022C350(&qword_100CC0210, &qword_100A58660);
  __chkstk_darwin(v54);
  v51 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v53 = v46 - v15;
  v16 = sub_10022C350(&qword_100CBFE98, &qword_100A58340);
  __chkstk_darwin(v16 - 8);
  v18 = v46 - v17;
  v19 = type metadata accessor for LollipopViewModel(0);
  __chkstk_darwin(v19);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for StickyChartHeadersView(0) + 32)))
  {
    goto LABEL_4;
  }

  v46[1] = a1;
  v46[2] = v8;
  v47 = v4;
  v22 = type metadata accessor for DetailChartViewModel(0);
  v23 = v56;
  sub_1000302D8(v56 + *(v22 + 24), v18, &qword_100CBFE98, &qword_100A58340);
  if (sub_100024D10(v18, 1, v19) == 1)
  {
    sub_100018144(v18, &qword_100CBFE98, &qword_100A58340);
    v4 = v47;
LABEL_4:
    sub_1004DB398(v56);
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    v56 = sub_1004DF9C0();
    v24 = sub_10022E824(&qword_100CC0228, &qword_100A58668);
    v25 = sub_10022E824(&unk_100CE1680, &unk_100A450F0);
    v26 = sub_100006F64(&qword_100CC0230, &qword_100CC0228, &qword_100A58668, &protocol conformance descriptor for VStack<A>);
    v27 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
    __src[0] = v24;
    __src[1] = v25;
    __src[2] = v26;
    __src[3] = v27;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v7, v4);
  }

  v29 = v23;
  sub_1004DCF48(v18, v21, type metadata accessor for LollipopViewModel);
  v30 = v48;
  sub_1004DCCD0(&v21[*(v19 + 28)], v48, type metadata accessor for LollipopDetailViewModel);
  v46[0] = v21;
  sub_1004DCC0C(&qword_100CBBA60, type metadata accessor for LollipopDetailView, aN_4);
  v31 = v52;
  View.offsetXWithinBounds(_:)();
  sub_1004DCD2C(v30, type metadata accessor for LollipopDetailView);
  v32 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v33 = v31 + *(v50 + 36);
  *v33 = v32;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35;
  *(v33 + 24) = v36;
  *(v33 + 32) = v37;
  *(v33 + 40) = 0;
  v38 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  sub_100926274(*(v29 + *(v38 + 20)), __src);
  sub_1000161C0(__src, __src[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.preferredHeight.getter();
  sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
  ScaledMetric.wrappedValue.getter();
  sub_100006F14(__src);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v39 = v51;
  sub_10011C0F0(v31, v51, &qword_100CC0208, &qword_100A58658);
  memcpy((v39 + *(v54 + 36)), __src, 0x70uLL);
  v40 = v39;
  v41 = v53;
  sub_10011C0F0(v40, v53, &qword_100CC0210, &qword_100A58660);
  sub_1000302D8(v41, v10, &qword_100CC0210, &qword_100A58660);
  swift_storeEnumTagMultiPayload();
  sub_1004DF9C0();
  v42 = sub_10022E824(&qword_100CC0228, &qword_100A58668);
  v43 = sub_10022E824(&unk_100CE1680, &unk_100A450F0);
  v44 = sub_100006F64(&qword_100CC0230, &qword_100CC0228, &qword_100A58668, &protocol conformance descriptor for VStack<A>);
  v45 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
  v57 = v42;
  v58 = v43;
  v59 = v44;
  v60 = v45;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  sub_100018144(v41, &qword_100CC0210, &qword_100A58660);
  return sub_1004DCD2C(v46[0], type metadata accessor for LollipopViewModel);
}

uint64_t sub_1004DB398(uint64_t a1)
{
  v3 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  __chkstk_darwin(v3);
  v5 = &v32 - v4;
  v6 = sub_10022C350(&qword_100CC0228, &qword_100A58668);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = &v8[*(sub_10022C350(&qword_100CC0238, &qword_100A58670) + 44)];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_10022C350(&qword_100CC0240, &qword_100A58678);
  sub_1004DB6F0(a1, v1, &v9[*(v10 + 44)]);
  LOBYTE(a1) = static Edge.Set.leading.getter();
  type metadata accessor for StickyChartHeadersView(0);
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = &v9[*(sub_10022C350(&qword_100CC0248, &qword_100A58680) + 36)];
  *v19 = a1;
  *(v19 + 1) = v12;
  *(v19 + 2) = v14;
  *(v19 + 3) = v16;
  *(v19 + 4) = v18;
  v19[40] = 0;
  LOBYTE(a1) = static Edge.Set.trailing.getter();
  sub_1004D7CF4();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v9[*(sub_10022C350(&qword_100CC0250, &qword_100A58688) + 36)];
  *v28 = a1;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = enum case for DynamicTypeSize.accessibility1(_:);
  v30 = type metadata accessor for DynamicTypeSize();
  (*(*(v30 - 8) + 104))(v5, v29, v30);
  sub_1004DCC0C(&qword_100CA5390, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100006F64(&qword_100CC0230, &qword_100CC0228, &qword_100A58668, &protocol conformance descriptor for VStack<A>);
    sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100018144(v5, &unk_100CE1680, &unk_100A450F0);
    return sub_100018144(v8, &qword_100CC0228, &qword_100A58668);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004DB6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v51 = a3;
  v5 = sub_10022C350(&qword_100CC0258, &qword_100A58690);
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = &v44 - v8;
  v9 = type metadata accessor for ConditionDetailChartHeaderViewModel(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConditionDetailChartHeaderView(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CC0260, &qword_100A58698);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  v20 = sub_10022C350(&qword_100CC0268, &qword_100A586A0);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v46 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v44 - v24;
  __chkstk_darwin(v26);
  v28 = &v44 - v27;
  sub_1004DCCD0(a1, v11, type metadata accessor for ConditionDetailChartHeaderViewModel);
  sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
  v29 = a2;
  ScaledMetric.wrappedValue.getter();
  v30 = fmax(v54, 1.0);
  v31 = static HorizontalAlignment.leading.getter();
  sub_1004DCF48(v11, v15, type metadata accessor for ConditionDetailChartHeaderViewModel);
  *&v15[*(v13 + 32)] = v30;
  *&v15[*(v13 + 28)] = v31;
  v32 = static Anchor.Source<A>.bounds.getter();
  sub_1004DCF48(v15, v19, type metadata accessor for ConditionDetailChartHeaderView);
  v33 = &v19[*(v17 + 44)];
  *v33 = v32;
  v33[1] = sub_1004DBBFC;
  v33[2] = 0;
  sub_10011C0F0(v19, v25, &qword_100CC0260, &qword_100A58698);
  v25[*(v21 + 44)] = 0;
  v44 = v28;
  sub_10011C0F0(v25, v28, &qword_100CC0268, &qword_100A586A0);
  Solarium.init()();
  v52 = v45;
  v53 = v29;
  sub_10022C350(&qword_100CC0270, &qword_100A586A8);
  sub_1004DFB40();
  v34 = v47;
  StaticIf<>.init(_:then:else:)();
  v35 = v46;
  sub_1000302D8(v28, v46, &qword_100CC0268, &qword_100A586A0);
  v37 = v48;
  v36 = v49;
  v38 = *(v49 + 16);
  v39 = v50;
  v38(v48, v34, v50);
  v40 = v51;
  sub_1000302D8(v35, v51, &qword_100CC0268, &qword_100A586A0);
  v41 = sub_10022C350(&qword_100CC0290, &qword_100A586B8);
  v38((v40 + *(v41 + 48)), v37, v39);
  v42 = *(v36 + 8);
  v42(v34, v39);
  sub_100018144(v44, &qword_100CC0268, &qword_100A586A0);
  v42(v37, v39);
  return sub_100018144(v35, &qword_100CC0268, &qword_100A586A0);
}

uint64_t sub_1004DBC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CC0288, &qword_100A586B0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_10022C350(&qword_100CC0118, &qword_100A58550);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  if (*(a1 + *(type metadata accessor for ConditionDetailChartHeaderViewModel(0) + 24)) == 1)
  {
    sub_1004D9BF0(v12);
    sub_1000302D8(v12, v9, &qword_100CC0118, &qword_100A58550);
    *v6 = 0x4024000000000000;
    v6[8] = 0;
    v13 = sub_10022C350(&qword_100CC0298, &qword_100A586C0);
    sub_1000302D8(v9, &v6[*(v13 + 48)], &qword_100CC0118, &qword_100A58550);
    sub_100018144(v12, &qword_100CC0118, &qword_100A58550);
    sub_100018144(v9, &qword_100CC0118, &qword_100A58550);
    sub_10011C0F0(v6, a2, &qword_100CC0288, &qword_100A586B0);
    return sub_10001B350(a2, 0, 1, v4);
  }

  else
  {

    return sub_10001B350(a2, 1, 1, v4);
  }
}

void *sub_1004DBE18(void *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t))
{

  result = a2(&v6, v4);
  *a1 = v6;
  return result;
}

uint64_t sub_1004DBE70@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v3 = sub_10022C350(&qword_100CC0438, &qword_100A58848);
  sub_1004DC080(a2 + *(v3 + 44));
  sub_10022C350(&qword_100CB2AC8, &unk_100A45020);
  ScaledMetric.wrappedValue.getter();
  type metadata accessor for ChartHeaderMenuLabel(0);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = (a2 + *(sub_10022C350(&qword_100CC0440, &qword_100A58850) + 36));
  *v4 = v15;
  v4[1] = v16;
  v4[2] = v17;
  v5 = [objc_opt_self() secondarySystemFillColor];
  v6 = Color.init(_:)();
  v7 = static Edge.Set.all.getter();
  v8 = a2 + *(sub_10022C350(&qword_100CC0448, &qword_100A58858) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  ScaledMetric.wrappedValue.getter();
  v9 = (a2 + *(sub_10022C350(&qword_100CC0450, &unk_100A58860) + 36));
  v10 = *(type metadata accessor for RoundedRectangle() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = v14 * 0.5;
  v9[1] = v14 * 0.5;
  result = sub_10022C350(&qword_100CB34E0, &qword_100A5BCB0);
  *(v9 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1004DC080@<X0>(uint64_t a1@<X8>)
{
  v38 = type metadata accessor for Font.TextStyle();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v3 = &v33[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_10022C350(&qword_100CB5160, &qword_100A58870);
  __chkstk_darwin(v35);
  v37 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v33[-v6];
  type metadata accessor for ChartHeaderMenuLabel(0);
  v8 = DetailCondition.usesCustomSymbol.getter();
  DetailCondition.filledSymbolName.getter();
  if (v8)
  {
    v9 = Image.init(_:bundle:)();
    v10 = static Font.body.getter();
    KeyPath = swift_getKeyPath();
    v39 = v9;
    v40 = KeyPath;
    v41 = v10;
    v42 = 0;
  }

  else
  {
    v12 = Image.init(systemName:)();
    v13 = static Font.body.getter();
    v14 = swift_getKeyPath();
    v39 = v12;
    v40 = v14;
    v41 = v13;
    v42 = 1;
  }

  sub_10022C350(&qword_100CA53B0, &qword_100A47610);
  sub_100270C80();
  _ConditionalContent<>.init(storage:)();
  v15 = v43;
  v16 = v44;
  v17 = v45;
  v34 = v46;
  sub_1004E00C8();
  v18 = Image.init(systemName:)();
  v19 = v7;
  v20 = (v7 + *(sub_10022C350(&qword_100CB5170, &unk_100A488B0) + 36));
  v21 = *(sub_10022C350(&qword_100CAF750, &qword_100A57BC0) + 28);
  v22 = enum case for Image.Scale.small(_:);
  v23 = type metadata accessor for Image.Scale();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v19 = v18;
  v24 = v36;
  v25 = v38;
  (*(v36 + 104))(v3, enum case for Font.TextStyle.body(_:), v38);
  static Font.Weight.bold.getter();
  v26 = static Font.system(_:weight:)();
  (*(v24 + 8))(v3, v25);
  v27 = swift_getKeyPath();
  v28 = (v19 + *(v35 + 36));
  *v28 = v27;
  v28[1] = v26;
  v29 = v37;
  sub_1000302D8(v19, v37, &qword_100CB5160, &qword_100A58870);
  *a1 = 0x4028000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = v34;
  v30 = sub_10022C350(&qword_100CC0458, &qword_100A588D8);
  sub_1000302D8(v29, a1 + *(v30 + 64), &qword_100CB5160, &qword_100A58870);
  v31 = a1 + *(v30 + 80);
  sub_1004E00C8();
  sub_1004E0110();
  *v31 = 0x4028000000000000;
  *(v31 + 8) = 0;
  sub_100018144(v19, &qword_100CB5160, &qword_100A58870);
  sub_100018144(v29, &qword_100CB5160, &qword_100A58870);
  return sub_1004E0110();
}

uint64_t sub_1004DC4B4()
{
  v1 = sub_10022C350(&qword_100CBFAC8, &qword_100A57F08);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v9 = v0;
  v8 = v0;
  sub_10022C350(&qword_100CBFAD0, &unk_100A57F10);
  sub_10022C350(&qword_100CBFAD8, &qword_100A7A6D0);
  sub_100006F64(&qword_100CBFAE0, &qword_100CBFAD0, &unk_100A57F10, &protocol conformance descriptor for LabelGroup<A>);
  sub_1004DCAA0();
  Label.init(title:icon:)();
  v10 = DetailCondition.accessibilityLabel.getter();
  v11 = v5;
  sub_100006F64(&qword_100CBFAF0, &qword_100CBFAC8, &qword_100A57F08, &protocol conformance descriptor for Label<A, B>);
  sub_10002D5A4();
  View.accessibilityLabel<A>(_:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1004DC6BC(uint64_t a1)
{
  sub_10022C350(&qword_100CBFAF8, &qword_100A57F20);
  sub_100006F64(&qword_100CBFB00, &qword_100CBFAF8, &qword_100A57F20, &protocol conformance descriptor for TupleView<A>);
  return LabelGroup.init(content:)();
}

uint64_t sub_1004DC760@<X0>(uint64_t a2@<X8>)
{
  DetailCondition.title.getter();
  sub_10002D5A4();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  DetailCondition.subtitle.getter();
  if (v10)
  {
    v11 = Text.init<A>(_:)();
    v13 = v12;
    v15 = v14;
    v17 = v16 & 1;
    sub_10010CD54(v11, v12, v16 & 1);
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v17 = 0;
    v15 = 0;
  }

  sub_10010CD54(v3, v5, v7 & 1);

  sub_100148118(v11, v13, v17, v15);
  sub_10014A53C(v11, v13, v17, v15);
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v17;
  *(a2 + 56) = v15;
  sub_10014A53C(v11, v13, v17, v15);
  sub_10010CD64(v3, v5, v7 & 1);
}

uint64_t sub_1004DC8BC@<X0>(uint64_t a1@<X8>)
{
  v2 = DetailCondition.usesCustomSymbol.getter();
  DetailCondition.symbolName.getter();
  if (v2)
  {
    Image.init(_:bundle:)();
  }

  else
  {
    Image.init(systemName:)();
  }

  result = _ConditionalContent<>.init(storage:)();
  *a1 = v4;
  *(a1 + 8) = v5;
  return result;
}

unint64_t sub_1004DC960()
{
  result = qword_100CBFAB0;
  if (!qword_100CBFAB0)
  {
    result = swift_getWitnessTable(byte_100A57E80, &type metadata for PickerDetailCondition, v0, v1);
    atomic_store(result, &qword_100CBFAB0);
  }

  return result;
}

unint64_t sub_1004DC9E4()
{
  result = qword_100CBFAB8;
  if (!qword_100CBFAB8)
  {
    result = swift_getWitnessTable(aA6, &type metadata for PickerDetailCondition, v0, v1);
    atomic_store(result, &qword_100CBFAB8);
  }

  return result;
}

uint64_t sub_1004DCA38(uint64_t a1)
{
  result = sub_1004DCC0C(&qword_100CBFAC0, type metadata accessor for ConditionDetailViewModel, byte_100A98C68);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004DCAA0()
{
  result = qword_100CBFAE8;
  if (!qword_100CBFAE8)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CBFAD8, &qword_100A7A6D0);
    v4[0] = &protocol witness table for Image;
    v4[1] = &protocol witness table for Image;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBFAE8);
  }

  return result;
}

unint64_t sub_1004DCB24()
{
  result = qword_100CBFB08;
  if (!qword_100CBFB08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBFB10, &qword_100A57F28);
    v4[0] = sub_100006F64(&qword_100CBFAF0, &qword_100CBFAC8, &qword_100A57F08, &protocol conformance descriptor for Label<A, B>);
    v4[1] = sub_1004DCC0C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBFB08);
  }

  return result;
}

uint64_t sub_1004DCC0C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1004DCCD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1004DCD2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1004DCDA8(uint64_t a1)
{
  sub_1004DCED0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ConditionDetailDynamicContentViewBuilder();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ConditionDetailViewModel.Model(319);
      if (v3 <= 0x3F)
      {
        sub_1004DEC84(319, &qword_100CBB7E8, &unk_100CB2CF0, &unk_100A2D7F0, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_100329AF4(319, &qword_100CAD690, &type metadata for CGFloat);
          if (v5 <= 0x3F)
          {
            sub_100046E64();
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

unint64_t sub_1004DCED0()
{
  result = qword_100CBFBA0;
  if (!qword_100CBFBA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CBFBA0);
  }

  return result;
}

uint64_t sub_1004DCF48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1004DCFBC()
{
  v2 = type metadata accessor for ConditionDetailInnerView(0);
  sub_100003DDC();
  v30 = *(v4 + 64);
  v31 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v32 = v0;
  v5 = v0 + v31;
  sub_100006F14((v0 + v31));

  v6 = v0 + v31 + *(v2 + 28);

  v7 = type metadata accessor for ConditionDetailViewModel.Model(0);
  v8 = v7[6];
  v9 = type metadata accessor for Date();
  sub_1000037E8();
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v12 = type metadata accessor for DetailChartSelection(0);
  if (!sub_1000057B4(v12))
  {

    v13 = sub_1000207C8(v1[5]);
    (v11)(v13);
    v14 = sub_1000207C8(v1[6]);
    (v11)(v14);
    v15 = sub_1000207C8(v1[7]);
    (v11)(v15);
  }

  v16 = v7[9];
  type metadata accessor for DetailCondition();
  sub_100003D98();
  (*(v17 + 8))(v6 + v16);

  v18 = v7[12];
  type metadata accessor for Location();
  sub_100003D98();
  (*(v19 + 8))(v6 + v18);
  if (!sub_1000115B4())
  {
    v11(v18, v9);
  }

  sub_10022C350(&qword_100CBB758, &unk_100A51060);

  sub_10002FEFC(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, v32);

  return swift_deallocObject();
}

uint64_t sub_1004DD220(CGFloat *a1)
{
  sub_100008794();
  sub_100008550();

  return sub_1004D28DC(a1, v2);
}

uint64_t sub_1004DD294(uint64_t (*a1)(uint64_t))
{
  sub_100008794();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1004DD314()
{
  result = qword_100CBFC18;
  if (!qword_100CBFC18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBFBF8, &qword_100A58068);
    v4[0] = sub_1004DD3A0();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBFC18);
  }

  return result;
}

unint64_t sub_1004DD3A0()
{
  result = qword_100CBFC20;
  if (!qword_100CBFC20)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CBFC10, &qword_100A580B0);
    v4[2] = sub_10022E824(&qword_100CBFBF0, &qword_100A58060);
    v4[3] = type metadata accessor for DetailCondition();
    v4[4] = sub_100006F64(&qword_100CBFC08, &qword_100CBFBF0, &qword_100A58060, byte_100A6E2E0);
    v4[5] = sub_1004DCC0C(&qword_100CAECC0, &type metadata accessor for DetailCondition, &protocol conformance descriptor for DetailCondition);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100006F64(&qword_100CBFC28, &qword_100CBFC30, &qword_100A580B8, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBFC20);
  }

  return result;
}

unint64_t sub_1004DD518()
{
  result = qword_100CBFC38;
  if (!qword_100CBFC38)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&unk_100CB2CF0, &unk_100A2D7F0);
    v4[0] = sub_1004DCC0C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CBFC38);
  }

  return result;
}

uint64_t sub_1004DD5E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_100008794();
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1004DD688(uint64_t a1)
{
  sub_100008794();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000926F8;

  return sub_1004D2BEC(a1, v6, v7, v1 + v5);
}

unint64_t sub_1004DD788()
{
  result = qword_100CBFC68;
  if (!qword_100CBFC68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBFC60, &qword_100A58108);
    v4[0] = sub_1004DD844();
    v4[1] = sub_1004DCC0C(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBFC68);
  }

  return result;
}

unint64_t sub_1004DD844()
{
  result = qword_100CBFC70;
  if (!qword_100CBFC70)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CBFC58, &qword_100A58100);
    v4[2] = sub_10022E824(&qword_100CBFC48, &qword_100A580F0);
    v4[3] = sub_100006F64(&qword_100CBFC78, &qword_100CBFC48, &qword_100A580F0, &protocol conformance descriptor for ScrollView<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _TransactionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBFC70);
  }

  return result;
}

unint64_t sub_1004DD948()
{
  result = qword_100CBFC88;
  if (!qword_100CBFC88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBFC80, &qword_100A58110);
    v4[0] = sub_100006F64(&qword_100CBFC90, &qword_100CBFC98, &unk_100A58118, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBFC88);
  }

  return result;
}

uint64_t sub_1004DDA00()
{
  sub_100008794();
  sub_100008550();
  v0 = sub_1000138D0();

  return sub_1004D24AC(v0, v1);
}

unint64_t sub_1004DDA90()
{
  result = qword_100CBFCD0;
  if (!qword_100CBFCD0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBFCB8, &qword_100A58178);
    v4[0] = sub_1004DCC0C(&qword_100CBFCD8, type metadata accessor for PagingChartsView, byte_100A58274);
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBFCD0);
  }

  return result;
}

unint64_t sub_1004DDB54()
{
  result = qword_100CBFCF0;
  if (!qword_100CBFCF0)
  {
    result = swift_getWitnessTable(a0_25, &type metadata for ConditionDetailPlatterViews, v0, v1);
    atomic_store(result, &qword_100CBFCF0);
  }

  return result;
}

uint64_t sub_1004DDC10()
{
  v2 = type metadata accessor for ConditionDetailInnerView(0);
  sub_100003DDC();
  v4 = *(v3 + 80);
  v31 = *(v5 + 64);
  swift_unknownObjectRelease();
  v6 = (v0 + ((v4 + 32) & ~v4));
  sub_100006F14(v6);

  v7 = v6 + *(v2 + 28);

  v8 = type metadata accessor for ConditionDetailViewModel.Model(0);
  v9 = v8[6];
  v10 = type metadata accessor for Date();
  sub_1000037E8();
  v12 = *(v11 + 8);
  v12(&v7[v9], v10);
  v13 = type metadata accessor for DetailChartSelection(0);
  if (!sub_1000057B4(v13))
  {

    v14 = sub_1000207C8(v1[5]);
    (v12)(v14);
    v15 = sub_1000207C8(v1[6]);
    (v12)(v15);
    v16 = sub_1000207C8(v1[7]);
    (v12)(v16);
  }

  v17 = v8[9];
  type metadata accessor for DetailCondition();
  sub_100003D98();
  (*(v18 + 8))(&v7[v17]);

  v19 = v8[12];
  type metadata accessor for Location();
  sub_100003D98();
  (*(v20 + 8))(&v19[v7]);
  if (!sub_1000115B4())
  {
    v12(v19, v10);
  }

  sub_10022C350(&qword_100CBB758, &unk_100A51060);

  sub_10002FEFC(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, (v4 + 32) & ~v4, v0);

  return swift_deallocObject();
}

uint64_t sub_1004DDE7C()
{
  sub_100008794();
  sub_1000138B8();

  return sub_1004D03B0(v0, v1);
}

uint64_t sub_1004DDED4()
{
  sub_100008794();
  v0 = sub_100037B1C();

  return sub_1004D0440(v0, v1, v2, v3);
}

void sub_1004DDF80(uint64_t a1)
{
  sub_1004DEBC0(319, &qword_100CBFD88, type metadata accessor for DetailChartConditionInfo, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1004DEBC0(319, &qword_100CBFD90, type metadata accessor for DetailChartsViewModel, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1004DEBC0(319, &qword_100CB0C68, type metadata accessor for DetailChartSelection, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1004DCED0();
        if (v4 <= 0x3F)
        {
          sub_1004DEBC0(319, &qword_100CBFD98, &type metadata accessor for DetailCondition, &type metadata accessor for Binding);
          if (v5 <= 0x3F)
          {
            sub_1004DEC84(319, &unk_100CBFDA0, &unk_100CB2CF0, &unk_100A2D7F0, &type metadata accessor for Binding);
            if (v6 <= 0x3F)
            {
              sub_100329AF4(319, &qword_100CA6D40, &type metadata for Bool);
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

unint64_t sub_1004DE1E8()
{
  result = qword_100CBFE40;
  if (!qword_100CBFE40)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBFE30, &qword_100A58310);
    v4[0] = sub_1004DCC0C(&qword_100CBFE38, type metadata accessor for PagingChartsView.HorizontalChartPages, aA_44);
    v4[1] = sub_100006F64(&qword_100CBFE48, &qword_100CBFE50, &qword_100A58318, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBFE40);
  }

  return result;
}

unint64_t sub_1004DE2D0()
{
  result = qword_100CBFE68;
  if (!qword_100CBFE68)
  {
    v5[16] = v0;
    v5[17] = v1;
    v3 = sub_10022E824(&qword_100CBFE18, &qword_100A582F8);
    v4 = sub_10022E824(&qword_100CBFE08, &qword_100A582E8);
    sub_10022E824(&qword_100CBFE00, &qword_100A582E0);
    sub_10022E824(&qword_100CBFDF8, &qword_100A582D8);
    type metadata accessor for Date();
    sub_10022E824(&qword_100CBFDF0, &qword_100A582D0);
    type metadata accessor for PagingScrollTargetBehavior();
    sub_100006F64(&qword_100CBFE58, &qword_100CBFDF0, &qword_100A582D0, &protocol conformance descriptor for ScrollView<A>);
    v5[4] = swift_getOpaqueTypeConformance2();
    v5[5] = sub_1004DCC0C(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    swift_getOpaqueTypeConformance2();
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_100006F64(&qword_100CBFE70, &qword_100CBFE60, &qword_100A58320, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CBFE68);
  }

  return result;
}

unint64_t sub_1004DE52C()
{
  result = qword_100CBFE80;
  if (!qword_100CBFE80)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBFE78, &qword_100A58328);
    v4[0] = sub_1004DE5E4();
    v4[1] = sub_100006F64(&qword_100CBFE48, &qword_100CBFE50, &qword_100A58318, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBFE80);
  }

  return result;
}

unint64_t sub_1004DE5E4()
{
  result = qword_100CBFE88;
  if (!qword_100CBFE88)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CBFE90, &unk_100A58330);
    v4[2] = sub_10022E824(&qword_100CBFE18, &qword_100A582F8);
    v4[3] = sub_10022E824(&unk_100CE1680, &unk_100A450F0);
    v4[4] = sub_1004DE2D0();
    v4[5] = sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100006F64(&qword_100CA4620, &qword_100CA4628, &qword_100A45EA0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBFE88);
  }

  return result;
}

unint64_t sub_1004DE7B8()
{
  result = qword_100CBFEB8;
  if (!qword_100CBFEB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBFEA8, &qword_100A58378);
    v4[0] = sub_1004DCC0C(&qword_100CBFEB0, type metadata accessor for StickyChartHeadersView, byte_100A583D0);
    v4[1] = sub_100006F64(&qword_100CBFE48, &qword_100CBFE50, &qword_100A58318, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBFEB8);
  }

  return result;
}

uint64_t sub_1004DE8E8()
{

  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

void sub_1004DE960(uint64_t a1)
{
  sub_1004DEC24(319, &qword_100CA3C98, sub_10014AB54, &type metadata for Double);
  if (v1 <= 0x3F)
  {
    sub_1004DEBC0(319, &qword_100CBFD88, type metadata accessor for DetailChartConditionInfo, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1004DEBC0(319, &qword_100CBFD90, type metadata accessor for DetailChartsViewModel, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_1004DCED0();
        if (v4 <= 0x3F)
        {
          sub_1004DEBC0(319, &qword_100CA3940, &type metadata accessor for Date, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1004DEBC0(319, &qword_100CBFD98, &type metadata accessor for DetailCondition, &type metadata accessor for Binding);
            if (v6 <= 0x3F)
            {
              sub_1004DEC24(319, &qword_100CB2B38, sub_1001BB6FC, &type metadata for CGFloat);
              if (v7 <= 0x3F)
              {
                sub_1004DEC84(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
                if (v8 <= 0x3F)
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
}

void sub_1004DEBC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1004DEC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for ScaledMetric();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1004DEC84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10022E824(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1004DED10(uint64_t a1)
{
  sub_1004DEBC0(319, &qword_100CBFD90, type metadata accessor for DetailChartsViewModel, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1004DCED0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for DetailCondition();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1004DEDF4()
{
  result = qword_100CC0040;
  if (!qword_100CC0040)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CC0048, &qword_100A583C8);
    v4[0] = sub_100006F64(&qword_100CBFED8, &qword_100CBFEC8, &qword_100A58388, aI_4);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CC0040);
  }

  return result;
}

unint64_t sub_1004DEEE4()
{
  result = qword_100CC0068;
  if (!qword_100CC0068)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CC0060, &qword_100A58478);
    v4[0] = sub_1004DCC0C(&qword_100CC0070, type metadata accessor for PagingChartsView.ChartPage, byte_100A587BC);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CC0068);
  }

  return result;
}

unint64_t sub_1004DEFEC()
{
  result = qword_100CC00B0;
  if (!qword_100CC00B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC00A0, &qword_100A584B8);
    v4[0] = sub_100006F64(&qword_100CC00A8, &qword_100CC0090, &qword_100A584A8, &protocol conformance descriptor for VStack<A>);
    v4[1] = sub_100006F64(&qword_100CC00B8, &qword_100CC00C0, &qword_100A584C0, &protocol conformance descriptor for _OverlayPreferenceModifier<A, B>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC00B0);
  }

  return result;
}

uint64_t sub_1004DF0D0()
{
  v0 = sub_1000138A8();
  v1 = type metadata accessor for StickyChartHeadersView(v0);
  sub_100003810(v1);
  sub_100008550();
  v2 = sub_1000138D0();

  return sub_1004D95FC(v2, v3, v4);
}

uint64_t sub_1004DF138()
{
  v0 = sub_1000138A8();
  type metadata accessor for StickyChartHeadersView(v0);
  sub_1000138D0();

  return sub_1004D973C(v1, v2, v3);
}

unint64_t sub_1004DF208()
{
  result = qword_100CC0140;
  if (!qword_100CC0140)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC0108, &qword_100A58540);
    v4[0] = sub_100006F64(&qword_100CC0148, &qword_100CC0150, &qword_100A58568, &protocol conformance descriptor for Menu<A, B>);
    v4[1] = sub_100006F64(&qword_100CBFE48, &qword_100CBFE50, &qword_100A58318, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC0140);
  }

  return result;
}

unint64_t sub_1004DF2F4()
{
  result = qword_100CC0168;
  if (!qword_100CC0168)
  {
    v4[9] = v0;
    v4[10] = v1;
    v3 = sub_10022E824(&qword_100CC0160, &qword_100A58570);
    v4[1] = type metadata accessor for ConditionPickerLabel(255);
    v4[2] = &type metadata for PickerDetailCondition;
    v4[3] = sub_1004DCC0C(&qword_100CC0170, type metadata accessor for ConditionPickerLabel, aI4);
    v4[4] = sub_1004DC960();
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CC0168);
  }

  return result;
}

uint64_t sub_1004DF3F4()
{
  v0 = type metadata accessor for StickyChartHeadersView(0);
  sub_100003810(v0);
  sub_1000138B8();

  return sub_1004D7750(v1);
}

uint64_t sub_1004DF454()
{
  v3 = type metadata accessor for StickyChartHeadersView(0);
  sub_100003DDC();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  swift_unknownObjectRelease();
  v6 = v0 + v5;
  sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
  sub_100003D98();
  (*(v7 + 8))(v0 + v5);

  v8 = sub_10002C784();
  if (!sub_10002473C(v8))
  {
    sub_100003B20();
    (*(v9 + 8))(v6 + v2, v1);
  }

  sub_10001845C();

  v10 = *(sub_10022C350(&qword_100CBFD10, &qword_100A58200) + 32);
  type metadata accessor for DetailCondition();
  sub_100003D98();
  (*(v11 + 8))(v1 + v10);
  v12 = *(v3 + 52);
  sub_10022C350(&qword_100CB2AC8, &unk_100A45020);
  sub_100003D98();
  (*(v13 + 8))(v6 + v12);
  v14 = *(v3 + 56);
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_10000CB9C(v15))
    {
      sub_100003B20();
      (*(v16 + 8))(v6 + v14, v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004DF688()
{
  v0 = type metadata accessor for StickyChartHeadersView(0);
  sub_100003810(v0);
  v1 = sub_100037B1C();

  return sub_1004D7AE0(v1);
}

uint64_t sub_1004DF708()
{
  v3 = type metadata accessor for StickyChartHeadersView(0);
  sub_100003DDC();
  v5 = v0 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
  sub_100003D98();
  (*(v6 + 8))(v5);

  v7 = sub_10002C784();
  if (!sub_10002473C(v7))
  {
    sub_100003B20();
    (*(v8 + 8))(v5 + v2, v1);
  }

  sub_10001845C();

  v9 = *(sub_10022C350(&qword_100CBFD10, &qword_100A58200) + 32);
  type metadata accessor for DetailCondition();
  sub_100003D98();
  (*(v10 + 8))(v1 + v9);
  v11 = *(v3 + 52);
  sub_10022C350(&qword_100CB2AC8, &unk_100A45020);
  sub_100003D98();
  (*(v12 + 8))(v5 + v11);
  v13 = *(v3 + 56);
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_10000CB9C(v14))
    {
      sub_100003B20();
      (*(v15 + 8))(v5 + v13, v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004DF934@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for StickyChartHeadersView(0);
  sub_100003810(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_1004D8B70(a1, a2, v9, a3);
}

unint64_t sub_1004DF9C0()
{
  result = qword_100CC0218;
  if (!qword_100CC0218)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC0210, &qword_100A58660);
    v4[0] = sub_1004DFA4C();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC0218);
  }

  return result;
}

unint64_t sub_1004DFA4C()
{
  result = qword_100CC0220;
  if (!qword_100CC0220)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CC0208, &qword_100A58658);
    v4[2] = type metadata accessor for LollipopDetailView(255);
    v4[3] = sub_1004DCC0C(&qword_100CBBA60, type metadata accessor for LollipopDetailView, aN_4);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC0220);
  }

  return result;
}

unint64_t sub_1004DFB40()
{
  result = qword_100CC0278;
  if (!qword_100CC0278)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CC0270, &qword_100A586A8);
    v4[0] = sub_100006F64(&qword_100CC0280, &qword_100CC0288, &qword_100A586B0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CC0278);
  }

  return result;
}

void sub_1004DFC18(uint64_t a1)
{
  type metadata accessor for DetailChartsViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1004DCED0();
    if (v2 <= 0x3F)
    {
      sub_100329AF4(319, &qword_100CA6D40, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1004DFCFC(uint64_t a1)
{
  sub_1004DEC24(319, &qword_100CB2B38, sub_1001BB6FC, &type metadata for CGFloat);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailCondition();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1004DFE18(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = sub_1000138A8();
  v5 = v4(v3);
  sub_100003810(v5);
  sub_100008550();
  v6 = sub_1000138D0();

  return a3(v6);
}

unint64_t sub_1004DFEB8()
{
  result = qword_100CC0420;
  if (!qword_100CC0420)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC03D8, &qword_100A58810);
    v4[0] = sub_100006F64(&qword_100CC0428, &qword_100CC0430, &qword_100A58840, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC0420);
  }

  return result;
}

uint64_t sub_1004DFF70()
{
  type metadata accessor for PagingChartsView.ChartPage(0);
  sub_100008560();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  type metadata accessor for Date();
  sub_100003D98();
  (*(v4 + 8))(v3);
  type metadata accessor for DetailChartsViewModel(0);

  sub_100006F14((v3 + *(v0 + 32)));

  return swift_deallocObject();
}

uint64_t sub_1004E0064(char a1)
{
  v2 = type metadata accessor for PagingChartsView.ChartPage(0);
  sub_100003810(v2);
  sub_100008550();

  return sub_1004D65DC(a1, v3);
}

uint64_t sub_1004E00C8()
{
}

uint64_t sub_1004E0110()
{
}

void sub_1004E017C(uint64_t a1)
{
  sub_1004DEC24(319, &qword_100CA3C98, sub_10014AB54, &type metadata for Double);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailChartViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1004DCED0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1004E0250()
{
  result = qword_100CC0500;
  if (!qword_100CC0500)
  {
    v5[8] = v0;
    v5[9] = v1;
    v3 = sub_10022E824(&qword_100CC0508, &qword_100A588F8);
    v4 = sub_10022E824(&qword_100CC03E8, &qword_100A58820);
    sub_10022E824(&qword_100CC03E0, &qword_100A58818);
    sub_10022E824(&qword_100CC03D8, &qword_100A58810);
    sub_1004DFEB8();
    swift_getOpaqueTypeConformance2();
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_1004DCC0C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CC0500);
  }

  return result;
}

unint64_t sub_1004E03C8()
{
  result = qword_100CC0510;
  if (!qword_100CC0510)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC0450, &unk_100A58860);
    v4[0] = sub_1004E0480();
    v4[1] = sub_100006F64(&qword_100CB80A0, &qword_100CB34E0, &qword_100A5BCB0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC0510);
  }

  return result;
}

unint64_t sub_1004E0480()
{
  result = qword_100CC0518;
  if (!qword_100CC0518)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC0448, &qword_100A58858);
    v4[0] = sub_1004E0538();
    v4[1] = sub_100006F64(&qword_100CC0538, &qword_100CC0540, &unk_100A9A4B0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC0518);
  }

  return result;
}

unint64_t sub_1004E0538()
{
  result = qword_100CC0520;
  if (!qword_100CC0520)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CC0440, &qword_100A58850);
    v4[0] = sub_100006F64(&qword_100CC0528, &qword_100CC0530, &unk_100A58900, &protocol conformance descriptor for HStack<A>);
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CC0520);
  }

  return result;
}

uint64_t sub_1004E060C()
{
  v0 = type metadata accessor for Domain();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Access();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CC0598, &qword_100A58A48);
  v17 = 1;
  (*(v8 + 104))(v11, enum case for Access.protected(_:), v6);
  sub_10022C350(&qword_100CC05A0, &qword_100A58A50);
  sub_10022C350(&qword_100CC05A8, &qword_100A58A58);
  *(swift_allocObject() + 16) = xmmword_100A3BBA0;
  v16 = 0;
  Option.init(label:value:description:)();
  v15 = 1;
  Option.init(label:value:description:)();
  v14 = 2;
  Option.init(label:value:description:)();
  (*(v2 + 104))(v5, enum case for Domain.standard(_:), v0);
  sub_1004E0910();
  result = Setting<>.init(_:defaultValue:domain:access:options:)();
  qword_100D90350 = result;
  return result;
}

unint64_t sub_1004E0910()
{
  result = qword_100CC05B0;
  if (!qword_100CC05B0)
  {
    result = swift_getWitnessTable(byte_100A8C9F8, &type metadata for DiagnosticGatheringMode, v0, v1);
    atomic_store(result, &qword_100CC05B0);
  }

  return result;
}

uint64_t sub_1004E0964(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  type metadata accessor for EnvironmentAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v5, v9, v7, v6);
  sub_1000E17D8(v9);
  return sub_1000547B8(v5);
}

uint64_t sub_1004E0B0C()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for LocationComponentCornerRadiusConfiguration(v0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_100019530();
  sub_1001993DC();
  sub_1001A2B9C();
  EnvironmentValues.subscript.setter();
  return sub_100192034();
}

uint64_t sub_1004E0BE4(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v7 == (a1 & 1))
    {
    }

    else
    {
      __chkstk_darwin(v5);
      v6 = swift_getKeyPath();
      __chkstk_darwin(v6);
      swift_getKeyPath();
      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t sub_1004E0DA0()
{
  v1 = type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v11 = *(v3 + 16);
  v11(&v45 - v9, v0, v1, v8);
  v46 = v3;
  v12 = *(v3 + 88);
  v13 = v12(v10, v1);
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  v15 = enum case for ContentSizeCategory.small(_:);
  v16 = enum case for ContentSizeCategory.medium(_:);
  v17 = enum case for ContentSizeCategory.large(_:);
  v20 = v13 == enum case for ContentSizeCategory.extraSmall(_:) || v13 == enum case for ContentSizeCategory.small(_:) || v13 == enum case for ContentSizeCategory.medium(_:) || v13 == enum case for ContentSizeCategory.large(_:);
  v48 = enum case for ContentSizeCategory.extraExtraLarge(_:);
  v49 = enum case for ContentSizeCategory.extraLarge(_:);
  v22 = v20 || v13 == enum case for ContentSizeCategory.extraLarge(_:) || v13 == enum case for ContentSizeCategory.extraExtraLarge(_:);
  v47 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  if (!v22 && v13 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    v45 = v12;
    if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v13 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v13 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      return 0;
    }

    v28 = v10;
    v29 = enum case for ContentSizeCategory.extraSmall(_:);
    v30 = enum case for ContentSizeCategory.small(_:);
    (*(v46 + 8))(v28, v1);
    v15 = v30;
    v14 = v29;
    v12 = v45;
  }

  v31 = v0;
  v32 = v14;
  v33 = v15;
  (v11)(v6, v31, v1);
  v34 = v12(v6, v1);
  if (v34 != v32 && v34 != v33 && v34 != v16 && v34 != v17)
  {
    if (v34 == v49 || v34 == v48 || v34 == v47)
    {
      return 1;
    }

    if (v34 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v34 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v34 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v34 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v34 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      (*(v46 + 8))(v6, v1);
    }
  }

  return 0;
}

uint64_t sub_1004E1090()
{
  sub_10000FE4C();
  result = sub_100199A40();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1004E10C0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = sub_100003B38();
  v6 = *(type metadata accessor for LocationComponentCornerRadiusConfiguration(v5) + 20);

  return static RoundedCornerStyle.== infix(_:_:)(v3 + v6, v2 + v6);
}

uint64_t sub_1004E111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100061A3C(&qword_100CC0FE0, type metadata accessor for LocationComponentCornerRadiusConfiguration, byte_100A59BE4);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1004E11B0(char a1)
{
  v2 = type metadata accessor for LocationComponentContainerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v15 = type metadata accessor for Date();
  sub_10001B350(v14, 1, 1, v15);
  if ((a1 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_100CA24F0 != -1)
  {
    swift_once();
  }

  if (byte_100D907A8 == 1)
  {
    v16 = type metadata accessor for TaskPriority();
    sub_10001B350(v7, 1, 1, v16);
    sub_1001993DC();
    sub_1000302D8(v14, v11, &unk_100CB2CF0, &unk_100A2D7F0);
    type metadata accessor for MainActor();
    v17 = static MainActor.shared.getter();
    v18 = (v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = (*(v9 + 80) + v18 + 32) & ~*(v9 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = &protocol witness table for MainActor;
    sub_1001AD070();
    v21 = (v20 + v18);
    *v21 = 0u;
    v21[1] = 0u;
    sub_10011C0F0(v11, v20 + v19, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1005B037C(0, 0, v7, &unk_100A59650, v20);
  }

  else
  {
LABEL_6:
    sub_1004E1C1C();
  }

  return sub_100018198(v14, &unk_100CB2CF0);
}

uint64_t sub_1004E1514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(type metadata accessor for LocationComponentBackgroundConfiguration(0) + 20));
  v11 = *v10;
  v33 = v10[1];
  v34 = v11;
  v32 = *(v10 + 32);
  type metadata accessor for LocationComponentContainerViewModel(0);
  v12 = type metadata accessor for LocationComponentContainerBackgroundView(0);
  sub_1001993DC();
  v13 = type metadata accessor for LocationComponentContainerView(0);
  v14 = v13[8];
  v15 = *(a2 + v13[7]);
  v16 = v12[11];
  v17 = type metadata accessor for Location.Identifier();
  (*(*(v17 - 8) + 16))(a3 + v16, a2 + v14, v17);
  v18 = *(a2 + v13[9]);
  v19 = a2 + v13[27];
  v20 = *v19;
  LODWORD(v13) = *(v19 + 8);

  if (v13 == 1)
  {
    v21 = v20;
  }

  else
  {
    sub_10022BF9C(v20, 0);
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v20, 0);
    (*(v7 + 8))(v9, v6);
    v21 = v35;
  }

  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  v23 = v12[6];
  *(a3 + v23) = swift_getKeyPath();
  sub_10022C350(&qword_100CABDD0, &qword_100A3AD08);
  swift_storeEnumTagMultiPayload();
  v24 = a3 + v12[8];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = v12[9];
  *(a3 + v25) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970, &qword_100A592A8);
  swift_storeEnumTagMultiPayload();
  *(a3 + v12[10]) = v15;
  *(a3 + v12[12]) = v18;
  *(a3 + v12[13]) = v21;
  v26 = a3 + v12[14];
  v27 = v33;
  *v26 = v34;
  *(v26 + 16) = v27;
  *(v26 + 32) = v32;
  KeyPath = swift_getKeyPath();
  result = sub_10022C350(&qword_100CC0A68, &qword_100A595D8);
  v30 = a3 + *(result + 36);
  *v30 = KeyPath;
  *(v30 + 8) = 0;
  return result;
}

uint64_t sub_1004E1868@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for AttributedString();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for LocationComponentViewModel(0);
  __chkstk_darwin(v11);
  v12 = type metadata accessor for LocationComponentContainerAccessibilityModifier(0);
  v13 = *(v12 + 28);
  *&a1[v13] = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970, &qword_100A592A8);
  swift_storeEnumTagMultiPayload();
  sub_1001993DC();
  type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1001993DC();
  v14 = 1 << swift_getEnumCaseMultiPayload();
  if ((v14 & 0x7CC55) != 0)
  {
    sub_100192034();
    *a1 = 0;
    sub_100868930(v4);
    if (sub_100024D10(v4, 1, v5) != 1)
    {
      v20 = v27;
      (*(v27 + 32))(v10, v4, v5);
      (*(v20 + 16))(v7, v10, v5);
      v16 = Text.init(_:)();
      v17 = v21;
      v23 = v22;
      v19 = v24;
      sub_100192034();
      result = (*(v20 + 8))(v10, v5);
      v18 = v23 & 1;
      goto LABEL_9;
    }

    sub_100192034();
    result = sub_100018198(v4, &qword_100CA5730);
  }

  else
  {
    if ((v14 & 0x23AA) != 0)
    {
      sub_100192034();
    }

    *a1 = 1;
    result = sub_100192034();
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_9:
  v25 = &a1[*(v12 + 24)];
  *v25 = v16;
  v25[1] = v17;
  v25[2] = v18;
  v25[3] = v19;
  return result;
}

void sub_1004E1C1C()
{
  sub_100040DC8();
  v6 = v0;
  v26 = v7;
  sub_1000B7B8C();
  v8 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_1000426CC();
  v12 = sub_10022C350(&qword_100CC0A50, &unk_100A594E0);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_10001365C();
  v14 = type metadata accessor for LocationComponentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  v19 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1005026A8();
  sub_1000302D8(v20, v21, v22, v23);
  if (sub_100024D10(v0, 1, v14) == 1)
  {
    sub_100018198(v0, &qword_100CC0A50);
  }

  else
  {
    sub_1001AD070();
    [objc_opt_self() setFrameStallSkipRequest:1];
    static os_signpost_type_t.event.getter();
    sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
    v24 = OS_os_log.init(subsystem:category:)();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    (*(v10 + 8))(v1, v8);
    type metadata accessor for LocationComponentContainerView(0);
    v25 = *(v19 + 20);
    v27[0] = v5;
    v27[1] = v4;
    v27[2] = v3;
    v27[3] = v2;
    v28 = 0;
    sub_10078CE20(v6 + v25, v18, v27, v26);
    sub_100192034();
  }

  sub_100040CB4();
}

void sub_1004E1EC8(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationComponentContainerView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  if (*(a2 + *(v8 + 48)) == 1)
  {
    static TaskPriority.utility.getter();
    v14 = type metadata accessor for TaskPriority();
    sub_10001B350(v13, 0, 1, v14);
    sub_1001993DC();
    (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v3);
    v15 = (v10 + *(v4 + 80) + ((*(v9 + 80) + 32) & ~*(v9 + 80))) & ~*(v4 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    sub_1001AD070();
    (*(v4 + 32))(v16 + v15, v6, v3);
    sub_10074A18C(0, 0, v13, &unk_100A594D8, v16);

    sub_100018198(v13, &qword_100CA3538);
  }
}

uint64_t sub_1004E217C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Date();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004E2248, 0, 0);
}

uint64_t sub_1004E2248()
{
  sub_100003B08();
  v1 = type metadata accessor for LocationComponentContainerView(0);
  *(v0 + 64) = v1;
  *(v0 + 112) = *(v1 + 20);
  *(v0 + 72) = type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  v2 = sub_1000E59D4();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1004E22E8()
{
  sub_100003B08();
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);

  *(v0 + 88) = *(v2 + v1);
  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1004E2354()
{
  sub_100003B08();
  *(v0 + 96) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = sub_1000E59D4();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1004E23D4()
{
  sub_100003B08();

  v0 = sub_100013484();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1004E2430()
{
  sub_100003B08();
  *(v0 + 116) = *(*(v0 + 64) + 32);
  *(v0 + 104) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = sub_1000E59D4();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1004E24B8()
{
  sub_100003B08();

  v0 = sub_100013484();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1004E2514()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  DateInterval.start.getter();
  DateInterval.end.getter();
  sub_1005026A8();
  sub_10078DBD8(v5, v6, v7, v8, v1, v3);
  v9 = *(v2 + 8);
  v10 = sub_10002C598();
  v9(v10);
  (v9)(v1, v4);

  sub_100003B14();

  return v11();
}

void sub_1004E2614(char a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v15 = &v28 - v14;
  v16 = type metadata accessor for LocationComponentContainerView(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v19 - 8);
  v21 = &v28 - v20;
  if ((a1 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_100CA24F0 != -1)
  {
    swift_once();
  }

  if (byte_100D907A8 == 1)
  {
    v22 = type metadata accessor for TaskPriority();
    sub_10001B350(v21, 1, 1, v22);
    sub_1001993DC();
    sub_1000302D8(a2, v15, &unk_100CB2CF0, &unk_100A2D7F0);
    type metadata accessor for MainActor();
    v23 = static MainActor.shared.getter();
    v24 = (v18 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = (*(v13 + 80) + v24 + 32) & ~*(v13 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = &protocol witness table for MainActor;
    sub_1001AD070();
    v27 = (v26 + v24);
    *v27 = a3;
    v27[1] = a4;
    v27[2] = a5;
    v27[3] = a6;
    sub_10011C0F0(v15, v26 + v25, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1005B037C(0, 0, v21, &unk_100A59648, v26);
  }

  else
  {
LABEL_6:
    sub_1004E1C1C();
  }
}

uint64_t sub_1004E294C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 56) = a9;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 16) = a8;
  v10 = type metadata accessor for ContinuousClock();
  *(v9 + 64) = v10;
  *(v9 + 72) = *(v10 - 8);
  *(v9 + 80) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v9 + 88) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 96) = v12;
  *(v9 + 104) = v11;

  return _swift_task_switch(sub_1004E2A4C, v12, v11);
}

uint64_t sub_1004E2A4C()
{
  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1004E2B2C;

  return sub_10074D6D0();
}

uint64_t sub_1004E2B2C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = sub_10002C598();
  v4(v3);
  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_1004E2D5C;
  }

  else
  {
    v7 = sub_1004E2CC0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1004E2CC0()
{

  sub_10001E728();
  sub_1004E1C1C();

  sub_100003B14();

  return v0();
}

uint64_t sub_1004E2D5C()
{
  sub_100003B08();

  sub_100003B14();

  return v0();
}

uint64_t sub_1004E2DC0()
{
  v1 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v2);
  v3 = type metadata accessor for LocationComponentHeaderViewModel.Description(0);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  type metadata accessor for LocationComponentContainerAccessibilityModifier(0);
  if (v6 != 1)
  {
    goto LABEL_6;
  }

  sub_1001993DC();
  if (swift_getEnumCaseMultiPayload() != 3 || (sub_1001AD070(), v5[*(v3 + 24)] != 1))
  {
    sub_100192034();
LABEL_6:
    sub_10019200C();
    v10 = sub_100426A40();
    v12 = v11;
    sub_100192034();
    v15 = v10;
    v16 = v12;
    sub_10002D5A4();
    return Text.init<A>(_:)();
  }

  v7 = &v5[*(v3 + 20)];
  v8 = *(v7 + 1);
  v15 = *v7;
  v16 = v8;
  sub_10002D5A4();

  v9 = Text.init<A>(_:)();
  sub_100192034();
  return v9;
}

uint64_t sub_1004E306C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v43 = a2;
  v44 = type metadata accessor for AccessibilityTraits();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10022C350(&qword_100CC1BA8, &qword_100A5A7D8);
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = &v34 - v8;
  v35 = sub_10022C350(&qword_100CC1BB0, &qword_100A5A7E0);
  __chkstk_darwin(v35);
  v11 = &v34 - v10;
  v39 = sub_10022C350(&qword_100CC1BB8, &qword_100A5A7E8);
  __chkstk_darwin(v39);
  v40 = &v34 - v12;
  v13 = *v2;
  if (v13 == 1)
  {
    static AccessibilityChildBehavior.contain.getter();
  }

  else
  {
    static AccessibilityChildBehavior.ignore.getter();
  }

  sub_10022C350(&qword_100CC1BC0, &qword_100A5A7F0);
  sub_10023FBF4(&qword_100CC1BC8, &qword_100CC1BC0, &qword_100A5A7F0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v37);
  v14 = sub_1004E2DC0();
  v16 = v15;
  v18 = v17;
  v20 = v19 & 1;
  (*(v7 + 32))(v11, v9, v36);
  v21 = &v11[*(v35 + 36)];
  *v21 = v14;
  v21[1] = v16;
  v21[2] = v20;
  v21[3] = v18;
  v22 = &v2[*(type metadata accessor for LocationComponentContainerAccessibilityModifier(0) + 24)];
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3];
  v27 = v40;
  sub_10011C0F0(v11, v40, &qword_100CC1BB0, &qword_100A5A7E0);
  v28 = (v27 + *(v39 + 36));
  *v28 = v23;
  v28[1] = v24;
  v28[2] = v25;
  v28[3] = v26;
  if (v13)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_100148118(v23, v24, v25, v26);
    sub_100061A3C(&qword_100CB3368, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0, &unk_100A4A1E0);
    sub_10023FBF4(&qword_100CB3370, &unk_100CE17F0, &unk_100A4A1E0, &protocol conformance descriptor for [A]);
    v29 = v41;
    v30 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v31 = v42;
  }

  else
  {
    sub_10022C350(&unk_100CE17E0, &unk_100A45D60);
    v31 = v42;
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100A2D320;
    sub_100148118(v23, v24, v25, v26);
    static AccessibilityTraits.isHeader.getter();
    static AccessibilityTraits.isButton.getter();
    v45 = v32;
    sub_100061A3C(&qword_100CB3368, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0, &unk_100A4A1E0);
    sub_10023FBF4(&qword_100CB3370, &unk_100CE17F0, &unk_100A4A1E0, &protocol conformance descriptor for [A]);
    v29 = v41;
    v30 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  sub_1005001F0();
  View.accessibilityAddTraits(_:)();
  (*(v31 + 8))(v29, v30);
  return sub_100018198(v27, &qword_100CC1BB8);
}

uint64_t sub_1004E3640(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a4 & 0x100) != 0)
  {
    if (a4)
    {
      return a3;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100427C44(a3, a4, 0);
    (*(v9 + 8))(v11, v8);
    a3 = v17;
    if (v18)
    {
      return a3;
    }
  }

  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(a1, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(a1) = v16[15];
  }

  v14 = 32.0;
  if (a1)
  {
    v14 = 24.0;
  }

  *&a3 = *&a3 - v14;
  return a3;
}

double sub_1004E389C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x100) == 0)
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100427C44(a2, a3, 0);
    (*(v9 + 8))(v11, v8);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = sub_10022C350(&qword_100CC1C00, &qword_100A5A808);
  (*(*(v13 - 8) + 16))(a4, a1, v13);
  v14 = (a4 + *(sub_10022C350(&qword_100CC1C08, &qword_100A5A810) + 36));
  v15 = v17[1];
  *v14 = v17[0];
  v14[1] = v15;
  result = *&v18;
  v14[2] = v18;
  return result;
}

double sub_1004E3AB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1004E3B84();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = sub_10022C350(&qword_100CC1D60, &qword_100A5A908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_10022C350(&qword_100CC1D68, &qword_100A5A910) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

double sub_1004E3B84()
{
  v24 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v24);
  v23 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for EnvironmentValues();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CC0970, &qword_100A592A8);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v8);
  v21 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v25 = v0;
  sub_1000302D8(v0, v7, &qword_100CC0970, &qword_100A592A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001AD070();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v22);
  }

  v15 = v13[*(v8 + 32)];
  sub_100192034();
  v16 = 11.0;
  if ((v15 & 1) == 0)
  {
    sub_10019200C();
    sub_1001993DC();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100192034();
    sub_100192034();
    v16 = 0.0;
    if (EnumCaseMultiPayload != 4)
    {
      v18 = v21;
      sub_10019200C();
      v16 = *&v18[*(v8 + 20)];
      sub_100192034();
    }
  }

  return v16;
}

uint64_t sub_1004E3F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for EnvironmentValues();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = static Edge.Set.top.getter();
  v10 = *(type metadata accessor for AirQualityTopPaddingModifier(0) + 24);
  v30 = v2;
  v11 = v2 + v10;
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    v27 = v7;
    v14 = v13;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v12, 0);
    (*(v28 + 8))(v9, v27);
  }

  sub_10019200C();
  sub_1001993DC();
  swift_getEnumCaseMultiPayload();
  sub_100192034();
  sub_100192034();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_10022C350(&qword_100CC2348, &qword_100A5AE50);
  (*(*(v23 - 8) + 16))(a2, a1, v23);
  result = sub_10022C350(&qword_100CC2350, &unk_100A5AE58);
  v25 = a2 + *(result + 36);
  *v25 = v29;
  *(v25 + 8) = v16;
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  *(v25 + 32) = v22;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_1004E429C()
{
  v0 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v0 - 8);
  sub_10022C350(&qword_100CA7300, &qword_100A51110);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A2C3F0;
  sub_10019200C();
  v2 = sub_100426A40();
  v4 = v3;
  sub_100192034();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  sub_10022C350(&qword_100CC2358, &qword_100A5AE68);
  sub_10023FBF4(&qword_100CC2360, &qword_100CC2358, &qword_100A5AE68, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10002D5A4();
  View.accessibilityInputLabels<A>(_:)();
}

uint64_t sub_1004E4400@<X0>(uint64_t a1@<X8>)
{
  sub_1001993DC();
  v2 = type metadata accessor for AirQualityComponentView(0);
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[7];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = v2[8];
  *(a1 + v6) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v2[9];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  sub_10014AB54();
  ScaledValue.init(wrappedValue:step:)();
  v8 = *(sub_10022C350(&qword_100CC1958, &qword_100A5A398) + 36);
  *(a1 + v8) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970, &qword_100A592A8);
  swift_storeEnumTagMultiPayload();
  v9 = a1 + *(sub_10022C350(&qword_100CC1960, &qword_100A5A3A0) + 36);
  sub_1001993DC();
  v10 = type metadata accessor for AirQualityTopPaddingModifier(0);
  v11 = *(v10 + 20);
  *(v9 + v11) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v12 = v9 + *(v10 + 24);
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  return result;
}

uint64_t sub_1004E4610@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC1378, &qword_100A5A048);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC1368, &qword_100A5A040);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004F0E70(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel(0) + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060, &qword_100A2E120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC1378, &qword_100A5A048);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC1368, &qword_100A5A040);
  result = sub_10022C350(&qword_100CC11C0, &qword_100A59F90);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}