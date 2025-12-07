uint64_t sub_100449038(uint64_t a1)
{
  result = type metadata accessor for CurrentWeather();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004490AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100AC8430 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100449184(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x57746E6572727563;
  }
}

BOOL sub_1004491CC(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (static CurrentWeather.== infix(_:_:)())
  {
    v4 = *(type metadata accessor for VisibilityComponent(0) + 20);
    v5 = a1 + v4;
    v6 = *(a1 + v4);
    v7 = *(a1 + v4 + 8);
    v8 = *(a1 + v4 + 16);
    v9 = *(a1 + v4 + 24);
    v10 = *(a1 + v4 + 32);
    v11 = *(v5 + 40);
    v12 = (a2 + v4);
    v13 = v12[2];
    v14 = v12[3];
    v15 = v12[4];
    v16 = v12[5];
    v17 = v6 == *v12 && v7 == v12[1];
    if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v18 = v8 == v13 && v9 == v14;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v10 == v15 && v11 == v16;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004492B0(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CBA7F8, &qword_100A4FF08);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  sub_1000161C0(a1, a1[3]);
  sub_100449864();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  type metadata accessor for CurrentWeather();
  sub_1004499CC(&qword_100CBA800, &protocol conformance descriptor for CurrentWeather);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for VisibilityComponent(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15 = *(v11 + 4);
    v14 = *(v11 + 5);
    v18 = v12;
    v19 = v13;
    v20 = v15;
    v21 = v14;
    v17[15] = 1;
    sub_100449A10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_10044946C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v28 = v4;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CBA7D8, &qword_100A4FF00);
  sub_1000037C4();
  v29 = v8;
  v30 = v9;
  __chkstk_darwin(v8);
  v10 = type metadata accessor for VisibilityComponent(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_100449864();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v26 = v10;
  v13 = v28;
  LOBYTE(v32) = 0;
  sub_1004499CC(&qword_100CBA7E8, &protocol conformance descriptor for CurrentWeather);
  v14 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = *(v13 + 32);
  v25 = v12;
  v15(v12, v7, v14);
  v36 = 1;
  sub_1004498B8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = sub_10001002C();
  v17(v16);
  v18 = v33;
  v19 = v34;
  v20 = v35;
  v21 = v25;
  v22 = &v25[*(v26 + 20)];
  *v22 = v32;
  *(v22 + 1) = v18;
  *(v22 + 4) = v19;
  *(v22 + 5) = v20;
  sub_10044990C(v21, v27);
  sub_100006F14(a1);
  return sub_100449970(v21);
}

uint64_t sub_100449790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004490AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004497B8(uint64_t a1)
{
  v2 = sub_100449864();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004497F4(uint64_t a1)
{
  v2 = sub_100449864();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100449864()
{
  result = qword_100CBA7E0;
  if (!qword_100CBA7E0)
  {
    result = swift_getWitnessTable(byte_100A4FFD4, &type metadata for VisibilityComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBA7E0);
  }

  return result;
}

unint64_t sub_1004498B8()
{
  result = qword_100CBA7F0;
  if (!qword_100CBA7F0)
  {
    result = swift_getWitnessTable(a5_22, &type metadata for VisibilityComponentPreprocessedDataModel, v0, v1);
    atomic_store(result, &qword_100CBA7F0);
  }

  return result;
}

uint64_t sub_10044990C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisibilityComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100449970(uint64_t a1)
{
  v2 = type metadata accessor for VisibilityComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004499CC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CurrentWeather();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100449A10()
{
  result = qword_100CBA808;
  if (!qword_100CBA808)
  {
    result = swift_getWitnessTable(aM_47, &type metadata for VisibilityComponentPreprocessedDataModel, v0, v1);
    atomic_store(result, &qword_100CBA808);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VisibilityComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100449B44()
{
  result = qword_100CBA810;
  if (!qword_100CBA810)
  {
    result = swift_getWitnessTable(aU_48, &type metadata for VisibilityComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBA810);
  }

  return result;
}

unint64_t sub_100449B9C()
{
  result = qword_100CBA818;
  if (!qword_100CBA818)
  {
    result = swift_getWitnessTable(aZ_2, &type metadata for VisibilityComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBA818);
  }

  return result;
}

unint64_t sub_100449BF4()
{
  result = qword_100CBA820;
  if (!qword_100CBA820)
  {
    result = swift_getWitnessTable(byte_100A4FF44, &type metadata for VisibilityComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBA820);
  }

  return result;
}

uint64_t sub_100449C70(uint64_t a1)
{
  result = type metadata accessor for AirQuality();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100449CDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696C617551726961 && a2 == 0xEA00000000007974)
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

uint64_t sub_100449D7C(void *a1)
{
  v2 = sub_10022C350(&qword_100CBA8D0, &qword_100A500C8);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_10044A204();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for AirQuality();
  sub_10044A2BC(&qword_100CBA8D8, &protocol conformance descriptor for AirQuality);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_100449ED4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for AirQuality();
  sub_1000037C4();
  v21 = v4;
  __chkstk_darwin(v5);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBA8B8, &qword_100A500C0);
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for AirQualityComponent(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10044A204();
  v16 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v17 = v21;
    sub_10044A2BC(&qword_100CBA8C8, &protocol conformance descriptor for AirQuality);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v12, v7);
    (*(v17 + 32))(v15, v22, v3);
    sub_10044A258(v15, v20);
  }

  return sub_100006F14(a1);
}

uint64_t sub_10044A12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100449CDC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10044A158(uint64_t a1)
{
  v2 = sub_10044A204();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10044A194(uint64_t a1)
{
  v2 = sub_10044A204();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10044A204()
{
  result = qword_100CBA8C0;
  if (!qword_100CBA8C0)
  {
    result = swift_getWitnessTable(asc_100A50194, &type metadata for AirQualityComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBA8C0);
  }

  return result;
}

uint64_t sub_10044A258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQualityComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044A2BC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for AirQuality();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualityComponent.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_10044A3B0()
{
  result = qword_100CBA8E0;
  if (!qword_100CBA8E0)
  {
    result = swift_getWitnessTable(byte_100A5016C, &type metadata for AirQualityComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBA8E0);
  }

  return result;
}

unint64_t sub_10044A408()
{
  result = qword_100CBA8E8;
  if (!qword_100CBA8E8)
  {
    result = swift_getWitnessTable(byte_100A500DC, &type metadata for AirQualityComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBA8E8);
  }

  return result;
}

unint64_t sub_10044A460()
{
  result = qword_100CBA8F0[0];
  if (!qword_100CBA8F0[0])
  {
    result = swift_getWitnessTable(asc_100A50104, &type metadata for AirQualityComponent.CodingKeys, v0, v1);
    atomic_store(result, qword_100CBA8F0);
  }

  return result;
}

uint64_t sub_10044A4B4@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
  sub_100006F64(&qword_100CA4B68, &qword_100CA4B60, &qword_100A2EE20, asc_100AA1480);
  v5 = ObservedObject.init(wrappedValue:)();
  v7 = v6;
  sub_10022C350(&qword_100CBA980, &qword_100A502F0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  result = State.init(wrappedValue:)();
  *a3 = a1;
  a3[1] = v5;
  a3[2] = v7;
  a3[3] = v10;
  a3[4] = v11;
  return result;
}

uint64_t sub_10044A5A0()
{
  v1 = v0;
  v2 = type metadata accessor for Location.Identifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  sub_1000E7B34();
  sub_1000E90D8(v8, v11);
  if (sub_100024D10(v11, 1, v2) == 1)
  {
    sub_10044B3F0(v11);
    v35 = *(v0 + 24);
    sub_10022C350(&qword_100CBA9E8, &qword_100A503D8);
    State.wrappedValue.getter();
    v12 = *(v34 + 16);
    v13 = *(v34 + 24);

    if (v13)
    {
      if (qword_100CA26B0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000703C(v14, qword_100D90A78);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_17;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v35 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;

      v19 = sub_100078694(v12, v13, &v35);

      *(v17 + 14) = v19;
      v20 = "StackDestination: No active location, using last location: %{private,mask.hash}s";
    }

    else
    {
      static CurrentLocation.placeholderIdentifier.getter();
      v12 = Location.Identifier.id.getter();
      v30 = v29;
      (*(v3 + 8))(v5, v2);
      if (qword_100CA26B0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000703C(v31, qword_100D90A78);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_17;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v35 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      *(v17 + 14) = sub_100078694(v12, v30, &v35);
      v20 = "StackDestination: No active location, using current location: %{private,mask.hash}s";
    }

    _os_log_impl(&_mh_execute_header, v15, v16, v20, v17, 0x16u);
    sub_100006F14(v18);

LABEL_17:

    return v12;
  }

  v12 = Location.Identifier.id.getter();
  v22 = v21;
  (*(v3 + 8))(v11, v2);
  if (qword_100CA26B0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000703C(v23, qword_100D90A78);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v35 = v27;
    *v26 = 141558275;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    *(v26 + 14) = sub_100078694(v12, v22, &v35);
    _os_log_impl(&_mh_execute_header, v24, v25, "StackDestination: Using active location: %{private,mask.hash}s", v26, 0x16u);
    sub_100006F14(v27);
  }

  v35 = *(v1 + 24);

  sub_10022C350(&qword_100CBA9E8, &qword_100A503D8);
  State.wrappedValue.getter();
  v28 = v34;
  *(v34 + 16) = v12;
  *(v28 + 24) = v22;

  return v12;
}

uint64_t sub_10044AB48()
{
  v0 = type metadata accessor for ZoomNavigationTransition();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = sub_10044A5A0();
  v6[1] = v4;
  sub_1000E9170();
  static NavigationTransition<>.zoom<A>(sourceID:in:)();

  sub_10022C350(&qword_100CBA9D8, &unk_100A503C8);
  sub_100006F64(&qword_100CBA9E0, &qword_100CBA9D8, &unk_100A503C8, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.navigationTransition<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10044ACFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v35 = a1;
  v36 = a2;
  v4 = type metadata accessor for RoundedRectangle();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v8 = (v7 - v6);
  v33 = type metadata accessor for CodableColor();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for SkyBackgroundGradient();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v34 = sub_10022C350(&qword_100CB7A88, &qword_100A4BA38);
  sub_1000037C4();
  v23 = v22;
  __chkstk_darwin(v24);
  v26 = &v33 - v25;
  WeatherConditionBackgroundModel.gradient.getter();
  SkyBackgroundGradient.middleColor.getter();
  (*(v17 + 8))(v21, v15);
  CodableColor.color.getter();
  (*(v10 + 8))(v14, v33);
  v27 = type metadata accessor for EmptyMatchedTransitionSourceConfiguration();
  MatchedTransitionSourceConfiguration.background(_:)();

  v28 = *(v5 + 28);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  type metadata accessor for RoundedCornerStyle();
  sub_100003A9C();
  (*(v30 + 104))(v8 + v28, v29);
  *v8 = a3;
  v8[1] = a3;
  v37 = v27;
  v38 = &protocol witness table for EmptyMatchedTransitionSourceConfiguration;
  swift_getOpaqueTypeConformance2();
  v31 = v34;
  MatchedTransitionSourceConfiguration.clipShape(_:)();
  sub_100433DB4(v8);
  return (*(v23 + 8))(v26, v31);
}

uint64_t sub_10044AFF8(double a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for RoundedRectangle();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v8 = (v7 - v6);
  v9 = sub_10022C350(&qword_100CBA9F0, &unk_100A503E0);
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  v15 = *(v5 + 28);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  type metadata accessor for RoundedCornerStyle();
  sub_100003A9C();
  (*(v17 + 104))(v8 + v15, v16);
  *v8 = a1;
  v8[1] = a1;
  v18 = type metadata accessor for EmptyMatchedTransitionSourceConfiguration();
  MatchedTransitionSourceConfiguration.clipShape(_:)();
  sub_100433DB4(v8);
  v20[0] = v18;
  v20[1] = &protocol witness table for EmptyMatchedTransitionSourceConfiguration;
  swift_getOpaqueTypeConformance2();
  MatchedTransitionSourceConfiguration.background(_:)();
  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_10044B1D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_10044B210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10044B268()
{
  result = qword_100CBA988;
  if (!qword_100CBA988)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBA990, &qword_100A50358);
    v4[0] = sub_10044B2F4();
    v4[1] = sub_1000E7664();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBA988);
  }

  return result;
}

unint64_t sub_10044B2F4()
{
  result = qword_100CBA998;
  if (!qword_100CBA998)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBA9A0, &qword_100A50360);
    v4[0] = sub_1000E7558();
    v4[1] = sub_10044B380();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBA998);
  }

  return result;
}

unint64_t sub_10044B380()
{
  result = qword_100CBA9C8;
  if (!qword_100CBA9C8)
  {
    result = swift_getWitnessTable(byte_100A50378, &type metadata for WeatherPresentationStyleSourceModifier, v0, v1);
    atomic_store(result, &qword_100CBA9C8);
  }

  return result;
}

uint64_t sub_10044B3F0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for InteractiveMapViewModel(uint64_t a1)
{
  result = qword_100CBAA50;
  if (!qword_100CBAA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10044B4CC(uint64_t a1)
{
  type metadata accessor for WeatherMapOverlayKind();
  if (v1 <= 0x3F)
  {
    sub_10044B6F4(319, &qword_100CAEE08, &type metadata accessor for Location, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_10044B68C(319);
      if (v3 <= 0x3F)
      {
        sub_100007760();
        if (v4 <= 0x3F)
        {
          sub_10044B6F4(319, &qword_100CB4360, type metadata accessor for WeatherData, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            type metadata accessor for WeatherMapTrackingState(319);
            if (v6 <= 0x3F)
            {
              sub_10044B6F4(319, &qword_100CA5080, type metadata accessor for ContentStatusBanner, &type metadata accessor for Optional);
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

void sub_10044B68C(uint64_t a1)
{
  if (!qword_100CBAA60)
  {
    type metadata accessor for WeatherData(255);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CBAA60);
    }
  }
}

void sub_10044B6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL sub_10044B758(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for ContentStatusBanner(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  v10 = sub_10022C350(&qword_100CA50C0, &qword_100A2F2F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v61 = &v58 - v12;
  type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  v15 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = (&v58 - v17);
  v19 = sub_10022C350(&qword_100CB4398, &unk_100A47700);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  if ((static WeatherMapOverlayKind.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v59 = v6;
  v23 = type metadata accessor for InteractiveMapViewModel(0);
  sub_1000B9728();
  if ((v24 & 1) == 0)
  {
    return 0;
  }

  v25 = v23[6];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v26 == *v28 && v27 == v28[1];
  if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1002DBCBC();
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  sub_1000038F8();
  if (!v29)
  {
    return 0;
  }

  sub_1000038F8();
  if (!v29)
  {
    return 0;
  }

  sub_100005D84();
  if (v32)
  {
    if (!v33)
    {
      return 0;
    }

    v36 = *v34 == *v35 && v32 == v33;
    if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  sub_1000038F8();
  if (!v29)
  {
    return 0;
  }

  sub_1000038F8();
  if (!v29)
  {
    return 0;
  }

  sub_1000038F8();
  if (!v29)
  {
    return 0;
  }

  if (*(a1 + v23[14]) != *(a2 + v23[14]))
  {
    return 0;
  }

  sub_1000038F8();
  if (!v29)
  {
    return 0;
  }

  sub_100005D84();
  if (v37)
  {
    if (!v38)
    {
      return 0;
    }

    v41 = *v39 == *v40 && v37 == v38;
    if (!v41 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  sub_1000038F8();
  if (!v29)
  {
    return 0;
  }

  v58 = v23[18];
  v42 = *(v19 + 48);
  sub_100035AD0(a1 + v58, v22, &qword_100CA3898, &qword_100A314D0);
  v43 = a2 + v58;
  v58 = v42;
  sub_100035AD0(v43, &v22[v42], &qword_100CA3898, &qword_100A314D0);
  sub_10000554C(v22);
  if (!v29)
  {
    sub_100035AD0(v22, v18, &qword_100CA3898, &qword_100A314D0);
    sub_10000554C(&v22[v58]);
    if (!v44)
    {
      sub_10003DF24(&v22[v58], v15, type metadata accessor for WeatherData);
      v48 = sub_100883064(v18, v15);
      sub_10044BD80(v15, type metadata accessor for WeatherData);
      sub_10044BD80(v18, type metadata accessor for WeatherData);
      sub_1000180EC(v22, &qword_100CA3898, &qword_100A314D0);
      if ((v48 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_54;
    }

    sub_10044BD80(v18, type metadata accessor for WeatherData);
LABEL_51:
    v45 = &qword_100CB4398;
    v46 = &unk_100A47700;
    v47 = v22;
LABEL_52:
    sub_1000180EC(v47, v45, v46);
    return 0;
  }

  sub_10000554C(&v22[v58]);
  if (!v29)
  {
    goto LABEL_51;
  }

  sub_1000180EC(v22, &qword_100CA3898, &qword_100A314D0);
LABEL_54:
  if ((sub_1000BBBA8(a1 + v23[19], a2 + v23[19]) & 1) == 0)
  {
    return 0;
  }

  v49 = v23[20];
  v50 = *(v10 + 48);
  v51 = a1 + v49;
  v52 = v61;
  sub_100035AD0(v51, v61, &qword_100CA5010, &unk_100A2F250);
  sub_100035AD0(a2 + v49, v52 + v50, &qword_100CA5010, &unk_100A2F250);
  if (sub_100024D10(v52, 1, v60) == 1)
  {
    if (sub_100024D10(v61 + v50, 1, v60) == 1)
    {
      sub_1000180EC(v61, &qword_100CA5010, &unk_100A2F250);
      return 1;
    }

    goto LABEL_60;
  }

  v53 = v61;
  sub_100035AD0(v61, v9, &qword_100CA5010, &unk_100A2F250);
  if (sub_100024D10(v53 + v50, 1, v60) == 1)
  {
    sub_10044BD80(v9, type metadata accessor for ContentStatusBanner);
LABEL_60:
    v45 = &qword_100CA50C0;
    v46 = &qword_100A2F2F0;
    v47 = v61;
    goto LABEL_52;
  }

  v54 = v61;
  v55 = v61 + v50;
  v56 = v59;
  sub_10003DF24(v55, v59, type metadata accessor for ContentStatusBanner);
  v57 = sub_100133BA0(v9, v56);
  sub_10044BD80(v56, type metadata accessor for ContentStatusBanner);
  sub_10044BD80(v9, type metadata accessor for ContentStatusBanner);
  sub_1000180EC(v54, &qword_100CA5010, &unk_100A2F250);
  return v57;
}

uint64_t sub_10044BD80(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10044BDE8@<X0>(uint64_t a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for LocationViewComponentContainerDescriptor(0, a2, a3, a4);
  v6 = sub_100588E2C(v5);
  if (v6)
  {
    sub_1001B3B30(v6 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, a1);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for LocationComponentContainerViewModel(0);

  return sub_10001B350(a1, v7, 1, v8);
}

uint64_t type metadata accessor for TemperatureAveragesHeroChartView(uint64_t a1)
{
  result = qword_100CBAB28;
  if (!qword_100CBAB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10044BEEC(uint64_t a1)
{
  sub_1000077F0();
  if (v1 <= 0x3F)
  {
    sub_10013BCD0(319);
    if (v2 <= 0x3F)
    {
      sub_10044BFA8();
      if (v3 <= 0x3F)
      {
        type metadata accessor for TemperatureAveragesHeroChartViewModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10044BFA8()
{
  result = qword_100CBAB38;
  if (!qword_100CBAB38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CBAB38);
  }

  return result;
}

uint64_t sub_10044C020@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CBAB78, &qword_100A504D8);
  return sub_10044C070(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_10044C070@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = sub_10022C350(&qword_100CBAB80, &unk_100A504E0);
  __chkstk_darwin(v51);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v48 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  __chkstk_darwin(v48);
  v10 = &v44 - v9;
  v11 = sub_10022C350(&qword_100CBAB88, &qword_100A504F0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = sub_10022C350(&qword_100CBAB90, &qword_100A504F8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v50 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v52 = &v44 - v18;
  v49 = a1;
  sub_10044C59C(a1, v13);
  v19 = enum case for DynamicTypeSize.accessibility1(_:);
  v20 = type metadata accessor for DynamicTypeSize();
  (*(*(v20 - 8) + 104))(v10, v19, v20);
  sub_100453C4C(&qword_100CA5390, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v45 = v14;
  v46 = a2;
  v47 = v5;
  sub_100452628();
  sub_10023FBF4(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
  View.dynamicTypeSize<A>(_:)();
  sub_100018198(v10, &unk_100CE1680);
  sub_100018198(v13, &qword_100CBAB88);
  v21 = v49 + *(type metadata accessor for TemperatureAveragesHeroChartView(0) + 32);
  v22 = *(v21 + 80);
  v23 = *(v21 + 88);
  v24 = *(v21 + 96);
  v25 = *(v21 + 104);
  type metadata accessor for ConditionDetailLegendView(0);

  Text.Measurements.init()();
  *v8 = v22;
  *(v8 + 1) = v23;
  *(v8 + 2) = v24;
  v8[24] = v25;
  if (qword_100CA2198 != -1)
  {
LABEL_5:
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5FD8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  swift_endAccess();
  v34 = static Edge.Set.all.getter();
  v35 = v50;
  v36 = &v8[*(v51 + 36)];
  *v36 = v34;
  *(v36 + 1) = v27;
  *(v36 + 2) = v29;
  *(v36 + 3) = v31;
  *(v36 + 4) = v33;
  v36[40] = 0;
  v37 = *(v15 + 16);
  v38 = v8;
  v39 = v52;
  v40 = v45;
  v37(v35, v52, v45);
  v41 = v47;
  sub_100095588();
  v37(v46, v35, v40);
  sub_10022C350(&qword_100CBABB0, &qword_100A50508);
  sub_100095588();
  sub_100018198(v38, &qword_100CBAB80);
  v42 = *(v15 + 8);
  v42(v39, v40);
  sub_100018198(v41, &qword_100CBAB80);
  return (v42)(v35, v40);
}

uint64_t sub_10044C59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v168 = *(v3 - 8);
  v169 = v3;
  __chkstk_darwin(v3);
  v167 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v128 = *(v5 - 8);
  v129 = v5;
  __chkstk_darwin(v5);
  v127 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessibilityChildBehavior();
  v165 = *(v7 - 8);
  v166 = v7;
  __chkstk_darwin(v7);
  v164 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v152);
  v158 = (&v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TemperatureAveragesHeroChartView(0);
  v11 = v10 - 8;
  v150 = *(v10 - 8);
  v149 = *(v150 + 64);
  __chkstk_darwin(v10);
  v148 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AutomaticScaleDomain();
  v14 = *(v13 - 8);
  v143 = v13;
  v144 = v14;
  __chkstk_darwin(v13);
  v138 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CBABB8, &qword_100A50510);
  __chkstk_darwin(v16 - 8);
  v18 = &v127 - v17;
  v19 = type metadata accessor for PlotDimensionScaleRange();
  v20 = *(v19 - 8);
  v133 = v19;
  v134 = v20;
  __chkstk_darwin(v19);
  v22 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CBABC0, &qword_100A50518);
  v132 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v127 - v24;
  v135 = sub_10022C350(&qword_100CBABC8, &qword_100A50520);
  v137 = *(v135 - 8);
  __chkstk_darwin(v135);
  v131 = &v127 - v26;
  v27 = sub_10022C350(&qword_100CBABD0, &qword_100A50528);
  v28 = *(v27 - 8);
  v139 = v27;
  v140 = v28;
  __chkstk_darwin(v27);
  v171 = &v127 - v29;
  v30 = sub_10022C350(&qword_100CBABD8, &qword_100A50530);
  v31 = *(v30 - 8);
  v141 = v30;
  v142 = v31;
  __chkstk_darwin(v30);
  v136 = &v127 - v32;
  v33 = sub_10022C350(&qword_100CBABE0, &qword_100A50538);
  v34 = *(v33 - 8);
  v146 = v33;
  v147 = v34;
  __chkstk_darwin(v33);
  v172 = &v127 - v35;
  v151 = sub_10022C350(&qword_100CBABE8, &qword_100A50540);
  __chkstk_darwin(v151);
  v145 = &v127 - v36;
  v37 = sub_10022C350(&qword_100CBABF0, &qword_100A50548);
  v154 = *(v37 - 8);
  v155 = v37;
  __chkstk_darwin(v37);
  v153 = &v127 - v38;
  v156 = sub_10022C350(&qword_100CBABF8, &qword_100A50550);
  __chkstk_darwin(v156);
  v157 = &v127 - v39;
  v40 = sub_10022C350(&qword_100CBAC00, &qword_100A50558);
  v162 = *(v40 - 8);
  v163 = v40;
  __chkstk_darwin(v40);
  v161 = &v127 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v160 = &v127 - v43;
  v44 = type metadata accessor for DetailHeroChartHeaderView(0);
  __chkstk_darwin(v44);
  v159 = &v127 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = (&v127 - v47);
  v49 = *(v11 + 40);
  v50 = a1;
  v174 = a1;
  v51 = (a1 + v49);
  v52 = v51[1];
  v185 = *v51;
  v186 = v52;
  v53 = v51[3];
  v187 = v51[2];
  v188 = v53;
  type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
  sub_100453D94();
  v54 = v188;
  v48[2] = v187;
  v48[3] = v54;
  v55 = v186;
  *v48 = v185;
  v48[1] = v55;
  *&v182 = 0x3FF0000000000000;
  sub_1004526D8(&v185, &v179);
  sub_10014AB54();
  v173 = v48;
  ScaledMetric.init(wrappedValue:)();
  v177 = v50;
  sub_10022C350(&qword_100CBAC08, &qword_100A50560);
  sub_10045273C();
  Chart.init(content:)();
  static PositionScaleRange<>.plotDimension.getter();
  v130 = type metadata accessor for ScaleType();
  sub_10001B350(v18, 1, 1, v130);
  v56 = sub_10023FBF4(&qword_100CBACB8, &qword_100CBABC0, &qword_100A50518, &protocol conformance descriptor for Chart<A>);
  v57 = v133;
  View.chartXScale<A>(range:type:)();
  sub_100018198(v18, &qword_100CBABB8);
  v134 = *(v134 + 8);
  (v134)(v22, v57);
  (*(v132 + 8))(v25, v23);
  v58 = v138;
  static ScaleDomain<>.automatic(includesZero:reversed:)();
  static PositionScaleRange<>.plotDimension.getter();
  sub_10001B350(v18, 1, 1, v130);
  *&v179 = v23;
  *(&v179 + 1) = v57;
  *&v180 = v56;
  *(&v180 + 1) = &protocol witness table for PlotDimensionScaleRange;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v58;
  v61 = v135;
  v62 = v143;
  v63 = v131;
  View.chartYScale<A, B>(domain:range:type:)();
  sub_100018198(v18, &qword_100CBABB8);
  (v134)(v22, v57);
  (*(v144 + 8))(v60, v62);
  (*(v137 + 8))(v63, v61);
  v64 = v174;
  v176 = v174;
  v65 = sub_10022C350(&qword_100CBACC0, &qword_100A505C0);
  *&v179 = v61;
  *(&v179 + 1) = v62;
  *&v180 = v57;
  *(&v180 + 1) = OpaqueTypeConformance2;
  *&v181 = &protocol witness table for AutomaticScaleDomain;
  *(&v181 + 1) = &protocol witness table for PlotDimensionScaleRange;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = sub_10023FBF4(&qword_100CBACC8, &qword_100CBACC0, &qword_100A505C0, &protocol conformance descriptor for AxisMarks<A>);
  v68 = v136;
  v69 = v139;
  v70 = v171;
  View.chartXAxis<A>(content:)();
  (*(v140 + 8))(v70, v69);
  v175 = v64;
  v171 = sub_10022C350(&qword_100CBACD0, &unk_100A505C8);
  *&v179 = v69;
  *(&v179 + 1) = v65;
  *&v180 = v66;
  *(&v180 + 1) = v67;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = sub_10023FBF4(&qword_100CBACD8, &qword_100CBACD0, &unk_100A505C8, &protocol conformance descriptor for AxisMarks<A>);
  v73 = v141;
  View.chartYAxis<A>(content:)();
  (*(v142 + 8))(v68, v73);
  sub_100453D94();
  swift_allocObject();
  sub_100453E40();
  static Alignment.center.getter();
  sub_10022C350(&qword_100CBACE0, &qword_100A505D8);
  *&v179 = v73;
  *(&v179 + 1) = v171;
  *&v180 = v71;
  *(&v180 + 1) = v72;
  swift_getOpaqueTypeConformance2();
  sub_10023FBF4(&qword_100CBACE8, &qword_100CBACE0, &qword_100A505D8, &protocol conformance descriptor for GeometryReader<A>);
  v74 = v146;
  v75 = v145;
  v76 = v172;
  View.chartOverlay<A>(alignment:content:)();

  (*(v147 + 8))(v76, v74);
  v77 = static Alignment.center.getter();
  v79 = v78;
  v80 = v75 + *(sub_10022C350(&qword_100CBACF0, &unk_100A505E0) + 36);
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v81 = sub_1004B5F4C();
  v82 = *(v152 + 20);
  v83 = enum case for RoundedCornerStyle.continuous(_:);
  v84 = type metadata accessor for RoundedCornerStyle();
  v85 = v158;
  (*(*(v84 - 8) + 104))(v158 + v82, v83, v84);
  *v85 = v81;
  v85[1] = v81;
  v86 = sub_1004B5F70();
  swift_endAccess();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_100453D94();
  v87 = v80 + *(sub_10022C350(&qword_100CBACF8, &unk_100A66F00) + 36);
  v88 = v183;
  *v87 = v182;
  *(v87 + 16) = v88;
  *(v87 + 32) = v184;
  v89 = sub_10022C350(&qword_100CBAD00, &unk_100A505F0);
  *(v80 + *(v89 + 52)) = v86;
  *(v80 + *(v89 + 56)) = 256;
  v90 = static Alignment.center.getter();
  v92 = v91;
  sub_100453DEC(v85, &type metadata accessor for RoundedRectangle);
  v93 = (v80 + *(sub_10022C350(&qword_100CBAD08, &qword_100A66F10) + 36));
  *v93 = v90;
  v93[1] = v92;
  v94 = (v80 + *(sub_10022C350(&qword_100CBAD10, &qword_100A50600) + 36));
  *v94 = v77;
  v94[1] = v79;
  sub_1004B5F28();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v95 = (v75 + *(v151 + 36));
  v96 = v180;
  v97 = v181;
  *v95 = v179;
  v95[1] = v96;
  v95[2] = v97;
  v98 = *v174;
  if (*(v174 + 8) == 1)
  {
    v99 = v164;
    v100 = v153;
    if ((v98 & 1) == 0)
    {
LABEL_5:
      static AccessibilityChildBehavior.ignore.getter();
      goto LABEL_8;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v101 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v102 = v127;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v98, 0);
    (*(v128 + 8))(v102, v129);
    v99 = v164;
    v100 = v153;
    if (v178 != 1)
    {
      goto LABEL_5;
    }
  }

  static AccessibilityChildBehavior.contain.getter();
LABEL_8:
  sub_100452E94();
  View.accessibilityElement(children:)();
  (*(v165 + 8))(v99, v166);
  sub_100018198(v75, &qword_100CBABE8);
  v103 = static Edge.Set.horizontal.getter();
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004BA278();
  swift_endAccess();
  EdgeInsets.init(_all:)();
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v112 = v157;
  (*(v154 + 32))(v157, v100, v155);
  v113 = v112 + *(v156 + 36);
  *v113 = v103;
  *(v113 + 8) = v105;
  *(v113 + 16) = v107;
  *(v113 + 24) = v109;
  *(v113 + 32) = v111;
  *(v113 + 40) = 0;
  v115 = v167;
  v114 = v168;
  v116 = v169;
  (*(v168 + 104))(v167, enum case for DynamicTypeSize.large(_:), v169);
  sub_100453270();
  v117 = v160;
  View.dynamicTypeSize(_:)();
  (*(v114 + 8))(v115, v116);
  sub_100018198(v112, &qword_100CBABF8);
  v118 = v159;
  sub_100453D94();
  v120 = v161;
  v119 = v162;
  v121 = *(v162 + 16);
  v122 = v163;
  v121(v161, v117, v163);
  v123 = v170;
  sub_100453D94();
  v124 = sub_10022C350(&qword_100CBAD38, &qword_100A50608);
  v121((v123 + *(v124 + 48)), v120, v122);
  v125 = *(v119 + 8);
  v125(v117, v122);
  sub_100453DEC(v173, type metadata accessor for DetailHeroChartHeaderView);
  v125(v120, v122);
  return sub_100453DEC(v118, type metadata accessor for DetailHeroChartHeaderView);
}

uint64_t sub_10044D994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v188 = a2;
  v153 = type metadata accessor for LollipopMark(0);
  __chkstk_darwin(v153);
  v152 = &v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
  __chkstk_darwin(active);
  v150 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for PeakUpperMark(0);
  __chkstk_darwin(v154);
  v144 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA5138, &unk_100A50700);
  __chkstk_darwin(v6 - 8);
  v148 = &v142 - v7;
  v147 = type metadata accessor for PeakUpperMarkModel(0);
  __chkstk_darwin(v147);
  v143 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CBACA0, &qword_100A505B8);
  __chkstk_darwin(v9 - 8);
  v151 = &v142 - v10;
  v180 = type metadata accessor for DetailHeroChartLollipopModel(0);
  __chkstk_darwin(v180);
  v189 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CBAC90, &qword_100A505B0);
  __chkstk_darwin(v12 - 8);
  v187 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v186 = &v142 - v15;
  v179 = type metadata accessor for PeakKnockoutMark(0);
  __chkstk_darwin(v179);
  v146 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CA5130, &unk_100A2F370);
  __chkstk_darwin(v17 - 8);
  v178 = &v142 - v18;
  v177 = type metadata accessor for TemperatureAveragesHeroChartViewModel.PeakMarkModel(0);
  __chkstk_darwin(v177);
  v145 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CBAC78, &qword_100A505A8);
  __chkstk_darwin(v20 - 8);
  v185 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v190 = &v142 - v23;
  v174 = sub_10022C350(&qword_100CBAC48, &unk_100A6E960);
  v176 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = &v142 - v24;
  v173 = sub_10022C350(&qword_100CBAC40, &unk_100A50580);
  v175 = *(v173 - 8);
  __chkstk_darwin(v173);
  v171 = &v142 - v25;
  v26 = sub_10022C350(&qword_100CBAE20, &unk_100A50710);
  v183 = *(v26 - 8);
  v184 = v26;
  __chkstk_darwin(v26);
  v182 = &v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v193 = &v142 - v29;
  v30 = type metadata accessor for TemperatureAveragesHeroChartView(0);
  v31 = v30 - 8;
  __chkstk_darwin(v30);
  v159 = v32;
  v33 = &v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_10022C350(&qword_100CBAC20, &unk_100A50570);
  v168 = *(v167 - 8);
  __chkstk_darwin(v167);
  v163 = &v142 - v34;
  v169 = sub_10022C350(&qword_100CBAC18, &qword_100A50568);
  v170 = *(v169 - 8);
  __chkstk_darwin(v169);
  v160 = &v142 - v35;
  v192 = sub_10022C350(&qword_100CBAE28, &unk_100A6E940);
  v181 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v142 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v195 = &v142 - v38;
  v39 = *(v31 + 40);
  v162 = a1;
  v194 = a1 + v39;
  v200 = *(a1 + v39 + 72);
  KeyPath = swift_getKeyPath();
  v161 = type metadata accessor for TemperatureAveragesHeroChartView;
  v157 = v33;
  sub_100453D94();
  swift_allocObject();
  v158 = type metadata accessor for TemperatureAveragesHeroChartView;
  sub_100453E40();

  v166 = sub_10022C350(&qword_100CBAE30, &qword_100A50750);
  v155 = sub_10022C350(&qword_100CBAE38, &qword_100A50758);
  v165 = sub_10023FBF4(&qword_100CBAE40, &qword_100CBAE30, &qword_100A50750, &protocol conformance descriptor for [A]);
  v164 = sub_100453C4C(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v40 = type metadata accessor for AreaMark();
  v41 = sub_10022E824(&qword_100CBAC30, &unk_100A6E950);
  v42 = sub_10023FBF4(&qword_100CBAC38, &qword_100CBAC30, &unk_100A6E950, &protocol conformance descriptor for _OpacityShapeStyle<A>);
  v196 = v40;
  v197 = v41;
  v198 = &protocol witness table for AreaMark;
  v199 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v163;
  ForEach<>.init(_:id:content:)();
  v44 = sub_1004528C8();
  v45 = v160;
  v46 = v167;
  ChartContent.interpolationMethod(_:)();
  (*(v168 + 8))(v43, v46);
  v196 = v46;
  v197 = v44;
  swift_getOpaqueTypeConformance2();
  v47 = v169;
  ChartContent.alignsMarkStylesWithPlotArea(_:)();
  (*(v170 + 8))(v45, v47);
  v200 = *(v194 + 64);
  swift_getKeyPath();
  sub_100453D94();
  swift_allocObject();
  sub_100453E40();

  sub_10022C350(&qword_100CBAE48, &qword_100A50760);
  v48 = sub_10022E824(&qword_100CBAC58, &unk_100A50590);
  v49 = type metadata accessor for RectangleMark();
  v50 = sub_10022E824(&qword_100CBAC60, &unk_100A6E970);
  v51 = sub_10022E824(&qword_100CBAC68, &qword_100A505A0);
  v196 = type metadata accessor for LineMark();
  v197 = &protocol witness table for LineMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v196 = v51;
  v197 = OpaqueTypeConformance2;
  v53 = swift_getOpaqueTypeConformance2();
  v196 = v50;
  v197 = &type metadata for LinearGradient;
  v198 = v53;
  v199 = &protocol witness table for LinearGradient;
  v54 = swift_getOpaqueTypeConformance2();
  v196 = v48;
  v197 = v49;
  v198 = v54;
  v199 = &protocol witness table for RectangleMark;
  swift_getOpaqueTypeConformance2();
  v55 = v172;
  v56 = v177;
  ForEach<>.init(_:id:content:)();
  v57 = sub_1004529DC();
  v58 = v171;
  v59 = v174;
  ChartContent.interpolationMethod(_:)();
  (*(v176 + 8))(v55, v59);
  v196 = v59;
  v197 = v57;
  swift_getOpaqueTypeConformance2();
  v60 = v173;
  ChartContent.alignsMarkStylesWithPlotArea(_:)();
  v61 = v178;
  (*(v175 + 8))(v58, v60);
  type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
  sub_100095588();
  if (sub_100024D10(v61, 1, v56) == 1)
  {
    sub_100018198(v61, &qword_100CA5130);
    v62 = 1;
    v63 = v190;
    v64 = v179;
  }

  else
  {
    v65 = v145;
    sub_100453E40();
    v66 = type metadata accessor for Date();
    v67 = v146;
    (*(*(v66 - 8) + 16))(v146, v65, v66);
    v68 = *(v65 + *(v56 + 20));
    v177 = LocalizedStringKey.init(stringLiteral:)();
    v70 = v69;
    v72 = v71;
    v178 = v73;
    v74 = LocalizedStringKey.init(stringLiteral:)();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    sub_100453DEC(v65, type metadata accessor for TemperatureAveragesHeroChartViewModel.PeakMarkModel);
    v81 = v179;
    *&v67[*(v179 + 20)] = v68;
    v67[v81[6]] = 1;
    v82 = &v67[v81[8]];
    *v82 = v74;
    *(v82 + 1) = v76;
    v82[16] = v78 & 1;
    *(v82 + 3) = v80;
    v83 = &v67[v81[7]];
    *v83 = v177;
    *(v83 + 1) = v70;
    v83[16] = v72 & 1;
    *(v83 + 3) = v178;
    v84 = v190;
    sub_100453E40();
    v62 = 0;
    v63 = v84;
    v64 = v81;
  }

  sub_10001B350(v63, v62, 1, v64);
  v85 = v189;
  sub_100453D94();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = v150;
    sub_100453E40();
    v87 = v152;
    sub_100453D94();
    v88 = LocalizedStringKey.init(stringLiteral:)();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v95 = LocalizedStringKey.init(stringLiteral:)();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    sub_100453DEC(v86, type metadata accessor for DetailHeroChartActiveLollipopModel);
    v102 = v153;
    v103 = &v87[*(v153 + 24)];
    *v103 = v95;
    *(v103 + 1) = v97;
    v103[16] = v99 & 1;
    *(v103 + 3) = v101;
    v104 = &v87[*(v102 + 20)];
    *v104 = v88;
    *(v104 + 1) = v90;
    v104[16] = v92 & 1;
    *(v104 + 3) = v94;
    v105 = v186;
    sub_100453E40();
    sub_10022C350(&qword_100CBAE50, &qword_100A50768);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v106 = v148;
    sub_100095588();
    if (sub_100024D10(v106, 1, v147) == 1)
    {
      sub_100018198(v106, &qword_100CA5138);
      v107 = 1;
      v105 = v186;
      v108 = v154;
      v109 = v151;
    }

    else
    {
      v110 = v143;
      sub_100453E40();
      v111 = v144;
      sub_100453D94();
      v112 = static Color.primary.getter();
      v113 = LocalizedStringKey.init(stringLiteral:)();
      v115 = v114;
      v117 = v116;
      v194 = v118;
      v119 = LocalizedStringKey.init(stringLiteral:)();
      v121 = v120;
      v123 = v122;
      v125 = v124;
      sub_100453DEC(v110, type metadata accessor for PeakUpperMarkModel);
      v126 = v154;
      *&v111[*(v154 + 20)] = v112;
      v108 = v126;
      *&v111[v126[6]] = 0x4024000000000000;
      v127 = &v111[v126[7]];
      *v127 = v113;
      *(v127 + 1) = v115;
      v85 = v189;
      v127[16] = v117 & 1;
      *(v127 + 3) = v194;
      v128 = &v111[v126[8]];
      *v128 = v119;
      *(v128 + 1) = v121;
      v128[16] = v123 & 1;
      *(v128 + 3) = v125;
      v109 = v151;
      sub_100453E40();
      v107 = 0;
      v105 = v186;
    }

    sub_10001B350(v109, v107, 1, v108);
    sub_100453D24(v109, v105);
    sub_10022C350(&qword_100CBAE50, &qword_100A50768);
    swift_storeEnumTagMultiPayload();
    sub_100453DEC(v85, type metadata accessor for DetailHeroChartLollipopModel);
  }

  v129 = v181;
  v130 = v191;
  (*(v181 + 16))(v191, v195, v192);
  v196 = v130;
  v131 = v182;
  v132 = v183;
  v133 = v193;
  v134 = v184;
  (*(v183 + 16))(v182, v193, v184);
  v197 = v131;
  v135 = v190;
  v136 = v185;
  sub_100095588();
  v198 = v136;
  v137 = v187;
  sub_100095588();
  v199 = v137;
  sub_10063A070(&v196, v188);
  sub_100018198(v105, &qword_100CBAC90);
  sub_100018198(v135, &qword_100CBAC78);
  v138 = *(v132 + 8);
  v138(v133, v134);
  v139 = *(v129 + 8);
  v140 = v192;
  v139(v195, v192);
  sub_100018198(v137, &qword_100CBAC90);
  sub_100018198(v136, &qword_100CBAC78);
  v138(v131, v134);
  return (v139)(v191, v140);
}

uint64_t sub_10044EEE4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_10022C350(&qword_100CAD9A0, &qword_100A3CD10);
  __chkstk_darwin(v1 - 8);
  v31 = v25 - v2;
  v3 = sub_10022C350(&qword_100CBAE58, &unk_100A6E910);
  __chkstk_darwin(v3 - 8);
  *&v28 = v25 - v4;
  v5 = sub_10022C350(&qword_100CB6950, &unk_100A50770);
  __chkstk_darwin(v5 - 8);
  v27 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CB6970, &qword_100A70970);
  __chkstk_darwin(v12 - 8);
  v25[1] = v25 - v13;
  v14 = type metadata accessor for AreaMark();
  v15 = *(v14 - 8);
  v29 = v14;
  v30 = v15;
  __chkstk_darwin(v14);
  v26 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.date.getter();
  static PlottableValue.value(_:_:)();

  (*(v9 + 8))(v11, v8);
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.secondValue.getter();
  v34 = v17;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.value.getter();
  v34 = v18;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v34 = 0x65676172657661;
  *&v35 = 0xE700000000000000;
  static PlottableValue.value(_:_:)();

  v19 = v26;
  AreaMark.init<A, B, C>(x:yStart:yEnd:series:)();
  type metadata accessor for TemperatureAveragesHeroChartView(0);
  type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
  v20 = v31;
  sub_1001C7668();
  v21 = type metadata accessor for ColorSchemeContrast();
  sub_10001B350(v20, 0, 1, v21);
  DetailChartGradientModel.linearGradient(minValue:maxValue:colorSchemeContrast:)();
  v22 = v38;
  v32 = v39;
  v28 = v40;
  sub_100018198(v20, &qword_100CAD9A0);
  v34 = v22;
  v36 = v28;
  v35 = v32;
  v37 = 1056964608;
  sub_10022C350(&qword_100CBAC30, &unk_100A6E950);
  sub_10023FBF4(&qword_100CBAC38, &qword_100CBAC30, &unk_100A6E950, &protocol conformance descriptor for _OpacityShapeStyle<A>);
  v23 = v29;
  ChartContent.foregroundStyle<A>(_:)();
  sub_10028164C(&v38);
  return (*(v30 + 8))(v19, v23);
}

uint64_t sub_10044F500@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_10022C350(&qword_100CAD9A0, &qword_100A3CD10);
  __chkstk_darwin(v1 - 8);
  v43 = v31 - v2;
  v3 = sub_10022C350(&qword_100CBAE58, &unk_100A6E910);
  __chkstk_darwin(v3 - 8);
  v31[3] = v31 - v4;
  v5 = sub_10022C350(&qword_100CB6950, &unk_100A50770);
  __chkstk_darwin(v5 - 8);
  v31[2] = v31 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CB6970, &qword_100A70970);
  __chkstk_darwin(v11 - 8);
  v31[1] = v31 - v12;
  v35 = type metadata accessor for LineMark();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10022C350(&qword_100CBAC68, &qword_100A505A0);
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = v31 - v15;
  v41 = sub_10022C350(&qword_100CBAC60, &unk_100A6E970);
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v36 = v31 - v16;
  v42 = sub_10022C350(&qword_100CBAC58, &unk_100A50590);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = v31 - v17;
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.date.getter();
  static PlottableValue.value(_:_:)();

  (*(v8 + 8))(v10, v7);
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.value.getter();
  *&v51[0] = v18;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  *&v51[0] = 0x74617265706D6574;
  *(&v51[0] + 1) = 0xEB00000000657275;
  static PlottableValue.value(_:_:)();

  LineMark.init<A, B, C>(x:y:series:)();
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5EBC();
  static StrokeStyle.rounded(lineWidth:dash:)();
  v19 = v32;
  v20 = v35;
  ChartContent.lineStyle(_:)();
  sub_100453E98(v50);
  (*(v33 + 8))(v14, v20);
  static Color.black.getter();
  Color.opacity(_:)();

  *&v51[0] = v20;
  *(&v51[0] + 1) = &protocol witness table for LineMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v36;
  v23 = v37;
  ChartContent.shadow(color:radius:x:y:)();

  (*(v34 + 8))(v19, v23);
  type metadata accessor for TemperatureAveragesHeroChartView(0);
  type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
  v24 = v43;
  sub_1001C7668();
  v25 = type metadata accessor for ColorSchemeContrast();
  sub_10001B350(v24, 0, 1, v25);
  DetailChartGradientModel.linearGradient(minValue:maxValue:colorSchemeContrast:)();
  sub_100018198(v24, &qword_100CAD9A0);
  v47 = v51[0];
  v48 = v51[1];
  v49 = v52;
  v45 = v23;
  v46 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v39;
  v28 = v41;
  ChartContent.foregroundStyle<A>(_:)();
  sub_10028164C(v51);
  (*(v38 + 8))(v22, v28);
  type metadata accessor for RectangleMark();
  *&v47 = v28;
  *(&v47 + 1) = &type metadata for LinearGradient;
  *&v48 = v26;
  *(&v48 + 1) = &protocol witness table for LinearGradient;
  swift_getOpaqueTypeConformance2();
  v29 = v42;
  ChartContent.mask<A>(content:)();
  return (*(v40 + 8))(v27, v29);
}

uint64_t sub_10044FE2C@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for TemperatureAveragesHeroChartView(0);
  __chkstk_darwin(v3 - 8);
  v4 = sub_10022C350(&qword_100CBADB0, &unk_100A708C0);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AxisMarkValues();
  v12 = __chkstk_darwin(v11 - 8);
  (*(v8 + 104))(v10, enum case for Calendar.Component.hour(_:), v7, v12);
  v13 = type metadata accessor for Calendar();
  sub_10001B350(v6, 1, 1, v13);
  static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
  sub_100018198(v6, &qword_100CBADB0);
  (*(v8 + 8))(v10, v7);
  sub_100453D94();
  swift_allocObject();
  sub_100453E40();
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_10022C350(&qword_100CBADB8, &unk_100A506C0);
  sub_1004537D0();
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t sub_1004501C8()
{
  v0 = type metadata accessor for TemperatureAveragesHeroChartView(0);
  __chkstk_darwin(v0);
  v1 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v2 - 8);
  static AxisMarkPreset.aligned.getter();
  static AxisMarkPosition.trailing.getter();
  type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
  sub_100453D94();
  swift_allocObject();
  sub_100453E40();

  sub_10022C350(&qword_100CBAD48, &qword_100A50650);
  sub_100453424(&qword_100CBAD50, &qword_100CBAD48, &qword_100A50650, sub_10045349C);
  return AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t sub_10045042C@<X0>(uint64_t a1@<X0>, uint64_t (**a3)()@<X8>)
{
  v5 = type metadata accessor for ChartProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TemperatureAveragesHeroChartView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  sub_100453D94();
  (*(v6 + 16))(v8, a1, v5);
  v12 = (v11 + *(v6 + 80) + ((*(v10 + 80) + 16) & ~*(v10 + 80))) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_100453E40();
  result = (*(v6 + 32))(v13 + v12, v8, v5);
  *a3 = sub_100453338;
  a3[1] = v13;
  return result;
}

uint64_t sub_100450628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = static Alignment.topLeading.getter();
  a4[1] = v8;
  v9 = sub_10022C350(&qword_100CBAD40, &qword_100A50610);
  return sub_100450690(a2, a3, a1, a4 + *(v9 + 44));
}

uint64_t sub_100450690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
  __chkstk_darwin(active);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DetailHeroChartLollipopModel(0);
  __chkstk_darwin(v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TemperatureAveragesHeroChartView(0);
  sub_100035B30(a1 + *(v11 + 28), a4);
  v12 = type metadata accessor for LollipopChartOverlayView(0);
  v13 = v12[5];
  v14 = type metadata accessor for ChartProxy();
  (*(*(v14 - 8) + 16))(a4 + v13, a2, v14);
  v15 = v12[6];
  v16 = type metadata accessor for GeometryProxy();
  (*(*(v16 - 8) + 16))(a4 + v15, a3, v16);
  v17 = a1 + *(v11 + 32);
  v18 = type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
  v19 = *(v18 + 64);
  v20 = v12[7];
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 16);
  v22(a4 + v20, v17 + v19, v21);
  v22(a4 + v12[8], v17 + *(v18 + 68), v21);
  sub_100453D94();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v26 = v32;
    sub_100453E40();
    v24 = *v26;
    v27 = v26 + *(active + 20);
    v25 = *&v27[*(type metadata accessor for LollipopMarkModel(0) + 20)];
    sub_100453DEC(v26, type metadata accessor for DetailHeroChartActiveLollipopModel);
  }

  else
  {
    sub_100453DEC(v10, type metadata accessor for DetailHeroChartLollipopModel);
    v24 = 0;
    v25 = 0;
  }

  *(a4 + v12[10]) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  result = swift_storeEnumTagMultiPayload();
  v29 = a4 + v12[9];
  *v29 = v24;
  *(v29 + 8) = v25;
  *(v29 + 16) = EnumCaseMultiPayload != 1;
  return result;
}

uint64_t sub_1004509DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a2;
  v134 = a3;
  v4 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v4 - 8);
  v110 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v6 - 8);
  v109 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_10022C350(&qword_100CBAE00, &unk_100A506E0);
  v108 = *(v133 - 8);
  __chkstk_darwin(v133);
  v107 = &v102 - v8;
  v9 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  __chkstk_darwin(v9 - 8);
  v122 = &v102 - v10;
  v123 = type metadata accessor for DetailChartDataElement();
  v111 = *(v123 - 8);
  __chkstk_darwin(v123);
  v130 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v12 - 8);
  v127 = &v102 - v13;
  v131 = type metadata accessor for Date();
  v136 = *(v131 - 8);
  __chkstk_darwin(v131);
  v125 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CBADF0, &unk_100A708A0);
  __chkstk_darwin(v15 - 8);
  v132 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v135 = &v102 - v18;
  v19 = sub_10022C350(&qword_100CBADE0, &unk_100A506D0);
  __chkstk_darwin(v19);
  v126 = &v102 - v20;
  v21 = type metadata accessor for AxisTick.Length();
  __chkstk_darwin(v21 - 8);
  v112 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AxisTick();
  v119 = *(v23 - 8);
  __chkstk_darwin(v23);
  v116 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CBAE08, &unk_100A708B0);
  v120 = *(v25 - 8);
  v121 = v25;
  __chkstk_darwin(v25);
  v118 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v117 = &v102 - v28;
  v29 = type metadata accessor for AxisGridLine();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10022C350(&qword_100CBAD88, &unk_100A50670);
  v114 = *(v33 - 8);
  v115 = v33;
  __chkstk_darwin(v33);
  v113 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v102 - v36;
  v38 = sub_10022C350(&qword_100CBADD0, &qword_100A88180);
  __chkstk_darwin(v38 - 8);
  v129 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v102 - v41;
  v43 = a1;
  v44 = AxisValue.isFirst.getter();
  v128 = v42;
  if (v44)
  {
    sub_10001B350(v42, 1, 1, v19);
  }

  else
  {
    v106 = v19;
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    memcpy(v140, &qword_100D90070, 0x1A0uLL);
    sub_100453A48(v140, v139);
    AxisValue.isLast.getter();
    v105 = v23;
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v45 = v140[52];
    v46 = v140[54];
    v47 = v140[55];
    v48 = v140[56];
    v49 = v140[53];
    sub_100453AA4(v140);
    v140[62] = v45;
    v140[63] = v49;
    v140[64] = v46;
    v140[65] = v47;
    v140[66] = v48;
    AxisGridLine.init(centered:stroke:)();
    swift_beginAccess();
    v50 = sub_1004B5F70();
    swift_endAccess();
    v139[0] = v50;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v30 + 8))(v32, v29);
    static AxisTick.Length.longestLabel.getter();
    memcpy(v139, &qword_100D90070, 0x1A0uLL);
    sub_100453A48(v139, v138);
    AxisValue.isLast.getter();
    v104 = v43;
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v51 = v105;
    v52 = v140[57];
    v53 = v140[59];
    v54 = v140[60];
    v55 = v140[61];
    v56 = v140[58];
    sub_100453AA4(v139);
    v138[0] = v52;
    v138[1] = v56;
    v138[2] = v53;
    v138[3] = v54;
    v138[4] = v55;
    v57 = v116;
    AxisTick.init(centered:length:stroke:)();
    swift_beginAccess();
    v58 = sub_1004B5F70();
    swift_endAccess();
    v137[0] = v58;
    v59 = v117;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v119 + 8))(v57, v51);
    v60 = v113;
    v61 = v114;
    v62 = *(v114 + 16);
    v103 = v37;
    v63 = v115;
    v62(v113, v37, v115);
    v137[0] = v60;
    v65 = v120;
    v64 = v121;
    v66 = v118;
    (*(v120 + 16))(v118, v59, v121);
    v137[1] = v66;
    sub_1007FECC0(v137, v67, v68, v69, v70, v71, v72, v73, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
    v74 = *(v65 + 8);
    v74(v59, v64);
    v75 = *(v61 + 8);
    v75(v103, v63);
    v74(v66, v64);
    v75(v60, v63);
    v42 = v128;
    sub_100051BBC();
    sub_10001B350(v42, 0, 1, v106);
  }

  v77 = v130;
  v76 = v131;
  v78 = v127;
  AxisValue.as<A>(_:)();
  v79 = sub_100024D10(v78, 1, v76);
  v81 = v135;
  v80 = v136;
  if (v79 == 1)
  {
    sub_100018198(v78, &unk_100CB2CF0);
  }

  else
  {
    v82 = v125;
    (*(v136 + 32))(v125, v78, v76);
    v83 = type metadata accessor for TemperatureAveragesHeroChartView(0);
    __chkstk_darwin(v83);
    v100 = v82;
    v84 = v122;
    sub_1008DBA9C();
    v85 = v84;
    v86 = v84;
    v87 = v123;
    if (sub_100024D10(v86, 1, v123) == 1)
    {
      sub_100018198(v85, &qword_100CAB930);
      (*(v80 + 8))(v82, v76);
    }

    else
    {
      v88 = v111;
      (*(v111 + 32))(v77, v85, v87);
      v89 = AxisValue.isLast.getter();
      if ((v89 & 1) == 0)
      {
        __chkstk_darwin(v89);
        static AxisValueLabelCollisionResolution.automatic.getter();
        static AxisValueLabelOrientation.automatic.getter();
        v100 = sub_10022C350(&qword_100CB9110, &unk_100A506F0);
        v101 = sub_100453B24();
        v99 = &v96;
        v81 = v135;
        v98 = sub_100453B18;
        LOBYTE(v97) = 0;
        v96 = 0;
        v93 = v107;
        AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
        v94 = v93;
        v95 = v133;
        (*(v108 + 32))(v81, v94, v133);
        sub_10001B350(v81, 0, 1, v95);
        (*(v88 + 8))(v77, v87);
        (*(v136 + 8))(v125, v76);
        v42 = v128;
        goto LABEL_14;
      }

      (*(v88 + 8))(v77, v87);
      (*(v136 + 8))(v125, v76);
    }

    v42 = v128;
  }

  sub_10001B350(v81, 1, 1, v133);
LABEL_14:
  v90 = v129;
  sub_1001EC408();
  v140[0] = v90;
  v91 = v132;
  sub_100095588();
  v140[1] = v91;
  sub_1007FECE4();
  sub_100018198(v81, &qword_100CBADF0);
  sub_100018198(v42, &qword_100CBADD0);
  sub_100018198(v91, &qword_100CBADF0);
  return sub_100018198(v90, &qword_100CBADD0);
}

uint64_t sub_100451838()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.date.getter();
  v4 = static Date.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

void *sub_100451924@<X0>(void *a2@<X8>)
{
  v4 = AxisValue.isFirst.getter();
  sub_100451988(v4 & 1, v6);
  return memcpy(a2, v6, 0x79uLL);
}

void sub_100451988(int a1@<W1>, uint64_t a2@<X8>)
{
  v30 = a1;
  v3 = type metadata accessor for TimeStyle();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Style();
  static Style.componentTime.getter();
  DetailChartDataElement.dateLabel.getter();
  sub_100119F7C();
  static NSDateFormatter.prevailingPeriodSymbols.getter();
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B60A0();
  swift_endAccess();
  v6 = TimeStyle.formatTime(_:periodSymbols:font:)();
  v8 = v7;
  v10 = v9;

  (*(v28 + 8))(v5, v29);
  swift_beginAccess();
  sub_1004B61C0();
  swift_endAccess();
  v11 = Text.foregroundColor(_:)();
  v13 = v12;
  v15 = v14;

  sub_10010CD64(v6, v8, v10 & 1);

  swift_beginAccess();
  sub_1004B60A0();
  swift_endAccess();
  v16 = Text.font(_:)();
  v18 = v17;
  LOBYTE(v6) = v19;
  v21 = v20;

  sub_10010CD64(v11, v13, v15 & 1);

  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = v6 & 1;
  v22 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v21;
  v23 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v23;
  *(a2 + 64) = v34;
  *(a2 + 80) = v22;
  *(a2 + 88) = v24;
  *(a2 + 96) = v25;
  *(a2 + 104) = v26;
  *(a2 + 112) = v27;
  *(a2 + 120) = 0;
}

uint64_t sub_100451C98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v52 = a1;
  v58 = a2;
  v2 = sub_10022C350(&qword_100CBAD60, &qword_100A50658);
  __chkstk_darwin(v2);
  v57 = &v46 - v3;
  v4 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v4 - 8);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v6 - 8);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10022C350(&qword_100CBAD80, &qword_100A88140);
  v49 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = &v46 - v8;
  v10 = sub_10022C350(&qword_100CBAD70, &unk_100A50660);
  __chkstk_darwin(v10 - 8);
  v56 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v53 = &v46 - v13;
  v14 = type metadata accessor for AxisGridLine();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10022C350(&qword_100CBAD88, &unk_100A50670);
  v18 = *(v54 - 8);
  __chkstk_darwin(v54);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  if ((AxisValue.isLast.getter() & 1) == 0)
  {
    v48 = v2;
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    AxisGridLine.init(centered:stroke:)();
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v26 = sub_1004B5F70();
    swift_endAccess();
    v59 = v26;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v15 + 8))(v17, v14);
    AxisValue.as<A>(_:)();
    if (v60)
    {
      v27 = 1;
    }

    else
    {
      v47 = v9;
      v28 = *&v59;
      v29 = v52 + *(type metadata accessor for TemperatureAveragesHeroChartView(0) + 32);
      v30 = (v29 + *(type metadata accessor for TemperatureAveragesHeroChartViewModel(0) + 48));
      v31 = *v30;
      v32 = v30[1];
      v33 = v30[2];
      v34 = AxisValue.isFirst.getter();
      v35 = AxisValue.isLast.getter();
      sub_100695870(v34 & 1, v35 & 1, v31, v32, v33, v28);
      v27 = 1;
      if (v37)
      {
        __chkstk_darwin(v36);
        static AxisValueLabelCollisionResolution.automatic.getter();
        static AxisValueLabelOrientation.automatic.getter();
        v45[2] = sub_10022C350(&qword_100CBAD90, &unk_100A8C450);
        v45[3] = sub_10045362C();
        v45[0] = sub_100453624;
        v45[1] = v45;
        v38 = v47;
        AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();

        v39 = v53;
        v40 = v55;
        (*(v49 + 32))(v53, v38, v55);
        v27 = 0;
LABEL_12:
        sub_10001B350(v39, v27, 1, v40);
        v41 = v54;
        (*(v18 + 16))(v20, v23, v54);
        v59 = v20;
        v42 = v56;
        sub_100095588();
        v60 = v42;
        sub_1007FEDB0();
        sub_100018198(v39, &qword_100CBAD70);
        v43 = *(v18 + 8);
        v43(v23, v41);
        sub_100018198(v42, &qword_100CBAD70);
        v43(v20, v41);
        v44 = v58;
        sub_100051BBC();
        return sub_10001B350(v44, 0, 1, v48);
      }
    }

    v40 = v55;
    v39 = v53;
    goto LABEL_12;
  }

  v24 = v58;

  return sub_10001B350(v24, 1, 1, v2);
}

void *sub_1004523B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  sub_10002D5A4();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B60A0();
  swift_endAccess();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10010CD64(v4, v6, v8 & 1);

  swift_beginAccess();
  sub_1004B61C0();
  swift_endAccess();
  v14 = Text.foregroundColor(_:)();
  v30 = v16;
  v31 = v15;
  v18 = v17;

  sub_10010CD64(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v20 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v32[7], __src, 0x70uLL);
  *a3 = v14;
  *(a3 + 8) = v31;
  *(a3 + 16) = v18 & 1;
  *(a3 + 24) = v30;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  *(a3 + 56) = v20;
  *(a3 + 64) = v22;
  *(a3 + 72) = v24;
  *(a3 + 80) = v26;
  *(a3 + 88) = v28;
  *(a3 + 96) = 0;
  return memcpy((a3 + 97), v32, 0x77uLL);
}

unint64_t sub_100452628()
{
  result = qword_100CBAB98;
  if (!qword_100CBAB98)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CBAB88, &qword_100A504F0);
    v4[0] = sub_10023FBF4(&qword_100CBABA0, &unk_100CBABA8, &unk_100A50500, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v3, v4);
    atomic_store(result, &qword_100CBAB98);
  }

  return result;
}

unint64_t sub_10045273C()
{
  result = qword_100CBAC10;
  if (!qword_100CBAC10)
  {
    v6[10] = v0;
    v6[11] = v1;
    v3 = sub_10022E824(&qword_100CBAC08, &qword_100A50560);
    sub_10022E824(&qword_100CBAC18, &qword_100A50568);
    sub_10022E824(&qword_100CBAC20, &unk_100A50570);
    sub_1004528C8();
    swift_getOpaqueTypeConformance2();
    v6[0] = swift_getOpaqueTypeConformance2();
    v4 = sub_10022E824(&qword_100CBAC40, &unk_100A50580);
    sub_10022E824(&qword_100CBAC48, &unk_100A6E960);
    sub_1004529DC();
    v5[1] = v4;
    v5[2] = swift_getOpaqueTypeConformance2();
    v6[1] = swift_getOpaqueTypeConformance2();
    v6[2] = sub_100452B80();
    v6[3] = sub_100452C34();
    v5[0] = v6;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, v5);
    atomic_store(result, &qword_100CBAC10);
  }

  return result;
}

unint64_t sub_1004528C8()
{
  result = qword_100CBAC28;
  if (!qword_100CBAC28)
  {
    v4[11] = v0;
    v4[12] = v1;
    v3 = sub_10022E824(&qword_100CBAC20, &unk_100A50570);
    v4[1] = type metadata accessor for AreaMark();
    v4[2] = sub_10022E824(&qword_100CBAC30, &unk_100A6E950);
    v4[3] = &protocol witness table for AreaMark;
    v4[4] = sub_10023FBF4(&qword_100CBAC38, &qword_100CBAC30, &unk_100A6E950, &protocol conformance descriptor for _OpacityShapeStyle<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CBAC28);
  }

  return result;
}

unint64_t sub_1004529DC()
{
  result = qword_100CBAC50;
  if (!qword_100CBAC50)
  {
    v6[11] = v0;
    v6[12] = v1;
    v3 = sub_10022E824(&qword_100CBAC48, &unk_100A6E960);
    v4 = sub_10022E824(&qword_100CBAC58, &unk_100A50590);
    v5 = type metadata accessor for RectangleMark();
    sub_10022E824(&qword_100CBAC60, &unk_100A6E970);
    sub_10022E824(&qword_100CBAC68, &qword_100A505A0);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v6[1] = v4;
    v6[2] = v5;
    v6[3] = swift_getOpaqueTypeConformance2();
    v6[4] = &protocol witness table for RectangleMark;
    v6[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v6);
    atomic_store(result, &qword_100CBAC50);
  }

  return result;
}

unint64_t sub_100452B80()
{
  result = qword_100CBAC70;
  if (!qword_100CBAC70)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CBAC78, &qword_100A505A8);
    v4[0] = sub_100453C4C(&qword_100CBAC80, type metadata accessor for PeakKnockoutMark, aUi);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CBAC70);
  }

  return result;
}

unint64_t sub_100452C34()
{
  result = qword_100CBAC88;
  if (!qword_100CBAC88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBAC90, &qword_100A505B0);
    v4[0] = sub_100452CF0();
    v4[1] = sub_100453C4C(&qword_100CBACB0, type metadata accessor for LollipopMark, byte_100A4A27C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> BuilderConditional<A, B>, v3, v4);
    atomic_store(result, &qword_100CBAC88);
  }

  return result;
}

unint64_t sub_100452CF0()
{
  result = qword_100CBAC98;
  if (!qword_100CBAC98)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CBACA0, &qword_100A505B8);
    v4[0] = sub_100453C4C(&qword_100CBACA8, type metadata accessor for PeakUpperMark, byte_100A8BA7C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CBAC98);
  }

  return result;
}

void sub_100452DEC(void *a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0x3Fu)
  {
  }
}

uint64_t sub_100452E34()
{
  v0 = sub_100019780();
  sub_100003810(v0);
  v1 = sub_100005614();

  return sub_10045042C(v1, v2);
}

unint64_t sub_100452E94()
{
  result = qword_100CBAD18;
  if (!qword_100CBAD18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBABE8, &qword_100A50540);
    v4[0] = sub_100452F20();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBAD18);
  }

  return result;
}

unint64_t sub_100452F20()
{
  result = qword_100CBAD20;
  if (!qword_100CBAD20)
  {
    v6[18] = v0;
    v6[19] = v1;
    v5 = sub_10022E824(&qword_100CBACF0, &unk_100A505E0);
    v4 = sub_10022E824(&qword_100CBABE0, &qword_100A50538);
    v3 = sub_10022E824(&qword_100CBACE0, &qword_100A505D8);
    sub_10022E824(&qword_100CBABD8, &qword_100A50530);
    sub_10022E824(&qword_100CBACD0, &unk_100A505C8);
    sub_10022E824(&qword_100CBABD0, &qword_100A50528);
    sub_10022E824(&qword_100CBACC0, &qword_100A505C0);
    sub_10022E824(&qword_100CBABC8, &qword_100A50520);
    type metadata accessor for AutomaticScaleDomain();
    type metadata accessor for PlotDimensionScaleRange();
    sub_10022E824(&qword_100CBABC0, &qword_100A50518);
    sub_10023FBF4(&qword_100CBACB8, &qword_100CBABC0, &qword_100A50518, &protocol conformance descriptor for Chart<A>);
    swift_getOpaqueTypeConformance2();
    v6[6] = &protocol witness table for AutomaticScaleDomain;
    v6[7] = &protocol witness table for PlotDimensionScaleRange;
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CBACC8, &qword_100CBACC0, &qword_100A505C0, &protocol conformance descriptor for AxisMarks<A>);
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CBACD8, &qword_100CBACD0, &unk_100A505C8, &protocol conformance descriptor for AxisMarks<A>);
    v6[2] = v4;
    v6[3] = v3;
    v6[4] = swift_getOpaqueTypeConformance2();
    v6[5] = sub_10023FBF4(&qword_100CBACE8, &qword_100CBACE0, &qword_100A505D8, &protocol conformance descriptor for GeometryReader<A>);
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_10023FBF4(&qword_100CBAD28, &qword_100CBAD10, &qword_100A50600, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v6);
    atomic_store(result, &qword_100CBAD20);
  }

  return result;
}

unint64_t sub_100453270()
{
  result = qword_100CBAD30;
  if (!qword_100CBAD30)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CBABF8, &qword_100A50550);
    v4[2] = sub_10022E824(&qword_100CBABE8, &qword_100A50540);
    v4[3] = sub_100452E94();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBAD30);
  }

  return result;
}

uint64_t sub_100453338()
{
  v3 = *(sub_100019780() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for ChartProxy();
  sub_100003810(v6);
  v8 = v1 + ((v4 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_100450628(v0, v1 + v4, v8, v2);
}

uint64_t sub_100453424(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    v9 = sub_10022E824(v7, v8);
    v10 = a4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10045349C()
{
  result = qword_100CBAD58;
  if (!qword_100CBAD58)
  {
    v5[6] = v0;
    v5[7] = v1;
    v3 = sub_10022E824(&qword_100CBAD60, &qword_100A50658);
    type metadata accessor for AxisGridLine();
    v5[2] = &protocol witness table for AxisGridLine;
    v5[3] = &protocol witness table for Color;
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_100453574();
    v4 = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, &v4);
    atomic_store(result, &qword_100CBAD58);
  }

  return result;
}

unint64_t sub_100453574()
{
  result = qword_100CBAD68;
  if (!qword_100CBAD68)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CBAD70, &unk_100A50660);
    v4[0] = sub_10023FBF4(&qword_100CBAD78, &qword_100CBAD80, &qword_100A88140, &protocol conformance descriptor for AxisValueLabel<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CBAD68);
  }

  return result;
}

unint64_t sub_10045362C()
{
  result = qword_100CBAD98;
  if (!qword_100CBAD98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBAD90, &unk_100A8C450);
    v4[0] = sub_1004536B8();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBAD98);
  }

  return result;
}

unint64_t sub_1004536B8()
{
  result = qword_100CBADA0;
  if (!qword_100CBADA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBADA8, &qword_100A50680);
    v4[0] = sub_10033CBA4();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBADA0);
  }

  return result;
}

uint64_t sub_10045375C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = sub_100019780();
  sub_100003810(v2);
  v3 = sub_100005614();

  return a2(v3);
}

unint64_t sub_1004537D0()
{
  result = qword_100CBADC0;
  if (!qword_100CBADC0)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = sub_10022E824(&qword_100CBADB8, &unk_100A506C0);
    v5[0] = sub_100453424(&qword_100CBADC8, &qword_100CBADD0, &qword_100A88180, sub_100453890);
    v5[1] = sub_100453998();
    v4 = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, &v4);
    atomic_store(result, &qword_100CBADC0);
  }

  return result;
}

unint64_t sub_100453890()
{
  result = qword_100CBADD8;
  if (!qword_100CBADD8)
  {
    v5[6] = v0;
    v5[7] = v1;
    v3 = sub_10022E824(&qword_100CBADE0, &unk_100A506D0);
    type metadata accessor for AxisGridLine();
    v5[0] = swift_getOpaqueTypeConformance2();
    v4[1] = type metadata accessor for AxisTick();
    v4[2] = &type metadata for Color;
    v4[3] = &protocol witness table for AxisTick;
    v4[4] = &protocol witness table for Color;
    v5[1] = swift_getOpaqueTypeConformance2();
    v4[0] = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, v4);
    atomic_store(result, &qword_100CBADD8);
  }

  return result;
}

unint64_t sub_100453998()
{
  result = qword_100CBADE8;
  if (!qword_100CBADE8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CBADF0, &unk_100A708A0);
    v4[0] = sub_10023FBF4(&qword_100CBADF8, &qword_100CBAE00, &unk_100A506E0, &protocol conformance descriptor for AxisValueLabel<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CBADE8);
  }

  return result;
}

unint64_t sub_100453B24()
{
  result = qword_100CBAE10;
  if (!qword_100CBAE10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB9110, &unk_100A506F0);
    v4[0] = sub_100453BB0();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBAE10);
  }

  return result;
}

unint64_t sub_100453BB0()
{
  result = qword_100CBAE18;
  if (!qword_100CBAE18)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CB5A10, &qword_100A492A0);
    v4[0] = &protocol witness table for Text;
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBAE18);
  }

  return result;
}

uint64_t sub_100453C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100453CAC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for TemperatureAveragesHeroChartView(0);
  sub_100003810(v4);
  return a2(a1);
}

uint64_t sub_100453D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CBACA0, &qword_100A505B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100453D94()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100453DEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100453E40()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100453EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemperatureAveragesDetailInput(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v41 = v7 - v6;
  v8 = type metadata accessor for PrecipitationAveragesDetailInput(0);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  type metadata accessor for AveragesDetailInput.Content(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003C38();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  v23 = sub_10022C350(&qword_100CBB060, &qword_100A508E8);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  v26 = &v40 - v25;
  v28 = *(v27 + 56);
  sub_1004557E4(a1, &v40 - v25);
  sub_1004557E4(a2, &v26[v28]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v36 = sub_10001ECBC();
      sub_1004557E4(v36, v19);
      if (sub_1000284C0() == 1)
      {
        sub_100455840(&v26[v28], v12);
        v30 = sub_100343098(v19, v12);
        sub_10045578C(v12, type metadata accessor for PrecipitationAveragesDetailInput);
        v34 = v19;
        v35 = type metadata accessor for PrecipitationAveragesDetailInput;
        goto LABEL_12;
      }

      v37 = type metadata accessor for PrecipitationAveragesDetailInput;
      v38 = v19;
      goto LABEL_16;
    case 2u:
      v31 = sub_10001ECBC();
      sub_1004557E4(v31, v16);
      if (sub_1000284C0() == 2)
      {
        v32 = &v26[v28];
        v33 = v41;
        sub_100455840(v32, v41);
        v30 = sub_1002F19E8(v16, v33);
        sub_10045578C(v33, type metadata accessor for TemperatureAveragesDetailInput);
        v34 = v16;
        v35 = type metadata accessor for TemperatureAveragesDetailInput;
LABEL_12:
        sub_10045578C(v34, v35);
LABEL_13:
        sub_100004224();
      }

      else
      {
        v37 = type metadata accessor for TemperatureAveragesDetailInput;
        v38 = v16;
LABEL_16:
        sub_10045578C(v38, v37);
LABEL_17:
        sub_1000180EC(v26, &qword_100CBB060, &qword_100A508E8);
        v30 = 0;
      }

      return v30 & 1;
    case 3u:
      if (sub_1000284C0() == 3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    case 4u:
      if (sub_1000284C0() != 4)
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_100004224();
      v30 = 1;
      return v30 & 1;
    default:
      v29 = sub_10001ECBC();
      sub_1004557E4(v29, v22);
      if (sub_1000284C0())
      {
        goto LABEL_17;
      }

      v30 = *v22 == v26[v28];
      goto LABEL_13;
  }
}

uint64_t sub_100454274(uint64_t a1, uint64_t a2)
{
  if ((sub_100453EEC(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AveragesDetailInput(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  return static Location.== infix(_:_:)();
}

uint64_t sub_1004542F0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CBB068, &qword_100A508F0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for AveragesDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = (v11 - v10);
  sub_1004544D8(a1, v7);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_1000180EC(v7, &qword_100CBB068, &qword_100A508F0);
    type metadata accessor for AveragesDetailInput.Content(0);
    swift_storeEnumTagMultiPayload();
    v13 = type metadata accessor for AveragesDetailInput(0);
    static Location.current.getter();
    a2[*(v13 + 20)] = 0;
  }

  else
  {
    sub_100455840(v7, v12);
    sub_100454A20(a1, v12, a2);
    v14 = *(v12 + *(v8 + 20));
    v13 = type metadata accessor for AveragesDetailInput(0);
    v15 = *(v13 + 24);
    type metadata accessor for Location();
    sub_1000037E8();
    (*(v16 + 16))(&a2[v15], v12);
    sub_10045578C(v12, type metadata accessor for AveragesDetailViewState);
    a2[*(v13 + 20)] = v14;
  }

  return sub_10001B350(a2, 0, 1, v13);
}

uint64_t sub_1004544D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v63 = type metadata accessor for LocationPreviewModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100003C38();
  v59 = v4 - v5;
  sub_10000386C();
  __chkstk_darwin(v6);
  v61 = &v55 - v7;
  v62 = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_100003C38();
  v58 = v9 - v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  v60 = &v55 - v12;
  v65 = type metadata accessor for AveragesDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003C38();
  v56 = v14 - v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v57 = &v55 - v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_100003C38();
  v64 = v22 - v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  v26 = &v55 - v25;
  __chkstk_darwin(v27);
  v29 = &v55 - v28;
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003C38();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = &v55 - v35;
  v37 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  sub_100010040();
  sub_1004557E4(a1 + v37, v29);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_100455840(v29, v36);
    sub_100455840(v36, v33);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_100455840(v33, v20);
      v38 = v20;
LABEL_20:
      sub_100455840(v38, v66);
      v50 = 0;
      return sub_10001B350(v66, v50, 1, v65);
    }

    v39 = type metadata accessor for ModalViewState.LocationDetailModal;
    v40 = v33;
  }

  else
  {
    v39 = type metadata accessor for ModalViewState;
    v40 = v29;
  }

  sub_10045578C(v40, v39);
  sub_100010040();
  sub_1004557E4(a1 + v37, v26);
  if (swift_getEnumCaseMultiPayload())
  {
    v41 = type metadata accessor for ModalViewState;
  }

  else
  {
    v42 = v60;
    sub_100455840(v26, v60);
    v26 = v61;
    sub_100008628();
    sub_1004557E4(v42 + v43, v26);
    sub_1000146B0();
    sub_10045578C(v42, v44);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v45 = v26;
      v46 = v57;
LABEL_19:
      sub_100455840(v45, v46);
      v38 = v46;
      goto LABEL_20;
    }

    v41 = type metadata accessor for LocationPreviewModalViewState;
  }

  sub_10045578C(v26, v41);
  sub_100010040();
  v47 = v64;
  sub_1004557E4(a1 + v37, v64);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v49 = type metadata accessor for ModalViewState;
    goto LABEL_15;
  }

  v48 = type metadata accessor for ModalViewState.MapViewModal(0);
  if (sub_100024D10(v47, 1, v48) != 1)
  {
    v51 = v58;
    sub_100455840(v47, v58);
    sub_100008628();
    v47 = v59;
    sub_1004557E4(v51 + v52, v59);
    sub_1000146B0();
    sub_10045578C(v51, v53);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v45 = v47;
      v46 = v56;
      goto LABEL_19;
    }

    v49 = type metadata accessor for LocationPreviewModalViewState;
LABEL_15:
    sub_10045578C(v47, v49);
    goto LABEL_16;
  }

  sub_1000180EC(v47, &qword_100CA65E0, &unk_100A31400);
LABEL_16:
  v50 = 1;
  return sub_10001B350(v66, v50, 1, v65);
}

uint64_t sub_100454A20@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v80 = a3;
  v75 = type metadata accessor for AveragesDetailViewState(0);
  __chkstk_darwin(v75);
  v77 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CBB070, &qword_100A508F8);
  __chkstk_darwin(v6 - 8);
  v70 = &v65 - v7;
  v69 = type metadata accessor for PrecipitationAveragesDetailInput(0);
  __chkstk_darwin(v69);
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CBB078, &qword_100A50900);
  __chkstk_darwin(v9 - 8);
  v68 = &v65 - v10;
  v67 = type metadata accessor for TemperatureAveragesDetailInput(0);
  __chkstk_darwin(v67);
  v65 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for WeatherStatisticsModel();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  __chkstk_darwin(v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v16);
  v76 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v18 - 8);
  v20 = &v65 - v19;
  v21 = type metadata accessor for LocationWeatherDataState(0);
  __chkstk_darwin(v21);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v65 - v25;
  v79 = a1;
  v27 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v78 = a2;
  v28 = Location.id.getter();
  sub_1000864C0(v28, v29, v27);

  if (sub_100024D10(v20, 1, v21) == 1)
  {
    sub_1000180EC(v20, &qword_100CA37B0, &unk_100A2D740);
LABEL_10:
    v47 = v77;
    if (qword_100CA2690 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000703C(v48, qword_100D90A18);
    sub_1004557E4(v78, v47);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v81[0] = v52;
      *v51 = 141558275;
      *(v51 + 4) = 1752392040;
      *(v51 + 12) = 2081;
      type metadata accessor for Location();
      sub_1002F33A8();
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      sub_10045578C(v47, type metadata accessor for AveragesDetailViewState);
      v56 = sub_100078694(v53, v55, v81);

      *(v51 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed to create averages detail input due to missing weather data; location=%{private,mask.hash}s", v51, 0x16u);
      sub_100006F14(v52);
    }

    else
    {

      sub_10045578C(v47, type metadata accessor for AveragesDetailViewState);
    }

    v57 = v79;
    v58 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    goto LABEL_16;
  }

  sub_100455840(v20, v26);
  sub_1004557E4(v26, v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10045578C(v26, type metadata accessor for LocationWeatherDataState);
    sub_10045578C(v23, type metadata accessor for LocationWeatherDataState);
    goto LABEL_10;
  }

  v30 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
  v31 = *(v30 + 48);
  v32 = *(v30 + 64);
  v33 = v76;
  sub_100455840(v23, v76);
  sub_10045578C(&v23[v32], type metadata accessor for NewsDataModel);
  sub_10045578C(&v23[v31], type metadata accessor for PreprocessedWeatherData);
  sub_1004557E4(v33 + *(v16 + 32), v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10045578C(v33, type metadata accessor for WeatherData);
    sub_10045578C(v26, type metadata accessor for LocationWeatherDataState);
    sub_10045578C(v15, type metadata accessor for WeatherData.WeatherStatisticsState);
    v58 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    v57 = v79;
LABEL_16:
    v59 = v57 + v58;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10045578C(v33, type metadata accessor for WeatherData);
    sub_10045578C(v26, type metadata accessor for LocationWeatherDataState);
    type metadata accessor for AveragesDetailInput.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  v35 = v73;
  v36 = v72 + 32;
  v37 = v15;
  v38 = v74;
  (*(v72 + 32))(v73, v37, v74);
  v39 = v75;
  v40 = v78;
  v41 = (v36 - 24);
  if (*(v78 + *(v75 + 20)))
  {
    sub_1000161C0(v71 + 2, v71[5]);
    v42 = v40 + *(v39 + 24);
    v43 = v70;
    v44 = v79;
    sub_1003431C4(v79, v35, v40, v42, v70);
    (*v41)(v35, v38);
    sub_10045578C(v33, type metadata accessor for WeatherData);
    sub_10045578C(v26, type metadata accessor for LocationWeatherDataState);
    if (sub_100024D10(v43, 1, v69) != 1)
    {
      v63 = v66;
      sub_100455840(v43, v66);
      sub_100455840(v63, v80);
      type metadata accessor for AveragesDetailInput.Content(0);
      return swift_storeEnumTagMultiPayload();
    }

    v45 = &qword_100CBB070;
    v46 = &qword_100A508F8;
  }

  else
  {
    sub_1000161C0(v71 + 7, v71[10]);
    v62 = v40 + *(v39 + 24);
    v43 = v68;
    v44 = v79;
    sub_1002F1DA0(v79, v35, v40, v62, v68);
    (*v41)(v35, v38);
    sub_10045578C(v33, type metadata accessor for WeatherData);
    sub_10045578C(v26, type metadata accessor for LocationWeatherDataState);
    if (sub_100024D10(v43, 1, v67) != 1)
    {
      v64 = v65;
      sub_100455840(v43, v65);
      sub_100455840(v64, v80);
      type metadata accessor for AveragesDetailInput.Content(0);
      return swift_storeEnumTagMultiPayload();
    }

    v45 = &qword_100CBB078;
    v46 = &qword_100A50900;
  }

  sub_1000180EC(v43, v45, v46);
  v59 = v44 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
LABEL_17:
  swift_beginAccess();
  if (v59[*(type metadata accessor for EnvironmentState(0) + 68)])
  {
    v60 = 0;
  }

  else if (v59[3] == 4)
  {
    v60 = 1;
  }

  else
  {
    v60 = 2;
  }

  *v80 = v60;
  type metadata accessor for AveragesDetailInput.Content(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10045554C(uint64_t a1)
{
  result = type metadata accessor for AveragesDetailInput.Content(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Location();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004555D8(uint64_t a1)
{
  result = type metadata accessor for PrecipitationAveragesDetailInput(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TemperatureAveragesDetailInput(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AveragesDetailInput.ContentUnavailableReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100455738()
{
  result = qword_100CBB058;
  if (!qword_100CBB058)
  {
    result = swift_getWitnessTable(byte_100A5081C, &type metadata for AveragesDetailInput.ContentUnavailableReason, v0, v1);
    atomic_store(result, &qword_100CBB058);
  }

  return result;
}

uint64_t sub_10045578C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1004557E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_100455840(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

BOOL sub_1004558C8()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeScale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 scale];
  v6 = v5;

  return v6 < v3;
}

void *sub_100455964()
{
  sub_100459654(v1, &v11);
  type metadata accessor for MainActor();
  v2 = static MainActor.shared.getter();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = &protocol witness table for MainActor;
  v4 = v12;
  *(v3 + 32) = v11;
  *(v3 + 48) = v4;
  v5 = v14;
  *(v3 + 64) = v13;
  *(v3 + 80) = v5;
  sub_100459654(v1, &v11);
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = v12;
  *(v7 + 32) = v11;
  *(v7 + 48) = v8;
  v9 = v14;
  *(v7 + 64) = v13;
  *(v7 + 80) = v9;
  type metadata accessor for Date();
  return Binding.init(get:set:)();
}

uint64_t sub_100455A78@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DayPickerViewModel(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100989124();
  v6 = *(v3 + 28);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 16))(a1, &v5[v6], v7);
  return sub_10045ACF0(v5, type metadata accessor for DayPickerViewModel);
}

uint64_t sub_100455B60(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100455C14@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for QuaternaryDividerStyle();
  sub_1000037C4();
  v65 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for Divider();
  sub_1000037C4();
  v63 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v64 = sub_10022C350(&qword_100CB6408, &unk_100A49E00);
  sub_1000037C4();
  v68 = v15;
  __chkstk_darwin(v16);
  sub_100003848();
  v62 = v17;
  __chkstk_darwin(v18);
  v66 = &v46 - v19;
  v61 = sub_10022C350(&qword_100CBB080, &qword_100A50990);
  sub_1000037C4();
  v21 = v20;
  v51 = v20;
  __chkstk_darwin(v22);
  sub_100003848();
  v67 = v23;
  __chkstk_darwin(v24);
  v26 = &v46 - v25;
  sub_100459654(v1, &v69);
  v27 = swift_allocObject();
  v60 = v27;
  v28 = v70;
  v27[1] = v69;
  v27[2] = v28;
  v29 = v72;
  v27[3] = v71;
  v27[4] = v29;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v59 = v73;
  v58 = v75;
  v57 = v77;
  v56 = v78;
  v81 = 1;
  v80 = v74;
  v79 = v76;
  v50 = v26;
  sub_10045913C();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v55 = v69;
  v54 = v70;
  v52 = *(&v71 + 1);
  v53 = v71;
  v84 = 1;
  v83 = BYTE8(v69);
  v82 = BYTE8(v70);
  Divider.init()();
  static DividerStyle<>.quaternary.getter();
  sub_10045AA9C(&qword_100CA7298, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
  sub_10045AA9C(&qword_100CB5C48, &type metadata accessor for QuaternaryDividerStyle, &protocol conformance descriptor for QuaternaryDividerStyle);
  v30 = v66;
  View.dividerStyle<A>(_:)();
  (*(v65 + 8))(v8, v3);
  (*(v63 + 8))(v14, v9);
  v31 = v81;
  v46 = v80;
  v47 = v79;
  v32 = *(v21 + 16);
  v33 = v67;
  v34 = v61;
  v32(v67, v26, v61);
  v48 = v84;
  v49 = v83;
  LODWORD(v63) = v82;
  v65 = *(v68 + 16);
  v35 = v62;
  v36 = v30;
  v37 = v64;
  (v65)(v62, v36, v64);
  v38 = v60;
  *a1 = sub_10045968C;
  *(a1 + 8) = v38;
  *(a1 + 16) = 0;
  *(a1 + 24) = v31;
  *(a1 + 32) = v59;
  *(a1 + 40) = v46;
  *(a1 + 48) = v58;
  *(a1 + 56) = v47;
  v39 = v56;
  *(a1 + 64) = v57;
  *(a1 + 72) = v39;
  v40 = sub_10022C350(&qword_100CBB088, &qword_100A50998);
  v32(a1 + v40[16], v33, v34);
  v41 = a1 + v40[20];
  *v41 = 0;
  *(v41 + 8) = v48;
  *(v41 + 16) = v55;
  *(v41 + 24) = v49;
  *(v41 + 32) = v54;
  *(v41 + 40) = v63;
  v42 = v52;
  *(v41 + 48) = v53;
  *(v41 + 56) = v42;
  (v65)(a1 + v40[24], v35, v37);
  v43 = *(v68 + 8);

  v43(v66, v37);
  v44 = *(v51 + 8);
  v44(v50, v34);
  v43(v35, v37);
  v44(v67, v34);
}

uint64_t sub_1004562BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a1;
  v119 = a3;
  v116 = type metadata accessor for Date();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v122 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for ScrollViewProxy();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v127 = v5;
  v114 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for DayPickerViewModel(0);
  __chkstk_darwin(v126);
  v113 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v109);
  v110 = (&v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = type metadata accessor for AccessibilityChildBehavior();
  v105 = *(v106 - 1);
  __chkstk_darwin(v106);
  v103 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  __chkstk_darwin(v102);
  v10 = &v92 - v9;
  v121 = type metadata accessor for ScrollIndicatorVisibility();
  v11 = *(v121 - 1);
  __chkstk_darwin(v121);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CBB090, &qword_100A509A0);
  v120 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v92 - v15;
  v96 = sub_10022C350(&qword_100CBB098, &qword_100A509A8);
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v18 = &v92 - v17;
  v98 = sub_10022C350(&qword_100CBB0A0, &qword_100A509B0);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v93 = &v92 - v19;
  v101 = sub_10022C350(&qword_100CBB0A8, &qword_100A509B8);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v95 = &v92 - v20;
  v21 = sub_10022C350(&qword_100CBB0B0, &qword_100A509C0);
  __chkstk_darwin(v21 - 8);
  v99 = &v92 - v22;
  v104 = sub_10022C350(&qword_100CBB0B8, &qword_100A509C8);
  __chkstk_darwin(v104);
  v107 = &v92 - v23;
  v123 = sub_10022C350(&qword_100CBB0C0, &qword_100A509D0);
  __chkstk_darwin(v123);
  v108 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v124 = &v92 - v26;
  v112 = sub_10022C350(&qword_100CBB0C8, &qword_100A509D8);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v125 = &v92 - v27;
  static Axis.Set.horizontal.getter();
  v129 = a2;
  v130 = a2;
  sub_10022C350(&qword_100CBB0D0, &qword_100A509E0);
  sub_10045969C();
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.never.getter();
  sub_10022C350(&qword_100CB59A8, &qword_100A4D640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v29 = static Axis.Set.vertical.getter();
  *(inited + 32) = v29;
  v30 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v30;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v29)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v30)
  {
    Axis.Set.init(rawValue:)();
  }

  v31 = sub_100006F64(&qword_100CBB0F0, &qword_100CBB090, &qword_100A509A0, &protocol conformance descriptor for ScrollView<A>);
  View.scrollIndicators(_:axes:)();
  (*(v11 + 8))(v13, v121);
  (*(v120 + 8))(v16, v14);
  v32 = enum case for DynamicTypeSize.accessibility1(_:);
  v33 = type metadata accessor for DynamicTypeSize();
  (*(*(v33 - 8) + 104))(v10, v32, v33);
  sub_10045AA9C(&qword_100CA5390, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *&v131 = v14;
    *(&v131 + 1) = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v37 = v93;
    v38 = v96;
    v39 = v102;
    View.dynamicTypeSize<A>(_:)();
    sub_1000180EC(v10, &unk_100CE1680, &unk_100A450F0);
    (*(v94 + 8))(v18, v38);
    v40 = v103;
    static AccessibilityChildBehavior.ignore.getter();
    *&v131 = v38;
    *(&v131 + 1) = v39;
    *&v132 = OpaqueTypeConformance2;
    *(&v132 + 1) = v36;
    v41 = swift_getOpaqueTypeConformance2();
    v42 = v95;
    v43 = v98;
    View.accessibilityElement(children:)();
    (*(v105 + 8))(v40, v106);
    (*(v97 + 8))(v37, v43);
    v44 = LocalizedStringKey.init(stringLiteral:)();
    v48 = Text.init(_:tableName:bundle:comment:)(v44, v46, v45 & 1, v47, 0, 0, 0, 0, 0, 256);
    v50 = v49;
    LOBYTE(v37) = v51;
    *&v131 = v43;
    *(&v131 + 1) = v41;
    swift_getOpaqueTypeConformance2();
    v52 = v99;
    v53 = v101;
    View.accessibility(label:)();
    sub_10010CD64(v48, v50, v37 & 1);

    (*(v100 + 8))(v42, v53);
    v54 = v113;
    v105 = *(v129 + 8);
    sub_100989124();
    v55 = v126;
    v56 = (v54 + *(v126 + 24));
    v58 = *v56;
    v57 = v56[1];

    v106 = type metadata accessor for DayPickerViewModel;
    sub_10045ACF0(v54, type metadata accessor for DayPickerViewModel);
    v59 = v110;
    *v110 = v58;
    *(v59 + 8) = v57;
    type metadata accessor for AutomationCellInfo(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v60 = v107;
    v61 = &v107[*(v104 + 36)];
    v62 = type metadata accessor for AutomationInfoProperty(0);
    sub_10045AC94(v59, &v61[*(v62 + 24)], type metadata accessor for AutomationInfo);
    sub_10045ACF0(v59, type metadata accessor for AutomationInfo);
    *v61 = 0;
    *(v61 + 1) = 0xE000000000000000;
    *(v61 + 2) = swift_getKeyPath();
    v61[24] = 0;
    sub_10011C0F0(v52, v60, &qword_100CBB0B0, &qword_100A509C0);
    sub_100989124();
    v63 = (v54 + *(v55 + 28));
    v65 = *v63;
    v64 = v63[1];

    sub_10045ACF0(v54, type metadata accessor for DayPickerViewModel);
    *&v131 = v65;
    *(&v131 + 1) = v64;
    sub_10002D5A4();
    v66 = Text.init<A>(_:)();
    v68 = v67;
    LOBYTE(v55) = v69;
    sub_10045A5A0();
    v70 = v108;
    View.accessibilityValue(_:)();
    sub_10010CD64(v66, v68, v55 & 1);

    sub_1000180EC(v60, &qword_100CBB0B8, &qword_100A509C8);
    sub_100459654(v129, &v131);
    v71 = v117;
    v72 = (v117 + 16);
    v121 = *(v117 + 16);
    v73 = v114;
    v74 = v118;
    v121(v114, v128, v118);
    v110 = v72;
    v75 = *(v71 + 80);
    v76 = swift_allocObject();
    v77 = v132;
    v76[1] = v131;
    v76[2] = v77;
    v78 = v134;
    v76[3] = v133;
    v76[4] = v78;
    v120 = *(v71 + 32);
    (v120)(v76 + ((v75 + 80) & ~v75), v73, v74);
    ModifiedContent<>.accessibilityAdjustableAction(_:)();

    sub_1000180EC(v70, &qword_100CBB0C0, &qword_100A509D0);
    sub_100989124();
    v79 = v115;
    v80 = v116;
    (*(v115 + 16))(v122, v54 + *(v126 + 20), v116);
    sub_10045ACF0(v54, v106);
    v121(v73, v128, v74);
    v81 = (v75 + 16) & ~v75;
    v127 += v81;
    v82 = swift_allocObject();
    (v120)(v82 + v81, v73, v74);
    sub_10045A954();
    sub_10045AA9C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v83 = v122;
    v84 = v124;
    View.onChange<A>(of:initial:_:)();

    (*(v79 + 8))(v83, v80);
    sub_1000180EC(v84, &qword_100CBB0C0, &qword_100A509D0);
    v121(v73, v128, v74);
    sub_100459654(v129, &v131);
    v85 = (v127 + 7) & 0xFFFFFFFFFFFFFFF8;
    v86 = swift_allocObject();
    (v120)(v86 + v81, v73, v74);
    v87 = (v86 + v85);
    v88 = v132;
    *v87 = v131;
    v87[1] = v88;
    v89 = v134;
    v87[2] = v133;
    v87[3] = v89;
    v90 = v119;
    (*(v111 + 32))(v119, v125, v112);
    result = sub_10022C350(&qword_100CBB110, &qword_100A50A18);
    v91 = (v90 + *(result + 36));
    *v91 = sub_10045AA10;
    v91[1] = v86;
    v91[2] = 0;
    v91[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10045743C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CBB0E8, &qword_100A509E8);
  __chkstk_darwin(v4 - 8);
  v6 = __src - v5;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  sub_10022C350(&qword_100CBB120, &qword_100A50A28);
  sub_1004575E0(a1);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10011C0F0(v6, a2, &qword_100CBB0E8, &qword_100A509E8);
  v7 = sub_10022C350(&qword_100CBB0D0, &qword_100A509E0);
  return memcpy((a2 + *(v7 + 36)), __src, 0x70uLL);
}

uint64_t sub_1004575E0(uint64_t a1)
{
  v2 = type metadata accessor for DayPickerViewModel(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100989124();
  v5 = *v4;

  sub_10045ACF0(v4, type metadata accessor for DayPickerViewModel);
  v12 = v5;
  swift_getKeyPath();
  sub_100459654(a1, v11);
  v6 = swift_allocObject();
  v7 = v11[1];
  v6[1] = v11[0];
  v6[2] = v7;
  v8 = v11[3];
  v6[3] = v11[2];
  v6[4] = v8;
  sub_10022C350(&qword_100CBB128, &qword_100A50A50);
  sub_10022C350(&qword_100CBB130, &qword_100A50A58);
  sub_100006F64(&qword_100CBB138, &qword_100CBB128, &qword_100A50A50, &protocol conformance descriptor for [A]);
  sub_10045AA9C(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100006F64(&qword_100CBB140, &qword_100CBB130, &qword_100A50A58, &protocol conformance descriptor for IDView<A, B>);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100457800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DayPickerViewModel.CalendarDayViewModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_10022C350(&qword_100CBB148, &qword_100A50A60);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = sub_10022C350(&qword_100CBB150, &qword_100A50A68);
  sub_100457A80(a2, a1, &v11[*(v12 + 44)]);
  sub_100459654(a2, v20);
  sub_10045AC94(a1, v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DayPickerViewModel.CalendarDayViewModel);
  v13 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = v20[1];
  v14[1] = v20[0];
  v14[2] = v15;
  v16 = v20[3];
  v14[3] = v20[2];
  v14[4] = v16;
  sub_10045AB84(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_100006F64(&qword_100CBB158, &qword_100CBB148, &qword_100A50A60, &protocol conformance descriptor for HStack<A>);
  View.onTapGesture(count:perform:)();

  sub_1000180EC(v11, &qword_100CBB148, &qword_100A50A60);
  v17 = *(sub_10022C350(&qword_100CBB130, &qword_100A50A58) + 52);
  v18 = type metadata accessor for Date();
  return (*(*(v18 - 8) + 16))(a3 + v17, a1, v18);
}

uint64_t sub_100457A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v27 = a3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CAD1C8, &qword_100A3C5C0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for DayView(0);
  v13 = (v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v26 = a1;
  v19 = sub_100457DFC(a2, sub_1003DFB78);
  sub_10045AC94(a2, v18, type metadata accessor for DayPickerViewModel.CalendarDayViewModel);
  sub_100455964();
  Binding.wrappedValue.getter();
  sub_1000180EC(v11, &qword_100CAD1C8, &qword_100A3C5C0);
  LOBYTE(a1) = static Date.== infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  *&v18[v13[8]] = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  swift_storeEnumTagMultiPayload();
  *&v18[v13[9]] = swift_getKeyPath();
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  swift_storeEnumTagMultiPayload();
  v18[v13[7]] = a1 & 1;
  *&v18[v13[10]] = 0x4042000000000000;
  *&v18[v13[11]] = 0x4010000000000000;
  v20 = sub_100457DFC(a2, sub_1002F54E4);
  sub_10045AC94(v18, v15, type metadata accessor for DayView);
  v21 = v27;
  *v27 = v19;
  *(v21 + 8) = 0;
  v22 = v21;
  v23 = sub_10022C350(&qword_100CBB160, &qword_100A50AD0);
  sub_10045AC94(v15, v22 + *(v23 + 48), type metadata accessor for DayView);
  v24 = v22 + *(v23 + 64);
  *v24 = v20;
  *(v24 + 8) = 0;
  sub_10045ACF0(v18, type metadata accessor for DayView);
  return sub_10045ACF0(v15, type metadata accessor for DayView);
}

double sub_100457DFC(uint64_t a1, void (*a2)(uint64_t))
{
  v48 = a1;
  v49 = a2;
  v2 = type metadata accessor for Date();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v45 = v7 - v6;
  v8 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for DayPickerViewModel(0);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = (v15 - v14);
  v17 = sub_10022C350(&qword_100CBB118, &qword_100A50A20);
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  v21 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_100003848();
  v46 = v23;
  __chkstk_darwin(v24);
  v26 = &v44 - v25;
  __chkstk_darwin(v27);
  v29 = &v44 - v28;
  v50 = sub_1004558C8();
  v47 = v4;
  v30 = *(v4 + 16);
  v30(v29, v48, v2);
  sub_10001B350(v29, 0, 1, v2);
  sub_100989124();
  v31 = *v16;

  sub_10045ACF0(v16, type metadata accessor for DayPickerViewModel);
  v49(v31);

  v32 = type metadata accessor for DayPickerViewModel.CalendarDayViewModel(0);
  if (sub_100024D10(v20, 1, v32) == 1)
  {
    sub_1000180EC(v20, &qword_100CBB118, &qword_100A50A20);
    v33 = 1;
  }

  else
  {
    v30(v26, v20, v2);
    sub_10045ACF0(v20, type metadata accessor for DayPickerViewModel.CalendarDayViewModel);
    v33 = 0;
  }

  sub_10001B350(v26, v33, 1, v2);
  v34 = *(v8 + 48);
  sub_1000302D8(v29, v11, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000302D8(v26, &v11[v34], &unk_100CB2CF0, &unk_100A2D7F0);
  sub_10000554C(v11);
  if (v36)
  {
    sub_100074A1C(v26);
    sub_100074A1C(v29);
    sub_10000554C(&v11[v34]);
    if (v36)
    {
      sub_1000180EC(v11, &unk_100CB2CF0, &unk_100A2D7F0);
LABEL_17:
      if (qword_100CA20B8 != -1)
      {
        sub_100010058(&qword_100CA20B8);
      }

      sub_1000284D8();
      v37 = sub_100472710();
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v35 = v46;
  sub_1000302D8(v11, v46, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_10000554C(&v11[v34]);
  if (v36)
  {
    sub_100074A1C(v26);
    sub_100074A1C(v29);
    (*(v47 + 8))(v35, v2);
LABEL_12:
    sub_1000180EC(v11, qword_100CA4F80, &unk_100A580C0);
    goto LABEL_13;
  }

  v38 = v47;
  v39 = v45;
  (*(v47 + 32))(v45, &v11[v34], v2);
  sub_10045AA9C(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v38 + 8);
  v41(v39, v2);
  sub_1000180EC(v26, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000180EC(v29, &unk_100CB2CF0, &unk_100A2D7F0);
  v41(v35, v2);
  sub_1000180EC(v11, &unk_100CB2CF0, &unk_100A2D7F0);
  if (v40)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (qword_100CA20B8 != -1)
  {
    sub_100010058(&qword_100CA20B8);
  }

  sub_1000284D8();
  v37 = sub_100472710() * 0.5;
LABEL_20:
  v42 = 1.0;
  if (v50)
  {
    v42 = 0.5;
  }

  return v42 * v37;
}

uint64_t sub_10045836C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CAD1C8, &qword_100A3C5C0);
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  sub_100455964();
  (*(v4 + 16))(v6, a2, v3);
  Binding.wrappedValue.setter();
  return sub_1000180EC(v9, &qword_100CAD1C8, &qword_100A3C5C0);
}

uint64_t sub_1004584CC(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v71 = a2;
  v67 = a1;
  v3 = type metadata accessor for Calendar();
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v63 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10022C350(&qword_100CAD1C8, &qword_100A3C5C0);
  __chkstk_darwin(v69);
  v73 = &v60 - v5;
  v6 = type metadata accessor for DayPickerViewModel(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&v60 - v10);
  v12 = sub_10022C350(&qword_100CBB118, &qword_100A50A20);
  __chkstk_darwin(v12 - 8);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  v68 = type metadata accessor for Date();
  v72 = *(v68 - 8);
  __chkstk_darwin(v68);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v66 = &v60 - v21;
  __chkstk_darwin(v22);
  v62 = &v60 - v23;
  __chkstk_darwin(v24);
  v26 = &v60 - v25;
  __chkstk_darwin(v27);
  v29 = &v60 - v28;
  __chkstk_darwin(v30);
  v61 = &v60 - v31;
  v32 = type metadata accessor for AccessibilityAdjustmentDirection();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v36 = &v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v36, v67, v32, v34);
  v37 = (*(v33 + 88))(v36, v32);
  if (v37 == enum case for AccessibilityAdjustmentDirection.increment(_:))
  {
    sub_100989124();
    v38 = *v8;

    sub_10045ACF0(v8, type metadata accessor for DayPickerViewModel);
    sub_1002F54E4(v38);

    v39 = type metadata accessor for DayPickerViewModel.CalendarDayViewModel(0);
    if (sub_100024D10(v14, 1, v39) == 1)
    {
      v40 = v14;
LABEL_7:
      sub_1000180EC(v40, &qword_100CBB118, &qword_100A50A20);
LABEL_11:
      v44 = v68;
      v46 = v73;
      goto LABEL_12;
    }

    v43 = v72;
    v44 = v68;
    v67 = *(v72 + 16);
    v67(v19, v14, v68);
    sub_10045ACF0(v14, type metadata accessor for DayPickerViewModel.CalendarDayViewModel);
    v45 = v66;
    (*(v43 + 32))(v66, v19, v44);
    v46 = v73;
    sub_100455964();
    Binding.wrappedValue.getter();
    v47 = v45;
    sub_1000180EC(v46, &qword_100CAD1C8, &qword_100A3C5C0);
    LOBYTE(v45) = static Date.> infix(_:_:)();
    v48 = *(v43 + 8);
    v48(v26, v44);
    if (v45)
    {
      sub_100455964();
      v49 = v62;
      Binding.wrappedValue.getter();
      sub_1000180EC(v73, &qword_100CAD1C8, &qword_100A3C5C0);
      v50 = v63;
      static Calendar.current.getter();
      Date.wc_addDays(_:calendar:)();
      (*(v64 + 8))(v50, v65);
      v48(v49, v44);
      sub_100455964();
      v67(v49, v26, v44);
      Binding.wrappedValue.setter();
      v46 = v73;
      sub_1000180EC(v73, &qword_100CAD1C8, &qword_100A3C5C0);
      v48(v26, v44);
      v48(v66, v44);
    }

    else
    {
      v48(v47, v44);
    }
  }

  else
  {
    if (v37 != enum case for AccessibilityAdjustmentDirection.decrement(_:))
    {
      (*(v33 + 8))(v36, v32);
      goto LABEL_11;
    }

    sub_100989124();
    v41 = *v11;

    sub_10045ACF0(v11, type metadata accessor for DayPickerViewModel);
    sub_1003DFB78(v41, v17);

    v42 = type metadata accessor for DayPickerViewModel.CalendarDayViewModel(0);
    if (sub_100024D10(v17, 1, v42) == 1)
    {
      v40 = v17;
      goto LABEL_7;
    }

    v52 = v72;
    v44 = v68;
    v67 = *(v72 + 16);
    v67(v29, v17, v68);
    sub_10045ACF0(v17, type metadata accessor for DayPickerViewModel.CalendarDayViewModel);
    v53 = v61;
    (*(v52 + 32))(v61, v29, v44);
    v46 = v73;
    sub_100455964();
    Binding.wrappedValue.getter();
    v54 = v53;
    sub_1000180EC(v46, &qword_100CAD1C8, &qword_100A3C5C0);
    v55 = static Date.< infix(_:_:)();
    v56 = *(v52 + 8);
    v56(v26, v44);
    if (v55)
    {
      sub_100455964();
      v57 = v62;
      Binding.wrappedValue.getter();
      sub_1000180EC(v73, &qword_100CAD1C8, &qword_100A3C5C0);
      v58 = v63;
      static Calendar.current.getter();
      Date.wc_addDays(_:calendar:)();
      (*(v64 + 8))(v58, v65);
      v56(v57, v44);
      sub_100455964();
      v67(v57, v26, v44);
      Binding.wrappedValue.setter();
      v46 = v73;
      sub_1000180EC(v73, &qword_100CAD1C8, &qword_100A3C5C0);
      v56(v26, v44);
      v59 = v61;
    }

    else
    {
      v59 = v54;
    }

    v56(v59, v44);
  }

LABEL_12:
  sub_100455964();
  Binding.wrappedValue.getter();
  sub_1000180EC(v46, &qword_100CAD1C8, &qword_100A3C5C0);
  sub_10045AA9C(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  ScrollViewProxy.scrollTo<A>(_:anchor:)();
  return (*(v72 + 8))(v26, v44);
}

uint64_t sub_100458E84(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100458EF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date();
  sub_10045AA9C(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_100458F84()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DayPickerViewModel(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100989124();
  (*(v1 + 16))(v3, &v7[*(v5 + 28)], v0);
  sub_10045ACF0(v7, type metadata accessor for DayPickerViewModel);
  sub_10045AA9C(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  ScrollViewProxy.scrollTo<A>(_:anchor:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10045913C()
{
  v0 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  __chkstk_darwin(v0);
  v2 = &v22 - v1;
  v3 = type metadata accessor for DayPickerViewModel(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB66D8, &qword_100A8C770);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  sub_100989124();
  v10 = &v6[*(v4 + 32)];
  v12 = *v10;
  v11 = *(v10 + 1);

  sub_10045ACF0(v6, type metadata accessor for DayPickerViewModel);
  v22 = v12;
  v23 = v11;
  sub_10002D5A4();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v22 = v13;
  v23 = v14;
  v17 = v16 & 1;
  v24 = v16 & 1;
  v25 = v18;
  View.accessibilityHidden(_:)();
  sub_10010CD64(v13, v15, v17);

  v19 = enum case for DynamicTypeSize.accessibility1(_:);
  v20 = type metadata accessor for DynamicTypeSize();
  (*(*(v20 - 8) + 104))(v2, v19, v20);
  sub_10045AA9C(&qword_100CA5390, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_10040021C();
    sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_1000180EC(v2, &unk_100CE1680, &unk_100A450F0);
    return sub_1000180EC(v9, &qword_100CB66D8, &qword_100A8C770);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100459448@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DayView(0);
  sub_1000302D8(v1 + *(v10 + 28), v9, &qword_100CA2E38, &qword_100A49D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
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

unint64_t sub_10045969C()
{
  result = qword_100CBB0D8;
  if (!qword_100CBB0D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB0D0, &qword_100A509E0);
    v4[0] = sub_100006F64(&qword_100CBB0E0, &qword_100CBB0E8, &qword_100A509E8, &protocol conformance descriptor for HStack<A>);
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB0D8);
  }

  return result;
}

uint64_t sub_100459754@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CBB218, &qword_100A50B38);
  return sub_1004597A8(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_1004597A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v99 = a1;
  v88 = a2;
  v3 = sub_10022C350(&qword_100CBB220, &qword_100A50B40);
  __chkstk_darwin(v3 - 8);
  v86 = &v75[-v4];
  v80 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  __chkstk_darwin(v80);
  v96 = &v75[-v5];
  v85 = sub_10022C350(&qword_100CBB228, &qword_100A50B48);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v97 = &v75[-v6];
  v81 = sub_10022C350(&qword_100CBB230, &qword_100A50B50);
  __chkstk_darwin(v81);
  v87 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v82 = &v75[-v9];
  __chkstk_darwin(v10);
  v84 = &v75[-v11];
  v12 = type metadata accessor for Font.TextStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v75[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = type metadata accessor for DayPickerViewModel.CalendarDayViewModel(0);
  v16 = (a1 + v98[5]);
  v17 = v16[1];
  v101[0] = *v16;
  v101[1] = v17;
  v95 = sub_10002D5A4();

  v18 = Text.init<A>(_:)();
  v20 = v19;
  LOBYTE(v17) = v21;
  v22 = *(v13 + 104);
  v93 = v13 + 104;
  v94 = v22;
  v90 = v12;
  v22(v15, enum case for Font.TextStyle.caption2(_:), v12);
  static Font.Weight.bold.getter();
  static Font.system(_:weight:)();
  v23 = *(v13 + 8);
  v91 = v13 + 8;
  v92 = v23;
  v23(v15, v12);
  v24 = Text.font(_:)();
  v26 = v25;
  LOBYTE(v13) = v27;
  v89 = v28;

  sub_10010CD64(v18, v20, v17 & 1);

  static Color.primary.getter();
  v29 = Text.foregroundColor(_:)();
  v77 = v30;
  v78 = v29;
  v76 = v31;
  v79 = v32;

  sub_10010CD64(v24, v26, v13 & 1);

  v33 = v99;
  v34 = (v99 + v98[6]);
  v35 = v34[1];
  v101[0] = *v34;
  v101[1] = v35;

  v36 = Text.init<A>(_:)();
  v38 = v37;
  LOBYTE(v20) = v39;
  v40 = v90;
  v94(v15, enum case for Font.TextStyle.body(_:), v90);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v92(v15, v40);
  v41 = Text.font(_:)();
  v43 = v42;
  v45 = v44;
  v95 = v46;

  sub_10010CD64(v36, v38, v20 & 1);

  LODWORD(v94) = *(v33 + *(type metadata accessor for DayView(0) + 20));
  if (v94 == 1)
  {
    v47 = [objc_opt_self() systemBackgroundColor];
    Color.init(_:)();
  }

  else if (*(v33 + v98[7]))
  {
    if (*(v33 + v98[7]) == 1)
    {
      static Color.cyan.getter();
    }

    else
    {
      static Color.primary.getter();
    }
  }

  else
  {
    static Color.gray.getter();
  }

  v98 = Text.foregroundColor(_:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;

  sub_10010CD64(v41, v43, v45 & 1);

  static Alignment.center.getter();
  while (1)
  {
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v102 = v51 & 1;
    v100[0] = v98;
    v100[1] = v49;
    LOBYTE(v100[2]) = v51 & 1;
    v100[3] = v53;
    v54 = enum case for DynamicTypeSize.accessibility1(_:);
    v49 = type metadata accessor for DynamicTypeSize();
    v55 = v96;
    (*(*(v49 - 8) + 104))(v96, v54, v49);
    sub_10045AA9C(&qword_100CA5390, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v57 = v97;
    if (v56)
    {
      break;
    }

    __break(1u);
    static os_log_type_t.fault.getter();
    v74 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  sub_10022C350(&qword_100CB5BF0, &qword_100A493E0);
  sub_1003F04CC();
  sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
  View.dynamicTypeSize<A>(_:)();
  sub_1000180EC(v55, &unk_100CE1680, &unk_100A450F0);
  memcpy(v101, v100, 0x90uLL);
  sub_1000180EC(v101, &qword_100CB5BF0, &qword_100A493E0);
  if (v94)
  {
    v58 = v86;
    sub_10045A0E0(v99, v86);
    v59 = 0;
  }

  else
  {
    v59 = 1;
    v58 = v86;
  }

  v60 = sub_10022C350(&qword_100CBB238, &qword_100A50B58);
  sub_10001B350(v58, v59, 1, v60);
  v61 = static Alignment.center.getter();
  v63 = v62;
  v64 = v82;
  v65 = &v82[*(v81 + 36)];
  sub_10011C0F0(v58, v65, &qword_100CBB220, &qword_100A50B40);
  v66 = (v65 + *(sub_10022C350(&qword_100CBB240, &qword_100A50B60) + 36));
  *v66 = v61;
  v66[1] = v63;
  (*(v83 + 32))(v64, v57, v85);
  v67 = v84;
  sub_10011C0F0(v64, v84, &qword_100CBB230, &qword_100A50B50);
  v68 = v87;
  sub_1001ECC34(v67, v87);
  v69 = v88;
  v71 = v77;
  v70 = v78;
  *v88 = v78;
  v69[1] = v71;
  LOBYTE(v65) = v76 & 1;
  *(v69 + 16) = v76 & 1;
  v69[3] = v79;
  v72 = sub_10022C350(&qword_100CBB248, &qword_100A50B68);
  sub_1001ECC34(v68, v69 + *(v72 + 48));
  sub_10010CD54(v70, v71, v65);

  sub_1000180EC(v67, &qword_100CBB230, &qword_100A50B50);
  sub_1000180EC(v68, &qword_100CBB230, &qword_100A50B50);
  sub_10010CD64(v70, v71, v65);
}

uint64_t sub_10045A0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v33 = sub_10022C350(&qword_100CBB250, &qword_100A50B70);
  __chkstk_darwin(v33);
  v6 = &v32 - v5;
  v7 = sub_10022C350(&qword_100CBB258, &qword_100A50B78);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for DynamicTypeSize();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100459448(v16);
  v17 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v14 + 8))(v16, v13);
  v18 = *(a1 + *(type metadata accessor for DayPickerViewModel.CalendarDayViewModel(0) + 28));
  if (v17)
  {
    if (v18)
    {
      if (v18 == 1)
      {
        v19 = static Color.cyan.getter();
      }

      else
      {
        v19 = static Color.white.getter();
      }
    }

    else
    {
      v19 = static Color.gray.getter();
    }

    v21 = v19;
    v22 = *(v3 + *(type metadata accessor for DayView(0) + 32));
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v35[6] = v37;
    *&v35[22] = v38;
    *&v35[38] = v39;
    v23 = v22 * 0.15;
    v24 = &v9[*(v7 + 36)];
    v25 = *(type metadata accessor for RoundedRectangle() + 20);
    v26 = enum case for RoundedCornerStyle.continuous(_:);
    v27 = type metadata accessor for RoundedCornerStyle();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = v23;
    v24[1] = v23;
    *(v24 + *(sub_10022C350(&qword_100CB34E0, &qword_100A5BCB0) + 36)) = 256;
    *v9 = v21;
    *(v9 + 4) = 256;
    v28 = *&v35[16];
    *(v9 + 10) = *v35;
    *(v9 + 26) = v28;
    *(v9 + 42) = *&v35[32];
    *(v9 + 7) = *&v35[46];
    sub_10011C0F0(v9, v12, &qword_100CBB258, &qword_100A50B78);
    sub_1000302D8(v12, v6, &qword_100CBB258, &qword_100A50B78);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CBB260, &qword_100A6F1A0);
    sub_10045AE78();
    sub_10045AFE8();
    _ConditionalContent<>.init(storage:)();
    return sub_1000180EC(v12, &qword_100CBB258, &qword_100A50B78);
  }

  else
  {
    if (v18)
    {
      if (v18 == 1)
      {
        v20 = static Color.cyan.getter();
      }

      else
      {
        v20 = static Color.white.getter();
      }
    }

    else
    {
      v20 = static Color.gray.getter();
    }

    v30 = v20;
    type metadata accessor for DayView(0);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v36[6] = v37;
    *&v36[22] = v38;
    *&v36[38] = v39;
    v31 = *&v36[16];
    *(v6 + 10) = *v36;
    *v6 = v30;
    *(v6 + 4) = 256;
    *(v6 + 26) = v31;
    *(v6 + 42) = *&v36[32];
    *(v6 + 7) = *&v36[46];
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CBB260, &qword_100A6F1A0);
    sub_10045AE78();
    sub_10045AFE8();
    return _ConditionalContent<>.init(storage:)();
  }
}

unint64_t sub_10045A5A0()
{
  result = qword_100CBB0F8;
  if (!qword_100CBB0F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB0B8, &qword_100A509C8);
    v4[0] = sub_10045A65C();
    v4[1] = sub_10045AA9C(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB0F8);
  }

  return result;
}

unint64_t sub_10045A65C()
{
  result = qword_100CBB100;
  if (!qword_100CBB100)
  {
    v5[16] = v0;
    v5[17] = v1;
    v3 = sub_10022E824(&qword_100CBB0B0, &qword_100A509C0);
    v4 = sub_10022E824(&qword_100CBB0A0, &qword_100A509B0);
    sub_10022E824(&qword_100CBB098, &qword_100A509A8);
    sub_10022E824(&unk_100CE1680, &unk_100A450F0);
    sub_10022E824(&qword_100CBB090, &qword_100A509A0);
    sub_100006F64(&qword_100CBB0F0, &qword_100CBB090, &qword_100A509A0, &protocol conformance descriptor for ScrollView<A>);
    v5[4] = swift_getOpaqueTypeConformance2();
    v5[5] = sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_10045AA9C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CBB100);
  }

  return result;
}

uint64_t sub_10045A868(void (*a1)(char *, char *, uint64_t))
{
  v3 = type metadata accessor for ScrollViewProxy();
  sub_100003810(v3);
  v5 = v1 + ((*(v4 + 80) + 80) & ~*(v4 + 80));

  return sub_1004584CC(a1, v1 + 16, v5);
}

uint64_t sub_10045A8D8(uint64_t a1)
{
  v2 = type metadata accessor for ScrollViewProxy();
  sub_100003810(v2);

  return sub_100458E84(a1);
}

unint64_t sub_10045A954()
{
  result = qword_100CBB108;
  if (!qword_100CBB108)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB0C0, &qword_100A509D0);
    v4[0] = sub_10045A5A0();
    v4[1] = sub_10045AA9C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB108);
  }

  return result;
}

uint64_t sub_10045AA10()
{
  type metadata accessor for ScrollViewProxy();

  return sub_100458F84();
}

uint64_t sub_10045AA9C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10045AB0C()
{
  swift_unknownObjectRelease();

  sub_100006F14((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_10045AB84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayPickerViewModel.CalendarDayViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045ABE8()
{
  v1 = type metadata accessor for DayPickerViewModel.CalendarDayViewModel(0);
  sub_100003810(v1);
  v3 = v0 + ((*(v2 + 80) + 80) & ~*(v2 + 80));

  return sub_10045836C(v0 + 16, v3);
}

uint64_t type metadata accessor for DayView(uint64_t a1)
{
  result = qword_100CBB1C0;
  if (!qword_100CBB1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10045AC94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10045ACF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_10045AD70(uint64_t a1)
{
  type metadata accessor for DayPickerViewModel.CalendarDayViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1001BB22C(319, &qword_100CAD8E8, &type metadata accessor for ColorSchemeContrast);
    if (v2 <= 0x3F)
    {
      sub_1001BB22C(319, &qword_100CB64B8, &type metadata accessor for DynamicTypeSize);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10045AE78()
{
  result = qword_100CBB268;
  if (!qword_100CBB268)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB258, &qword_100A50B78);
    v4[0] = sub_10045AF30();
    v4[1] = sub_100006F64(&qword_100CB80A0, &qword_100CB34E0, &qword_100A5BCB0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB268);
  }

  return result;
}

unint64_t sub_10045AF30()
{
  result = qword_100CBB270;
  if (!qword_100CBB270)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB278, &unk_100A58990);
    v4[0] = sub_100006F64(&qword_100CBB280, &qword_100CBB288, &qword_100A6ED60, &protocol conformance descriptor for _ShapeView<A, B>);
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB270);
  }

  return result;
}

unint64_t sub_10045AFE8()
{
  result = qword_100CBB290;
  if (!qword_100CBB290)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB260, &qword_100A6F1A0);
    v4[0] = sub_100006F64(&qword_100CBB298, &qword_100CBB2A0, &unk_100A6F1B0, &protocol conformance descriptor for _ShapeView<A, B>);
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB290);
  }

  return result;
}

void *TipView.init(model:style:onAction:onDismiss:)@<X0>(const void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v20 = *(type metadata accessor for TipView(0) + 32);
  *(a9 + v20) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  swift_storeEnumTagMultiPayload();
  result = memcpy((a9 + 32), a1, 0x48uLL);
  *a9 = a2;
  *(a9 + 8) = a10;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 25) = HIBYTE(a4) & 1;
  *(a9 + 104) = a5;
  *(a9 + 112) = a6;
  *(a9 + 120) = a7;
  *(a9 + 128) = a8;
  return result;
}

uint64_t sub_10045B1F0@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  sub_100003CF8();
  v11 = type metadata accessor for TipView(0);
  sub_1000302D8(v1 + *(v11 + 32), v2, &qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    return (*(v12 + 32))(a1, v2);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_10045B420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v9);
  sub_100003CF8();
  (*(v10 + 16))(v6, a1);
  return a6(v6);
}

uint64_t TipView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CBB2B8, &qword_100A50BB8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = sub_10022C350(&qword_100CBB2C0, &qword_100A50BC0);
  sub_1000037C4();
  v15 = v14;
  sub_100003828();
  __chkstk_darwin(v16);
  sub_100003CF8();
  *v12 = static VerticalAlignment.top.getter();
  *(v12 + 1) = 0x4032000000000000;
  v12[16] = 0;
  v17 = sub_10022C350(&qword_100CBB2C8, &qword_100A50BC8);
  sub_10045B85C(v1, &v12[*(v17 + 44)]);
  v18 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v20 = &v12[*(v9 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  static AccessibilityChildBehavior.contain.getter();
  v21 = sub_10045DE40();
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v8, v3);
  sub_1000180EC(v12, &qword_100CBB2B8, &qword_100A50BB8);
  v22 = [objc_opt_self() mainBundle];
  v35._object = 0x8000000100AC84E0;
  v23._countAndFlagsBits = 7366996;
  v23._object = 0xE300000000000000;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0xD00000000000003CLL;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v35);

  v34 = v25;
  v32 = v9;
  v33 = v21;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v26 = v31;
  View.accessibilityLabel<A>(_:)();

  (*(v15 + 8))(v2, v13);
  *(v26 + *(sub_10022C350(&qword_100CBB2E8, &qword_100A50C08) + 36)) = 1;
  static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  sub_100014580();
  v27 = sub_10022C350(&qword_100CBB2F0, &qword_100A50C10);
  sub_100005D98(v27);
  static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  sub_100014580();
  v28 = sub_10022C350(&qword_100CBB2F8, &qword_100A50C18);
  return sub_100005D98(v28);
}

uint64_t sub_10045B85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_10022C350(&qword_100CBB498, &qword_100A50D08);
  __chkstk_darwin(v3 - 8);
  v90 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v88 = (&v72 - v6);
  v7 = type metadata accessor for LayoutDirection();
  v86 = *(v7 - 8);
  v87 = v7;
  __chkstk_darwin(v7);
  v85 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v83 = &v72 - v10;
  v79 = type metadata accessor for BlendMode();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CBB4A0, &qword_100A50D10);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v72 - v18;
  v20 = sub_10022C350(&qword_100CBB4A8, &qword_100A50D18);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v73 = &v72 - v22;
  v74 = sub_10022C350(&qword_100CBB4B0, &qword_100A50D20);
  __chkstk_darwin(v74);
  v24 = &v72 - v23;
  v25 = sub_10022C350(&qword_100CBB4B8, &qword_100A50D28);
  __chkstk_darwin(v25 - 8);
  v72 = &v72 - v26;
  v78 = sub_10022C350(&qword_100CBB4C0, &qword_100A50D30) - 8;
  __chkstk_darwin(v78);
  v75 = &v72 - v27;
  v81 = sub_10022C350(&qword_100CBB4C8, &qword_100A50D38);
  __chkstk_darwin(v81);
  v84 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v80 = &v72 - v30;
  __chkstk_darwin(v31);
  v82 = &v72 - v32;
  sub_10030FB1C(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  (*(v13 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v12);
  v33 = Image.resizable(capInsets:resizingMode:)();

  (*(v13 + 8))(v15, v12);
  v34 = v77;
  v35 = &enum case for BlendMode.plusLighter(_:);
  if (!*a1)
  {
    v35 = &enum case for BlendMode.normal(_:);
  }

  v36 = v76;
  v37 = v79;
  (*(v77 + 104))(v76, *v35, v79);
  (*(v34 + 32))(&v19[*(v17 + 44)], v36, v37);
  *v19 = v33;
  *(v19 + 1) = 0;
  *(v19 + 8) = 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v38 = v19;
  v39 = v73;
  sub_10011C0F0(v38, v73, &qword_100CBB4A0, &qword_100A50D10);
  v40 = (v39 + *(v21 + 44));
  v41 = v92;
  *v40 = v91;
  v40[1] = v41;
  v40[2] = v93;
  v42 = static VerticalAlignment.top.getter();
  sub_10011C0F0(v39, v24, &qword_100CBB4A8, &qword_100A50D18);
  v43 = &v24[*(v74 + 36)];
  *v43 = v42;
  v43[1] = sub_10045C160;
  v43[2] = 0;
  sub_10045E58C();
  v44 = v72;
  View.accessibility(hidden:)();
  sub_1000180EC(v24, &qword_100CBB4B0, &qword_100A50D20);
  v45 = v83;
  sub_10045B1F0(v83);
  v46 = v85;
  v47 = v86;
  v48 = v87;
  (*(v86 + 104))(v85, enum case for LayoutDirection.leftToRight(_:), v87);
  v49 = v46;
  LOBYTE(v46) = static LayoutDirection.== infix(_:_:)();
  v50 = *(v47 + 8);
  v50(v49, v48);
  v50(v45, v48);
  v51 = v75;
  if (v46)
  {
    v52 = 1.0;
  }

  else
  {
    v52 = -1.0;
  }

  static UnitPoint.center.getter();
  v54 = v53;
  v56 = v55;
  sub_10011C0F0(v44, v51, &qword_100CBB4B8, &qword_100A50D28);
  v57 = v51 + *(v78 + 44);
  *v57 = v52;
  *(v57 + 8) = 0x3FF0000000000000;
  *(v57 + 16) = v54;
  *(v57 + 24) = v56;
  v58 = *(a1 + 16);
  if (!v58)
  {
    v58 = static Color.secondary.getter();
  }

  KeyPath = swift_getKeyPath();
  v60 = v51;
  v61 = v80;
  sub_10011C0F0(v60, v80, &qword_100CBB4C0, &qword_100A50D30);
  v62 = v82;
  v63 = (v61 + *(v81 + 36));
  *v63 = KeyPath;
  v63[1] = v58;
  sub_10011C0F0(v61, v62, &qword_100CBB4C8, &qword_100A50D38);

  v64 = static HorizontalAlignment.leading.getter();
  v65 = v88;
  *v88 = v64;
  *(v65 + 8) = 0;
  *(v65 + 16) = 1;
  v66 = sub_10022C350(&qword_100CBB4E8, &qword_100A50D40);
  sub_10045C168(a1, v65 + *(v66 + 44));
  v67 = v84;
  sub_1000302D8(v62, v84, &qword_100CBB4C8, &qword_100A50D38);
  v68 = v90;
  sub_1000302D8(v65, v90, &qword_100CBB498, &qword_100A50D08);
  v69 = v89;
  sub_1000302D8(v67, v89, &qword_100CBB4C8, &qword_100A50D38);
  v70 = sub_10022C350(&qword_100CBB4F0, &qword_100A50D48);
  sub_1000302D8(v68, v69 + *(v70 + 48), &qword_100CBB498, &qword_100A50D08);
  sub_1000180EC(v65, &qword_100CBB498, &qword_100A50D08);
  sub_1000180EC(v62, &qword_100CBB4C8, &qword_100A50D38);
  sub_1000180EC(v68, &qword_100CBB498, &qword_100A50D08);
  return sub_1000180EC(v67, &qword_100CBB4C8, &qword_100A50D38);
}

uint64_t sub_10045C168@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v85 = sub_10022C350(&qword_100CBB4F8, &qword_100A50D50);
  __chkstk_darwin(v85);
  v82 = &v65 - v3;
  v79 = type metadata accessor for PlainButtonStyle();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v65 - v5;
  v74 = sub_10022C350(&qword_100CBB500, &qword_100A50D58);
  __chkstk_darwin(v74);
  v81 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v65 - v8;
  v70 = type metadata accessor for BlendMode();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10022C350(&qword_100CBB508, &qword_100A50D60);
  __chkstk_darwin(v67);
  v11 = &v65 - v10;
  v66 = sub_10022C350(&qword_100CBB510, &qword_100A50D68);
  __chkstk_darwin(v66);
  v72 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  __chkstk_darwin(v16);
  v71 = &v65 - v17;
  v18 = sub_10022C350(&qword_100CBB518, &qword_100A50D70);
  __chkstk_darwin(v18 - 8);
  v84 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v87 = &v65 - v21;
  v22 = sub_10022C350(&qword_100CBB520, &qword_100A50D78);
  __chkstk_darwin(v22 - 8);
  v24 = &v65 - v23;
  v25 = sub_10022C350(&qword_100CBB528, &qword_100A50D80);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v83 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v65 - v29;
  __chkstk_darwin(v31);
  v33 = &v65 - v32;
  *v24 = static VerticalAlignment.top.getter();
  *(v24 + 1) = 0;
  v34 = 1;
  v24[16] = 1;
  v35 = sub_10022C350(&qword_100CBB530, &qword_100A50D88);
  sub_10045CBD4(a1, &v24[*(v35 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10011C0F0(v24, v30, &qword_100CBB520, &qword_100A50D78);
  memcpy(&v30[*(v26 + 44)], __src, 0x70uLL);
  sub_10011C0F0(v30, v33, &qword_100CBB528, &qword_100A50D80);
  if ((a1[25] & 1) == 0)
  {
    Divider.init()();
    v36 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v38 = &v11[*(v67 + 36)];
    *v38 = KeyPath;
    v38[1] = v36;
    v39 = v69;
    v40 = &enum case for BlendMode.plusLighter(_:);
    if (!*a1)
    {
      v40 = &enum case for BlendMode.normal(_:);
    }

    v41 = v68;
    v42 = v70;
    (*(v69 + 104))(v68, *v40, v70);
    (*(v39 + 32))(&v15[*(v66 + 36)], v41, v42);
    sub_10011C0F0(v11, v15, &qword_100CBB508, &qword_100A50D60);
    v43 = v71;
    v44 = sub_10011C0F0(v15, v71, &qword_100CBB510, &qword_100A50D68);
    __chkstk_darwin(v44);

    v45 = v73;
    Button.init(action:label:)();
    v46 = v77;
    PlainButtonStyle.init()();
    sub_100006F64(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
    sub_10045E544(&qword_100CB0848, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v47 = v80;
    v48 = v76;
    v49 = v79;
    View.buttonStyle<A>(_:)();
    (*(v78 + 8))(v46, v49);
    (*(v75 + 8))(v45, v48);
    LOBYTE(v42) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v50 = v47 + *(v74 + 36);
    *v50 = v42;
    *(v50 + 8) = v51;
    *(v50 + 16) = v52;
    *(v50 + 24) = v53;
    *(v50 + 32) = v54;
    *(v50 + 40) = 0;
    v55 = v72;
    sub_1000302D8(v43, v72, &qword_100CBB510, &qword_100A50D68);
    v56 = v81;
    sub_1000302D8(v47, v81, &qword_100CBB500, &qword_100A50D58);
    v57 = v82;
    sub_1000302D8(v55, v82, &qword_100CBB510, &qword_100A50D68);
    v58 = sub_10022C350(&qword_100CBB538, &qword_100A50D90);
    sub_1000302D8(v56, v57 + *(v58 + 48), &qword_100CBB500, &qword_100A50D58);
    sub_1000180EC(v47, &qword_100CBB500, &qword_100A50D58);
    sub_1000180EC(v43, &qword_100CBB510, &qword_100A50D68);
    sub_1000180EC(v56, &qword_100CBB500, &qword_100A50D58);
    sub_1000180EC(v55, &qword_100CBB510, &qword_100A50D68);
    sub_10011C0F0(v57, v87, &qword_100CBB4F8, &qword_100A50D50);
    v34 = 0;
  }

  v59 = v87;
  sub_10001B350(v87, v34, 1, v85);
  v60 = v83;
  sub_1000302D8(v33, v83, &qword_100CBB528, &qword_100A50D80);
  v61 = v84;
  sub_1000302D8(v59, v84, &qword_100CBB518, &qword_100A50D70);
  v62 = v86;
  sub_1000302D8(v60, v86, &qword_100CBB528, &qword_100A50D80);
  v63 = sub_10022C350(&qword_100CBB540, &qword_100A50D98);
  sub_1000302D8(v61, v62 + *(v63 + 48), &qword_100CBB518, &qword_100A50D70);
  sub_1000180EC(v59, &qword_100CBB518, &qword_100A50D70);
  sub_1000180EC(v33, &qword_100CBB528, &qword_100A50D80);
  sub_1000180EC(v61, &qword_100CBB518, &qword_100A50D70);
  return sub_1000180EC(v60, &qword_100CBB528, &qword_100A50D80);
}

uint64_t sub_10045CBD4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DismissButton(0);
  __chkstk_darwin(v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10022C350(&qword_100CBB548, &qword_100A50DA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = sub_10022C350(&qword_100CBB550, &qword_100A50DA8);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  *v18 = static HorizontalAlignment.leading.getter();
  *(v18 + 1) = 0x4000000000000000;
  v18[16] = 0;
  v19 = sub_10022C350(&qword_100CBB558, &qword_100A50DB0);
  sub_10045CEF0(a1, &v18[*(v19 + 44)]);
  if (a1[24])
  {
    sub_10001B350(v12, 1, 1, v4);
  }

  else
  {
    v20 = *a1;
    v22 = *(a1 + 15);
    v21 = *(a1 + 16);
    *v6 = swift_getKeyPath();
    sub_10022C350(&qword_100CB3B70, qword_100A8C1C0);
    swift_storeEnumTagMultiPayload();
    *(v6 + *(v4 + 20)) = v20;
    v23 = (v6 + *(v4 + 24));
    *v23 = v22;
    v23[1] = v21;
    sub_10045E738(v6, v12);
    sub_10001B350(v12, 0, 1, v4);
  }

  sub_1000302D8(v18, v15, &qword_100CBB550, &qword_100A50DA8);
  sub_1000302D8(v12, v9, &qword_100CBB548, &qword_100A50DA0);
  sub_1000302D8(v15, a2, &qword_100CBB550, &qword_100A50DA8);
  v24 = sub_10022C350(&qword_100CBB560, &qword_100A50DE8);
  v25 = a2 + *(v24 + 48);
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_1000302D8(v9, a2 + *(v24 + 64), &qword_100CBB548, &qword_100A50DA0);
  sub_1000180EC(v12, &qword_100CBB548, &qword_100A50DA0);
  sub_1000180EC(v18, &qword_100CBB550, &qword_100A50DA8);
  sub_1000180EC(v9, &qword_100CBB548, &qword_100A50DA0);
  return sub_1000180EC(v15, &qword_100CBB550, &qword_100A50DA8);
}

uint64_t sub_10045CEF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for BlendMode();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v72 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10022C350(&qword_100CA4000, &qword_100A4AB20) - 8;
  __chkstk_darwin(v70);
  v6 = v62 - v5;
  v69 = sub_10022C350(&qword_100CBB568, &qword_100A50DF0) - 8;
  __chkstk_darwin(v69);
  v71 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v67 = v62 - v9;
  __chkstk_darwin(v10);
  v68 = v62 - v11;
  v76 = a1;
  v12 = *(a1 + 64);
  v77 = *(a1 + 56);
  v78 = v12;
  v62[1] = sub_10002D5A4();

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Color.primary.getter();
  v18 = Text.foregroundColor(_:)();
  v20 = v19;
  v22 = v21;

  sub_10010CD64(v13, v15, v17 & 1);

  static Font.headline.getter();
  v23 = Text.font(_:)();
  v25 = v24;
  LOBYTE(v13) = v26;

  sub_10010CD64(v18, v20, v22 & 1);

  static Font.Weight.medium.getter();
  v27 = Text.fontWeight(_:)();
  v63 = v28;
  v64 = v27;
  v65 = v29;
  v66 = v30;
  sub_10010CD64(v23, v25, v13 & 1);

  v31 = *(v76 + 80);
  v77 = *(v76 + 72);
  v78 = v31;

  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  static Font.subheadline.getter();
  v37 = Text.font(_:)();
  v39 = v38;
  v41 = v40;

  sub_10010CD64(v32, v34, v36 & 1);

  static Color.secondary.getter();
  v42 = Text.foregroundColor(_:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;

  sub_10010CD64(v37, v39, v41 & 1);

  v50 = v72;
  v49 = v73;
  v51 = &enum case for BlendMode.plusLighter(_:);
  if (!*v76)
  {
    v51 = &enum case for BlendMode.normal(_:);
  }

  v52 = v74;
  (*(v73 + 104))(v72, *v51, v74);
  (*(v49 + 32))(&v6[*(v70 + 44)], v50, v52);
  *v6 = v42;
  *(v6 + 1) = v44;
  v6[16] = v46 & 1;
  *(v6 + 3) = v48;
  v53 = v67;
  sub_10011C0F0(v6, v67, &qword_100CA4000, &qword_100A4AB20);
  v54 = v68;
  *(v53 + *(v69 + 44)) = 256;
  sub_10011C0F0(v53, v54, &qword_100CBB568, &qword_100A50DF0);
  v55 = v71;
  sub_1000302D8(v54, v71, &qword_100CBB568, &qword_100A50DF0);
  v56 = v75;
  v58 = v63;
  v57 = v64;
  *v75 = v64;
  v56[1] = v58;
  LOBYTE(v53) = v65 & 1;
  *(v56 + 16) = v65 & 1;
  v56[3] = v66;
  *(v56 + 16) = 256;
  v59 = v56;
  v60 = sub_10022C350(&qword_100CBB570, &qword_100A50DF8);
  sub_1000302D8(v55, v59 + *(v60 + 48), &qword_100CBB568, &qword_100A50DF0);
  sub_10010CD54(v57, v58, v53);

  sub_1000180EC(v54, &qword_100CBB568, &qword_100A50DF0);
  sub_1000180EC(v55, &qword_100CBB568, &qword_100A50DF0);
  sub_10010CD64(v57, v58, v53);
}

uint64_t sub_10045D42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v27[2] = v8;
  v27[3] = v9;
  sub_10002D5A4();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  (*(v5 + 104))(v7, enum case for Font.TextStyle.body(_:), v4);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v5 + 8))(v7, v4);
  v15 = Text.font(_:)();
  v17 = v16;
  LOBYTE(v5) = v18;

  sub_10010CD64(v10, v12, v14 & 1);

  static Color.primary.getter();
  v19 = Text.foregroundColor(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_10010CD64(v15, v17, v5 & 1);

  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v25;
  return result;
}

uint64_t sub_10045D620@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CB3B70, qword_100A8C1C0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000302D8(v2, &v14 - v9, &qword_100CB3B70, qword_100A8C1C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_10045D824@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10022C350(&qword_100CBB460, &qword_100A50CE8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-v9];
  type metadata accessor for DismissButton(0);
  v14 = v1;

  sub_10022C350(&qword_100CBB468, &qword_100A50CF0);
  sub_10045E3D0();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100006F64(&qword_100CBB488, &qword_100CBB460, &qword_100A50CE8, &protocol conformance descriptor for Button<A>);
  sub_10045E544(&qword_100CB0848, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v11 = sub_10022C350(&qword_100CBB490, &qword_100A50D00);
  result = 0.0;
  *(a1 + *(v11 + 36)) = xmmword_100A2DC30;
  return result;
}

uint64_t sub_10045DAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v23 = type metadata accessor for ColorScheme();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for BlendMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CBB480, &qword_100A50CF8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v26 = Image.init(systemName:)();
  static Font.Weight.semibold.getter();
  View.fontWeight(_:)();

  *&v15[*(v13 + 44)] = static HierarchicalShapeStyle.quaternary.getter();
  if (*(v24 + *(type metadata accessor for DismissButton(0) + 20)) == 1)
  {
    sub_10045D620(v7);
    v16 = v23;
    (*(v2 + 104))(v4, enum case for ColorScheme.light(_:), v23);
    v17 = static ColorScheme.== infix(_:_:)();
    v18 = *(v2 + 8);
    v18(v4, v16);
    v18(v7, v16);
    if (v17)
    {
      v19 = &enum case for BlendMode.plusDarker(_:);
    }

    else
    {
      v19 = &enum case for BlendMode.plusLighter(_:);
    }

    (*(v9 + 104))(v11, *v19, v8);
  }

  else
  {
    (*(v9 + 104))(v11, enum case for BlendMode.normal(_:), v8);
  }

  v20 = sub_10022C350(&qword_100CBB468, &qword_100A50CF0);
  v21 = v25;
  (*(v9 + 32))(v25 + *(v20 + 36), v11, v8);
  return sub_10011C0F0(v15, v21, &qword_100CBB480, &qword_100A50CF8);
}

uint64_t sub_10045DDE8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10045DE40()
{
  result = qword_100CBB2D0;
  if (!qword_100CBB2D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB2B8, &qword_100A50BB8);
    v4[0] = sub_100006F64(&qword_100CBB2D8, &qword_100CBB2E0, &qword_100A50C00, &protocol conformance descriptor for HStack<A>);
    v4[1] = sub_100006F64(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB2D0);
  }

  return result;
}

void sub_10045DF68(uint64_t a1)
{
  sub_10013DB50();
  if (v1 <= 0x3F)
  {
    sub_10013D800(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10045E020()
{
  result = qword_100CBB3A0;
  if (!qword_100CBB3A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB2F8, &qword_100A50C18);
    v4[0] = sub_10045E0AC();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB3A0);
  }

  return result;
}

unint64_t sub_10045E0AC()
{
  result = qword_100CBB3A8;
  if (!qword_100CBB3A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB2F0, &qword_100A50C10);
    v4[0] = sub_10045E138();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB3A8);
  }

  return result;
}

unint64_t sub_10045E138()
{
  result = qword_100CBB3B0;
  if (!qword_100CBB3B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB2E8, &qword_100A50C08);
    v4[0] = sub_10045E1C4();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB3B0);
  }

  return result;
}

unint64_t sub_10045E1C4()
{
  result = qword_100CBB3B8;
  if (!qword_100CBB3B8)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CBB3C0, &qword_100A50C80);
    v4[2] = sub_10022E824(&qword_100CBB2B8, &qword_100A50BB8);
    v4[3] = sub_10045DE40();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10045E544(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB3B8);
  }

  return result;
}

void sub_10045E304(uint64_t a1)
{
  sub_10013D800(319, &qword_100CB3BF0, &type metadata accessor for ColorScheme);
  if (v1 <= 0x3F)
  {
    sub_10013DB50();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10045E3D0()
{
  result = qword_100CBB470;
  if (!qword_100CBB470)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB468, &qword_100A50CF0);
    v4[0] = sub_10045E45C();
    v4[1] = &protocol witness table for _BlendModeEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB470);
  }

  return result;
}

unint64_t sub_10045E45C()
{
  result = qword_100CBB478;
  if (!qword_100CBB478)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CBB480, &qword_100A50CF8);
    v4[2] = &type metadata for Image;
    v4[3] = &protocol witness table for Image;
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100006F64(&qword_100CA3ED0, &qword_100CA3ED8, &qword_100A2DF80, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB478);
  }

  return result;
}

uint64_t sub_10045E544(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_10045E58C()
{
  result = qword_100CBB4D0;
  if (!qword_100CBB4D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB4B0, &qword_100A50D20);
    v4[0] = sub_10045E618();
    v4[1] = &protocol witness table for _AlignmentWritingModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB4D0);
  }

  return result;
}

unint64_t sub_10045E618()
{
  result = qword_100CBB4D8;
  if (!qword_100CBB4D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB4A8, &qword_100A50D18);
    v4[0] = sub_10045E6A4();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB4D8);
  }

  return result;
}

unint64_t sub_10045E6A4()
{
  result = qword_100CBB4E0;
  if (!qword_100CBB4E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBB4A0, &qword_100A50D10);
    v4[0] = sub_10032DFB4();
    v4[1] = &protocol witness table for _BlendModeEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB4E0);
  }

  return result;
}

uint64_t sub_10045E738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10045E79C()
{
  result = qword_100CBB578;
  if (!qword_100CBB578)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CBB490, &qword_100A50D00);
    v4[2] = sub_10022E824(&qword_100CBB460, &qword_100A50CE8);
    v4[3] = type metadata accessor for PlainButtonStyle();
    v4[4] = sub_100006F64(&qword_100CBB488, &qword_100CBB460, &qword_100A50CE8, &protocol conformance descriptor for Button<A>);
    v4[5] = sub_10045E544(&qword_100CB0848, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _OffsetEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBB578);
  }

  return result;
}

uint64_t sub_10045E8E8(uint64_t *a1)
{
  v3 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003848();
  v141 = v5;
  sub_10000386C();
  __chkstk_darwin(v6);
  sub_10000E70C();
  v157 = v7;
  v8 = sub_1000038CC();
  v9 = type metadata accessor for MonthlyAveragesChartModel(v8);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003848();
  v140 = v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  sub_10000E70C();
  v156 = v13;
  sub_1000038CC();
  v136 = type metadata accessor for Calendar.Identifier();
  sub_1000037C4();
  v135 = v14;
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_10000E70C();
  v131 = v17;
  v18 = sub_1000038CC();
  v122 = type metadata accessor for ConditionDetailPlatterViewModel(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003878();
  v155 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v154 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v149 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_10000E70C();
  v158 = v28;
  v29 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  v146 = &v122 - v31;
  sub_1000038CC();
  v145 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v127 = v32;
  __chkstk_darwin(v33);
  sub_1000037D8();
  v125 = v35 - v34;
  sub_1000038CC();
  v126 = type metadata accessor for Date();
  sub_1000037C4();
  v124 = v36;
  __chkstk_darwin(v37);
  sub_1000037D8();
  v142 = v39 - v38;
  sub_10022C350(&qword_100CBB580, &unk_100A50E30);
  sub_1000037C4();
  v143 = v40;
  v144 = v41;
  __chkstk_darwin(v40);
  v43 = &v122 - v42;
  v160 = type metadata accessor for ArticlePlacementLocation();
  sub_1000037C4();
  v45 = v44;
  __chkstk_darwin(v46);
  sub_1000037D8();
  v49 = v48 - v47;
  v50 = sub_10022C350(&qword_100CB8A48, &qword_100A7FE00);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v52);
  v54 = &v122 - v53;
  v55 = sub_10022C350(&qword_100CA71A0, &unk_100A322C0);
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  v151 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  v64 = &v122 - v63;
  v65 = type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
  v66 = sub_100003810(v65);
  __chkstk_darwin(v66);
  sub_100003848();
  v148 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  sub_100003878();
  v159 = v69;
  sub_10000386C();
  __chkstk_darwin(v70);
  v72 = &v122 - v71;
  sub_1000161C0(v1 + 5, v1[8]);
  sub_1009DCE40(a1, v72);
  v73 = type metadata accessor for TemperatureAveragesDetailInput(0);
  v74 = Date.formattedMonthAndDay(timeZone:)();
  v76 = v75;
  v152 = v64;
  v150 = v72;
  v77 = v72;
  v78 = v142;
  v147 = v74;
  v79 = v76;
  sub_10045F53C(a1, v77, v1, v74, v76, v64);
  v80 = v1[23];
  v137 = v1;
  sub_1000161C0(v1 + 20, v80);
  v123 = v73;
  v81 = v160;
  (*(v45 + 104))(v49, enum case for ArticlePlacementLocation.temperatureAveragesDetail(_:), v160);
  v153 = v54;
  sub_1005C188C(v49, v54);
  v82 = a1;
  v83 = v145;
  (*(v45 + 8))(v49, v81);
  type metadata accessor for TemperatureAveragesHeroChartInput(0);
  sub_10022C350(&unk_100CABCA0, qword_100A3AB60);
  v160 = v82;
  Trend.baseline.getter();
  v84 = v143;
  TrendBaseline.startDate.getter();
  v85 = v146;
  (*(v144 + 8))(v43, v84);
  TimeZone.init(secondsFromGMT:)();
  result = sub_100024D10(v85, 1, v83);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v87 = v127;
    v88 = v125;
    (*(v127 + 32))(v125, v85, v83);
    v89 = Date.formattedYear(timeZone:)();
    v146 = v89;
    v91 = v90;
    (*(v87 + 8))(v88, v83);
    (*(v124 + 8))(v78, v126);
    v92 = v79;
    v93 = v137;
    sub_10045FBF0(v147, v79, v89, v91, v158);
    v94 = v123;
    v95 = v131;
    Calendar.identifier.getter();
    v96 = v135;
    v97 = v134;
    v98 = v136;
    (*(v135 + 104))(v134, enum case for Calendar.Identifier.gregorian(_:), v136);
    LOBYTE(v89) = static Calendar.Identifier.== infix(_:_:)();
    v99 = *(v96 + 8);
    v99(v97, v98);
    v99(v95, v98);
    v100 = v149;
    sub_100460114(v147, v92, v146, v91, (v89 & 1) == 0, v149);

    v101 = *(v160 + *(v94 + 24));
    v102 = v158;
    if (v101)
    {
      sub_1000161C0(v93, v93[3]);
      v103 = v133;
      sub_10086A71C(v101, v133);
    }

    else
    {
      v103 = v133;
      sub_10001B350(v133, 1, 1, v122);
    }

    sub_100460F94(v150, v159, type metadata accessor for TemperatureAveragesHeroChartViewModel);
    v104 = v151;
    sub_100035AD0(v152, v151, &qword_100CA71A0, &unk_100A322C0);
    sub_1000161C0(v93 + 15, v93[18]);
    v105 = v160 + *(v94 + 20);
    v106 = v156;
    sub_100270FCC(v105, v156);
    v107 = v128;
    sub_100035AD0(v153, v128, &qword_100CB8A48, &qword_100A7FE00);
    v108 = v157;
    sub_100428C50(v107, v157);
    v109 = v102;
    v110 = v154;
    sub_100460F94(v109, v154, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_100460F94(v100, v155, type metadata accessor for ConditionDetailPlatterViewModel);
    v111 = v130;
    sub_100035AD0(v103, v130, &qword_100CA71A0, &unk_100A322C0);
    sub_100460F94(v159, v148, type metadata accessor for TemperatureAveragesHeroChartViewModel);
    v112 = v129;
    sub_100035AD0(v104, v129, &qword_100CA71A0, &unk_100A322C0);
    v113 = v140;
    sub_100460F94(v106, v140, type metadata accessor for MonthlyAveragesChartModel);
    v114 = v141;
    sub_100035AD0(v108, v141, &qword_100CA7188, &qword_100A35360);
    v115 = v138;
    sub_100460F94(v110, v138, type metadata accessor for ConditionDetailPlatterViewModel);
    v116 = v155;
    v117 = v139;
    sub_100460F94(v155, v139, type metadata accessor for ConditionDetailPlatterViewModel);
    v118 = v132;
    sub_100035AD0(v111, v132, &qword_100CA71A0, &unk_100A322C0);
    type metadata accessor for TemperatureAveragesDetailViewModel._Storage(0);
    swift_allocObject();
    sub_1002DA2DC(v148, v112, v113, v114, v115, v117, v118, v119, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
    v121 = v120;
    sub_1000180EC(v111, &qword_100CA71A0, &unk_100A322C0);
    sub_100460FF4(v116, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_100460FF4(v154, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_1000180EC(v157, &qword_100CA7188, &qword_100A35360);
    sub_100460FF4(v156, type metadata accessor for MonthlyAveragesChartModel);
    sub_1000180EC(v151, &qword_100CA71A0, &unk_100A322C0);
    sub_100460FF4(v159, type metadata accessor for TemperatureAveragesHeroChartViewModel);
    sub_1000180EC(v103, &qword_100CA71A0, &unk_100A322C0);
    sub_100460FF4(v149, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_100460FF4(v158, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_1000180EC(v153, &qword_100CB8A48, &qword_100A7FE00);
    sub_1000180EC(v152, &qword_100CA71A0, &unk_100A322C0);
    sub_100460FF4(v150, type metadata accessor for TemperatureAveragesHeroChartViewModel);
    return v121;
  }

  return result;
}

uint64_t sub_10045F53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a4;
  v57 = a5;
  v55 = a3;
  v53 = a2;
  v8 = type metadata accessor for WeatherDescription();
  v61 = *(v8 - 8);
  v62 = v8;
  __chkstk_darwin(v8);
  v63 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10);
  v58 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v54 = &v50 - v13;
  v14 = type metadata accessor for ConditionUnits();
  v51 = *(v14 - 8);
  v52 = v14;
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CABC20, &unk_100A3AB30);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = sub_10022C350(&unk_100CABCA0, qword_100A3AB60);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v50 - v22;
  v24 = type metadata accessor for TemperatureAveragesDetailInput(0);
  sub_100035AD0(a1 + *(v24 + 32), v19, &qword_100CABC20, &unk_100A3AB30);
  if (sub_100024D10(v19, 1, v20) == 1)
  {
    sub_1000180EC(v19, &qword_100CABC20, &unk_100A3AB30);
    if (qword_100CA2720 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000703C(v25, qword_100D90BB8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Missing trend, for creating platter view summary.", v28, 2u);
    }

    v29 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    v30 = a6;
    v31 = 1;
  }

  else
  {
    v50 = v21;
    (*(v21 + 32))(v23, v19, v20);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    type metadata accessor for TemperatureAveragesHeroChartInput(0);
    UnitManager.conditionUnits(locale:)();

    v32 = ConditionUnits.temperature.getter();
    (*(v51 + 8))(v16, v52);
    type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
    sub_10000F868();
    v33 = v32;
    v34 = v54;
    Measurement.init(value:unit:)();
    v35 = v33;
    v36 = v58;
    Measurement.init(value:unit:)();
    sub_1000161C0((v55 + 80), *(v55 + 104));
    sub_10082973C(v23, v34, v36, v56, v57, v63);
    v37 = [objc_opt_self() mainBundle];
    v64._object = 0x8000000100AC9030;
    v38._countAndFlagsBits = 0x7972616D6D7553;
    v39._object = 0x8000000100AC9010;
    v64._countAndFlagsBits = 0xD000000000000023;
    v39._countAndFlagsBits = 0xD00000000000001CLL;
    v38._object = 0xE700000000000000;
    v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v37, v38, v64);

    v41 = v60;
    v42 = *(v59 + 8);
    v42(v36, v60);
    v42(v34, v41);
    (*(v50 + 8))(v23, v20);
    v43 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    v44 = v62;
    sub_10001B350(a6 + v43[6], 1, 1, v62);
    v45 = v61;
    v46 = v63;
    (*(v61 + 16))(a6 + v43[7], v63, v44);
    v47 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    v48 = v43[8];
    (*(v45 + 32))(a6 + v48, v46, v44);
    swift_storeEnumTagMultiPayload();
    sub_10001B350(a6 + v48, 0, 1, v47);
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 2;
    *(a6 + 24) = v40;
    *(a6 + v43[9]) = 0;
    *(a6 + v43[10]) = 0;
    v30 = a6;
    v31 = 0;
    v29 = v43;
  }

  return sub_10001B350(v30, v31, 1, v29);
}

uint64_t sub_10045FBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v61 = a2;
  v57 = a1;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10022C350(&qword_100CBB588, &qword_100A50E40);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - v8;
  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v65._object = 0x8000000100AC8D20;
  v12._object = 0x8000000100AC8BE0;
  v65._countAndFlagsBits = 0x100000000000029ELL;
  v12._countAndFlagsBits = 0x1000000000000132;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v65);
  object = v14._object;
  countAndFlagsBits = v14._countAndFlagsBits;

  v62 = 0x3FB999999999999ALL;
  static Locale.autoupdatingCurrent.getter();
  sub_10014AB54();
  FloatingPointFormatStyle.Percent.init(locale:)();
  sub_1004610B0();
  BinaryFloatingPoint.formatted<A>(_:)();
  v15 = *(v7 + 8);
  v15(v9, v6);
  v53 = v63;
  v54 = v64;
  v62 = 0x3FE999999999999ALL;
  static Locale.autoupdatingCurrent.getter();
  FloatingPointFormatStyle.Percent.init(locale:)();
  BinaryFloatingPoint.formatted<A>(_:)();
  v15(v9, v6);
  v16 = v63;
  v49 = v64;
  v52 = 0x8000000100AC8FC0;
  v17 = [v10 mainBundle];
  v66._object = 0x8000000100AC8FE0;
  v66._countAndFlagsBits = 0xD00000000000002CLL;
  v18._countAndFlagsBits = 0xD000000000000016;
  v18._object = 0x8000000100AC8FC0;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v66);
  v50 = v20._object;
  v51 = v20._countAndFlagsBits;

  v21 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v22 = *(v21 + 24);
  v23 = v21;
  v48 = v21;
  v24 = type metadata accessor for WeatherDescription();
  sub_10001B350(v60 + v22, 1, 1, v24);
  v47 = *(v23 + 28);
  sub_10022C350(&qword_100CA5408, &unk_100A533E0);
  v25 = type metadata accessor for WeatherDescription.Argument();
  v26 = *(v25 - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100A3B030;
  v30 = (v29 + v28);
  v31 = v61;
  *v30 = v57;
  v30[1] = v31;
  v32 = *(v26 + 104);
  (v32)(v29 + v28, enum case for WeatherDescription.Argument.string(_:), v25);
  v33 = (v30 + v27);
  v34 = v59;
  *v33 = v58;
  v33[1] = v34;
  v32();
  v35 = (v30 + 2 * v27);
  v36 = v49;
  *v35 = v16;
  v35[1] = v36;
  v32();
  v37 = (v30 + 3 * v27);
  v38 = v53;
  v39 = v54;
  *v37 = v53;
  v37[1] = v39;
  v32();
  v40 = (v30 + 4 * v27);
  *v40 = v38;
  v40[1] = v39;
  v32();

  v41 = v60;
  WeatherDescription.init(format:_:)();
  v42 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  swift_storeEnumTagMultiPayload();
  v43 = v48;
  result = sub_10001B350(v41 + *(v48 + 32), 1, 1, v42);
  *v41 = 0xD000000000000016;
  v45 = v51;
  *(v41 + 8) = v52;
  *(v41 + 16) = 0;
  v46 = v50;
  *(v41 + 24) = v45;
  *(v41 + 32) = v46;
  *(v41 + *(v43 + 36)) = 0;
  *(v41 + *(v43 + 40)) = 0;
  return result;
}

uint64_t sub_100460114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v132 = a3;
  v133 = a4;
  v126 = a2;
  v128 = a1;
  v122 = a6;
  v120 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  __chkstk_darwin(v120);
  v121 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CAE8E8, &unk_100A49400);
  __chkstk_darwin(v8 - 8);
  v134 = &v105 - v9;
  v10 = sub_10022C350(&qword_100CBADB0, &unk_100A708C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v105 - v11;
  v13 = type metadata accessor for DateComponents();
  v130 = *(v13 - 8);
  v131 = v13;
  __chkstk_darwin(v13);
  v125 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v15 - 8);
  v123 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v127 = &v105 - v18;
  __chkstk_darwin(v19);
  v135 = &v105 - v20;
  __chkstk_darwin(v21);
  v23 = &v105 - v22;
  v24 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v24 - 8);
  v107 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v108 = &v105 - v27;
  __chkstk_darwin(v28);
  countAndFlagsBits = &v105 - v29;
  __chkstk_darwin(v30);
  v32 = &v105 - v31;
  v33 = type metadata accessor for TimeZone();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v105 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v106 = &v105 - v37;
  __chkstk_darwin(v38);
  v40 = &v105 - v39;
  v41 = type metadata accessor for Calendar();
  v119 = *(v41 - 8);
  __chkstk_darwin(v41);
  v43 = &v105 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100460E88(v6);
  v117 = v45;
  v118 = v44;
  TimeZone.init(secondsFromGMT:)();
  result = sub_100024D10(v32, 1, v33);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v47 = *(v34 + 32);
  v111 = v34 + 32;
  v109 = v47;
  v47(v40, v32, v33);
  v129 = v43;
  static Calendar.gregorianCalendar(with:)();
  v48 = *(v34 + 8);
  v112 = v34 + 8;
  v110 = v48;
  v48(v40, v33);
  sub_10001B350(v12, 1, 1, v41);
  v49 = countAndFlagsBits;
  sub_10001B350(countAndFlagsBits, 1, 1, v33);
  v50 = v125;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  Calendar.date(from:)();
  v51 = v23;
  v52 = v131;
  v53 = *(v130 + 8);
  v53(v50, v131);
  v115 = v41;
  sub_10001B350(v12, 1, 1, v41);
  v116 = v33;
  sub_10001B350(v49, 1, 1, v33);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v54 = v135;
  Calendar.date(from:)();
  v53(v50, v52);
  v55 = type metadata accessor for Date();
  v130 = v51;
  v131 = v55;
  if (sub_100024D10(v51, 1, v55) == 1 || sub_100024D10(v54, 1, v131) == 1)
  {
    if (qword_100CA2728 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_10000703C(v56, qword_100D90BD0);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Could not derive dates for describing average range in platter view summary.", v59, 2u);
    }
  }

  v60 = [objc_opt_self() mainBundle];
  v136._object = 0x8000000100AC8540;
  v136._countAndFlagsBits = 0xD000000000000033;
  v61._countAndFlagsBits = 0xD00000000000001ALL;
  v125 = 0x8000000100AC8520;
  v61._object = 0x8000000100AC8520;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, 0, v60, v62, v136);
  countAndFlagsBits = v63._countAndFlagsBits;
  object = v63._object;

  v64 = type metadata accessor for WeatherDescription();
  sub_10001B350(v134, 1, 1, v64);
  sub_10022C350(&qword_100CA5408, &unk_100A533E0);
  v65 = type metadata accessor for WeatherDescription.Argument();
  v66 = *(v65 - 8);
  v67 = *(v66 + 72);
  v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_100A3C3F0;
  v113 = v69;
  v70 = (v69 + v68);
  v71 = v126;
  *v70 = v128;
  v70[1] = v71;
  v72 = *(v66 + 104);
  (v72)(v69 + v68, enum case for WeatherDescription.Argument.string(_:), v65);
  v73 = (v70 + v67);
  v74 = v132;
  v75 = v133;
  *v73 = v132;
  v73[1] = v75;
  v72();
  v128 = v67;
  v76 = (v70 + 2 * v67);
  *v76 = v74;
  v76[1] = v75;
  v72();
  v77 = v127;
  sub_100035AD0(v130, v127, &unk_100CB2CF0, &unk_100A2D7F0);
  v78 = v131;
  LODWORD(v74) = sub_100024D10(v77, 1, v131);
  swift_bridgeObjectRetain_n();

  if (v74 != 1)
  {
    v82 = v108;
    TimeZone.init(secondsFromGMT:)();
    v81 = v116;
    result = sub_100024D10(v82, 1, v116);
    if (result != 1)
    {
      v83 = v106;
      v109(v106, v82, v81);
      v84 = v127;
      v79 = Date.formattedMonthAndDay(timeZone:)();
      v80 = v85;
      v110(v83, v81);
      v78 = v131;
      (*(*(v131 - 8) + 8))(v84, v131);
      goto LABEL_13;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000180EC(v77, &unk_100CB2CF0, &unk_100A2D7F0);
  v79 = 0;
  v80 = 0xE000000000000000;
  v81 = v116;
LABEL_13:
  v86 = (v70 + 3 * v128);
  *v86 = v79;
  v86[1] = v80;
  v72();
  v87 = v123;
  sub_100035AD0(v135, v123, &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(v87, 1, v78) == 1)
  {
    sub_1000180EC(v87, &unk_100CB2CF0, &unk_100A2D7F0);
    v88 = 0;
    v89 = 0xE000000000000000;
LABEL_17:
    v95 = v128;
    v96 = (v70 + 4 * v128);
    *v96 = v88;
    v96[1] = v89;
    v72();
    v97 = (v70 + 5 * v95);
    v98 = v133;
    *v97 = v132;
    v97[1] = v98;
    v72();

    v99 = v121;
    WeatherDescription.init(format:_:)();
    (*(v119 + 8))(v129, v115);
    v100 = v120;
    swift_storeEnumTagMultiPayload();
    v101 = type metadata accessor for ConditionDetailPlatterViewModel(0);
    v102 = v122;
    sub_10001B350(v122 + v101[8], 1, 1, v100);
    *v102 = 0xD00000000000001ALL;
    v103 = countAndFlagsBits;
    *(v102 + 8) = v125;
    *(v102 + 16) = 0;
    v104 = object;
    *(v102 + 24) = v103;
    *(v102 + 32) = v104;
    sub_100412514(v134, v102 + v101[6]);
    sub_10046104C(v99, v102 + v101[7]);
    *(v102 + v101[9]) = 0;
    *(v102 + v101[10]) = 0;
    sub_1000180EC(v130, &unk_100CB2CF0, &unk_100A2D7F0);
    return sub_1000180EC(v135, &unk_100CB2CF0, &unk_100A2D7F0);
  }

  v90 = v107;
  TimeZone.init(secondsFromGMT:)();
  result = sub_100024D10(v90, 1, v81);
  if (result != 1)
  {
    v91 = v105;
    v109(v105, v90, v81);
    v92 = Date.formattedMonthAndDay(timeZone:)();
    v93 = v81;
    v88 = v92;
    v89 = v94;
    v110(v91, v93);
    (*(*(v78 - 8) + 8))(v87, v78);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100460E88(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v11 = 0x8000000100AC8990;
    v3 = 0xD0000000000000FALL;
    v4 = 0x8000000100AC8890;
    v5 = 0x1000000000000241;
    v6.super.isa = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v11 = 0x8000000100AC8660;
    v4 = 0x8000000100AC8580;
    v3 = 0xD0000000000000DCLL;
    v6.super.isa = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
    v5 = 0x1000000000000223;
  }

  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v6, *&v7, *&v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100460F94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100460FF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10046104C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004610B0()
{
  result = qword_100CBB590;
  if (!qword_100CBB590)
  {
    v3 = sub_10022E824(&qword_100CBB588, &qword_100A50E40);
    result = swift_getWitnessTable(&protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent, v3, v0, v1);
    atomic_store(result, &qword_100CBB590);
  }

  return result;
}

uint64_t sub_10046111C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_10046115C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100461224(uint64_t a1)
{
  result = type metadata accessor for PrecipitationAmount();
  if (v2 <= 0x3F)
  {
    result = sub_10013DB50();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004612D4()
{
  type metadata accessor for PrecipitationAmountsEditorRowView(0);
  type metadata accessor for PrecipitationAmount();
  sub_100463694(&qword_100CBB638, &type metadata accessor for PrecipitationAmount, &protocol conformance descriptor for PrecipitationAmount);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    countAndFlagsBits = v0->_countAndFlagsBits;
  }

  else
  {
    String.append(_:)(*v0);
    return 42;
  }

  return countAndFlagsBits;
}

void sub_10046139C()
{
  sub_10000C778();
  v35 = v1;
  v2 = type metadata accessor for PrecipitationAmount();
  sub_1000037C4();
  v4 = v3;
  v32 = v3;
  __chkstk_darwin(v5);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for PrecipitationAmountsEditorView(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = (v16 - v15);
  v18 = v0[1];
  v29 = *v0;
  v31 = v0;
  v19 = type metadata accessor for PrecipitationAmountsEditorRowView(0);
  v20 = *(v4 + 16);
  v20(v12, v0 + *(v19 + 24), v2);
  v21 = (v0 + *(v19 + 28));
  v23 = *v21;
  v22 = v21[1];
  v33 = v23;
  v30 = v22;
  *v17 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  swift_storeEnumTagMultiPayload();
  v24 = (v17 + v13[5]);
  *v24 = v29;
  v24[1] = v18;
  v20(v17 + v13[6], v12, v2);
  v20(v9, v12, v2);
  v20(v34, v9, v2);

  v25 = v30;

  State.init(wrappedValue:)();
  v26 = *(v32 + 8);
  v26(v9, v2);
  v26(v12, v2);
  v27 = (v17 + v13[7]);
  *v27 = v33;
  v27[1] = v25;
  v36 = v31;
  sub_100463694(&qword_100CBB630, type metadata accessor for PrecipitationAmountsEditorView, byte_100A50FB0);
  NavigationLink.init(destination:label:)();
  sub_10000536C();
}

uint64_t sub_100461688@<X0>(uint64_t a1@<X8>)
{
  sub_1004612D4();
  sub_10002D5A4();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_1004616E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = &a9 - v34;
  sub_100035AD0(v23, &a9 - v34, &qword_100CA54B0, &qword_100A2F8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100463960(v35, v25);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v28 + 8))(v32, v26);
  }

  sub_10000536C();
}

void sub_1004618A8()
{
  sub_10000C778();
  v50 = v0;
  v63 = v1;
  v2 = type metadata accessor for PrecipitationAmountsEditorView(0);
  v3 = *(v2 - 8);
  v54 = v2 - 8;
  v60 = v3;
  v59 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v57 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  sub_1000037C4();
  v61 = v5;
  v62 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  v58 = &v49 - v8;
  v9 = type metadata accessor for InsetGroupedListStyle();
  sub_1000037C4();
  v52 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = sub_10022C350(&qword_100CBB700, &qword_100A51008);
  sub_1000037C4();
  v17 = v16;
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v49 - v19;
  v51 = sub_10022C350(&qword_100CBB708, &qword_100A51010);
  sub_1000037C4();
  v53 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  sub_10022C350(&qword_100CBB710, &qword_100A51018);
  sub_1000037C4();
  v55 = v25;
  v56 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v64 = &v49 - v28;
  v65 = v0;
  sub_10022C350(&qword_100CBB718, &qword_100A51020);
  sub_100006F64(&qword_100CBB720, &qword_100CBB718, &qword_100A51020, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_100005DFC();
  v31 = sub_100006F64(v29, &qword_100CBB700, &qword_100A51008, v30);
  View.listStyle<A>(_:)();
  (*(v52 + 8))(v14, v9);
  (*(v17 + 8))(v20, v15);
  v32 = v50;
  v33 = (v50 + *(v54 + 28));
  v35 = *v33;
  v34 = v33[1];
  v70 = v35;
  v71 = v34;
  v66 = v15;
  v67 = v9;
  v68 = v31;
  v69 = &protocol witness table for InsetGroupedListStyle;
  sub_100005DB4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_10002D5A4();
  v38 = v51;
  View.navigationTitle<A>(_:)();
  (*(v53 + 8))(v24, v38);
  LocalizedStringKey.init(stringLiteral:)();
  v39 = v57;
  sub_10046383C(v32, v57);
  v40 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v41 = swift_allocObject();
  sub_1004638A0(v39, v41 + v40);
  v42 = v58;
  Button<>.init(_:action:)();
  v66 = v38;
  v67 = &type metadata for String;
  v68 = OpaqueTypeConformance2;
  v69 = v37;
  sub_100005DE4();
  swift_getOpaqueTypeConformance2();
  sub_100005DCC();
  sub_100006F64(v43, &qword_100CA5528, &qword_100A2F940, v44);
  v45 = v64;
  v46 = v42;
  v47 = v55;
  v48 = v61;
  View.navigationBarItems<A>(trailing:)();
  (*(v62 + 8))(v46, v48);
  (*(v56 + 8))(v45, v47);
  sub_10000536C();
}

uint64_t sub_100461E5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CBB730, &qword_100A51028);
  __chkstk_darwin(v2 - 8);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v32 = &v31 - v5;
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  __chkstk_darwin(v18);
  v20 = &v31 - v19;
  __chkstk_darwin(v21);
  v23 = &v31 - v22;
  sub_100462168((&v31 - v22));
  v31 = v20;
  sub_100462598(v20);
  sub_1004629CC(v17);
  sub_100462E04(v14);
  v24 = v11;
  v33 = v11;
  sub_100035AD0(v23, v11, &qword_100CBB730, &qword_100A51028);
  v25 = v20;
  v26 = v8;
  sub_100035AD0(v25, v8, &qword_100CBB730, &qword_100A51028);
  v27 = v32;
  sub_100035AD0(v17, v32, &qword_100CBB730, &qword_100A51028);
  v28 = v34;
  sub_100035AD0(v14, v34, &qword_100CBB730, &qword_100A51028);
  sub_100035AD0(v24, a1, &qword_100CBB730, &qword_100A51028);
  v29 = sub_10022C350(&qword_100CBB738, &qword_100A51030);
  sub_100035AD0(v26, a1 + v29[12], &qword_100CBB730, &qword_100A51028);
  sub_100035AD0(v27, a1 + v29[16], &qword_100CBB730, &qword_100A51028);
  sub_100035AD0(v28, a1 + v29[20], &qword_100CBB730, &qword_100A51028);
  sub_1000180EC(v14, &qword_100CBB730, &qword_100A51028);
  sub_1000180EC(v17, &qword_100CBB730, &qword_100A51028);
  sub_1000180EC(v31, &qword_100CBB730, &qword_100A51028);
  sub_1000180EC(v23, &qword_100CBB730, &qword_100A51028);
  sub_1000180EC(v28, &qword_100CBB730, &qword_100A51028);
  sub_1000180EC(v27, &qword_100CBB730, &qword_100A51028);
  sub_1000180EC(v26, &qword_100CBB730, &qword_100A51028);
  return sub_1000180EC(v33, &qword_100CBB730, &qword_100A51028);
}

uint64_t sub_100462168@<X0>(void *a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for PrecipitationAmountsEditorView(0);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v35 = type metadata accessor for PrecipitationAmount();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBB740, &qword_100A51038);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  PrecipitationAmount.pastHour.getter();
  v13 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_10001B350(v12, 0, 1, v13);
  sub_10022C350(&qword_100CBB640, &qword_100A50F78);
  State.wrappedValue.getter();
  PrecipitationAmount.pastHour.getter();
  (*(v4 + 8))(v6, v35);
  v14 = v36;
  sub_10001B350(v9, 0, 1, v13);
  sub_10046383C(v1, &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v16 = swift_allocObject();
  sub_1004638A0(&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = sub_10022C350(&qword_100CBB730, &qword_100A51028);
  v18 = v17[10];
  sub_10001B350(v14 + v18, 1, 1, v13);
  *v14 = 0x756F682074736170;
  v14[1] = 0xE900000000000072;
  sub_100035AD0(v12, v14 + v17[7], &qword_100CBB740, &qword_100A51038);
  sub_1004639E8(v9, v14 + v18);
  v19 = (v14 + v17[8]);
  *v19 = sub_100463A88;
  v19[1] = v16;
  sub_10022C350(&qword_100CBB748, &qword_100A51048);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v21 = objc_opt_self();
  *(inited + 32) = [v21 inches];
  *(inited + 40) = 0x736568636E69;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = [v21 millimeters];
  *(inited + 64) = 0x74656D696C6C696DLL;
  *(inited + 72) = 0xEB00000000737265;
  sub_100855858(inited, v22, v23, v24, v25, v26, v27, v28, v34, v35, v36, v37, *v38, *&v38[8], *&v38[16], *&v38[24], *&v38[32], *&v38[40], *&v38[48], *&v38[56], *&v38[64], *&v38[72], v39, v40, v41, v42, v43, v44);
  v30 = v29;
  swift_setDeallocating();
  sub_1005C2008();
  if (v30)
  {
    sub_1008559F0();
    v32 = v31;
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v9, &qword_100CBB740, &qword_100A51038);
  result = sub_1000180EC(v12, &qword_100CBB740, &qword_100A51038);
  *(v14 + v17[9]) = v32;
  return result;
}

uint64_t sub_100462598@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for PrecipitationAmountsEditorView(0);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v35 = type metadata accessor for PrecipitationAmount();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBB740, &qword_100A51038);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  PrecipitationAmount.pastSixHours.getter();
  v13 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_10001B350(v12, 0, 1, v13);
  sub_10022C350(&qword_100CBB640, &qword_100A50F78);
  State.wrappedValue.getter();
  PrecipitationAmount.pastSixHours.getter();
  (*(v4 + 8))(v6, v35);
  v14 = v36;
  sub_10001B350(v9, 0, 1, v13);
  sub_10046383C(v1, &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v16 = swift_allocObject();
  sub_1004638A0(&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = sub_10022C350(&qword_100CBB730, &qword_100A51028);
  v18 = v17[10];
  sub_10001B350(v14 + v18, 1, 1, v13);
  strcpy(v14, "past 6 hours");
  *(v14 + 13) = 0;
  *(v14 + 14) = -5120;
  sub_100035AD0(v12, v14 + v17[7], &qword_100CBB740, &qword_100A51038);
  sub_1004639E8(v9, v14 + v18);
  v19 = (v14 + v17[8]);
  *v19 = sub_100463A70;
  v19[1] = v16;
  sub_10022C350(&qword_100CBB748, &qword_100A51048);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v21 = objc_opt_self();
  *(inited + 32) = [v21 inches];
  *(inited + 40) = 0x736568636E69;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = [v21 millimeters];
  *(inited + 64) = 0x74656D696C6C696DLL;
  *(inited + 72) = 0xEB00000000737265;
  sub_100855858(inited, v22, v23, v24, v25, v26, v27, v28, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], v38[12], v38[13], v38[14], v38[15]);
  v30 = v29;
  swift_setDeallocating();
  sub_1005C2008();
  if (v30)
  {
    sub_1008559F0();
    v32 = v31;
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v9, &qword_100CBB740, &qword_100A51038);
  result = sub_1000180EC(v12, &qword_100CBB740, &qword_100A51038);
  *(v14 + v17[9]) = v32;
  return result;
}

uint64_t sub_1004629CC@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for PrecipitationAmountsEditorView(0);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v35 = type metadata accessor for PrecipitationAmount();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBB740, &qword_100A51038);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  PrecipitationAmount.pastTwentyFourHours.getter();
  v13 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_10001B350(v12, 0, 1, v13);
  sub_10022C350(&qword_100CBB640, &qword_100A50F78);
  State.wrappedValue.getter();
  PrecipitationAmount.pastTwentyFourHours.getter();
  (*(v4 + 8))(v6, v35);
  v14 = v36;
  sub_10001B350(v9, 0, 1, v13);
  sub_10046383C(v1, &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v16 = swift_allocObject();
  sub_1004638A0(&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = sub_10022C350(&qword_100CBB730, &qword_100A51028);
  v18 = v17[10];
  sub_10001B350(v14 + v18, 1, 1, v13);
  strcpy(v14, "past 24 hours");
  *(v14 + 14) = -4864;
  sub_100035AD0(v12, v14 + v17[7], &qword_100CBB740, &qword_100A51038);
  sub_1004639E8(v9, v14 + v18);
  v19 = (v14 + v17[8]);
  *v19 = sub_100463A58;
  v19[1] = v16;
  sub_10022C350(&qword_100CBB748, &qword_100A51048);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v21 = objc_opt_self();
  *(inited + 32) = [v21 inches];
  *(inited + 40) = 0x736568636E69;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = [v21 millimeters];
  *(inited + 64) = 0x74656D696C6C696DLL;
  *(inited + 72) = 0xEB00000000737265;
  sub_100855858(inited, v22, v23, v24, v25, v26, v27, v28, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], v38[12], v38[13], v38[14], v38[15]);
  v30 = v29;
  swift_setDeallocating();
  sub_1005C2008();
  if (v30)
  {
    sub_1008559F0();
    v32 = v31;
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v9, &qword_100CBB740, &qword_100A51038);
  result = sub_1000180EC(v12, &qword_100CBB740, &qword_100A51038);
  *(v14 + v17[9]) = v32;
  return result;
}

uint64_t sub_100462E04@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for PrecipitationAmountsEditorView(0);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v35 = type metadata accessor for PrecipitationAmount();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBB740, &qword_100A51038);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  PrecipitationAmount.nextTwentyFourHours.getter();
  v13 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_10001B350(v12, 0, 1, v13);
  sub_10022C350(&qword_100CBB640, &qword_100A50F78);
  State.wrappedValue.getter();
  PrecipitationAmount.nextTwentyFourHours.getter();
  (*(v4 + 8))(v6, v35);
  v14 = v36;
  sub_10001B350(v9, 0, 1, v13);
  sub_10046383C(v1, &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v16 = swift_allocObject();
  sub_1004638A0(&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = sub_10022C350(&qword_100CBB730, &qword_100A51028);
  v18 = v17[10];
  sub_10001B350(v14 + v18, 1, 1, v13);
  strcpy(v14, "next 24 hours");
  *(v14 + 14) = -4864;
  sub_100035AD0(v12, v14 + v17[7], &qword_100CBB740, &qword_100A51038);
  sub_1004639E8(v9, v14 + v18);
  v19 = (v14 + v17[8]);
  *v19 = sub_1004639D0;
  v19[1] = v16;
  sub_10022C350(&qword_100CBB748, &qword_100A51048);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v21 = objc_opt_self();
  *(inited + 32) = [v21 inches];
  *(inited + 40) = 0x736568636E69;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = [v21 millimeters];
  *(inited + 64) = 0x74656D696C6C696DLL;
  *(inited + 72) = 0xEB00000000737265;
  sub_100855858(inited, v22, v23, v24, v25, v26, v27, v28, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], v38[12], v38[13], v38[14], v38[15]);
  v30 = v29;
  swift_setDeallocating();
  sub_1005C2008();
  if (v30)
  {
    sub_1008559F0();
    v32 = v31;
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v9, &qword_100CBB740, &qword_100A51038);
  result = sub_1000180EC(v12, &qword_100CBB740, &qword_100A51038);
  *(v14 + v17[9]) = v32;
  return result;
}

uint64_t sub_10046323C(uint64_t a1)
{
  v2 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0);
  __chkstk_darwin(v3);
  v5 = var50 - v4;
  v6 = type metadata accessor for PrecipitationAmount();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = var50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(type metadata accessor for PrecipitationAmountsEditorView(0) + 28));
  sub_10022C350(&qword_100CBB640, &qword_100A50F78);
  State.wrappedValue.getter();
  v10(v9);
  v11 = (*(v7 + 8))(v9, v6);
  sub_1004616E4(v11, v12, v13, v14, v15, v16, v17, v18, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  Binding.wrappedValue.getter();
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  return sub_1000180EC(v5, &qword_100CA6D28, &qword_100A4CEA0);
}

void sub_100463438()
{
  sub_10000C778();
  v19 = v0;
  v2 = v1;
  v3 = type metadata accessor for PrecipitationAmount();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000037D8();
  v5 = sub_10022C350(&qword_100CBB740, &qword_100A51038);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v18 - v16;
  sub_100035AD0(v2, v8, &qword_100CBB740, &qword_100A51038);
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_1000180EC(v8, &qword_100CBB740, &qword_100A51038);
  }

  else
  {
    (*(v11 + 32))(v17, v8, v9);
    (*(v11 + 16))(v14, v17, v9);
    type metadata accessor for PrecipitationAmountsEditorView(0);
    sub_10022C350(&qword_100CBB640, &qword_100A50F78);
    State.wrappedValue.getter();
    v19(v14);
    State.wrappedValue.setter();
    (*(v11 + 8))(v17, v9);
  }

  sub_10000536C();
}

uint64_t sub_100463694(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_100463704(uint64_t a1)
{
  sub_100081BC8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PrecipitationAmount();
    if (v2 <= 0x3F)
    {
      sub_10013DB50();
      if (v3 <= 0x3F)
      {
        sub_1004637C0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004637C0(uint64_t a1)
{
  if (!qword_100CBB6B0)
  {
    type metadata accessor for PrecipitationAmount();
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100CBB6B0);
    }
  }
}

uint64_t sub_10046383C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationAmountsEditorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004638A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationAmountsEditorView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100463904()
{
  v1 = type metadata accessor for PrecipitationAmountsEditorView(0);
  sub_100003810(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_10046323C(v3);
}

uint64_t sub_100463960(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004639E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CBB740, &qword_100A51038);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100463AA0()
{
  v0 = type metadata accessor for PrecipitationAmountsEditorView(0);
  sub_100003810(v0);
  sub_100463438();
}

uint64_t sub_100463B38@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for DailyComponentForecastRowView(0);
  sub_1000302D8(v1 + *(v13 + 80), v12, &qword_100CA71B0, &qword_100A32330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_1000037E8();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_100463D18(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for DailyComponentForecastRowView(0);
  sub_10022C350(&qword_100CBB758, &unk_100A51060);
  State.wrappedValue.getter();
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_1000180EC(v7, &unk_100CB2CF0, &unk_100A2D7F0);
    v16 = 0;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    static WeatherClock.date.getter();
    Date.timeIntervalSince(_:)();
    v18 = v17;
    v19 = *(v9 + 8);
    v19(v11, v8);
    v19(v14, v8);
    v16 = v18 > 0.3;
  }

  v20 = *(a1 + v15[11]);
  v21 = (a1 + v15[21]);
  v23 = *v21;
  v22 = v21[1];
  v35 = v23;
  v36 = v22;
  sub_10022C350(&qword_100CBB930, &qword_100A511D8);
  State.wrappedValue.getter();
  v24 = v34[2];
  v25 = v34[3];
  v26 = v34[4];
  v27 = v34[5];

  v37.origin.x = v24;
  v37.origin.y = v25;
  v37.size.width = v26;
  v37.size.height = v27;
  v38 = CGRectInset(v37, -*(a1 + v15[12]), 0.0);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  (*(v9 + 16))(v4, a1, v8);
  sub_10001B350(v4, 0, 1, v8);
  v20(v16, v4, x, y, width, height);
  return sub_1000180EC(v4, &unk_100CB2CF0, &unk_100A2D7F0);
}

uint64_t sub_100464044@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CBB8E0, &qword_100A51188);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_10022C350(&qword_100CBB8E8, &qword_100A51190);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12 = sub_10022C350(&qword_100CBB8F0, &qword_100A51198);
  sub_1001CBA44(v1, &v8[*(v12 + 44)]);
  v13 = v1 + *(type metadata accessor for DailyComponentForecastRowView(0) + 72);
  v14 = *v13;
  v24 = *(v13 + 8);
  if (v24 == 1)
  {
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_10022C350(&qword_100CB2AC8, &unk_100A45020);
    ScaledMetric.wrappedValue.getter();
    goto LABEL_6;
  }

  static os_log_type_t.fault.getter();
  v23 = v14;
  v15 = static Log.runtimeIssuesLog.getter();
  v14 = v23;
  os_log(_:dso:log:_:_:)();

  v16 = v25;
  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000EBD74(v14, 0);
  (*(v4 + 8))(v16, v3);
  if ((v27 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10011C0F0(v8, v11, &qword_100CBB8E0, &qword_100A51188);
  v17 = &v11[*(v9 + 36)];
  v18 = v28;
  *v17 = v27;
  *(v17 + 1) = v18;
  *(v17 + 2) = v29;
  if (!v24)
  {

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v20 = v25;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v14, 0);
    (*(v4 + 8))(v20, v3);
    LOBYTE(v14) = v26;
  }

  sub_10011C0F0(v11, a1, &qword_100CBB8E8, &qword_100A51190);
  result = sub_10022C350(&qword_100CBB8F8, &qword_100A511A0);
  v22 = (a1 + *(result + 36));
  *v22 = 1;
  v22[1] = (v14 & 1) == 0;
  return result;
}

uint64_t sub_100464440()
{
  v1 = *(type metadata accessor for DailyComponentForecastRowView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100463D18(v2);
}

Weather::NotificationAuthorizationState_optional __swiftcall NotificationAuthorizationState.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C43CE0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t NotificationAuthorizationState.rawValue.getter(char a1)
{
  result = 0x7265746544746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6465776F6C6C61;
      break;
    case 2:
      result = 0x6465696E6564;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

Weather::NotificationAuthorizationState_optional sub_1004645A8@<W0>(Swift::String *a1@<X0>, Weather::NotificationAuthorizationState_optional *a2@<X8>)
{
  result.value = NotificationAuthorizationState.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_1004645D8@<X0>(unint64_t *a1@<X8>)
{
  result = NotificationAuthorizationState.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1004646C4()
{
  result = qword_100CBB950;
  if (!qword_100CBB950)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationAuthorizationState, &type metadata for NotificationAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CBB950);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationAuthorizationState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1004647E4()
{
  result = qword_100CBB960;
  if (!qword_100CBB960)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NotificationAuthorizationState, &type metadata for NotificationAuthorizationState, v0, v1);
    atomic_store(result, &qword_100CBB960);
  }

  return result;
}

uint64_t type metadata accessor for DetailHeroChartHeaderView(uint64_t a1)
{
  result = qword_100CBB9C0;
  if (!qword_100CBB9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004648AC(uint64_t a1)
{
  type metadata accessor for DetailHeroChartLollipopModel(319);
  if (v1 <= 0x3F)
  {
    sub_10014ABA8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10046495C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.topLeading.getter();
  a1[1] = v2;
  v3 = sub_10022C350(&qword_100CBBA00, &qword_100A51420);
  sub_100464A70(a1 + *(v3 + 44));
  v4 = static Edge.Set.horizontal.getter();
  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  v5 = swift_beginAccess();
  sub_100472730(v5);
  swift_endAccess();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = sub_10022C350(&qword_100CBBA08, &qword_100A51428);
  v15 = a1 + *(result + 36);
  *v15 = v4;
  *(v15 + 1) = v7;
  *(v15 + 2) = v9;
  *(v15 + 3) = v11;
  *(v15 + 4) = v13;
  v15[40] = 0;
  return result;
}

uint64_t sub_100464A70@<X0>(_BYTE *a2@<X8>)
{
  v64 = a2;
  v62 = type metadata accessor for LollipopDetailView(0);
  __chkstk_darwin(v62);
  v48 = &v44[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = sub_10022C350(&qword_100CBBA10, &qword_100A51430);
  v51 = *(v63 - 8);
  __chkstk_darwin(v63);
  v50 = &v44[-v3];
  active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
  __chkstk_darwin(active);
  v49 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = sub_10022C350(&qword_100CBBA18, &qword_100A51438);
  __chkstk_darwin(v54);
  v59 = &v44[-v5];
  v58 = sub_10022C350(&qword_100CBBA20, &qword_100A51440);
  __chkstk_darwin(v58);
  v47 = &v44[-v6];
  v7 = type metadata accessor for LollipopDetailViewModel(0);
  __chkstk_darwin(v7 - 8);
  v45 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10022C350(&qword_100CBBA28, &qword_100A51448);
  __chkstk_darwin(v9 - 8);
  v61 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v60 = &v44[-v12];
  v13 = type metadata accessor for DetailHeroChartLollipopModel(0);
  __chkstk_darwin(v13);
  v53 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v44[-v16];
  v18 = sub_10022C350(&qword_100CBBA30, &qword_100A51450);
  v56 = *(v18 - 8);
  v57 = v18;
  __chkstk_darwin(v18);
  v55 = &v44[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v65 = &v44[-v21];
  v52 = static HorizontalAlignment.leading.getter();
  v71 = 0;
  sub_10046540C(v69);
  memcpy(v72, v69, sizeof(v72));
  memcpy(v73, v69, 0x160uLL);
  sub_100095588();
  sub_1000180EC(v73, &qword_100CBBA38, &qword_100A51458);
  memcpy(&v70[7], v72, 0x160uLL);
  v22 = v71;
  swift_beginAccess();
  sub_100674F3C();
  type metadata accessor for DetailHeroChartHeaderView(0);
  sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v69[0] = v52;
  v69[1] = 0;
  LOBYTE(v69[2]) = v22;
  memcpy(&v69[2] + 1, v70, 0x167uLL);
  sub_100466074();
  swift_getEnumCaseMultiPayload();
  sub_10046625C(v17, type metadata accessor for DetailHeroChartLollipopModel);
  sub_10022C350(&qword_100CBBA40, &qword_100A51460);
  sub_100465FBC();
  View.isHidden(_:defaultAccessibilityHidden:)();
  memcpy(v68, v69, sizeof(v68));
  sub_1000180EC(v68, &qword_100CBBA40, &qword_100A51460);
  sub_100466074();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v49;
    sub_100466204();
    v24 = v48;
    sub_100466074();
    v25 = sub_1004660CC();
    v26 = v50;
    v27 = v62;
    View.offsetXWithinBounds(_:)();
    sub_10046625C(v24, type metadata accessor for LollipopDetailView);
    v28 = v51;
    v29 = v63;
    (*(v51 + 16))(v59, v26, v63);
    swift_storeEnumTagMultiPayload();
    sub_100466124();
    v66 = v27;
    v67 = v25;
    swift_getOpaqueTypeConformance2();
    v30 = v60;
    _ConditionalContent<>.init(storage:)();
    (*(v28 + 8))(v26, v29);
    v31 = type metadata accessor for DetailHeroChartActiveLollipopModel;
    v32 = v23;
  }

  else
  {
    v33 = v45;
    sub_100466204();
    v34 = v47;
    sub_100466074();
    sub_100095588();
    swift_storeEnumTagMultiPayload();
    sub_100466124();
    v35 = sub_1004660CC();
    v66 = v62;
    v67 = v35;
    swift_getOpaqueTypeConformance2();
    v30 = v60;
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v34, &qword_100CBBA20, &qword_100A51440);
    v31 = type metadata accessor for LollipopDetailViewModel;
    v32 = v33;
  }

  sub_10046625C(v32, v31);
  v37 = v55;
  v36 = v56;
  v38 = *(v56 + 16);
  v39 = v65;
  v40 = v57;
  v38(v55, v65, v57);
  v41 = v61;
  sub_1001EDC74();
  v38(v64, v37, v40);
  sub_10022C350(&qword_100CBBA78, &qword_100A51470);
  sub_1001EDC74();
  sub_1001EDCD4(v30);
  v42 = *(v36 + 8);
  v42(v39, v40);
  sub_1001EDCD4(v41);
  return (v42)(v37, v40);
}

uint64_t sub_10046540C@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for DetailHeroChartHeaderView(0);
  sub_10022C350(&qword_100CA3BF0, &unk_100A2DD10);
  ScaledMetric.wrappedValue.getter();
  v2 = 1.0 / __src[0] * 20.0;
  v9 = static Axis.Set.horizontal.getter();
  sub_100465748(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v45, __src, 0x59uLL);
  sub_100095588();
  sub_1000180EC(v45, &qword_100CBBA80, &unk_100A51478);
  memcpy(&v32[7], __dst, 0x59uLL);
  swift_beginAccess();
  sub_100674DE8();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v3 = v33;
  v4 = v35;
  v5 = v37;
  v6 = v38;
  v48 = 1;
  v47 = v34;
  v46 = v36;
  v7 = static Axis.Set.horizontal.getter();
  sub_100465B80(__src);
  memcpy(v49, __src, sizeof(v49));
  memcpy(v50, __src, 0x59uLL);
  sub_100095588();
  sub_1000180EC(v50, &qword_100CBBA80, &unk_100A51478);
  memcpy(&v31[7], v49, 0x59uLL);
  sub_100674F18();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v50[112] = 1;
  v50[104] = v40;
  v50[96] = v42;
  v28 = v2;
  v29 = 0;
  v30[0] = &v28;
  v27[0] = v9;
  memcpy(&v27[1], v32, 0x60uLL);
  v20 = v48;
  v19 = 0;
  v21 = v3;
  v22 = v47;
  v23 = v4;
  v24 = v46;
  v25 = v5;
  v26 = v6;
  v30[1] = v27;
  v30[2] = &v19;
  v18[0] = v7;
  memcpy(&v18[1], v31, 0x60uLL);
  v11 = 0;
  v12 = 1;
  v13 = v39;
  v14 = v40;
  v15 = v41;
  v16 = v42;
  v17 = v43;
  v30[3] = v18;
  v30[4] = &v11;
  sub_1003E8A2C(v30, a2);
  memcpy(v51, v18, 0x61uLL);
  sub_1000180EC(v51, &qword_100CB5E88, &qword_100A496D0);
  memcpy(__src, v27, 0x61uLL);
  return sub_1000180EC(__src, &qword_100CB5E88, &qword_100A496D0);
}

uint64_t sub_100465748@<X0>(uint64_t a2@<X8>)
{
  sub_10002D5A4();
  swift_bridgeObjectRetain_n();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  swift_beginAccess();
  sub_100674C18();
  swift_endAccess();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10010CD64(v2, v4, v6 & 1);

  static Color.primary.getter();
  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  LOBYTE(v2) = v15;

  sub_10010CD64(v7, v9, v11 & 1);

  swift_bridgeObjectRetain_n();
  v16 = Text.accessibilityLabel<A>(_:)();
  v44 = v17;
  v45 = v16;
  v42 = v18;
  v43 = v19;
  sub_10010CD64(v12, v14, v2 & 1);

  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v4) = v23;
  static Font.headline.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_10010CD64(v20, v22, v4 & 1);

  static Color.primary.getter();
  v29 = Text.foregroundColor(_:)();
  v31 = v30;
  LOBYTE(v22) = v32;

  sub_10010CD64(v24, v26, v28 & 1);

  v33 = Text.accessibilityLabel<A>(_:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_10010CD64(v29, v31, v22 & 1);

  KeyPath = swift_getKeyPath();
  *&v50 = v33;
  *(&v50 + 1) = v35;
  v51[0] = v37 & 1;
  *&v51[1] = *v49;
  *&v51[4] = *&v49[3];
  *&v51[8] = v39;
  *&v51[22] = v48;
  *&v51[18] = v47;
  *(a2 + 16) = v42 & 1;
  *&v51[16] = 256;
  *&v51[24] = KeyPath;
  *&v51[32] = 2;
  v51[40] = 0;
  *a2 = v45;
  *(a2 + 8) = v44;
  *(a2 + 24) = v43;
  *(a2 + 73) = *&v51[25];
  *(a2 + 48) = *v51;
  *(a2 + 64) = *&v51[16];
  *(a2 + 32) = v50;
  v52[0] = v33;
  v52[1] = v35;
  v53 = v37 & 1;
  *&v54[3] = *&v49[3];
  *v54 = *v49;
  v55 = v39;
  v56 = 256;
  v58 = v48;
  v57 = v47;
  v59 = KeyPath;
  v60 = 2;
  v61 = 0;
  sub_10010CD54(v45, v44, v42 & 1);

  sub_100095588();
  sub_1000180EC(v52, &qword_100CB5830, &qword_100A49110);
  sub_10010CD64(v45, v44, v42 & 1);
}

uint64_t sub_100465B80@<X0>(uint64_t a2@<X8>)
{
  sub_10002D5A4();
  swift_bridgeObjectRetain_n();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  swift_beginAccess();
  sub_100674E0C();
  swift_endAccess();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10010CD64(v2, v4, v6 & 1);

  static Color.secondary.getter();
  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  LOBYTE(v2) = v15;

  sub_10010CD64(v7, v9, v11 & 1);

  swift_bridgeObjectRetain_n();
  v16 = Text.accessibilityLabel<A>(_:)();
  v44 = v17;
  v45 = v16;
  v42 = v18;
  v43 = v19;
  sub_10010CD64(v12, v14, v2 & 1);

  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v4) = v23;
  static Font.footnote.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_10010CD64(v20, v22, v4 & 1);

  static Color.secondary.getter();
  v29 = Text.foregroundColor(_:)();
  v31 = v30;
  LOBYTE(v22) = v32;

  sub_10010CD64(v24, v26, v28 & 1);

  v33 = Text.accessibilityLabel<A>(_:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_10010CD64(v29, v31, v22 & 1);

  KeyPath = swift_getKeyPath();
  *&v50 = v33;
  *(&v50 + 1) = v35;
  v51[0] = v37 & 1;
  *&v51[1] = *v49;
  *&v51[4] = *&v49[3];
  *&v51[8] = v39;
  *&v51[22] = v48;
  *&v51[18] = v47;
  *(a2 + 16) = v42 & 1;
  *&v51[16] = 256;
  *&v51[24] = KeyPath;
  *&v51[32] = 2;
  v51[40] = 0;
  *a2 = v45;
  *(a2 + 8) = v44;
  *(a2 + 24) = v43;
  *(a2 + 73) = *&v51[25];
  *(a2 + 48) = *v51;
  *(a2 + 64) = *&v51[16];
  *(a2 + 32) = v50;
  v52[0] = v33;
  v52[1] = v35;
  v53 = v37 & 1;
  *&v54[3] = *&v49[3];
  *v54 = *v49;
  v55 = v39;
  v56 = 256;
  v58 = v48;
  v57 = v47;
  v59 = KeyPath;
  v60 = 2;
  v61 = 0;
  sub_10010CD54(v45, v44, v42 & 1);

  sub_100095588();
  sub_1000180EC(v52, &qword_100CB5830, &qword_100A49110);
  sub_10010CD64(v45, v44, v42 & 1);
}

unint64_t sub_100465FBC()
{
  result = qword_100CBBA48;
  if (!qword_100CBBA48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBBA40, &qword_100A51460);
    v4[0] = sub_100006F64(&qword_100CBBA50, &qword_100CBBA58, &qword_100A51468, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBBA48);
  }

  return result;
}

uint64_t sub_100466074()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_1004660CC()
{
  result = qword_100CBBA60;
  if (!qword_100CBBA60)
  {
    v3 = type metadata accessor for LollipopDetailView(255);
    result = swift_getWitnessTable(aN_4, v3, v0, v1);
    atomic_store(result, &qword_100CBBA60);
  }

  return result;
}

unint64_t sub_100466124()
{
  result = qword_100CBBA68;
  if (!qword_100CBBA68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBBA20, &qword_100A51440);
    v4[0] = sub_1004660CC();
    v4[1] = sub_1004661B0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBBA68);
  }

  return result;
}

unint64_t sub_1004661B0()
{
  result = qword_100CBBA70;
  if (!qword_100CBBA70)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for _HiddenModifier, &type metadata for _HiddenModifier, v0, v1);
    atomic_store(result, &qword_100CBBA70);
  }

  return result;
}

uint64_t sub_100466204()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10046625C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1004662B4()
{
  result = qword_100CBBA88;
  if (!qword_100CBBA88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBBA08, &qword_100A51428);
    v4[0] = sub_100006F64(&qword_100CBBA90, &qword_100CBBA98, &unk_100A514C0, &protocol conformance descriptor for ZStack<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBBA88);
  }

  return result;
}

uint64_t sub_10046636C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_1004663C4()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  *(v0 + 16) = 0x4053800000000000;
  *(v0 + 24) = 0;
  return 78.0;
}

uint64_t sub_1004663F0()
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

uint64_t sub_100466508()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = static Color.primary.getter();
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t sub_100466564()
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

uint64_t sub_100466740()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = static Color.primary.getter();
    *(v0 + 56) = v1;
  }

  return v1;
}

double sub_10046679C()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  *(v0 + 64) = 0x3FF0000000000000;
  *(v0 + 72) = 0;
  return 1.0;
}

uint64_t sub_1004667C0()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_1004663F0();
    *(v0 + 80) = v1;
  }

  return v1;
}

uint64_t sub_10046681C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 88))
  {
    v3 = *(v2 + 88);
  }

  else
  {
    v3 = static Color.secondary.getter();
    *(v2 + 88) = v3;
  }

  return v3;
}

double sub_100466878()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = 0x4010000000000000;
  *(v0 + 104) = 0;
  return 4.0;
}

double sub_10046689C()
{
  if ((*(v0 + 120) & 1) == 0)
  {
    return *(v0 + 112);
  }

  *(v0 + 112) = 0x4024000000000000;
  *(v0 + 120) = 0;
  return 10.0;
}

double sub_1004668C0()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 128);
  }

  *(v0 + 128) = 0x4024000000000000;
  *(v0 + 136) = 0;
  return 10.0;
}

double sub_1004668E4(uint64_t a1)
{
  if ((*(v1 + 152) & 1) == 0)
  {
    return *(v1 + 144);
  }

  static Font.Weight.medium.getter();
  *(v1 + 144) = result;
  *(v1 + 152) = 0;
  return result;
}

uint64_t sub_100466914()
{

  return v0;
}

uint64_t sub_10046695C()
{
  sub_100466914();

  return swift_deallocClassInstance();
}

double sub_1004669B4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 0;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 257;
  return result;
}

void sub_100466B20()
{
  type metadata accessor for DefaultChartHeaderStyle();
  v0 = swift_allocObject();
  sub_1004669B4();
  qword_100D8FD78 = v0;
}

uint64_t sub_100466B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5364657265746E65 && a2 == 0xEF73676E69747465;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x8000000100AC94A0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000100AC9480 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000100AC9460 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F4C646570706174 && a2 == 0xEE006E6F69746163;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000020 && 0x8000000100AC9430 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001ELL && 0x8000000100AC73B0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000032 && 0x8000000100AC93D0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000002FLL && 0x8000000100AC93A0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000019 && 0x8000000100AC9380 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001FLL && 0x8000000100AC9410 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001ELL && 0x8000000100AC9360 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000020 && 0x8000000100AC5B40 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x8000000100AC9340 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000017 && 0x8000000100AC9320 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000018 && 0x8000000100AC9300 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0xD00000000000001CLL && 0x8000000100AC94C0 == a2)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100467070(char a1)
{
  result = 0x5364657265746E65;
  switch(a1)
  {
    case 1:
      v3 = 10;
      goto LABEL_11;
    case 2:
      return 0xD000000000000010;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0x6F4C646570706174;
    case 5:
    case 12:
      return 0xD000000000000020;
    case 6:
    case 11:
      return 0xD00000000000001ELL;
    case 7:
      v3 = 34;
      goto LABEL_11;
    case 8:
      return 0xD00000000000002FLL;
    case 9:
      v3 = 9;
LABEL_11:
      result = v3 | 0xD000000000000010;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10046726C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697469736E617274 && a2 == 0xEF65746174536E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100467334(char a1)
{
  if (a1)
  {
    return 0x697469736E617274;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_100467374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100466B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10046739C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100467068();
  *a1 = result;
  return result;
}

uint64_t sub_1004673C4(uint64_t a1)
{
  v2 = sub_10046A97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100467400(uint64_t a1)
{
  v2 = sub_10046A97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046743C(uint64_t a1)
{
  v2 = sub_10046A9D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100467478(uint64_t a1)
{
  v2 = sub_10046A9D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004674B4(uint64_t a1)
{
  v2 = sub_10046AB84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004674F0(uint64_t a1)
{
  v2 = sub_10046AB84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046752C(uint64_t a1)
{
  v2 = sub_10046AF74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100467568(uint64_t a1)
{
  v2 = sub_10046AF74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004675A4(uint64_t a1)
{
  v2 = sub_10046AADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004675E0(uint64_t a1)
{
  v2 = sub_10046AADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046761C(uint64_t a1)
{
  v2 = sub_10046AF20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100467658(uint64_t a1)
{
  v2 = sub_10046AF20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100467694(uint64_t a1)
{
  v2 = sub_10046AA88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004676D0(uint64_t a1)
{
  v2 = sub_10046AA88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046770C(uint64_t a1)
{
  v2 = sub_10046AE78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100467748(uint64_t a1)
{
  v2 = sub_10046AE78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100467784(uint64_t a1)
{
  v2 = sub_10046AECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004677C0(uint64_t a1)
{
  v2 = sub_10046AECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100467804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10046726C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10046782C(uint64_t a1)
{
  v2 = sub_10046AE24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100467868(uint64_t a1)
{
  v2 = sub_10046AE24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004678A4(uint64_t a1)
{
  v2 = sub_10046ADD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004678E0(uint64_t a1)
{
  v2 = sub_10046ADD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10046791C(uint64_t a1)
{
  v2 = sub_10046AD7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100467958(uint64_t a1)
{
  v2 = sub_10046AD7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100467994(uint64_t a1)
{
  v2 = sub_10046ACD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004679D0(uint64_t a1)
{
  v2 = sub_10046ACD4();

  return CodingKey.debugDescription.getter(a1, v2);
}